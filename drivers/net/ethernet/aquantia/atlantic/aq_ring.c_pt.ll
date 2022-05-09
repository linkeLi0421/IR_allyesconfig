; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_ring.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.4 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.83 }
%struct.atomic_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.aq_ring_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union.aq_ring_stats_s, i32, i32 }
%union.aq_ring_stats_s = type { %struct.aq_ring_stats_rx_s }
%struct.aq_ring_stats_rx_s = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.aq_nic_s = type { %struct.atomic_t, i32, [8 x ptr], [32 x ptr], ptr, ptr, i32, i32, i32, i8, ptr, ptr, %struct.aq_nic_cfg_s, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.aq_hw_link_status_s, %struct.anon.128, [128 x i32], ptr, i32, i32, %struct.mutex, ptr, ptr, %struct.aq_hw_rx_fltrs_s }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.anon.128 = type { i32, [32 x [6 x i8]] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.aq_hw_rx_fltrs_s = type { %struct.hlist_head, i16, %struct.aq_hw_rx_fl2, %struct.aq_hw_rx_fl3l4, i8 }
%struct.hlist_head = type { ptr }
%struct.aq_hw_rx_fl2 = type { [16 x %struct.aq_rx_filter_vlan] }
%struct.aq_rx_filter_vlan = type { i8, i8, i16, i8 }
%struct.aq_hw_rx_fl3l4 = type { i8, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.110, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.110 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.aq_ring_buff_s = type <{ %union.anon, %union.anon.103 }>
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i16, i8, i8, %struct.aq_rxpage, i16 }
%struct.aq_rxpage = type { ptr, i32, i32, i32 }
%union.anon.103 = type { i64 }
%struct.anon.104 = type { i32, i16, i16 }
%struct.anon.101 = type { i32, ptr }
%struct.sk_buff = type { %union.anon.34, %union.anon.37, %union.anon.38, [48 x i8], %union.anon.39, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.41, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, ptr, %union.anon.36 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.43, i32, i32, i32, i16, i16, %union.anon.45, i32, %union.anon.46, %union.anon.47, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.43 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i16 }
%struct.page = type { i32, %union.anon.0, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@aq_ring_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&self->stats.rx.syncp)->seq\00", [34 x i8] zeroinitializer }, align 32
@aq_ring_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&self->stats.tx.syncp)->seq\00", [34 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 228, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private constant [52 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_ring.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 230, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 271, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @aq_ring_init.__key, ptr @.str, ptr @aq_ring_init.__key.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ring_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ring_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aq_ring_tx_alloc(ptr noundef %self, ptr noundef %aq_nic, i32 noundef %idx, ptr nocapture noundef readonly %aq_nic_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic1 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %aq_nic, ptr %aq_nic1, align 8
  %idx2 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 3
  %1 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %idx, ptr %idx2, align 4
  %txds = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %aq_nic_cfg, i32 0, i32 3
  %2 = ptrtoint ptr %txds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txds, align 4
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %size, align 4
  %5 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_nic_cfg, align 8
  %txd_size = getelementptr inbounds %struct.aq_hw_caps_s, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %txd_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txd_size, align 1
  %conv = zext i8 %8 to i32
  %dx_size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 8
  %9 = ptrtoint ptr %dx_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %dx_size, align 8
  %call = tail call fastcc ptr @aq_ring_alloc(ptr noundef %self, ptr noundef %aq_nic)
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aq_ring_alloc(ptr noundef %self, ptr nocapture noundef readonly %aq_nic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 36) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !21

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %self, align 8
  br label %if.then9

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #12
  %6 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %self, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.if.then9_crit_edge, label %if.end

if.end7.i.i.if.then9_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end:                                           ; preds = %if.end7.i.i
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %7 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %dx_size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 8
  %13 = ptrtoint ptr %dx_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dx_size, align 8
  %mul = mul i32 %14, %12
  %dx_ring_pa = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef %mul, ptr noundef %dx_ring_pa, i32 noundef 3264, i32 noundef 0) #9
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 1
  %15 = ptrtoint ptr %dx_ring to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %dx_ring, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.if.then9_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end7.i.i.if.then9_crit_edge, %kcalloc.exit.thread
  %tobool.not.i = icmp eq ptr %self, null
  br i1 %tobool.not.i, label %if.then9.if.end10_crit_edge, label %if.end.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.i:                                         ; preds = %if.then9
  %16 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %self, align 8
  tail call void @kfree(ptr noundef %17) #9
  %dx_ring.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 1
  %18 = ptrtoint ptr %dx_ring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dx_ring.i, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %if.end.i.if.end10_crit_edge, label %if.then2.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %aq_nic.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %20 = ptrtoint ptr %aq_nic.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aq_nic.i, align 8
  %ndev.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 133, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %dx_size.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 8
  %28 = ptrtoint ptr %dx_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dx_size.i, align 8
  %mul.i = mul i32 %29, %27
  %dx_ring_pa.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 11
  %30 = ptrtoint ptr %dx_ring_pa.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dx_ring_pa.i, align 8
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %mul.i, ptr noundef nonnull %19, i32 noundef %31, i32 noundef 0) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then2.i, %if.end.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %self.addr.0 = phi ptr [ %self, %if.end.if.end10_crit_edge ], [ null, %if.then9.if.end10_crit_edge ], [ null, %if.end.i.if.end10_crit_edge ], [ null, %if.then2.i ]
  ret ptr %self.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ring_free(ptr noundef readonly %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %self, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self, align 8
  tail call void @kfree(ptr noundef %1) #9
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 1
  %2 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dx_ring, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %aq_nic = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %4 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_nic, align 8
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %dx_size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 8
  %12 = ptrtoint ptr %dx_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dx_size, align 8
  %mul = mul i32 %13, %11
  %dx_ring_pa = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 11
  %14 = ptrtoint ptr %dx_ring_pa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dx_ring_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %mul, ptr noundef nonnull %3, i32 noundef %15, i32 noundef 0) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aq_ring_rx_alloc(ptr noundef %self, ptr noundef %aq_nic, i32 noundef %idx, ptr nocapture noundef readonly %aq_nic_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic1 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %aq_nic, ptr %aq_nic1, align 8
  %idx2 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 3
  %1 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %idx, ptr %idx2, align 4
  %rxds = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %aq_nic_cfg, i32 0, i32 2
  %2 = ptrtoint ptr %rxds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxds, align 8
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %size, align 4
  %5 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_nic_cfg, align 8
  %rxd_size = getelementptr inbounds %struct.aq_hw_caps_s, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %rxd_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rxd_size, align 1
  %conv = zext i8 %8 to i32
  %dx_size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 8
  %9 = ptrtoint ptr %dx_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %dx_size, align 8
  %page_order = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 9
  %10 = ptrtoint ptr %page_order to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %page_order, align 4
  %rxpageorder = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %aq_nic_cfg, i32 0, i32 10
  %11 = ptrtoint ptr %rxpageorder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rxpageorder, align 4
  store i32 %12, ptr %page_order, align 4
  %call7 = tail call fastcc ptr @aq_ring_alloc(ptr noundef %self, ptr noundef %aq_nic)
  ret ptr %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aq_ring_hwts_rx_alloc(ptr noundef %self, ptr noundef %aq_nic, i32 noundef %idx, i32 noundef %size, i32 noundef %dx_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 5
  %0 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %mul = mul i32 %dx_size, %size
  %add = add i32 %mul, 2048
  %4 = call ptr @memset(ptr %self, i32 0, i32 168)
  %aq_nic1 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %5 = ptrtoint ptr %aq_nic1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %aq_nic, ptr %aq_nic1, align 8
  %idx2 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 3
  %6 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %idx, ptr %idx2, align 4
  %size3 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  %7 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %size3, align 4
  %dx_size4 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 8
  %8 = ptrtoint ptr %dx_size4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dx_size, ptr %dx_size4, align 8
  %dx_ring_pa = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %add, ptr noundef %dx_ring_pa, i32 noundef 3264, i32 noundef 0) #9
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 1
  %9 = ptrtoint ptr %dx_ring to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %dx_ring, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %self, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %self, align 8
  tail call void @kfree(ptr noundef %11) #9
  %12 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dx_ring, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %aq_nic1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_nic1, align 8
  %ndev.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 133, i32 1
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i, align 8
  %20 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size3, align 4
  %22 = ptrtoint ptr %dx_size4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dx_size4, align 8
  %mul.i = mul i32 %23, %21
  %24 = ptrtoint ptr %dx_ring_pa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dx_ring_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef %mul.i, ptr noundef nonnull %13, i32 noundef %25, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %self, %entry.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ], [ null, %if.then2.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ring_init(ptr noundef %self, i32 noundef %ring_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 4
  %0 = ptrtoint ptr %hw_head to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %hw_head, align 8
  %sw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 5
  %1 = ptrtoint ptr %sw_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sw_head, align 4
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 6
  %2 = ptrtoint ptr %sw_tail to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sw_tail, align 8
  %ring_type1 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 12
  %3 = ptrtoint ptr %ring_type1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ring_type, ptr %ring_type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ring_type)
  %cmp = icmp eq i32 %ring_type, 1
  %dep_map.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  br i1 %cmp, label %do.body, label %do.body3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str, ptr noundef nonnull @aq_ring_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @aq_ring_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %if.end

if.end:                                           ; preds = %do.body3, %do.body
  %4 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ring_update_queue_state(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_tail.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_tail.i, align 8
  %sw_head.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %sw_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp ugt i32 %3, %1
  br i1 %cmp.not.i, label %aq_ring_avail_dx.exit, label %aq_ring_avail_dx.exit.thread

aq_ring_avail_dx.exit:                            ; preds = %entry
  %4 = xor i32 %1, -1
  %sub7.i = add i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %sub7.i)
  %cmp = icmp ult i32 %sub7.i, 33
  br i1 %cmp, label %aq_ring_avail_dx.exit.if.then_crit_edge, label %aq_ring_avail_dx.exit.aq_ring_avail_dx.exit19_crit_edge

aq_ring_avail_dx.exit.aq_ring_avail_dx.exit19_crit_edge: ; preds = %aq_ring_avail_dx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %aq_ring_avail_dx.exit19

aq_ring_avail_dx.exit.if.then_crit_edge:          ; preds = %aq_ring_avail_dx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

aq_ring_avail_dx.exit.thread:                     ; preds = %entry
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %7 = xor i32 %1, -1
  %sub2.i = add i32 %3, %7
  %add.i = add i32 %sub2.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add.i)
  %cmp21 = icmp ult i32 %add.i, 33
  br i1 %cmp21, label %aq_ring_avail_dx.exit.thread.if.then_crit_edge, label %cond.true.i15

