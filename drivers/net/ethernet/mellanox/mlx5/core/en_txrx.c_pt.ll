; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.217, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.215, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.anon.215 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.217 = type { ptr }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.216, i32, i32 }
%union.anon.216 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5e_icosq_wqe_info = type { i8, i8, %union.anon.218 }
%union.anon.218 = type { %struct.anon.219 }
%struct.anon.219 = type { ptr }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon }
%union.anon = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5e_ch_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.253, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.anon.253 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [48 x i8], i64, i64, i64, [104 x i8] }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@mlx5e_napi_poll.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mlx5e_napi_poll.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_napi_poll.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: cqn=0x%.6x event=0x%.2x\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.mlx5e_cq_error_event = private unnamed_addr constant [21 x i8] c"mlx5e_cq_error_event\00", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 132, i32 12 }
@___asan_gen_.16 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 259, i32 21 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 695, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 108, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 723, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_trigger_irq(ptr nocapture noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wq1 = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6
  %pc = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 1
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pc, align 2
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %4 = trunc i32 %3 to i16
  %conv1.i = and i16 %1, %4
  %db = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 5
  %5 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %db, align 128
  %idxprom = zext i16 %conv1.i to i32
  %arrayidx = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %6, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %8 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx, align 1
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0.arrayidx.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx, i32 2
  %9 = ptrtoint ptr %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0.arrayidx.sroa_idx.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0.arrayidx.sroa_idx.sroa_idx, align 2
  %sqn = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 8
  %10 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sqn, align 4
  %12 = load i16, ptr %pc, align 2
  %13 = load i32, ptr %sz_m1.i, align 4
  %14 = trunc i32 %13 to i16
  %conv1.i.i = and i16 %12, %14
  %conv.i.i = zext i16 %conv1.i.i to i32
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 3
  %15 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %16 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i, %conv.i.i.i
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 6
  %17 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %18 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %19 = ptrtoint ptr %wq1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wq1, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %20, i32 %shr.i.i.i
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 2
  %23 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %24 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 5
  %25 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %26 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %shl.i.i.i
  %27 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 16)
  %28 = load i16, ptr %pc, align 2
  %conv.i = zext i16 %28 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl.i, ptr %add.ptr.i.i.i, align 4
  %shl2.i = shl i32 %11, 8
  %or3.i = or i32 %shl2.i, 1
  %qpn_ds.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or3.i, ptr %qpn_ds.i, align 4
  %31 = load i16, ptr %pc, align 2
  %inc.i = add i16 %31, 1
  store i16 %inc.i, ptr %pc, align 2
  %uar_map = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 7
  %32 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uar_map, align 32
  %fm_ce_se.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %fm_ce_se.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fm_ce_se.i, align 1
  %36 = or i8 %35, 8
  store i8 %36, ptr %fm_ce_se.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  %conv2.i = zext i16 %inc.i to i32
  %db.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %db.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv2.i, ptr %38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %41) #5, !srcloc !34
  %42 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qpn_ds.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #5, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_napi_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -12040
  %stats = getelementptr i8, ptr %napi, i32 5928
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 16
  %xsksq1 = getelementptr i8, ptr %napi, i32 4472
  %xskrq2 = getelementptr i8, ptr %napi, i32 1016
  %2 = tail call i32 @llvm.read_register.i32(metadata !22) #5
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !35
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %qos_sqs5 = getelementptr i8, ptr %napi, i32 -8
  %6 = ptrtoint ptr %qos_sqs5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %qos_sqs5, align 128
  %call = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b410 = load i1, ptr @mlx5e_napi_poll.__warned, align 1
  br i1 %.b410, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mlx5e_napi_poll.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 132, ptr noundef nonnull @.str.1) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %state = getelementptr i8, ptr %napi, i32 5944
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool15.not = icmp eq i32 %and1.i, 0
  %poll = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %poll to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %poll, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %poll, align 8
  %num_tc = getelementptr i8, ptr %napi, i32 238
  %12 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_tc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp527.not = icmp eq i8 %13, 0
  br i1 %cmp527.not, label %do.end12.for.end_crit_edge, label %for.body.lr.ph

do.end12.for.end_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end12
  %sq = getelementptr i8, ptr %napi, i32 -7816
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0529 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %for.body.for.body_crit_edge ]
  %busy.0.off0528 = phi i1 [ false, %for.body.lr.ph ], [ %or409, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.mlx5e_txqsq], ptr %sq, i32 0, i32 %i.0529
  %cq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx, i32 0, i32 10
  %call17 = tail call zeroext i1 @mlx5e_poll_tx_cq(ptr noundef %cq, i32 noundef %budget) #5
  %or409 = or i1 %busy.0.off0528, %call17
  %inc23 = add nuw nsw i32 %i.0529, 1
  %14 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_tc, align 2
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc23, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end12.for.end_crit_edge
  %busy.0.off0.lcssa = phi i1 [ false, %do.end12.for.end_crit_edge ], [ %or409, %for.body.for.end_crit_edge ]
  %tobool24.not = icmp eq ptr %7, null
  br i1 %tobool24.not, label %for.end.if.end77_crit_edge, label %do.end31, !prof !36

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

do.end31:                                         ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !37
  %qos_sqs_size38 = getelementptr i8, ptr %napi, i32 236
  %16 = ptrtoint ptr %qos_sqs_size38 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load volatile i16, ptr %qos_sqs_size38, align 4
  %conv40 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp41530.not = icmp eq i16 %17, 0
  br i1 %cmp41530.not, label %do.end31.if.end77_crit_edge, label %do.end31.for.body43_crit_edge

do.end31.for.body43_crit_edge:                    ; preds = %do.end31
  br label %for.body43

do.end31.if.end77_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

for.body43:                                       ; preds = %if.end73.for.body43_crit_edge, %do.end31.for.body43_crit_edge
  %i.1532 = phi i32 [ %inc75, %if.end73.for.body43_crit_edge ], [ 0, %do.end31.for.body43_crit_edge ]
  %busy.1.off0531 = phi i1 [ %busy.2.off0, %if.end73.for.body43_crit_edge ], [ %busy.0.off0.lcssa, %do.end31.for.body43_crit_edge ]
  %arrayidx49 = getelementptr ptr, ptr %7, i32 %i.1532
  %18 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx49, align 4
  %call51 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %for.body43.do.end61_crit_edge

