; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.213, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.211, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.211 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.213 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.212, i32, i32 }
%union.anon.212 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5e_rq = type { %union.anon.214, %struct.anon.228, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.214 = type { %struct.anon.221 }
%struct.anon.221 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.223 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.194 }
%union.anon.194 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.222, i64, i32, [28 x i8] }
%union.anon.222 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.223 = type { %struct.anon.224 }
%struct.anon.224 = type { %struct.anon.225, [0 x %struct.mlx5_mtt] }
%struct.anon.225 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.228 = type { i16, i32, i8 }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.217, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.220, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.217 = type { %struct.anon.218 }
%struct.anon.218 = type { i8, i8, i16, i32 }
%union.anon.220 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.229, i32 }
%union.anon.229 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.mlx5e_dma_info = type { i32, %union.anon.216 }
%union.anon.216 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.246, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.246 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.232, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.232 = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_xmit_data = type { i32, ptr, i32 }
%struct.mlx5e_xdp_info = type { i32, %union.anon.243 }
%union.anon.243 = type { %struct.anon.245 }
%struct.anon.245 = type { ptr, %struct.mlx5e_dma_info }
%struct.xdp_desc = type { i64, i32, i32 }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }
%struct.mlx5e_xdp_wqe_info = type { i8, i8 }
%struct.mlx5_buf_list = type { ptr, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_xsk_wakeup(ptr noundef %dev, i32 noundef %qid, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr i8, ptr %dev, i32 6016
  %state.i = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_channels.i = getelementptr i8, ptr %dev, i32 6032
  %3 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_channels.i, align 4
  %conv.i = zext i16 %4 to i32
  %conv1.i = and i32 %qid, 65535
  %sub.i = sub nsw i32 %conv1.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %5 = icmp ult i32 %sub.i, %conv.i
  br i1 %5, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 128
  %idxprom = and i32 %sub.i, 65535
  %arrayidx = getelementptr ptr, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %state = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool19.not = icmp eq i32 %and1.i, 0
  br i1 %tobool19.not, label %if.end15.cleanup_crit_edge, label %if.end29, !prof !9

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  %state.i66 = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 6, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %if.end29
  %12 = ptrtoint ptr %state.i66 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i66, align 8
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i67, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i67:                                       ; preds = %do.body.i
  %and2.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then31, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i67
  %or.i = or i32 %13, 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i66, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !10
  tail call void @llvm.prefetch.p0(ptr %state.i66, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end5.i
  %14 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i66, i32 %13, i32 %or.i) #5, !srcloc !11
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  %cmp.not.i = icmp eq i32 %asmresult1.i.i, %13
  br i1 %cmp.not.i, label %__cmpxchg.exit.i.cleanup_crit_edge, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %if.end.i67
  %async_icosq = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17
  %state32 = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 10
  %15 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state32, align 4
  %and1.i65 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i65)
  %tobool34.not = icmp eq i32 %and1.i65, 0
  br i1 %tobool34.not, label %if.then31.cleanup_crit_edge, label %if.end44, !prof !9

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.then31
  %call47 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %state32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %async_icosq_lock = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %async_icosq_lock) #5
  tail call void @mlx5e_trigger_irq(ptr noundef %async_icosq) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_icosq_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end44.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %__cmpxchg.exit.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup_crit_edge ], [ -6, %if.end15.cleanup_crit_edge ], [ 0, %if.then31.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ 0, %if.end50 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %__cmpxchg.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_trigger_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_xsk_tx(ptr noundef %sq, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %xdptxd = alloca %struct.mlx5e_xmit_data, align 4
  %xdpi = alloca %struct.mlx5e_xdp_info, align 4
  %desc = alloca %struct.xdp_desc, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xsk_pool = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 9
  %0 = ptrtoint ptr %xsk_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xsk_pool, align 128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %xdptxd) #5
  %2 = ptrtoint ptr %xdptxd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %xdptxd, align 4, !annotation !13
  %3 = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !13
  %5 = getelementptr inbounds %struct.mlx5e_xmit_data, ptr %xdptxd, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xdpi) #5
  %7 = getelementptr inbounds i8, ptr %xdpi, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  %9 = ptrtoint ptr %xdpi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %xdpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not84 = icmp eq i32 %budget, 0
  br i1 %tobool.not84, label %entry.if.end36_crit_edge, label %for.body.lr.ph

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