aq_ring_avail_dx.exit.thread.if.then_crit_edge:   ; preds = %aq_ring_avail_dx.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %aq_ring_avail_dx.exit.thread.if.then_crit_edge, %aq_ring_avail_dx.exit.if.then_crit_edge
  %aq_nic.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 2
  %8 = ptrtoint ptr %aq_nic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_nic.i, align 8
  %call.i = tail call ptr @aq_nic_get_ndev(ptr noundef %9) #9
  %idx.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %10 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx.i, align 4
  %12 = ptrtoint ptr %aq_nic.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_nic.i, align 8
  %tc_mode.i = getelementptr inbounds %struct.aq_nic_s, ptr %13, i32 0, i32 12, i32 29
  %14 = ptrtoint ptr %tc_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  %16 = select i1 %cmp.i, i32 3, i32 2
  %div42.i = lshr i32 %11, %16
  %aq_vecs.i = getelementptr inbounds %struct.aq_nic_s, ptr %13, i32 0, i32 6
  %17 = ptrtoint ptr %aq_vecs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aq_vecs.i, align 8
  %mul.i = mul i32 %div42.i, %18
  %19 = select i1 %cmp.i, i32 7, i32 3
  %rem.i = and i32 %19, %11
  %add.i8 = add i32 %mul.i, %rem.i
  %conv.i.i = and i32 %add.i8, 65535
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %21, i32 %conv.i.i, i32 13
  %22 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #9
  br label %if.end4

cond.true.i15:                                    ; preds = %aq_ring_avail_dx.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %add.i14 = add i32 %sub2.i, %25
  br label %aq_ring_avail_dx.exit19

aq_ring_avail_dx.exit19:                          ; preds = %cond.true.i15, %aq_ring_avail_dx.exit.aq_ring_avail_dx.exit19_crit_edge
  %cond.i18 = phi i32 [ %add.i14, %cond.true.i15 ], [ %sub7.i, %aq_ring_avail_dx.exit.aq_ring_avail_dx.exit19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %cond.i18)
  %cmp2 = icmp ugt i32 %cond.i18, 64
  br i1 %cmp2, label %if.then3, label %aq_ring_avail_dx.exit19.if.end4_crit_edge

aq_ring_avail_dx.exit19.if.end4_crit_edge:        ; preds = %aq_ring_avail_dx.exit19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %aq_ring_avail_dx.exit19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @aq_ring_queue_wake(ptr noundef %ring)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %aq_ring_avail_dx.exit19.if.end4_crit_edge, %if.then.i, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ring_queue_stop(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic, align 8
  %call = tail call ptr @aq_nic_get_ndev(ptr noundef %1) #9
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %4 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_nic, align 8
  %tc_mode = getelementptr inbounds %struct.aq_nic_s, ptr %5, i32 0, i32 12, i32 29
  %6 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %8 = select i1 %cmp, i32 3, i32 2
  %div42 = lshr i32 %3, %8
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aq_vecs, align 8
  %mul = mul i32 %div42, %10
  %11 = select i1 %cmp, i32 7, i32 3
  %rem = and i32 %11, %3
  %add = add i32 %mul, %rem
  %conv.i = and i32 %add, 65535
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %13, i32 %conv.i, i32 13
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ring_queue_wake(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic, align 8
  %call = tail call ptr @aq_nic_get_ndev(ptr noundef %1) #9
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %4 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_nic, align 8
  %tc_mode = getelementptr inbounds %struct.aq_nic_s, ptr %5, i32 0, i32 12, i32 29
  %6 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %8 = select i1 %cmp, i32 3, i32 2
  %div48 = lshr i32 %3, %8
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aq_vecs, align 8
  %mul = mul i32 %div48, %10
  %11 = select i1 %cmp, i32 7, i32 3
  %rem = and i32 %11, %3
  %add = add i32 %mul, %rem
  %conv.i = and i32 %add, 65535
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %13, i32 %conv.i, i32 13
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %13, i32 %conv.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #9
  %stats = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 10
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats)
  %queue_restarts = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 10, i32 0, i32 4
  %16 = ptrtoint ptr %queue_restarts to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %queue_restarts, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %queue_restarts, align 8
  %dep_map.i.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %18 = tail call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %stats, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_nic_get_ndev(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !11) #9
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %5 = tail call i32 @llvm.read_register.i32(metadata !11) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %14 = tail call i32 @llvm.read_register.i32(metadata !11) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !11) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !11) #9
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %33 = tail call i32 @llvm.read_register.i32(metadata !11) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !27

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !28
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #9
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @aq_ring_tx_clean(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic, align 8
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %sw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 5
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 4
  %stats = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10
  %packets = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 3
  %dep_map.i.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %budget.0103 = phi i32 [ 256, %entry ], [ %dec, %for.inc.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sw_head, align 4
  %8 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %self, align 8
  %arrayidx = getelementptr %struct.aq_ring_buff_s, ptr %11, i32 %7
  %12 = getelementptr %struct.aq_ring_buff_s, ptr %11, i32 %7, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %bf.load = load i32, ptr %12, align 1
  %14 = and i32 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br i1 %tobool2.not, label %for.body.if.end34_crit_edge, label %if.then, !prof !21

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then:                                          ; preds = %for.body
  %15 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.then.if.end34.sink.split_crit_edge, label %if.then15, !prof !27

if.then.if.end34.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.then15:                                        ; preds = %if.then
  %16 = and i32 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.then15.if.end34.sink.split_crit_edge

if.then15.if.end34.sink.split_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

land.lhs.true:                                    ; preds = %if.then15
  %eop_index = getelementptr inbounds %struct.anon.104, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %eop_index to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %eop_index, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp20.not = icmp eq i16 %18, -1
  br i1 %cmp20.not, label %land.lhs.true.if.end34.sink.split_crit_edge, label %land.lhs.true22

land.lhs.true.if.end34.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

land.lhs.true22:                                  ; preds = %land.lhs.true
  %conv = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp ult i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp1.i = icmp ult i32 %7, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp2.i = icmp ugt i32 %9, %conv
  br i1 %cmp.i, label %cond.true.i, label %aq_ring_dx_in_range.exit

cond.true.i:                                      ; preds = %land.lhs.true22
  %narrow13.i = and i1 %cmp1.i, %cmp2.i
  br i1 %narrow13.i, label %cond.true.i.if.end34.sink.split_crit_edge, label %cond.true.i.for.end_crit_edge

cond.true.i.for.end_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.true.i.if.end34.sink.split_crit_edge:        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

aq_ring_dx_in_range.exit:                         ; preds = %land.lhs.true22
  %narrow.i = or i1 %cmp1.i, %cmp2.i
  br i1 %narrow.i, label %aq_ring_dx_in_range.exit.if.end34.sink.split_crit_edge, label %aq_ring_dx_in_range.exit.for.end_crit_edge

aq_ring_dx_in_range.exit.for.end_crit_edge:       ; preds = %aq_ring_dx_in_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

aq_ring_dx_in_range.exit.if.end34.sink.split_crit_edge: ; preds = %aq_ring_dx_in_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %aq_ring_dx_in_range.exit.if.end34.sink.split_crit_edge, %cond.true.i.if.end34.sink.split_crit_edge, %land.lhs.true.if.end34.sink.split_crit_edge, %if.then15.if.end34.sink.split_crit_edge, %if.then.if.end34.sink.split_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx, align 1
  %bf.lshr30 = lshr i32 %bf.load, 16
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %20, i32 noundef %bf.lshr30, i32 noundef 1, i32 noundef 0) #9
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %for.body.if.end34_crit_edge
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load35 = load i32, ptr %12, align 1
  %22 = and i32 %bf.load35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool38.not = icmp eq i32 %22, 0
  br i1 %tobool38.not, label %if.end34.for.inc_crit_edge, label %land.rhs39

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.rhs39:                                       ; preds = %if.end34
  %skb = getelementptr inbounds %struct.anon.101, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load ptr, ptr %skb, align 1
  %tobool40.not = icmp eq ptr %24, null
  br i1 %tobool40.not, label %land.rhs39.for.inc_crit_edge, label %if.then48, !prof !27

land.rhs39.for.inc_crit_edge:                     ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then48:                                        ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats)
  %25 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %packets, align 8
  %inc = add i64 %26, 1
  store i64 %inc, ptr %packets, align 8
  %27 = ptrtoint ptr %skb to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load ptr, ptr %skb, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %conv51 = zext i32 %30 to i64
  %31 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes, align 8
  %add = add i64 %32, %conv51
  store i64 %add, ptr %bytes, align 8
  %33 = tail call ptr @llvm.returnaddress(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  %35 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stats, align 4
  %inc.i.i.i = add i32 %36, 1
  store i32 %inc.i.i.i, ptr %stats, align 4
  %37 = ptrtoint ptr %skb to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load ptr, ptr %skb, align 1
  tail call void @__dev_kfree_skb_any(ptr noundef %38, i32 noundef 1) #9
  %39 = ptrtoint ptr %skb to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store ptr null, ptr %skb, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %land.rhs39.for.inc_crit_edge, %if.end34.for.inc_crit_edge
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %arrayidx, align 1
  %eop_index58 = getelementptr inbounds %struct.anon.104, ptr %12, i32 0, i32 1
  %41 = ptrtoint ptr %eop_index58 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 -1, ptr %eop_index58, align 1
  %42 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sw_head, align 4
  %inc.i = add i32 %43, 1
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %45)
  %cmp.not.i = icmp ult i32 %inc.i, %45
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %46 = ptrtoint ptr %sw_head to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select.i, ptr %sw_head, align 4
  %dec = add nsw i32 %budget.0103, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %aq_ring_dx_in_range.exit.for.end_crit_edge, %cond.true.i.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %tobool.lcssa = phi i1 [ true, %cond.true.i.for.end_crit_edge ], [ true, %aq_ring_dx_in_range.exit.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ], [ true, %land.rhs.for.end_crit_edge ]
  ret i1 %tobool.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ring_rx_clean(ptr noundef %self, ptr noundef %napi, ptr nocapture noundef %work_done, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic, align 8
  %call = tail call ptr @aq_nic_get_ndev(ptr noundef %1) #9
  %sw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 5
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 4
  %2 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_head, align 4
  %4 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not497 = icmp eq i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not498 = icmp eq i32 %budget, 0
  %or.cond499 = or i1 %cmp.not497, %tobool.not498
  br i1 %or.cond499, label %entry.cleanup320_crit_edge, label %for.body.lr.ph

entry.cleanup320_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup320

for.body.lr.ph:                                   ; preds = %entry
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  %stats = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10
  %errors = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 1
  %dep_map.i.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 3
  %packets = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %3, %for.body.lr.ph ], [ %225, %for.inc.for.body_crit_edge ]
  %budget.addr.0500 = phi i32 [ %budget, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self, align 8
  %arrayidx = getelementptr %struct.aq_ring_buff_s, ptr %8, i32 %6
  %9 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aq_nic, align 8
  %call3 = tail call zeroext i1 @aq_ptp_ring(ptr noundef %10, ptr noundef %self) #9
  %11 = getelementptr %struct.aq_ring_buff_s, ptr %8, i32 %6, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load = load i32, ptr %11, align 1
  %13 = and i32 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = and i32 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.end.do.body_crit_edge, label %if.end.if.end97_crit_edge

if.end.if.end97_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end27.do.body_crit_edge, %if.end.do.body_crit_edge
  %buff_.0 = phi ptr [ %arrayidx17, %if.end27.do.body_crit_edge ], [ %arrayidx, %if.end.do.body_crit_edge ]
  %next = getelementptr inbounds %struct.anon, ptr %buff_.0, i32 0, i32 1
  %15 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %next, align 1
  %conv = zext i16 %16 to i32
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp10.not = icmp ugt i32 %18, %conv
  br i1 %cmp10.not, label %if.end13, label %do.body.cleanup320_crit_edge

do.body.cleanup320_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup320

if.end13:                                         ; preds = %do.body
  %19 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %self, align 8
  %21 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sw_head, align 4
  %23 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i = icmp ult i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv)
  %cmp1.i = icmp ult i32 %22, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp2.i = icmp ugt i32 %24, %conv
  br i1 %cmp.i, label %cond.true.i, label %aq_ring_dx_in_range.exit

