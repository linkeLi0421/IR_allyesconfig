; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.118, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.118 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.mlxbf_gige = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i16, i16, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, i32, i16, i16, i64, i64, i64, [1024 x ptr], [256 x ptr], i32, i32, i32, i32, i32, i8, i8, %struct.napi_struct, %struct.mlxbf_gige_stats }
%struct.mlxbf_gige_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_tx.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 326, i32 6 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxbf_gige_tx_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_entries = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_q_entries, align 2
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %dev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tx_wqe_base_dma = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 12
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %mul, ptr noundef %tx_wqe_base_dma, i32 noundef 3264, i32 noundef 0) #6
  %tx_wqe_base = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 11
  %4 = ptrtoint ptr %tx_wqe_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %tx_wqe_base, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_wqe_next = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 13
  %5 = ptrtoint ptr %tx_wqe_next to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %tx_wqe_next, align 8
  %6 = ptrtoint ptr %tx_wqe_base_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_wqe_base_dma, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %9, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !17
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %tx_cc_dma = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 15
  %call.i59 = tail call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef 8, ptr noundef %tx_cc_dma, i32 noundef 3264, i32 noundef 0) #6
  %tx_cc = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 14
  %13 = ptrtoint ptr %tx_cc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i59, ptr %tx_cc, align 4
  %tobool8.not = icmp eq ptr %call.i59, null
  br i1 %tobool8.not, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %tx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_wqe_base, align 8
  %18 = ptrtoint ptr %tx_wqe_base_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_wqe_base_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %mul, ptr noundef %17, i32 noundef %19, i32 noundef 0) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %tx_cc_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_cc_dma, align 8
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %add.ptr17 = getelementptr i8, ptr %23, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %24) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %add.ptr.i62 = getelementptr i8, ptr %23, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 0) #6, !srcloc !17
  %25 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tx_q_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i.i = icmp eq i16 %26, 0
  %conv27 = zext i16 %26 to i32
  %27 = tail call i32 @llvm.ctlz.i32(i32 %conv27, i1 true) #6, !range !19
  %sub.i.op.i = xor i32 %27, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %add.ptr33 = getelementptr i8, ptr %29, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %30) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %31 = ashr i32 %sub.i, 31
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %add.ptr.i65 = getelementptr i8, ptr %29, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %32) #6, !srcloc !17
  %prev_tx_ci = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 21
  %33 = ptrtoint ptr %prev_tx_ci to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %prev_tx_ci, align 2
  %tx_pi = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 20
  %34 = ptrtoint ptr %tx_pi to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %tx_pi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -12, %if.then9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxbf_gige_tx_deinit(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_wqe_base = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 11
  %tx_q_entries = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_q_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp49.not = icmp eq i16 %1, 0
  br i1 %cmp49.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %tx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_wqe_base, align 8
  %dev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %tx_wqe_addr.050 = phi ptr [ %3, %for.body.lr.ph ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlxbf_gige, ptr %priv, i32 0, i32 26, i32 %i.051
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %tx_wqe_addr.050 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tx_wqe_addr.050, align 8
  %conv2 = trunc i64 %9 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %conv2, i32 noundef %11, i32 noundef 1, i32 noundef 0) #6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %13) #6
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %add.ptr = getelementptr i64, ptr %tx_wqe_addr.050, i32 2
  %inc = add nuw nsw i32 %i.051, 1
  %15 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_q_entries, align 2
  %conv = zext i16 %16 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end.loopexit

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i16 %16 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %entry.for.end_crit_edge ]
  %dev11 = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 3
  %17 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev11, align 4
  %19 = ptrtoint ptr %tx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_wqe_base, align 8
  %tx_wqe_base_dma = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 12
  %21 = ptrtoint ptr %tx_wqe_base_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_wqe_base_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %18, i32 noundef %.lcssa, ptr noundef %20, i32 noundef %22, i32 noundef 0) #6
  %23 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev11, align 4
  %tx_cc = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 14
  %25 = ptrtoint ptr %tx_cc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_cc, align 4
  %tx_cc_dma = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 15
  %27 = ptrtoint ptr %tx_cc_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_cc_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef 8, ptr noundef %26, i32 noundef %28, i32 noundef 0) #6
  %29 = call ptr @memset(ptr %tx_wqe_base, i32 0, i32 20)
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %add.ptr18 = getelementptr i8, ptr %31, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %31, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !17
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %add.ptr20 = getelementptr i8, ptr %33, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %add.ptr.i47 = getelementptr i8, ptr %33, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 0) #6, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlxbf_gige_handle_tx_complete(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 904
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  %add.ptr.i = getelementptr i8, ptr %1, i32 908
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %4 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_fifo_full = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 35, i32 9
  %5 = ptrtoint ptr %tx_fifo_full to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_fifo_full, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %tx_fifo_full, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %add.ptr3 = getelementptr i8, ptr %8, i32 784
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  %add.ptr.i58 = getelementptr i8, ptr %8, i32 788
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  %11 = call i32 @llvm.bswap.i32(i32 %9)
  %netdev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 4
  %prev_tx_ci = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 21
  %12 = trunc i32 %11 to i16
  %13 = ptrtoint ptr %prev_tx_ci to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %prev_tx_ci, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %12)
  %cmp.not60 = icmp eq i16 %14, %12
  br i1 %cmp.not60, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 8
  %tx_q_entries = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 10
  %tx_wqe_base = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 11
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36, i32 3
  %dev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %17 = phi i16 [ %14, %for.body.lr.ph ], [ %inc28, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_q_entries, align 2
  %20 = urem i16 %17, %19
  %21 = ptrtoint ptr %tx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_wqe_base, align 8
  %conv13 = zext i16 %20 to i32
  %mul = shl nuw nsw i32 %conv13, 1
  %add.ptr14 = getelementptr i64, ptr %22, i32 %mul
  %23 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_packets, align 4
  %inc15 = add i32 %24, 1
  store i32 %inc15, ptr %tx_packets, align 4
  %add.ptr16 = getelementptr i64, ptr %add.ptr14, i32 1
  %25 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr16, align 8
  %27 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_bytes, align 4
  %29 = trunc i64 %26 to i32
  %30 = and i32 %29, 2047
  %conv19 = add i32 %30, %28
  store i32 %conv19, ptr %tx_bytes, align 4
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr14, align 8
  %conv20 = trunc i64 %34 to i32
  %arrayidx = getelementptr %struct.mlxbf_gige, ptr %priv, i32 0, i32 26, i32 %conv13
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %conv20, i32 noundef %38, i32 noundef 1, i32 noundef 0) #6
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %40, i32 noundef 0) #6
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %prev_tx_ci to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %prev_tx_ci, align 2
  %inc28 = add i16 %43, 1
  store i16 %inc28, ptr %prev_tx_ci, align 2
  %cmp.not = icmp eq i16 %inc28, %12
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %44 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %for.end.if.end37_crit_edge, label %land.lhs.true

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true:                                    ; preds = %for.end
  %lock.i = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %50 = ptrtoint ptr %prev_tx_ci to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %prev_tx_ci, align 2
  %tx_pi.i = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 20
  %52 = ptrtoint ptr %tx_pi.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tx_pi.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp7.i = icmp eq i16 %51, %53
  br i1 %cmp7.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %tx_q_entries.i = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 10
  %54 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tx_q_entries.i, align 2
  br label %mlxbf_gige_tx_buffs_avail.exit

