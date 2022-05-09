; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/uk.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/uk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irdma_wqe_uk_ops = type { ptr, ptr, ptr, ptr }
%struct.irdma_qp_uk = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irdma_ring, %struct.irdma_ring, %struct.irdma_ring, i32, i32, i32, i32, i32, i32, i32, %struct.irdma_wqe_uk_ops, i16, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_qp_quanta = type { [4 x i64] }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_sq_uk_wr_trk_info = type { i64, i32, i16, [2 x i8] }
%struct.irdma_post_sq_info = type { i64, i8, i8, i16, i32, i32, %union.anon }
%union.anon = type { %struct.irdma_bind_window }
%struct.irdma_bind_window = type { i32, i64, ptr, i32, i8, i32, i8 }
%struct.irdma_rdma_write = type { ptr, i32, %struct.ib_sge }
%struct.ib_sge = type { i64, i32, i32 }
%struct.irdma_rdma_read = type { ptr, i32, %struct.ib_sge }
%struct.irdma_post_send = type { ptr, i32, i32, i32, i32 }
%struct.irdma_inline_rdma_write = type { ptr, i32, %struct.ib_sge }
%struct.irdma_post_inline_send = type { ptr, i32, i32, i32, i32 }
%struct.irdma_post_rq_info = type { i64, ptr, i32 }
%struct.irdma_cq_uk = type { ptr, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8 }
%struct.irdma_cq_poll_info = type { i64, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [6 x i8], i8, i8 }
%struct.irdma_extended_cqe = type { [8 x i64] }
%struct.irdma_cqe = type { [4 x i64] }
%struct.irdma_qp_uk_init_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8 }
%struct.irdma_cq_uk_init_info = type { ptr, ptr, ptr, ptr, i32, i32, i8 }

@iw_wqe_uk_ops_gen_1 = internal constant { %struct.irdma_wqe_uk_ops, [16 x i8] } { %struct.irdma_wqe_uk_ops { ptr @irdma_copy_inline_data_gen_1, ptr @irdma_inline_data_size_to_quanta_gen_1, ptr @irdma_set_fragment_gen_1, ptr @irdma_set_mw_bind_wqe_gen_1 }, [16 x i8] zeroinitializer }, align 32
@iw_wqe_uk_ops = internal constant { %struct.irdma_wqe_uk_ops, [16 x i8] } { %struct.irdma_wqe_uk_ops { ptr @irdma_copy_inline_data, ptr @irdma_inline_data_size_to_quanta, ptr @irdma_set_fragment, ptr @irdma_set_mw_bind_wqe }, [16 x i8] zeroinitializer }, align 32
@switch.table.irdma_uk_rdma_write = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 1, i16 1, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8], [32 x i8] zeroinitializer }, align 32
@switch.table.irdma_fragcnt_to_quanta_sq = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 1, i16 1, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8], [32 x i8] zeroinitializer }, align 32
@switch.table.irdma_uk_send = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 1, i16 1, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8], [32 x i8] zeroinitializer }, align 32
@switch.table.irdma_fragcnt_to_wqesize_rq = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 32, i16 32, i16 64, i16 64, i16 128, i16 128, i16 128, i16 128, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256], [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 24]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"iw_wqe_uk_ops_gen_1\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 1346, i32 38 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"iw_wqe_uk_ops\00", align 1
@___asan_gen_.6 = private constant [36 x i8] c"../drivers/infiniband/hw/irdma/uk.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 1339, i32 38 }
@___asan_gen_.8 = private unnamed_addr constant [33 x i8] c"switch.table.irdma_uk_rdma_write\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [40 x i8] c"switch.table.irdma_fragcnt_to_quanta_sq\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"switch.table.irdma_uk_send\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [41 x i8] c"switch.table.irdma_fragcnt_to_wqesize_rq\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @iw_wqe_uk_ops_gen_1, ptr @iw_wqe_uk_ops, ptr @switch.table.irdma_uk_rdma_write, ptr @switch.table.irdma_fragcnt_to_quanta_sq, ptr @switch.table.irdma_uk_send, ptr @switch.table.irdma_fragcnt_to_wqesize_rq], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iw_wqe_uk_ops_gen_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iw_wqe_uk_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.irdma_uk_rdma_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.irdma_fragcnt_to_quanta_sq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.irdma_uk_send to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.irdma_fragcnt_to_wqesize_rq to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @irdma_clr_wqes(ptr nocapture noundef readonly %qp, i32 noundef %qp_wqe_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %qp_wqe_idx, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %qp_wqe_idx, 128
  %size = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %rem = urem i32 %add, %1
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %arrayidx = getelementptr %struct.irdma_qp_quanta, ptr %3, i32 %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool1.not = icmp eq i32 %rem, 0
  %swqe_polarity4 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %4 = ptrtoint ptr %swqe_polarity4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %swqe_polarity4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp ne i8 %5, 0
  %tobool3.not.sink = select i1 %tobool1.not, i1 %tobool6.not, i1 %tobool3.not
  %6 = sext i1 %tobool3.not.sink to i8
  %7 = zext i8 %6 to i32
  %8 = call ptr @memset(ptr %arrayidx, i32 %7, i32 4096)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_uk_qp_post_wr(ptr nocapture noundef %qp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %shadow_area = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 6
  %0 = ptrtoint ptr %shadow_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shadow_area, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3) #11
  %5 = trunc i64 %4 to i32
  %conv = and i32 %5, 32767
  %sq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %6 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sq_ring, align 4
  %initial_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %8 = ptrtoint ptr %initial_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %initial_ring, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %entry.if.end62_crit_edge, label %if.then

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then:                                          ; preds = %entry
  %push_dropped = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %10 = ptrtoint ptr %push_dropped to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %push_dropped, align 4
  %11 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast.not = icmp eq i8 %11, 0
  br i1 %bf.cast.not, label %if.else, label %do.body19

do.body19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %qp_id = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %12 = ptrtoint ptr %qp_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qp_id, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %wqe_alloc_db = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 3
  %15 = ptrtoint ptr %wqe_alloc_db to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wqe_alloc_db, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !15
  %17 = ptrtoint ptr %push_dropped to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load23 = load i8, ptr %push_dropped, align 4
  %bf.clear24 = and i8 %bf.load23, -33
  store i8 %bf.clear24, ptr %push_dropped, align 4
  br label %if.end62

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp25.not = icmp eq i32 %7, %conv
  br i1 %cmp25.not, label %if.else.if.end62_crit_edge, label %if.then27

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp30 = icmp ugt i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %9)
  %cmp35.not = icmp uge i32 %conv, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %7)
  %cmp37 = icmp ult i32 %conv, %7
  br i1 %cmp30, label %if.then32, label %if.else45

if.then32:                                        ; preds = %if.then27
  %or.cond = select i1 %cmp35.not, i1 %cmp37, i1 false
  br i1 %or.cond, label %do.body40, label %if.then32.if.end62_crit_edge

if.then32.if.end62_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.body40:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %qp_id43 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %18 = ptrtoint ptr %qp_id43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qp_id43, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %wqe_alloc_db44 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 3
  %21 = ptrtoint ptr %wqe_alloc_db44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wqe_alloc_db44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !15
  br label %if.end62

if.else45:                                        ; preds = %if.then27
  %or.cond91 = select i1 %cmp35.not, i1 true, i1 %cmp37
  br i1 %or.cond91, label %do.body53, label %if.else45.if.end62_crit_edge

if.else45.if.end62_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.body53:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  %qp_id56 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %23 = ptrtoint ptr %qp_id56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qp_id56, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %wqe_alloc_db57 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 3
  %26 = ptrtoint ptr %wqe_alloc_db57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wqe_alloc_db57, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #11, !srcloc !15
  br label %if.end62

if.end62:                                         ; preds = %do.body53, %if.else45.if.end62_crit_edge, %do.body40, %if.then32.if.end62_crit_edge, %if.else.if.end62_crit_edge, %do.body19, %entry.if.end62_crit_edge
  %28 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sq_ring, align 4
  %30 = ptrtoint ptr %initial_ring to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %initial_ring, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_qp_push_wqe(ptr nocapture noundef %qp, ptr nocapture noundef readonly %wqe, i16 noundef zeroext %quanta, i32 noundef %wqe_idx, i1 noundef zeroext %post_sq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %initial_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %0 = ptrtoint ptr %initial_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initial_ring, align 4
  %tail = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %push_mode = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %4 = ptrtoint ptr %push_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %push_mode, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %bf.cast.not = icmp eq i8 %5, 0
  br i1 %bf.cast.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  br i1 %post_sq, label %if.then1, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp)
  br label %if.end3

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %push_wqe = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 8
  %6 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %push_wqe, align 4
  %8 = ptrtoint ptr %7 to i32
  %and = shl i32 %wqe_idx, 5
  %mul = and i32 %and, 224
  %add = add i32 %mul, %8
  %9 = inttoptr i32 %add to ptr
  %conv = zext i16 %quanta to i32
  %mul2 = shl nuw nsw i32 %conv, 5
  %10 = call ptr @memcpy(ptr %9, ptr %wqe, i32 %mul2)
  %push_db.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 7
  %11 = ptrtoint ptr %push_db.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %push_db.i, align 4
  %13 = shl i32 %wqe_idx, 17
  %shl.i = and i32 %13, -1048576
  %qp_id.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %14 = ptrtoint ptr %qp_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_id.i, align 4
  %or.i = or i32 %15, %shl.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %12, align 4
  %sq_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %18 = ptrtoint ptr %sq_ring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sq_ring.i, align 4
  %20 = ptrtoint ptr %initial_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %initial_ring, align 4
  %push_mode.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %21 = ptrtoint ptr %push_mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %push_mode.i, align 4
  %bf.set.i = and i8 %bf.load.i, -97
  %bf.clear14.i = or i8 %bf.set.i, 64
  store i8 %bf.clear14.i, ptr %push_mode.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1, %if.then.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irdma_qp_get_next_send_wqe(ptr noundef %qp, ptr nocapture noundef %wqe_idx, i16 noundef zeroext %quanta, i32 noundef %total_size, ptr nocapture noundef readonly %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %uk_attrs = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 2
  %0 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uk_attrs, align 4
  %max_hw_sq_chunk = getelementptr inbounds %struct.irdma_uk_attrs, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %max_hw_sq_chunk to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_hw_sq_chunk, align 4
  %conv = zext i16 %3 to i32
  %sq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %4 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_ring, align 4
  %rem = urem i32 %5, %conv
  %6 = trunc i32 %rem to i16
  %conv4 = sub i16 %3, %6
  %conv5 = zext i16 %quanta to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %conv4, i16 %quanta)
  %cmp.not = icmp ult i16 %conv4, %quanta
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %add = add i32 %8, %5
  %tail = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tail, align 4
  %sub15 = sub i32 %add, %10
  %rem18 = urem i32 %sub15, %8
  %sub19 = add i32 %8, -257
  %sub20 = sub i32 %sub19, %rem18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20, i32 %conv5)
  %cmp21 = icmp ult i32 %sub20, %conv5
  br i1 %cmp21, label %if.then.cleanup_crit_edge, label %if.then.if.end63_crit_edge

if.then.if.end63_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %conv6 = zext i16 %conv4 to i32
  %add26 = add nuw nsw i32 %conv6, %conv5
  %size28 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %size28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size28, align 4
  %add33 = add i32 %12, %5
  %tail35 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %tail35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail35, align 4
  %sub36 = sub i32 %add33, %14
  %rem39 = urem i32 %sub36, %12
  %sub40 = add i32 %12, -257
  %sub41 = sub i32 %sub40, %rem39
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %sub41)
  %cmp42 = icmp ugt i32 %add26, %sub41
  br i1 %cmp42, label %if.else.cleanup_crit_edge, label %for.cond.preheader

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %6)
  %cmp50201.not = icmp eq i16 %3, %6
  br i1 %cmp50201.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sq_wrtrk_array.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 4
  %swqe_polarity.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %15 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %sq_ring, align 4
  br label %for.body

for.body:                                         ; preds = %irdma_nop_1.exit.for.body_crit_edge, %for.body.lr.ph
  %16 = phi i32 [ %.pr, %for.body.lr.ph ], [ %rem57, %irdma_nop_1.exit.for.body_crit_edge ]
  %i.0202 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %irdma_nop_1.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %for.body.irdma_nop_1.exit_crit_edge, label %if.end.i

for.body.irdma_nop_1.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_nop_1.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %18, i32 %16
  %19 = ptrtoint ptr %sq_wrtrk_array.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sq_wrtrk_array.i, align 4
  %quanta.i = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %20, i32 %16, i32 2
  %21 = ptrtoint ptr %quanta.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %quanta.i, align 4
  %22 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 24)
  %23 = ptrtoint ptr %swqe_polarity.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %swqe_polarity.i, align 1
  %conv65.i = zext i8 %24 to i64
  %shl66.i = shl i64 %conv65.i, 63
  %or68.i = or i64 %shl66.i, 51539607552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !18
  %25 = tail call i64 @llvm.bswap.i64(i64 %or68.i) #11
  %arrayidx.i2.i = getelementptr i64, ptr %arrayidx.i, i32 3
  %26 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx.i2.i, align 8
  br label %irdma_nop_1.exit

irdma_nop_1.exit:                                 ; preds = %if.end.i, %for.body.irdma_nop_1.exit_crit_edge
  %27 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sq_ring, align 4
  %add54 = add i32 %28, 1
  %29 = ptrtoint ptr %size28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size28, align 4
  %rem57 = urem i32 %add54, %30
  store i32 %rem57, ptr %sq_ring, align 4
  %inc = add nuw i16 %i.0202, 1
  %cmp50 = icmp ult i16 %inc, %conv4
  br i1 %cmp50, label %irdma_nop_1.exit.for.body_crit_edge, label %irdma_nop_1.exit.for.end_crit_edge

irdma_nop_1.exit.for.end_crit_edge:               ; preds = %irdma_nop_1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

irdma_nop_1.exit.for.body_crit_edge:              ; preds = %irdma_nop_1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %irdma_nop_1.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %push_db = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 7
  %31 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %push_db, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %for.end.if.end63_crit_edge, label %land.lhs.true

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

land.lhs.true:                                    ; preds = %for.end
  %push_wqe = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 3
  %33 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %push_wqe, align 2
  %34 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %bf.cast.not = icmp eq i16 %34, 0
  br i1 %bf.cast.not, label %land.lhs.true.if.end63_crit_edge, label %if.then61

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then61:                                        ; preds = %land.lhs.true
  %35 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qp, align 4
  %arrayidx = getelementptr %struct.irdma_qp_quanta, ptr %36, i32 %5
  %initial_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %37 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %initial_ring.i, align 4
  %39 = ptrtoint ptr %tail35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tail35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.not.i = icmp eq i32 %38, %40
  br i1 %cmp.not.i, label %if.then61.if.else.i_crit_edge, label %land.lhs.true.i

if.then61.if.else.i_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then61
  %push_mode.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %41 = ptrtoint ptr %push_mode.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %push_mode.i, align 4
  %42 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %bf.cast.not.i = icmp eq i8 %42, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp) #11
  br label %if.end63

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then61.if.else.i_crit_edge
  %push_wqe.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 8
  %43 = ptrtoint ptr %push_wqe.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %push_wqe.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %and.i = shl i32 %5, 5
  %mul.i = and i32 %and.i, 224
  %add.i = add i32 %mul.i, %45
  %46 = inttoptr i32 %add.i to ptr
  %mul2.i = shl nuw nsw i32 %conv6, 5
  %47 = call ptr @memcpy(ptr %46, ptr %arrayidx, i32 %mul2.i)
  %48 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %push_db, align 4
  %50 = shl i32 %5, 17
  %shl.i.i = and i32 %50, -1048576
  %qp_id.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %51 = ptrtoint ptr %qp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qp_id.i.i, align 4
  %or.i.i = or i32 %52, %shl.i.i
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %49, align 4
  %55 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sq_ring, align 4
  %57 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %initial_ring.i, align 4
  %push_mode.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %58 = ptrtoint ptr %push_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i = load i8, ptr %push_mode.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -97
  %bf.clear14.i.i = or i8 %bf.set.i.i, 64
  store i8 %bf.clear14.i.i, ptr %push_mode.i.i, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else.i, %if.then.i, %land.lhs.true.if.end63_crit_edge, %for.end.if.end63_crit_edge, %if.then.if.end63_crit_edge
  %59 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sq_ring, align 4
  %61 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %wqe_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool66.not = icmp eq i32 %60, 0
  br i1 %tobool66.not, label %if.then67, label %if.end63.if.end71_crit_edge

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %62 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %swqe_polarity, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool68.not = icmp eq i8 %63, 0
  %conv69 = zext i1 %tobool68.not to i8
  %64 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv69, ptr %swqe_polarity, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end63.if.end71_crit_edge
  %65 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sq_ring, align 4
  %add75 = add i32 %66, %conv5
  %size77 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %67 = ptrtoint ptr %size77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size77, align 4
  %rem78 = urem i32 %add75, %68
  store i32 %rem78, ptr %sq_ring, align 4
  %69 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %qp, align 4
  %71 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wqe_idx, align 4
  %arrayidx82 = getelementptr %struct.irdma_qp_quanta, ptr %70, i32 %72
  %73 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %uk_attrs, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_uk_attrs, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp87 = icmp ne i8 %76, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %quanta)
  %cmp91 = icmp ne i16 %quanta, 1
  %or.cond.not = or i1 %cmp91, %cmp87
  %and = and i32 %rem78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool96.not = icmp eq i32 %and, 0
  %or.cond199 = select i1 %or.cond.not, i1 true, i1 %tobool96.not
  br i1 %or.cond199, label %if.end71.if.end135_crit_edge, label %if.then97

if.end71.if.end135_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then97:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %swqe_polarity108 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %77 = ptrtoint ptr %swqe_polarity108 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %swqe_polarity108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool110.not = icmp eq i8 %78, 0
  %shl = select i1 %tobool110.not, i64 128, i64 0
  %arrayidx134 = getelementptr %struct.irdma_qp_quanta, ptr %70, i32 %rem78, i32 0, i32 3
  %79 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %shl, ptr %arrayidx134, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then97, %if.end71.if.end135_crit_edge
  %80 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %info, align 8
  %sq_wrtrk_array = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 4
  %82 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sq_wrtrk_array, align 4
  %84 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wqe_idx, align 4
  %arrayidx136 = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %83, i32 %85
  %86 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %81, ptr %arrayidx136, align 8
  %87 = load ptr, ptr %sq_wrtrk_array, align 4
  %88 = load i32, ptr %wqe_idx, align 4
  %wr_len = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %87, i32 %88, i32 1
  %89 = ptrtoint ptr %wr_len to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %total_size, ptr %wr_len, align 8
  %90 = load ptr, ptr %sq_wrtrk_array, align 4
  %91 = load i32, ptr %wqe_idx, align 4
  %quanta141 = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %90, i32 %91, i32 2
  %92 = ptrtoint ptr %quanta141 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %quanta, ptr %quanta141, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx82, %if.end135 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @irdma_qp_get_next_recv_wqe(ptr nocapture noundef %qp, ptr nocapture noundef %wqe_idx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10
  %0 = ptrtoint ptr %rq_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_ring, align 4
  %size = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %add = add i32 %3, %1
  %tail = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  %sub = sub i32 %add, %5
  %rem = urem i32 %sub, %3
  %sub7 = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %sub7)
  %cmp = icmp eq i32 %rem, %sub7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %wqe_idx, align 4
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %9 = ptrtoint ptr %rq_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rq_ring, align 4
  %add17 = add i32 %10, %8
  %11 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail, align 4
  %sub20 = sub i32 %add17, %12
  %rem23 = urem i32 %sub20, %8
  %sub26 = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem23, i32 %sub26)
  %cmp27 = icmp eq i32 %rem23, %sub26
  br i1 %cmp27, label %if.end.cleanup_crit_edge, label %if.then28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28:                                        ; preds = %if.end
  %add31 = add i32 %10, 1
  %rem32 = urem i32 %add31, %8
  %13 = ptrtoint ptr %rq_ring to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem32, ptr %rq_ring, align 4
  %14 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wqe_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool38.not = icmp eq i32 %15, 0
  br i1 %tobool38.not, label %if.then39, label %if.then28.if.end42_crit_edge

if.then28.if.end42_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then39:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %rwqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 24
  %16 = ptrtoint ptr %rwqe_polarity to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rwqe_polarity, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not = icmp eq i8 %17, 0
  %conv = zext i1 %tobool40.not to i8
  %18 = ptrtoint ptr %rwqe_polarity to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %rwqe_polarity, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then28.if.end42_crit_edge
  %rq_base = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 1
  %19 = ptrtoint ptr %rq_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rq_base, align 4
  %21 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wqe_idx, align 4
  %rq_wqe_size_multiplier = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 26
  %23 = ptrtoint ptr %rq_wqe_size_multiplier to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rq_wqe_size_multiplier, align 1
  %conv43 = zext i8 %24 to i32
  %mul = mul i32 %22, %conv43
  %arrayidx = getelementptr %struct.irdma_qp_quanta, ptr %20, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end42 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_uk_rdma_write(ptr noundef %qp, ptr nocapture noundef %info, i1 noundef zeroext %post_sq) local_unnamed_addr #2 align 64 {