cond.true.i:                                      ; preds = %if.end13
  %narrow13.i = and i1 %cmp1.i, %cmp2.i
  br i1 %narrow13.i, label %cond.true.i.if.end27_crit_edge, label %cond.true.i.cleanup320_crit_edge, !prof !27

cond.true.i.cleanup320_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup320

cond.true.i.if.end27_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

aq_ring_dx_in_range.exit:                         ; preds = %if.end13
  %narrow.i = or i1 %cmp1.i, %cmp2.i
  br i1 %narrow.i, label %aq_ring_dx_in_range.exit.if.end27_crit_edge, label %aq_ring_dx_in_range.exit.cleanup320_crit_edge, !prof !27

aq_ring_dx_in_range.exit.cleanup320_crit_edge:    ; preds = %aq_ring_dx_in_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup320

aq_ring_dx_in_range.exit.if.end27_crit_edge:      ; preds = %aq_ring_dx_in_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %aq_ring_dx_in_range.exit.if.end27_crit_edge, %cond.true.i.if.end27_crit_edge
  %arrayidx17 = getelementptr %struct.aq_ring_buff_s, ptr %20, i32 %conv
  %25 = getelementptr %struct.aq_ring_buff_s, ptr %20, i32 %conv, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load28 = load i32, ptr %25, align 1
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load31 = load i32, ptr %11, align 1
  %28 = and i32 %bf.load28, 32
  %bf.set = or i32 %28, %bf.load31
  store i32 %bf.set, ptr %11, align 1
  %bf.load36 = load i32, ptr %25, align 1
  %bf.lshr40445 = or i32 %bf.load36, %bf.load31
  %or42 = and i32 %bf.lshr40445, 4096
  %bf.clear46 = and i32 %bf.set, -4097
  %bf.set47 = or i32 %or42, %bf.clear46
  store i32 %bf.set47, ptr %11, align 1
  %bf.load48 = load i32, ptr %25, align 1
  %29 = and i32 %bf.load48, 1024
  %tobool51.not = icmp eq i32 %29, 0
  br i1 %tobool51.not, label %if.end27.do.body_crit_edge, label %if.end56

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end56:                                         ; preds = %if.end27
  %30 = and i32 %bf.set, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool60.not = icmp eq i32 %30, 0
  br i1 %tobool60.not, label %lor.lhs.false, label %if.end56.do.body70.preheader_crit_edge

if.end56.do.body70.preheader_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70.preheader

lor.lhs.false:                                    ; preds = %if.end56
  %31 = and i32 %bf.load31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool64.not = icmp eq i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or42)
  %tobool68.not = icmp eq i32 %or42, 0
  %or.cond452 = or i1 %tobool64.not, %tobool68.not
  br i1 %or.cond452, label %lor.lhs.false.if.end97_crit_edge, label %lor.lhs.false.do.body70.preheader_crit_edge

lor.lhs.false.do.body70.preheader_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70.preheader

lor.lhs.false.if.end97_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

do.body70.preheader:                              ; preds = %lor.lhs.false.do.body70.preheader_crit_edge, %if.end56.do.body70.preheader_crit_edge
  br label %do.body70

do.body70:                                        ; preds = %if.end77.do.body70_crit_edge, %do.body70.preheader
  %buff_.1 = phi ptr [ %arrayidx81, %if.end77.do.body70_crit_edge ], [ %arrayidx, %do.body70.preheader ]
  %next71 = getelementptr inbounds %struct.anon, ptr %buff_.1, i32 0, i32 1
  %32 = ptrtoint ptr %next71 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %next71, align 1
  %conv72 = zext i16 %33 to i32
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv72)
  %cmp74.not = icmp ugt i32 %35, %conv72
  br i1 %cmp74.not, label %if.end77, label %do.body70.cleanup320_crit_edge

do.body70.cleanup320_crit_edge:                   ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup320

if.end77:                                         ; preds = %do.body70
  %36 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %self, align 8
  %arrayidx81 = getelementptr %struct.aq_ring_buff_s, ptr %37, i32 %conv72
  %38 = getelementptr %struct.aq_ring_buff_s, ptr %37, i32 %conv72, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load82 = load i32, ptr %38, align 1
  %bf.set84 = or i32 %bf.load82, 64
  store i32 %bf.set84, ptr %38, align 1
  %40 = and i32 %bf.load82, 1024
  %tobool89.not = icmp eq i32 %40, 0
  br i1 %tobool89.not, label %if.end77.do.body70_crit_edge, label %do.end92

