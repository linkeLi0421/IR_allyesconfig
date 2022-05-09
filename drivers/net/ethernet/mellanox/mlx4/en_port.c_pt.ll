; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_port.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_port.c"
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
%struct.mlx4_db = type { ptr, %union.anon.126, i32, i32, i32 }
%union.anon.126 = type { ptr }
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
%struct.mlx4_cmd_mailbox = type { ptr, i32 }
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
%struct.mlx4_en_query_port_context = type { i8, i8, i16, i8, i8, [5 x i16], i64, i8 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_hwq_resources, i32, i32, i32, i16, i16, i16, i32, i32, i32, i8, ptr, ptr, ptr, %struct.mlx4_en_page_cache, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [92 x i8], %struct.xdp_rxq_info }
%struct.mlx4_en_page_cache = type { i32, [128 x %struct.anon.127] }
%struct.anon.127 = type { ptr, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
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
%struct.mlx4_en_tx_ring = type { i32, i32, i32, ptr, ptr, ptr, [104 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_bf, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, ptr, i32, i32, %struct.mlx4_hwq_resources, %struct.mlx4_qp, %struct.mlx4_qp_context, %struct.cpumask, i32, i16, i16, [20 x i8] }
%struct.mlx4_bf = type { i32, i32, ptr, ptr }
%struct.mlx4_qp_context = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.mlx4_qp_path, %struct.mlx4_qp_path, i32, i32, i32, i32, i16, [3 x i16], i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i16, i16, i32, i16, i8, i8, i32, i32, i8, [2 x i8], i8, i32, [10 x i32] }
%struct.mlx4_qp_path = type { i8, %union.anon.129, i8, i8, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8], i8, i8, i8, i8, [2 x i8], [6 x i8] }
%union.anon.129 = type { i8 }
%struct.cpumask = type { [1 x i32] }
%struct.mlx4_counter = type { [3 x i8], i8, i32, [2 x i32], i64, i64, i64, i64 }
%struct.mlx4_en_stat_out_flow_control_mbox = type { i64, i64, i64, i64, i64, i64, [2 x i64] }

@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 32, i64 64]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_SET_VLAN_FLTR(ptr noundef %dev, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %dev) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %active_vlans = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 3
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end.for.cond4.preheader_crit_edge, %if.end
  %index.037 = phi i32 [ 0, %if.end ], [ %inc, %for.end.for.cond4.preheader_crit_edge ]
  %i.036 = phi i32 [ 127, %if.end ], [ %dec, %for.end.for.cond4.preheader_crit_edge ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader
  %entry1.035 = phi i32 [ 0, %for.cond4.preheader ], [ %entry1.1, %for.body6.for.body6_crit_edge ]
  %index.134 = phi i32 [ %index.037, %for.cond4.preheader ], [ %inc, %for.body6.for.body6_crit_edge ]
  %j.033 = phi i32 [ 0, %for.cond4.preheader ], [ %inc10, %for.body6.for.body6_crit_edge ]
  %inc = add i32 %index.134, 1
  %div3.i = lshr i32 %index.134, 5
  %arrayidx.i = getelementptr i32, ptr %active_vlans, i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %index.134, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %shl = shl nuw i32 1, %j.033
  %or = select i1 %tobool.not, i32 0, i32 %shl
  %entry1.1 = or i32 %or, %entry1.035
  %inc10 = add nuw nsw i32 %j.033, 1
  %exitcond.not = icmp eq i32 %inc10, 32
  br i1 %exitcond.not, label %for.end, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

for.end:                                          ; preds = %for.body6
  %arrayidx = getelementptr [128 x i32], ptr %2, i32 0, i32 %i.036
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %entry1.1, ptr %arrayidx, align 4
  %dec = add nsw i32 %i.036, -1
  %cmp = icmp sgt i32 %i.036, 0
  br i1 %cmp, label %for.end.for.cond4.preheader_crit_edge, label %for.end13

for.end.for.cond4.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond4.preheader

for.end13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %conv = zext i32 %9 to i64
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %call.i = tail call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef %conv, ptr noundef null, i32 noundef 0, i32 noundef %11, i8 noundef zeroext 0, i16 noundef zeroext 71, i32 noundef 60000, i32 noundef 0) #4
  tail call void @mlx4_free_cmd_mailbox(ptr noundef %dev, ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end13, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call.i, %for.end13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_alloc_cmd_mailbox(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_cmd_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_QUERY_PORT(ptr nocapture noundef readonly %mdev, i8 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %port to i32
  %arrayidx = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 3, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %port_state = getelementptr i8, ptr %1, i32 2828
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %call1 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %3) #4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma, align 4
  %conv = zext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %9 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %call.i = call i32 @__mlx4_cmd(ptr noundef %6, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %idxprom, i8 noundef zeroext 0, i16 noundef zeroext 67, i32 noundef 60000, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 8
  %.lobit = lshr i8 %13, 7
  %14 = zext i8 %.lobit to i32
  %15 = ptrtoint ptr %port_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %port_state, align 4
  %link_speed = getelementptr inbounds %struct.mlx4_en_query_port_context, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %link_speed to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %link_speed, align 1
  %18 = and i8 %17, 111
  %and13 = zext i8 %18 to i32
  %19 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and13, label %sw.default [
    i32 4, label %if.end8.sw.epilog_crit_edge
    i32 2, label %sw.bb15
    i32 0, label %if.end8.sw.bb17_crit_edge
    i32 1, label %if.end8.sw.bb17_crit_edge70
    i32 8, label %sw.bb19
    i32 64, label %sw.bb21
    i32 32, label %sw.bb23
  ]

if.end8.sw.bb17_crit_edge70:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb17

if.end8.sw.bb17_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb17

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8.sw.bb17_crit_edge, %if.end8.sw.bb17_crit_edge70
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %if.end8.sw.epilog_crit_edge
  %.sink = phi i32 [ -1, %sw.default ], [ 56000, %sw.bb23 ], [ 40000, %sw.bb21 ], [ 20000, %sw.bb19 ], [ 10000, %sw.bb17 ], [ 1000, %sw.bb15 ], [ 100, %if.end8.sw.epilog_crit_edge ]
  %link_speed25 = getelementptr i8, ptr %1, i32 2832
  %20 = ptrtoint ptr %link_speed25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %link_speed25, align 4
  %transceiver = getelementptr inbounds %struct.mlx4_en_query_port_context, ptr %11, i32 0, i32 7
  %21 = ptrtoint ptr %transceiver to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %transceiver, align 8
  %conv26 = zext i8 %22 to i32
  %transceiver27 = getelementptr i8, ptr %1, i32 2836
  %23 = ptrtoint ptr %transceiver27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv26, ptr %transceiver27, align 4
  %flags = getelementptr i8, ptr %1, i32 2840
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %11, align 8
  %27 = lshr i8 %26, 6
  %.lobit68 = and i8 %27, 1
  %28 = zext i8 %.lobit68 to i32
  store i32 %28, ptr %flags, align 4
  %autoneg = getelementptr inbounds %struct.mlx4_en_query_port_context, ptr %11, i32 0, i32 1
  %29 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %autoneg, align 1
  %31 = lshr i8 %30, 6
  %32 = and i8 %31, 2
  %or3869 = or i8 %32, %.lobit68
  %or38 = zext i8 %or3869 to i32
  store i32 %or38, ptr %flags, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.out_crit_edge
  %33 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdev, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %34, ptr noundef %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call.i, %out ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_fold_software_stats(ptr nocapture noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %0 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_up, align 8, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %8 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp63.not = icmp eq i32 %9, 0
  br i1 %cmp63.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %packets.066 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bytes.065 = phi i32 [ %add11, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.064
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %packets5 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %packets5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %packets5, align 16
  %add = add i32 %13, %packets.066
  %bytes10 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %11, i32 0, i32 15
  %14 = ptrtoint ptr %bytes10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bytes10, align 4
  %add11 = add i32 %15, %bytes.065
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bytes.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add11, %for.body.for.end_crit_edge ]
  %packets.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %16 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %packets.0.lcssa, ptr %stats, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %17 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bytes.0.lcssa, ptr %rx_bytes, align 8
  %tx_ring_num = getelementptr i8, ptr %dev, i32 61452
  %18 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1568.not = icmp eq i32 %19, 0
  br i1 %cmp1568.not, label %for.end.for.end34_crit_edge, label %for.body16.lr.ph

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34

for.body16.lr.ph:                                 ; preds = %for.end
  %tx_ring = getelementptr i8, ptr %dev, i32 61508
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring, align 4
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %packets.171 = phi i32 [ 0, %for.body16.lr.ph ], [ %add25, %for.body16.for.body16_crit_edge ]
  %bytes.170 = phi i32 [ 0, %for.body16.lr.ph ], [ %add31, %for.body16.for.body16_crit_edge ]
  %i.169 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc33, %for.body16.for.body16_crit_edge ]
  %arrayidx19 = getelementptr ptr, ptr %21, i32 %i.169
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx19, align 4
  %packets24 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %packets24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %packets24, align 4
  %add25 = add i32 %25, %packets.171
  %bytes30 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %23, i32 0, i32 9
  %26 = ptrtoint ptr %bytes30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %bytes30, align 8
  %add31 = add i32 %27, %bytes.170
  %inc33 = add nuw i32 %i.169, 1
  %exitcond74.not = icmp eq i32 %inc33, %19
  br i1 %exitcond74.not, label %for.body16.for.end34_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body16

for.body16.for.end34_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34

for.end34:                                        ; preds = %for.body16.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %bytes.1.lcssa = phi i32 [ 0, %for.end.for.end34_crit_edge ], [ %add31, %for.body16.for.end34_crit_edge ]
  %packets.1.lcssa = phi i32 [ 0, %for.end.for.end34_crit_edge ], [ %add25, %for.body16.for.end34_crit_edge ]
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %28 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %packets.1.lcssa, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %29 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bytes.1.lcssa, ptr %tx_bytes, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_DUMP_ETH_STATS(ptr nocapture noundef readonly %mdev, i8 noundef zeroext %port, i8 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i760 = alloca i64, align 8
  %out_param.addr.i = alloca i64, align 8
  %tmp_counter_stats = alloca %struct.mlx4_counter, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmp_counter_stats) #4
  %0 = call ptr @memset(ptr %tmp_counter_stats, i32 255, i32 48)
  %idxprom = zext i8 %port to i32
  %arrayidx = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 3, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 2304
  %stats1 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36
  %conv = zext i8 %reset to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %idxprom
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %call5 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %4) #4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %call9 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %7) #4
  %cmp.i759 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  br i1 %cmp.i759, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mlx4_free_cmd_mailbox(ptr noundef %9, ptr noundef %call5) #4
  %10 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call5, i32 0, i32 1
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma, align 4
  %conv16 = zext i32 %12 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %13 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv16, ptr %out_param.addr.i, align 8
  %call.i = call i32 @__mlx4_cmd(ptr noundef %9, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext 0, i16 noundef zeroext 73, i32 noundef 60000, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end20, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end20:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call5, align 4
  %16 = call ptr @memset(ptr %tmp_counter_stats, i32 0, i32 48)
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 8
  %call23 = call i32 @mlx4_get_default_counter_index(ptr noundef %18, i32 noundef %idxprom) #4
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %call26 = call i32 @mlx4_get_counter_stats(ptr noundef %20, i32 noundef %call23, ptr noundef nonnull %tmp_counter_stats, i32 noundef %conv) #4
  %21 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call9, align 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 512)
  %24 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %25, i32 0, i32 3, i32 61
  %26 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %flags2, align 8
  %and = and i64 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool29.not = icmp eq i64 %and, 0
  br i1 %tobool29.not, label %if.end20.if.end41_crit_edge, label %if.then30

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then30:                                        ; preds = %if.end20
  %28 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call9, align 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 512)
  %31 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev, align 8
  %dma33 = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call9, i32 0, i32 1
  %33 = ptrtoint ptr %dma33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma33, align 4
  %conv34 = zext i32 %34 to i64
  %35 = or i32 %or, 4096
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i760)
  %36 = ptrtoint ptr %out_param.addr.i760 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv34, ptr %out_param.addr.i760, align 8
  %call.i761 = call i32 @__mlx4_cmd(ptr noundef %32, i64 noundef 0, ptr noundef nonnull %out_param.addr.i760, i32 noundef 0, i32 noundef %35, i8 noundef zeroext 0, i16 noundef zeroext 73, i32 noundef 60000, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i761)
  %tobool38.not = icmp eq i32 %call.i761, 0
  br i1 %tobool38.not, label %if.then30.if.end41_crit_edge, label %if.then30.out_crit_edge

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.end41:                                         ; preds = %if.then30.if.end41_crit_edge, %if.end20.if.end41_crit_edge
  %err.0 = phi i32 [ 0, %if.then30.if.end41_crit_edge ], [ %call26, %if.end20.if.end41_crit_edge ]
  %37 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call9, align 4
  %stats_lock = getelementptr i8, ptr %2, i32 2844
  call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #4
  %port_up.i = getelementptr i8, ptr %2, i32 51648
  %39 = ptrtoint ptr %port_up.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port_up.i, align 8, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.end41.mlx4_en_fold_software_stats.exit_crit_edge, label %lor.lhs.false.i