entry:
  %wqe_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx) #11
  %0 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wqe_idx, align 4, !annotation !19
  %push_db = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 7
  %1 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %push_db, align 4
  %tobool.not = icmp eq ptr %2, null
  %push_wqe = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %push_wqe, align 2
  %bf.shl = select i1 %tobool.not, i16 0, i16 1024
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %push_wqe, align 2
  %op = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6
  %num_lo_sges = getelementptr inbounds %struct.irdma_rdma_write, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %num_lo_sges to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_lo_sges, align 4
  %max_sq_frag_cnt = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 16
  %6 = ptrtoint ptr %max_sq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sq_frag_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4604.not = icmp eq i32 %5, 0
  br i1 %cmp4604.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0606 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %total_size.0605 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %length = getelementptr %struct.ib_sge, ptr %9, i32 %i.0606, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 8
  %add = add i32 %11, %total_size.0605
  %inc = add nuw i32 %i.0606, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %total_size.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %12 = lshr i16 %bf.load, 11
  %.lobit603 = and i16 %12, 1
  %13 = zext i16 %.lobit603 to i32
  %frag_cnt.0 = add i32 %5, %13
  %14 = tail call i32 @llvm.usub.sat.i32(i32 %frag_cnt.0, i32 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %frag_cnt.0)
  %15 = icmp ult i32 %frag_cnt.0, 16
  br i1 %15, label %switch.lookup, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %for.end
  %switch.gep = getelementptr inbounds [16 x i16], ptr @switch.table.irdma_uk_rdma_write, i32 0, i32 %frag_cnt.0
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %16)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call27 = call ptr @irdma_qp_get_next_send_wqe(ptr noundef %qp, ptr noundef nonnull %wqe_idx, i16 noundef zeroext %switch.load, i32 noundef %total_size.0.lcssa, ptr noundef %info)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %switch.lookup.cleanup_crit_edge, label %if.end30

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %switch.lookup
  %17 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wqe_idx, align 4
  %and.i = and i32 %18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end30.irdma_clr_wqes.exit_crit_edge

if.end30.irdma_clr_wqes.exit_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_clr_wqes.exit

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %18, 128
  %size.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add.i, %20
  %21 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %22, i32 %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  %swqe_polarity4.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %23 = ptrtoint ptr %swqe_polarity4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %swqe_polarity4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool3.not.i = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool6.not.i = icmp ne i8 %24, 0
  %tobool3.not.sink.i = select i1 %tobool1.not.i, i1 %tobool6.not.i, i1 %tobool3.not.i
  %25 = sext i1 %tobool3.not.sink.i to i8
  %26 = zext i8 %25 to i32
  %27 = call ptr @memset(ptr %arrayidx.i, i32 %26, i32 4096)
  br label %irdma_clr_wqes.exit

irdma_clr_wqes.exit:                              ; preds = %if.then.i, %if.end30.irdma_clr_wqes.exit_crit_edge
  %rem_addr = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 1
  %28 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rem_addr, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #11
  %arrayidx.i593 = getelementptr i64, ptr %call27, i32 2
  %31 = ptrtoint ptr %arrayidx.i593 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx.i593, align 8
  %32 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load54 = load i16, ptr %push_wqe, align 2
  %33 = and i16 %bf.load54, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %bf.cast57.not = icmp eq i16 %33, 0
  br i1 %bf.cast57.not, label %if.else87, label %if.then58

if.then58:                                        ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  %imm_data = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 4
  %34 = ptrtoint ptr %imm_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %imm_data, align 4
  %conv84 = zext i32 %35 to i64
  %36 = tail call i64 @llvm.bswap.i64(i64 %conv84) #11
  %37 = ptrtoint ptr %call27 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %call27, align 8
  br label %if.end89

if.else87:                                        ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  %iw_set_fragment = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %38 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iw_set_fragment, align 4
  %40 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %op, align 8
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %42 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %swqe_polarity, align 1
  tail call void %39(ptr noundef nonnull %call27, i32 noundef 0, ptr noundef %41, i8 noundef zeroext %43) #11
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.then58
  %i.1 = phi i32 [ 0, %if.then58 ], [ 1, %if.else87 ]
  %44 = ptrtoint ptr %num_lo_sges to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_lo_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %45)
  %cmp92607 = icmp ult i32 %i.1, %45
  br i1 %cmp92607, label %for.body94.lr.ph, label %if.end89.for.end103_crit_edge

if.end89.for.end103_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end103

for.body94.lr.ph:                                 ; preds = %if.end89
  %iw_set_fragment96 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %swqe_polarity99 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  br label %for.body94

for.body94:                                       ; preds = %for.body94.for.body94_crit_edge, %for.body94.lr.ph
  %i.2609 = phi i32 [ %i.1, %for.body94.lr.ph ], [ %inc102, %for.body94.for.body94_crit_edge ]
  %byte_off.0608 = phi i32 [ 32, %for.body94.lr.ph ], [ %add100, %for.body94.for.body94_crit_edge ]
  %46 = ptrtoint ptr %iw_set_fragment96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iw_set_fragment96, align 4
  %48 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %op, align 8
  %arrayidx98 = getelementptr %struct.ib_sge, ptr %49, i32 %i.2609
  %50 = ptrtoint ptr %swqe_polarity99 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %swqe_polarity99, align 1
  tail call void %47(ptr noundef nonnull %call27, i32 noundef %byte_off.0608, ptr noundef %arrayidx98, i8 noundef zeroext %51) #11
  %add100 = add i32 %byte_off.0608, 16
  %inc102 = add nuw i32 %i.2609, 1
  %52 = ptrtoint ptr %num_lo_sges to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_lo_sges, align 4
  %cmp92 = icmp ult i32 %inc102, %53
  br i1 %cmp92, label %for.body94.for.body94_crit_edge, label %for.body94.for.end103_crit_edge

for.body94.for.end103_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end103

for.body94.for.body94_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body94

for.end103:                                       ; preds = %for.body94.for.end103_crit_edge, %if.end89.for.end103_crit_edge
  %byte_off.0.lcssa = phi i32 [ 32, %if.end89.for.end103_crit_edge ], [ %add100, %for.body94.for.end103_crit_edge ]
  %uk_attrs = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 2
  %54 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %uk_attrs, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_uk_attrs, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp105 = icmp ult i8 %57, 2
  %and107 = and i32 %frag_cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp ne i32 %and107, 0
  %or.cond = select i1 %cmp105, i1 true, i1 %tobool108.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_cnt.0)
  %tobool110.not = icmp eq i32 %frag_cnt.0, 0
  %or.cond587 = select i1 %or.cond, i1 true, i1 %tobool110.not
  br i1 %or.cond587, label %for.end103.do.body130_crit_edge, label %if.then111

for.end103.do.body130_crit_edge:                  ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body130

if.then111:                                       ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #13
  %iw_set_fragment113 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %58 = ptrtoint ptr %iw_set_fragment113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iw_set_fragment113, align 4
  %swqe_polarity114 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %60 = ptrtoint ptr %swqe_polarity114 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %swqe_polarity114, align 1
  tail call void %59(ptr noundef nonnull %call27, i32 noundef %byte_off.0.lcssa, ptr noundef null, i8 noundef zeroext %61) #11
  %62 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %uk_attrs, align 4
  %hw_rev116 = getelementptr inbounds %struct.irdma_uk_attrs, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %hw_rev116 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hw_rev116, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp118 = icmp eq i8 %65, 2
  %inc121 = zext i1 %cmp118 to i32
  %spec.select = add nuw i32 %14, %inc121
  br label %do.body130

do.body130:                                       ; preds = %if.then111, %for.end103.do.body130_crit_edge
  %addl_frag_cnt.0 = phi i32 [ %14, %for.end103.do.body130_crit_edge ], [ %spec.select, %if.then111 ]
  %op_type = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 1
  %66 = ptrtoint ptr %op_type to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %op_type, align 8
  %swqe_polarity452 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %68 = ptrtoint ptr %swqe_polarity452 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %swqe_polarity452, align 1
  %conv180 = zext i8 %67 to i64
  %shl181 = shl nuw nsw i64 %conv180, 32
  %and182 = and i64 %shl181, 270582939648
  %lkey = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 3
  %70 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lkey, align 4
  %conv152 = zext i32 %71 to i64
  %72 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load192 = load i16, ptr %push_wqe, align 2
  %73 = lshr i16 %bf.load192, 11
  %74 = zext i16 %73 to i64
  %shl223 = shl nuw nsw i64 %74, 47
  %and224 = and i64 %shl223, 140737488355328
  %75 = lshr i16 %bf.load192, 9
  %76 = zext i16 %75 to i64
  %shl264 = shl nuw nsw i64 %76, 46
  %and265 = and i64 %shl264, 70368744177664
  %conv290 = zext i32 %addl_frag_cnt.0 to i64
  %shl291 = shl i64 %conv290, 38
  %and292 = and i64 %shl291, 4123168604160
  %77 = lshr i16 %bf.load192, 10
  %78 = zext i16 %77 to i64
  %shl333 = shl nuw nsw i64 %78, 56
  %and334 = and i64 %shl333, 72057594037927936
  %79 = lshr i16 %bf.load, 14
  %.lobit = and i16 %79, 1
  %80 = zext i16 %.lobit to i64
  %shl363 = shl nuw nsw i64 %80, 60
  %or335 = or i64 %and292, %shl363
  %or183 = or i64 %or335, %and182
  %or293 = or i64 %or183, %conv152
  %or266 = or i64 %or293, %and224
  %or225 = or i64 %or266, %and265
  %or365 = or i64 %or225, %and334
  %81 = lshr i16 %bf.load192, 13
  %.lobit581 = and i16 %81, 1
  %82 = zext i16 %.lobit581 to i64
  %shl404 = shl nuw nsw i64 %82, 61
  %bf.load438.lobit = lshr i16 %bf.load192, 15
  %83 = zext i16 %bf.load438.lobit to i64
  %shl442 = shl nuw nsw i64 %83, 62
  %conv471 = zext i8 %69 to i64
  %shl472 = shl i64 %conv471, 63
  %or406 = or i64 %shl442, %shl472
  %or444 = or i64 %or406, %shl404
  %or474 = or i64 %or444, %or365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !20
  %84 = tail call i64 @llvm.bswap.i64(i64 %or474) #11
  %arrayidx.i594 = getelementptr i64, ptr %call27, i32 3
  %85 = ptrtoint ptr %arrayidx.i594 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %arrayidx.i594, align 8
  %86 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load476 = load i16, ptr %push_wqe, align 2
  %87 = and i16 %bf.load476, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %bf.cast479.not = icmp eq i16 %87, 0
  br i1 %bf.cast479.not, label %if.else482, label %if.then480

if.then480:                                       ; preds = %do.body130
  %initial_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %88 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %initial_ring.i, align 4
  %tail.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %90 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp.not.i = icmp eq i32 %89, %91
  br i1 %cmp.not.i, label %if.then480.if.else.i_crit_edge, label %land.lhs.true.i

if.then480.if.else.i_crit_edge:                   ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then480
  %push_mode.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %92 = ptrtoint ptr %push_mode.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i = load i8, ptr %push_mode.i, align 4
  %93 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %bf.cast.not.i = icmp eq i8 %93, 0
  br i1 %bf.cast.not.i, label %if.then.i595, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i595:                                     ; preds = %land.lhs.true.i
  br i1 %post_sq, label %if.then1.i, label %if.then.i595.cleanup_crit_edge

if.then.i595.cleanup_crit_edge:                   ; preds = %if.then.i595
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i595
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp) #11
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then480.if.else.i_crit_edge
  %push_wqe.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 8
  %94 = ptrtoint ptr %push_wqe.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %push_wqe.i, align 4
  %96 = ptrtoint ptr %95 to i32
  %and.i596 = shl i32 %18, 5
  %mul.i = and i32 %and.i596, 224
  %add.i597 = add i32 %mul.i, %96
  %97 = inttoptr i32 %add.i597 to ptr
  %98 = shl nuw nsw i16 %switch.load, 5
  %mul2.i = zext i16 %98 to i32
  %99 = call ptr @memcpy(ptr %97, ptr %call27, i32 %mul2.i)
  %100 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %push_db, align 4
  %102 = shl i32 %18, 17
  %shl.i.i = and i32 %102, -1048576
  %qp_id.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %103 = ptrtoint ptr %qp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %qp_id.i.i, align 4
  %or.i.i = or i32 %104, %shl.i.i
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %101, align 4
  %sq_ring.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %107 = ptrtoint ptr %sq_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sq_ring.i.i, align 4
  %109 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %initial_ring.i, align 4
  %push_mode.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %110 = ptrtoint ptr %push_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load.i.i = load i8, ptr %push_mode.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -97
  %bf.clear14.i.i = or i8 %bf.set.i.i, 64
  store i8 %bf.clear14.i.i, ptr %push_mode.i.i, align 4
  br label %cleanup

if.else482:                                       ; preds = %do.body130
  br i1 %post_sq, label %if.then484, label %if.else482.cleanup_crit_edge

if.else482.cleanup_crit_edge:                     ; preds = %if.else482
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then484:                                       ; preds = %if.else482
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp)
  br label %cleanup

cleanup:                                          ; preds = %if.then484, %if.else482.cleanup_crit_edge, %if.else.i, %if.then1.i, %if.then.i595.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -21, %entry.cleanup_crit_edge ], [ -20, %switch.lookup.cleanup_crit_edge ], [ 0, %if.else482.cleanup_crit_edge ], [ 0, %if.then484 ], [ -21, %for.end.cleanup_crit_edge ], [ 0, %if.then.i595.cleanup_crit_edge ], [ 0, %if.then1.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @irdma_fragcnt_to_quanta_sq(i32 noundef %frag_cnt, ptr nocapture noundef writeonly %quanta) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %frag_cnt)
  %0 = icmp ult i32 %frag_cnt, 16
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [16 x i16], ptr @switch.table.irdma_fragcnt_to_quanta_sq, i32 0, i32 %frag_cnt
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  %2 = ptrtoint ptr %quanta to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %switch.load, ptr %quanta, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -21, %entry.return_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_uk_rdma_read(ptr noundef %qp, ptr nocapture noundef %info, i1 noundef zeroext %inv_stag, i1 noundef zeroext %post_sq) local_unnamed_addr #2 align 64 {
entry:
  %wqe_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx) #11
  %0 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wqe_idx, align 4, !annotation !19
  %push_db = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 7
  %1 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %push_db, align 4
  %tobool.not = icmp eq ptr %2, null
  %push_wqe = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %push_wqe, align 2
  %bf.shl = select i1 %tobool.not, i16 0, i16 1024
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %push_wqe, align 2
  %op = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6
  %max_sq_frag_cnt = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 16
  %4 = ptrtoint ptr %max_sq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_sq_frag_cnt, align 4
  %num_lo_sges = getelementptr inbounds %struct.irdma_rdma_read, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %num_lo_sges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_lo_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5523.not = icmp eq i32 %7, 0
  br i1 %cmp5523.not, label %for.cond.preheader.if.end9_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0525 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %total_size.0524 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %length = getelementptr %struct.ib_sge, ptr %9, i32 %i.0525, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 8
  %add = add i32 %11, %total_size.0524
  %inc = add nuw i32 %i.0525, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %12 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %for.end.cleanup_crit_edge [
    i32 0, label %for.end.if.end9_crit_edge
    i32 1, label %for.end.if.end9_crit_edge538
    i32 2, label %for.end.sw.bb1.i_crit_edge
    i32 3, label %for.end.sw.bb1.i_crit_edge539
    i32 4, label %for.end.sw.bb2.i_crit_edge
    i32 5, label %for.end.sw.bb2.i_crit_edge540
    i32 6, label %for.end.sw.bb3.i_crit_edge
    i32 7, label %for.end.sw.bb3.i_crit_edge541
    i32 8, label %for.end.sw.bb4.i_crit_edge
    i32 9, label %for.end.sw.bb4.i_crit_edge542
    i32 10, label %for.end.sw.bb5.i_crit_edge
    i32 11, label %for.end.sw.bb5.i_crit_edge543
    i32 12, label %for.end.sw.bb6.i_crit_edge
    i32 13, label %for.end.sw.bb6.i_crit_edge544
    i32 14, label %for.end.sw.bb7.i_crit_edge
    i32 15, label %for.end.sw.bb7.i_crit_edge545
  ]

for.end.sw.bb7.i_crit_edge545:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

for.end.sw.bb7.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

for.end.sw.bb6.i_crit_edge544:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

for.end.sw.bb6.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

for.end.sw.bb5.i_crit_edge543:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

for.end.sw.bb5.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

for.end.sw.bb4.i_crit_edge542:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

for.end.sw.bb4.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

for.end.sw.bb3.i_crit_edge541:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i

for.end.sw.bb3.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i

for.end.sw.bb2.i_crit_edge540:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

for.end.sw.bb2.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

for.end.sw.bb1.i_crit_edge539:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

for.end.sw.bb1.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

for.end.if.end9_crit_edge538:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1.i:                                         ; preds = %for.end.sw.bb1.i_crit_edge, %for.end.sw.bb1.i_crit_edge539
  br label %if.end9

sw.bb2.i:                                         ; preds = %for.end.sw.bb2.i_crit_edge, %for.end.sw.bb2.i_crit_edge540
  br label %if.end9

sw.bb3.i:                                         ; preds = %for.end.sw.bb3.i_crit_edge, %for.end.sw.bb3.i_crit_edge541
  br label %if.end9

sw.bb4.i:                                         ; preds = %for.end.sw.bb4.i_crit_edge, %for.end.sw.bb4.i_crit_edge542
  br label %if.end9

sw.bb5.i:                                         ; preds = %for.end.sw.bb5.i_crit_edge, %for.end.sw.bb5.i_crit_edge543
  br label %if.end9

sw.bb6.i:                                         ; preds = %for.end.sw.bb6.i_crit_edge, %for.end.sw.bb6.i_crit_edge544
  br label %if.end9

sw.bb7.i:                                         ; preds = %for.end.sw.bb7.i_crit_edge, %for.end.sw.bb7.i_crit_edge545
  br label %if.end9

if.end9:                                          ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %for.end.if.end9_crit_edge, %for.end.if.end9_crit_edge538, %for.cond.preheader.if.end9_crit_edge
  %total_size.0.lcssa533 = phi i32 [ %add, %sw.bb1.i ], [ %add, %sw.bb2.i ], [ %add, %sw.bb3.i ], [ %add, %sw.bb4.i ], [ %add, %sw.bb5.i ], [ %add, %sw.bb6.i ], [ %add, %sw.bb7.i ], [ %add, %for.end.if.end9_crit_edge ], [ %add, %for.end.if.end9_crit_edge538 ], [ 0, %for.cond.preheader.if.end9_crit_edge ]
  %.sink.i = phi i16 [ 2, %sw.bb1.i ], [ 3, %sw.bb2.i ], [ 4, %sw.bb3.i ], [ 5, %sw.bb4.i ], [ 6, %sw.bb5.i ], [ 7, %sw.bb6.i ], [ 8, %sw.bb7.i ], [ 1, %for.end.if.end9_crit_edge ], [ 1, %for.end.if.end9_crit_edge538 ], [ 1, %for.cond.preheader.if.end9_crit_edge ]
  %call10 = call ptr @irdma_qp_get_next_send_wqe(ptr noundef %qp, ptr noundef nonnull %wqe_idx, i16 noundef zeroext %.sink.i, i32 noundef %total_size.0.lcssa533, ptr noundef %info)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wqe_idx, align 4
  %and.i = and i32 %14, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.irdma_clr_wqes.exit_crit_edge

if.end13.irdma_clr_wqes.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_clr_wqes.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %14, 128
  %size.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add.i, %16
  %17 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %18, i32 %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  %swqe_polarity4.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %19 = ptrtoint ptr %swqe_polarity4.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %swqe_polarity4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not.i = icmp eq i8 %20, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not.i = icmp ne i8 %20, 0
  %tobool3.not.sink.i = select i1 %tobool1.not.i, i1 %tobool6.not.i, i1 %tobool3.not.i
  %21 = sext i1 %tobool3.not.sink.i to i8
  %22 = zext i8 %21 to i32
  %23 = call ptr @memset(ptr %arrayidx.i, i32 %22, i32 4096)
  br label %irdma_clr_wqes.exit

irdma_clr_wqes.exit:                              ; preds = %if.then.i, %if.end13.irdma_clr_wqes.exit_crit_edge
  %24 = ptrtoint ptr %num_lo_sges to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_lo_sges, align 4
  %26 = tail call i32 @llvm.usub.sat.i32(i32 %25, i32 1)
  %27 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load19 = load i16, ptr %push_wqe, align 2
  %iw_set_fragment = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %28 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iw_set_fragment, align 4
  %30 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %op, align 8
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %32 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %swqe_polarity, align 1
  tail call void %29(ptr noundef nonnull %call10, i32 noundef 0, ptr noundef %31, i8 noundef zeroext %33) #11
  %34 = ptrtoint ptr %num_lo_sges to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_lo_sges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp28526 = icmp ugt i32 %35, 1
  br i1 %cmp28526, label %irdma_clr_wqes.exit.for.body30_crit_edge, label %irdma_clr_wqes.exit.for.end39_crit_edge

irdma_clr_wqes.exit.for.end39_crit_edge:          ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end39

irdma_clr_wqes.exit.for.body30_crit_edge:         ; preds = %irdma_clr_wqes.exit
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %irdma_clr_wqes.exit.for.body30_crit_edge
  %i.1528 = phi i32 [ %inc38, %for.body30.for.body30_crit_edge ], [ 1, %irdma_clr_wqes.exit.for.body30_crit_edge ]
  %byte_off.0527 = phi i32 [ %add36, %for.body30.for.body30_crit_edge ], [ 32, %irdma_clr_wqes.exit.for.body30_crit_edge ]
  %36 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iw_set_fragment, align 4
  %38 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %op, align 8
  %arrayidx34 = getelementptr %struct.ib_sge, ptr %39, i32 %i.1528
  %40 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %swqe_polarity, align 1
  tail call void %37(ptr noundef nonnull %call10, i32 noundef %byte_off.0527, ptr noundef %arrayidx34, i8 noundef zeroext %41) #11
  %add36 = add i32 %byte_off.0527, 16
  %inc38 = add nuw i32 %i.1528, 1
  %42 = ptrtoint ptr %num_lo_sges to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_lo_sges, align 4
  %cmp28 = icmp ult i32 %inc38, %43
  br i1 %cmp28, label %for.body30.for.body30_crit_edge, label %for.body30.for.end39_crit_edge

for.body30.for.end39_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end39

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body30

for.end39:                                        ; preds = %for.body30.for.end39_crit_edge, %irdma_clr_wqes.exit.for.end39_crit_edge
  %byte_off.0.lcssa = phi i32 [ 32, %irdma_clr_wqes.exit.for.end39_crit_edge ], [ %add36, %for.body30.for.end39_crit_edge ]
  %.lcssa = phi i32 [ %35, %irdma_clr_wqes.exit.for.end39_crit_edge ], [ %43, %for.body30.for.end39_crit_edge ]
  %uk_attrs = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 2
  %44 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uk_attrs, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_uk_attrs, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp41 = icmp ult i8 %47, 2
  %and = and i32 %.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp ne i32 %and, 0
  %or.cond = select i1 %cmp41, i1 true, i1 %tobool44.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool47.not = icmp eq i32 %.lcssa, 0
  %or.cond508 = select i1 %or.cond, i1 true, i1 %tobool47.not
  br i1 %or.cond508, label %for.end39.if.end60_crit_edge, label %if.then48

