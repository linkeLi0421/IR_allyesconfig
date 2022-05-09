; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/stmmac_xdp.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_xdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.180, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.180 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.181, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.181 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.174, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.174 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@stmmac_xdp_set_prog.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stmmac: Jumbo frames not supported\00", [61 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to map xsk pool\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 116, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [52 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_xdp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 30, i32 25 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @stmmac_xdp_set_prog.__msg, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_xdp_set_prog.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_xdp_setup_pool(ptr noundef %priv, ptr noundef %pool, i16 noundef zeroext %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  %idxprom.i5 = zext i16 %queue to i32
  %arrayidx.i6 = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 26, i32 %idxprom.i5
  %plat.i7 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %0 = ptrtoint ptr %plat.i7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat.i7, align 128
  %rx_queues_to_use.i8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %rx_queues_to_use.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_queues_to_use.i8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idxprom.i5)
  %cmp.not.i9 = icmp ugt i32 %3, %idxprom.i5
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br i1 %cmp.not.i9, label %lor.lhs.false.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %cond.true
  %tx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %idxprom.i5)
  %cmp4.not.i = icmp ugt i32 %5, %idxprom.i5
  br i1 %cmp4.not.i, label %if.end.i, label %lor.lhs.false.i.cond.end_crit_edge

lor.lhs.false.i.cond.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %chunk_size.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 20
  %6 = ptrtoint ptr %chunk_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chunk_size.i.i.i, align 16
  %headroom.i.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 19
  %8 = ptrtoint ptr %headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %headroom.i.i.i, align 4
  %add.i.neg.i.i = add i32 %7, -256
  %sub.i.i = sub i32 %add.i.neg.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522, i32 %sub.i.i)
  %cmp6.i = icmp ult i32 %sub.i.i, 1522
  br i1 %cmp6.i, label %if.end.i.cond.end_crit_edge, label %if.end9.i

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end9.i:                                        ; preds = %if.end.i
  %device.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i, align 8
  %umem1.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %pool, i32 0, i32 5
  %12 = ptrtoint ptr %umem1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %umem1.i.i, align 64
  %pgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %pgs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pgs.i.i, align 4
  %npgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %npgs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %npgs.i.i, align 4
  %call.i.i = tail call i32 @xp_dma_map(ptr noundef nonnull %pool, ptr noundef %11, i32 noundef 34, ptr noundef %15, i32 noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %dev13.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %18 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev13.i, align 4
  br i1 %tobool.not.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str) #7
  br label %cond.end

if.end12.i:                                       ; preds = %if.end9.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end12.i.if.end34.critedge.i_crit_edge, label %land.rhs.i

if.end12.i.if.end34.critedge.i_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.critedge.i

land.rhs.i:                                       ; preds = %if.end12.i
  %xdp_prog.i.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 101
  %22 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xdp_prog.i.i, align 8
  %tobool.i66.not.i = icmp eq ptr %23, null
  br i1 %tobool.i66.not.i, label %land.rhs.i.if.end34.critedge.i_crit_edge, label %if.then19.i

land.rhs.i.if.end34.critedge.i_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.critedge.i