if.end41.mlx4_en_fold_software_stats.exit_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx4_en_fold_software_stats.exit

lor.lhs.false.i:                                  ; preds = %if.end41
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.mlx4_en_fold_software_stats.exit_crit_edge

lor.lhs.false.i.mlx4_en_fold_software_stats.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlx4_en_fold_software_stats.exit

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %rx_ring_num.i = getelementptr i8, ptr %2, i32 61460
  %47 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_ring_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp63.not.i = icmp eq i32 %48, 0
  br i1 %cmp63.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %packets.066.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %bytes.065.i = phi i32 [ %add11.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.064.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.064.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %packets5.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %50, i32 0, i32 16
  %51 = ptrtoint ptr %packets5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %packets5.i, align 16
  %add.i = add i32 %52, %packets.066.i
  %bytes10.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %50, i32 0, i32 15
  %53 = ptrtoint ptr %bytes10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bytes10.i, align 4
  %add11.i = add i32 %54, %bytes.065.i
  %inc.i = add nuw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %48
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %bytes.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add11.i, %for.body.i.for.end.i_crit_edge ]
  %packets.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %55 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %packets.0.lcssa.i, ptr %stats1, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 2
  %56 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bytes.0.lcssa.i, ptr %rx_bytes.i, align 8
  %tx_ring_num.i = getelementptr i8, ptr %2, i32 61452
  %57 = ptrtoint ptr %tx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_ring_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp1568.not.i = icmp eq i32 %58, 0
  br i1 %cmp1568.not.i, label %for.end.i.for.end34.i_crit_edge, label %for.body16.lr.ph.i

for.end.i.for.end34.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34.i

for.body16.lr.ph.i:                               ; preds = %for.end.i
  %tx_ring.i = getelementptr i8, ptr %2, i32 61508
  %59 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_ring.i, align 4
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %packets.171.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %add25.i, %for.body16.i.for.body16.i_crit_edge ]
  %bytes.170.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %add31.i, %for.body16.i.for.body16.i_crit_edge ]
  %i.169.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %inc33.i, %for.body16.i.for.body16.i_crit_edge ]
  %arrayidx19.i = getelementptr ptr, ptr %60, i32 %i.169.i
  %61 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx19.i, align 4
  %packets24.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %packets24.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %packets24.i, align 4
  %add25.i = add i32 %64, %packets.171.i
  %bytes30.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %62, i32 0, i32 9
  %65 = ptrtoint ptr %bytes30.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %bytes30.i, align 8
  %add31.i = add i32 %66, %bytes.170.i
  %inc33.i = add nuw i32 %i.169.i, 1
  %exitcond74.not.i = icmp eq i32 %inc33.i, %58
  br i1 %exitcond74.not.i, label %for.body16.i.for.end34.i_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body16.i

for.body16.i.for.end34.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34.i

for.end34.i:                                      ; preds = %for.body16.i.for.end34.i_crit_edge, %for.end.i.for.end34.i_crit_edge
  %bytes.1.lcssa.i = phi i32 [ 0, %for.end.i.for.end34.i_crit_edge ], [ %add31.i, %for.body16.i.for.end34.i_crit_edge ]
  %packets.1.lcssa.i = phi i32 [ 0, %for.end.i.for.end34.i_crit_edge ], [ %add25.i, %for.body16.i.for.end34.i_crit_edge ]
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 1
  %67 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %packets.1.lcssa.i, ptr %tx_packets.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 3
  %68 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %bytes.1.lcssa.i, ptr %tx_bytes.i, align 4
  br label %mlx4_en_fold_software_stats.exit

mlx4_en_fold_software_stats.exit:                 ; preds = %for.end34.i, %lor.lhs.false.i.mlx4_en_fold_software_stats.exit_crit_edge, %if.end41.mlx4_en_fold_software_stats.exit_crit_edge
  %port_stats = getelementptr i8, ptr %2, i32 63576
  %rx_chksum_good = getelementptr i8, ptr %2, i32 63600
  %rx_chksum_none = getelementptr i8, ptr %2, i32 63604
  %rx_chksum_complete = getelementptr i8, ptr %2, i32 63608
  %rx_alloc_pages = getelementptr i8, ptr %2, i32 63596
  %xdp_stats = getelementptr i8, ptr %2, i32 63616
  %rx_xdp_redirect = getelementptr i8, ptr %2, i32 63620
  %rx_xdp_redirect_fail = getelementptr i8, ptr %2, i32 63624
  %rx_xdp_tx = getelementptr i8, ptr %2, i32 63628
  %rx_xdp_tx_full = getelementptr i8, ptr %2, i32 63632
  %rx_ring_num = getelementptr i8, ptr %2, i32 61460
  %69 = call ptr @memset(ptr %rx_alloc_pages, i32 0, i32 16)
  %70 = call ptr @memset(ptr %xdp_stats, i32 0, i32 20)
  %71 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp927.not = icmp eq i32 %72, 0
  br i1 %cmp927.not, label %mlx4_en_fold_software_stats.exit.for.end_crit_edge, label %mlx4_en_fold_software_stats.exit.for.body_crit_edge

mlx4_en_fold_software_stats.exit.for.body_crit_edge: ; preds = %mlx4_en_fold_software_stats.exit
  br label %for.body