if.end77.do.body70_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

do.end92:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats)
  %41 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %errors, align 8
  %inc = add i64 %42, 1
  store i64 %inc, ptr %errors, align 8
  %43 = tail call ptr @llvm.returnaddress(i32 0) #9
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  %45 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stats, align 4
  %inc.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i, ptr %stats, align 4
  br label %for.inc

if.end97:                                         ; preds = %lor.lhs.false.if.end97_crit_edge, %if.end.if.end97_crit_edge
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %bf.load98 = load i32, ptr %11, align 1
  %48 = and i32 %bf.load98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool101.not = icmp eq i32 %48, 0
  br i1 %tobool101.not, label %if.end110, label %if.then102

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats)
  %49 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %errors, align 8
  %inc107 = add i64 %50, 1
  store i64 %inc107, ptr %errors, align 8
  %51 = tail call ptr @llvm.returnaddress(i32 0) #9
  %52 = ptrtoint ptr %51 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %52) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  %53 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stats, align 4
  %inc.i.i.i454 = add i32 %54, 1
  store i32 %inc.i.i.i454, ptr %stats, align 4
  br label %for.inc

if.end110:                                        ; preds = %if.end97
  %55 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aq_nic, align 8
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 133, i32 1
  %59 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i, align 8
  %rxdata = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4
  %daddr = getelementptr inbounds %struct.aq_rxpage, ptr %rxdata, i32 0, i32 1
  %61 = ptrtoint ptr %daddr to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %daddr, align 1
  %pg_off = getelementptr inbounds %struct.aq_rxpage, ptr %rxdata, i32 0, i32 3
  %63 = ptrtoint ptr %pg_off to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %pg_off, align 1
  %bf.lshr115 = lshr i32 %bf.load98, 16
  %add.i = add i32 %64, %62
  tail call void @dma_sync_single_for_cpu(ptr noundef %60, i32 noundef %add.i, i32 noundef %bf.lshr115, i32 noundef 2) #9
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef 256, i32 noundef 2592) #9
  %tobool117.not = icmp eq ptr %call.i, null
  br i1 %tobool117.not, label %if.then126, label %if.end133, !prof !21

if.then126:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats)
  %skb_alloc_fails = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 7
  %65 = ptrtoint ptr %skb_alloc_fails to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %skb_alloc_fails, align 8
  %inc130 = add i64 %66, 1
  store i64 %inc130, ptr %skb_alloc_fails, align 8
  %67 = tail call ptr @llvm.returnaddress(i32 0) #9
  %68 = ptrtoint ptr %67 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %68) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  %69 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stats, align 4
  %inc.i.i.i456 = add i32 %70, 1
  store i32 %inc.i.i.i456, ptr %stats, align 4
  br label %cleanup320

if.end133:                                        ; preds = %if.end110
  br i1 %call3, label %if.then135, label %if.end150thread-pre-split

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %aq_nic, align 8
  %73 = ptrtoint ptr %rxdata to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rxdata, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %75 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %76 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i457 = add i32 %sub.ptr.div.i, %76
  %shl.i = shl i32 %add.i457, 12
  %77 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i, i32 -2130706432, i32 8454144) #13, !srcloc !29
  %78 = inttoptr i32 %77 to ptr
  %79 = ptrtoint ptr %pg_off to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pg_off, align 4
  %add.ptr.i = getelementptr i8, ptr %78, i32 %80
  %81 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %bf.load139 = load i32, ptr %11, align 1
  %bf.lshr140 = lshr i32 %bf.load139, 16
  %call141 = tail call zeroext i16 @aq_ptp_extract_ts(ptr noundef %72, ptr noundef nonnull %call.i, ptr noundef %add.ptr.i, i32 noundef %bf.lshr140) #9
  %conv142 = zext i16 %call141 to i32
  %82 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %bf.load143 = load i32, ptr %11, align 1
  %sub450.neg = mul i32 %conv142, -65536
  %bf.lshr144451 = add i32 %sub450.neg, %bf.load143
  store i32 %bf.lshr144451, ptr %11, align 1
  br label %if.end150

if.end150thread-pre-split:                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %bf.load151.pr = load i32, ptr %11, align 1
  br label %if.end150

if.end150:                                        ; preds = %if.end150thread-pre-split, %if.then135
  %bf.load151 = phi i32 [ %bf.load151.pr, %if.end150thread-pre-split ], [ %bf.lshr144451, %if.then135 ]
  %bf.lshr152 = lshr i32 %bf.load151, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842751, i32 %bf.load151)
  %cmp155 = icmp ugt i32 %bf.load151, 16842751
  br i1 %cmp155, label %if.then157, label %if.end150.if.end162_crit_edge

if.end150.if.end162_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then157:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  %84 = getelementptr inbounds %struct.anon.35, ptr %call.i, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %87 = ptrtoint ptr %rxdata to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rxdata, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %89 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i458 = ptrtoint ptr %88 to i32
  %sub.ptr.rhs.cast.i459 = ptrtoint ptr %89 to i32
  %sub.ptr.sub.i460 = sub i32 %sub.ptr.lhs.cast.i458, %sub.ptr.rhs.cast.i459
  %sub.ptr.div.i461 = sdiv exact i32 %sub.ptr.sub.i460, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %90 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i462 = add i32 %sub.ptr.div.i461, %90
  %shl.i463 = shl i32 %add.i462, 12
  %91 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i463, i32 -2130706432, i32 8454144) #13, !srcloc !29
  %92 = inttoptr i32 %91 to ptr
  %93 = ptrtoint ptr %pg_off to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pg_off, align 4
  %add.ptr.i465 = getelementptr i8, ptr %92, i32 %94
  %call160 = tail call i32 @eth_get_headlen(ptr noundef %86, ptr noundef %add.ptr.i465, i32 noundef 256) #9
  br label %if.end162

if.end162:                                        ; preds = %if.then157, %if.end150.if.end162_crit_edge
  %hdr_len.0.in = phi i32 [ %call160, %if.then157 ], [ %bf.lshr152, %if.end150.if.end162_crit_edge ]
  %conv163 = and i32 %hdr_len.0.in, 65535
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %95 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.i.not.i = icmp eq i32 %96, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !27

do.body3.i:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #9, !srcloc !30
  unreachable

__skb_put.exit:                                   ; preds = %if.end162
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %97 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i466 = getelementptr i8, ptr %98, i32 %conv163
  store ptr %add.ptr.i466, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %99 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len9.i, align 4
  %add.i467 = add i32 %100, %conv163
  store i32 %add.i467, ptr %len9.i, align 4
  %101 = ptrtoint ptr %rxdata to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rxdata, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %103 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i468 = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast.i469 = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i470 = sub i32 %sub.ptr.lhs.cast.i468, %sub.ptr.rhs.cast.i469
  %sub.ptr.div.i471 = sdiv exact i32 %sub.ptr.sub.i470, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %104 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i472 = add i32 %sub.ptr.div.i471, %104
  %shl.i473 = shl i32 %add.i472, 12
  %105 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i473, i32 -2130706432, i32 8454144) #13, !srcloc !29
  %106 = inttoptr i32 %105 to ptr
  %107 = ptrtoint ptr %pg_off to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pg_off, align 4
  %add.ptr.i475 = getelementptr i8, ptr %106, i32 %108
  %add = add nuw nsw i32 %conv163, 3
  %and = and i32 %add, 131068
  %109 = call ptr @memcpy(ptr %98, ptr %add.ptr.i475, i32 %and)
  %110 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %bf.load168 = load i32, ptr %11, align 1
  %bf.lshr169 = lshr i32 %bf.load168, 16
  %sub171 = sub nsw i32 %bf.lshr169, %conv163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub171)
  %cmp172 = icmp sgt i32 %sub171, 0
  br i1 %cmp172, label %if.then174, label %__skb_put.exit.if.end186_crit_edge

__skb_put.exit.if.end186_crit_edge:               ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

if.then174:                                       ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %rxdata to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load ptr, ptr %rxdata, align 1
  %113 = ptrtoint ptr %pg_off to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %pg_off, align 1
  %add179 = add i32 %114, %conv163
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %112, i32 noundef %add179, i32 noundef %sub171, i32 noundef 2048) #9
  %115 = ptrtoint ptr %rxdata to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load ptr, ptr %rxdata, align 1
  %_refcount.i = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #9
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #9, !srcloc !31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@aq_ring_rx_clean, %if.then.i)) #9
          to label %if.end186 [label %if.then.i], !srcloc !32

if.then.i:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %116, i32 noundef 1) #9
  br label %if.end186

if.end186:                                        ; preds = %if.then.i, %if.then174, %__skb_put.exit.if.end186_crit_edge
  %118 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %bf.load187 = load i32, ptr %11, align 1
  %119 = and i32 %bf.load187, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool190.not = icmp eq i32 %119, 0
  br i1 %tobool190.not, label %if.end186.do.body192_crit_edge, label %if.end186.if.end273_crit_edge