if.else.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i16 %53 to i32
  %conv5.i = zext i16 %51 to i32
  %tx_q_entries11.i = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 10
  %56 = ptrtoint ptr %tx_q_entries11.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tx_q_entries11.i, align 2
  %conv12.i = zext i16 %57 to i32
  %add.i = sub nsw i32 %conv5.i, %conv6.i
  %sub17.i = add nsw i32 %add.i, %conv12.i
  %rem.i = srem i32 %sub17.i, %conv12.i
  %58 = trunc i32 %rem.i to i16
  br label %mlxbf_gige_tx_buffs_avail.exit

mlxbf_gige_tx_buffs_avail.exit:                   ; preds = %if.else.i, %if.then.i
  %avail.0.in.i = phi i16 [ %55, %if.then.i ], [ %58, %if.else.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %avail.0.in.i)
  %tobool34.not = icmp eq i16 %avail.0.in.i, 1
  br i1 %tobool34.not, label %mlxbf_gige_tx_buffs_avail.exit.if.end37_crit_edge, label %if.then35

mlxbf_gige_tx_buffs_avail.exit.if.end37_crit_edge: ; preds = %mlxbf_gige_tx_buffs_avail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %mlxbf_gige_tx_buffs_avail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev, align 8
  %_tx.i.i59 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 103
  %61 = ptrtoint ptr %_tx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i59, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %62) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %mlxbf_gige_tx_buffs_avail.exit.if.end37_crit_edge, %for.end.if.end37_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlxbf_gige_update_tx_wqe_next(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_wqe_next = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %tx_wqe_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_wqe_next, align 8
  %add.ptr = getelementptr i64, ptr %1, i32 2
  store ptr %add.ptr, ptr %tx_wqe_next, align 8
  %tx_wqe_base = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 11
  %2 = ptrtoint ptr %tx_wqe_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_wqe_base, align 8
  %tx_q_entries = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_q_entries, align 2
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add.ptr2 = getelementptr i64, ptr %3, i32 %mul
  %cmp = icmp eq ptr %add.ptr, %add.ptr2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %tx_wqe_next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %tx_wqe_next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxbf_gige_start_xmit(ptr noundef %skb, ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  %tx_buf_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_buf_dma) #6
  %0 = ptrtoint ptr %tx_buf_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tx_buf_dma, align 4, !annotation !24
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %2)
  %cmp = icmp ugt i32 %2, 2048
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.if.end_crit_edge, label %cond.true.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.true.i:                                      ; preds = %lor.lhs.false
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %4) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.if.then_crit_edge, label %cond.true.i.if.end_crit_edge

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.true.i.if.then_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #6
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %5 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.true.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  %shr = ashr i32 %9, 12
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add = add i32 %9, -1
  %sub = add i32 %add, %11
  %shr3 = lshr i32 %sub, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr3)
  %cmp4.not = icmp eq i32 %shr, %shr3
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = call ptr @mlxbf_gige_alloc_skb(ptr noundef %add.ptr.i, i32 noundef %11, ptr noundef nonnull %tx_buf_dma, i32 noundef 1) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void @consume_skb(ptr noundef %skb) #6
  %tx_dropped11 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %12 = ptrtoint ptr %tx_dropped11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_dropped11, align 4
  %inc12 = add i32 %13, 1
  store i32 %inc12, ptr %tx_dropped11, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %call.i = call ptr @skb_put(ptr noundef nonnull %call7, i32 noundef %17) #6
  %18 = call ptr @memcpy(ptr %call.i, ptr %15, i32 %17)
  call void @consume_skb(ptr noundef %skb) #6
  br label %if.end28