mlx4_en_fold_software_stats.exit.for.end_crit_edge: ; preds = %mlx4_en_fold_software_stats.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mlx4_en_fold_software_stats.exit.for.body_crit_edge
  %i.0929 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mlx4_en_fold_software_stats.exit.for.body_crit_edge ]
  %sw_rx_dropped.0928 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %mlx4_en_fold_software_stats.exit.for.body_crit_edge ]
  %arrayidx51 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.0929
  %73 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx51, align 4
  %dropped = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 26
  %75 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %dropped, align 8
  %add = add i32 %76, %sw_rx_dropped.0928
  %csum_ok = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 17
  %77 = ptrtoint ptr %csum_ok to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %csum_ok, align 4
  %79 = ptrtoint ptr %rx_chksum_good to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_chksum_good, align 8
  %add58 = add i32 %80, %78
  store i32 %add58, ptr %rx_chksum_good, align 8
  %csum_none = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 18
  %81 = ptrtoint ptr %csum_none to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %csum_none, align 8
  %83 = ptrtoint ptr %rx_chksum_none to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_chksum_none, align 4
  %add65 = add i32 %84, %82
  store i32 %add65, ptr %rx_chksum_none, align 4
  %csum_complete = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 19
  %85 = ptrtoint ptr %csum_complete to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %csum_complete, align 4
  %87 = ptrtoint ptr %rx_chksum_complete to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_chksum_complete, align 8
  %add72 = add i32 %88, %86
  store i32 %add72, ptr %rx_chksum_complete, align 8
  %rx_alloc_pages77 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 20
  %89 = ptrtoint ptr %rx_alloc_pages77 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %rx_alloc_pages77, align 128
  %91 = ptrtoint ptr %rx_alloc_pages to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_alloc_pages, align 4
  %add80 = add i32 %92, %90
  store i32 %add80, ptr %rx_alloc_pages, align 4
  %xdp_drop = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 21
  %93 = ptrtoint ptr %xdp_drop to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %xdp_drop, align 4
  %95 = ptrtoint ptr %xdp_stats to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %xdp_stats, align 8
  %add87 = add i32 %96, %94
  store i32 %add87, ptr %xdp_stats, align 8
  %xdp_redirect = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 22
  %97 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %xdp_redirect, align 8
  %99 = ptrtoint ptr %rx_xdp_redirect to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_xdp_redirect, align 4
  %add94 = add i32 %100, %98
  store i32 %add94, ptr %rx_xdp_redirect, align 4
  %xdp_redirect_fail = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 23
  %101 = ptrtoint ptr %xdp_redirect_fail to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %xdp_redirect_fail, align 4
  %103 = ptrtoint ptr %rx_xdp_redirect_fail to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_xdp_redirect_fail, align 8
  %add101 = add i32 %104, %102
  store i32 %add101, ptr %rx_xdp_redirect_fail, align 8
  %xdp_tx = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 24
  %105 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %xdp_tx, align 16
  %107 = ptrtoint ptr %rx_xdp_tx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_xdp_tx, align 4
  %add108 = add i32 %108, %106
  store i32 %add108, ptr %rx_xdp_tx, align 4
  %xdp_tx_full = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %74, i32 0, i32 25
  %109 = ptrtoint ptr %xdp_tx_full to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %xdp_tx_full, align 4
  %111 = ptrtoint ptr %rx_xdp_tx_full to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_xdp_tx_full, align 8
  %add115 = add i32 %112, %110
  store i32 %add115, ptr %rx_xdp_tx_full, align 8
  %inc = add nuw i32 %i.0929, 1
  %113 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_ring_num, align 4
  %cmp = icmp ult i32 %inc, %114
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %mlx4_en_fold_software_stats.exit.for.end_crit_edge
  %sw_rx_dropped.0.lcssa = phi i32 [ 0, %mlx4_en_fold_software_stats.exit.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %tx_chksum_offload = getelementptr i8, ptr %2, i32 63612
  %115 = ptrtoint ptr %tx_chksum_offload to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %tx_chksum_offload, align 4
  %queue_stopped = getelementptr i8, ptr %2, i32 63584
  %wake_queue = getelementptr i8, ptr %2, i32 63588
  %xmit_more = getelementptr i8, ptr %2, i32 63580
  %tx_ring_num = getelementptr i8, ptr %2, i32 61452
  %116 = call ptr @memset(ptr %port_stats, i32 0, i32 16)
  %117 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp123930.not = icmp eq i32 %118, 0
  br i1 %cmp123930.not, label %for.end.for.end175_crit_edge, label %for.body125.lr.ph

for.end.for.end175_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end175

for.body125.lr.ph:                                ; preds = %for.end
  %tx_ring = getelementptr i8, ptr %2, i32 61508
  br label %for.body125

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %for.body125.lr.ph
  %i.1932 = phi i32 [ 0, %for.body125.lr.ph ], [ %inc174, %for.body125.for.body125_crit_edge ]
  %sw_tx_dropped.0931 = phi i32 [ 0, %for.body125.lr.ph ], [ %add133, %for.body125.for.body125_crit_edge ]
  %119 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tx_ring, align 4
  %arrayidx128 = getelementptr ptr, ptr %120, i32 %i.1932
  %121 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx128, align 4
  %tx_dropped = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %122, i32 0, i32 8
  %123 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %tx_dropped, align 4
  %add133 = add i32 %124, %sw_tx_dropped.0931
  %tx_csum = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %122, i32 0, i32 11
  %125 = ptrtoint ptr %tx_csum to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %tx_csum, align 16
  %127 = ptrtoint ptr %tx_chksum_offload to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_chksum_offload, align 4
  %add140 = add i32 %128, %126
  store i32 %add140, ptr %tx_chksum_offload, align 4
  %queue_stopped145 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %122, i32 0, i32 30
  %129 = ptrtoint ptr %queue_stopped145 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %queue_stopped145, align 4
  %131 = ptrtoint ptr %queue_stopped to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %queue_stopped, align 8
  %add148 = add i32 %132, %130
  store i32 %add148, ptr %queue_stopped, align 8
  %wake_queue153 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %122, i32 0, i32 2
  %133 = ptrtoint ptr %wake_queue153 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %wake_queue153, align 8
  %135 = ptrtoint ptr %wake_queue to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %wake_queue, align 4
  %add156 = add i32 %136, %134
  store i32 %add156, ptr %wake_queue, align 4
  %tso_packets161 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %122, i32 0, i32 12
  %137 = ptrtoint ptr %tso_packets161 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %tso_packets161, align 4
  %139 = ptrtoint ptr %port_stats to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port_stats, align 8
  %add164 = add i32 %140, %138
  store i32 %add164, ptr %port_stats, align 8
  %xmit_more169 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %122, i32 0, i32 13
  %141 = ptrtoint ptr %xmit_more169 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %xmit_more169, align 8
  %143 = ptrtoint ptr %xmit_more to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %xmit_more, align 4
  %add172 = add i32 %144, %142
  store i32 %add172, ptr %xmit_more, align 4
  %inc174 = add nuw i32 %i.1932, 1
  %145 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_ring_num, align 4
  %cmp123 = icmp ult i32 %inc174, %146
  br i1 %cmp123, label %for.body125.for.body125_crit_edge, label %for.body125.for.end175_crit_edge

for.body125.for.end175_crit_edge:                 ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end175

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body125

for.end175:                                       ; preds = %for.body125.for.end175_crit_edge, %for.end.for.end175_crit_edge
  %sw_tx_dropped.0.lcssa = phi i32 [ 0, %for.end.for.end175_crit_edge ], [ %add133, %for.body125.for.end175_crit_edge ]
  %147 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mdev, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %150, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool178.not = icmp eq i32 %and.i, 0
  br i1 %tobool178.not, label %if.then179, label %for.end175.if.end193_crit_edge

for.end175.if.end193_crit_edge:                   ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end193

if.then179:                                       ; preds = %for.end175
  %phy_stats = getelementptr i8, ptr %2, i32 63636
  %RTOT_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 144
  %151 = ptrtoint ptr %RTOT_prio_0 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %RTOT_prio_0, align 8
  %153 = trunc i64 %152 to i32
  %add.ptr.i762 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 147
  %154 = ptrtoint ptr %add.ptr.i762 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %add.ptr.i762, align 8
  %156 = trunc i64 %155 to i32
  %conv1.1.i = add i32 %156, %153
  %add.ptr.1.i = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 150
  %157 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %add.ptr.1.i, align 8
  %159 = trunc i64 %158 to i32
  %conv1.2.i = add i32 %conv1.1.i, %159
  %add.ptr.2.i = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 153
  %160 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %add.ptr.2.i, align 8
  %162 = trunc i64 %161 to i32
  %conv1.3.i = add i32 %conv1.2.i, %162
  %add.ptr.3.i = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 156
  %163 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %add.ptr.3.i, align 8
  %165 = trunc i64 %164 to i32
  %conv1.4.i = add i32 %conv1.3.i, %165
  %add.ptr.4.i = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 159
  %166 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %add.ptr.4.i, align 8
  %168 = trunc i64 %167 to i32
  %conv1.5.i = add i32 %conv1.4.i, %168
  %add.ptr.5.i = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 162
  %169 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %add.ptr.5.i, align 8
  %171 = trunc i64 %170 to i32
  %conv1.6.i = add i32 %conv1.5.i, %171
  %add.ptr.6.i = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 165
  %172 = ptrtoint ptr %add.ptr.6.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %add.ptr.6.i, align 8
  %174 = trunc i64 %173 to i32
  %conv1.7.i = add i32 %conv1.6.i, %174
  %add.ptr.7.i = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 168
  %175 = ptrtoint ptr %add.ptr.7.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %add.ptr.7.i, align 8
  %177 = trunc i64 %176 to i32
  %conv1.8.i = add i32 %conv1.7.i, %177
  %178 = ptrtoint ptr %phy_stats to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv1.8.i, ptr %phy_stats, align 4
  %TTOT_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 339
  %179 = ptrtoint ptr %TTOT_prio_0 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %TTOT_prio_0, align 8
  %181 = trunc i64 %180 to i32
  %add.ptr.i765 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 342
  %182 = ptrtoint ptr %add.ptr.i765 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %add.ptr.i765, align 8
  %184 = trunc i64 %183 to i32
  %conv1.1.i766 = add i32 %184, %181
  %add.ptr.1.i767 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 345
  %185 = ptrtoint ptr %add.ptr.1.i767 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %add.ptr.1.i767, align 8
  %187 = trunc i64 %186 to i32
  %conv1.2.i768 = add i32 %conv1.1.i766, %187
  %add.ptr.2.i769 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 348
  %188 = ptrtoint ptr %add.ptr.2.i769 to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %add.ptr.2.i769, align 8
  %190 = trunc i64 %189 to i32
  %conv1.3.i770 = add i32 %conv1.2.i768, %190
  %add.ptr.3.i771 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 351
  %191 = ptrtoint ptr %add.ptr.3.i771 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %add.ptr.3.i771, align 8
  %193 = trunc i64 %192 to i32
  %conv1.4.i772 = add i32 %conv1.3.i770, %193
  %add.ptr.4.i773 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 354
  %194 = ptrtoint ptr %add.ptr.4.i773 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %add.ptr.4.i773, align 8
  %196 = trunc i64 %195 to i32
  %conv1.5.i774 = add i32 %conv1.4.i772, %196
  %add.ptr.5.i775 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 357
  %197 = ptrtoint ptr %add.ptr.5.i775 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %add.ptr.5.i775, align 8
  %199 = trunc i64 %198 to i32
  %conv1.6.i776 = add i32 %conv1.5.i774, %199
  %add.ptr.6.i777 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 360
  %200 = ptrtoint ptr %add.ptr.6.i777 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %add.ptr.6.i777, align 8
  %202 = trunc i64 %201 to i32
  %conv1.7.i778 = add i32 %conv1.6.i776, %202
  %add.ptr.7.i779 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 363
  %203 = ptrtoint ptr %add.ptr.7.i779 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %add.ptr.7.i779, align 8
  %205 = trunc i64 %204 to i32
  %conv1.8.i780 = add i32 %conv1.7.i778, %205
  %tx_packets_phy = getelementptr i8, ptr %2, i32 63644
  %206 = ptrtoint ptr %tx_packets_phy to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %conv1.8.i780, ptr %tx_packets_phy, align 4
  %ROCT_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 119
  %207 = ptrtoint ptr %ROCT_prio_0 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %ROCT_prio_0, align 8
  %209 = trunc i64 %208 to i32
  %add.ptr.i783 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 122
  %210 = ptrtoint ptr %add.ptr.i783 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %add.ptr.i783, align 8
  %212 = trunc i64 %211 to i32
  %conv1.1.i784 = add i32 %212, %209
  %add.ptr.1.i785 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 125
  %213 = ptrtoint ptr %add.ptr.1.i785 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %add.ptr.1.i785, align 8
  %215 = trunc i64 %214 to i32
  %conv1.2.i786 = add i32 %conv1.1.i784, %215
  %add.ptr.2.i787 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 128
  %216 = ptrtoint ptr %add.ptr.2.i787 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %add.ptr.2.i787, align 8
  %218 = trunc i64 %217 to i32
  %conv1.3.i788 = add i32 %conv1.2.i786, %218
  %add.ptr.3.i789 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 131
  %219 = ptrtoint ptr %add.ptr.3.i789 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %add.ptr.3.i789, align 8
  %221 = trunc i64 %220 to i32
  %conv1.4.i790 = add i32 %conv1.3.i788, %221
  %add.ptr.4.i791 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 134
  %222 = ptrtoint ptr %add.ptr.4.i791 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %add.ptr.4.i791, align 8
  %224 = trunc i64 %223 to i32
  %conv1.5.i792 = add i32 %conv1.4.i790, %224
  %add.ptr.5.i793 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 137
  %225 = ptrtoint ptr %add.ptr.5.i793 to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %add.ptr.5.i793, align 8
  %227 = trunc i64 %226 to i32
  %conv1.6.i794 = add i32 %conv1.5.i792, %227
  %add.ptr.6.i795 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 140
  %228 = ptrtoint ptr %add.ptr.6.i795 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %add.ptr.6.i795, align 8
  %230 = trunc i64 %229 to i32
  %conv1.7.i796 = add i32 %conv1.6.i794, %230
  %add.ptr.7.i797 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 143
  %231 = ptrtoint ptr %add.ptr.7.i797 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %add.ptr.7.i797, align 8
  %233 = trunc i64 %232 to i32
  %conv1.8.i798 = add i32 %conv1.7.i796, %233
  %rx_bytes_phy = getelementptr i8, ptr %2, i32 63640
  %234 = ptrtoint ptr %rx_bytes_phy to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv1.8.i798, ptr %rx_bytes_phy, align 4
  %TOCT_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 311
  %235 = ptrtoint ptr %TOCT_prio_0 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %TOCT_prio_0, align 8
  %237 = trunc i64 %236 to i32
  %add.ptr.i801 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 314
  %238 = ptrtoint ptr %add.ptr.i801 to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %add.ptr.i801, align 8
  %240 = trunc i64 %239 to i32
  %conv1.1.i802 = add i32 %240, %237
  %add.ptr.1.i803 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 317
  %241 = ptrtoint ptr %add.ptr.1.i803 to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %add.ptr.1.i803, align 8
  %243 = trunc i64 %242 to i32
  %conv1.2.i804 = add i32 %conv1.1.i802, %243
  %add.ptr.2.i805 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 320
  %244 = ptrtoint ptr %add.ptr.2.i805 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %add.ptr.2.i805, align 8
  %246 = trunc i64 %245 to i32
  %conv1.3.i806 = add i32 %conv1.2.i804, %246
  %add.ptr.3.i807 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 323
  %247 = ptrtoint ptr %add.ptr.3.i807 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %add.ptr.3.i807, align 8
  %249 = trunc i64 %248 to i32
  %conv1.4.i808 = add i32 %conv1.3.i806, %249
  %add.ptr.4.i809 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 326
  %250 = ptrtoint ptr %add.ptr.4.i809 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %add.ptr.4.i809, align 8
  %252 = trunc i64 %251 to i32
  %conv1.5.i810 = add i32 %conv1.4.i808, %252
  %add.ptr.5.i811 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 329
  %253 = ptrtoint ptr %add.ptr.5.i811 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %add.ptr.5.i811, align 8
  %255 = trunc i64 %254 to i32
  %conv1.6.i812 = add i32 %conv1.5.i810, %255
  %add.ptr.6.i813 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 332
  %256 = ptrtoint ptr %add.ptr.6.i813 to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %add.ptr.6.i813, align 8
  %258 = trunc i64 %257 to i32
  %conv1.7.i814 = add i32 %conv1.6.i812, %258
  %add.ptr.7.i815 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 335
  %259 = ptrtoint ptr %add.ptr.7.i815 to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %add.ptr.7.i815, align 8
  %261 = trunc i64 %260 to i32
  %conv1.8.i816 = add i32 %conv1.7.i814, %261
  %tx_bytes_phy = getelementptr i8, ptr %2, i32 63648
  %262 = ptrtoint ptr %tx_bytes_phy to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %conv1.8.i816, ptr %tx_bytes_phy, align 4
  %263 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mdev, align 8
  %flags.i817 = getelementptr inbounds %struct.mlx4_dev, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %flags.i817 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %flags.i817, align 4
  %and.i818 = and i32 %266, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i818)
  %tobool186.not = icmp eq i32 %and.i818, 0
  br i1 %tobool186.not, label %if.then179.if.end193_crit_edge, label %if.then187

