; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_selftest.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.129, i32, i32, i32 }
%union.anon.129 = type { ptr }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.mlx4_en_pkt_stats = type { i32, i32, i32, i32, i32, i32, i32, [9 x [2 x i32]], [9 x [2 x i32]] }
%struct.mlx4_en_counter_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_flow_stats_rx = type { i64, i64, i64 }
%struct.mlx4_en_flow_stats_tx = type { i64, i64, i64 }
%struct.mlx4_en_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_xdp_stats = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_phy_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_stats_bitmap = type { [5 x i32], %struct.mutex }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.mlx4_en_cq = type { %struct.mlx4_cq, %struct.mlx4_hwq_resources, i32, ptr, %union.anon.134, i32, i32, i32, i32, i16, i16, ptr, ptr }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.133, i32, %struct.list_head, i8 }
%struct.anon.133 = type { %struct.list_head, ptr, ptr }
%union.anon.134 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Transmitting loopback packet failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Loopback packet didn't arrive\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 100, i64 1000, i64 10000, i64 20000, i64 40000, i64 56000]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 92, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_selftest.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 105, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_ex_selftest(ptr noundef %dev, ptr nocapture noundef %flags, ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = call ptr @memset(ptr %buf, i32 0, i32 40)
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  tail call void @netif_carrier_off(ptr noundef %dev) #2
  tail call void @msleep(i32 noundef 200) #2
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %flags3 = getelementptr inbounds %struct.mlx4_dev, ptr %9, i32 0, i32 3, i32 60
  %10 = ptrtoint ptr %flags3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags3, align 8
  %and4 = and i64 %11, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end16_crit_edge, label %if.then6

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.then6:                                         ; preds = %if.then
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %9, i64 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 80, i32 noundef 60000, i32 noundef 0) #2
  %conv8 = sext i32 %call.i.i to i64
  %arrayidx = getelementptr i64, ptr %buf, i32 3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv8, ptr %arrayidx, align 8
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %13 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_up, align 8, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %if.then6.if.end16_crit_edge, label %land.lhs.true

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then6
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %15 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %16)
  %cmp = icmp ugt i32 %16, 135
  br i1 %cmp, label %if.then12, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  %loopback_ok1.i = getelementptr i8, ptr %dev, i32 51580
  %17 = ptrtoint ptr %loopback_ok1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %loopback_ok1.i, align 4
  %validate_loopback.i = getelementptr i8, ptr %dev, i32 51584
  %18 = ptrtoint ptr %validate_loopback.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %validate_loopback.i, align 8
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 23
  %21 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %features.i, align 16
  tail call void @mlx4_en_update_loopback_state(ptr noundef %20, i64 noundef %22) #2
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %24, i32 noundef 128, i32 noundef 2592) #2
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then12.mlx4_en_test_loopback_exit.sink.split.i_crit_edge, label %if.end.i.i

if.then12.mlx4_en_test_loopback_exit.sink.split.i_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_loopback_exit.sink.split.i

if.end.i.i:                                       ; preds = %if.then12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %28, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 14) #2
  %call2.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 112) #2
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 86
  %31 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr.i.i, align 64
  %33 = call ptr @memcpy(ptr %call1.i.i, ptr %32, i32 6)
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i.i, i32 0, i32 1
  %34 = call ptr @memset(ptr %h_source.i.i, i32 0, i32 6)
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %call1.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 2054, ptr %h_proto.i.i, align 1
  %36 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %40 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.026.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %conv.i.i = trunc i32 %i.026.i.i to i8
  %arrayidx.i.i = getelementptr i8, ptr %call2.i.i, i32 %i.026.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 112
  br i1 %exitcond.not.i.i, label %mlx4_en_test_loopback_xmit.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i

mlx4_en_test_loopback_xmit.exit.i:                ; preds = %for.body.i.i
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  %call6.i.i = tail call i32 @mlx4_en_xmit(ptr noundef nonnull %call.i.i.i, ptr noundef %43) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i55 = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i55, label %for.body.preheader.i, label %mlx4_en_test_loopback_xmit.exit.i.mlx4_en_test_loopback_exit.sink.split.i_crit_edge

mlx4_en_test_loopback_xmit.exit.i.mlx4_en_test_loopback_exit.sink.split.i_crit_edge: ; preds = %mlx4_en_test_loopback_xmit.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_loopback_exit.sink.split.i

for.body.preheader.i:                             ; preds = %mlx4_en_test_loopback_xmit.exit.i
  tail call void @msleep(i32 noundef 100) #2
  %44 = ptrtoint ptr %loopback_ok1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %loopback_ok1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool4.not.i = icmp eq i32 %45, 0
  br i1 %tobool4.not.i, label %for.cond.i, label %for.body.preheader.i.mlx4_en_test_loopback.exit_crit_edge