for.body.lr.ph:                                   ; preds = %entry
  %xmit_xdp_frame_check = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 12
  %10 = getelementptr inbounds %struct.xdp_desc, ptr %desc, i32 0, i32 1
  %dma_need_sync.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %1, i32 0, i32 25
  %xmit_xdp_frame = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 13
  %mpwqe = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6
  %11 = ptrtoint ptr %xmit_xdp_frame_check to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xmit_xdp_frame_check, align 4
  %call97 = call i32 %12(ptr noundef %sq) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  %13 = call ptr @memset(ptr %desc, i32 255, i32 16)
  br i1 %cmp98, label %for.body.lr.ph.cleanup_crit_edge, label %for.body.lr.ph.if.end_crit_edge, !prof !9

for.body.lr.ph.if.end_crit_edge:                  ; preds = %for.body.lr.ph
  br label %if.end

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc
  %14 = ptrtoint ptr %xmit_xdp_frame_check to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xmit_xdp_frame_check, align 4
  %call = call i32 %15(ptr noundef %sq) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %16 = call ptr @memset(ptr %desc, i32 255, i32 16)
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.if.end_crit_edge, !prof !9

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.lr.ph.if.end_crit_edge
  %cmp102 = phi i1 [ %cmp, %for.body.if.end_crit_edge ], [ %cmp98, %for.body.lr.ph.if.end_crit_edge ]
  %call101 = phi i32 [ %call, %for.body.if.end_crit_edge ], [ %call97, %for.body.lr.ph.if.end_crit_edge ]
  %budget.addr.085100 = phi i32 [ %dec, %for.body.if.end_crit_edge ], [ %budget, %for.body.lr.ph.if.end_crit_edge ]
  %flush.0.off08699 = phi i1 [ true, %for.body.if.end_crit_edge ], [ false, %for.body.lr.ph.if.end_crit_edge ]
  %call3 = call zeroext i1 @xsk_tx_peek_desc(ptr noundef %1, ptr noundef nonnull %desc) #5
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %desc, align 8
  %call.i = call i32 @xp_raw_get_dma(ptr noundef %1, i64 noundef %18) #5
  %19 = ptrtoint ptr %xdptxd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %xdptxd, align 4
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %desc, align 8
  %call.i71 = call ptr @xp_raw_get_data(ptr noundef %1, i64 noundef %21) #5
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i71, ptr %3, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 8
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %5, align 4
  %26 = ptrtoint ptr %dma_need_sync.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dma_need_sync.i.i, align 2, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.end5.xsk_buff_raw_dma_sync_for_device.exit_crit_edge, label %if.end.i.i

if.end5.xsk_buff_raw_dma_sync_for_device.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %xsk_buff_raw_dma_sync_for_device.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %xdptxd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xdptxd, align 4
  call void @xp_dma_sync_for_device_slow(ptr noundef %1, i32 noundef %29, i32 noundef %24) #5
  br label %xsk_buff_raw_dma_sync_for_device.exit

xsk_buff_raw_dma_sync_for_device.exit:            ; preds = %if.end.i.i, %if.end5.xsk_buff_raw_dma_sync_for_device.exit_crit_edge
  %30 = ptrtoint ptr %xmit_xdp_frame to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xmit_xdp_frame, align 8
  %call12 = call zeroext i1 %31(ptr noundef %sq, ptr noundef nonnull %xdptxd, ptr noundef nonnull %xdpi, i32 noundef %call101) #5
  br i1 %call12, label %xsk_buff_raw_dma_sync_for_device.exit.for.inc_crit_edge, label %if.then22, !prof !15