for.body43.do.end61_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61

land.lhs.true53:                                  ; preds = %for.body43
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true53.do.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b388408 = load i1, ptr @mlx5e_napi_poll.__warned.2, align 1
  br i1 %.b388408, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mlx5e_napi_poll.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 146, ptr noundef nonnull @.str.1) #5
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true53.do.end61_crit_edge, %for.body43.do.end61_crit_edge
  %tobool63.not = icmp eq ptr %19, null
  br i1 %tobool63.not, label %do.end61.if.end73_crit_edge, label %if.then64

do.end61.if.end73_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then64:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  %cq65 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %19, i32 0, i32 10
  %call66 = tail call zeroext i1 @mlx5e_poll_tx_cq(ptr noundef %cq65, i32 noundef %budget) #5
  %or70407 = or i1 %busy.1.off0531, %call66
  br label %if.end73

if.end73:                                         ; preds = %if.then64, %do.end61.if.end73_crit_edge
  %busy.2.off0 = phi i1 [ %or70407, %if.then64 ], [ %busy.1.off0531, %do.end61.if.end73_crit_edge ]
  %inc75 = add nuw nsw i32 %i.1532, 1
  %exitcond.not = icmp eq i32 %inc75, %conv40
  br i1 %exitcond.not, label %if.end73.if.end77_crit_edge, label %if.end73.for.body43_crit_edge

if.end73.for.body43_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body43

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end77:                                         ; preds = %if.end73.if.end77_crit_edge, %do.end31.if.end77_crit_edge, %for.end.if.end77_crit_edge
  %busy.3.off0 = phi i1 [ %busy.0.off0.lcssa, %for.end.if.end77_crit_edge ], [ %busy.0.off0.lcssa, %do.end31.if.end77_crit_edge ], [ %busy.2.off0, %if.end73.if.end77_crit_edge ]
  %qos_sqs_size.0 = phi i16 [ -1, %for.end.if.end77_crit_edge ], [ 0, %do.end31.if.end77_crit_edge ], [ %17, %if.end73.if.end77_crit_edge ]
  %cq78 = getelementptr i8, ptr %napi, i32 504
  %call79 = tail call zeroext i1 @mlx5e_poll_xdpsq_cq(ptr noundef %cq78) #5
  %or83396 = or i1 %busy.3.off0, %call79
  %xdp = getelementptr i8, ptr %napi, i32 -4
  %20 = ptrtoint ptr %xdp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %xdp, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool86.not = icmp eq i8 %21, 0
  br i1 %tobool86.not, label %if.end77.if.end96_crit_edge, label %if.then87

if.end77.if.end96_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then87:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %cq88 = getelementptr i8, ptr %napi, i32 -8328
  %call89 = tail call zeroext i1 @mlx5e_poll_xdpsq_cq(ptr noundef %cq88) #5
  %or93406 = or i1 %or83396, %call89
  br label %if.end96

if.end96:                                         ; preds = %if.then87, %if.end77.if.end96_crit_edge
  %busy.4.in = phi i1 [ %or93406, %if.then87 ], [ %or83396, %if.end77.if.end96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool97.not = icmp eq i32 %budget, 0
  br i1 %tobool97.not, label %if.end96.if.end129_crit_edge, label %if.then104, !prof !39

if.end96.if.end129_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then104:                                       ; preds = %if.end96
  br i1 %tobool15.not, label %if.then104.if.end109_crit_edge, label %if.then106

if.then104.if.end109_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then106:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  %cq107 = getelementptr i8, ptr %napi, i32 1272
  %call108 = tail call i32 @mlx5e_poll_rx_cq(ptr noundef %cq107, i32 noundef %budget) #5
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.then104.if.end109_crit_edge
  %work_done.0 = phi i32 [ %call108, %if.then106 ], [ 0, %if.then104.if.end109_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %budget)
  %tobool110.not = icmp eq i32 %work_done.0, %budget
  br i1 %tobool110.not, label %if.end109.if.end121_crit_edge, label %if.then117, !prof !39

if.end109.if.end121_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then117:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 %budget, %work_done.0
  %cq118 = getelementptr i8, ptr %napi, i32 -11784
  %call120 = tail call i32 @mlx5e_poll_rx_cq(ptr noundef %cq118, i32 noundef %sub) #5
  %add = add i32 %call120, %work_done.0
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.end109.if.end121_crit_edge
  %work_done.1 = phi i32 [ %add, %if.then117 ], [ %budget, %if.end109.if.end121_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.1, i32 %budget)
  %cmp122 = icmp eq i32 %work_done.1, %budget
  %or126405 = or i1 %busy.4.in, %cmp122
  br label %if.end129

if.end129:                                        ; preds = %if.end121, %if.end96.if.end129_crit_edge
  %busy.5.off0 = phi i1 [ %or126405, %if.end121 ], [ %busy.4.in, %if.end96.if.end129_crit_edge ]
  %work_done.2 = phi i32 [ %work_done.1, %if.end121 ], [ 0, %if.end96.if.end129_crit_edge ]
  %icosq = getelementptr i8, ptr %napi, i32 -648
  %cq130 = getelementptr i8, ptr %napi, i32 -520
  %call131 = tail call i32 @mlx5e_poll_ico_cq(ptr noundef %cq130) #5
  %cq132 = getelementptr i8, ptr %napi, i32 5368
  %call133 = tail call i32 @mlx5e_poll_ico_cq(ptr noundef %cq132) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end129.if.end138_crit_edge, label %if.then135

if.end129.if.end138_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138

if.then135:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  %state137 = getelementptr i8, ptr %napi, i32 5668
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state137) #5
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end129.if.end138_crit_edge
  br i1 %tobool97.not, label %if.end138.if.end154_crit_edge, label %mlx5e_ktls_rx_pending_resync_list.exit

if.end138.if.end154_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

mlx5e_ktls_rx_pending_resync_list.exit:           ; preds = %if.end138
  %state.i = getelementptr i8, ptr %napi, i32 5668
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %24 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.i.not = icmp eq i32 %24, 0
  br i1 %tobool1.i.not, label %mlx5e_ktls_rx_pending_resync_list.exit.if.end154_crit_edge, label %if.then146, !prof !36

mlx5e_ktls_rx_pending_resync_list.exit.if.end154_crit_edge: ; preds = %mlx5e_ktls_rx_pending_resync_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