if.then179.if.end193_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end193

if.then187:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #6
  %267 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %conv1.8.i, ptr %stats1, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 1
  %268 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %conv1.8.i780, ptr %tx_packets, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 2
  %269 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %conv1.8.i798, ptr %rx_bytes, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 3
  %270 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %conv1.8.i816, ptr %tx_bytes, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then187, %if.then179.if.end193_crit_edge, %for.end175.if.end193_crit_edge
  %PCS = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 178
  %271 = ptrtoint ptr %PCS to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %PCS, align 8
  %RJBBR = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 369
  %273 = ptrtoint ptr %RJBBR to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %RJBBR, align 8
  %conv194 = zext i32 %274 to i64
  %add195 = add i64 %272, %conv194
  %RCRC = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 370
  %275 = ptrtoint ptr %RCRC to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %RCRC, align 4
  %conv196 = zext i32 %276 to i64
  %add197 = add i64 %add195, %conv196
  %RRUNT = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 371
  %277 = ptrtoint ptr %RRUNT to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %RRUNT, align 8
  %conv198 = zext i32 %278 to i64
  %add199 = add i64 %add197, %conv198
  %RInRangeLengthErr = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 175
  %279 = ptrtoint ptr %RInRangeLengthErr to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %RInRangeLengthErr, align 8
  %add200 = add i64 %add199, %280
  %ROutRangeLengthErr = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 176
  %281 = ptrtoint ptr %ROutRangeLengthErr to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %ROutRangeLengthErr, align 8
  %add201 = add i64 %add200, %282
  %RSHORT = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 372
  %283 = ptrtoint ptr %RSHORT to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %RSHORT, align 4
  %RGIANT_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 81
  %285 = ptrtoint ptr %RGIANT_prio_0 to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %RGIANT_prio_0, align 8
  %287 = trunc i64 %286 to i32
  %add.ptr.i821 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 82
  %288 = ptrtoint ptr %add.ptr.i821 to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %add.ptr.i821, align 8
  %290 = trunc i64 %289 to i32
  %add.ptr.1.i823 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 83
  %291 = ptrtoint ptr %add.ptr.1.i823 to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %add.ptr.1.i823, align 8
  %293 = trunc i64 %292 to i32
  %add.ptr.2.i825 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 84
  %294 = ptrtoint ptr %add.ptr.2.i825 to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %add.ptr.2.i825, align 8
  %296 = trunc i64 %295 to i32
  %add.ptr.3.i827 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 85
  %297 = ptrtoint ptr %add.ptr.3.i827 to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %add.ptr.3.i827, align 8
  %299 = trunc i64 %298 to i32
  %add.ptr.4.i829 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 86
  %300 = ptrtoint ptr %add.ptr.4.i829 to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %add.ptr.4.i829, align 8
  %302 = trunc i64 %301 to i32
  %add.ptr.5.i831 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 87
  %303 = ptrtoint ptr %add.ptr.5.i831 to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %add.ptr.5.i831, align 8
  %305 = trunc i64 %304 to i32
  %add.ptr.6.i833 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 88
  %306 = ptrtoint ptr %add.ptr.6.i833 to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %add.ptr.6.i833, align 8
  %308 = trunc i64 %307 to i32
  %add.ptr.7.i835 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 89
  %309 = ptrtoint ptr %add.ptr.7.i835 to i32
  call void @__asan_load8_noabort(i32 %309)
  %310 = load i64, ptr %add.ptr.7.i835, align 8
  %311 = trunc i64 %310 to i32
  %312 = trunc i64 %add201 to i32
  %conv1.1.i822 = add i32 %284, %312
  %conv1.2.i824 = add i32 %conv1.1.i822, %287
  %conv1.3.i826 = add i32 %conv1.2.i824, %290
  %conv1.4.i828 = add i32 %conv1.3.i826, %293
  %conv1.5.i830 = add i32 %conv1.4.i828, %296
  %conv1.6.i832 = add i32 %conv1.5.i830, %299
  %conv1.7.i834 = add i32 %conv1.6.i832, %302
  %conv1.8.i836 = add i32 %conv1.7.i834, %305
  %313 = add i32 %conv1.8.i836, %308
  %conv207 = add i32 %313, %311
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %314 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %conv207, ptr %rx_errors, align 4
  %TGIANT_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 269
  %315 = ptrtoint ptr %TGIANT_prio_0 to i32
  call void @__asan_load8_noabort(i32 %315)
  %316 = load i64, ptr %TGIANT_prio_0, align 8
  %317 = trunc i64 %316 to i32
  %add.ptr.i839 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 270
  %318 = ptrtoint ptr %add.ptr.i839 to i32
  call void @__asan_load8_noabort(i32 %318)
  %319 = load i64, ptr %add.ptr.i839, align 8
  %320 = trunc i64 %319 to i32
  %conv1.1.i840 = add i32 %320, %317
  %add.ptr.1.i841 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 271
  %321 = ptrtoint ptr %add.ptr.1.i841 to i32
  call void @__asan_load8_noabort(i32 %321)
  %322 = load i64, ptr %add.ptr.1.i841, align 8
  %323 = trunc i64 %322 to i32
  %conv1.2.i842 = add i32 %conv1.1.i840, %323
  %add.ptr.2.i843 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 272
  %324 = ptrtoint ptr %add.ptr.2.i843 to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %add.ptr.2.i843, align 8
  %326 = trunc i64 %325 to i32
  %conv1.3.i844 = add i32 %conv1.2.i842, %326
  %add.ptr.3.i845 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 273
  %327 = ptrtoint ptr %add.ptr.3.i845 to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %add.ptr.3.i845, align 8
  %329 = trunc i64 %328 to i32
  %conv1.4.i846 = add i32 %conv1.3.i844, %329
  %add.ptr.4.i847 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 274
  %330 = ptrtoint ptr %add.ptr.4.i847 to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %add.ptr.4.i847, align 8
  %332 = trunc i64 %331 to i32
  %conv1.5.i848 = add i32 %conv1.4.i846, %332
  %add.ptr.5.i849 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 275
  %333 = ptrtoint ptr %add.ptr.5.i849 to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %add.ptr.5.i849, align 8
  %335 = trunc i64 %334 to i32
  %conv1.6.i850 = add i32 %conv1.5.i848, %335
  %add.ptr.6.i851 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 276
  %336 = ptrtoint ptr %add.ptr.6.i851 to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %add.ptr.6.i851, align 8
  %338 = trunc i64 %337 to i32
  %conv1.7.i852 = add i32 %conv1.6.i850, %338
  %add.ptr.7.i853 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 277
  %339 = ptrtoint ptr %add.ptr.7.i853 to i32
  call void @__asan_load8_noabort(i32 %339)
  %340 = load i64, ptr %add.ptr.7.i853, align 8
  %341 = trunc i64 %340 to i32
  %conv1.8.i854 = add i32 %conv1.7.i852, %341
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 5
  %342 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %conv1.8.i854, ptr %tx_errors, align 4
  %MCAST_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 99
  %343 = ptrtoint ptr %MCAST_prio_0 to i32
  call void @__asan_load8_noabort(i32 %343)
  %344 = load i64, ptr %MCAST_prio_0, align 8
  %345 = trunc i64 %344 to i32
  %add.ptr.i857 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 100
  %346 = ptrtoint ptr %add.ptr.i857 to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %add.ptr.i857, align 8
  %348 = trunc i64 %347 to i32
  %conv1.1.i858 = add i32 %348, %345
  %add.ptr.1.i859 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 101
  %349 = ptrtoint ptr %add.ptr.1.i859 to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %add.ptr.1.i859, align 8
  %351 = trunc i64 %350 to i32
  %conv1.2.i860 = add i32 %conv1.1.i858, %351
  %add.ptr.2.i861 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 102
  %352 = ptrtoint ptr %add.ptr.2.i861 to i32
  call void @__asan_load8_noabort(i32 %352)
  %353 = load i64, ptr %add.ptr.2.i861, align 8
  %354 = trunc i64 %353 to i32
  %conv1.3.i862 = add i32 %conv1.2.i860, %354
  %add.ptr.3.i863 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 103
  %355 = ptrtoint ptr %add.ptr.3.i863 to i32
  call void @__asan_load8_noabort(i32 %355)
  %356 = load i64, ptr %add.ptr.3.i863, align 8
  %357 = trunc i64 %356 to i32
  %conv1.4.i864 = add i32 %conv1.3.i862, %357
  %add.ptr.4.i865 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 104
  %358 = ptrtoint ptr %add.ptr.4.i865 to i32
  call void @__asan_load8_noabort(i32 %358)
  %359 = load i64, ptr %add.ptr.4.i865, align 8
  %360 = trunc i64 %359 to i32
  %conv1.5.i866 = add i32 %conv1.4.i864, %360
  %add.ptr.5.i867 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 105
  %361 = ptrtoint ptr %add.ptr.5.i867 to i32
  call void @__asan_load8_noabort(i32 %361)
  %362 = load i64, ptr %add.ptr.5.i867, align 8
  %363 = trunc i64 %362 to i32
  %conv1.6.i868 = add i32 %conv1.5.i866, %363
  %add.ptr.6.i869 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 106
  %364 = ptrtoint ptr %add.ptr.6.i869 to i32
  call void @__asan_load8_noabort(i32 %364)
  %365 = load i64, ptr %add.ptr.6.i869, align 8
  %366 = trunc i64 %365 to i32
  %conv1.7.i870 = add i32 %conv1.6.i868, %366
  %add.ptr.7.i871 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 107
  %367 = ptrtoint ptr %add.ptr.7.i871 to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %add.ptr.7.i871, align 8
  %369 = trunc i64 %368 to i32
  %conv1.8.i872 = add i32 %conv1.7.i870, %369
  %multicast = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 8
  %370 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %conv1.8.i872, ptr %multicast, align 4
  %RDROP = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 373
  %371 = ptrtoint ptr %RDROP to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %RDROP, align 8
  %add210 = add i32 %372, %sw_rx_dropped.0.lcssa
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 6
  %373 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %add210, ptr %rx_dropped, align 4
  %RdropLength = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 375
  %374 = ptrtoint ptr %RdropLength to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %RdropLength, align 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 10
  %376 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %rx_length_errors, align 4
  %377 = load i32, ptr %RCRC, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 12
  %378 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %rx_crc_errors, align 4
  %RdropOvflw = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 374
  %379 = ptrtoint ptr %RdropOvflw to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %RdropOvflw, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 14
  %381 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %380, ptr %rx_fifo_errors, align 4
  %TDROP = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 377
  %382 = ptrtoint ptr %TDROP to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %TDROP, align 8
  %add212 = add i32 %383, %sw_tx_dropped.0.lcssa
  %tx_dropped213 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 7
  %384 = ptrtoint ptr %tx_dropped213 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %add212, ptr %tx_dropped213, align 4
  %pkstats = getelementptr i8, ptr %2, i32 62952
  %385 = ptrtoint ptr %pkstats to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %conv1.8.i872, ptr %pkstats, align 8
  %RBCAST_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 90
  %386 = ptrtoint ptr %RBCAST_prio_0 to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %RBCAST_prio_0, align 8
  %388 = trunc i64 %387 to i32
  %add.ptr.i875 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 91
  %389 = ptrtoint ptr %add.ptr.i875 to i32
  call void @__asan_load8_noabort(i32 %389)
  %390 = load i64, ptr %add.ptr.i875, align 8
  %391 = trunc i64 %390 to i32
  %conv1.1.i876 = add i32 %391, %388
  %add.ptr.1.i877 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 92
  %392 = ptrtoint ptr %add.ptr.1.i877 to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %add.ptr.1.i877, align 8
  %394 = trunc i64 %393 to i32
  %conv1.2.i878 = add i32 %conv1.1.i876, %394
  %add.ptr.2.i879 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 93
  %395 = ptrtoint ptr %add.ptr.2.i879 to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %add.ptr.2.i879, align 8
  %397 = trunc i64 %396 to i32
  %conv1.3.i880 = add i32 %conv1.2.i878, %397
  %add.ptr.3.i881 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 94
  %398 = ptrtoint ptr %add.ptr.3.i881 to i32
  call void @__asan_load8_noabort(i32 %398)
  %399 = load i64, ptr %add.ptr.3.i881, align 8
  %400 = trunc i64 %399 to i32
  %conv1.4.i882 = add i32 %conv1.3.i880, %400
  %add.ptr.4.i883 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 95
  %401 = ptrtoint ptr %add.ptr.4.i883 to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %add.ptr.4.i883, align 8
  %403 = trunc i64 %402 to i32
  %conv1.5.i884 = add i32 %conv1.4.i882, %403
  %add.ptr.5.i885 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 96
  %404 = ptrtoint ptr %add.ptr.5.i885 to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %add.ptr.5.i885, align 8
  %406 = trunc i64 %405 to i32
  %conv1.6.i886 = add i32 %conv1.5.i884, %406
  %add.ptr.6.i887 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 97
  %407 = ptrtoint ptr %add.ptr.6.i887 to i32
  call void @__asan_load8_noabort(i32 %407)
  %408 = load i64, ptr %add.ptr.6.i887, align 8
  %409 = trunc i64 %408 to i32
  %conv1.7.i888 = add i32 %conv1.6.i886, %409
  %add.ptr.7.i889 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 98
  %410 = ptrtoint ptr %add.ptr.7.i889 to i32
  call void @__asan_load8_noabort(i32 %410)
  %411 = load i64, ptr %add.ptr.7.i889, align 8
  %412 = trunc i64 %411 to i32
  %conv1.8.i890 = add i32 %conv1.7.i888, %412
  %rx_broadcast_packets = getelementptr i8, ptr %2, i32 62956
  %413 = ptrtoint ptr %rx_broadcast_packets to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %conv1.8.i890, ptr %rx_broadcast_packets, align 4
  %414 = load i32, ptr %RJBBR, align 8
  %rx_jabbers = getelementptr i8, ptr %2, i32 62960
  %415 = ptrtoint ptr %rx_jabbers to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %414, ptr %rx_jabbers, align 8
  %416 = load i64, ptr %RInRangeLengthErr, align 8
  %conv220 = trunc i64 %416 to i32
  %rx_in_range_length_error = getelementptr i8, ptr %2, i32 62964
  %417 = ptrtoint ptr %rx_in_range_length_error to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %conv220, ptr %rx_in_range_length_error, align 4
  %418 = load i64, ptr %ROutRangeLengthErr, align 8
  %conv223 = trunc i64 %418 to i32
  %rx_out_range_length_error = getelementptr i8, ptr %2, i32 62968
  %419 = ptrtoint ptr %rx_out_range_length_error to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %conv223, ptr %rx_out_range_length_error, align 8
  %TMCAST_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 289
  %420 = ptrtoint ptr %TMCAST_prio_0 to i32
  call void @__asan_load8_noabort(i32 %420)
  %421 = load i64, ptr %TMCAST_prio_0, align 8
  %422 = trunc i64 %421 to i32
  %add.ptr.i893 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 290
  %423 = ptrtoint ptr %add.ptr.i893 to i32
  call void @__asan_load8_noabort(i32 %423)
  %424 = load i64, ptr %add.ptr.i893, align 8
  %425 = trunc i64 %424 to i32
  %conv1.1.i894 = add i32 %425, %422
  %add.ptr.1.i895 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 291
  %426 = ptrtoint ptr %add.ptr.1.i895 to i32
  call void @__asan_load8_noabort(i32 %426)
  %427 = load i64, ptr %add.ptr.1.i895, align 8
  %428 = trunc i64 %427 to i32
  %conv1.2.i896 = add i32 %conv1.1.i894, %428
  %add.ptr.2.i897 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 292
  %429 = ptrtoint ptr %add.ptr.2.i897 to i32
  call void @__asan_load8_noabort(i32 %429)
  %430 = load i64, ptr %add.ptr.2.i897, align 8
  %431 = trunc i64 %430 to i32
  %conv1.3.i898 = add i32 %conv1.2.i896, %431
  %add.ptr.3.i899 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 293
  %432 = ptrtoint ptr %add.ptr.3.i899 to i32
  call void @__asan_load8_noabort(i32 %432)
  %433 = load i64, ptr %add.ptr.3.i899, align 8
  %434 = trunc i64 %433 to i32
  %conv1.4.i900 = add i32 %conv1.3.i898, %434
  %add.ptr.4.i901 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 294
  %435 = ptrtoint ptr %add.ptr.4.i901 to i32
  call void @__asan_load8_noabort(i32 %435)
  %436 = load i64, ptr %add.ptr.4.i901, align 8
  %437 = trunc i64 %436 to i32
  %conv1.5.i902 = add i32 %conv1.4.i900, %437
  %add.ptr.5.i903 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 295
  %438 = ptrtoint ptr %add.ptr.5.i903 to i32
  call void @__asan_load8_noabort(i32 %438)
  %439 = load i64, ptr %add.ptr.5.i903, align 8
  %440 = trunc i64 %439 to i32
  %conv1.6.i904 = add i32 %conv1.5.i902, %440
  %add.ptr.6.i905 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 296
  %441 = ptrtoint ptr %add.ptr.6.i905 to i32
  call void @__asan_load8_noabort(i32 %441)
  %442 = load i64, ptr %add.ptr.6.i905, align 8
  %443 = trunc i64 %442 to i32
  %conv1.7.i906 = add i32 %conv1.6.i904, %443
  %add.ptr.7.i907 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 297
  %444 = ptrtoint ptr %add.ptr.7.i907 to i32
  call void @__asan_load8_noabort(i32 %444)
  %445 = load i64, ptr %add.ptr.7.i907, align 8
  %446 = trunc i64 %445 to i32
  %conv1.8.i908 = add i32 %conv1.7.i906, %446
  %tx_multicast_packets = getelementptr i8, ptr %2, i32 62972
  %447 = ptrtoint ptr %tx_multicast_packets to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %conv1.8.i908, ptr %tx_multicast_packets, align 4
  %TBCAST_prio_0 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 279
  %448 = ptrtoint ptr %TBCAST_prio_0 to i32
  call void @__asan_load8_noabort(i32 %448)
  %449 = load i64, ptr %TBCAST_prio_0, align 8
  %450 = trunc i64 %449 to i32
  %add.ptr.i911 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 280
  %451 = ptrtoint ptr %add.ptr.i911 to i32
  call void @__asan_load8_noabort(i32 %451)
  %452 = load i64, ptr %add.ptr.i911, align 8
  %453 = trunc i64 %452 to i32
  %conv1.1.i912 = add i32 %453, %450
  %add.ptr.1.i913 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 281
  %454 = ptrtoint ptr %add.ptr.1.i913 to i32
  call void @__asan_load8_noabort(i32 %454)
  %455 = load i64, ptr %add.ptr.1.i913, align 8
  %456 = trunc i64 %455 to i32
  %conv1.2.i914 = add i32 %conv1.1.i912, %456
  %add.ptr.2.i915 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 282
  %457 = ptrtoint ptr %add.ptr.2.i915 to i32
  call void @__asan_load8_noabort(i32 %457)
  %458 = load i64, ptr %add.ptr.2.i915, align 8
  %459 = trunc i64 %458 to i32
  %conv1.3.i916 = add i32 %conv1.2.i914, %459
  %add.ptr.3.i917 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 283
  %460 = ptrtoint ptr %add.ptr.3.i917 to i32
  call void @__asan_load8_noabort(i32 %460)
  %461 = load i64, ptr %add.ptr.3.i917, align 8
  %462 = trunc i64 %461 to i32
  %conv1.4.i918 = add i32 %conv1.3.i916, %462
  %add.ptr.4.i919 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 284
  %463 = ptrtoint ptr %add.ptr.4.i919 to i32
  call void @__asan_load8_noabort(i32 %463)
  %464 = load i64, ptr %add.ptr.4.i919, align 8
  %465 = trunc i64 %464 to i32
  %conv1.5.i920 = add i32 %conv1.4.i918, %465
  %add.ptr.5.i921 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 285
  %466 = ptrtoint ptr %add.ptr.5.i921 to i32
  call void @__asan_load8_noabort(i32 %466)
  %467 = load i64, ptr %add.ptr.5.i921, align 8
  %468 = trunc i64 %467 to i32
  %conv1.6.i922 = add i32 %conv1.5.i920, %468
  %add.ptr.6.i923 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 286
  %469 = ptrtoint ptr %add.ptr.6.i923 to i32
  call void @__asan_load8_noabort(i32 %469)
  %470 = load i64, ptr %add.ptr.6.i923, align 8
  %471 = trunc i64 %470 to i32
  %conv1.7.i924 = add i32 %conv1.6.i922, %471
  %add.ptr.7.i925 = getelementptr %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 287
  %472 = ptrtoint ptr %add.ptr.7.i925 to i32
  call void @__asan_load8_noabort(i32 %472)
  %473 = load i64, ptr %add.ptr.7.i925, align 8
  %474 = trunc i64 %473 to i32
  %conv1.8.i926 = add i32 %conv1.7.i924, %474
  %tx_broadcast_packets = getelementptr i8, ptr %2, i32 62976
  %475 = ptrtoint ptr %tx_broadcast_packets to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %conv1.8.i926, ptr %tx_broadcast_packets, align 8
  %RTOT_prio_0229 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 144
  %476 = ptrtoint ptr %RTOT_prio_0229 to i32
  call void @__asan_load8_noabort(i32 %476)
  %477 = load i64, ptr %RTOT_prio_0229, align 8
  %conv230 = trunc i64 %477 to i32
  %rx_prio = getelementptr i8, ptr %2, i32 62980
  %478 = ptrtoint ptr %rx_prio to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %conv230, ptr %rx_prio, align 4
  %ROCT_prio_0234 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 119
  %479 = ptrtoint ptr %ROCT_prio_0234 to i32
  call void @__asan_load8_noabort(i32 %479)
  %480 = load i64, ptr %ROCT_prio_0234, align 8
  %conv235 = trunc i64 %480 to i32
  %arrayidx239 = getelementptr i8, ptr %2, i32 62984
  %481 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %conv235, ptr %arrayidx239, align 4
  %RTOT_prio_1240 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 147
  %482 = ptrtoint ptr %RTOT_prio_1240 to i32
  call void @__asan_load8_noabort(i32 %482)
  %483 = load i64, ptr %RTOT_prio_1240, align 8
  %conv241 = trunc i64 %483 to i32
  %arrayidx244 = getelementptr i8, ptr %2, i32 62988
  %484 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %conv241, ptr %arrayidx244, align 4
  %ROCT_prio_1246 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 122
  %485 = ptrtoint ptr %ROCT_prio_1246 to i32
  call void @__asan_load8_noabort(i32 %485)
  %486 = load i64, ptr %ROCT_prio_1246, align 8
  %conv247 = trunc i64 %486 to i32
  %arrayidx251 = getelementptr i8, ptr %2, i32 62992
  %487 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %conv247, ptr %arrayidx251, align 4
  %RTOT_prio_2 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 150
  %488 = ptrtoint ptr %RTOT_prio_2 to i32
  call void @__asan_load8_noabort(i32 %488)
  %489 = load i64, ptr %RTOT_prio_2, align 8
  %conv252 = trunc i64 %489 to i32
  %arrayidx255 = getelementptr i8, ptr %2, i32 62996
  %490 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 %conv252, ptr %arrayidx255, align 4
  %ROCT_prio_2 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 125
  %491 = ptrtoint ptr %ROCT_prio_2 to i32
  call void @__asan_load8_noabort(i32 %491)
  %492 = load i64, ptr %ROCT_prio_2, align 8
  %conv257 = trunc i64 %492 to i32
  %arrayidx261 = getelementptr i8, ptr %2, i32 63000
  %493 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %conv257, ptr %arrayidx261, align 4
  %RTOT_prio_3 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 153
  %494 = ptrtoint ptr %RTOT_prio_3 to i32
  call void @__asan_load8_noabort(i32 %494)
  %495 = load i64, ptr %RTOT_prio_3, align 8
  %conv262 = trunc i64 %495 to i32
  %arrayidx265 = getelementptr i8, ptr %2, i32 63004
  %496 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 %conv262, ptr %arrayidx265, align 4
  %ROCT_prio_3 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 128
  %497 = ptrtoint ptr %ROCT_prio_3 to i32
  call void @__asan_load8_noabort(i32 %497)
  %498 = load i64, ptr %ROCT_prio_3, align 8
  %conv267 = trunc i64 %498 to i32
  %arrayidx271 = getelementptr i8, ptr %2, i32 63008
  %499 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 %conv267, ptr %arrayidx271, align 4
  %RTOT_prio_4 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 156
  %500 = ptrtoint ptr %RTOT_prio_4 to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %RTOT_prio_4, align 8
  %conv272 = trunc i64 %501 to i32
  %arrayidx275 = getelementptr i8, ptr %2, i32 63012
  %502 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 %conv272, ptr %arrayidx275, align 4
  %ROCT_prio_4 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 131
  %503 = ptrtoint ptr %ROCT_prio_4 to i32
  call void @__asan_load8_noabort(i32 %503)
  %504 = load i64, ptr %ROCT_prio_4, align 8
  %conv277 = trunc i64 %504 to i32
  %arrayidx281 = getelementptr i8, ptr %2, i32 63016
  %505 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %conv277, ptr %arrayidx281, align 4
  %RTOT_prio_5 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 159
  %506 = ptrtoint ptr %RTOT_prio_5 to i32
  call void @__asan_load8_noabort(i32 %506)
  %507 = load i64, ptr %RTOT_prio_5, align 8
  %conv282 = trunc i64 %507 to i32
  %arrayidx285 = getelementptr i8, ptr %2, i32 63020
  %508 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %conv282, ptr %arrayidx285, align 4
  %ROCT_prio_5 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 134
  %509 = ptrtoint ptr %ROCT_prio_5 to i32
  call void @__asan_load8_noabort(i32 %509)
  %510 = load i64, ptr %ROCT_prio_5, align 8
  %conv287 = trunc i64 %510 to i32
  %arrayidx291 = getelementptr i8, ptr %2, i32 63024
  %511 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %conv287, ptr %arrayidx291, align 4
  %RTOT_prio_6 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 162
  %512 = ptrtoint ptr %RTOT_prio_6 to i32
  call void @__asan_load8_noabort(i32 %512)
  %513 = load i64, ptr %RTOT_prio_6, align 8
  %conv292 = trunc i64 %513 to i32
  %arrayidx295 = getelementptr i8, ptr %2, i32 63028
  %514 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %conv292, ptr %arrayidx295, align 4
  %ROCT_prio_6 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 137
  %515 = ptrtoint ptr %ROCT_prio_6 to i32
  call void @__asan_load8_noabort(i32 %515)
  %516 = load i64, ptr %ROCT_prio_6, align 8
  %conv297 = trunc i64 %516 to i32
  %arrayidx301 = getelementptr i8, ptr %2, i32 63032
  %517 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %conv297, ptr %arrayidx301, align 4
  %RTOT_prio_7 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 165
  %518 = ptrtoint ptr %RTOT_prio_7 to i32
  call void @__asan_load8_noabort(i32 %518)
  %519 = load i64, ptr %RTOT_prio_7, align 8
  %conv302 = trunc i64 %519 to i32
  %arrayidx305 = getelementptr i8, ptr %2, i32 63036
  %520 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %conv302, ptr %arrayidx305, align 4
  %ROCT_prio_7 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 140
  %521 = ptrtoint ptr %ROCT_prio_7 to i32
  call void @__asan_load8_noabort(i32 %521)
  %522 = load i64, ptr %ROCT_prio_7, align 8
  %conv307 = trunc i64 %522 to i32
  %arrayidx311 = getelementptr i8, ptr %2, i32 63040
  %523 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 %conv307, ptr %arrayidx311, align 4
  %RTOT_novlan = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 168
  %524 = ptrtoint ptr %RTOT_novlan to i32
  call void @__asan_load8_noabort(i32 %524)
  %525 = load i64, ptr %RTOT_novlan, align 8
  %conv312 = trunc i64 %525 to i32
  %arrayidx315 = getelementptr i8, ptr %2, i32 63044
  %526 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %conv312, ptr %arrayidx315, align 4
  %ROCT_novlan = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 143
  %527 = ptrtoint ptr %ROCT_novlan to i32
  call void @__asan_load8_noabort(i32 %527)
  %528 = load i64, ptr %ROCT_novlan, align 8
  %conv317 = trunc i64 %528 to i32
  %arrayidx321 = getelementptr i8, ptr %2, i32 63048
  %529 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %conv317, ptr %arrayidx321, align 4
  %TTOT_prio_0322 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 339
  %530 = ptrtoint ptr %TTOT_prio_0322 to i32
  call void @__asan_load8_noabort(i32 %530)
  %531 = load i64, ptr %TTOT_prio_0322, align 8
  %conv323 = trunc i64 %531 to i32
  %tx_prio = getelementptr i8, ptr %2, i32 63052
  %532 = ptrtoint ptr %tx_prio to i32
  call void @__asan_store4_noabort(i32 %532)
  store i32 %conv323, ptr %tx_prio, align 4
  %TOCT_prio_0327 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 311
  %533 = ptrtoint ptr %TOCT_prio_0327 to i32
  call void @__asan_load8_noabort(i32 %533)
  %534 = load i64, ptr %TOCT_prio_0327, align 8
  %conv328 = trunc i64 %534 to i32
  %arrayidx332 = getelementptr i8, ptr %2, i32 63056
  %535 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 %conv328, ptr %arrayidx332, align 4
  %TTOT_prio_1333 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 342
  %536 = ptrtoint ptr %TTOT_prio_1333 to i32
  call void @__asan_load8_noabort(i32 %536)
  %537 = load i64, ptr %TTOT_prio_1333, align 8
  %conv334 = trunc i64 %537 to i32
  %arrayidx337 = getelementptr i8, ptr %2, i32 63060
  %538 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %conv334, ptr %arrayidx337, align 4
  %TOCT_prio_1339 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 314
  %539 = ptrtoint ptr %TOCT_prio_1339 to i32
  call void @__asan_load8_noabort(i32 %539)
  %540 = load i64, ptr %TOCT_prio_1339, align 8
  %conv340 = trunc i64 %540 to i32
  %arrayidx344 = getelementptr i8, ptr %2, i32 63064
  %541 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %conv340, ptr %arrayidx344, align 4
  %TTOT_prio_2 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 345
  %542 = ptrtoint ptr %TTOT_prio_2 to i32
  call void @__asan_load8_noabort(i32 %542)
  %543 = load i64, ptr %TTOT_prio_2, align 8
  %conv345 = trunc i64 %543 to i32
  %arrayidx348 = getelementptr i8, ptr %2, i32 63068
  %544 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %conv345, ptr %arrayidx348, align 4
  %TOCT_prio_2 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 317
  %545 = ptrtoint ptr %TOCT_prio_2 to i32
  call void @__asan_load8_noabort(i32 %545)
  %546 = load i64, ptr %TOCT_prio_2, align 8
  %conv350 = trunc i64 %546 to i32
  %arrayidx354 = getelementptr i8, ptr %2, i32 63072
  %547 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 %conv350, ptr %arrayidx354, align 4
  %TTOT_prio_3 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 348
  %548 = ptrtoint ptr %TTOT_prio_3 to i32
  call void @__asan_load8_noabort(i32 %548)
  %549 = load i64, ptr %TTOT_prio_3, align 8
  %conv355 = trunc i64 %549 to i32
  %arrayidx358 = getelementptr i8, ptr %2, i32 63076
  %550 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %conv355, ptr %arrayidx358, align 4
  %TOCT_prio_3 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 320
  %551 = ptrtoint ptr %TOCT_prio_3 to i32
  call void @__asan_load8_noabort(i32 %551)
  %552 = load i64, ptr %TOCT_prio_3, align 8
  %conv360 = trunc i64 %552 to i32
  %arrayidx364 = getelementptr i8, ptr %2, i32 63080
  %553 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %conv360, ptr %arrayidx364, align 4
  %TTOT_prio_4 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 351
  %554 = ptrtoint ptr %TTOT_prio_4 to i32
  call void @__asan_load8_noabort(i32 %554)
  %555 = load i64, ptr %TTOT_prio_4, align 8
  %conv365 = trunc i64 %555 to i32
  %arrayidx368 = getelementptr i8, ptr %2, i32 63084
  %556 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 %conv365, ptr %arrayidx368, align 4
  %TOCT_prio_4 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 323
  %557 = ptrtoint ptr %TOCT_prio_4 to i32
  call void @__asan_load8_noabort(i32 %557)
  %558 = load i64, ptr %TOCT_prio_4, align 8
  %conv370 = trunc i64 %558 to i32
  %arrayidx374 = getelementptr i8, ptr %2, i32 63088
  %559 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %conv370, ptr %arrayidx374, align 4
  %TTOT_prio_5 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 354
  %560 = ptrtoint ptr %TTOT_prio_5 to i32
  call void @__asan_load8_noabort(i32 %560)
  %561 = load i64, ptr %TTOT_prio_5, align 8
  %conv375 = trunc i64 %561 to i32
  %arrayidx378 = getelementptr i8, ptr %2, i32 63092
  %562 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %conv375, ptr %arrayidx378, align 4
  %TOCT_prio_5 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 326
  %563 = ptrtoint ptr %TOCT_prio_5 to i32
  call void @__asan_load8_noabort(i32 %563)
  %564 = load i64, ptr %TOCT_prio_5, align 8
  %conv380 = trunc i64 %564 to i32
  %arrayidx384 = getelementptr i8, ptr %2, i32 63096
  %565 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %conv380, ptr %arrayidx384, align 4
  %TTOT_prio_6 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 357
  %566 = ptrtoint ptr %TTOT_prio_6 to i32
  call void @__asan_load8_noabort(i32 %566)
  %567 = load i64, ptr %TTOT_prio_6, align 8
  %conv385 = trunc i64 %567 to i32
  %arrayidx388 = getelementptr i8, ptr %2, i32 63100
  %568 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 %conv385, ptr %arrayidx388, align 4
  %TOCT_prio_6 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 329
  %569 = ptrtoint ptr %TOCT_prio_6 to i32
  call void @__asan_load8_noabort(i32 %569)
  %570 = load i64, ptr %TOCT_prio_6, align 8
  %conv390 = trunc i64 %570 to i32
  %arrayidx394 = getelementptr i8, ptr %2, i32 63104
  %571 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %conv390, ptr %arrayidx394, align 4
  %TTOT_prio_7 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 360
  %572 = ptrtoint ptr %TTOT_prio_7 to i32
  call void @__asan_load8_noabort(i32 %572)
  %573 = load i64, ptr %TTOT_prio_7, align 8
  %conv395 = trunc i64 %573 to i32
  %arrayidx398 = getelementptr i8, ptr %2, i32 63108
  %574 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %conv395, ptr %arrayidx398, align 4
  %TOCT_prio_7 = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 332
  %575 = ptrtoint ptr %TOCT_prio_7 to i32
  call void @__asan_load8_noabort(i32 %575)
  %576 = load i64, ptr %TOCT_prio_7, align 8
  %conv400 = trunc i64 %576 to i32
  %arrayidx404 = getelementptr i8, ptr %2, i32 63112
  %577 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %conv400, ptr %arrayidx404, align 4
  %TTOT_novlan = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 363
  %578 = ptrtoint ptr %TTOT_novlan to i32
  call void @__asan_load8_noabort(i32 %578)
  %579 = load i64, ptr %TTOT_novlan, align 8
  %conv405 = trunc i64 %579 to i32
  %arrayidx408 = getelementptr i8, ptr %2, i32 63116
  %580 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 %conv405, ptr %arrayidx408, align 4
  %TOCT_novlan = getelementptr inbounds %struct.mlx4_en_stat_out_mbox, ptr %15, i32 0, i32 335
  %581 = ptrtoint ptr %TOCT_novlan to i32
  call void @__asan_load8_noabort(i32 %581)
  %582 = load i64, ptr %TOCT_novlan, align 8
  %conv410 = trunc i64 %582 to i32
  %arrayidx414 = getelementptr i8, ptr %2, i32 63120
  %583 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 %conv410, ptr %arrayidx414, align 4
  %counter_mode = getelementptr inbounds %struct.mlx4_counter, ptr %tmp_counter_stats, i32 0, i32 1
  %584 = ptrtoint ptr %counter_mode to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %counter_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %585)
  %cmp416 = icmp eq i8 %585, 0
  br i1 %cmp416, label %if.then418, label %if.end193.for.body436.preheader_crit_edge

