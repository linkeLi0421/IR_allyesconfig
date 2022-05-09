; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_dma_info = type { i32, %union.anon.196 }
%union.anon.196 = type { ptr }
%struct.mlx5e_rq = type { %union.anon.194, %struct.anon.209, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.194 = type { %struct.anon.201 }
%struct.anon.201 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.204 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.202 }
%union.anon.202 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.203, i64, i32, [28 x i8] }
%union.anon.203 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.204 = type { %struct.anon.205 }
%struct.anon.205 = type { %struct.anon.206, [0 x %struct.mlx5_mtt] }
%struct.anon.206 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.209 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.223, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.223 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.197, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.200, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { i8, i8, i16, i32 }
%union.anon.200 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.225, i32 }
%union.anon.225 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.224, i32, i32 }
%union.anon.224 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.mlx5e_mpw_info = type { %struct.mlx5e_umr_dma_info, i16, [2 x i32] }
%struct.mlx5e_umr_dma_info = type { [64 x %struct.mlx5e_dma_info] }
%struct.mlx5e_wqe_frag_info = type { ptr, i32, i8 }

@mlx5e_xsk_skb_from_cqe_mpwrq_linear.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c\00", [44 x i8] zeroinitializer }, align 32
@mlx5e_xsk_skb_from_cqe_linear.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 46, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_xsk_skb_from_cqe_mpwrq_linear(ptr noundef %rq, ptr nocapture noundef %wi, i16 noundef zeroext %cqe_bcnt, i32 noundef %head_offset, i32 noundef %page_idx) local_unnamed_addr #0 align 64 {
entry:
  %cqe_bcnt32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr [64 x %struct.mlx5e_dma_info], ptr %wi, i32 0, i32 %page_idx, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cqe_bcnt32) #3
  %conv = zext i16 %cqe_bcnt to i32
  %3 = ptrtoint ptr %cqe_bcnt32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %cqe_bcnt32, align 4
  %hw_mtu = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 19
  %4 = ptrtoint ptr %hw_mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_mtu, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ult i32 %5, %conv
  br i1 %cmp, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 4
  %oversize_pkts_sw_drop = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %oversize_pkts_sw_drop to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %oversize_pkts_sw_drop, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %oversize_pkts_sw_drop, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head_offset)
  %tobool4.not = icmp eq i32 %head_offset, 0
  br i1 %tobool4.not, label %if.end.if.end42_crit_edge, label %land.rhs

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

land.rhs:                                         ; preds = %if.end
  %.b89 = load i1, ptr @mlx5e_xsk_skb_from_cqe_mpwrq_linear.__already_done, align 1
  br i1 %.b89, label %land.rhs.if.end42_crit_edge, label %if.then20, !prof !15

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @mlx5e_xsk_skb_from_cqe_mpwrq_linear.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #3
  br label %if.end42

if.end42:                                         ; preds = %if.then20, %land.rhs.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %12 = ptrtoint ptr %cqe_bcnt32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cqe_bcnt32, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %data_end to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %data_end, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1
  %data_meta.i = getelementptr inbounds %struct.xdp_buff, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %data_meta.i, align 4
  %xsk_pool = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %16 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xsk_pool, align 8
  %dma_need_sync.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %dma_need_sync.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dma_need_sync.i, align 2, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end42.xsk_buff_dma_sync_for_cpu.exit_crit_edge, label %if.end.i

if.end42.xsk_buff_dma_sync_for_cpu.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %xsk_buff_dma_sync_for_cpu.exit

if.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xp_dma_sync_for_cpu_slow(ptr noundef %2) #3
  br label %xsk_buff_dma_sync_for_cpu.exit

xsk_buff_dma_sync_for_cpu.exit:                   ; preds = %if.end.i, %if.end42.xsk_buff_dma_sync_for_cpu.exit_crit_edge
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %21) #3, !srcloc !17
  %call = call zeroext i1 @mlx5e_xdp_handle(ptr noundef %rq, ptr noundef null, ptr noundef nonnull %cqe_bcnt32, ptr noundef %2) #3
  br i1 %call, label %if.then57, label %if.end69, !prof !15

if.then57:                                        ; preds = %xsk_buff_dma_sync_for_cpu.exit
  %flags = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 23
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and.i = and i32 %23, -2
  store i32 %and.i, ptr %flags, align 4
  %and1.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool59.not = icmp eq i32 %and1.i, 0
  br i1 %tobool59.not, label %if.then57.cleanup_crit_edge, label %if.then66, !prof !14

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then66:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #5
  %xdp_xmit_bitmap = getelementptr inbounds %struct.mlx5e_mpw_info, ptr %wi, i32 0, i32 2
  %rem.i = and i32 %page_idx, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %page_idx, 5
  %add.ptr.i90 = getelementptr i32, ptr %xdp_xmit_bitmap, i32 %div2.i
  %24 = ptrtoint ptr %add.ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i90, align 4
  %or.i = or i32 %25, %shl.i
  store i32 %or.i, ptr %add.ptr.i90, align 4
  br label %cleanup