if.then146:                                       ; preds = %mlx5e_ktls_rx_pending_resync_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call147 = tail call zeroext i1 @mlx5e_ktls_rx_handle_resync_list(ptr noundef %add.ptr, i32 noundef %budget) #5
  %or151404 = or i1 %busy.5.off0, %call147
  br label %if.end154

if.end154:                                        ; preds = %if.then146, %mlx5e_ktls_rx_pending_resync_list.exit.if.end154_crit_edge, %if.end138.if.end154_crit_edge
  %busy.6.off0 = phi i1 [ %or151404, %if.then146 ], [ %busy.5.off0, %mlx5e_ktls_rx_pending_resync_list.exit.if.end154_crit_edge ], [ %busy.5.off0, %if.end138.if.end154_crit_edge ]
  %post_wqes = getelementptr i8, ptr %napi, i32 -9192
  %25 = ptrtoint ptr %post_wqes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %post_wqes, align 32
  %call155 = tail call zeroext i1 %26(ptr noundef %add.ptr) #5
  %or159400 = or i1 %busy.6.off0, %call155
  br i1 %tobool15.not, label %if.end154.if.end179_crit_edge, label %if.then163

if.end154.if.end179_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end179

if.then163:                                       ; preds = %if.end154
  %cq164 = getelementptr i8, ptr %napi, i32 4728
  %call165 = tail call zeroext i1 @mlx5e_poll_xdpsq_cq(ptr noundef %cq164) #5
  %or169403 = or i1 %or159400, %call165
  %xsk_pool.i.i = getelementptr i8, ptr %napi, i32 4984
  %27 = ptrtoint ptr %xsk_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xsk_pool.i.i, align 128
  %call.i.i = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %28) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then163.mlx5e_xsk_update_tx_wakeup.exit.i_crit_edge

if.then163.mlx5e_xsk_update_tx_wakeup.exit.i_crit_edge: ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_update_tx_wakeup.exit.i

if.end.i.i:                                       ; preds = %if.then163
  %pc.i.i = getelementptr i8, ptr %napi, i32 4604
  %29 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pc.i.i, align 4
  %cc.i.i = getelementptr i8, ptr %napi, i32 4476
  %31 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp.not.i.i = icmp eq i16 %30, %32
  %33 = ptrtoint ptr %xsk_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xsk_pool.i.i, align 128
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xsk_clear_tx_need_wakeup(ptr noundef %34) #5
  br label %mlx5e_xsk_update_tx_wakeup.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xsk_set_tx_need_wakeup(ptr noundef %34) #5
  br label %mlx5e_xsk_update_tx_wakeup.exit.i

mlx5e_xsk_update_tx_wakeup.exit.i:                ; preds = %if.else.i.i, %if.then3.i.i, %if.then163.mlx5e_xsk_update_tx_wakeup.exit.i_crit_edge
  %call.i413 = tail call zeroext i1 @mlx5e_xsk_tx(ptr noundef %xsksq1, i32 noundef 64) #5
  %35 = ptrtoint ptr %xsk_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xsk_pool.i.i, align 128
  %call.i22.i = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %36) #5
  br i1 %call.i22.i, label %if.end.i26.i, label %mlx5e_xsk_update_tx_wakeup.exit.i.mlx5e_xsk_update_tx_wakeup.exit29.i_crit_edge

mlx5e_xsk_update_tx_wakeup.exit.i.mlx5e_xsk_update_tx_wakeup.exit29.i_crit_edge: ; preds = %mlx5e_xsk_update_tx_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_xsk_update_tx_wakeup.exit29.i

if.end.i26.i:                                     ; preds = %mlx5e_xsk_update_tx_wakeup.exit.i
  %pc.i23.i = getelementptr i8, ptr %napi, i32 4604
  %37 = ptrtoint ptr %pc.i23.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pc.i23.i, align 4
  %cc.i24.i = getelementptr i8, ptr %napi, i32 4476
  %39 = ptrtoint ptr %cc.i24.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cc.i24.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp.not.i25.i = icmp eq i16 %38, %40
  %41 = ptrtoint ptr %xsk_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xsk_pool.i.i, align 128
  br i1 %cmp.not.i25.i, label %if.else.i28.i, label %if.then3.i27.i

if.then3.i27.i:                                   ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xsk_clear_tx_need_wakeup(ptr noundef %42) #5
  br label %mlx5e_xsk_update_tx_wakeup.exit29.i

if.else.i28.i:                                    ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xsk_set_tx_need_wakeup(ptr noundef %42) #5
  br label %mlx5e_xsk_update_tx_wakeup.exit29.i

mlx5e_xsk_update_tx_wakeup.exit29.i:              ; preds = %if.else.i28.i, %if.then3.i27.i, %mlx5e_xsk_update_tx_wakeup.exit.i.mlx5e_xsk_update_tx_wakeup.exit29.i_crit_edge
  %post_wqes.i = getelementptr i8, ptr %napi, i32 3864
  %43 = ptrtoint ptr %post_wqes.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %post_wqes.i, align 32
  %call3.i = tail call zeroext i1 %44(ptr noundef %xskrq2) #5
  %xsk_pool.i30.i = getelementptr i8, ptr %napi, i32 4032
  %45 = ptrtoint ptr %xsk_pool.i30.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xsk_pool.i30.i, align 8
  %call.i31.i = tail call zeroext i1 @xsk_uses_need_wakeup(ptr noundef %46) #5
  br i1 %call.i31.i, label %if.end.i32.i, label %mlx5e_xsk_update_tx_wakeup.exit29.i.mlx5e_napi_xsk_post.exit_crit_edge

mlx5e_xsk_update_tx_wakeup.exit29.i.mlx5e_napi_xsk_post.exit_crit_edge: ; preds = %mlx5e_xsk_update_tx_wakeup.exit29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_napi_xsk_post.exit

if.end.i32.i:                                     ; preds = %mlx5e_xsk_update_tx_wakeup.exit29.i
  %47 = ptrtoint ptr %xsk_pool.i30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xsk_pool.i30.i, align 8
  br i1 %call3.i, label %if.then4.i.i, label %if.else.i33.i, !prof !39

if.then4.i.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xsk_set_rx_need_wakeup(ptr noundef %48) #5
  br label %mlx5e_napi_xsk_post.exit