for.end39.if.end60_crit_edge:                     ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then48:                                        ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iw_set_fragment, align 4
  %50 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %swqe_polarity, align 1
  tail call void %49(ptr noundef nonnull %call10, i32 noundef %byte_off.0.lcssa, ptr noundef null, i8 noundef zeroext %51) #11
  %52 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %uk_attrs, align 4
  %hw_rev53 = getelementptr inbounds %struct.irdma_uk_attrs, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %hw_rev53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hw_rev53, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp55 = icmp eq i8 %55, 2
  %inc58 = zext i1 %cmp55 to i32
  %spec.select509 = add nuw i32 %26, %inc58
  br label %if.end60

if.end60:                                         ; preds = %if.then48, %for.end39.if.end60_crit_edge
  %addl_frag_cnt.0 = phi i32 [ %26, %for.end39.if.end60_crit_edge ], [ %spec.select509, %if.then48 ]
  %rem_addr = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 1
  %56 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %rem_addr, align 8
  %58 = tail call i64 @llvm.bswap.i64(i64 %57) #11
  %arrayidx.i513 = getelementptr i64, ptr %call10, i32 2
  %59 = ptrtoint ptr %arrayidx.i513 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx.i513, align 8
  %60 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %swqe_polarity, align 1
  %62 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load122 = load i16, ptr %push_wqe, align 2
  %63 = lshr i16 %bf.load122, 9
  %64 = zext i16 %63 to i64
  %shl159 = shl nuw nsw i64 %64, 46
  %and160 = and i64 %shl159, 70368744177664
  %lkey = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 3
  %65 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lkey, align 4
  %conv112 = zext i32 %66 to i64
  %conv185 = zext i32 %addl_frag_cnt.0 to i64
  %shl186 = shl i64 %conv185, 38
  %and187 = and i64 %shl186, 4123168604160
  %67 = select i1 %inv_stag, i64 47244640256, i64 4294967296
  %68 = lshr i16 %bf.load122, 10
  %69 = zext i16 %68 to i64
  %shl264 = shl nuw nsw i64 %69, 56
  %and265 = and i64 %shl264, 72057594037927936
  %70 = lshr i16 %bf.load122, 14
  %71 = zext i16 %70 to i64
  %shl305 = shl nuw nsw i64 %71, 60
  %and306 = and i64 %shl305, 1152921504606846976
  %72 = lshr i16 %bf.load19, 13
  %.lobit504 = and i16 %72, 1
  %73 = zext i16 %.lobit504 to i64
  %shl335 = shl nuw nsw i64 %73, 61
  %or307 = or i64 %shl335, %67
  %or266 = or i64 %or307, %and187
  %or224 = or i64 %or266, %conv112
  %or188 = or i64 %or224, %and160
  %or161 = or i64 %or188, %and265
  %or337 = or i64 %or161, %and306
  %bf.load369.lobit = lshr i16 %bf.load122, 15
  %74 = zext i16 %bf.load369.lobit to i64
  %shl373 = shl nuw nsw i64 %74, 62
  %conv402 = zext i8 %61 to i64
  %shl403 = shl i64 %conv402, 63
  %or375 = or i64 %shl373, %shl403
  %or405 = or i64 %or375, %or337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !21
  %75 = tail call i64 @llvm.bswap.i64(i64 %or405) #11
  %arrayidx.i514 = getelementptr i64, ptr %call10, i32 3
  %76 = ptrtoint ptr %arrayidx.i514 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %arrayidx.i514, align 8
  %77 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load407 = load i16, ptr %push_wqe, align 2
  %78 = and i16 %bf.load407, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %bf.cast410.not = icmp eq i16 %78, 0
  br i1 %bf.cast410.not, label %if.else, label %if.then411

if.then411:                                       ; preds = %if.end60
  %initial_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %79 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %initial_ring.i, align 4
  %tail.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %81 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp.not.i = icmp eq i32 %80, %82
  br i1 %cmp.not.i, label %if.then411.if.else.i_crit_edge, label %land.lhs.true.i

if.then411.if.else.i_crit_edge:                   ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then411
  %push_mode.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %83 = ptrtoint ptr %push_mode.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i = load i8, ptr %push_mode.i, align 4
  %84 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %bf.cast.not.i = icmp eq i8 %84, 0
  br i1 %bf.cast.not.i, label %if.then.i515, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i515:                                     ; preds = %land.lhs.true.i
  br i1 %post_sq, label %if.then1.i, label %if.then.i515.cleanup_crit_edge

if.then.i515.cleanup_crit_edge:                   ; preds = %if.then.i515
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i515
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp) #11
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then411.if.else.i_crit_edge
  %push_wqe.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 8
  %85 = ptrtoint ptr %push_wqe.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %push_wqe.i, align 4
  %87 = ptrtoint ptr %86 to i32
  %and.i516 = shl i32 %14, 5
  %mul.i = and i32 %and.i516, 224
  %add.i517 = add i32 %mul.i, %87
  %88 = inttoptr i32 %add.i517 to ptr
  %89 = shl nuw nsw i16 %.sink.i, 5
  %mul2.i = zext i16 %89 to i32
  %90 = call ptr @memcpy(ptr %88, ptr %call10, i32 %mul2.i)
  %91 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %push_db, align 4
  %93 = shl i32 %14, 17
  %shl.i.i = and i32 %93, -1048576
  %qp_id.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %94 = ptrtoint ptr %qp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %qp_id.i.i, align 4
  %or.i.i = or i32 %95, %shl.i.i
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %92, align 4
  %sq_ring.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %98 = ptrtoint ptr %sq_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sq_ring.i.i, align 4
  %100 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %initial_ring.i, align 4
  %push_mode.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %101 = ptrtoint ptr %push_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i.i = load i8, ptr %push_mode.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -97
  %bf.clear14.i.i = or i8 %bf.set.i.i, 64
  store i8 %bf.clear14.i.i, ptr %push_mode.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end60
  br i1 %post_sq, label %if.then414, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then414:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp)
  br label %cleanup

cleanup:                                          ; preds = %if.then414, %if.else.cleanup_crit_edge, %if.else.i, %if.then1.i, %if.then.i515.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -21, %entry.cleanup_crit_edge ], [ -20, %if.end9.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then414 ], [ -21, %for.end.cleanup_crit_edge ], [ 0, %if.then.i515.cleanup_crit_edge ], [ 0, %if.then1.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_uk_send(ptr noundef %qp, ptr nocapture noundef %info, i1 noundef zeroext %post_sq) local_unnamed_addr #2 align 64 {
entry:
  %wqe_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx) #11
  %0 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wqe_idx, align 4, !annotation !19
  %push_db = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 7
  %1 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %push_db, align 4
  %tobool.not = icmp eq ptr %2, null
  %push_wqe = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %push_wqe, align 2
  %bf.shl = select i1 %tobool.not, i16 0, i16 1024
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %push_wqe, align 2
  %op = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6
  %max_sq_frag_cnt = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 16
  %4 = ptrtoint ptr %max_sq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_sq_frag_cnt, align 4
  %num_sges = getelementptr inbounds %struct.irdma_post_send, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %num_sges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4765.not = icmp eq i32 %7, 0
  br i1 %cmp4765.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %op, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0767 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %total_size.0766 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %length = getelementptr %struct.ib_sge, ptr %9, i32 %i.0767, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 8
  %add = add i32 %11, %total_size.0766
  %inc = add nuw i32 %i.0767, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %total_size.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %12 = lshr i16 %bf.load, 11
  %.lobit = and i16 %12, 1
  %13 = zext i16 %.lobit to i32
  %frag_cnt.0 = add i32 %7, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %frag_cnt.0)
  %14 = icmp ult i32 %frag_cnt.0, 16
  br i1 %14, label %switch.lookup, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %for.end
  %switch.gep = getelementptr inbounds [16 x i16], ptr @switch.table.irdma_uk_send, i32 0, i32 %frag_cnt.0
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %15)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call15 = call ptr @irdma_qp_get_next_send_wqe(ptr noundef %qp, ptr noundef nonnull %wqe_idx, i16 noundef zeroext %switch.load, i32 noundef %total_size.0.lcssa, ptr noundef %info)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %switch.lookup.cleanup_crit_edge, label %if.end18

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %switch.lookup
  %16 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wqe_idx, align 4
  %and.i = and i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end18.irdma_clr_wqes.exit_crit_edge

if.end18.irdma_clr_wqes.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_clr_wqes.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %17, 128
  %size.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add.i, %19
  %20 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %21, i32 %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  %swqe_polarity4.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %22 = ptrtoint ptr %swqe_polarity4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %swqe_polarity4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool6.not.i = icmp ne i8 %23, 0
  %tobool3.not.sink.i = select i1 %tobool1.not.i, i1 %tobool6.not.i, i1 %tobool3.not.i
  %24 = sext i1 %tobool3.not.sink.i to i8
  %25 = zext i8 %24 to i32
  %26 = call ptr @memset(ptr %arrayidx.i, i32 %25, i32 4096)
  br label %irdma_clr_wqes.exit

irdma_clr_wqes.exit:                              ; preds = %if.then.i, %if.end18.irdma_clr_wqes.exit_crit_edge
  %27 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load20 = load i16, ptr %push_wqe, align 2
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %frag_cnt.0, i32 1)
  %29 = and i16 %bf.load20, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast35.not = icmp eq i16 %29, 0
  br i1 %bf.cast35.not, label %if.else59, label %if.then36

if.then36:                                        ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  %imm_data = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 4
  %30 = ptrtoint ptr %imm_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %imm_data, align 4
  %conv57 = zext i32 %31 to i64
  %32 = tail call i64 @llvm.bswap.i64(i64 %conv57) #11
  %33 = ptrtoint ptr %call15 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %call15, align 8
  br label %if.end61

if.else59:                                        ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  %iw_set_fragment = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %34 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iw_set_fragment, align 4
  %36 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %op, align 4
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %38 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %swqe_polarity, align 1
  tail call void %35(ptr noundef nonnull %call15, i32 noundef 0, ptr noundef %37, i8 noundef zeroext %39) #11
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then36
  %i.1 = phi i32 [ 0, %if.then36 ], [ 1, %if.else59 ]
  %40 = ptrtoint ptr %num_sges to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %41)
  %cmp64768 = icmp ult i32 %i.1, %41
  br i1 %cmp64768, label %for.body66.lr.ph, label %if.end61.for.end75_crit_edge

if.end61.for.end75_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end75

for.body66.lr.ph:                                 ; preds = %if.end61
  %iw_set_fragment68 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %swqe_polarity71 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.body66.lr.ph
  %i.2770 = phi i32 [ %i.1, %for.body66.lr.ph ], [ %inc74, %for.body66.for.body66_crit_edge ]
  %byte_off.0769 = phi i32 [ 32, %for.body66.lr.ph ], [ %add72, %for.body66.for.body66_crit_edge ]
  %42 = ptrtoint ptr %iw_set_fragment68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iw_set_fragment68, align 4
  %44 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %op, align 4
  %arrayidx70 = getelementptr %struct.ib_sge, ptr %45, i32 %i.2770
  %46 = ptrtoint ptr %swqe_polarity71 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %swqe_polarity71, align 1
  tail call void %43(ptr noundef nonnull %call15, i32 noundef %byte_off.0769, ptr noundef %arrayidx70, i8 noundef zeroext %47) #11
  %add72 = add i32 %byte_off.0769, 16
  %inc74 = add nuw i32 %i.2770, 1
  %48 = ptrtoint ptr %num_sges to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_sges, align 4
  %cmp64 = icmp ult i32 %inc74, %49
  br i1 %cmp64, label %for.body66.for.body66_crit_edge, label %for.body66.for.end75_crit_edge

for.body66.for.end75_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end75

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body66

for.end75:                                        ; preds = %for.body66.for.end75_crit_edge, %if.end61.for.end75_crit_edge
  %byte_off.0.lcssa = phi i32 [ 32, %if.end61.for.end75_crit_edge ], [ %add72, %for.body66.for.end75_crit_edge ]
  %uk_attrs = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 2
  %50 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %uk_attrs, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_uk_attrs, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp77 = icmp ult i8 %53, 2
  %and79 = and i32 %frag_cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp ne i32 %and79, 0
  %or.cond = select i1 %cmp77, i1 true, i1 %tobool80.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_cnt.0)
  %tobool82.not = icmp eq i32 %frag_cnt.0, 0
  %or.cond742 = select i1 %or.cond, i1 true, i1 %tobool82.not
  br i1 %or.cond742, label %for.end75.do.end146_crit_edge, label %if.then83

for.end75.do.end146_crit_edge:                    ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end146

if.then83:                                        ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #13
  %iw_set_fragment85 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %54 = ptrtoint ptr %iw_set_fragment85 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iw_set_fragment85, align 4
  %swqe_polarity86 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %56 = ptrtoint ptr %swqe_polarity86 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %swqe_polarity86, align 1
  tail call void %55(ptr noundef nonnull %call15, i32 noundef %byte_off.0.lcssa, ptr noundef null, i8 noundef zeroext %57) #11
  %58 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %uk_attrs, align 4
  %hw_rev88 = getelementptr inbounds %struct.irdma_uk_attrs, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %hw_rev88 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hw_rev88, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp90 = icmp eq i8 %61, 2
  %inc93 = zext i1 %cmp90 to i32
  %spec.select743 = add nuw i32 %28, %inc93
  br label %do.end146

do.end146:                                        ; preds = %if.then83, %for.end75.do.end146_crit_edge
  %addl_frag_cnt.0 = phi i32 [ %28, %for.end75.do.end146_crit_edge ], [ %spec.select743, %if.then83 ]
  %dest_qp = getelementptr inbounds %struct.irdma_post_send, ptr %op, i32 0, i32 3
  %62 = ptrtoint ptr %dest_qp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dest_qp, align 4
  %qkey = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 1
  %64 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qkey, align 4
  %conv121 = zext i32 %65 to i64
  %conv149 = zext i32 %63 to i64
  %shl150 = shl nuw i64 %conv149, 32
  %and151 = and i64 %shl150, 72057589742960640
  %or152 = or i64 %and151, %conv121
  %66 = tail call i64 @llvm.bswap.i64(i64 %or152) #11
  %arrayidx.i755 = getelementptr i64, ptr %call15, i32 2
  %67 = ptrtoint ptr %arrayidx.i755 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %arrayidx.i755, align 8
  %ah_id = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 2
  %68 = ptrtoint ptr %ah_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ah_id, align 4
  %70 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load218 = load i16, ptr %push_wqe, align 2
  %op_type = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 1
  %71 = ptrtoint ptr %op_type to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %op_type, align 8
  %l4len = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 2
  %73 = ptrtoint ptr %l4len to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %l4len, align 1
  %swqe_polarity589 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %75 = ptrtoint ptr %swqe_polarity589 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %swqe_polarity589, align 1
  %77 = lshr i16 %bf.load218, 11
  %78 = zext i16 %77 to i64
  %shl255 = shl nuw nsw i64 %78, 47
  %and256 = and i64 %shl255, 140737488355328
  %stag_to_inv = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 5
  %79 = ptrtoint ptr %stag_to_inv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stag_to_inv, align 8
  %81 = and i32 %69, 131071
  %or209730 = or i32 %80, %81
  %or209 = zext i32 %or209730 to i64
  %82 = lshr i16 %bf.load218, 9
  %83 = zext i16 %82 to i64
  %shl302 = shl nuw nsw i64 %83, 46
  %and303 = and i64 %shl302, 70368744177664
  %conv330 = zext i8 %72 to i64
  %shl331 = shl nuw nsw i64 %conv330, 32
  %and332 = and i64 %shl331, 270582939648
  %conv357 = zext i32 %addl_frag_cnt.0 to i64
  %shl358 = shl i64 %conv357, 38
  %and359 = and i64 %shl358, 4123168604160
  %84 = lshr i16 %bf.load218, 10
  %85 = zext i16 %84 to i64
  %shl400 = shl nuw nsw i64 %85, 56
  %and401 = and i64 %shl400, 72057594037927936
  %86 = lshr i16 %bf.load20, 14
  %.lobit735 = and i16 %86, 1
  %87 = zext i16 %.lobit735 to i64
  %shl430 = shl nuw nsw i64 %87, 60
  %or402 = or i64 %and359, %shl430
  %or360 = or i64 %or402, %and256
  %or333 = or i64 %or360, %and303
  %or304 = or i64 %or333, %and332
  %or257 = or i64 %or304, %and401
  %or432 = or i64 %or257, %or209
  %88 = lshr i16 %bf.load218, 13
  %.lobit736 = and i16 %88, 1
  %89 = zext i16 %.lobit736 to i64
  %shl471 = shl nuw nsw i64 %89, 61
  %bf.load505.lobit = lshr i16 %bf.load218, 15
  %90 = zext i16 %bf.load505.lobit to i64
  %shl509 = shl nuw nsw i64 %90, 62
  %91 = lshr i16 %bf.load218, 8
  %.lobit737 = and i16 %91, 1
  %92 = zext i16 %.lobit737 to i64
  %shl550 = shl nuw nsw i64 %92, 61
  %conv578 = zext i8 %74 to i64
  %shl579 = shl nuw nsw i64 %conv578, 42
  %and580 = and i64 %shl579, 65970697666560
  %conv608 = zext i8 %76 to i64
  %shl609 = shl i64 %conv608, 63
  %or473 = or i64 %shl471, %shl509
  %or511 = or i64 %or473, %shl550
  %or552 = or i64 %shl609, %and580
  %or581 = or i64 %or552, %or511
  %or611 = or i64 %or581, %or432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !22
  %93 = tail call i64 @llvm.bswap.i64(i64 %or611) #11
  %arrayidx.i756 = getelementptr i64, ptr %call15, i32 3
  %94 = ptrtoint ptr %arrayidx.i756 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %arrayidx.i756, align 8
  %95 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load613 = load i16, ptr %push_wqe, align 2
  %96 = and i16 %bf.load613, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %bf.cast616.not = icmp eq i16 %96, 0
  br i1 %bf.cast616.not, label %if.else619, label %if.then617

if.then617:                                       ; preds = %do.end146
  %initial_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %97 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %initial_ring.i, align 4
  %tail.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %99 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp.not.i = icmp eq i32 %98, %100
  br i1 %cmp.not.i, label %if.then617.if.else.i_crit_edge, label %land.lhs.true.i

if.then617.if.else.i_crit_edge:                   ; preds = %if.then617
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then617
  %push_mode.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %101 = ptrtoint ptr %push_mode.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i = load i8, ptr %push_mode.i, align 4
  %102 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %bf.cast.not.i = icmp eq i8 %102, 0
  br i1 %bf.cast.not.i, label %if.then.i757, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i757:                                     ; preds = %land.lhs.true.i
  br i1 %post_sq, label %if.then1.i, label %if.then.i757.cleanup_crit_edge

if.then.i757.cleanup_crit_edge:                   ; preds = %if.then.i757
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i757
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp) #11
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then617.if.else.i_crit_edge
  %push_wqe.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 8
  %103 = ptrtoint ptr %push_wqe.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %push_wqe.i, align 4
  %105 = ptrtoint ptr %104 to i32
  %and.i758 = shl i32 %17, 5
  %mul.i = and i32 %and.i758, 224
  %add.i759 = add i32 %mul.i, %105
  %106 = inttoptr i32 %add.i759 to ptr
  %107 = shl nuw nsw i16 %switch.load, 5
  %mul2.i = zext i16 %107 to i32
  %108 = call ptr @memcpy(ptr %106, ptr %call15, i32 %mul2.i)
  %109 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %push_db, align 4
  %111 = shl i32 %17, 17
  %shl.i.i = and i32 %111, -1048576
  %qp_id.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %112 = ptrtoint ptr %qp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %qp_id.i.i, align 4
  %or.i.i = or i32 %113, %shl.i.i
  %114 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %110, align 4
  %sq_ring.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %116 = ptrtoint ptr %sq_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sq_ring.i.i, align 4
  %118 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %initial_ring.i, align 4
  %push_mode.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %119 = ptrtoint ptr %push_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load.i.i = load i8, ptr %push_mode.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -97
  %bf.clear14.i.i = or i8 %bf.set.i.i, 64
  store i8 %bf.clear14.i.i, ptr %push_mode.i.i, align 4
  br label %cleanup

if.else619:                                       ; preds = %do.end146
  br i1 %post_sq, label %if.then621, label %if.else619.cleanup_crit_edge

if.else619.cleanup_crit_edge:                     ; preds = %if.else619
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then621:                                       ; preds = %if.else619
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp)
  br label %cleanup

cleanup:                                          ; preds = %if.then621, %if.else619.cleanup_crit_edge, %if.else.i, %if.then1.i, %if.then.i757.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -21, %entry.cleanup_crit_edge ], [ -20, %switch.lookup.cleanup_crit_edge ], [ 0, %if.else619.cleanup_crit_edge ], [ 0, %if.then621 ], [ -21, %for.end.cleanup_crit_edge ], [ 0, %if.then.i757.cleanup_crit_edge ], [ 0, %if.then1.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_uk_inline_rdma_write(ptr noundef %qp, ptr nocapture noundef %info, i1 noundef zeroext %post_sq) local_unnamed_addr #2 align 64 {
entry:
  %wqe_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx) #11
  %0 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wqe_idx, align 4, !annotation !19
  %push_db = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 7
  %1 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %push_db, align 4
  %tobool.not = icmp eq ptr %2, null
  %push_wqe = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %push_wqe, align 2
  %bf.shl = select i1 %tobool.not, i16 0, i16 1024
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %push_wqe, align 2
  %op = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6
  %len = getelementptr inbounds %struct.irdma_inline_rdma_write, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %max_inline_data = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 18
  %6 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_inline_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %wqe_ops = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19
  %iw_inline_data_size_to_quanta = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %iw_inline_data_size_to_quanta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iw_inline_data_size_to_quanta, align 4
  %call = tail call zeroext i16 %9(i32 noundef %5) #11
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call5 = call ptr @irdma_qp_get_next_send_wqe(ptr noundef %qp, ptr noundef nonnull %wqe_idx, i16 noundef zeroext %call, i32 noundef %11, ptr noundef %info)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %12 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wqe_idx, align 4
  %and.i = and i32 %13, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end8.irdma_clr_wqes.exit_crit_edge