if.else:                                          ; preds = %if.end
  %dev = getelementptr i8, ptr %netdev, i32 2316
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i101 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #6
  br i1 %call.i101, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !25

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %20) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i102 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i102, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %20, ptr noundef %8, i32 noundef %11) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i103 = getelementptr %struct.page, ptr %25, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %20, ptr noundef %add.ptr.i103, i32 noundef %and.i, i32 noundef %11, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %26 = ptrtoint ptr %tx_buf_dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %tx_buf_dma, align 4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %28, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then23, label %dma_map_single_attrs.exit.if.end28_crit_edge

dma_map_single_attrs.exit.if.end28_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then23:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %skb) #6
  %tx_dropped25 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %29 = ptrtoint ptr %tx_dropped25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_dropped25, align 4
  %inc26 = add i32 %30, 1
  store i32 %inc26, ptr %tx_dropped25, align 4
  br label %cleanup

if.end28:                                         ; preds = %dma_map_single_attrs.exit.if.end28_crit_edge, %if.end13
  %tx_skb.0 = phi ptr [ %call7, %if.end13 ], [ %skb, %dma_map_single_attrs.exit.if.end28_crit_edge ]
  %tx_wqe_next = getelementptr i8, ptr %netdev, i32 2392
  %31 = ptrtoint ptr %tx_wqe_next to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_wqe_next, align 8
  %add.ptr.i104 = getelementptr i64, ptr %32, i32 2
  store ptr %add.ptr.i104, ptr %tx_wqe_next, align 8
  %tx_wqe_base.i = getelementptr i8, ptr %netdev, i32 2384
  %33 = ptrtoint ptr %tx_wqe_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_wqe_base.i, align 8
  %tx_q_entries.i = getelementptr i8, ptr %netdev, i32 2382
  %35 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tx_q_entries.i, align 2
  %conv.i = zext i16 %36 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.ptr2.i = getelementptr i64, ptr %34, i32 %mul.i
  %cmp.i105 = icmp eq ptr %add.ptr.i104, %add.ptr2.i
  br i1 %cmp.i105, label %if.then.i106, label %if.end28.mlxbf_gige_update_tx_wqe_next.exit_crit_edge

if.end28.mlxbf_gige_update_tx_wqe_next.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxbf_gige_update_tx_wqe_next.exit

if.then.i106:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %tx_wqe_next to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %tx_wqe_next, align 8
  br label %mlxbf_gige_update_tx_wqe_next.exit