if.else.i33.i:                                    ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xsk_clear_rx_need_wakeup(ptr noundef %48) #5
  br label %mlx5e_napi_xsk_post.exit

mlx5e_napi_xsk_post.exit:                         ; preds = %if.else.i33.i, %if.then4.i.i, %mlx5e_xsk_update_tx_wakeup.exit29.i.mlx5e_napi_xsk_post.exit_crit_edge
  %retval.0.i.i = phi i1 [ %call3.i, %mlx5e_xsk_update_tx_wakeup.exit29.i.mlx5e_napi_xsk_post.exit_crit_edge ], [ false, %if.else.i33.i ], [ false, %if.then4.i.i ]
  %or1020.i = or i1 %call.i413, %retval.0.i.i
  br label %if.end179

if.end179:                                        ; preds = %mlx5e_napi_xsk_post.exit, %if.end154.if.end179_crit_edge
  %busy_xsk.0.off0 = phi i1 [ %or1020.i, %mlx5e_napi_xsk_post.exit ], [ false, %if.end154.if.end179_crit_edge ]
  %busy.7.in = phi i1 [ %or169403, %mlx5e_napi_xsk_post.exit ], [ %or159400, %if.end154.if.end179_crit_edge ]
  %or184401 = or i1 %busy_xsk.0.off0, %busy.7.in
  br i1 %or184401, label %if.then188, label %if.end179.if.end206_crit_edge

if.end179.if.end206_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

if.then188:                                       ; preds = %if.end179
  %49 = tail call i32 @llvm.read_register.i32(metadata !22) #5
  %and.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i, align 4
  %aff_mask.i = getelementptr i8, ptr %napi, i32 5924
  %53 = ptrtoint ptr %aff_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %aff_mask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %55 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %52)
  %cmp.not.i.i.i.i = icmp ugt i32 %55, %52
  br i1 %cmp.not.i.i.i.i, label %if.then188.mlx5e_channel_no_affinity_change.exit_crit_edge, label %land.rhs.i.i.i.i

if.then188.mlx5e_channel_no_affinity_change.exit_crit_edge: ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_channel_no_affinity_change.exit

land.rhs.i.i.i.i:                                 ; preds = %if.then188
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.mlx5e_channel_no_affinity_change.exit_crit_edge, label %if.then.i.i.i.i, !prof !36

land.rhs.i.i.i.i.mlx5e_channel_no_affinity_change.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_channel_no_affinity_change.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %mlx5e_channel_no_affinity_change.exit

mlx5e_channel_no_affinity_change.exit:            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.mlx5e_channel_no_affinity_change.exit_crit_edge, %if.then188.mlx5e_channel_no_affinity_change.exit_crit_edge
  %div3.i.i.i = lshr i32 %52, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %54, i32 %div3.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %52, 31
  %58 = shl nuw i32 1, %and.i.i.i
  %59 = and i32 %57, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not = icmp eq i32 %59, 0
  br i1 %tobool.i.not, label %if.end197, label %mlx5e_channel_no_affinity_change.exit.out_crit_edge, !prof !39

mlx5e_channel_no_affinity_change.exit.out_crit_edge: ; preds = %mlx5e_channel_no_affinity_change.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end197:                                        ; preds = %mlx5e_channel_no_affinity_change.exit
  call void @__sanitizer_cov_trace_pc() #7
  %aff_change198 = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %aff_change198 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %aff_change198, align 8
  %inc199 = add i64 %61, 1
  store i64 %inc199, ptr %aff_change198, align 8
  %tobool97.not.not = xor i1 %tobool97.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.2, i32 %budget)
  %cmp202 = icmp eq i32 %work_done.2, %budget
  %or.cond = select i1 %tobool97.not.not, i1 %cmp202, i1 false
  %dec = sext i1 %or.cond to i32
  %spec.select411 = add i32 %work_done.2, %dec
  br label %if.end206

if.end206:                                        ; preds = %if.end197, %if.end179.if.end206_crit_edge
  %work_done.3 = phi i32 [ %work_done.2, %if.end179.if.end206_crit_edge ], [ %spec.select411, %if.end197 ]
  %call207 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.3) #5
  br i1 %call207, label %if.end217, label %if.end206.out_crit_edge, !prof !36

if.end206.out_crit_edge:                          ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end217:                                        ; preds = %if.end206
  %arm = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %arm to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arm, align 8
  %inc218 = add i64 %63, 1
  store i64 %inc218, ptr %arm, align 8
  %64 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_tc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp222535.not = icmp eq i8 %65, 0
  br i1 %cmp222535.not, label %if.end217.for.end232_crit_edge, label %for.body224.lr.ph

if.end217.for.end232_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end232

for.body224.lr.ph:                                ; preds = %if.end217
  %sq225 = getelementptr i8, ptr %napi, i32 -7816
  br label %for.body224

for.body224:                                      ; preds = %mlx5e_handle_tx_dim.exit.for.body224_crit_edge, %for.body224.lr.ph
  %i.2536 = phi i32 [ 0, %for.body224.lr.ph ], [ %inc231, %mlx5e_handle_tx_dim.exit.for.body224_crit_edge ]
  %arrayidx226 = getelementptr [8 x %struct.mlx5e_txqsq], ptr %sq225, i32 0, i32 %i.2536
  %stats1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 13
  %66 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %stats1.i, align 32
  %state.i414 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 22
  %68 = ptrtoint ptr %state.i414 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state.i414, align 4
  %70 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i415 = icmp eq i32 %70, 0
  br i1 %tobool.not.i415, label %for.body224.mlx5e_handle_tx_dim.exit_crit_edge, label %if.end.i, !prof !39

for.body224.mlx5e_handle_tx_dim.exit_crit_edge:   ; preds = %for.body224
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_handle_tx_dim.exit