if.end186.if.end273_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end273

if.end186.do.body192_crit_edge:                   ; preds = %if.end186
  br label %do.body192

do.body192:                                       ; preds = %page_ref_inc.exit482.do.body192_crit_edge, %if.end186.do.body192_crit_edge
  %buff_.2 = phi ptr [ %arrayidx196, %page_ref_inc.exit482.do.body192_crit_edge ], [ %arrayidx, %if.end186.do.body192_crit_edge ]
  %i.0 = phi i32 [ %inc205, %page_ref_inc.exit482.do.body192_crit_edge ], [ 1, %if.end186.do.body192_crit_edge ]
  %next193 = getelementptr inbounds %struct.anon, ptr %buff_.2, i32 0, i32 1
  %120 = ptrtoint ptr %next193 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %next193, align 1
  %conv194 = zext i16 %121 to i32
  %122 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %self, align 8
  %arrayidx196 = getelementptr %struct.aq_ring_buff_s, ptr %123, i32 %conv194
  %124 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %aq_nic, align 8
  %ndev.i476 = getelementptr inbounds %struct.aq_nic_s, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %ndev.i476 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ndev.i476, align 4
  %parent.i477 = getelementptr inbounds %struct.net_device, ptr %127, i32 0, i32 133, i32 1
  %128 = ptrtoint ptr %parent.i477 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %parent.i477, align 8
  %rxdata199 = getelementptr inbounds %struct.anon, ptr %arrayidx196, i32 0, i32 4
  %daddr200 = getelementptr inbounds %struct.aq_rxpage, ptr %rxdata199, i32 0, i32 1
  %130 = ptrtoint ptr %daddr200 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %daddr200, align 1
  %pg_off202 = getelementptr inbounds %struct.aq_rxpage, ptr %rxdata199, i32 0, i32 3
  %132 = ptrtoint ptr %pg_off202 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %pg_off202, align 1
  %134 = getelementptr %struct.aq_ring_buff_s, ptr %123, i32 %conv194, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %bf.load203 = load i32, ptr %134, align 1
  %bf.lshr204 = lshr i32 %bf.load203, 16
  %add.i478 = add i32 %133, %131
  tail call void @dma_sync_single_for_cpu(ptr noundef %129, i32 noundef %add.i478, i32 noundef %bf.lshr204, i32 noundef 2) #9
  %inc205 = add i32 %i.0, 1
  %136 = ptrtoint ptr %rxdata199 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load ptr, ptr %rxdata199, align 1
  %138 = ptrtoint ptr %pg_off202 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %pg_off202, align 1
  %140 = ptrtoint ptr %134 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %bf.load210 = load i32, ptr %134, align 1
  %bf.lshr211 = lshr i32 %bf.load210, 16
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef %i.0, ptr noundef %137, i32 noundef %139, i32 noundef %bf.lshr211, i32 noundef 2048) #9
  %141 = ptrtoint ptr %rxdata199 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load ptr, ptr %rxdata199, align 1
  %_refcount.i479 = getelementptr inbounds %struct.page, ptr %142, i32 0, i32 3
  %call.i.i.i480 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i479, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i479, i32 1, i32 3, i32 1) #9
  %143 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i479, ptr %_refcount.i479, i32 1, ptr elementtype(i32) %_refcount.i479) #9, !srcloc !31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@aq_ring_rx_clean, %if.then.i481)) #9
          to label %page_ref_inc.exit482 [label %if.then.i481], !srcloc !32

if.then.i481:                                     ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %142, i32 noundef 1) #9
  br label %page_ref_inc.exit482

page_ref_inc.exit482:                             ; preds = %if.then.i481, %do.body192
  %144 = ptrtoint ptr %134 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %bf.load214 = load i32, ptr %134, align 1
  %bf.set216 = or i32 %bf.load214, 64
  store i32 %bf.set216, ptr %134, align 1
  %145 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %bf.load220 = load i32, ptr %11, align 1
  %and223446 = or i32 %bf.load214, -32769
  %bf.set228 = and i32 %bf.load220, %and223446
  store i32 %bf.set228, ptr %11, align 1
  %bf.load229 = load i32, ptr %134, align 1
  %bf.clear231 = and i32 %bf.load220, 16384
  %and235 = and i32 %bf.clear231, %bf.load229
  %bf.clear239 = and i32 %bf.set228, -16385
  %bf.set240 = or i32 %and235, %bf.clear239
  store i32 %bf.set240, ptr %11, align 1
  %bf.load241 = load i32, ptr %134, align 1
  %bf.clear243 = and i32 %bf.load220, 8192
  %and247 = and i32 %bf.clear243, %bf.load241
  %bf.clear251 = and i32 %bf.set240, -8193
  %bf.set252 = or i32 %bf.clear251, %and247
  store i32 %bf.set252, ptr %11, align 1
  %bf.load253 = load i32, ptr %134, align 1
  %bf.lshr257448 = or i32 %bf.load253, %bf.load220
  %or259 = and i32 %bf.lshr257448, 4096
  %bf.clear263 = and i32 %bf.set252, -4097
  %bf.set264 = or i32 %bf.clear263, %or259
  store i32 %bf.set264, ptr %11, align 1
  %bf.load266 = load i32, ptr %134, align 1
  %146 = and i32 %bf.load266, 1024
  %tobool269.not = icmp eq i32 %146, 0
  br i1 %tobool269.not, label %page_ref_inc.exit482.do.body192_crit_edge, label %page_ref_inc.exit482.if.end273_crit_edge

page_ref_inc.exit482.if.end273_crit_edge:         ; preds = %page_ref_inc.exit482
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end273

page_ref_inc.exit482.do.body192_crit_edge:        ; preds = %page_ref_inc.exit482
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body192

if.end273:                                        ; preds = %page_ref_inc.exit482.if.end273_crit_edge, %if.end186.if.end273_crit_edge
  %147 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %bf.load274 = load i32, ptr %11, align 1
  %148 = and i32 %bf.load274, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool277.not = icmp eq i32 %148, 0
  br i1 %tobool277.not, label %if.end273.if.end279_crit_edge, label %if.then278

if.end273.if.end279_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end279

if.then278:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_rx_tag = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 5
  %149 = ptrtoint ptr %vlan_rx_tag to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %vlan_rx_tag, align 1
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 9
  %151 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 10
  %152 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %150, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %153 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end279

if.end279:                                        ; preds = %if.then278, %if.end273.if.end279_crit_edge
  %call280 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %call) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %154 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %call280, ptr %protocol, align 8
  %155 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %aq_nic, align 8
  %ndev.i483 = getelementptr inbounds %struct.aq_nic_s, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %ndev.i483 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ndev.i483, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 23
  %159 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %features.i, align 16
  %and.i = and i64 %160, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end279.aq_rx_checksum.exit_crit_edge, label %if.end.i

if.end279.aq_rx_checksum.exit_crit_edge:          ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #11
  br label %aq_rx_checksum.exit

if.end.i:                                         ; preds = %if.end279
  %161 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %bf.load.i484 = load i32, ptr %11, align 1
  %162 = and i32 %bf.load.i484, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool1.not.i = icmp eq i32 %162, 0
  br i1 %tobool1.not.i, label %if.end10.i, label %if.then4.i, !prof !27

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats) #9
  %163 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %errors, align 8
  %inc.i = add i64 %164, 1
  store i64 %inc.i, ptr %errors, align 8
  %165 = tail call ptr @llvm.returnaddress(i32 0) #9
  %166 = ptrtoint ptr %165 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %166) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  %167 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %stats, align 4
  %inc.i.i.i.i = add i32 %168, 1
  store i32 %inc.i.i.i.i, ptr %stats, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %169 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %bf.load8.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear9.i = and i16 %bf.load8.i, -1537
  store i16 %bf.clear9.i, ptr %ip_summed.i, align 8
  br label %aq_rx_checksum.exit

if.end10.i:                                       ; preds = %if.end.i
  %170 = and i32 %bf.load.i484, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool14.not.i = icmp eq i32 %170, 0
  %ip_summed16.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %171 = ptrtoint ptr %ip_summed16.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %bf.load17.i = load i16, ptr %ip_summed16.i, align 8
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i
  %bf.lshr.i.i = lshr i16 %bf.load17.i, 9
  %trunc.i.i = trunc i16 %bf.lshr.i.i to i2
  %172 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i.i, label %if.then15.i.if.end20.i_crit_edge [
    i2 1, label %if.then.i.i
    i2 0, label %if.then25.i.i
  ]

if.then15.i.if.end20.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then.i.i:                                      ; preds = %if.then15.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %173 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %174 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %174)
  %cmp7.not.i.i = icmp eq i32 %174, 805306368
  br i1 %cmp7.not.i.i, label %if.then.i.i.if.end20.i_crit_edge, label %if.then9.i.i