if.end8.irdma_clr_wqes.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_clr_wqes.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %13, 128
  %size.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add.i, %15
  %16 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %17, i32 %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  %swqe_polarity4.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %18 = ptrtoint ptr %swqe_polarity4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %swqe_polarity4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.i = icmp ne i8 %19, 0
  %tobool3.not.sink.i = select i1 %tobool1.not.i, i1 %tobool6.not.i, i1 %tobool3.not.i
  %20 = sext i1 %tobool3.not.sink.i to i8
  %21 = zext i8 %20 to i32
  %22 = call ptr @memset(ptr %arrayidx.i, i32 %21, i32 4096)
  br label %irdma_clr_wqes.exit

irdma_clr_wqes.exit:                              ; preds = %if.then.i, %if.end8.irdma_clr_wqes.exit_crit_edge
  %23 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load10 = load i16, ptr %push_wqe, align 2
  %rem_addr = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 1
  %24 = ptrtoint ptr %rem_addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rem_addr, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #11
  %arrayidx.i550 = getelementptr i64, ptr %call5, i32 2
  %27 = ptrtoint ptr %arrayidx.i550 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx.i550, align 8
  %op_type = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 1
  %28 = ptrtoint ptr %op_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %op_type, align 8
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %32 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %swqe_polarity, align 1
  %conv92 = zext i8 %29 to i64
  %shl93 = shl nuw nsw i64 %conv92, 32
  %and94 = and i64 %shl93, 270582939648
  %lkey = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 3
  %34 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lkey, align 4
  %conv64 = zext i32 %35 to i64
  %conv122 = zext i32 %31 to i64
  %shl123 = shl i64 %conv122, 48
  %and124 = and i64 %shl123, 71776119061217280
  %36 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load133 = load i16, ptr %push_wqe, align 2
  %37 = lshr i16 %bf.load133, 9
  %38 = zext i16 %37 to i64
  %shl170 = shl nuw nsw i64 %38, 46
  %and171 = and i64 %shl170, 70368744177664
  %39 = lshr i16 %bf.load133, 11
  %40 = zext i16 %39 to i64
  %shl234 = shl nuw nsw i64 %40, 47
  %and235 = and i64 %shl234, 140737488355328
  %41 = lshr i16 %bf.load133, 10
  %42 = zext i16 %41 to i64
  %shl282 = shl nuw nsw i64 %42, 56
  %and283 = and i64 %shl282, 72057594037927936
  %43 = lshr i16 %bf.load10, 14
  %.lobit542 = and i16 %43, 1
  %44 = zext i16 %.lobit542 to i64
  %shl312 = shl nuw nsw i64 %44, 60
  %or95 = or i64 %and94, %shl312
  %or125 = or i64 %or95, %and124
  %or236 = or i64 %or125, %conv64
  %or189 = or i64 %or236, %and171
  %or172 = or i64 %or189, %and235
  %or284 = or i64 %or172, %and283
  %45 = lshr i16 %bf.load133, 13
  %.lobit543 = and i16 %45, 1
  %46 = zext i16 %.lobit543 to i64
  %shl353 = shl nuw nsw i64 %46, 61
  %bf.load387.lobit = lshr i16 %bf.load133, 15
  %47 = zext i16 %bf.load387.lobit to i64
  %shl391 = shl nuw nsw i64 %47, 62
  %conv419 = zext i8 %33 to i64
  %shl420 = shl i64 %conv419, 63
  %or314 = or i64 %shl420, %shl391
  %or355 = or i64 %or314, %shl353
  %or393 = or i64 %or355, %or284
  %or422 = or i64 %or393, 144115188075855872
  %48 = and i16 %bf.load133, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %bf.cast427.not = icmp eq i16 %48, 0
  br i1 %bf.cast427.not, label %irdma_clr_wqes.exit.if.end457_crit_edge, label %if.then428

irdma_clr_wqes.exit.if.end457_crit_edge:          ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end457

if.then428:                                       ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  %imm_data = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 4
  %49 = ptrtoint ptr %imm_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %imm_data, align 4
  %conv454 = zext i32 %50 to i64
  %51 = tail call i64 @llvm.bswap.i64(i64 %conv454) #11
  %52 = ptrtoint ptr %call5 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %call5, align 8
  br label %if.end457

if.end457:                                        ; preds = %if.then428, %irdma_clr_wqes.exit.if.end457_crit_edge
  %53 = ptrtoint ptr %wqe_ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wqe_ops, align 4
  %55 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %op, align 8
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %59 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %swqe_polarity, align 1
  tail call void %54(ptr noundef nonnull %call5, ptr noundef %56, i32 noundef %58, i8 noundef zeroext %60) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !23
  %61 = tail call i64 @llvm.bswap.i64(i64 %or422) #11
  %arrayidx.i551 = getelementptr i64, ptr %call5, i32 3
  %62 = ptrtoint ptr %arrayidx.i551 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx.i551, align 8
  %63 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load462 = load i16, ptr %push_wqe, align 2
  %64 = and i16 %bf.load462, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %bf.cast465.not = icmp eq i16 %64, 0
  br i1 %bf.cast465.not, label %if.else, label %if.then466

if.then466:                                       ; preds = %if.end457
  %initial_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %65 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %initial_ring.i, align 4
  %tail.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %67 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.not.i = icmp eq i32 %66, %68
  br i1 %cmp.not.i, label %if.then466.if.else.i_crit_edge, label %land.lhs.true.i

if.then466.if.else.i_crit_edge:                   ; preds = %if.then466
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then466
  %push_mode.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %69 = ptrtoint ptr %push_mode.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i = load i8, ptr %push_mode.i, align 4
  %70 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %bf.cast.not.i = icmp eq i8 %70, 0
  br i1 %bf.cast.not.i, label %if.then.i552, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i552:                                     ; preds = %land.lhs.true.i
  br i1 %post_sq, label %if.then1.i, label %if.then.i552.cleanup_crit_edge

if.then.i552.cleanup_crit_edge:                   ; preds = %if.then.i552
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i552
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp) #11
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then466.if.else.i_crit_edge
  %push_wqe.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 8
  %71 = ptrtoint ptr %push_wqe.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %push_wqe.i, align 4
  %73 = ptrtoint ptr %72 to i32
  %and.i553 = shl i32 %13, 5
  %mul.i = and i32 %and.i553, 224
  %add.i554 = add i32 %mul.i, %73
  %74 = inttoptr i32 %add.i554 to ptr
  %conv.i = zext i16 %call to i32
  %mul2.i = shl nuw nsw i32 %conv.i, 5
  %75 = call ptr @memcpy(ptr %74, ptr %call5, i32 %mul2.i)
  %76 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %push_db, align 4
  %78 = shl i32 %13, 17
  %shl.i.i = and i32 %78, -1048576
  %qp_id.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %79 = ptrtoint ptr %qp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qp_id.i.i, align 4
  %or.i.i = or i32 %80, %shl.i.i
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %77, align 4
  %sq_ring.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %83 = ptrtoint ptr %sq_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sq_ring.i.i, align 4
  %85 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %initial_ring.i, align 4
  %push_mode.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %86 = ptrtoint ptr %push_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i.i = load i8, ptr %push_mode.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -97
  %bf.clear14.i.i = or i8 %bf.set.i.i, 64
  store i8 %bf.clear14.i.i, ptr %push_mode.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end457
  br i1 %post_sq, label %if.then469, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then469:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp)
  br label %cleanup

cleanup:                                          ; preds = %if.then469, %if.else.cleanup_crit_edge, %if.else.i, %if.then1.i, %if.then.i552.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -26, %entry.cleanup_crit_edge ], [ -20, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then469 ], [ 0, %if.then.i552.cleanup_crit_edge ], [ 0, %if.then1.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_uk_inline_send(ptr noundef %qp, ptr nocapture noundef %info, i1 noundef zeroext %post_sq) local_unnamed_addr #2 align 64 {
entry:
  %wqe_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx) #11
  %0 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wqe_idx, align 4, !annotation !19
  %push_db = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 7
  %1 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %push_db, align 4
  %tobool.not = icmp eq ptr %2, null
  %push_wqe = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %push_wqe, align 2
  %bf.shl = select i1 %tobool.not, i16 0, i16 1024
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %push_wqe, align 2
  %op = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6
  %len = getelementptr inbounds %struct.irdma_post_inline_send, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %max_inline_data = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 18
  %6 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_inline_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %wqe_ops = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19
  %iw_inline_data_size_to_quanta = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %iw_inline_data_size_to_quanta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iw_inline_data_size_to_quanta, align 4
  %call = tail call zeroext i16 %9(i32 noundef %5) #11
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call5 = call ptr @irdma_qp_get_next_send_wqe(ptr noundef %qp, ptr noundef nonnull %wqe_idx, i16 noundef zeroext %call, i32 noundef %11, ptr noundef %info)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %12 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wqe_idx, align 4
  %and.i = and i32 %13, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end8.do.end50_crit_edge

if.end8.do.end50_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %13, 128
  %size.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add.i, %15
  %16 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %17, i32 %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  %swqe_polarity4.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %18 = ptrtoint ptr %swqe_polarity4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %swqe_polarity4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i = icmp eq i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.i = icmp ne i8 %19, 0
  %tobool3.not.sink.i = select i1 %tobool1.not.i, i1 %tobool6.not.i, i1 %tobool3.not.i
  %20 = sext i1 %tobool3.not.sink.i to i8
  %21 = zext i8 %20 to i32
  %22 = call ptr @memset(ptr %arrayidx.i, i32 %21, i32 4096)
  br label %do.end50

do.end50:                                         ; preds = %if.then.i, %if.end8.do.end50_crit_edge
  %dest_qp = getelementptr inbounds %struct.irdma_post_inline_send, ptr %op, i32 0, i32 3
  %23 = ptrtoint ptr %dest_qp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dest_qp, align 4
  %qkey = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 1
  %25 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qkey, align 4
  %conv26 = zext i32 %26 to i64
  %conv53 = zext i32 %24 to i64
  %shl54 = shl nuw i64 %conv53, 32
  %and55 = and i64 %shl54, 72057589742960640
  %or = or i64 %and55, %conv26
  %27 = tail call i64 @llvm.bswap.i64(i64 %or) #11
  %arrayidx.i690 = getelementptr i64, ptr %call5, i32 2
  %28 = ptrtoint ptr %arrayidx.i690 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx.i690, align 8
  %29 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load57 = load i16, ptr %push_wqe, align 2
  %ah_id = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 2
  %30 = ptrtoint ptr %ah_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ah_id, align 4
  %op_type = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 1
  %32 = ptrtoint ptr %op_type to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %op_type, align 8
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %l4len = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 2
  %36 = ptrtoint ptr %l4len to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %l4len, align 1
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %38 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %swqe_polarity, align 1
  %conv147 = zext i8 %33 to i64
  %shl148 = shl nuw nsw i64 %conv147, 32
  %and149 = and i64 %shl148, 270582939648
  %stag_to_inv = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 5
  %40 = ptrtoint ptr %stag_to_inv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stag_to_inv, align 8
  %42 = and i32 %31, 131071
  %or121668 = or i32 %41, %42
  %or121 = zext i32 %or121668 to i64
  %conv177 = zext i32 %35 to i64
  %shl178 = shl i64 %conv177, 48
  %and179 = and i64 %shl178, 71776119061217280
  %43 = lshr i16 %bf.load57, 11
  %44 = zext i16 %43 to i64
  %shl225 = shl nuw nsw i64 %44, 47
  %and226 = and i64 %shl225, 140737488355328
  %45 = lshr i16 %bf.load57, 9
  %46 = zext i16 %45 to i64
  %shl272 = shl nuw nsw i64 %46, 46
  %and273 = and i64 %shl272, 70368744177664
  %47 = lshr i16 %bf.load57, 10
  %48 = zext i16 %47 to i64
  %shl331 = shl nuw nsw i64 %48, 56
  %and332 = and i64 %shl331, 72057594037927936
  %49 = lshr i16 %bf.load57, 14
  %.lobit673 = and i16 %49, 1
  %50 = zext i16 %.lobit673 to i64
  %shl361 = shl nuw nsw i64 %50, 60
  %or291 = or i64 %and273, %and226
  %or274 = or i64 %or291, %and332
  %or227 = or i64 %or274, %shl361
  %or180 = or i64 %or227, %and149
  %or150 = or i64 %or180, %and179
  %or333 = or i64 %or150, %or121
  %51 = lshr i16 %bf.load57, 13
  %.lobit674 = and i16 %51, 1
  %52 = zext i16 %.lobit674 to i64
  %shl402 = shl nuw nsw i64 %52, 61
  %bf.load436.lobit = lshr i16 %bf.load57, 15
  %53 = zext i16 %bf.load436.lobit to i64
  %shl440 = shl nuw nsw i64 %53, 62
  %54 = lshr i16 %bf.load57, 8
  %.lobit675 = and i16 %54, 1
  %55 = zext i16 %.lobit675 to i64
  %shl481 = shl nuw nsw i64 %55, 61
  %conv509 = zext i8 %37 to i64
  %shl510 = shl nuw nsw i64 %conv509, 42
  %and511 = and i64 %shl510, 65970697666560
  %conv538 = zext i8 %39 to i64
  %shl539 = shl i64 %conv538, 63
  %or363 = or i64 %shl440, %shl402
  %or404 = or i64 %or363, %shl481
  %or442 = or i64 %or404, 144115188075855872
  %or483 = or i64 %shl539, %and511
  %or512 = or i64 %or483, %or442
  %or541 = or i64 %or512, %or333
  %56 = and i16 %bf.load57, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %bf.cast546.not = icmp eq i16 %56, 0
  br i1 %bf.cast546.not, label %do.end50.if.end576_crit_edge, label %if.then547

do.end50.if.end576_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end576

if.then547:                                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  %imm_data = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 4
  %57 = ptrtoint ptr %imm_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %imm_data, align 4
  %conv573 = zext i32 %58 to i64
  %59 = tail call i64 @llvm.bswap.i64(i64 %conv573) #11
  %60 = ptrtoint ptr %call5 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %call5, align 8
  br label %if.end576

if.end576:                                        ; preds = %if.then547, %do.end50.if.end576_crit_edge
  %61 = ptrtoint ptr %wqe_ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wqe_ops, align 4
  %63 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %op, align 4
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  %67 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %swqe_polarity, align 1
  tail call void %62(ptr noundef nonnull %call5, ptr noundef %64, i32 noundef %66, i8 noundef zeroext %68) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !24
  %69 = tail call i64 @llvm.bswap.i64(i64 %or541) #11
  %arrayidx.i691 = getelementptr i64, ptr %call5, i32 3
  %70 = ptrtoint ptr %arrayidx.i691 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx.i691, align 8
  %71 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load581 = load i16, ptr %push_wqe, align 2
  %72 = and i16 %bf.load581, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %bf.cast584.not = icmp eq i16 %72, 0
  br i1 %bf.cast584.not, label %if.else, label %if.then585

if.then585:                                       ; preds = %if.end576
  %initial_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %73 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %initial_ring.i, align 4
  %tail.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %75 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp.not.i = icmp eq i32 %74, %76
  br i1 %cmp.not.i, label %if.then585.if.else.i_crit_edge, label %land.lhs.true.i

if.then585.if.else.i_crit_edge:                   ; preds = %if.then585
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then585
  %push_mode.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %77 = ptrtoint ptr %push_mode.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i = load i8, ptr %push_mode.i, align 4
  %78 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %bf.cast.not.i = icmp eq i8 %78, 0
  br i1 %bf.cast.not.i, label %if.then.i692, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i692:                                     ; preds = %land.lhs.true.i
  br i1 %post_sq, label %if.then1.i, label %if.then.i692.cleanup_crit_edge

if.then.i692.cleanup_crit_edge:                   ; preds = %if.then.i692
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i692
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp) #11
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then585.if.else.i_crit_edge
  %push_wqe.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 8
  %79 = ptrtoint ptr %push_wqe.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %push_wqe.i, align 4
  %81 = ptrtoint ptr %80 to i32
  %and.i693 = shl i32 %13, 5
  %mul.i = and i32 %and.i693, 224
  %add.i694 = add i32 %mul.i, %81
  %82 = inttoptr i32 %add.i694 to ptr
  %conv.i = zext i16 %call to i32
  %mul2.i = shl nuw nsw i32 %conv.i, 5
  %83 = call ptr @memcpy(ptr %82, ptr %call5, i32 %mul2.i)
  %84 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %push_db, align 4
  %86 = shl i32 %13, 17
  %shl.i.i = and i32 %86, -1048576
  %qp_id.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %87 = ptrtoint ptr %qp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %qp_id.i.i, align 4
  %or.i.i = or i32 %88, %shl.i.i
  %89 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %85, align 4
  %sq_ring.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %91 = ptrtoint ptr %sq_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sq_ring.i.i, align 4
  %93 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %initial_ring.i, align 4
  %push_mode.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %94 = ptrtoint ptr %push_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i.i = load i8, ptr %push_mode.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -97
  %bf.clear14.i.i = or i8 %bf.set.i.i, 64
  store i8 %bf.clear14.i.i, ptr %push_mode.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end576
  br i1 %post_sq, label %if.then588, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then588:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp)
  br label %cleanup

cleanup:                                          ; preds = %if.then588, %if.else.cleanup_crit_edge, %if.else.i, %if.then1.i, %if.then.i692.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -26, %entry.cleanup_crit_edge ], [ -20, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then588 ], [ 0, %if.then.i692.cleanup_crit_edge ], [ 0, %if.then1.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_uk_stag_local_invalidate(ptr noundef %qp, ptr nocapture noundef %info, i1 noundef zeroext %post_sq) local_unnamed_addr #2 align 64 {
entry:
  %wqe_idx = alloca i32, align 4
  %sge = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx) #11
  %0 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wqe_idx, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sge) #11
  %1 = call ptr @memset(ptr %sge, i32 0, i32 16)
  %push_db = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 7
  %2 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %push_db, align 4
  %tobool.not = icmp eq ptr %3, null
  %push_wqe = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %push_wqe, align 2
  %bf.shl = select i1 %tobool.not, i16 0, i16 1024
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %push_wqe, align 2
  %call = call ptr @irdma_qp_get_next_send_wqe(ptr noundef %qp, ptr noundef nonnull %wqe_idx, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %info)
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %op = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wqe_idx, align 4
  %and.i = and i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.irdma_clr_wqes.exit_crit_edge

if.end.irdma_clr_wqes.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_clr_wqes.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %6, 128
  %size.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add.i, %8
  %9 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %10, i32 %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  %swqe_polarity4.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %11 = ptrtoint ptr %swqe_polarity4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %swqe_polarity4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not.i = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not.i = icmp ne i8 %12, 0
  %tobool3.not.sink.i = select i1 %tobool1.not.i, i1 %tobool6.not.i, i1 %tobool3.not.i
  %13 = sext i1 %tobool3.not.sink.i to i8
  %14 = zext i8 %13 to i32
  %15 = call ptr @memset(ptr %arrayidx.i, i32 %14, i32 4096)
  br label %irdma_clr_wqes.exit

irdma_clr_wqes.exit:                              ; preds = %if.then.i, %if.end.irdma_clr_wqes.exit_crit_edge
  %16 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %op, align 4
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %18 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %lkey, align 4
  %iw_set_fragment = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %19 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iw_set_fragment, align 4
  call void %20(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %sge, i8 noundef zeroext 0) #11
  %arrayidx.i241 = getelementptr i64, ptr %call, i32 2
  %21 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %arrayidx.i241, align 8
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %22 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %swqe_polarity, align 1
  %24 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load28 = load i16, ptr %push_wqe, align 2
  %25 = lshr i16 %bf.load28, 10
  %26 = zext i16 %25 to i64
  %shl = shl nuw nsw i64 %26, 56
  %and55 = and i64 %shl, 72057594037927936
  %27 = lshr i16 %bf.load28, 14
  %28 = zext i16 %27 to i64
  %shl94 = shl nuw nsw i64 %28, 60
  %and95 = and i64 %shl94, 1152921504606846976
  %or = or i64 %and55, %and95
  %29 = lshr i16 %bf.load, 13
  %.lobit = and i16 %29, 1
  %30 = zext i16 %.lobit to i64
  %shl124 = shl nuw nsw i64 %30, 61
  %or96 = or i64 %or, %shl124
  %bf.load158.lobit = lshr i16 %bf.load28, 15
  %31 = zext i16 %bf.load158.lobit to i64
  %shl162 = shl nuw nsw i64 %31, 62
  %or126 = or i64 %or96, %shl162
  %conv190 = zext i8 %23 to i64
  %shl191 = shl i64 %conv190, 63
  %or164 = or i64 %or126, %shl191
  %or193 = or i64 %or164, 42949672960
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !25
  %32 = call i64 @llvm.bswap.i64(i64 %or193) #11
  %arrayidx.i242 = getelementptr i64, ptr %call, i32 3
  %33 = ptrtoint ptr %arrayidx.i242 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx.i242, align 8
  %34 = ptrtoint ptr %push_wqe to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load195 = load i16, ptr %push_wqe, align 2
  %35 = and i16 %bf.load195, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %bf.cast198.not = icmp eq i16 %35, 0
  br i1 %bf.cast198.not, label %if.else, label %if.then199

if.then199:                                       ; preds = %irdma_clr_wqes.exit
  %initial_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %36 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %initial_ring.i, align 4
  %tail.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.not.i = icmp eq i32 %37, %39
  br i1 %cmp.not.i, label %if.then199.if.else.i_crit_edge, label %land.lhs.true.i

if.then199.if.else.i_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then199
  %push_mode.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %40 = ptrtoint ptr %push_mode.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %push_mode.i, align 4
  %41 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %bf.cast.not.i = icmp eq i8 %41, 0
  br i1 %bf.cast.not.i, label %if.then.i243, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i243:                                     ; preds = %land.lhs.true.i
  br i1 %post_sq, label %if.then1.i, label %if.then.i243.cleanup_crit_edge