if.then19.i:                                      ; preds = %land.rhs.i
  tail call void @napi_disable(ptr noundef %arrayidx.i6) #4
  %tx_napi.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 26, i32 %idxprom.i5, i32 2
  tail call void @napi_disable(ptr noundef %tx_napi.i) #4
  tail call void @stmmac_disable_rx_queue(ptr noundef %priv, i32 noundef %idxprom.i5) #4
  tail call void @stmmac_disable_tx_queue(ptr noundef %priv, i32 noundef %idxprom.i5) #4
  %af_xdp_zc_qps.c.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 100
  %24 = ptrtoint ptr %af_xdp_zc_qps.c.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %af_xdp_zc_qps.c.i, align 4
  tail call void @_set_bit(i32 noundef %idxprom.i5, ptr noundef %25) #4
  tail call void @stmmac_enable_rx_queue(ptr noundef %priv, i32 noundef %idxprom.i5) #4
  tail call void @stmmac_enable_tx_queue(ptr noundef %priv, i32 noundef %idxprom.i5) #4
  %rxtx_napi.i = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 26, i32 %idxprom.i5, i32 4
  tail call void @napi_enable(ptr noundef %rxtx_napi.i) #4
  %26 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev13.i, align 4
  %call30.i = tail call i32 @stmmac_xsk_wakeup(ptr noundef %27, i32 noundef %idxprom.i5, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.then19.i.if.end34.i_crit_edge, label %if.then19.i.cond.end_crit_edge

if.then19.i.cond.end_crit_edge:                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.then19.i.if.end34.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.end34.critedge.i:                              ; preds = %land.rhs.i.if.end34.critedge.i_crit_edge, %if.end12.i.if.end34.critedge.i_crit_edge
  %af_xdp_zc_qps.c65.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 100
  %28 = ptrtoint ptr %af_xdp_zc_qps.c65.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %af_xdp_zc_qps.c65.i, align 4
  tail call void @_set_bit(i32 noundef %idxprom.i5, ptr noundef %29) #4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end34.critedge.i, %if.then19.i.if.end34.i_crit_edge
  br label %cond.end

cond.false:                                       ; preds = %entry
  br i1 %cmp.not.i9, label %lor.lhs.false.i12, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

lor.lhs.false.i12:                                ; preds = %cond.false
  %tx_queues_to_use.i10 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 30
  %30 = ptrtoint ptr %tx_queues_to_use.i10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_queues_to_use.i10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %idxprom.i5)
  %cmp4.not.i11 = icmp ugt i32 %31, %idxprom.i5
  br i1 %cmp4.not.i11, label %if.end.i14, label %lor.lhs.false.i12.cond.end_crit_edge

lor.lhs.false.i12.cond.end_crit_edge:             ; preds = %lor.lhs.false.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end.i14:                                       ; preds = %lor.lhs.false.i12
  %dev.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @xsk_get_pool_from_qid(ptr noundef %33, i16 noundef zeroext %queue) #4
  %tobool.not.i13 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i13, label %if.end.i14.cond.end_crit_edge, label %if.end7.i

if.end.i14.cond.end_crit_edge:                    ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end7.i:                                        ; preds = %if.end.i14
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %state.i.i15 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %state.i.i15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i.i15, align 4
  %and1.i.i.i16 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i16)
  %tobool.i.not.i17 = icmp eq i32 %and1.i.i.i16, 0
  br i1 %tobool.i.not.i17, label %if.end7.i.if.end23.critedge.i_crit_edge, label %land.rhs.i19

if.end7.i.if.end23.critedge.i_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.critedge.i

land.rhs.i19:                                     ; preds = %if.end7.i
  %xdp_prog.i.i18 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 101
  %38 = ptrtoint ptr %xdp_prog.i.i18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xdp_prog.i.i18, align 8
  %tobool.i49.not.i = icmp eq ptr %39, null
  br i1 %tobool.i49.not.i, label %land.rhs.i19.if.end23.critedge.i_crit_edge, label %if.then14.i

land.rhs.i19.if.end23.critedge.i_crit_edge:       ; preds = %land.rhs.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.critedge.i

if.then14.i:                                      ; preds = %land.rhs.i19
  call void @__sanitizer_cov_trace_pc() #6
  %rxtx_napi.i20 = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 26, i32 %idxprom.i5, i32 4
  tail call void @napi_disable(ptr noundef %rxtx_napi.i20) #4
  tail call void @stmmac_disable_rx_queue(ptr noundef %priv, i32 noundef %idxprom.i5) #4
  tail call void @stmmac_disable_tx_queue(ptr noundef %priv, i32 noundef %idxprom.i5) #4
  tail call void @synchronize_rcu() #4
  tail call void @xp_dma_unmap(ptr noundef nonnull %call.i, i32 noundef 34) #4
  %af_xdp_zc_qps.c.i21 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 100
  %40 = ptrtoint ptr %af_xdp_zc_qps.c.i21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %af_xdp_zc_qps.c.i21, align 4
  tail call void @_clear_bit(i32 noundef %idxprom.i5, ptr noundef %41) #4
  tail call void @stmmac_enable_rx_queue(ptr noundef %priv, i32 noundef %idxprom.i5) #4
  tail call void @stmmac_enable_tx_queue(ptr noundef %priv, i32 noundef %idxprom.i5) #4
  tail call void @napi_enable(ptr noundef %arrayidx.i6) #4
  %tx_napi.i22 = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 26, i32 %idxprom.i5, i32 2
  tail call void @napi_enable(ptr noundef %tx_napi.i22) #4
  br label %cond.end