if.end.i:                                         ; preds = %for.body224
  call void @__sanitizer_cov_trace_pc() #7
  %event_ctr.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %event_ctr.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %event_ctr.i, align 8
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %67, align 128
  %bytes.i = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %67, i32 0, i32 1
  %75 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %bytes.i, align 8
  %call.i.i416 = tail call i64 @ktime_get() #5
  %dim_sample.sroa.8.16.insert.ext.i = zext i16 %72 to i64
  %dim_sample.sroa.8.16.insert.shift.i = shl nuw i64 %dim_sample.sroa.8.16.insert.ext.i, 48
  %dim.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 3
  %.fca.0.insert.i = insertvalue [3 x i64] poison, i64 %call.i.i416, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext.i = and i64 %76, 4294967295
  %dim_sample.sroa.5.sroa.0.0.insert.ext.i = shl i64 %74, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert.i = or i64 %dim_sample.sroa.5.sroa.5.0.insert.ext.i, %dim_sample.sroa.5.sroa.0.0.insert.ext.i
  %.fca.1.insert.i = insertvalue [3 x i64] %.fca.0.insert.i, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert.i, 1
  %.fca.2.insert.i = insertvalue [3 x i64] %.fca.1.insert.i, i64 %dim_sample.sroa.8.16.insert.shift.i, 2
  tail call void @net_dim(ptr noundef %dim.i, [3 x i64] %.fca.2.insert.i) #5
  br label %mlx5e_handle_tx_dim.exit

mlx5e_handle_tx_dim.exit:                         ; preds = %if.end.i, %for.body224.mlx5e_handle_tx_dim.exit_crit_edge
  %mcq1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 10, i32 3
  %uar.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 10, i32 3, i32 4
  %77 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %uar.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %cc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 10, i32 0, i32 2
  %81 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cc.i, align 4
  %arm_sn.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 10, i32 3, i32 12
  %83 = ptrtoint ptr %arm_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arm_sn.i.i, align 4
  %and1.i.i = and i32 %82, 16777215
  %and.i.i417 = shl i32 %84, 28
  %shl.i.i = and i32 %and.i.i417, 805306368
  %or2.i.i = or i32 %shl.i.i, %and1.i.i
  %arm_db.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx226, i32 0, i32 10, i32 3, i32 3
  %85 = ptrtoint ptr %arm_db.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arm_db.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or2.i.i, ptr %86, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %mcq1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mcq1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or2.i.i) #5, !srcloc !34
  %add.ptr.i.i.i = getelementptr i8, ptr %80, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %89) #5, !srcloc !34
  %inc231 = add nuw nsw i32 %i.2536, 1
  %90 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %num_tc, align 2
  %conv221 = zext i8 %91 to i32
  %cmp222 = icmp ult i32 %inc231, %conv221
  br i1 %cmp222, label %mlx5e_handle_tx_dim.exit.for.body224_crit_edge, label %mlx5e_handle_tx_dim.exit.for.end232_crit_edge

mlx5e_handle_tx_dim.exit.for.end232_crit_edge:    ; preds = %mlx5e_handle_tx_dim.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end232

mlx5e_handle_tx_dim.exit.for.body224_crit_edge:   ; preds = %mlx5e_handle_tx_dim.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body224

for.end232:                                       ; preds = %mlx5e_handle_tx_dim.exit.for.end232_crit_edge, %if.end217.for.end232_crit_edge
  br i1 %tobool24.not, label %for.end232.if.end272_crit_edge, label %for.cond241.preheader, !prof !36

for.end232.if.end272_crit_edge:                   ; preds = %for.end232
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end272

for.cond241.preheader:                            ; preds = %for.end232
  %conv242 = zext i16 %qos_sqs_size.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %qos_sqs_size.0)
  %cmp243537.not = icmp eq i16 %qos_sqs_size.0, 0
  br i1 %cmp243537.not, label %for.cond241.preheader.if.end272_crit_edge, label %for.cond241.preheader.for.body245_crit_edge

for.cond241.preheader.for.body245_crit_edge:      ; preds = %for.cond241.preheader
  br label %for.body245

for.cond241.preheader.if.end272_crit_edge:        ; preds = %for.cond241.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end272

for.body245:                                      ; preds = %if.end268.for.body245_crit_edge, %for.cond241.preheader.for.body245_crit_edge
  %i.3538 = phi i32 [ %inc270, %if.end268.for.body245_crit_edge ], [ 0, %for.cond241.preheader.for.body245_crit_edge ]
  %arrayidx251 = getelementptr ptr, ptr %7, i32 %i.3538
  %92 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %arrayidx251, align 4
  %call253 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %land.lhs.true255, label %for.body245.do.end263_crit_edge

for.body245.do.end263_crit_edge:                  ; preds = %for.body245
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end263

land.lhs.true255:                                 ; preds = %for.body245
  %call256 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %land.lhs.true255.do.end263_crit_edge, label %land.lhs.true258

land.lhs.true255.do.end263_crit_edge:             ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end263

land.lhs.true258:                                 ; preds = %land.lhs.true255
  %.b389402 = load i1, ptr @mlx5e_napi_poll.__warned.3, align 1
  br i1 %.b389402, label %land.lhs.true258.do.end263_crit_edge, label %if.then260

land.lhs.true258.do.end263_crit_edge:             ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end263

if.then260:                                       ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mlx5e_napi_poll.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 212, ptr noundef nonnull @.str.1) #5
  br label %do.end263

do.end263:                                        ; preds = %if.then260, %land.lhs.true258.do.end263_crit_edge, %land.lhs.true255.do.end263_crit_edge, %for.body245.do.end263_crit_edge
  %tobool265.not = icmp eq ptr %93, null
  br i1 %tobool265.not, label %do.end263.if.end268_crit_edge, label %if.then266

do.end263.if.end268_crit_edge:                    ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end268

if.then266:                                       ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mlx5e_handle_tx_dim(ptr noundef nonnull %93)
  %cq267 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %93, i32 0, i32 10
  tail call fastcc void @mlx5e_cq_arm(ptr noundef %cq267)
  br label %if.end268

if.end268:                                        ; preds = %if.then266, %do.end263.if.end268_crit_edge
  %inc270 = add nuw nsw i32 %i.3538, 1
  %exitcond539.not = icmp eq i32 %inc270, %conv242
  br i1 %exitcond539.not, label %if.end268.if.end272_crit_edge, label %if.end268.for.body245_crit_edge

if.end268.for.body245_crit_edge:                  ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body245

if.end268.if.end272_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end272

if.end272:                                        ; preds = %if.end268.if.end272_crit_edge, %for.cond241.preheader.if.end272_crit_edge, %for.end232.if.end272_crit_edge
  %stats1.i418 = getelementptr i8, ptr %napi, i32 -11836
  %94 = ptrtoint ptr %stats1.i418 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %stats1.i418, align 4
  %state.i419 = getelementptr i8, ptr %napi, i32 -9184
  %96 = ptrtoint ptr %state.i419 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %state.i419, align 4
  %98 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i420 = icmp eq i32 %98, 0
  br i1 %tobool.not.i420, label %if.end272.mlx5e_handle_rx_dim.exit_crit_edge, label %if.end.i433, !prof !39