if.then.i.i.if.end20.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %175 = add i32 %bf.load2.i.i, 268435456
  %bf.shl.i.i = and i32 %175, 805306368
  %bf.clear16.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear16.i.i
  %176 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 %bf.set.i.i, ptr %csum_level.i.i, align 2
  br label %if.end20.i

if.then25.i.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear28.i.i = and i16 %bf.load17.i, -1537
  %bf.set29.i.i = or i16 %bf.clear28.i.i, 512
  %177 = ptrtoint ptr %ip_summed16.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %bf.set29.i.i, ptr %ip_summed16.i, align 8
  %csum_level30.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %178 = ptrtoint ptr %csum_level30.i.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %bf.load31.i.i = load i32, ptr %csum_level30.i.i, align 2
  %bf.clear32.i.i = and i32 %bf.load31.i.i, -805306369
  store i32 %bf.clear32.i.i, ptr %csum_level30.i.i, align 2
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear18.i = and i16 %bf.load17.i, -1537
  %179 = ptrtoint ptr %ip_summed16.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %bf.clear18.i, ptr %ip_summed16.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then25.i.i, %if.then9.i.i, %if.then.i.i.if.end20.i_crit_edge, %if.then15.i.if.end20.i_crit_edge
  %180 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %bf.load21.i = load i32, ptr %11, align 1
  %181 = and i32 %bf.load21.i, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %if.end20.i.aq_rx_checksum.exit_crit_edge, label %if.then29.i

if.end20.i.aq_rx_checksum.exit_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aq_rx_checksum.exit

if.then29.i:                                      ; preds = %if.end20.i
  %183 = ptrtoint ptr %ip_summed16.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %bf.load.i41.i = load i16, ptr %ip_summed16.i, align 8
  %bf.lshr.i42.i = lshr i16 %bf.load.i41.i, 9
  %trunc.i43.i = trunc i16 %bf.lshr.i42.i to i2
  %184 = zext i2 %trunc.i43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.5)
  switch i2 %trunc.i43.i, label %if.then29.i.aq_rx_checksum.exit_crit_edge [
    i2 1, label %if.then.i47.i
    i2 0, label %if.then25.i57.i
  ]

if.then29.i.aq_rx_checksum.exit_crit_edge:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aq_rx_checksum.exit

if.then.i47.i:                                    ; preds = %if.then29.i
  %csum_level.i44.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %185 = ptrtoint ptr %csum_level.i44.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %bf.load2.i45.i = load i32, ptr %csum_level.i44.i, align 2
  %186 = and i32 %bf.load2.i45.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %186)
  %cmp7.not.i46.i = icmp eq i32 %186, 805306368
  br i1 %cmp7.not.i46.i, label %if.then.i47.i.aq_rx_checksum.exit_crit_edge, label %if.then9.i51.i

if.then.i47.i.aq_rx_checksum.exit_crit_edge:      ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aq_rx_checksum.exit

if.then9.i51.i:                                   ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  %187 = add i32 %bf.load2.i45.i, 268435456
  %bf.shl.i48.i = and i32 %187, 805306368
  %bf.clear16.i49.i = and i32 %bf.load2.i45.i, -805306369
  %bf.set.i50.i = or i32 %bf.shl.i48.i, %bf.clear16.i49.i
  %188 = ptrtoint ptr %csum_level.i44.i to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 %bf.set.i50.i, ptr %csum_level.i44.i, align 2
  br label %aq_rx_checksum.exit

if.then25.i57.i:                                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear28.i52.i = and i16 %bf.load.i41.i, -1537
  %bf.set29.i53.i = or i16 %bf.clear28.i52.i, 512
  %189 = ptrtoint ptr %ip_summed16.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %bf.set29.i53.i, ptr %ip_summed16.i, align 8
  %csum_level30.i54.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %190 = ptrtoint ptr %csum_level30.i54.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %bf.load31.i55.i = load i32, ptr %csum_level30.i54.i, align 2
  %bf.clear32.i56.i = and i32 %bf.load31.i55.i, -805306369
  store i32 %bf.clear32.i56.i, ptr %csum_level30.i54.i, align 2
  br label %aq_rx_checksum.exit

aq_rx_checksum.exit:                              ; preds = %if.then25.i57.i, %if.then9.i51.i, %if.then.i47.i.aq_rx_checksum.exit_crit_edge, %if.then29.i.aq_rx_checksum.exit_crit_edge, %if.end20.i.aq_rx_checksum.exit_crit_edge, %if.then4.i, %if.end279.aq_rx_checksum.exit_crit_edge
  %191 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %arrayidx, align 1
  %is_hash_l4 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 2
  %193 = ptrtoint ptr %is_hash_l4 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %is_hash_l4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool282.not.not = icmp eq i8 %194, 0
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %195 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.shl.i.i486 = select i1 %tobool282.not.not, i16 0, i16 128
  %bf.clear.i.i = and i16 %bf.load.i.i, -193
  %bf.set.i.i487 = or i16 %bf.clear.i.i, %bf.shl.i.i486
  store i16 %bf.set.i.i487, ptr %l4_hash.i.i, align 8
  %hash10.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 8
  %196 = ptrtoint ptr %hash10.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %192, ptr %hash10.i.i, align 4
  br i1 %call3, label %aq_rx_checksum.exit.cond.end_crit_edge, label %cond.false

aq_rx_checksum.exit.cond.end_crit_edge:           ; preds = %aq_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %aq_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %idx, align 4
  %199 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %aq_nic, align 8
  %tc_mode = getelementptr inbounds %struct.aq_nic_s, ptr %200, i32 0, i32 12, i32 29
  %201 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp286 = icmp eq i32 %202, 1
  %203 = select i1 %cmp286, i32 3, i32 2
  %div449 = lshr i32 %198, %203
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %200, i32 0, i32 6
  %204 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %aq_vecs, align 8
  %mul = mul i32 %div449, %205
  %206 = select i1 %cmp286, i32 7, i32 3
  %rem = and i32 %206, %198
  %add297 = add i32 %mul, %rem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %aq_rx_checksum.exit.cond.end_crit_edge
  %cond298 = phi i32 [ %add297, %cond.false ], [ 0, %aq_rx_checksum.exit.cond.end_crit_edge ]
  %conv299 = trunc i32 %cond298 to i16
  %add.i488 = add i16 %conv299, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %207 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %add.i488, ptr %queue_mapping.i, align 8
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats)
  %208 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %packets, align 8
  %inc303 = add i64 %209, 1
  store i64 %inc303, ptr %packets, align 8
  %210 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len9.i, align 4
  %conv304 = zext i32 %211 to i64
  %212 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %bytes, align 8
  %add306 = add i64 %213, %conv304
  store i64 %add306, ptr %bytes, align 8
  %214 = tail call ptr @llvm.returnaddress(i32 0) #9
  %215 = ptrtoint ptr %214 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %215) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  %216 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %stats, align 4
  %inc.i.i.i490 = add i32 %217, 1
  store i32 %inc.i.i.i490, ptr %stats, align 4
  %call309 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call.i) #9
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then102, %do.end92, %for.body.for.inc_crit_edge
  %218 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %sw_head, align 4
  %inc.i491 = add i32 %219, 1
  %220 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i491, i32 %221)
  %cmp.not.i = icmp ult i32 %inc.i491, %221
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i491, i32 0
  %222 = ptrtoint ptr %sw_head to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %spec.select.i, ptr %sw_head, align 4
  %dec = add i32 %budget.addr.0500, -1
  %223 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %work_done, align 4
  %inc319 = add i32 %224, 1
  store i32 %inc319, ptr %work_done, align 4
  %225 = load i32, ptr %sw_head, align 4
  %226 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %227)
  %cmp.not = icmp eq i32 %225, %227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.inc.cleanup320_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup320_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup320