for.body.preheader.i.mlx4_en_test_loopback.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_loopback.exit

for.cond.i:                                       ; preds = %for.body.preheader.i
  tail call void @msleep(i32 noundef 100) #2
  %46 = ptrtoint ptr %loopback_ok1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %loopback_ok1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool4.not.1.i = icmp eq i32 %47, 0
  br i1 %tobool4.not.1.i, label %for.cond.1.i, label %for.cond.i.mlx4_en_test_loopback.exit_crit_edge

for.cond.i.mlx4_en_test_loopback.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_loopback.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void @msleep(i32 noundef 100) #2
  %48 = ptrtoint ptr %loopback_ok1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %loopback_ok1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool4.not.2.i = icmp eq i32 %49, 0
  br i1 %tobool4.not.2.i, label %for.cond.2.i, label %for.cond.1.i.mlx4_en_test_loopback.exit_crit_edge

for.cond.1.i.mlx4_en_test_loopback.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_loopback.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void @msleep(i32 noundef 100) #2
  %50 = ptrtoint ptr %loopback_ok1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %loopback_ok1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool4.not.3.i = icmp eq i32 %51, 0
  br i1 %tobool4.not.3.i, label %for.cond.3.i, label %for.cond.2.i.mlx4_en_test_loopback.exit_crit_edge

for.cond.2.i.mlx4_en_test_loopback.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_loopback.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void @msleep(i32 noundef 100) #2
  %52 = ptrtoint ptr %loopback_ok1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %loopback_ok1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool4.not.4.i = icmp eq i32 %53, 0
  br i1 %tobool4.not.4.i, label %for.cond.3.i.mlx4_en_test_loopback_exit.sink.split.i_crit_edge, label %for.cond.3.i.mlx4_en_test_loopback.exit_crit_edge

for.cond.3.i.mlx4_en_test_loopback.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_loopback.exit

for.cond.3.i.mlx4_en_test_loopback_exit.sink.split.i_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_loopback_exit.sink.split.i

mlx4_en_test_loopback_exit.sink.split.i:          ; preds = %for.cond.3.i.mlx4_en_test_loopback_exit.sink.split.i_crit_edge, %mlx4_en_test_loopback_xmit.exit.i.mlx4_en_test_loopback_exit.sink.split.i_crit_edge, %if.then12.mlx4_en_test_loopback_exit.sink.split.i_crit_edge
  %.str.2.sink.i = phi ptr [ @.str.1, %if.then12.mlx4_en_test_loopback_exit.sink.split.i_crit_edge ], [ @.str.1, %mlx4_en_test_loopback_xmit.exit.i.mlx4_en_test_loopback_exit.sink.split.i_crit_edge ], [ @.str.2, %for.cond.3.i.mlx4_en_test_loopback_exit.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull %.str.2.sink.i) #2
  br label %mlx4_en_test_loopback.exit

mlx4_en_test_loopback.exit:                       ; preds = %mlx4_en_test_loopback_exit.sink.split.i, %for.cond.3.i.mlx4_en_test_loopback.exit_crit_edge, %for.cond.2.i.mlx4_en_test_loopback.exit_crit_edge, %for.cond.1.i.mlx4_en_test_loopback.exit_crit_edge, %for.cond.i.mlx4_en_test_loopback.exit_crit_edge, %for.body.preheader.i.mlx4_en_test_loopback.exit_crit_edge
  %tobool14.not.i = phi i32 [ 0, %for.cond.3.i.mlx4_en_test_loopback.exit_crit_edge ], [ 0, %for.cond.2.i.mlx4_en_test_loopback.exit_crit_edge ], [ 0, %for.cond.1.i.mlx4_en_test_loopback.exit_crit_edge ], [ 0, %for.cond.i.mlx4_en_test_loopback.exit_crit_edge ], [ 0, %for.body.preheader.i.mlx4_en_test_loopback.exit_crit_edge ], [ 1, %mlx4_en_test_loopback_exit.sink.split.i ]
  %54 = ptrtoint ptr %validate_loopback.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %validate_loopback.i, align 8
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 8
  %features13.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 23
  %57 = ptrtoint ptr %features13.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %features13.i, align 16
  tail call void @mlx4_en_update_loopback_state(ptr noundef %56, i64 noundef %58) #2
  %59 = zext i32 %tobool14.not.i to i64
  %arrayidx15 = getelementptr i64, ptr %buf, i32 4
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx15, align 8
  br label %if.end16