xsk_buff_raw_dma_sync_for_device.exit.for.inc_crit_edge: ; preds = %xsk_buff_raw_dma_sync_for_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then22:                                        ; preds = %xsk_buff_raw_dma_sync_for_device.exit
  %32 = ptrtoint ptr %mpwqe to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mpwqe, align 4
  %tobool23.not = icmp eq ptr %33, null
  br i1 %tobool23.not, label %if.then22.if.end25_crit_edge, label %if.then24

if.then22.if.end25_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlx5e_xdp_mpwqe_complete(ptr noundef %sq) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then22.if.end25_crit_edge
  call fastcc void @mlx5e_xsk_tx_post_err(ptr noundef %sq, ptr noundef nonnull %xdpi)
  br label %for.inc

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge
  %flush.0.off086.lcssa = phi i1 [ false, %for.body.lr.ph.cleanup_crit_edge ], [ true, %for.body.cleanup_crit_edge ], [ %flush.0.off08699, %if.end.cleanup_crit_edge ]
  %cmp.lcssa = phi i1 [ %cmp98, %for.body.lr.ph.cleanup_crit_edge ], [ %cmp, %for.body.cleanup_crit_edge ], [ %cmp102, %if.end.cleanup_crit_edge ]
  %34 = xor i1 %cmp.lcssa, true
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #5
  br i1 %flush.0.off086.lcssa, label %cleanup.if.then30_crit_edge, label %cleanup.if.end36_crit_edge

cleanup.if.end36_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

cleanup.if.then30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

for.inc:                                          ; preds = %if.end25, %xsk_buff_raw_dma_sync_for_device.exit.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #5
  %dec = add i32 %budget.addr.085100, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %tobool.not84, label %for.end.if.end36_crit_edge, label %for.end.if.then30_crit_edge

for.end.if.then30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then30:                                        ; preds = %for.end.if.then30_crit_edge, %cleanup.if.then30_crit_edge
  %tobool.not82 = phi i1 [ false, %cleanup.if.then30_crit_edge ], [ true, %for.end.if.then30_crit_edge ]
  %work_done.2.off079 = phi i1 [ %34, %cleanup.if.then30_crit_edge ], [ true, %for.end.if.then30_crit_edge ]
  %mpwqe31 = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 6
  %35 = ptrtoint ptr %mpwqe31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mpwqe31, align 4
  %tobool33.not = icmp eq ptr %36, null
  br i1 %tobool33.not, label %if.then30.if.end35_crit_edge, label %if.then34

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlx5e_xdp_mpwqe_complete(ptr noundef %sq) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then30.if.end35_crit_edge
  %doorbell_cseg.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 5
  %37 = ptrtoint ptr %doorbell_cseg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %doorbell_cseg.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end35.mlx5e_xmit_xdp_doorbell.exit_crit_edge, label %if.then.i

if.end35.mlx5e_xmit_xdp_doorbell.exit_crit_edge:  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xmit_xdp_doorbell.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %pc.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 4
  %39 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pc.i, align 4
  %uar_map.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 15
  %41 = ptrtoint ptr %uar_map.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %uar_map.i, align 64
  %fm_ce_se.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %38, i32 0, i32 4
  %43 = ptrtoint ptr %fm_ce_se.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fm_ce_se.i.i, align 1
  %45 = or i8 %44, 8
  store i8 %45, ptr %fm_ce_se.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !16
  %conv2.i.i = zext i16 %40 to i32
  %db.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %db.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv2.i.i, ptr %47, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %38, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %50) #5, !srcloc !18
  %arrayidx1.i.i.i = getelementptr i32, ptr %38, i32 1
  %51 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %52) #5, !srcloc !18
  %53 = ptrtoint ptr %doorbell_cseg.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %doorbell_cseg.i, align 8
  br label %mlx5e_xmit_xdp_doorbell.exit