if.end272.mlx5e_handle_rx_dim.exit_crit_edge:     ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_handle_rx_dim.exit

if.end.i433:                                      ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #7
  %event_ctr.i421 = getelementptr i8, ptr %napi, i32 -11760
  %99 = ptrtoint ptr %event_ctr.i421 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %event_ctr.i421, align 8
  %101 = ptrtoint ptr %95 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %95, align 8
  %bytes.i422 = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %95, i32 0, i32 1
  %103 = ptrtoint ptr %bytes.i422 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %bytes.i422, align 8
  %call.i.i423 = tail call i64 @ktime_get() #5
  %dim_sample.sroa.8.16.insert.ext.i424 = zext i16 %100 to i64
  %dim_sample.sroa.8.16.insert.shift.i425 = shl nuw i64 %dim_sample.sroa.8.16.insert.ext.i424, 48
  %dim.i426 = getelementptr i8, ptr %napi, i32 -9168
  %.fca.0.insert.i427 = insertvalue [3 x i64] poison, i64 %call.i.i423, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext.i428 = and i64 %104, 4294967295
  %dim_sample.sroa.5.sroa.0.0.insert.ext.i429 = shl i64 %102, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert.i430 = or i64 %dim_sample.sroa.5.sroa.5.0.insert.ext.i428, %dim_sample.sroa.5.sroa.0.0.insert.ext.i429
  %.fca.1.insert.i431 = insertvalue [3 x i64] %.fca.0.insert.i427, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert.i430, 1
  %.fca.2.insert.i432 = insertvalue [3 x i64] %.fca.1.insert.i431, i64 %dim_sample.sroa.8.16.insert.shift.i425, 2
  tail call void @net_dim(ptr noundef %dim.i426, [3 x i64] %.fca.2.insert.i432) #5
  br label %mlx5e_handle_rx_dim.exit

mlx5e_handle_rx_dim.exit:                         ; preds = %if.end.i433, %if.end272.mlx5e_handle_rx_dim.exit_crit_edge
  %mcq1.i434 = getelementptr i8, ptr %napi, i32 -11752
  %uar.i435 = getelementptr i8, ptr %napi, i32 -11736
  %105 = ptrtoint ptr %uar.i435 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %uar.i435, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %cc.i436 = getelementptr i8, ptr %napi, i32 -11764
  %109 = ptrtoint ptr %cc.i436 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cc.i436, align 4
  %arm_sn.i.i437 = getelementptr i8, ptr %napi, i32 -11652
  %111 = ptrtoint ptr %arm_sn.i.i437 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arm_sn.i.i437, align 4
  %and1.i.i438 = and i32 %110, 16777215
  %and.i.i439 = shl i32 %112, 28
  %shl.i.i440 = and i32 %and.i.i439, 805306368
  %or2.i.i441 = or i32 %shl.i.i440, %and1.i.i438
  %arm_db.i.i442 = getelementptr i8, ptr %napi, i32 -11740
  %113 = ptrtoint ptr %arm_db.i.i442 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arm_db.i.i442, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or2.i.i441, ptr %114, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %mcq1.i434 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mcq1.i434, align 4
  %add.ptr.i.i443 = getelementptr i8, ptr %108, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i443, i32 %or2.i.i441) #5, !srcloc !34
  %add.ptr.i.i.i444 = getelementptr i8, ptr %108, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i444, i32 %117) #5, !srcloc !34
  %mcq1.i445 = getelementptr i8, ptr %napi, i32 -488
  %uar.i446 = getelementptr i8, ptr %napi, i32 -472
  %118 = ptrtoint ptr %uar.i446 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %uar.i446, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %cc.i447 = getelementptr i8, ptr %napi, i32 -500
  %122 = ptrtoint ptr %cc.i447 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cc.i447, align 4
  %arm_sn.i.i448 = getelementptr i8, ptr %napi, i32 -388
  %124 = ptrtoint ptr %arm_sn.i.i448 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arm_sn.i.i448, align 4
  %and1.i.i449 = and i32 %123, 16777215
  %and.i.i450 = shl i32 %125, 28
  %shl.i.i451 = and i32 %and.i.i450, 805306368
  %or2.i.i452 = or i32 %shl.i.i451, %and1.i.i449
  %arm_db.i.i453 = getelementptr i8, ptr %napi, i32 -476
  %126 = ptrtoint ptr %arm_db.i.i453 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arm_db.i.i453, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or2.i.i452, ptr %127, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %mcq1.i445 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mcq1.i445, align 4
  %add.ptr.i.i454 = getelementptr i8, ptr %121, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i454, i32 %or2.i.i452) #5, !srcloc !34
  %add.ptr.i.i.i455 = getelementptr i8, ptr %121, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i455, i32 %130) #5, !srcloc !34
  %mcq1.i456 = getelementptr i8, ptr %napi, i32 5400
  %uar.i457 = getelementptr i8, ptr %napi, i32 5416
  %131 = ptrtoint ptr %uar.i457 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %uar.i457, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %cc.i458 = getelementptr i8, ptr %napi, i32 5388
  %135 = ptrtoint ptr %cc.i458 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cc.i458, align 4
  %arm_sn.i.i459 = getelementptr i8, ptr %napi, i32 5500
  %137 = ptrtoint ptr %arm_sn.i.i459 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arm_sn.i.i459, align 4
  %and1.i.i460 = and i32 %136, 16777215
  %and.i.i461 = shl i32 %138, 28
  %shl.i.i462 = and i32 %and.i.i461, 805306368
  %or2.i.i463 = or i32 %shl.i.i462, %and1.i.i460
  %arm_db.i.i464 = getelementptr i8, ptr %napi, i32 5412
  %139 = ptrtoint ptr %arm_db.i.i464 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arm_db.i.i464, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or2.i.i463, ptr %140, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %142 = ptrtoint ptr %mcq1.i456 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mcq1.i456, align 4
  %add.ptr.i.i465 = getelementptr i8, ptr %134, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i465, i32 %or2.i.i463) #5, !srcloc !34
  %add.ptr.i.i.i466 = getelementptr i8, ptr %134, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i466, i32 %143) #5, !srcloc !34
  %mcq1.i467 = getelementptr i8, ptr %napi, i32 536
  %uar.i468 = getelementptr i8, ptr %napi, i32 552
  %144 = ptrtoint ptr %uar.i468 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %uar.i468, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %cc.i469 = getelementptr i8, ptr %napi, i32 524
  %148 = ptrtoint ptr %cc.i469 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cc.i469, align 4
  %arm_sn.i.i470 = getelementptr i8, ptr %napi, i32 636
  %150 = ptrtoint ptr %arm_sn.i.i470 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arm_sn.i.i470, align 4
  %and1.i.i471 = and i32 %149, 16777215
  %and.i.i472 = shl i32 %151, 28
  %shl.i.i473 = and i32 %and.i.i472, 805306368
  %or2.i.i474 = or i32 %shl.i.i473, %and1.i.i471
  %arm_db.i.i475 = getelementptr i8, ptr %napi, i32 548
  %152 = ptrtoint ptr %arm_db.i.i475 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arm_db.i.i475, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or2.i.i474, ptr %153, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %mcq1.i467 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mcq1.i467, align 4
  %add.ptr.i.i476 = getelementptr i8, ptr %147, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i476, i32 %or2.i.i474) #5, !srcloc !34
  %add.ptr.i.i.i477 = getelementptr i8, ptr %147, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i477, i32 %156) #5, !srcloc !34
  br i1 %tobool15.not, label %mlx5e_handle_rx_dim.exit.if.end284_crit_edge, label %if.then281