if.end16:                                         ; preds = %mlx4_en_test_loopback.exit, %land.lhs.true.if.end16_crit_edge, %if.then6.if.end16_crit_edge, %if.then.if.end16_crit_edge
  br i1 %tobool.not.i, label %if.then18, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @netif_carrier_on(ptr noundef %dev) #2
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge, %entry.if.end20_crit_edge
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %call.i = tail call i32 @mlx4_test_async(ptr noundef %64) #2
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i, align 4
  %69 = and i32 %68, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %for.cond.preheader.i, label %if.end20.mlx4_en_test_interrupts.exit_crit_edge

if.end20.mlx4_en_test_interrupts.exit_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_interrupts.exit

for.cond.preheader.i:                             ; preds = %if.end20
  %rx_ring_num.i = getelementptr i8, ptr %dev, i32 61460
  %71 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_ring_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp22.not.i = icmp eq i32 %72, 0
  br i1 %cmp22.not.i, label %for.cond.preheader.i.mlx4_en_test_interrupts.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.mlx4_en_test_interrupts.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_interrupts.exit

for.cond.i56:                                     ; preds = %for.body.i
  %inc.i = add nuw i32 %i.023.i, 1
  %73 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_ring_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %74
  br i1 %cmp.i, label %for.cond.i56.for.body.i_crit_edge, label %for.cond.i56.mlx4_en_test_interrupts.exit_crit_edge

for.cond.i56.mlx4_en_test_interrupts.exit_crit_edge: ; preds = %for.cond.i56
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_interrupts.exit

for.cond.i56.for.body.i_crit_edge:                ; preds = %for.cond.i56
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i56.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.cond.i56.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %75 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %62, align 8
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 55, i32 %i.023.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 4
  %vector.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %vector.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vector.i, align 8
  %call7.i = tail call i32 @mlx4_test_interrupt(ptr noundef %76, i32 noundef %80) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %for.cond.i56, label %for.body.i.mlx4_en_test_interrupts.exit_crit_edge

for.body.i.mlx4_en_test_interrupts.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_interrupts.exit

mlx4_en_test_interrupts.exit:                     ; preds = %for.body.i.mlx4_en_test_interrupts.exit_crit_edge, %for.cond.i56.mlx4_en_test_interrupts.exit_crit_edge, %for.cond.preheader.i.mlx4_en_test_interrupts.exit_crit_edge, %if.end20.mlx4_en_test_interrupts.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end20.mlx4_en_test_interrupts.exit_crit_edge ], [ %call.i, %for.cond.preheader.i.mlx4_en_test_interrupts.exit_crit_edge ], [ 0, %for.cond.i56.mlx4_en_test_interrupts.exit_crit_edge ], [ %call7.i, %for.body.i.mlx4_en_test_interrupts.exit_crit_edge ]
  %conv22 = sext i32 %retval.0.i to i64
  %81 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv22, ptr %buf, align 8
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i, align 8
  %port.i = getelementptr i8, ptr %dev, i32 51652
  %84 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port.i, align 4
  %conv.i = trunc i32 %85 to i8
  %call.i57 = tail call i32 @mlx4_en_QUERY_PORT(ptr noundef %83, i8 noundef zeroext %conv.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i, label %mlx4_en_test_interrupts.exit.mlx4_en_test_link.exit_crit_edge

mlx4_en_test_interrupts.exit.mlx4_en_test_link.exit_crit_edge: ; preds = %mlx4_en_test_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_link.exit

if.end.i:                                         ; preds = %mlx4_en_test_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #4
  %port_state.i = getelementptr i8, ptr %dev, i32 2828
  %86 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i59 = icmp ne i32 %87, 1
  %..i = zext i1 %cmp.i59 to i32
  br label %mlx4_en_test_link.exit

mlx4_en_test_link.exit:                           ; preds = %if.end.i, %mlx4_en_test_interrupts.exit.mlx4_en_test_link.exit_crit_edge
  %retval.0.i60 = phi i32 [ -12, %mlx4_en_test_interrupts.exit.mlx4_en_test_link.exit_crit_edge ], [ %..i, %if.end.i ]
  %conv25 = sext i32 %retval.0.i60 to i64
  %arrayidx26 = getelementptr i64, ptr %buf, i32 1
  %88 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv25, ptr %arrayidx26, align 8
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 8
  %91 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port.i, align 4
  %conv.i62 = trunc i32 %92 to i8
  %call.i63 = tail call i32 @mlx4_en_QUERY_PORT(ptr noundef %90, i8 noundef zeroext %conv.i62) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i65, label %mlx4_en_test_link.exit.mlx4_en_test_speed.exit_crit_edge

mlx4_en_test_link.exit.mlx4_en_test_speed.exit_crit_edge: ; preds = %mlx4_en_test_link.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_speed.exit

if.end.i65:                                       ; preds = %mlx4_en_test_link.exit
  %link_speed.i = getelementptr i8, ptr %dev, i32 2832
  %93 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %link_speed.i, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values)
  switch i32 %94, label %if.end.i65.mlx4_en_test_speed.exit_crit_edge [
    i32 100, label %if.end.i65.if.end29.i_crit_edge
    i32 1000, label %if.end.i65.if.end29.i_crit_edge68
    i32 10000, label %if.end.i65.if.end29.i_crit_edge69
    i32 20000, label %if.end.i65.if.end29.i_crit_edge70
    i32 40000, label %if.end.i65.if.end29.i_crit_edge71
    i32 56000, label %if.end.i65.if.end29.i_crit_edge72
  ]