if.end23.critedge.i:                              ; preds = %land.rhs.i19.if.end23.critedge.i_crit_edge, %if.end7.i.if.end23.critedge.i_crit_edge
  tail call void @xp_dma_unmap(ptr noundef nonnull %call.i, i32 noundef 34) #4
  %af_xdp_zc_qps.c48.i = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 100
  %42 = ptrtoint ptr %af_xdp_zc_qps.c48.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %af_xdp_zc_qps.c48.i, align 4
  tail call void @_clear_bit(i32 noundef %idxprom.i5, ptr noundef %43) #4
  br label %cond.end

cond.end:                                         ; preds = %if.end23.critedge.i, %if.then14.i, %if.end.i14.cond.end_crit_edge, %lor.lhs.false.i12.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %if.end34.i, %if.then19.i.cond.end_crit_edge, %if.then11.i, %if.end.i.cond.end_crit_edge, %lor.lhs.false.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %cond = phi i32 [ %call.i.i, %if.then11.i ], [ 0, %if.end34.i ], [ -22, %lor.lhs.false.i.cond.end_crit_edge ], [ -22, %cond.true.cond.end_crit_edge ], [ -95, %if.end.i.cond.end_crit_edge ], [ %call30.i, %if.then19.i.cond.end_crit_edge ], [ -22, %lor.lhs.false.i12.cond.end_crit_edge ], [ -22, %cond.false.cond.end_crit_edge ], [ -22, %if.end.i14.cond.end_crit_edge ], [ 0, %if.end23.critedge.i ], [ 0, %if.then14.i ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_xdp_set_prog(ptr noundef %priv, ptr noundef %prog, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %tobool = icmp ne ptr %prog, null
  br i1 %tobool, label %land.lhs.true, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %5)
  %cmp = icmp ugt i32 %5, 1500
  br i1 %cmp, label %do.body, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

do.body:                                          ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @stmmac_xdp_set_prog.__msg) #4
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @stmmac_xdp_set_prog.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %xdp_prog = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 101
  %7 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xdp_prog, align 8
  %tobool5 = icmp eq ptr %8, null
  %cmp12.not = xor i1 %tobool, %tobool5
  %brmerge = select i1 %tobool.i.not, i1 true, i1 %cmp12.not
  br i1 %brmerge, label %if.end4.if.end18_crit_edge, label %if.then17

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then17:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @stmmac_xdp_release(ptr noundef %1) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end4.if.end18_crit_edge
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xdp_prog, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !13
  %9 = ptrtoint ptr %prog to i32
  tail call void @llvm.prefetch.p0(ptr %xdp_prog, i32 1, i32 3, i32 1) #4
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %9, ptr %xdp_prog) #4, !srcloc !14
  %asmresult.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool38.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool38.not, label %if.end18.if.end40_crit_edge, label %if.then39

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then39:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %11 = inttoptr i32 %asmresult.i to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %11) #4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end18.if.end40_crit_edge
  %sph_cap = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 7
  %12 = ptrtoint ptr %sph_cap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sph_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool41.not = icmp eq i32 %13, 0
  br i1 %tobool41.not, label %if.end40.land.end_crit_edge, label %land.rhs

if.end40.land.end_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xdp_prog, align 8
  %tobool.i71.not = icmp eq ptr %15, null
  %phi.cast = zext i1 %tobool.i71.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end40.land.end_crit_edge
  %16 = phi i32 [ 0, %if.end40.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %sph = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 6
  %17 = ptrtoint ptr %sph to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sph, align 8
  br i1 %brmerge, label %land.end.cleanup_crit_edge, label %if.then48

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then48:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = tail call i32 @stmmac_xdp_open(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %land.end.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %if.then48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_xdp_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_xdp_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_disable_rx_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_disable_tx_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_enable_rx_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_enable_tx_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_xsk_wakeup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_dma_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xsk_get_pool_from_qid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_unmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @stmmac_xdp_set_prog.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_xdp.c", i32 116, i32 3}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_xdp.c", i32 30, i32 25}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2158494200}
!14 = !{i64 1200680, i64 1200697, i64 1200721, i64 1200747, i64 1200765}
!15 = !{i64 2158494546}