mlx5e_handle_rx_dim.exit.if.end284_crit_edge:     ; preds = %mlx5e_handle_rx_dim.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end284

if.then281:                                       ; preds = %mlx5e_handle_rx_dim.exit
  %stats1.i478 = getelementptr i8, ptr %napi, i32 1220
  %157 = ptrtoint ptr %stats1.i478 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %stats1.i478, align 4
  %state.i479 = getelementptr i8, ptr %napi, i32 3872
  %159 = ptrtoint ptr %state.i479 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %state.i479, align 4
  %161 = and i32 %160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i480 = icmp eq i32 %161, 0
  br i1 %tobool.not.i480, label %if.then281.mlx5e_handle_rx_dim.exit494_crit_edge, label %if.end.i493, !prof !39

if.then281.mlx5e_handle_rx_dim.exit494_crit_edge: ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_handle_rx_dim.exit494

if.end.i493:                                      ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #7
  %event_ctr.i481 = getelementptr i8, ptr %napi, i32 1296
  %162 = ptrtoint ptr %event_ctr.i481 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %event_ctr.i481, align 8
  %164 = ptrtoint ptr %158 to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %158, align 8
  %bytes.i482 = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %158, i32 0, i32 1
  %166 = ptrtoint ptr %bytes.i482 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %bytes.i482, align 8
  %call.i.i483 = tail call i64 @ktime_get() #5
  %dim_sample.sroa.8.16.insert.ext.i484 = zext i16 %163 to i64
  %dim_sample.sroa.8.16.insert.shift.i485 = shl nuw i64 %dim_sample.sroa.8.16.insert.ext.i484, 48
  %dim.i486 = getelementptr i8, ptr %napi, i32 3888
  %.fca.0.insert.i487 = insertvalue [3 x i64] poison, i64 %call.i.i483, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext.i488 = and i64 %167, 4294967295
  %dim_sample.sroa.5.sroa.0.0.insert.ext.i489 = shl i64 %165, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert.i490 = or i64 %dim_sample.sroa.5.sroa.5.0.insert.ext.i488, %dim_sample.sroa.5.sroa.0.0.insert.ext.i489
  %.fca.1.insert.i491 = insertvalue [3 x i64] %.fca.0.insert.i487, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert.i490, 1
  %.fca.2.insert.i492 = insertvalue [3 x i64] %.fca.1.insert.i491, i64 %dim_sample.sroa.8.16.insert.shift.i485, 2
  tail call void @net_dim(ptr noundef %dim.i486, [3 x i64] %.fca.2.insert.i492) #5
  br label %mlx5e_handle_rx_dim.exit494

mlx5e_handle_rx_dim.exit494:                      ; preds = %if.end.i493, %if.then281.mlx5e_handle_rx_dim.exit494_crit_edge
  %mcq1.i495 = getelementptr i8, ptr %napi, i32 4760
  %uar.i496 = getelementptr i8, ptr %napi, i32 4776
  %168 = ptrtoint ptr %uar.i496 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %uar.i496, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %cc.i497 = getelementptr i8, ptr %napi, i32 4748
  %172 = ptrtoint ptr %cc.i497 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cc.i497, align 4
  %arm_sn.i.i498 = getelementptr i8, ptr %napi, i32 4860
  %174 = ptrtoint ptr %arm_sn.i.i498 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arm_sn.i.i498, align 4
  %and1.i.i499 = and i32 %173, 16777215
  %and.i.i500 = shl i32 %175, 28
  %shl.i.i501 = and i32 %and.i.i500, 805306368
  %or2.i.i502 = or i32 %shl.i.i501, %and1.i.i499
  %arm_db.i.i503 = getelementptr i8, ptr %napi, i32 4772
  %176 = ptrtoint ptr %arm_db.i.i503 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arm_db.i.i503, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or2.i.i502, ptr %177, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %mcq1.i495 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mcq1.i495, align 4
  %add.ptr.i.i504 = getelementptr i8, ptr %171, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i504, i32 %or2.i.i502) #5, !srcloc !34
  %add.ptr.i.i.i505 = getelementptr i8, ptr %171, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i505, i32 %180) #5, !srcloc !34
  %mcq1.i506 = getelementptr i8, ptr %napi, i32 1304
  %uar.i507 = getelementptr i8, ptr %napi, i32 1320
  %181 = ptrtoint ptr %uar.i507 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %uar.i507, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %cc.i508 = getelementptr i8, ptr %napi, i32 1292
  %185 = ptrtoint ptr %cc.i508 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %cc.i508, align 4
  %arm_sn.i.i509 = getelementptr i8, ptr %napi, i32 1404
  %187 = ptrtoint ptr %arm_sn.i.i509 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arm_sn.i.i509, align 4
  %and1.i.i510 = and i32 %186, 16777215
  %and.i.i511 = shl i32 %188, 28
  %shl.i.i512 = and i32 %and.i.i511, 805306368
  %or2.i.i513 = or i32 %shl.i.i512, %and1.i.i510
  %arm_db.i.i514 = getelementptr i8, ptr %napi, i32 1316
  %189 = ptrtoint ptr %arm_db.i.i514 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arm_db.i.i514, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or2.i.i513, ptr %190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %192 = ptrtoint ptr %mcq1.i506 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %mcq1.i506, align 4
  %add.ptr.i.i515 = getelementptr i8, ptr %184, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i515, i32 %or2.i.i513) #5, !srcloc !34
  %add.ptr.i.i.i516 = getelementptr i8, ptr %184, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i516, i32 %193) #5, !srcloc !34
  br label %if.end284