if.end.i65.if.end29.i_crit_edge72:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29.i

if.end.i65.if.end29.i_crit_edge71:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29.i

if.end.i65.if.end29.i_crit_edge70:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29.i

if.end.i65.if.end29.i_crit_edge69:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29.i

if.end.i65.if.end29.i_crit_edge68:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29.i

if.end.i65.if.end29.i_crit_edge:                  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29.i

if.end.i65.mlx4_en_test_speed.exit_crit_edge:     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #4
  br label %mlx4_en_test_speed.exit

if.end29.i:                                       ; preds = %if.end.i65.if.end29.i_crit_edge, %if.end.i65.if.end29.i_crit_edge68, %if.end.i65.if.end29.i_crit_edge69, %if.end.i65.if.end29.i_crit_edge70, %if.end.i65.if.end29.i_crit_edge71, %if.end.i65.if.end29.i_crit_edge72
  br label %mlx4_en_test_speed.exit

mlx4_en_test_speed.exit:                          ; preds = %if.end29.i, %if.end.i65.mlx4_en_test_speed.exit_crit_edge, %mlx4_en_test_link.exit.mlx4_en_test_speed.exit_crit_edge
  %retval.0.i66 = phi i32 [ 0, %if.end29.i ], [ -12, %mlx4_en_test_link.exit.mlx4_en_test_speed.exit_crit_edge ], [ %94, %if.end.i65.mlx4_en_test_speed.exit_crit_edge ]
  %conv28 = sext i32 %retval.0.i66 to i64
  %arrayidx29 = getelementptr i64, ptr %buf, i32 2
  %96 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv28, ptr %arrayidx29, align 8
  %97 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %tobool33.not = icmp eq i64 %98, 0
  br i1 %tobool33.not, label %mlx4_en_test_speed.exit.for.inc_crit_edge, label %if.then34

mlx4_en_test_speed.exit.for.inc_crit_edge:        ; preds = %mlx4_en_test_speed.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then34:                                        ; preds = %mlx4_en_test_speed.exit
  call void @__sanitizer_cov_trace_pc() #4
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %or = or i32 %100, 2
  store i32 %or, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %mlx4_en_test_speed.exit.for.inc_crit_edge
  %101 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %tobool33.not.1 = icmp eq i64 %102, 0
  br i1 %tobool33.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then34.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.1

if.then34.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags, align 4
  %or.1 = or i32 %104, 2
  store i32 %or.1, ptr %flags, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then34.1, %for.inc.for.inc.1_crit_edge
  %105 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx29, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %tobool33.not.2 = icmp eq i64 %106, 0
  br i1 %tobool33.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then34.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.2

if.then34.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags, align 4
  %or.2 = or i32 %108, 2
  store i32 %or.2, ptr %flags, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then34.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx32.3 = getelementptr i64, ptr %buf, i32 3
  %109 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx32.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %110)
  %tobool33.not.3 = icmp eq i64 %110, 0
  br i1 %tobool33.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then34.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.3

if.then34.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags, align 4
  %or.3 = or i32 %112, 2
  store i32 %or.3, ptr %flags, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then34.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx32.4 = getelementptr i64, ptr %buf, i32 4
  %113 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx32.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %114)
  %tobool33.not.4 = icmp eq i64 %114, 0
  br i1 %tobool33.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then34.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.4

if.then34.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  %115 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags, align 4
  %or.4 = or i32 %116, 2
  store i32 %or.4, ptr %flags, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then34.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_update_loopback_state(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @en_print(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_test_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_test_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_QUERY_PORT(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_selftest.c", i32 92, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_selftest.c", i32 105, i32 3}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i8 0, i8 2}