if.then.i243.cleanup_crit_edge:                   ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #13
  call void @irdma_uk_qp_post_wr(ptr noundef %qp) #11
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then199.if.else.i_crit_edge
  %push_wqe.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 8
  %42 = ptrtoint ptr %push_wqe.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %push_wqe.i, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i244 = shl i32 %6, 5
  %mul.i = and i32 %and.i244, 224
  %add.i245 = add i32 %mul.i, %44
  %45 = inttoptr i32 %add.i245 to ptr
  %46 = call ptr @memcpy(ptr %45, ptr %call, i32 32)
  %47 = ptrtoint ptr %push_db to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %push_db, align 4
  %49 = shl i32 %6, 17
  %shl.i.i = and i32 %49, -1048576
  %qp_id.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %50 = ptrtoint ptr %qp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qp_id.i.i, align 4
  %or.i.i = or i32 %51, %shl.i.i
  %52 = call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %48, align 4
  %sq_ring.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %54 = ptrtoint ptr %sq_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sq_ring.i.i, align 4
  %56 = ptrtoint ptr %initial_ring.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %initial_ring.i, align 4
  %push_mode.i.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %57 = ptrtoint ptr %push_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i = load i8, ptr %push_mode.i.i, align 4
  %bf.set.i.i = and i8 %bf.load.i.i, -97
  %bf.clear14.i.i = or i8 %bf.set.i.i, 64
  store i8 %bf.clear14.i.i, ptr %push_mode.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %irdma_clr_wqes.exit
  br i1 %post_sq, label %if.then202, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then202:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @irdma_uk_qp_post_wr(ptr noundef %qp)
  br label %cleanup

cleanup:                                          ; preds = %if.then202, %if.else.cleanup_crit_edge, %if.else.i, %if.then1.i, %if.then.i243.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -20, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then202 ], [ 0, %if.then.i243.cleanup_crit_edge ], [ 0, %if.then1.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_uk_post_receive(ptr nocapture noundef %qp, ptr nocapture noundef readonly %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rq_frag_cnt = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 17
  %0 = ptrtoint ptr %max_rq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rq_frag_cnt, align 4
  %num_sges = getelementptr inbounds %struct.irdma_post_rq_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %num_sges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_ring.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10
  %4 = ptrtoint ptr %rq_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_ring.i, align 4
  %size.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %add.i = add i32 %7, %5
  %tail.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %add.i, %9
  %rem.i = urem i32 %sub.i, %7
  %sub7.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %sub7.i)
  %cmp.i = icmp eq i32 %rem.i, %sub7.i
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then28.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then28.i:                                      ; preds = %if.end
  %add31.i = add i32 %5, 1
  %rem32.i = urem i32 %add31.i, %7
  %10 = ptrtoint ptr %rq_ring.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem32.i, ptr %rq_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool38.not.i = icmp eq i32 %5, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.then28.i.irdma_qp_get_next_recv_wqe.exit_crit_edge

if.then28.i.irdma_qp_get_next_recv_wqe.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_qp_get_next_recv_wqe.exit

if.then39.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %rwqe_polarity.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 24
  %11 = ptrtoint ptr %rwqe_polarity.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rwqe_polarity.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool40.not.i = icmp eq i8 %12, 0
  %conv.i = zext i1 %tobool40.not.i to i8
  %13 = ptrtoint ptr %rwqe_polarity.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %rwqe_polarity.i, align 1
  br label %irdma_qp_get_next_recv_wqe.exit

irdma_qp_get_next_recv_wqe.exit:                  ; preds = %if.then39.i, %if.then28.i.irdma_qp_get_next_recv_wqe.exit_crit_edge
  %rq_base.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 1
  %14 = ptrtoint ptr %rq_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_base.i, align 4
  %rq_wqe_size_multiplier.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 26
  %16 = ptrtoint ptr %rq_wqe_size_multiplier.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rq_wqe_size_multiplier.i, align 1
  %conv43.i = zext i8 %17 to i32
  %mul.i = mul i32 %5, %conv43.i
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %15, i32 %mul.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %irdma_qp_get_next_recv_wqe.exit.cleanup_crit_edge, label %if.end2

irdma_qp_get_next_recv_wqe.exit.cleanup_crit_edge: ; preds = %irdma_qp_get_next_recv_wqe.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %irdma_qp_get_next_recv_wqe.exit
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %info, align 8
  %rq_wrid_array = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 5
  %20 = ptrtoint ptr %rq_wrid_array to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq_wrid_array, align 4
  %arrayidx = getelementptr i64, ptr %21, i32 %5
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %19, ptr %arrayidx, align 8
  %23 = ptrtoint ptr %num_sges to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_sges, align 4
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %24, i32 1)
  %iw_set_fragment = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19, i32 2
  %26 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iw_set_fragment, align 4
  %sg_list = getelementptr inbounds %struct.irdma_post_rq_info, ptr %info, i32 0, i32 1
  %28 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sg_list, align 8
  %rwqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 24
  %30 = ptrtoint ptr %rwqe_polarity to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rwqe_polarity, align 1
  tail call void %27(ptr noundef nonnull %arrayidx.i, i32 noundef 0, ptr noundef %29, i8 noundef zeroext %31) #11
  %32 = ptrtoint ptr %num_sges to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_sges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp7135 = icmp ugt i32 %33, 1
  br i1 %cmp7135, label %if.end2.for.body_crit_edge, label %if.end2.for.end_crit_edge

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end2.for.body_crit_edge
  %i.0137 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end2.for.body_crit_edge ]
  %byte_off.0136 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 32, %if.end2.for.body_crit_edge ]
  %34 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iw_set_fragment, align 4
  %36 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg_list, align 8
  %arrayidx11 = getelementptr %struct.ib_sge, ptr %37, i32 %i.0137
  %38 = ptrtoint ptr %rwqe_polarity to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rwqe_polarity, align 1
  tail call void %35(ptr noundef nonnull %arrayidx.i, i32 noundef %byte_off.0136, ptr noundef %arrayidx11, i8 noundef zeroext %39) #11
  %add = add i32 %byte_off.0136, 16
  %inc = add nuw i32 %i.0137, 1
  %40 = ptrtoint ptr %num_sges to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_sges, align 4
  %cmp7 = icmp ult i32 %inc, %41
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end2.for.end_crit_edge
  %byte_off.0.lcssa = phi i32 [ 32, %if.end2.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ %33, %if.end2.for.end_crit_edge ], [ %41, %for.body.for.end_crit_edge ]
  %uk_attrs = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 2
  %42 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %uk_attrs, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_uk_attrs, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp13 = icmp ult i8 %45, 2
  %and = and i32 %.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp ne i32 %and, 0
  %or.cond = select i1 %cmp13, i1 true, i1 %tobool16.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool19.not = icmp eq i32 %.lcssa, 0
  %or.cond122 = select i1 %or.cond, i1 true, i1 %tobool19.not
  br i1 %or.cond122, label %for.end.if.end32_crit_edge, label %if.then20

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %iw_set_fragment to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iw_set_fragment, align 4
  %48 = ptrtoint ptr %rwqe_polarity to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rwqe_polarity, align 1
  tail call void %47(ptr noundef nonnull %arrayidx.i, i32 noundef %byte_off.0.lcssa, ptr noundef null, i8 noundef zeroext %49) #11
  %50 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %uk_attrs, align 4
  %hw_rev25 = getelementptr inbounds %struct.irdma_uk_attrs, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %hw_rev25 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hw_rev25, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp27 = icmp eq i8 %53, 2
  %inc30 = zext i1 %cmp27 to i32
  %spec.select123 = add nuw i32 %25, %inc30
  br label %if.end32

if.end32:                                         ; preds = %if.then20, %for.end.if.end32_crit_edge
  %addl_frag_cnt.0 = phi i32 [ %25, %for.end.if.end32_crit_edge ], [ %spec.select123, %if.then20 ]
  %arrayidx.i127 = getelementptr i64, ptr %arrayidx.i, i32 2
  %54 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %arrayidx.i127, align 8
  %55 = ptrtoint ptr %rwqe_polarity to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rwqe_polarity, align 1
  %conv52 = zext i32 %addl_frag_cnt.0 to i64
  %shl = shl i64 %conv52, 38
  %and53 = and i64 %shl, 4123168604160
  %conv80 = zext i8 %56 to i64
  %shl81 = shl i64 %conv80, 63
  %or = or i64 %shl81, %and53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !26
  %57 = tail call i64 @llvm.bswap.i64(i64 %or) #11
  %arrayidx.i128 = getelementptr i64, ptr %arrayidx.i, i32 3
  %58 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx.i128, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %irdma_qp_get_next_recv_wqe.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -21, %entry.cleanup_crit_edge ], [ -20, %irdma_qp_get_next_recv_wqe.exit.cleanup_crit_edge ], [ -20, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @irdma_uk_cq_resize(ptr nocapture noundef writeonly %cq, ptr noundef %cq_base, i32 noundef %cq_size) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cq_base, ptr %cq, align 4
  %cq_size2 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 5
  %1 = ptrtoint ptr %cq_size2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cq_size, ptr %cq_size2, align 4
  %cq_ring = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6
  %2 = ptrtoint ptr %cq_ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cq_ring, align 4
  %tail = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tail, align 4
  %size = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cq_size, ptr %size, align 4
  %polarity = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 7
  %5 = ptrtoint ptr %polarity to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %polarity, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_uk_cq_set_resized_cnt(ptr nocapture noundef readonly %cq, i16 noundef zeroext %cq_cnt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shadow_area = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 3
  %0 = ptrtoint ptr %shadow_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shadow_area, align 4
  %arrayidx.i = getelementptr i64, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.i, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3) #11
  %5 = trunc i64 %4 to i16
  %add = add i16 %5, %cq_cnt
  %6 = and i16 %add, 16383
  %and118 = zext i16 %6 to i64
  %or145 = and i64 %4, 245760
  %or172 = or i64 %or145, %and118
  %7 = tail call i64 @llvm.bswap.i64(i64 %or172) #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_uk_cq_request_notification(ptr nocapture noundef readonly %cq, i32 noundef %cq_notify) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shadow_area = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 3
  %0 = ptrtoint ptr %shadow_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shadow_area, align 4
  %arrayidx.i = getelementptr i64, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.i, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3) #11
  %and = lshr i64 %4, 16
  %5 = trunc i64 %and to i8
  %inc = add i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cq_notify)
  %cmp = icmp eq i32 %cq_notify, 0
  %conv74 = zext i8 %inc to i64
  %shl = shl nuw nsw i64 %conv74, 16
  %and75 = and i64 %shl, 196608
  %and101 = and i64 %4, 16383
  %or102 = select i1 %cmp, i64 49152, i64 32768
  %or129 = or i64 %or102, %and101
  %or156 = or i64 %or129, %and75
  %6 = tail call i64 @llvm.bswap.i64(i64 %or156) #11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %cq_id = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 4
  %8 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cq_id, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %cqe_alloc_db = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 1
  %11 = ptrtoint ptr %cqe_alloc_db to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cqe_alloc_db, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #11, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_uk_cq_poll_cmpl(ptr nocapture noundef %cq, ptr noundef %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %avoid_mem_cflct = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 8
  %polarity20 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 7
  %cq_ring = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6
  %size = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 2
  %imm_valid = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 14
  %imm_data = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 6
  %ud_vlan = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 11
  %ud_smac = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 12
  %arrayidx249 = getelementptr %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 12, i32 5
  %arrayidx254 = getelementptr %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 12, i32 4
  %arrayidx259 = getelementptr %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 12, i32 3
  %arrayidx264 = getelementptr %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 12, i32 2
  %arrayidx269 = getelementptr %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 12, i32 1
  %major_err = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 9
  %minor_err = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 10
  %comp_status458 = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 8
  %tcp_seq_num_rtt = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 3
  %qp_id = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 4
  %ud_src_qpn = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 5
  %qp_handle = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 1
  %tail734 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 1
  %shadow_area = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then724, %entry
  %0 = ptrtoint ptr %avoid_mem_cflct to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %avoid_mem_cflct, align 1
  %1 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cq, align 4
  %3 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cq_ring, align 4
  %arrayidx = getelementptr %struct.irdma_extended_cqe, ptr %2, i32 %4
  %arrayidx4 = getelementptr %struct.irdma_cqe, ptr %2, i32 %4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast.not1415 = icmp slt i8 %bf.load, 0
  %cqe.0 = select i1 %bf.cast.not1415, ptr %arrayidx, ptr %arrayidx4
  %arrayidx.i = getelementptr i64, ptr %cqe.0, i32 3
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx.i, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #11
  %shr = lshr i64 %7, 63
  %conv = trunc i64 %shr to i32
  %8 = ptrtoint ptr %polarity20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %polarity20, align 4
  %conv21 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv21)
  %cmp.not = icmp eq i32 %conv, %conv21
  br i1 %cmp.not, label %if.end24, label %tailrecurse.cleanup1021_crit_edge

tailrecurse.cleanup1021_crit_edge:                ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup1021

if.end24:                                         ; preds = %tailrecurse
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !29
  %10 = and i64 %7, 1125899906842624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not = icmp eq i64 %10, 0
  br i1 %tobool.not, label %if.else279, label %if.then44

if.then44:                                        ; preds = %if.end24
  %11 = ptrtoint ptr %avoid_mem_cflct to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load46 = load i8, ptr %avoid_mem_cflct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46)
  %bf.cast48.not = icmp sgt i8 %bf.load46, -1
  br i1 %bf.cast48.not, label %if.else69, label %if.then49

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %cqe.0, i32 32
  %arrayidx.i1239 = getelementptr i8, ptr %cqe.0, i32 56
  %12 = ptrtoint ptr %arrayidx.i1239 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i1239, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #11
  %shr67 = lshr i64 %14, 63
  %conv68 = trunc i64 %shr67 to i8
  br label %if.end101

if.else69:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cq_ring, align 4
  %add = add i32 %16, 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %rem = urem i32 %add, %18
  %19 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cq, align 4
  %arrayidx74 = getelementptr %struct.irdma_cqe, ptr %20, i32 %rem
  %arrayidx.i1240 = getelementptr i64, ptr %arrayidx74, i32 3
  %21 = ptrtoint ptr %arrayidx.i1240 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i1240, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #11
  %shr94 = lshr i64 %23, 63
  %conv95 = trunc i64 %shr94 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool96.not = icmp eq i32 %rem, 0
  %xor = zext i1 %tobool96.not to i8
  %spec.select1288 = xor i8 %conv95, %xor
  br label %if.end101

if.end101:                                        ; preds = %if.else69, %if.then49
  %qword7.0 = phi i64 [ %14, %if.then49 ], [ %23, %if.else69 ]
  %ext_cqe.0 = phi ptr [ %add.ptr, %if.then49 ], [ %arrayidx74, %if.else69 ]
  %polarity.0 = phi i8 [ %conv68, %if.then49 ], [ %spec.select1288, %if.else69 ]
  %24 = ptrtoint ptr %polarity20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %polarity20, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %polarity.0)
  %cmp105.not = icmp eq i8 %25, %polarity.0
  br i1 %cmp105.not, label %if.end108, label %if.end101.cleanup1021_crit_edge

if.end101.cleanup1021_crit_edge:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup1021

if.end108:                                        ; preds = %if.end101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !30
  %26 = lshr i64 %qword7.0, 62
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = ptrtoint ptr %imm_valid to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load128 = load i8, ptr %imm_valid, align 1
  %bf.clear = and i8 %bf.load128, -2
  %bf.set = or i8 %bf.clear, %28
  store i8 %bf.set, ptr %imm_valid, align 1
  %30 = and i64 %qword7.0, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %bf.cast133.not = icmp eq i64 %30, 0
  br i1 %bf.cast133.not, label %if.end108.do.end169_crit_edge, label %if.then134

if.end108.do.end169_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end169

if.then134:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %ext_cqe.0 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ext_cqe.0, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #11
  %conv153 = trunc i64 %33 to i32
  %34 = ptrtoint ptr %imm_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv153, ptr %imm_data, align 4
  br label %do.end169

do.end169:                                        ; preds = %if.then134, %if.end108.do.end169_crit_edge
  %sh.diff1233 = lshr i64 %qword7.0, 60
  %tr.sh.diff1234 = trunc i64 %sh.diff1233 to i8
  %bf.shl = and i8 %tr.sh.diff1234, 2
  %bf.clear175 = and i8 %bf.set, -7
  %sh.diff1235 = lshr i64 %qword7.0, 58
  %tr.sh.diff1236 = trunc i64 %sh.diff1235 to i8
  %bf.shl198 = and i8 %tr.sh.diff1236, 4
  %bf.set176 = or i8 %bf.shl198, %bf.shl
  %bf.set200 = or i8 %bf.set176, %bf.clear175
  %35 = ptrtoint ptr %imm_valid to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %bf.set200, ptr %imm_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl)
  %bf.cast206.not = icmp eq i8 %bf.shl, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl198)
  %bf.cast212.not = icmp eq i8 %bf.shl198, 0
  %or.cond = select i1 %bf.cast206.not, i1 %bf.cast212.not, i1 false
  br i1 %or.cond, label %do.end169.do.end307_crit_edge, label %if.then214

do.end169.do.end307_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end307

if.then214:                                       ; preds = %do.end169
  %arrayidx.i1241 = getelementptr i64, ptr %ext_cqe.0, i32 2
  %36 = ptrtoint ptr %arrayidx.i1241 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.i1241, align 8
  %38 = tail call i64 @llvm.bswap.i64(i64 %37) #11
  br i1 %bf.cast212.not, label %if.then214.if.end240_crit_edge, label %do.end235

if.then214.if.end240_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end240

do.end235:                                        ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #13
  %shr238 = lshr i64 %38, 48
  %conv239 = trunc i64 %shr238 to i16
  %39 = ptrtoint ptr %ud_vlan to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv239, ptr %ud_vlan, align 4
  br label %if.end240

if.end240:                                        ; preds = %do.end235, %if.then214.if.end240_crit_edge
  br i1 %bf.cast206.not, label %if.end240.do.end307_crit_edge, label %if.then246

if.end240.do.end307_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end307

if.then246:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  %conv248 = trunc i64 %38 to i8
  %40 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv248, ptr %arrayidx249, align 1
  %shr250 = lshr i64 %38, 8
  %conv252 = trunc i64 %shr250 to i8
  %41 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv252, ptr %arrayidx254, align 2
  %shr255 = lshr i64 %38, 16
  %conv257 = trunc i64 %shr255 to i8
  %42 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv257, ptr %arrayidx259, align 1
  %shr260 = lshr i64 %38, 24
  %conv262 = trunc i64 %shr260 to i8
  %43 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv262, ptr %arrayidx264, align 2
  %shr265 = lshr i64 %38, 32
  %conv267 = trunc i64 %shr265 to i8
  %44 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv267, ptr %arrayidx269, align 1
  %shr270 = lshr i64 %38, 40
  %conv272 = trunc i64 %shr270 to i8
  %45 = ptrtoint ptr %ud_smac to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv272, ptr %ud_smac, align 2
  br label %do.end307

if.else279:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %imm_valid to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load281 = load i8, ptr %imm_valid, align 1
  %bf.clear290 = and i8 %bf.load281, -8
  store i8 %bf.clear290, ptr %imm_valid, align 1
  br label %do.end307

do.end307:                                        ; preds = %if.else279, %if.then246, %if.end240.do.end307_crit_edge, %do.end169.do.end307_crit_edge
  %47 = ptrtoint ptr %imm_valid to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load332 = load i8, ptr %imm_valid, align 1
  %sh.diff = lshr i64 %7, 50
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %bf.shl333 = and i8 %tr.sh.diff, 32
  %bf.clear334 = and i8 %bf.load332, -105
  %sh.diff1220 = lshr i64 %7, 45
  %tr.sh.diff1221 = trunc i64 %sh.diff1220 to i8
  %bf.shl357 = and i8 %tr.sh.diff1221, 64
  %bf.shl381 = and i8 %tr.sh.diff, 8
  %bf.set335 = or i8 %bf.shl357, %bf.shl333
  %bf.set359 = or i8 %bf.set335, %bf.shl381
  %bf.set383 = or i8 %bf.set359, %bf.clear334
  store i8 %bf.set383, ptr %imm_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl333)
  %bf.cast389.not = icmp eq i8 %bf.shl333, 0
  br i1 %bf.cast389.not, label %if.else460, label %do.end405

do.end405:                                        ; preds = %do.end307
  %and407 = lshr i64 %7, 16
  %conv409 = trunc i64 %and407 to i16
  %48 = ptrtoint ptr %major_err to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv409, ptr %major_err, align 8
  %conv428 = trunc i64 %7 to i16
  %49 = ptrtoint ptr %minor_err to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv428, ptr %minor_err, align 2
  %50 = and i64 %7, 4294901760
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %50)
  %cmp431 = icmp eq i64 %50, 65536
  br i1 %cmp431, label %if.then433, label %if.else457

if.then433:                                       ; preds = %do.end405
  %51 = ptrtoint ptr %comp_status458 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %comp_status458, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv428)
  %cmp436.not = icmp eq i16 %conv428, 1
  br i1 %cmp436.not, label %if.then433.if.end462_crit_edge, label %if.then438

if.then433.if.end462_crit_edge:                   ; preds = %if.then433
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end462

if.then438:                                       ; preds = %if.then433
  call void @__sanitizer_cov_trace_pc() #13
  %and439 = and i64 %7, -65536
  %or = or i64 %and439, 1
  %52 = tail call i64 @llvm.bswap.i64(i64 %or) #11
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx.i, align 8
  %.pre = lshr i64 %7, 50
  %.pre1364 = trunc i64 %.pre to i8
  br label %if.end462

if.else457:                                       ; preds = %do.end405
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %comp_status458 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 24, ptr %comp_status458, align 4
  br label %if.end462

if.else460:                                       ; preds = %do.end307
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %comp_status458 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %comp_status458, align 4
  br label %if.end462