if.end284:                                        ; preds = %mlx5e_handle_rx_dim.exit494, %mlx5e_handle_rx_dim.exit.if.end284_crit_edge
  br i1 %busy_xsk.0.off0, label %if.then295, label %if.end284.out_crit_edge, !prof !39

if.end284.out_crit_edge:                          ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then295:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlx5e_trigger_irq(ptr noundef %icosq)
  %force_irq = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %1, i32 0, i32 4
  %194 = ptrtoint ptr %force_irq to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %force_irq, align 8
  %inc297 = add i64 %195, 1
  store i64 %inc297, ptr %force_irq, align 8
  br label %out

out:                                              ; preds = %if.then295, %if.end284.out_crit_edge, %if.end206.out_crit_edge, %mlx5e_channel_no_affinity_change.exit.out_crit_edge
  %work_done.4 = phi i32 [ %work_done.3, %if.end206.out_crit_edge ], [ %work_done.3, %if.then295 ], [ %work_done.3, %if.end284.out_crit_edge ], [ %budget, %mlx5e_channel_no_affinity_change.exit.out_crit_edge ]
  %call.i517 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i517, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i520

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i520:                               ; preds = %out
  %call1.i518 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i518)
  %tobool.not.i519 = icmp eq i32 %call1.i518, 0
  br i1 %tobool.not.i519, label %land.lhs.true.i520.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i522

land.lhs.true.i520.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i520
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i522:                              ; preds = %land.lhs.true.i520
  %.b4.i521 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i521, label %land.lhs.true2.i522.rcu_read_unlock.exit_crit_edge, label %if.then.i523

land.lhs.true2.i522.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i522
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i523:                                     ; preds = %land.lhs.true2.i522
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.8) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i523, %land.lhs.true2.i522.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i520.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %196 = tail call i32 @llvm.read_register.i32(metadata !22) #5
  %and.i.i.i.i.i524 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i.i.i.i524 to ptr
  %preempt_count.i.i.i.i525 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %preempt_count.i.i.i.i525 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %preempt_count.i.i.i.i525, align 4
  %sub.i.i.i = add i32 %199, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i525, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  ret i32 %work_done.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_poll_tx_cq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_poll_xdpsq_cq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_poll_rx_cq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_poll_ico_cq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_ktls_rx_handle_resync_list(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_handle_tx_dim(ptr noundef %sq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 13
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 32
  %state = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !39

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %event_ctr = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %event_ctr, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %1, align 128
  %bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bytes, align 8
  %call.i = tail call i64 @ktime_get() #5
  %dim_sample.sroa.8.16.insert.ext = zext i16 %6 to i64
  %dim_sample.sroa.8.16.insert.shift = shl nuw i64 %dim_sample.sroa.8.16.insert.ext, 48
  %dim = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 3
  %.fca.0.insert = insertvalue [3 x i64] poison, i64 %call.i, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext = and i64 %10, 4294967295
  %dim_sample.sroa.5.sroa.0.0.insert.ext = shl i64 %8, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert = or i64 %dim_sample.sroa.5.sroa.5.0.insert.ext, %dim_sample.sroa.5.sroa.0.0.insert.ext
  %.fca.1.insert = insertvalue [3 x i64] %.fca.0.insert, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert, 1
  %.fca.2.insert = insertvalue [3 x i64] %.fca.1.insert, i64 %dim_sample.sroa.8.16.insert.shift, 2
  tail call void @net_dim(ptr noundef %dim, [3 x i64] %.fca.2.insert) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_cq_arm(ptr nocapture noundef readonly %cq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %mcq1 = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 3
  %uar = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uar, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cc = getelementptr inbounds %struct.mlx5_cqwq, ptr %cq, i32 0, i32 2
  %4 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cc, align 4
  %arm_sn.i = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %arm_sn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arm_sn.i, align 4
  %and1.i = and i32 %5, 16777215
  %and.i = shl i32 %7, 28
  %shl.i = and i32 %and.i, 805306368
  %or2.i = or i32 %shl.i, %and1.i
  %arm_db.i = getelementptr inbounds %struct.mlx5e_cq, ptr %cq, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arm_db.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or2.i, ptr %9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %mcq1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcq1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or2.i) #5, !srcloc !34
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #5, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_completion_event(ptr nocapture noundef %mcq, ptr nocapture noundef readnone %eqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %mcq, i32 -4
  %0 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %napi, align 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %1) #5
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %1) #5
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  %event_ctr = getelementptr i8, ptr %mcq, i32 -8
  %2 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %event_ctr, align 8
  %inc = add i16 %3, 1
  store i16 %inc, ptr %event_ctr, align 8
  %ch_stats = getelementptr i8, ptr %mcq, i32 148
  %4 = ptrtoint ptr %ch_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_stats, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %inc1 = add i64 %7, 1
  store i64 %inc1, ptr %5, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_cq_error_event(ptr nocapture noundef readonly %mcq, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr i8, ptr %mcq, i32 152
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %2 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mlx5e_cq_error_event, i32 noundef %3, i32 noundef %event) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_xsk_tx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xsk_uses_need_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_clear_tx_need_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_set_tx_need_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_set_rx_need_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xsk_clear_rx_need_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim(ptr noundef, [3 x i64]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c", i32 132, i32 12}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c", i32 146, i32 29}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c", i32 212, i32 29}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c", i32 259, i32 21}
!10 = !{ptr @__func__.mlx5e_cq_error_event, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c", i32 260, i32 6}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2159928173}
!33 = !{i64 2159928367}
!34 = !{i64 3634460}
!35 = !{i64 2149935203}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2161053599}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2158859830}
!41 = !{i64 2149935469}