if.end193.for.body436.preheader_crit_edge:        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body436.preheader

if.then418:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #6
  %rx_bytes419 = getelementptr inbounds %struct.mlx4_counter, ptr %tmp_counter_stats, i32 0, i32 5
  %586 = ptrtoint ptr %rx_bytes419 to i32
  call void @__asan_load8_noabort(i32 %586)
  %587 = load i64, ptr %rx_bytes419, align 8
  %conv420 = trunc i64 %587 to i32
  %pf_stats = getelementptr i8, ptr %2, i32 63124
  %rx_bytes421 = getelementptr i8, ptr %2, i32 63128
  %588 = ptrtoint ptr %rx_bytes421 to i32
  call void @__asan_store4_noabort(i32 %588)
  store i32 %conv420, ptr %rx_bytes421, align 4
  %tx_bytes422 = getelementptr inbounds %struct.mlx4_counter, ptr %tmp_counter_stats, i32 0, i32 7
  %589 = ptrtoint ptr %tx_bytes422 to i32
  call void @__asan_load8_noabort(i32 %589)
  %590 = load i64, ptr %tx_bytes422, align 8
  %conv423 = trunc i64 %590 to i32
  %tx_bytes425 = getelementptr i8, ptr %2, i32 63136
  %591 = ptrtoint ptr %tx_bytes425 to i32
  call void @__asan_store4_noabort(i32 %591)
  store i32 %conv423, ptr %tx_bytes425, align 4
  %rx_frames = getelementptr inbounds %struct.mlx4_counter, ptr %tmp_counter_stats, i32 0, i32 4
  %592 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %rx_frames, align 8
  %conv426 = trunc i64 %593 to i32
  %594 = ptrtoint ptr %pf_stats to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 %conv426, ptr %pf_stats, align 4
  %tx_frames = getelementptr inbounds %struct.mlx4_counter, ptr %tmp_counter_stats, i32 0, i32 6
  %595 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %595)
  %596 = load i64, ptr %tx_frames, align 8
  %conv429 = trunc i64 %596 to i32
  %tx_packets431 = getelementptr i8, ptr %2, i32 63132
  %597 = ptrtoint ptr %tx_packets431 to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 %conv429, ptr %tx_packets431, align 4
  br label %for.body436.preheader