mlxbf_gige_update_tx_wqe_next.exit:               ; preds = %if.then.i106, %if.end28.mlxbf_gige_update_tx_wqe_next.exit_crit_edge
  %38 = ptrtoint ptr %tx_buf_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_buf_dma, align 4
  %conv = zext i32 %39 to i64
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv, ptr %32, align 8
  %len29 = getelementptr inbounds %struct.sk_buff, ptr %tx_skb.0, i32 0, i32 6
  %41 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len29, align 4
  %and = and i32 %42, 2047
  %conv30 = zext i32 %and to i64
  %add.ptr = getelementptr i64, ptr %32, i32 1
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv30, ptr %add.ptr, align 8
  %lock = getelementptr i8, ptr %netdev, i32 2336
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tx_pi = getelementptr i8, ptr %netdev, i32 2420
  %44 = ptrtoint ptr %tx_pi to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tx_pi, align 4
  %46 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tx_q_entries.i, align 2
  %48 = urem i16 %45, %47
  %rem = zext i16 %48 to i32
  %arrayidx = getelementptr %struct.mlxbf_gige, ptr %add.ptr.i, i32 0, i32 26, i32 %rem
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tx_skb.0, ptr %arrayidx, align 4
  %inc42 = add i16 %45, 1
  store i16 %inc42, ptr %tx_pi, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #6
  %50 = call i32 @llvm.read_register.i32(metadata !6) #6
  %and.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %55, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %56 = inttoptr i32 %add.i to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.i.not = icmp eq i8 %58, 0
  br i1 %tobool.i.not, label %do.body46, label %mlxbf_gige_update_tx_wqe_next.exit.if.end52_crit_edge

mlxbf_gige_update_tx_wqe_next.exit.if.end52_crit_edge: ; preds = %mlxbf_gige_update_tx_wqe_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.body46:                                        ; preds = %mlxbf_gige_update_tx_wqe_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %tx_pi to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tx_pi, align 4
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr51 = getelementptr i8, ptr %62, i32 568
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  call void @arm_heavy_mb() #6
  %conv.i107 = zext i16 %60 to i32
  %63 = call i32 @llvm.bswap.i32(i32 %conv.i107) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %63) #6, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  call void @arm_heavy_mb() #6
  %add.ptr.i109 = getelementptr i8, ptr %62, i32 572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 0) #6, !srcloc !17
  br label %if.end52

if.end52:                                         ; preds = %do.body46, %mlxbf_gige_update_tx_wqe_next.exit.if.end52_crit_edge
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %prev_tx_ci.i = getelementptr i8, ptr %netdev, i32 2422
  %64 = ptrtoint ptr %prev_tx_ci.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %prev_tx_ci.i, align 2
  %66 = ptrtoint ptr %tx_pi to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tx_pi, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %67)
  %cmp7.i = icmp eq i16 %65, %67
  br i1 %cmp7.i, label %if.then.i111, label %if.else.i

if.then.i111:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %tx_q_entries.i, align 2
  br label %mlxbf_gige_tx_buffs_avail.exit

if.else.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i16 %67 to i32
  %conv5.i = zext i16 %65 to i32
  %70 = ptrtoint ptr %tx_q_entries.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tx_q_entries.i, align 2
  %conv12.i = zext i16 %71 to i32
  %add.i112 = sub nsw i32 %conv5.i, %conv6.i
  %sub17.i = add nsw i32 %add.i112, %conv12.i
  %rem.i = srem i32 %sub17.i, %conv12.i
  %72 = trunc i32 %rem.i to i16
  br label %mlxbf_gige_tx_buffs_avail.exit

mlxbf_gige_tx_buffs_avail.exit:                   ; preds = %if.else.i, %if.then.i111
  %avail.0.in.i = phi i16 [ %69, %if.then.i111 ], [ %72, %if.else.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %avail.0.in.i)
  %tobool54.not = icmp eq i16 %avail.0.in.i, 1
  br i1 %tobool54.not, label %if.then55, label %mlxbf_gige_tx_buffs_avail.exit.cleanup_crit_edge

mlxbf_gige_tx_buffs_avail.exit.cleanup_crit_edge: ; preds = %mlxbf_gige_tx_buffs_avail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then55:                                        ; preds = %mlxbf_gige_tx_buffs_avail.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %73 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %74, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %napi = getelementptr i8, ptr %netdev, i32 7592
  %call.i113 = call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i113, label %if.then.i114, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i114:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  call void @__napi_schedule(ptr noundef %napi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i114, %if.then55.cleanup_crit_edge, %mlxbf_gige_tx_buffs_avail.exit.cleanup_crit_edge, %if.then23, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_buf_dma) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxbf_gige_alloc_skb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2154646194}
!17 = !{i64 6030387}
!18 = !{i64 2154646567}
!19 = !{i32 0, i32 33}
!20 = !{i64 6030805}
!21 = !{i64 2154645386}
!22 = !{i64 2154645824}
!23 = !{i64 2155909837}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2155911192}