if.end462:                                        ; preds = %if.else460, %if.else457, %if.then438, %if.then433.if.end462_crit_edge
  %tr.sh.diff1225.pre-phi = phi i8 [ %tr.sh.diff, %if.else457 ], [ %.pre1364, %if.then438 ], [ %tr.sh.diff, %if.then433.if.end462_crit_edge ], [ %tr.sh.diff, %if.else460 ]
  %qword3.0 = phi i64 [ %7, %if.else457 ], [ %or, %if.then438 ], [ %7, %if.then433.if.end462_crit_edge ], [ %7, %if.else460 ]
  %56 = ptrtoint ptr %cqe.0 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %cqe.0, align 8
  %58 = tail call i64 @llvm.bswap.i64(i64 %57) #11
  %arrayidx.i1243 = getelementptr i64, ptr %cqe.0, i32 2
  %59 = ptrtoint ptr %arrayidx.i1243 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx.i1243, align 8
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #11
  %shr480 = lshr i64 %58, 32
  %conv481 = trunc i64 %shr480 to i32
  %62 = ptrtoint ptr %tcp_seq_num_rtt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv481, ptr %tcp_seq_num_rtt, align 8
  %and498 = lshr i64 %61, 32
  %63 = trunc i64 %and498 to i32
  %conv500 = and i32 %63, 16777215
  %64 = ptrtoint ptr %qp_id to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv500, ptr %qp_id, align 4
  %conv519 = trunc i64 %61 to i32
  %65 = ptrtoint ptr %ud_src_qpn to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv519, ptr %ud_src_qpn, align 8
  %arrayidx.i1244 = getelementptr i64, ptr %cqe.0, i32 1
  %66 = ptrtoint ptr %arrayidx.i1244 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx.i1244, align 8
  %68 = tail call i64 @llvm.bswap.i64(i64 %67) #11
  %69 = ptrtoint ptr %imm_valid to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load539 = load i8, ptr %imm_valid, align 1
  %bf.shl540 = and i8 %tr.sh.diff1225.pre-phi, 16
  %bf.clear541 = and i8 %bf.load539, -17
  %bf.set542 = or i8 %bf.clear541, %bf.shl540
  store i8 %bf.set542, ptr %imm_valid, align 1
  %conv544 = trunc i64 %68 to i32
  %70 = inttoptr i32 %conv544 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv544)
  %tobool545.not = icmp eq i32 %conv544, 0
  br i1 %tobool545.not, label %if.end462.if.then918_crit_edge, label %lor.lhs.false546

if.end462.if.then918_crit_edge:                   ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then918

lor.lhs.false546:                                 ; preds = %if.end462
  %destroy_pending = getelementptr inbounds %struct.irdma_qp_uk, ptr %70, i32 0, i32 27
  %71 = ptrtoint ptr %destroy_pending to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load547 = load i8, ptr %destroy_pending, align 4
  %72 = and i8 %bf.load547, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %bf.cast550.not = icmp eq i8 %72, 0
  br i1 %bf.cast550.not, label %do.end568, label %lor.lhs.false546.if.then918_crit_edge

lor.lhs.false546.if.then918_crit_edge:            ; preds = %lor.lhs.false546
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then918

do.end568:                                        ; preds = %lor.lhs.false546
  %and570 = lshr i64 %qword3.0, 32
  %73 = trunc i64 %and570 to i32
  %conv572 = and i32 %73, 32767
  %74 = ptrtoint ptr %qp_handle to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %70, ptr %qp_handle, align 8
  %75 = and i64 %7, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %cmp573 = icmp eq i64 %75, 0
  br i1 %cmp573, label %if.then575, label %if.else699

if.then575:                                       ; preds = %do.end568
  %conv519.le = trunc i64 %61 to i32
  %conv544.le = trunc i64 %68 to i32
  %76 = inttoptr i32 %conv544.le to ptr
  %77 = ptrtoint ptr %comp_status458 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %comp_status458, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %78, label %if.else602 [
    i32 1, label %if.then575.if.then584_crit_edge
    i32 24, label %if.then575.if.then584_crit_edge1512
  ]

if.then575.if.then584_crit_edge1512:              ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then584

if.then575.if.then584_crit_edge:                  ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then584

if.then584:                                       ; preds = %if.then575.if.then584_crit_edge, %if.then575.if.then584_crit_edge1512
  %rq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 10
  %80 = ptrtoint ptr %rq_ring to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rq_ring, align 4
  %size587 = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 10, i32 2
  %82 = ptrtoint ptr %size587 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size587, align 4
  %add588 = add i32 %83, %81
  %tail = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 10, i32 1
  %84 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tail, align 4
  %sub = sub i32 %add588, %85
  %rem592 = urem i32 %sub, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem592)
  %cmp593.not = icmp eq i32 %rem592, 0
  br i1 %cmp593.not, label %if.then584.if.then918_crit_edge, label %if.end596

if.then584.if.then918_crit_edge:                  ; preds = %if.then584
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then918

if.end596:                                        ; preds = %if.then584
  call void @__sanitizer_cov_trace_pc() #13
  %rq_wrid_array = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 5
  %86 = ptrtoint ptr %rq_wrid_array to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rq_wrid_array, align 4
  %arrayidx599 = getelementptr i64, ptr %87, i32 %85
  %88 = ptrtoint ptr %arrayidx599 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx599, align 8
  %90 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %info, align 8
  %91 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tail, align 4
  br label %do.end621

if.else602:                                       ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #13
  %div.lhs.trunc = trunc i32 %conv572 to i16
  %rq_wqe_size_multiplier = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 26
  %93 = ptrtoint ptr %rq_wqe_size_multiplier to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %rq_wqe_size_multiplier, align 1
  %div.rhs.trunc = zext i8 %94 to i16
  %div1287 = udiv i16 %div.lhs.trunc, %div.rhs.trunc
  %div.zext = zext i16 %div1287 to i32
  %rq_wrid_array603 = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 5
  %95 = ptrtoint ptr %rq_wrid_array603 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rq_wrid_array603, align 4
  %arrayidx604 = getelementptr i64, ptr %96, i32 %div.zext
  %97 = ptrtoint ptr %arrayidx604 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx604, align 8
  %99 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %info, align 8
  br label %do.end621

do.end621:                                        ; preds = %if.else602, %if.end596
  %array_idx.0 = phi i32 [ %92, %if.end596 ], [ %div.zext, %if.else602 ]
  %conv625 = trunc i64 %58 to i32
  %bytes_xfered = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 2
  %100 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv625, ptr %bytes_xfered, align 4
  %101 = and i8 %bf.load539, 1
  %102 = or i8 %101, 62
  %103 = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 13
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %102, ptr %103, align 4
  %and634 = and i64 %qword3.0, 9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and634)
  %tobool635.not = icmp eq i64 %and634, 0
  br i1 %tobool635.not, label %if.else659, label %if.then636

if.then636:                                       ; preds = %do.end621
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set639 = or i8 %bf.set542, -128
  %105 = ptrtoint ptr %imm_valid to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %bf.set639, ptr %imm_valid, align 1
  %inv_stag = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 7
  %106 = ptrtoint ptr %inv_stag to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv519.le, ptr %inv_stag, align 8
  br label %if.end664

if.else659:                                       ; preds = %do.end621
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear662 = and i8 %bf.set542, 127
  %107 = ptrtoint ptr %imm_valid to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %bf.clear662, ptr %imm_valid, align 1
  br label %if.end664

if.end664:                                        ; preds = %if.else659, %if.then636
  %add665 = add i32 %array_idx.0, 1
  %rq_ring666 = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 10
  %size667 = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 10, i32 2
  %108 = ptrtoint ptr %size667 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size667, align 4
  %rem668 = urem i32 %add665, %109
  %tail670 = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 10, i32 1
  %110 = ptrtoint ptr %tail670 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %rem668, ptr %tail670, align 4
  %111 = ptrtoint ptr %comp_status458 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %comp_status458, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp672 = icmp eq i32 %112, 1
  br i1 %cmp672, label %if.then674, label %if.end664.land.lhs.true898_crit_edge

if.end664.land.lhs.true898_crit_edge:             ; preds = %if.end664
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true898

if.then674:                                       ; preds = %if.end664
  %rq_flush_seen = getelementptr inbounds %struct.irdma_qp_uk, ptr %76, i32 0, i32 31
  %113 = ptrtoint ptr %rq_flush_seen to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %rq_flush_seen, align 2
  %114 = ptrtoint ptr %rq_ring666 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rq_ring666, align 4
  %add679 = sub i32 %109, %rem668
  %sub682 = add i32 %add679, %115
  %rem685 = urem i32 %sub682, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem685)
  %cmp686.not = icmp eq i32 %rem685, 0
  br i1 %cmp686.not, label %if.then688, label %land.lhs.true898.thread

if.then688:                                       ; preds = %if.then674
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %destroy_pending to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load689 = load i8, ptr %destroy_pending, align 4
  %bf.set691 = or i8 %bf.load689, 4
  store i8 %bf.set691, ptr %destroy_pending, align 4
  br label %land.lhs.true898

if.else699:                                       ; preds = %do.end568
  %117 = ptrtoint ptr %destroy_pending to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load700 = load i8, ptr %destroy_pending, align 4
  %118 = and i8 %bf.load700, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %bf.cast703.not = icmp eq i8 %118, 0
  br i1 %bf.cast703.not, label %if.else699.if.end745_crit_edge, label %if.then704

if.else699.if.end745_crit_edge:                   ; preds = %if.else699
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end745

if.then704:                                       ; preds = %if.else699
  %add705 = add nuw nsw i32 %conv572, 1
  %conn_wqes = getelementptr inbounds %struct.irdma_qp_uk, ptr %70, i32 0, i32 20
  %119 = ptrtoint ptr %conn_wqes to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %conn_wqes, align 4
  %conv706 = zext i16 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add705, i32 %conv706)
  %cmp707.not = icmp ult i32 %add705, %conv706
  br i1 %cmp707.not, label %if.then704.if.end714_crit_edge, label %if.then709

if.then704.if.end714_crit_edge:                   ; preds = %if.then704
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end714

if.then709:                                       ; preds = %if.then704
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear712 = and i8 %bf.load700, -17
  %121 = ptrtoint ptr %destroy_pending to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %bf.clear712, ptr %destroy_pending, align 4
  br label %if.end714

if.end714:                                        ; preds = %if.then709, %if.then704.if.end714_crit_edge
  %122 = ptrtoint ptr %conn_wqes to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %conn_wqes, align 4
  %conv716 = zext i16 %123 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv572, i32 %conv716)
  %cmp717 = icmp ult i32 %conv572, %conv716
  br i1 %cmp717, label %land.lhs.true, label %if.end714.if.end745_crit_edge

if.end714.if.end745_crit_edge:                    ; preds = %if.end714
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end745

land.lhs.true:                                    ; preds = %if.end714
  %sq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %70, i32 0, i32 9
  %124 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sq_ring, align 4
  %tail721 = getelementptr inbounds %struct.irdma_qp_uk, ptr %70, i32 0, i32 9, i32 1
  %126 = ptrtoint ptr %tail721 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tail721, align 4
  %cmp722 = icmp eq i32 %125, %127
  br i1 %cmp722, label %if.then724, label %land.lhs.true.if.end745_crit_edge

land.lhs.true.if.end745_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end745

if.then724:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cq_ring, align 4
  %add727 = add i32 %129, 1
  %130 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %size, align 4
  %rem730 = urem i32 %add727, %131
  store i32 %rem730, ptr %cq_ring, align 4
  %132 = ptrtoint ptr %tail734 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tail734, align 4
  %add735 = add i32 %133, 1
  %rem738 = urem i32 %add735, %131
  store i32 %rem738, ptr %tail734, align 4
  %134 = ptrtoint ptr %shadow_area to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %shadow_area, align 4
  %conv743 = zext i32 %rem730 to i64
  %136 = tail call i64 @llvm.bswap.i64(i64 %conv743) #11
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %135, align 8
  %138 = call ptr @memset(ptr %info, i32 0, i32 56)
  br label %tailrecurse

if.end745:                                        ; preds = %land.lhs.true.if.end745_crit_edge, %if.end714.if.end745_crit_edge, %if.else699.if.end745_crit_edge
  %conv544.le1410 = trunc i64 %68 to i32
  %139 = inttoptr i32 %conv544.le1410 to ptr
  %140 = ptrtoint ptr %imm_valid to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load747 = load i8, ptr %imm_valid, align 1
  %141 = and i8 %bf.load747, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %bf.cast750.not = icmp eq i8 %141, 0
  br i1 %bf.cast750.not, label %if.end745.if.end759_crit_edge, label %if.then751

if.end745.if.end759_crit_edge:                    ; preds = %if.end745
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end759

if.then751:                                       ; preds = %if.end745
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %destroy_pending to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load752 = load i8, ptr %destroy_pending, align 4
  %bf.clear757 = and i8 %bf.load752, -97
  %bf.set758 = or i8 %bf.clear757, 32
  store i8 %bf.set758, ptr %destroy_pending, align 4
  br label %if.end759

if.end759:                                        ; preds = %if.then751, %if.end745.if.end759_crit_edge
  %143 = ptrtoint ptr %comp_status458 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %comp_status458, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp761.not = icmp eq i32 %144, 1
  br i1 %cmp761.not, label %if.else802, label %if.then763

if.then763:                                       ; preds = %if.end759
  %sq_wrtrk_array = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 4
  %145 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sq_wrtrk_array, align 4
  %arrayidx764 = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %146, i32 %conv572
  %147 = ptrtoint ptr %arrayidx764 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx764, align 8
  %149 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool767.not = icmp eq i32 %144, 0
  br i1 %tobool767.not, label %if.then768, label %if.then763.do.end787_crit_edge

if.then763.do.end787_crit_edge:                   ; preds = %if.then763
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end787

if.then768:                                       ; preds = %if.then763
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sq_wrtrk_array, align 4
  %wr_len = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %151, i32 %conv572, i32 1
  %152 = ptrtoint ptr %wr_len to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %wr_len, align 8
  %bytes_xfered771 = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 2
  %154 = ptrtoint ptr %bytes_xfered771 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %bytes_xfered771, align 4
  br label %do.end787

do.end787:                                        ; preds = %if.then768, %if.then763.do.end787_crit_edge
  %and789 = lshr i64 %qword3.0, 56
  %155 = trunc i64 %and789 to i8
  %conv791 = and i8 %155, 63
  %op_type792 = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 13
  %156 = ptrtoint ptr %op_type792 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv791, ptr %op_type792, align 4
  %157 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %sq_wrtrk_array, align 4
  %quanta = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %158, i32 %conv572, i32 2
  %159 = ptrtoint ptr %quanta to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %quanta, align 4
  %conv795 = zext i16 %160 to i32
  %add796 = add nuw nsw i32 %conv572, %conv795
  %size798 = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 9, i32 2
  %161 = ptrtoint ptr %size798 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %size798, align 4
  %rem799 = urem i32 %add796, %162
  %tail801 = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 9, i32 1
  %163 = ptrtoint ptr %tail801 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %rem799, ptr %tail801, align 4
  br label %if.end894

if.else802:                                       ; preds = %if.end759
  %sq_ring803 = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 9
  %164 = ptrtoint ptr %sq_ring803 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %sq_ring803, align 4
  %size806 = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 9, i32 2
  %166 = ptrtoint ptr %size806 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %size806, align 4
  %add807 = add i32 %167, %165
  %tail809 = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 9, i32 1
  %168 = ptrtoint ptr %tail809 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tail809, align 4
  %sub810 = sub i32 %add807, %169
  %rem813 = urem i32 %sub810, %167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem813)
  %cmp814.not = icmp eq i32 %rem813, 0
  br i1 %cmp814.not, label %if.else802.if.then918_crit_edge, label %do.body818.preheader

if.else802.if.then918_crit_edge:                  ; preds = %if.else802
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then918

do.body818.preheader:                             ; preds = %if.else802
  %op_type844 = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 13
  %sq_wrtrk_array845 = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 4
  br label %do.body818

do.body818:                                       ; preds = %do.body818.do.body818_crit_edge, %do.body818.preheader
  %170 = ptrtoint ptr %tail809 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tail809, align 4
  %172 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %139, align 4
  %arrayidx.i1245 = getelementptr %struct.irdma_qp_quanta, ptr %173, i32 %171, i32 0, i32 3
  %174 = ptrtoint ptr %arrayidx.i1245 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %arrayidx.i1245, align 8
  %176 = lshr i64 %175, 24
  %177 = trunc i64 %176 to i8
  %conv843 = and i8 %177, 63
  %178 = ptrtoint ptr %op_type844 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv843, ptr %op_type844, align 4
  %179 = ptrtoint ptr %sq_wrtrk_array845 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %sq_wrtrk_array845, align 4
  %quanta847 = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %180, i32 %171, i32 2
  %181 = ptrtoint ptr %quanta847 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %quanta847, align 4
  %conv848 = zext i16 %182 to i32
  %add849 = add i32 %171, %conv848
  %183 = ptrtoint ptr %size806 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %size806, align 4
  %rem852 = urem i32 %add849, %184
  store i32 %rem852, ptr %tail809, align 4
  %cmp856.not = icmp eq i8 %conv843, 12
  br i1 %cmp856.not, label %do.body818.do.body818_crit_edge, label %do.end875

do.body818.do.body818_crit_edge:                  ; preds = %do.body818
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body818

do.end875:                                        ; preds = %do.body818
  %arrayidx860 = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %180, i32 %171
  %185 = ptrtoint ptr %arrayidx860 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %arrayidx860, align 8
  %187 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %186, ptr %info, align 8
  %188 = ptrtoint ptr %sq_wrtrk_array845 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sq_wrtrk_array845, align 4
  %wr_len865 = getelementptr %struct.irdma_sq_uk_wr_trk_info, ptr %189, i32 %171, i32 1
  %190 = ptrtoint ptr %wr_len865 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %wr_len865, align 8
  %bytes_xfered866 = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %info, i32 0, i32 2
  %192 = ptrtoint ptr %bytes_xfered866 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %bytes_xfered866, align 4
  %sq_flush_seen = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 30
  %193 = ptrtoint ptr %sq_flush_seen to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 1, ptr %sq_flush_seen, align 1
  %194 = ptrtoint ptr %sq_ring803 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %sq_ring803, align 4
  %196 = ptrtoint ptr %size806 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %size806, align 4
  %add880 = add i32 %197, %195
  %198 = ptrtoint ptr %tail809 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tail809, align 4
  %sub883 = sub i32 %add880, %199
  %rem886 = urem i32 %sub883, %197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem886)
  %cmp887.not = icmp eq i32 %rem886, 0
  br i1 %cmp887.not, label %if.then889, label %do.end875.if.end894_crit_edge

do.end875.if.end894_crit_edge:                    ; preds = %do.end875
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end894

if.then889:                                       ; preds = %do.end875
  call void @__sanitizer_cov_trace_pc() #13
  %200 = ptrtoint ptr %destroy_pending to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load890 = load i8, ptr %destroy_pending, align 4
  %bf.set892 = or i8 %bf.load890, 8
  store i8 %bf.set892, ptr %destroy_pending, align 4
  br label %if.end894

if.end894:                                        ; preds = %if.then889, %do.end875.if.end894_crit_edge, %do.end787
  %sq_ring895 = getelementptr inbounds %struct.irdma_qp_uk, ptr %139, i32 0, i32 9
  br label %land.lhs.true898

land.lhs.true898:                                 ; preds = %if.end894, %if.then688, %if.end664.land.lhs.true898_crit_edge
  %pring.1 = phi ptr [ %rq_ring666, %if.end664.land.lhs.true898_crit_edge ], [ %rq_ring666, %if.then688 ], [ %sq_ring895, %if.end894 ]
  %201 = ptrtoint ptr %comp_status458 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %comp_status458, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp900 = icmp ne i32 %202, 1
  %tobool903.not = icmp eq ptr %pring.1, null
  %or.cond1237 = select i1 %cmp900, i1 true, i1 %tobool903.not
  br i1 %or.cond1237, label %land.lhs.true898.if.then918_crit_edge, label %land.lhs.true898.land.lhs.true904_crit_edge

land.lhs.true898.land.lhs.true904_crit_edge:      ; preds = %land.lhs.true898
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true904

land.lhs.true898.if.then918_crit_edge:            ; preds = %land.lhs.true898
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then918

land.lhs.true898.thread:                          ; preds = %if.then674
  %203 = ptrtoint ptr %comp_status458 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %comp_status458, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %204)
  %cmp9001367 = icmp ne i32 %204, 1
  %tobool903.not1368 = icmp eq ptr %rq_ring666, null
  %or.cond12371369 = select i1 %cmp9001367, i1 true, i1 %tobool903.not1368
  br i1 %or.cond12371369, label %land.lhs.true898.thread.do.end1014_crit_edge, label %land.lhs.true898.thread.land.lhs.true904_crit_edge

land.lhs.true898.thread.land.lhs.true904_crit_edge: ; preds = %land.lhs.true898.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true904

land.lhs.true898.thread.do.end1014_crit_edge:     ; preds = %land.lhs.true898.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end1014

land.lhs.true904:                                 ; preds = %land.lhs.true898.thread.land.lhs.true904_crit_edge, %land.lhs.true898.land.lhs.true904_crit_edge
  %pring.11372 = phi ptr [ %rq_ring666, %land.lhs.true898.thread.land.lhs.true904_crit_edge ], [ %pring.1, %land.lhs.true898.land.lhs.true904_crit_edge ]
  %extract.t12301371 = phi i1 [ false, %land.lhs.true898.thread.land.lhs.true904_crit_edge ], [ true, %land.lhs.true898.land.lhs.true904_crit_edge ]
  %205 = ptrtoint ptr %pring.11372 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pring.11372, align 4
  %size906 = getelementptr inbounds %struct.irdma_ring, ptr %pring.11372, i32 0, i32 2
  %207 = ptrtoint ptr %size906 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %size906, align 4
  %add907 = add i32 %208, %206
  %tail908 = getelementptr inbounds %struct.irdma_ring, ptr %pring.11372, i32 0, i32 1
  %209 = ptrtoint ptr %tail908 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %tail908, align 4
  %sub909 = sub i32 %add907, %210
  %rem911 = urem i32 %sub909, %208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem911)
  %cmp912.not = icmp eq i32 %rem911, 0
  %spec.select = and i1 %extract.t12301371, %cmp912.not
  br i1 %spec.select, label %land.lhs.true904.if.then918_crit_edge, label %land.lhs.true904.do.end1014_crit_edge

land.lhs.true904.do.end1014_crit_edge:            ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end1014