cleanup320:                                       ; preds = %for.inc.cleanup320_crit_edge, %if.then126, %do.body70.cleanup320_crit_edge, %aq_ring_dx_in_range.exit.cleanup320_crit_edge, %cond.true.i.cleanup320_crit_edge, %do.body.cleanup320_crit_edge, %entry.cleanup320_crit_edge
  %retval.0 = phi i32 [ -12, %if.then126 ], [ 0, %entry.cleanup320_crit_edge ], [ -5, %do.body70.cleanup320_crit_edge ], [ -5, %do.body.cleanup320_crit_edge ], [ 0, %aq_ring_dx_in_range.exit.cleanup320_crit_edge ], [ 0, %cond.true.i.cleanup320_crit_edge ], [ 0, %for.inc.cleanup320_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aq_ptp_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @aq_ptp_extract_ts(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_get_headlen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ring_hwts_rx_clean(ptr nocapture noundef %self, ptr noundef %aq_nic) local_unnamed_addr #0 align 64 {
entry:
  %ns = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 5
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 4
  %0 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_head, align 4
  %2 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not16 = icmp eq i32 %1, %3
  br i1 %cmp.not16, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 10
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %aq_nic, i32 0, i32 4
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 1
  %dx_size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 8
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %spec.select.i, %while.body.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ns) #9
  %5 = ptrtoint ptr %ns to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %ns, align 8, !annotation !33
  %6 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw_ops, align 8
  %extract_hwts = getelementptr inbounds %struct.aq_hw_ops, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %extract_hwts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extract_hwts, align 4
  %10 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw, align 8
  %12 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dx_ring, align 4
  %14 = ptrtoint ptr %dx_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dx_size, align 8
  %mul = mul i32 %15, %4
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  %call = call i32 %9(ptr noundef %11, ptr noundef %add.ptr, i32 noundef %15, ptr noundef nonnull %ns) #9
  %16 = ptrtoint ptr %ns to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ns, align 8
  call void @aq_ptp_tx_hwtstamp(ptr noundef %aq_nic, i64 noundef %17) #9
  %18 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sw_head, align 4
  %inc.i = add i32 %19, 1
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %21)
  %cmp.not.i = icmp ult i32 %inc.i, %21
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %22 = ptrtoint ptr %sw_head to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %sw_head, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ns) #9
  %23 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_head, align 8
  %cmp.not = icmp eq i32 %spec.select.i, %24
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_tx_hwtstamp(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ring_rx_fill(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page_order1 = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 9
  %0 = ptrtoint ptr %page_order1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_order1, align 4
  %sw_tail.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 6
  %2 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_tail.i, align 8
  %sw_head.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 5
  %4 = ptrtoint ptr %sw_head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sw_head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i = icmp ugt i32 %5, %3
  br i1 %cmp.not.i, label %aq_ring_avail_dx.exit, label %aq_ring_avail_dx.exit.thread

aq_ring_avail_dx.exit:                            ; preds = %entry
  %6 = xor i32 %3, -1
  %sub7.i = add i32 %5, %6
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %8)
  %cmp = icmp ugt i32 %8, 65
  %div32 = lshr i32 %8, 1
  %cond = select i1 %cmp, i32 32, i32 %div32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %cond)
  %cmp2 = icmp ult i32 %sub7.i, %cond
  br i1 %cmp2, label %aq_ring_avail_dx.exit.cleanup_crit_edge, label %aq_ring_avail_dx.exit.aq_ring_avail_dx.exit43_crit_edge

aq_ring_avail_dx.exit.aq_ring_avail_dx.exit43_crit_edge: ; preds = %aq_ring_avail_dx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %aq_ring_avail_dx.exit43

aq_ring_avail_dx.exit.cleanup_crit_edge:          ; preds = %aq_ring_avail_dx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

aq_ring_avail_dx.exit.thread:                     ; preds = %entry
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  %11 = xor i32 %3, -1
  %sub2.i = add i32 %10, %5
  %add.i = add i32 %sub2.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %10)
  %cmp52 = icmp ugt i32 %10, 65
  %div3253 = lshr i32 %10, 1
  %cond54 = select i1 %cmp52, i32 32, i32 %div3253
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %cond54)
  %cmp255 = icmp ult i32 %add.i, %cond54
  br i1 %cmp255, label %aq_ring_avail_dx.exit.thread.cleanup_crit_edge, label %aq_ring_avail_dx.exit.thread.aq_ring_avail_dx.exit43_crit_edge

aq_ring_avail_dx.exit.thread.aq_ring_avail_dx.exit43_crit_edge: ; preds = %aq_ring_avail_dx.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %aq_ring_avail_dx.exit43

aq_ring_avail_dx.exit.thread.cleanup_crit_edge:   ; preds = %aq_ring_avail_dx.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

aq_ring_avail_dx.exit43:                          ; preds = %aq_ring_avail_dx.exit.thread.aq_ring_avail_dx.exit43_crit_edge, %aq_ring_avail_dx.exit.aq_ring_avail_dx.exit43_crit_edge
  %size5658 = phi ptr [ %size.i, %aq_ring_avail_dx.exit.thread.aq_ring_avail_dx.exit43_crit_edge ], [ %size, %aq_ring_avail_dx.exit.aq_ring_avail_dx.exit43_crit_edge ]
  %cond.i42 = phi i32 [ %add.i, %aq_ring_avail_dx.exit.thread.aq_ring_avail_dx.exit43_crit_edge ], [ %sub7.i, %aq_ring_avail_dx.exit.aq_ring_avail_dx.exit43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i42)
  %tobool.not64 = icmp eq i32 %cond.i42, 0
  br i1 %tobool.not64, label %aq_ring_avail_dx.exit43.cleanup_crit_edge, label %for.body.lr.ph

aq_ring_avail_dx.exit43.cleanup_crit_edge:        ; preds = %aq_ring_avail_dx.exit43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %aq_ring_avail_dx.exit43
  %stats24.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10
  %pg_reuses.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 11
  %dep_map.i.i74.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %shl.i = shl i32 4096, %1
  %pg_flips.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 10
  %aq_nic.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %pg_losts.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %dec65.in = phi i32 [ %cond.i42, %for.body.lr.ph ], [ %dec65, %if.end7.for.body_crit_edge ]
  %dec65 = add i32 %dec65.in, -1
  %12 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %self, align 8
  %14 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sw_tail.i, align 8
  %arrayidx = getelementptr %struct.aq_ring_buff_s, ptr %13, i32 %15
  %16 = getelementptr %struct.aq_ring_buff_s, ptr %13, i32 %15, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 576460752303423488, ptr %16, align 1
  %rxdata.i = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4
  %18 = ptrtoint ptr %rxdata.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load ptr, ptr %rxdata.i, align 1
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.if.then35.i_crit_edge, label %if.then.i

for.body.if.then35.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

if.then.i:                                        ; preds = %for.body
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i, i32 noundef 4) #9
  %20 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp sgt i32 %21, 1
  %pg_off.i = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4, i32 3
  br i1 %cmp.i, label %if.then3.i, label %if.else21.i

if.then3.i:                                       ; preds = %if.then.i
  %22 = ptrtoint ptr %pg_off.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %pg_off.i, align 1
  %add.i44 = add i32 %23, 2048
  store i32 %add.i44, ptr %pg_off.i, align 1
  %add7.i = add i32 %23, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %shl.i)
  %cmp8.not.i = icmp ugt i32 %add7.i, %shl.i
  br i1 %cmp8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats24.i) #9
  %24 = ptrtoint ptr %pg_flips.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pg_flips.i, align 8
  %inc.i = add i64 %25, 1
  store i64 %inc.i, ptr %pg_flips.i, align 8
  %26 = tail call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i74.i, i32 noundef %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  br label %if.end31.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %aq_nic.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aq_nic.i, align 8
  %ndev.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 133, i32 1
  %32 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i.i, align 8
  %order.i.i = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %order.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %order.i.i, align 4
  %shl.i.i = shl i32 4096, %35
  %daddr.i.i = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %daddr.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %33, i32 noundef %37, i32 noundef %shl.i.i, i32 noundef 2, i32 noundef 0) #9
  %38 = ptrtoint ptr %rxdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rxdata.i, align 4
  %40 = ptrtoint ptr %order.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %order.i.i, align 4
  tail call void @__free_pages(ptr noundef %39, i32 noundef %41) #9
  %42 = ptrtoint ptr %rxdata.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rxdata.i, align 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats24.i) #9
  %43 = ptrtoint ptr %pg_losts.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pg_losts.i, align 8
  %inc18.i = add i64 %44, 1
  store i64 %inc18.i, ptr %pg_losts.i, align 8
  %45 = tail call ptr @llvm.returnaddress(i32 0) #9
  %46 = ptrtoint ptr %45 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i74.i, i32 noundef %46) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  br label %if.end31.i

if.else21.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %pg_off.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 0, ptr %pg_off.i, align 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats24.i) #9
  %48 = ptrtoint ptr %pg_reuses.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %pg_reuses.i, align 8
  %inc27.i = add i64 %49, 1
  store i64 %inc27.i, ptr %pg_reuses.i, align 8
  %50 = tail call ptr @llvm.returnaddress(i32 0) #9
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i74.i, i32 noundef %51) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else21.i, %if.else.i, %if.then9.i
  %52 = ptrtoint ptr %stats24.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stats24.i, align 4
  %inc.i.i.i75.i = add i32 %53, 1
  store i32 %inc.i.i.i75.i, ptr %stats24.i, align 4
  %54 = ptrtoint ptr %rxdata.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %.pr.i = load ptr, ptr %rxdata.i, align 1
  %tobool34.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool34.not.i, label %if.end31.i.if.then35.i_crit_edge, label %if.end31.i.if.end7_crit_edge

if.end31.i.if.end7_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end31.i.if.then35.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

if.then35.i:                                      ; preds = %if.end31.i.if.then35.i_crit_edge, %for.body.if.then35.i_crit_edge
  %55 = ptrtoint ptr %aq_nic.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aq_nic.i, align 8
  %ndev.i76.i = getelementptr inbounds %struct.aq_nic_s, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %ndev.i76.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev.i76.i, align 4
  %parent.i77.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 133, i32 1
  %59 = ptrtoint ptr %parent.i77.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i77.i, align 8
  %call38.i.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef %1, i32 noundef 0, ptr noundef null) #9
  %tobool.not.i.i = icmp eq ptr %call38.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then35.i.aq_get_rxpages.exit_crit_edge, label %if.end.i.i, !prof !21