for.body436.preheader:                            ; preds = %if.then418, %if.end193.for.body436.preheader_crit_edge
  br label %for.body436

for.body436:                                      ; preds = %for.body436.for.body436_crit_edge, %for.body436.preheader
  %i.2934 = phi i32 [ %inc460, %for.body436.for.body436_crit_edge ], [ 0, %for.body436.preheader ]
  %arrayidx437 = getelementptr %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 %i.2934
  %598 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_load8_noabort(i32 %598)
  %599 = load i64, ptr %arrayidx437, align 8
  %arrayidx438 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 64, i32 %i.2934
  %600 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_store8_noabort(i32 %600)
  store i64 %599, ptr %arrayidx438, align 8
  %rx_pause_duration = getelementptr %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 %i.2934, i32 1
  %601 = ptrtoint ptr %rx_pause_duration to i32
  call void @__asan_load8_noabort(i32 %601)
  %602 = load i64, ptr %rx_pause_duration, align 8
  %rx_pause_duration443 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 64, i32 %i.2934, i32 1
  %603 = ptrtoint ptr %rx_pause_duration443 to i32
  call void @__asan_store8_noabort(i32 %603)
  store i64 %602, ptr %rx_pause_duration443, align 8
  %rx_pause_transition = getelementptr %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 %i.2934, i32 2
  %604 = ptrtoint ptr %rx_pause_transition to i32
  call void @__asan_load8_noabort(i32 %604)
  %605 = load i64, ptr %rx_pause_transition, align 8
  %rx_pause_transition447 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 64, i32 %i.2934, i32 2
  %606 = ptrtoint ptr %rx_pause_transition447 to i32
  call void @__asan_store8_noabort(i32 %606)
  store i64 %605, ptr %rx_pause_transition447, align 8
  %tx_pause = getelementptr %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 %i.2934, i32 3
  %607 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load8_noabort(i32 %607)
  %608 = load i64, ptr %tx_pause, align 8
  %arrayidx449 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 65, i32 %i.2934
  %609 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_store8_noabort(i32 %609)
  store i64 %608, ptr %arrayidx449, align 8
  %tx_pause_duration = getelementptr %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 %i.2934, i32 4
  %610 = ptrtoint ptr %tx_pause_duration to i32
  call void @__asan_load8_noabort(i32 %610)
  %611 = load i64, ptr %tx_pause_duration, align 8
  %tx_pause_duration454 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 65, i32 %i.2934, i32 1
  %612 = ptrtoint ptr %tx_pause_duration454 to i32
  call void @__asan_store8_noabort(i32 %612)
  store i64 %611, ptr %tx_pause_duration454, align 8
  %tx_pause_transition = getelementptr %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 %i.2934, i32 5
  %613 = ptrtoint ptr %tx_pause_transition to i32
  call void @__asan_load8_noabort(i32 %613)
  %614 = load i64, ptr %tx_pause_transition, align 8
  %tx_pause_transition458 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 65, i32 %i.2934, i32 2
  %615 = ptrtoint ptr %tx_pause_transition458 to i32
  call void @__asan_store8_noabort(i32 %615)
  store i64 %614, ptr %tx_pause_transition458, align 8
  %inc460 = add nuw nsw i32 %i.2934, 1
  %exitcond.not = icmp eq i32 %inc460, 8
  br i1 %exitcond.not, label %for.end461, label %for.body436.for.body436_crit_edge