land.lhs.true904.if.then918_crit_edge:            ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then918

if.then918:                                       ; preds = %land.lhs.true904.if.then918_crit_edge, %land.lhs.true898.if.then918_crit_edge, %if.else802.if.then918_crit_edge, %if.then584.if.then918_crit_edge, %lor.lhs.false546.if.then918_crit_edge, %if.end462.if.then918_crit_edge
  %ret_code.112791283 = phi i32 [ 0, %land.lhs.true904.if.then918_crit_edge ], [ -22, %if.else802.if.then918_crit_edge ], [ -22, %if.then584.if.then918_crit_edge ], [ 0, %land.lhs.true898.if.then918_crit_edge ], [ -68, %if.end462.if.then918_crit_edge ], [ -68, %lor.lhs.false546.if.then918_crit_edge ]
  %211 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %cq_ring, align 4
  %add921 = add i32 %212, 1
  %213 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %size, align 4
  %rem924 = urem i32 %add921, %214
  store i32 %rem924, ptr %cq_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem924)
  %tobool929.not = icmp eq i32 %rem924, 0
  br i1 %tobool929.not, label %if.then930, label %if.then918.if.end935_crit_edge

if.then918.if.end935_crit_edge:                   ; preds = %if.then918
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end935

if.then930:                                       ; preds = %if.then918
  call void @__sanitizer_cov_trace_pc() #13
  %215 = ptrtoint ptr %polarity20 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %polarity20, align 4
  %217 = xor i8 %216, 1
  store i8 %217, ptr %polarity20, align 4
  br label %if.end935

if.end935:                                        ; preds = %if.then930, %if.then918.if.end935_crit_edge
  br i1 %tobool.not, label %if.end935.if.end961_crit_edge, label %land.lhs.true938

if.end935.if.end961_crit_edge:                    ; preds = %if.end935
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end961

land.lhs.true938:                                 ; preds = %if.end935
  %218 = ptrtoint ptr %avoid_mem_cflct to i32
  call void @__asan_load1_noabort(i32 %218)
  %bf.load940 = load i8, ptr %avoid_mem_cflct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load940)
  %bf.cast942.not = icmp sgt i8 %bf.load940, -1
  br i1 %bf.cast942.not, label %if.then943, label %land.lhs.true938.if.end961_crit_edge

land.lhs.true938.if.end961_crit_edge:             ; preds = %land.lhs.true938
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end961

if.then943:                                       ; preds = %land.lhs.true938
  %add946 = add nuw i32 %rem924, 1
  %rem949 = urem i32 %add946, %214
  %219 = ptrtoint ptr %cq_ring to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %rem949, ptr %cq_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem949)
  %tobool954.not = icmp eq i32 %rem949, 0
  br i1 %tobool954.not, label %if.then955, label %if.then943.if.end961_crit_edge

if.then943.if.end961_crit_edge:                   ; preds = %if.then943
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end961

if.then955:                                       ; preds = %if.then943
  call void @__sanitizer_cov_trace_pc() #13
  %220 = ptrtoint ptr %polarity20 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %polarity20, align 4
  %222 = xor i8 %221, 1
  store i8 %222, ptr %polarity20, align 4
  br label %if.end961

if.end961:                                        ; preds = %if.then955, %if.then943.if.end961_crit_edge, %land.lhs.true938.if.end961_crit_edge, %if.end935.if.end961_crit_edge
  %223 = ptrtoint ptr %tail734 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %tail734, align 4
  %add964 = add i32 %224, 1
  %rem967 = urem i32 %add964, %214
  store i32 %rem967, ptr %tail734, align 4
  %225 = ptrtoint ptr %avoid_mem_cflct to i32
  call void @__asan_load1_noabort(i32 %225)
  %bf.load971 = load i8, ptr %avoid_mem_cflct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load971)
  %bf.cast973.not = icmp slt i8 %bf.load971, 0
  %brmerge = select i1 %bf.cast973.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end961.if.end986_crit_edge, label %if.then977

if.end961.if.end986_crit_edge:                    ; preds = %if.end961
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end986

if.then977:                                       ; preds = %if.end961
  call void @__sanitizer_cov_trace_pc() #13
  %add980 = add nuw i32 %rem967, 1
  %rem983 = urem i32 %add980, %214
  %226 = ptrtoint ptr %tail734 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %rem983, ptr %tail734, align 4
  br label %if.end986

if.end986:                                        ; preds = %if.then977, %if.end961.if.end986_crit_edge
  %227 = ptrtoint ptr %shadow_area to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %shadow_area, align 4
  %229 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %cq_ring, align 4
  %conv990 = zext i32 %230 to i64
  br label %cleanup1021.sink.split

do.end1014:                                       ; preds = %land.lhs.true904.do.end1014_crit_edge, %land.lhs.true898.thread.do.end1014_crit_edge
  %pring.11373 = phi ptr [ %pring.11372, %land.lhs.true904.do.end1014_crit_edge ], [ %rq_ring666, %land.lhs.true898.thread.do.end1014_crit_edge ]
  %tail1000 = getelementptr inbounds %struct.irdma_ring, ptr %pring.11373, i32 0, i32 1
  %231 = ptrtoint ptr %tail1000 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %tail1000, align 4
  %and992 = and i64 %qword3.0, -140733193388033
  %conv1017 = zext i32 %232 to i64
  %shl = shl nuw i64 %conv1017, 32
  %and1018 = and i64 %shl, 140733193388032
  %or1019 = or i64 %and1018, %and992
  br label %cleanup1021.sink.split

cleanup1021.sink.split:                           ; preds = %do.end1014, %if.end986
  %conv990.sink = phi i64 [ %conv990, %if.end986 ], [ %or1019, %do.end1014 ]
  %.sink1414 = phi ptr [ %228, %if.end986 ], [ %arrayidx.i, %do.end1014 ]
  %retval.2.ph = phi i32 [ %ret_code.112791283, %if.end986 ], [ 0, %do.end1014 ]
  %233 = tail call i64 @llvm.bswap.i64(i64 %conv990.sink) #11
  %234 = ptrtoint ptr %.sink1414 to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %233, ptr %.sink1414, align 8
  br label %cleanup1021

cleanup1021:                                      ; preds = %cleanup1021.sink.split, %if.end101.cleanup1021_crit_edge, %tailrecurse.cleanup1021_crit_edge
  %retval.2 = phi i32 [ %retval.2.ph, %cleanup1021.sink.split ], [ -22, %tailrecurse.cleanup1021_crit_edge ], [ -22, %if.end101.cleanup1021_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @irdma_get_wqe_shift(ptr nocapture noundef readonly %uk_attrs, i32 noundef %sge, i32 noundef %inline_data, ptr nocapture noundef writeonly %shift) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %shift, align 1
  %hw_rev = getelementptr inbounds %struct.irdma_uk_attrs, ptr %uk_attrs, i32 0, i32 9
  %1 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp ugt i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sge)
  %cmp2 = icmp ugt i32 %sge, 1
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inline_data)
  %cmp4 = icmp ugt i32 %inline_data, 8
  %or.cond = or i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then6, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sge)
  %cmp7 = icmp ult i32 %sge, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %inline_data)
  %cmp9 = icmp ult i32 %inline_data, 40
  %or.cond47 = and i1 %cmp7, %cmp9
  br i1 %or.cond47, label %if.then6.if.end34.sink.split_crit_edge, label %if.else

if.then6.if.end34.sink.split_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.sink.split

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sge)
  %cmp12 = icmp ult i32 %sge, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %inline_data)
  %cmp15 = icmp ult i32 %inline_data, 102
  %or.cond48 = and i1 %cmp12, %cmp15
  %. = select i1 %or.cond48, i8 2, i8 3
  br label %if.end34.sink.split

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inline_data)
  %cmp25 = icmp ugt i32 %inline_data, 16
  %or.cond49 = or i1 %cmp2, %cmp25
  br i1 %or.cond49, label %if.then27, label %if.else21.if.end34_crit_edge

if.else21.if.end34_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then27:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sge)
  %cmp28 = icmp ult i32 %sge, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %inline_data)
  %cmp30 = icmp ult i32 %inline_data, 49
  %3 = and i1 %cmp28, %cmp30
  %4 = select i1 %3, i8 1, i8 2
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then27, %if.else, %if.then6.if.end34.sink.split_crit_edge
  %.sink = phi i8 [ %4, %if.then27 ], [ 1, %if.then6.if.end34.sink.split_crit_edge ], [ %., %if.else ]
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %shift, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else21.if.end34_crit_edge, %if.then.if.end34_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @irdma_get_sqdepth(ptr nocapture noundef readonly %uk_attrs, i32 noundef %sq_size, i8 noundef zeroext %shift, ptr nocapture noundef writeonly %sqdepth) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %shift to i32
  %shl = shl i32 %sq_size, %conv
  %dec.i = add i32 %shl, 257
  %shr.i = lshr i32 %dec.i, 1
  %or.i = or i32 %shr.i, %dec.i
  %shr.1.i = lshr i32 %or.i, 2
  %or.1.i = or i32 %shr.1.i, %or.i
  %shr.2.i = lshr i32 %or.1.i, 4
  %or.2.i = or i32 %shr.2.i, %or.1.i
  %shr.3.i = lshr i32 %or.2.i, 8
  %or.3.i = or i32 %shr.3.i, %or.2.i
  %shr.4.i = lshr i32 %or.3.i, 16
  %or.4.i = or i32 %shr.4.i, %or.3.i
  %inc.i = add i32 %or.4.i, 1
  %0 = ptrtoint ptr %sqdepth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %inc.i, ptr %sqdepth, align 4
  %shl2 = shl i32 8, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %shl2)
  %cmp = icmp ult i32 %inc.i, %shl2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %sqdepth to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl2, ptr %sqdepth, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %max_hw_wq_quanta = getelementptr inbounds %struct.irdma_uk_attrs, ptr %uk_attrs, i32 0, i32 5
  %2 = ptrtoint ptr %max_hw_wq_quanta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_hw_wq_quanta, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %3)
  %cmp6 = icmp ugt i32 %inc.i, %3
  br i1 %cmp6, label %if.else.return_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then
  br label %return

return:                                           ; preds = %if.end9, %if.else.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -16, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @irdma_get_rqdepth(ptr nocapture noundef readonly %uk_attrs, i32 noundef %rq_size, i8 noundef zeroext %shift, ptr nocapture noundef writeonly %rqdepth) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %shift to i32
  %shl = shl i32 %rq_size, %conv
  %shr.i = lshr i32 %shl, 1
  %or.i = or i32 %shr.i, %shl
  %shr.1.i = lshr i32 %or.i, 2
  %or.1.i = or i32 %shr.1.i, %or.i
  %shr.2.i = lshr i32 %or.1.i, 4
  %or.2.i = or i32 %shr.2.i, %or.1.i
  %shr.3.i = lshr i32 %or.2.i, 8
  %or.3.i = or i32 %shr.3.i, %or.2.i
  %shr.4.i = lshr i32 %or.3.i, 16
  %or.4.i = or i32 %shr.4.i, %or.3.i
  %inc.i = add i32 %or.4.i, 1
  %0 = ptrtoint ptr %rqdepth to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %inc.i, ptr %rqdepth, align 4
  %shl2 = shl i32 8, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %shl2)
  %cmp = icmp ult i32 %inc.i, %shl2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %rqdepth to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl2, ptr %rqdepth, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %max_hw_rq_quanta = getelementptr inbounds %struct.irdma_uk_attrs, ptr %uk_attrs, i32 0, i32 4
  %2 = ptrtoint ptr %max_hw_rq_quanta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_hw_rq_quanta, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %3)
  %cmp6 = icmp ugt i32 %inc.i, %3
  br i1 %cmp6, label %if.else.return_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then
  br label %return

return:                                           ; preds = %if.end9, %if.else.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -16, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @irdma_uk_qp_init(ptr noundef %qp, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %uk_attrs = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %uk_attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uk_attrs, align 4
  %uk_attrs1 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 2
  %2 = ptrtoint ptr %uk_attrs1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %uk_attrs1, align 4
  %max_sq_frag_cnt = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 11
  %3 = ptrtoint ptr %max_sq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_sq_frag_cnt, align 4
  %max_hw_wq_frags = getelementptr inbounds %struct.irdma_uk_attrs, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %max_hw_wq_frags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_hw_wq_frags, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_rq_frag_cnt = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 12
  %7 = ptrtoint ptr %max_rq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_rq_frag_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp5 = icmp ugt i32 %8, %6
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hw_rev.i = getelementptr inbounds %struct.irdma_uk_attrs, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hw_rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp ugt i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2.i = icmp ugt i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %if.else21.i

if.then.i:                                        ; preds = %if.end
  br i1 %cmp2.i, label %if.then6.i, label %if.then.i.if.then.i169_crit_edge

if.then.i.if.then.i169_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i169

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp7.i = icmp ult i32 %8, 4
  br i1 %cmp7.i, label %if.then6.i.if.then.i169_crit_edge, label %if.else.i

if.then6.i.if.then.i169_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i169

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp12.i = icmp ult i32 %8, 8
  %..i = select i1 %cmp12.i, i8 2, i8 3
  br label %if.then.i169

if.else21.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp28.i = icmp ult i32 %8, 4
  %11 = select i1 %cmp28.i, i8 1, i8 2
  %rqshift.0 = select i1 %cmp2.i, i8 %11, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp9 = icmp eq i8 %10, 1
  br i1 %cmp9, label %if.else21.i158, label %if.else21.i181

if.else21.i158:                                   ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #13
  %max_inline_data = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 13
  %12 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_inline_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2.i151 = icmp ugt i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp25.i = icmp ugt i32 %13, 16
  %or.cond49.i = or i1 %cmp2.i151, %cmp25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp28.i159 = icmp ult i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %13)
  %cmp30.i = icmp ult i32 %13, 49
  %14 = and i1 %cmp28.i159, %cmp30.i
  %15 = select i1 %14, i32 1, i32 2
  %sqshift.0 = select i1 %or.cond49.i, i32 %15, i32 0
  %abi_ver = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 16
  %16 = ptrtoint ptr %abi_ver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %abi_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp14 = icmp sgt i32 %17, 4
  %spec.select201 = select i1 %cmp14, i8 2, i8 %rqshift.0
  br label %if.end21

if.then.i169:                                     ; preds = %if.else.i, %if.then6.i.if.then.i169_crit_edge, %if.then.i.if.then.i169_crit_edge
  %rqshift.0.ph = phi i8 [ %..i, %if.else.i ], [ 1, %if.then6.i.if.then.i169_crit_edge ], [ 0, %if.then.i.if.then.i169_crit_edge ]
  %add193 = add i32 %4, 1
  %max_inline_data20194 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 13
  %18 = ptrtoint ptr %max_inline_data20194 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_inline_data20194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add193)
  %cmp2.i166195 = icmp ugt i32 %add193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp4.i167 = icmp ugt i32 %19, 8
  %or.cond.i168 = or i1 %cmp2.i166195, %cmp4.i167
  br i1 %or.cond.i168, label %if.then6.i173, label %if.then.i169.if.end21_crit_edge

if.then.i169.if.end21_crit_edge:                  ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then6.i173:                                    ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add193)
  %cmp7.i170 = icmp ult i32 %add193, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %19)
  %cmp9.i171 = icmp ult i32 %19, 40
  %or.cond47.i172 = and i1 %cmp7.i170, %cmp9.i171
  br i1 %or.cond47.i172, label %if.then6.i173.if.end21_crit_edge, label %if.else.i178

if.then6.i173.if.end21_crit_edge:                 ; preds = %if.then6.i173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.else.i178:                                     ; preds = %if.then6.i173
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add193)
  %cmp12.i174 = icmp ult i32 %add193, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %19)
  %cmp15.i175 = icmp ult i32 %19, 102
  %or.cond48.i176 = and i1 %cmp12.i174, %cmp15.i175
  %..i177 = select i1 %or.cond48.i176, i32 2, i32 3
  br label %if.end21

if.else21.i181:                                   ; preds = %if.else21.i
  %add = add i32 %4, 1
  %max_inline_data20 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 13
  %20 = ptrtoint ptr %max_inline_data20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_inline_data20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp2.i166 = icmp ugt i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %21)
  %cmp25.i179 = icmp ugt i32 %21, 16
  %or.cond49.i180 = or i1 %cmp2.i166, %cmp25.i179
  br i1 %or.cond49.i180, label %if.then27.i184, label %if.else21.i181.if.end21_crit_edge

if.else21.i181.if.end21_crit_edge:                ; preds = %if.else21.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then27.i184:                                   ; preds = %if.else21.i181
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp28.i182 = icmp ult i32 %add, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %21)
  %cmp30.i183 = icmp ult i32 %21, 49
  %22 = and i1 %cmp28.i182, %cmp30.i183
  %23 = select i1 %22, i32 1, i32 2
  br label %if.end21

if.end21:                                         ; preds = %if.then27.i184, %if.else21.i181.if.end21_crit_edge, %if.else.i178, %if.then6.i173.if.end21_crit_edge, %if.then.i169.if.end21_crit_edge, %if.else21.i158
  %sqshift.2 = phi i32 [ 0, %if.then.i169.if.end21_crit_edge ], [ 0, %if.else21.i181.if.end21_crit_edge ], [ %23, %if.then27.i184 ], [ 1, %if.then6.i173.if.end21_crit_edge ], [ %..i177, %if.else.i178 ], [ %sqshift.0, %if.else21.i158 ]
  %rqshift.1 = phi i8 [ %rqshift.0.ph, %if.then.i169.if.end21_crit_edge ], [ %rqshift.0, %if.else21.i181.if.end21_crit_edge ], [ %rqshift.0, %if.then27.i184 ], [ %rqshift.0.ph, %if.then6.i173.if.end21_crit_edge ], [ %rqshift.0.ph, %if.else.i178 ], [ %spec.select201, %if.else21.i158 ]
  %qp_caps = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 8
  %24 = ptrtoint ptr %qp_caps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qp_caps, align 4
  %qp_caps22 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 13
  %26 = ptrtoint ptr %qp_caps22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %qp_caps22, align 4
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %29 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %qp, align 4
  %rq = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 1
  %30 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rq, align 4
  %rq_base = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 1
  %32 = ptrtoint ptr %rq_base to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %rq_base, align 4
  %type = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 15
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not = icmp eq i8 %34, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 %34
  %qp_type = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 21
  %35 = ptrtoint ptr %qp_type to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select, ptr %qp_type, align 2
  %shadow_area = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 4
  %36 = ptrtoint ptr %shadow_area to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %shadow_area, align 4
  %shadow_area27 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 6
  %38 = ptrtoint ptr %shadow_area27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %shadow_area27, align 4
  %sq_wrtrk_array = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 5
  %39 = ptrtoint ptr %sq_wrtrk_array to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sq_wrtrk_array, align 4
  %sq_wrtrk_array28 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 4
  %41 = ptrtoint ptr %sq_wrtrk_array28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %sq_wrtrk_array28, align 4
  %rq_wrid_array = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 6
  %42 = ptrtoint ptr %rq_wrid_array to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rq_wrid_array, align 4
  %rq_wrid_array29 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 5
  %44 = ptrtoint ptr %rq_wrid_array29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %rq_wrid_array29, align 4
  %wqe_alloc_db = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 3
  %45 = ptrtoint ptr %wqe_alloc_db to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wqe_alloc_db, align 4
  %wqe_alloc_db30 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 3
  %47 = ptrtoint ptr %wqe_alloc_db30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %wqe_alloc_db30, align 4
  %qp_id = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 7
  %48 = ptrtoint ptr %qp_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qp_id, align 4
  %qp_id31 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 12
  %50 = ptrtoint ptr %qp_id31 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %qp_id31, align 4
  %sq_size = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 9
  %51 = ptrtoint ptr %sq_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sq_size, align 4
  %sq_size32 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 14
  %53 = ptrtoint ptr %sq_size32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %sq_size32, align 4
  %push_mode = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 27
  %54 = ptrtoint ptr %push_mode to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %push_mode, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %push_mode, align 4
  %55 = ptrtoint ptr %max_sq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_sq_frag_cnt, align 4
  %max_sq_frag_cnt34 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 16
  %57 = ptrtoint ptr %max_sq_frag_cnt34 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %max_sq_frag_cnt34, align 4
  %shl = shl i32 %52, %sqshift.2
  %sq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9
  %58 = ptrtoint ptr %sq_ring to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %sq_ring, align 4
  %tail = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %tail, align 4
  %size = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %60 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shl, ptr %size, align 4
  %initial_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11
  %61 = ptrtoint ptr %initial_ring to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %initial_ring, align 4
  %tail41 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11, i32 1
  %62 = ptrtoint ptr %tail41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tail41, align 4
  %size43 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 11, i32 2
  %63 = ptrtoint ptr %size43 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shl, ptr %size43, align 4
  %first_sq_wq = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 14
  %64 = ptrtoint ptr %first_sq_wq to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %first_sq_wq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool44.not = icmp eq i8 %65, 0
  br i1 %tobool44.not, label %if.else50, label %if.then45

if.then45:                                        ; preds = %if.end21
  %legacy_mode.i = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 17
  %66 = ptrtoint ptr %legacy_mode.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %legacy_mode.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then45.irdma_setup_connection_wqes.exit_crit_edge

if.then45.irdma_setup_connection_wqes.exit_crit_edge: ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_setup_connection_wqes.exit

land.lhs.true.i:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %1, align 8
  %and.i = and i64 %69, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool1.not.i = icmp eq i64 %and.i, 0
  %spec.select.i = select i1 %tobool1.not.i, i16 1, i16 3
  br label %irdma_setup_connection_wqes.exit