if.then35.i.aq_get_rxpages.exit_crit_edge:        ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aq_get_rxpages.exit

if.end.i.i:                                       ; preds = %if.then35.i
  %call4.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %60, ptr noundef nonnull %call38.i.i.i.i.i.i, i32 noundef 0, i32 noundef %shl.i, i32 noundef 2, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %60, i32 noundef %call4.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call4.i.i, -1
  br i1 %cmp.i.not.i.i, label %free_page.i.i, label %aq_get_rxpage.exit.i, !prof !21

free_page.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i.i, i32 noundef %1) #9
  br label %aq_get_rxpages.exit

aq_get_rxpage.exit.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %rxdata.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call38.i.i.i.i.i.i, ptr %rxdata.i, align 4
  %daddr16.i.i = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %daddr16.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call4.i.i, ptr %daddr16.i.i, align 4
  %order17.i.i = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %order17.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %1, ptr %order17.i.i, align 4
  %pg_off.i.i = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %pg_off.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %pg_off.i.i, align 4
  br label %if.end7

aq_get_rxpages.exit:                              ; preds = %free_page.i.i, %if.then35.i.aq_get_rxpages.exit_crit_edge
  tail call fastcc void @u64_stats_update_begin(ptr noundef %stats24.i) #9
  %alloc_fails.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 6
  %65 = ptrtoint ptr %alloc_fails.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %alloc_fails.i, align 8
  %inc45.i = add i64 %66, 1
  store i64 %inc45.i, ptr %alloc_fails.i, align 8
  %67 = tail call ptr @llvm.returnaddress(i32 0) #9
  %68 = ptrtoint ptr %67 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i74.i, i32 noundef %68) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  %69 = ptrtoint ptr %stats24.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stats24.i, align 4
  %inc.i.i.i80.i = add i32 %70, 1
  store i32 %inc.i.i.i80.i, ptr %stats24.i, align 4
  br label %cleanup

if.end7:                                          ; preds = %aq_get_rxpage.exit.i, %if.end31.i.if.end7_crit_edge
  %daddr.i = getelementptr inbounds %struct.aq_rxpage, ptr %rxdata.i, i32 0, i32 1
  %71 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %daddr.i, align 4
  %pg_off.i45 = getelementptr inbounds %struct.aq_rxpage, ptr %rxdata.i, i32 0, i32 3
  %73 = ptrtoint ptr %pg_off.i45 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pg_off.i45, align 4
  %add.i46 = add i32 %74, %72
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %add.i46, ptr %arrayidx, align 1
  %76 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sw_tail.i, align 8
  %inc.i47 = add i32 %77, 1
  %78 = ptrtoint ptr %size5658 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size5658, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i47, i32 %79)
  %cmp.not.i49 = icmp ult i32 %inc.i47, %79
  %spec.select.i = select i1 %cmp.not.i49, i32 %inc.i47, i32 0
  %80 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.select.i, ptr %sw_tail.i, align 8
  %tobool.not = icmp eq i32 %dec65, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %aq_get_rxpages.exit, %aq_ring_avail_dx.exit43.cleanup_crit_edge, %aq_ring_avail_dx.exit.thread.cleanup_crit_edge, %aq_ring_avail_dx.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %aq_ring_avail_dx.exit.cleanup_crit_edge ], [ -12, %aq_get_rxpages.exit ], [ 0, %aq_ring_avail_dx.exit.thread.cleanup_crit_edge ], [ 0, %aq_ring_avail_dx.exit43.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_ring_rx_deinit(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %self, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.cond.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader:                               ; preds = %entry
  %sw_head = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 5
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 6
  %0 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_head, align 4
  %2 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not13 = icmp eq i32 %1, %3
  br i1 %cmp.not13, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %aq_nic = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %spec.select.i, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %self, align 8
  %rxdata = getelementptr %struct.aq_ring_buff_s, ptr %6, i32 %4, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %aq_nic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_nic, align 8
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 133, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %order.i = getelementptr %struct.aq_ring_buff_s, ptr %6, i32 %4, i32 0, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %order.i, align 4
  %shl.i = shl i32 4096, %14
  %daddr.i = getelementptr %struct.aq_ring_buff_s, ptr %6, i32 %4, i32 0, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %daddr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %16, i32 noundef %shl.i, i32 noundef 2, i32 noundef 0) #9
  %17 = ptrtoint ptr %rxdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rxdata, align 4
  %19 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %order.i, align 4
  tail call void @__free_pages(ptr noundef %18, i32 noundef %20) #9
  %21 = ptrtoint ptr %rxdata to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rxdata, align 4
  %22 = ptrtoint ptr %sw_head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sw_head, align 4
  %inc.i = add i32 %23, 1
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %25)
  %cmp.not.i = icmp ult i32 %inc.i, %25
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %26 = ptrtoint ptr %sw_head to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.i, ptr %sw_head, align 4
  %27 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sw_tail, align 8
  %cmp.not = icmp eq i32 %spec.select.i, %28
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_ring_fill_stats_data(ptr noundef %self, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_type = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 12
  %0 = ptrtoint ptr %ring_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %stats = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10
  %packets = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 2
  br i1 %cmp, label %do.body.preheader, label %do.body22.preheader

do.body22.preheader:                              ; preds = %entry
  %queue_restarts = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 4
  %arrayidx31 = getelementptr i64, ptr %data, i32 1
  br label %do.body22

do.body.preheader:                                ; preds = %entry
  %jumbo_packets = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 5
  %arrayidx3 = getelementptr i64, ptr %data, i32 1
  %lro_packets = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 4
  %arrayidx6 = getelementptr i64, ptr %data, i32 2
  %errors = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 1
  %arrayidx9 = getelementptr i64, ptr %data, i32 3
  %alloc_fails = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 6
  %arrayidx12 = getelementptr i64, ptr %data, i32 4
  %skb_alloc_fails = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 7
  %arrayidx15 = getelementptr i64, ptr %data, i32 5
  %polls = getelementptr inbounds %struct.aq_ring_s, ptr %self, i32 0, i32 10, i32 0, i32 8
  %arrayidx18 = getelementptr i64, ptr %data, i32 6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %stats)
  %2 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %packets, align 8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %data, align 8
  %5 = ptrtoint ptr %jumbo_packets to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %jumbo_packets, align 8
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx3, align 8
  %8 = ptrtoint ptr %lro_packets to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lro_packets, align 8
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx6, align 8
  %11 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %errors, align 8
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx9, align 8
  %14 = ptrtoint ptr %alloc_fails to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %alloc_fails, align 8
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx12, align 8
  %17 = ptrtoint ptr %skb_alloc_fails to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %skb_alloc_fails, align 8
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx15, align 8
  %20 = ptrtoint ptr %polls to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %polls, align 8
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !34
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %stats, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %24, %call
  br i1 %cmp.i.i.i.i.not, label %do.body.if.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body22:                                        ; preds = %do.body22.do.body22_crit_edge, %do.body22.preheader
  %call25 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %stats)
  %25 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %packets, align 8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %data, align 8
  %28 = ptrtoint ptr %queue_restarts to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %queue_restarts, align 8
  %30 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx31, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !34
  %31 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %stats, align 4
  %cmp.i.i.i.i69.not = icmp eq i32 %32, %call25
  br i1 %cmp.i.i.i.i69.not, label %do.body22.if.end_crit_edge, label %do.body22.do.body22_crit_edge

do.body22.do.body22_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.body22.if.end_crit_edge:                       ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body22.if.end_crit_edge, %do.body.if.end_crit_edge
  %count.0 = phi i32 [ 7, %do.body.if.end_crit_edge ], [ 2, %do.body22.if.end_crit_edge ]
  ret i32 %count.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !35
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #9
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !36
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !21

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !37
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !38
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !39
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  ret i32 %.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @aq_ring_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ring.c", i32 228, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @aq_ring_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ring.c", i32 230, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2150301193}
!23 = !{i64 2150192795}
!24 = !{i64 2150197729}
!25 = !{i64 2150219447}
!26 = !{i64 2150224341}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2150300868}
!29 = !{i64 2149315952, i64 2149315975, i64 2149316007, i64 2149316039, i64 2149316077, i64 2149316107}
!30 = !{i64 2154600368, i64 2154600856, i64 2154600405, i64 2154600461, i64 2154600495, i64 2154600519, i64 2154600560, i64 2154600581, i64 2154600609, i64 2154600643}
!31 = !{i64 2148387537, i64 2148387563, i64 2148387592, i64 2148387626, i64 2148387657, i64 2148387680}
!32 = !{i64 2148869352, i64 2148869357, i64 2148869370, i64 2148869414, i64 2148869448, i64 2148869469}
!33 = !{!"auto-init"}
!34 = !{i64 2150300543}
!35 = !{i64 780018, i64 780079}
!36 = !{i64 782750}
!37 = !{i64 783035}
!38 = !{i64 2154924367}
!39 = !{i64 2154924209}
!40 = !{i64 2154924537}