for.body436.for.body436_crit_edge:                ; preds = %for.body436
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body436

for.end461:                                       ; preds = %for.body436
  call void @__sanitizer_cov_trace_pc() #6
  %616 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %616)
  %617 = load i64, ptr %38, align 8
  %rx_flowstats = getelementptr i8, ptr %2, i32 63528
  %618 = ptrtoint ptr %rx_flowstats to i32
  call void @__asan_store8_noabort(i32 %618)
  store i64 %617, ptr %rx_flowstats, align 8
  %rx_pause_duration466 = getelementptr inbounds %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 0, i32 1
  %619 = ptrtoint ptr %rx_pause_duration466 to i32
  call void @__asan_load8_noabort(i32 %619)
  %620 = load i64, ptr %rx_pause_duration466, align 8
  %rx_pause_duration468 = getelementptr i8, ptr %2, i32 63536
  %621 = ptrtoint ptr %rx_pause_duration468 to i32
  call void @__asan_store8_noabort(i32 %621)
  store i64 %620, ptr %rx_pause_duration468, align 8
  %rx_pause_transition470 = getelementptr inbounds %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 0, i32 2
  %622 = ptrtoint ptr %rx_pause_transition470 to i32
  call void @__asan_load8_noabort(i32 %622)
  %623 = load i64, ptr %rx_pause_transition470, align 8
  %rx_pause_transition472 = getelementptr i8, ptr %2, i32 63544
  %624 = ptrtoint ptr %rx_pause_transition472 to i32
  call void @__asan_store8_noabort(i32 %624)
  store i64 %623, ptr %rx_pause_transition472, align 8
  %tx_pause474 = getelementptr inbounds %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 0, i32 3
  %625 = ptrtoint ptr %tx_pause474 to i32
  call void @__asan_load8_noabort(i32 %625)
  %626 = load i64, ptr %tx_pause474, align 8
  %tx_flowstats = getelementptr i8, ptr %2, i32 63552
  %627 = ptrtoint ptr %tx_flowstats to i32
  call void @__asan_store8_noabort(i32 %627)
  store i64 %626, ptr %tx_flowstats, align 8
  %tx_pause_duration477 = getelementptr inbounds %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 0, i32 4
  %628 = ptrtoint ptr %tx_pause_duration477 to i32
  call void @__asan_load8_noabort(i32 %628)
  %629 = load i64, ptr %tx_pause_duration477, align 8
  %tx_pause_duration479 = getelementptr i8, ptr %2, i32 63560
  %630 = ptrtoint ptr %tx_pause_duration479 to i32
  call void @__asan_store8_noabort(i32 %630)
  store i64 %629, ptr %tx_pause_duration479, align 8
  %tx_pause_transition481 = getelementptr inbounds %struct.mlx4_en_stat_out_flow_control_mbox, ptr %38, i32 0, i32 5
  %631 = ptrtoint ptr %tx_pause_transition481 to i32
  call void @__asan_load8_noabort(i32 %631)
  %632 = load i64, ptr %tx_pause_transition481, align 8
  %tx_pause_transition483 = getelementptr i8, ptr %2, i32 63568
  %633 = ptrtoint ptr %tx_pause_transition483 to i32
  call void @__asan_store8_noabort(i32 %633)
  store i64 %632, ptr %tx_pause_transition483, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #4
  br label %out

out:                                              ; preds = %for.end461, %if.then30.out_crit_edge, %if.end14.out_crit_edge
  %err.1 = phi i32 [ %call.i, %if.end14.out_crit_edge ], [ %call.i761, %if.then30.out_crit_edge ], [ %err.0, %for.end461 ]
  %634 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %mdev, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %635, ptr noundef %call5) #4
  %636 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %mdev, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %637, ptr noundef %call9) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then11, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %10, %if.then11 ], [ %err.1, %out ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmp_counter_stats) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_default_counter_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_counter_stats(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