irdma_setup_connection_wqes.exit:                 ; preds = %land.lhs.true.i, %if.then45.irdma_setup_connection_wqes.exit_crit_edge
  %move_cnt.0.i = phi i16 [ 1, %if.then45.irdma_setup_connection_wqes.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %conn_wqes.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 20
  %70 = ptrtoint ptr %conn_wqes.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %move_cnt.0.i, ptr %conn_wqes.i, align 4
  %conv.i = zext i16 %move_cnt.0.i to i32
  %rem.i = urem i32 %conv.i, %shl
  %71 = ptrtoint ptr %sq_ring to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %rem.i, ptr %sq_ring, align 4
  %72 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %rem.i, ptr %tail, align 4
  %73 = ptrtoint ptr %initial_ring to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %rem.i, ptr %initial_ring, align 4
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %74 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %swqe_polarity, align 1
  %bf.set49 = or i8 %bf.clear, 16
  %75 = ptrtoint ptr %push_mode to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %bf.set49, ptr %push_mode, align 4
  br label %if.end52

if.else50:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %swqe_polarity51 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %76 = ptrtoint ptr %swqe_polarity51 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %swqe_polarity51, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %irdma_setup_connection_wqes.exit
  %swqe_polarity_deferred = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 23
  %77 = ptrtoint ptr %swqe_polarity_deferred to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %swqe_polarity_deferred, align 4
  %rwqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 24
  %78 = ptrtoint ptr %rwqe_polarity to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %rwqe_polarity, align 1
  %rq_size = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 10
  %79 = ptrtoint ptr %rq_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rq_size, align 4
  %rq_size53 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 15
  %81 = ptrtoint ptr %rq_size53 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %rq_size53, align 4
  %82 = ptrtoint ptr %max_rq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_rq_frag_cnt, align 4
  %max_rq_frag_cnt55 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 17
  %84 = ptrtoint ptr %max_rq_frag_cnt55 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %max_rq_frag_cnt55, align 4
  %max_inline_data56 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %info, i32 0, i32 13
  %85 = ptrtoint ptr %max_inline_data56 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_inline_data56, align 4
  %max_inline_data57 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 18
  %87 = ptrtoint ptr %max_inline_data57 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %max_inline_data57, align 4
  %rq_wqe_size = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 25
  %88 = ptrtoint ptr %rq_wqe_size to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %rqshift.1, ptr %rq_wqe_size, align 2
  %rq_ring = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10
  %89 = ptrtoint ptr %rq_ring to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %rq_ring, align 4
  %tail60 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10, i32 1
  %90 = ptrtoint ptr %tail60 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %tail60, align 4
  %size63 = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 10, i32 2
  %91 = ptrtoint ptr %size63 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %80, ptr %size63, align 4
  %conv64 = zext i8 %rqshift.1 to i32
  %shl65 = shl nuw nsw i32 1, %conv64
  %conv66 = trunc i32 %shl65 to i8
  %rq_wqe_size_multiplier = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 26
  %92 = ptrtoint ptr %rq_wqe_size_multiplier to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv66, ptr %rq_wqe_size_multiplier, align 1
  %93 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %hw_rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %94)
  %cmp70 = icmp eq i8 %94, 1
  %wqe_ops = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 19
  br i1 %cmp70, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %95 = call ptr @memcpy(ptr %wqe_ops, ptr @iw_wqe_uk_ops_gen_1, i32 16)
  br label %cleanup

if.else73:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %96 = call ptr @memcpy(ptr %wqe_ops, ptr @iw_wqe_uk_ops, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else73, %if.then72, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -21, %lor.lhs.false.cleanup_crit_edge ], [ -21, %entry.cleanup_crit_edge ], [ 0, %if.else73 ], [ 0, %if.then72 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @irdma_uk_cq_init(ptr nocapture noundef %cq, ptr nocapture noundef readonly %info) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_base = getelementptr inbounds %struct.irdma_cq_uk_init_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %cq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_base, align 4
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cq, align 4
  %cq_id = getelementptr inbounds %struct.irdma_cq_uk_init_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cq_id, align 4
  %cq_id2 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 4
  %5 = ptrtoint ptr %cq_id2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cq_id2, align 4
  %cq_size = getelementptr inbounds %struct.irdma_cq_uk_init_info, ptr %info, i32 0, i32 4
  %6 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cq_size, align 4
  %cq_size3 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 5
  %8 = ptrtoint ptr %cq_size3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cq_size3, align 4
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %cqe_alloc_db4 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 1
  %11 = ptrtoint ptr %cqe_alloc_db4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %cqe_alloc_db4, align 4
  %cq_ack_db = getelementptr inbounds %struct.irdma_cq_uk_init_info, ptr %info, i32 0, i32 1
  %12 = ptrtoint ptr %cq_ack_db to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cq_ack_db, align 4
  %cq_ack_db5 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 2
  %14 = ptrtoint ptr %cq_ack_db5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %cq_ack_db5, align 4
  %shadow_area = getelementptr inbounds %struct.irdma_cq_uk_init_info, ptr %info, i32 0, i32 3
  %15 = ptrtoint ptr %shadow_area to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shadow_area, align 4
  %shadow_area6 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 3
  %17 = ptrtoint ptr %shadow_area6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %shadow_area6, align 4
  %avoid_mem_cflct = getelementptr inbounds %struct.irdma_cq_uk_init_info, ptr %info, i32 0, i32 6
  %18 = ptrtoint ptr %avoid_mem_cflct to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %avoid_mem_cflct, align 4, !range !31
  %avoid_mem_cflct7 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 8
  %20 = ptrtoint ptr %avoid_mem_cflct7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %avoid_mem_cflct7, align 1
  %bf.shl = shl nuw i8 %19, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %avoid_mem_cflct7, align 1
  %cq_ring = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6
  %21 = ptrtoint ptr %cq_ring to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cq_ring, align 4
  %tail = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tail, align 4
  %size = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %7, ptr %size, align 4
  %polarity = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 7
  %24 = ptrtoint ptr %polarity to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %polarity, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_uk_clean_cq(ptr noundef readnone %q, ptr nocapture noundef readonly %cq) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_ring = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6
  %0 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cq_ring, align 4
  %polarity1 = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 7
  %2 = ptrtoint ptr %polarity1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %polarity1, align 4
  %avoid_mem_cflct = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 8
  %size = getelementptr inbounds %struct.irdma_cq_uk, ptr %cq, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %avoid_mem_cflct to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load50 = load i8, ptr %avoid_mem_cflct, align 1
  %5 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cq, align 4
  %arrayidx51 = getelementptr %struct.irdma_extended_cqe, ptr %6, i32 %1
  %arrayidx352 = getelementptr %struct.irdma_cqe, ptr %6, i32 %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load50)
  %bf.cast.not4953 = icmp slt i8 %bf.load50, 0
  %cqe.054 = select i1 %bf.cast.not4953, ptr %arrayidx51, ptr %arrayidx352
  %arrayidx.i55 = getelementptr i64, ptr %cqe.054, i32 3
  %7 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i55, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i32 %9, 7
  %conv56 = and i32 %10, 1
  %conv2057 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv56, i32 %conv2057)
  %cmp.not58 = icmp eq i32 %conv56, %conv2057
  br i1 %cmp.not58, label %entry.if.end23_crit_edge, label %entry.do.end35_crit_edge

entry.do.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

entry.if.end23_crit_edge:                         ; preds = %entry
  br label %if.end23

if.end23:                                         ; preds = %if.end28.if.end23_crit_edge, %entry.if.end23_crit_edge
  %cqe.061 = phi ptr [ %cqe.0, %if.end28.if.end23_crit_edge ], [ %cqe.054, %entry.if.end23_crit_edge ]
  %temp.060 = phi i8 [ %spec.select, %if.end28.if.end23_crit_edge ], [ %3, %entry.if.end23_crit_edge ]
  %cq_head.059 = phi i32 [ %rem, %if.end28.if.end23_crit_edge ], [ %1, %entry.if.end23_crit_edge ]
  %arrayidx.i47 = getelementptr i64, ptr %cqe.061, i32 1
  %11 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.i47, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #11
  %conv24 = trunc i64 %13 to i32
  %14 = inttoptr i32 %conv24 to ptr
  %cmp25 = icmp eq ptr %14, %q
  br i1 %cmp25, label %if.then27, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %arrayidx.i47, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23.if.end28_crit_edge
  %add = add i32 %cq_head.059, 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %rem = urem i32 %add, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %xor = zext i1 %tobool.not to i8
  %spec.select = xor i8 %temp.060, %xor
  %18 = ptrtoint ptr %avoid_mem_cflct to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %avoid_mem_cflct, align 1
  %19 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cq, align 4
  %arrayidx = getelementptr %struct.irdma_extended_cqe, ptr %20, i32 %rem
  %arrayidx3 = getelementptr %struct.irdma_cqe, ptr %20, i32 %rem
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast.not49 = icmp slt i8 %bf.load, 0
  %cqe.0 = select i1 %bf.cast.not49, ptr %arrayidx, ptr %arrayidx3
  %arrayidx.i = getelementptr i64, ptr %cqe.0, i32 3
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i, align 8
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 7
  %conv = and i32 %24, 1
  %conv20 = zext i8 %spec.select to i32
  %cmp.not = icmp eq i32 %conv, %conv20
  br i1 %cmp.not, label %if.end28.if.end23_crit_edge, label %if.end28.do.end35_crit_edge

if.end28.do.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

if.end28.if.end23_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end35:                                         ; preds = %if.end28.do.end35_crit_edge, %entry.do.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_nop(ptr noundef %qp, i64 noundef %wr_id, i1 noundef zeroext %signaled, i1 noundef zeroext %post_sq) local_unnamed_addr #2 align 64 {
entry:
  %wqe_idx = alloca i32, align 4
  %info = alloca %struct.irdma_post_sq_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx) #11
  %0 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wqe_idx, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %info) #11
  %1 = getelementptr inbounds i8, ptr %info, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 56)
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %wr_id, ptr %info, align 8
  %call = call ptr @irdma_qp_get_next_send_wqe(ptr noundef %qp, ptr noundef nonnull %wqe_idx, i16 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %info)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %wqe_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wqe_idx, align 4
  %and.i = and i32 %5, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.irdma_clr_wqes.exit_crit_edge

if.end.irdma_clr_wqes.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %irdma_clr_wqes.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %5, 128
  %size.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add.i, %7
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %9, i32 %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  %swqe_polarity4.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %10 = ptrtoint ptr %swqe_polarity4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %swqe_polarity4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i = icmp ne i8 %11, 0
  %tobool3.not.sink.i = select i1 %tobool1.not.i, i1 %tobool6.not.i, i1 %tobool3.not.i
  %12 = sext i1 %tobool3.not.sink.i to i8
  %13 = zext i8 %12 to i32
  %14 = call ptr @memset(ptr %arrayidx.i, i32 %13, i32 4096)
  br label %irdma_clr_wqes.exit

irdma_clr_wqes.exit:                              ; preds = %if.then.i, %if.end.irdma_clr_wqes.exit_crit_edge
  %15 = call ptr @memset(ptr %call, i32 0, i32 24)
  %swqe_polarity = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 22
  %16 = ptrtoint ptr %swqe_polarity to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %swqe_polarity, align 1
  %or = select i1 %signaled, i64 4611686069966995456, i64 51539607552
  %conv64 = zext i8 %17 to i64
  %shl65 = shl i64 %conv64, 63
  %or67 = or i64 %shl65, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !32
  %18 = tail call i64 @llvm.bswap.i64(i64 %or67) #11
  %arrayidx.i87 = getelementptr i64, ptr %call, i32 3
  %19 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx.i87, align 8
  br i1 %post_sq, label %if.then69, label %irdma_clr_wqes.exit.cleanup_crit_edge

irdma_clr_wqes.exit.cleanup_crit_edge:            ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then69:                                        ; preds = %irdma_clr_wqes.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irdma_uk_qp_post_wr(ptr noundef %qp)
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %irdma_clr_wqes.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -20, %entry.cleanup_crit_edge ], [ 0, %if.then69 ], [ 0, %irdma_clr_wqes.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @irdma_fragcnt_to_wqesize_rq(i32 noundef %frag_cnt, ptr nocapture noundef writeonly %wqe_size) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %frag_cnt)
  %0 = icmp ult i32 %frag_cnt, 15
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [15 x i16], ptr @switch.table.irdma_fragcnt_to_wqesize_rq, i32 0, i32 %frag_cnt
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  %2 = ptrtoint ptr %wqe_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %switch.load, ptr %wqe_size, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -21, %entry.return_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irdma_copy_inline_data_gen_1(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src, i32 noundef %len, i8 noundef zeroext %polarity) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %len)
  %cmp = icmp ult i32 %len, 17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memcpy(ptr %dest, ptr %src, i32 %len)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = call ptr @memcpy(ptr %dest, ptr %src, i32 16)
  %add.ptr = getelementptr i8, ptr %src, i32 16
  %add.ptr1 = getelementptr i8, ptr %dest, i32 32
  %sub = add i32 %len, -16
  %2 = call ptr @memcpy(ptr %add.ptr1, ptr %add.ptr, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @irdma_inline_data_size_to_quanta_gen_1(i32 noundef %data_size) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %data_size)
  %cmp = icmp ult i32 %data_size, 17
  %conv = select i1 %cmp, i16 1, i16 2
  ret i16 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irdma_set_fragment_gen_1(ptr nocapture noundef writeonly %wqe, i32 noundef %offset, ptr noundef readonly %sge, i8 noundef zeroext %valid) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sge, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sge, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #11
  %shr.i = lshr i32 %offset, 3
  %arrayidx.i = getelementptr i64, ptr %wqe, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %arrayidx.i, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 8
  %conv33 = zext i32 %5 to i64
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %6 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkey, align 4
  %conv56 = zext i32 %7 to i64
  %shl57 = shl nuw i64 %conv56, 32
  %or = or i64 %shl57, %conv33
  %8 = tail call i64 @llvm.bswap.i64(i64 %or) #11
  br label %if.end60

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i78 = lshr i32 %offset, 3
  %arrayidx.i79 = getelementptr i64, ptr %wqe, i32 %shr.i78
  %9 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %arrayidx.i79, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then
  %.sink = phi i64 [ 0, %if.else ], [ %8, %if.then ]
  %add59.sink = add i32 %offset, 8
  %shr.i80 = lshr i32 %add59.sink, 3
  %arrayidx.i81 = getelementptr i64, ptr %wqe, i32 %shr.i80
  %10 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %.sink, ptr %arrayidx.i81, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irdma_set_mw_bind_wqe_gen_1(ptr nocapture noundef writeonly %wqe, ptr nocapture noundef readonly %op_info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.irdma_bind_window, ptr %op_info, i32 0, i32 2
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va, align 8
  %2 = ptrtoint ptr %1 to i32
  %conv = zext i32 %2 to i64
  %3 = tail call i64 @llvm.bswap.i64(i64 %conv) #11
  %4 = ptrtoint ptr %wqe to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %wqe, align 8
  %mw_stag = getelementptr inbounds %struct.irdma_bind_window, ptr %op_info, i32 0, i32 5
  %5 = ptrtoint ptr %mw_stag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mw_stag, align 4
  %7 = ptrtoint ptr %op_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op_info, align 8
  %conv12 = zext i32 %6 to i64
  %shl = shl nuw i64 %conv12, 32
  %conv34 = zext i32 %8 to i64
  %or = or i64 %shl, %conv34
  %9 = tail call i64 @llvm.bswap.i64(i64 %or) #11
  %arrayidx.i = getelementptr i64, ptr %wqe, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx.i, align 8
  %bind_len = getelementptr inbounds %struct.irdma_bind_window, ptr %op_info, i32 0, i32 1
  %11 = ptrtoint ptr %bind_len to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bind_len, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #11
  %arrayidx.i46 = getelementptr i64, ptr %wqe, i32 2
  %14 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx.i46, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_copy_inline_data(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src, i32 noundef %len, i8 noundef zeroext %polarity) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i8 %polarity, 7
  %add.ptr = getelementptr i8, ptr %dest, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %len)
  %cmp = icmp ult i32 %len, 9
  br i1 %cmp, label %if.then, label %while.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %len)
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %src, align 8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %add.ptr, align 8
  %sub = add i32 %len, -8
  %add.ptr3 = getelementptr i8, ptr %src, i32 8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dest.pn33 = phi ptr [ %dest.addr.0, %while.body.while.body_crit_edge ], [ %dest, %while.body.preheader ]
  %len.addr.032 = phi i32 [ %sub8, %while.body.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %src.addr.031 = phi ptr [ %add.ptr10, %while.body.while.body_crit_edge ], [ %add.ptr3, %while.body.preheader ]
  %dest.addr.0 = getelementptr i8, ptr %dest.pn33, i32 32
  %4 = tail call i32 @llvm.umin.i32(i32 %len.addr.032, i32 31)
  %5 = call ptr @memcpy(ptr %dest.addr.0, ptr %src.addr.031, i32 %4)
  %add.ptr7 = getelementptr i8, ptr %dest.pn33, i32 63
  %6 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %shl, ptr %add.ptr7, align 1
  %sub8 = sub i32 %len.addr.032, %4
  %add.ptr10 = getelementptr i8, ptr %src.addr.031, i32 %4
  %tobool.not = icmp eq i32 %sub8, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @irdma_inline_data_size_to_quanta(i32 noundef %data_size) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %data_size)
  %cmp = icmp ult i32 %data_size, 9
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %data_size)
  %cmp1 = icmp ult i32 %data_size, 40
  br i1 %cmp1, label %if.else.return_crit_edge, label %if.else3

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %data_size)
  %cmp4 = icmp ult i32 %data_size, 71
  br i1 %cmp4, label %if.else3.return_crit_edge, label %if.else6

if.else3.return_crit_edge:                        ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %data_size)
  %cmp7 = icmp ult i32 %data_size, 102
  br i1 %cmp7, label %if.else6.return_crit_edge, label %if.else9

if.else6.return_crit_edge:                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 133, i32 %data_size)
  %cmp10 = icmp ult i32 %data_size, 133
  br i1 %cmp10, label %if.else9.return_crit_edge, label %if.else12

if.else9.return_crit_edge:                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 164, i32 %data_size)
  %cmp13 = icmp ult i32 %data_size, 164
  br i1 %cmp13, label %if.else12.return_crit_edge, label %if.else15

if.else12.return_crit_edge:                       ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 195, i32 %data_size)
  %cmp16 = icmp ult i32 %data_size, 195
  %. = select i1 %cmp16, i16 7, i16 8
  br label %return

return:                                           ; preds = %if.else15, %if.else12.return_crit_edge, %if.else9.return_crit_edge, %if.else6.return_crit_edge, %if.else3.return_crit_edge, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 1, %entry.return_crit_edge ], [ 2, %if.else.return_crit_edge ], [ 3, %if.else3.return_crit_edge ], [ 4, %if.else6.return_crit_edge ], [ 5, %if.else9.return_crit_edge ], [ 6, %if.else12.return_crit_edge ], [ %., %if.else15 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_set_fragment(ptr nocapture noundef writeonly %wqe, i32 noundef %offset, ptr noundef readonly %sge, i8 noundef zeroext %valid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sge, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %sge to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sge, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #11
  %shr.i = lshr i32 %offset, 3
  %arrayidx.i = getelementptr i64, ptr %wqe, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %arrayidx.i, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 8
  %conv31 = zext i8 %valid to i64
  %shl32 = shl i64 %conv31, 63
  %conv54 = zext i32 %5 to i64
  %shl55 = shl nuw i64 %conv54, 32
  %and56 = and i64 %shl55, 9223372032559808512
  %or = or i64 %and56, %shl32
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %6 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkey, align 4
  %conv77 = zext i32 %7 to i64
  %or80 = or i64 %or, %conv77
  %8 = tail call i64 @llvm.bswap.i64(i64 %or80) #11
  br label %if.end103

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i130 = lshr i32 %offset, 3
  %arrayidx.i131 = getelementptr i64, ptr %wqe, i32 %shr.i130
  %9 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %arrayidx.i131, align 8
  %conv100 = zext i8 %valid to i64
  %10 = shl nuw nsw i64 %conv100, 7
  %11 = and i64 %10, 128
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then
  %.sink = phi i64 [ %11, %if.else ], [ %8, %if.then ]
  %add81.sink = add i32 %offset, 8
  %shr.i132 = lshr i32 %add81.sink, 3
  %arrayidx.i133 = getelementptr i64, ptr %wqe, i32 %shr.i132
  %12 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %.sink, ptr %arrayidx.i133, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irdma_set_mw_bind_wqe(ptr nocapture noundef writeonly %wqe, ptr nocapture noundef readonly %op_info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.irdma_bind_window, ptr %op_info, i32 0, i32 2
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va, align 8
  %2 = ptrtoint ptr %1 to i32
  %conv = zext i32 %2 to i64
  %3 = tail call i64 @llvm.bswap.i64(i64 %conv) #11
  %4 = ptrtoint ptr %wqe to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %wqe, align 8
  %5 = ptrtoint ptr %op_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %op_info, align 8
  %mw_stag = getelementptr inbounds %struct.irdma_bind_window, ptr %op_info, i32 0, i32 5
  %7 = ptrtoint ptr %mw_stag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mw_stag, align 4
  %conv12 = zext i32 %6 to i64
  %shl = shl nuw i64 %conv12, 32
  %conv34 = zext i32 %8 to i64
  %or = or i64 %shl, %conv34
  %9 = tail call i64 @llvm.bswap.i64(i64 %or) #11
  %arrayidx.i = getelementptr i64, ptr %wqe, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx.i, align 8
  %bind_len = getelementptr inbounds %struct.irdma_bind_window, ptr %op_info, i32 0, i32 1
  %11 = ptrtoint ptr %bind_len to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bind_len, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #11
  %arrayidx.i46 = getelementptr i64, ptr %wqe, i32 2
  %14 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx.i46, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @iw_wqe_uk_ops_gen_1, !1, !"iw_wqe_uk_ops_gen_1", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/uk.c", i32 1346, i32 38}
!2 = !{ptr @iw_wqe_uk_ops, !3, !"iw_wqe_uk_ops", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/irdma/uk.c", i32 1339, i32 38}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2158613825}
!14 = !{i64 2158654219}
!15 = !{i64 5025485}
!16 = !{i64 2158654630}
!17 = !{i64 2158655041}
!18 = !{i64 2158613682}
!19 = !{!"auto-init"}
!20 = !{i64 2159049111}
!21 = !{i64 2159314693}
!22 = !{i64 2159777672}
!23 = !{i64 2160285374}
!24 = !{i64 2160768068}
!25 = !{i64 2160891913}
!26 = !{i64 2160952549}
!27 = !{i64 2161402609}
!28 = !{i64 2161402828}
!29 = !{i64 2161419108}
!30 = !{i64 2161466383}
!31 = !{i8 0, i8 2}
!32 = !{i64 2162282497}