if.end69:                                         ; preds = %xsk_buff_dma_sync_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 4
  %28 = ptrtoint ptr %cqe_bcnt32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cqe_bcnt32, align 4
  %call71 = call fastcc ptr @mlx5e_xsk_construct_skb(ptr noundef %rq, ptr noundef %27, i32 noundef %29)
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then66, %if.then57.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call71, %if.end69 ], [ null, %if.then66 ], [ null, %if.then57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cqe_bcnt32) #3
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_xdp_handle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5e_xsk_construct_skb(ptr nocapture noundef readonly %rq, ptr nocapture noundef readonly %data, i32 noundef %cqe_bcnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %napi, align 4
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %1, i32 noundef %cqe_bcnt, i32 noundef 2592) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 4
  %buff_alloc_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %buff_alloc_err to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %buff_alloc_err, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %buff_alloc_err, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i9 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %cqe_bcnt) #3
  %6 = call ptr @memcpy(ptr %call.i9, ptr %data, i32 %cqe_bcnt)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_xsk_skb_from_cqe_linear(ptr noundef %rq, ptr nocapture noundef readonly %cqe, ptr nocapture noundef readonly %wi, i32 noundef %cqe_bcnt) local_unnamed_addr #0 align 64 {
entry:
  %cqe_bcnt.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cqe_bcnt.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cqe_bcnt, ptr %cqe_bcnt.addr, align 4
  %1 = ptrtoint ptr %wi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wi, align 4
  %3 = getelementptr inbounds %struct.mlx5e_dma_info, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %offset = getelementptr inbounds %struct.mlx5e_wqe_frag_info, ptr %wi, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b69 = load i1, ptr @mlx5e_xsk_skb_from_cqe_linear.__already_done, align 1
  br i1 %.b69, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !15

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @mlx5e_xsk_skb_from_cqe_linear.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef null) #3
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %cqe_bcnt.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cqe_bcnt.addr, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %data_end to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %data_end, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 1
  %data_meta.i = getelementptr inbounds %struct.xdp_buff, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %data_meta.i, align 4
  %xsk_pool = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 25
  %14 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xsk_pool, align 8
  %dma_need_sync.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %dma_need_sync.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dma_need_sync.i, align 2, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end28.xsk_buff_dma_sync_for_cpu.exit_crit_edge, label %if.end.i

if.end28.xsk_buff_dma_sync_for_cpu.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %xsk_buff_dma_sync_for_cpu.exit

if.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xp_dma_sync_for_cpu_slow(ptr noundef %5) #3
  br label %xsk_buff_dma_sync_for_cpu.exit

xsk_buff_dma_sync_for_cpu.exit:                   ; preds = %if.end.i, %if.end28.xsk_buff_dma_sync_for_cpu.exit_crit_edge
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %19) #3, !srcloc !17
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 23
  %20 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %21, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp.not = icmp eq i8 %.mask, 32
  br i1 %cmp.not, label %if.end45, label %if.then44, !prof !15

if.then44:                                        ; preds = %xsk_buff_dma_sync_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #5
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats, align 4
  %wqe_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %wqe_err to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %wqe_err, align 8
  %inc = add i64 %25, 1
  store i64 %inc, ptr %wqe_err, align 8
  br label %cleanup

if.end45:                                         ; preds = %xsk_buff_dma_sync_for_cpu.exit
  %call46 = call zeroext i1 @mlx5e_xdp_handle(ptr noundef %rq, ptr noundef null, ptr noundef nonnull %cqe_bcnt.addr, ptr noundef %5) #3
  br i1 %call46, label %if.end45.cleanup_crit_edge, label %if.end54, !prof !15

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end54:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %28 = ptrtoint ptr %cqe_bcnt.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cqe_bcnt.addr, align 4
  %call56 = call fastcc ptr @mlx5e_xsk_construct_skb(ptr noundef %rq, ptr noundef %27, i32 noundef %29)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end45.cleanup_crit_edge, %if.then44
  %retval.0 = phi ptr [ null, %if.then44 ], [ %call56, %if.end54 ], [ null, %if.end45.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_sync_for_cpu_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c", i32 46, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c", i32 92, i32 2}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i8 0, i8 2}
!17 = !{i64 1043027}