mlx5e_xmit_xdp_doorbell.exit:                     ; preds = %if.then.i, %if.end35.mlx5e_xmit_xdp_doorbell.exit_crit_edge
  call void @xsk_tx_release(ptr noundef %1) #5
  br label %if.end36

if.end36:                                         ; preds = %mlx5e_xmit_xdp_doorbell.exit, %for.end.if.end36_crit_edge, %cleanup.if.end36_crit_edge, %entry.if.end36_crit_edge
  %tobool.not81 = phi i1 [ false, %cleanup.if.end36_crit_edge ], [ %tobool.not82, %mlx5e_xmit_xdp_doorbell.exit ], [ true, %for.end.if.end36_crit_edge ], [ true, %entry.if.end36_crit_edge ]
  %work_done.2.off078 = phi i1 [ %34, %cleanup.if.end36_crit_edge ], [ %work_done.2.off079, %mlx5e_xmit_xdp_doorbell.exit ], [ true, %for.end.if.end36_crit_edge ], [ true, %entry.if.end36_crit_edge ]
  %work_done.2.off078.not = xor i1 %work_done.2.off078, true
  %lnot39 = select i1 %tobool.not81, i1 true, i1 %work_done.2.off078.not
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xdpi) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xdptxd) #5
  ret i1 %lnot39
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xsk_tx_peek_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_xdp_mpwqe_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mlx5e_xsk_tx_post_err(ptr nocapture noundef %sq, ptr nocapture noundef readonly %xdpi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10
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
  %db = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14
  %5 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %db, align 4
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %6, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx, align 1
  %num_pkts = getelementptr %struct.mlx5e_xdp_wqe_info, ptr %6, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %num_pkts to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %num_pkts, align 1
  %sqn = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 16
  %9 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sqn, align 4
  %11 = load i16, ptr %pc, align 2
  %12 = load i32, ptr %sz_m1.i, align 4
  %13 = trunc i32 %12 to i16
  %conv1.i.i = and i16 %11, %13
  %conv.i.i = zext i16 %conv1.i.i to i32
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 3
  %14 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %15 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i, %conv.i.i.i
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 6
  %16 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %17 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %18 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %19, i32 %shr.i.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 4
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 2
  %22 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %23 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 10, i32 0, i32 5
  %24 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %25 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %shl.i.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 16)
  %27 = load i16, ptr %pc, align 2
  %conv.i = zext i16 %27 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl.i, ptr %add.ptr.i.i.i, align 4
  %shl2.i = shl i32 %10, 8
  %or3.i = or i32 %shl2.i, 1
  %qpn_ds.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or3.i, ptr %qpn_ds.i, align 4
  %30 = load i16, ptr %pc, align 2
  %inc.i = add i16 %30, 1
  store i16 %inc.i, ptr %pc, align 2
  %xdpi_fifo = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1
  %pc.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1, i32 2
  %31 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pc.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %inc.i13 = add i32 %34, 1
  store i32 %inc.i13, ptr %32, align 4
  %mask.i = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 14, i32 1, i32 3
  %35 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %36, %34
  %37 = ptrtoint ptr %xdpi_fifo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xdpi_fifo, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_xdp_info, ptr %38, i32 %and.i
  %39 = call ptr @memcpy(ptr %arrayidx.i, ptr %xdpi, i32 16)
  %doorbell_cseg = getelementptr inbounds %struct.mlx5e_xdpsq, ptr %sq, i32 0, i32 5
  %40 = ptrtoint ptr %doorbell_cseg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i.i.i, ptr %doorbell_cseg, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_tx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xp_raw_get_dma(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xp_raw_get_data(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xp_dma_sync_for_device_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155658022}
!11 = !{i64 1053400, i64 1053421, i64 1053444, i64 1053463, i64 1053482}
!12 = !{i64 2155658427}
!13 = !{!"auto-init"}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2160233543}
!17 = !{i64 2160233737}
!18 = !{i64 6589227}
