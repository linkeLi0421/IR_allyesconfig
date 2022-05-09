; ModuleID = '/llk/IR_all_yes/drivers/crypto/marvell/cesa/tdma.c_pt.bc'
source_filename = "../drivers/crypto/marvell/cesa/tdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mv_cesa_sg_dma_iter = type { i32, ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mv_cesa_dma_iter = type { i32, i32, i32 }
%struct.mv_cesa_engine = type { i32, ptr, %union.anon, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_queue, %struct.atomic_t, %struct.mv_cesa_tdma_chain, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mv_cesa_tdma_chain = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mv_cesa_req = type { ptr, %struct.mv_cesa_tdma_chain }
%struct.mv_cesa_tdma_desc = type { i32, %union.anon.5, %union.anon.6, i32, i32, ptr, %union.anon.7, i32 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { ptr }
%struct.mv_cesa_dev = type { ptr, ptr, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.mv_cesa_dev_dma = type { ptr, ptr, ptr, ptr }
%struct.mv_cesa_sec_accel_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.mv_cesa_req_ops = type { ptr, ptr, ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/crypto/marvell/cesa/tdma.c\00", [61 x i8] zeroinitializer }, align 32
@cesa_dev = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [38 x i8] c"../drivers/crypto/marvell/cesa/tdma.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 53, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mv_cesa_req_dma_iter_next_transfer(ptr nocapture noundef readonly %iter, ptr nocapture noundef %sgiter, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %sgiter, i32 0, i32 1
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %op_offset = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %sgiter, i32 0, i32 3
  %2 = ptrtoint ptr %op_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_offset, align 4
  %add = add i32 %3, %len
  store i32 %add, ptr %op_offset, align 4
  %offset = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %sgiter, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add1 = add i32 %5, %len
  store i32 %add1, ptr %offset, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %7)
  %cmp = icmp eq i32 %add1, %7
  br i1 %cmp, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end7, label %if.then4.return_crit_edge

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end7:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %offset, align 4
  %call10 = tail call ptr @sg_next(ptr noundef nonnull %1) #6
  %11 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %sg, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %if.end.if.end12_crit_edge
  %12 = ptrtoint ptr %op_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op_offset, align 4
  %op_len = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %iter, i32 0, i32 2
  %14 = ptrtoint ptr %op_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp14 = icmp ne i32 %13, %15
  br label %return

return:                                           ; preds = %if.end12, %if.then4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.then4.return_crit_edge ], [ %cmp14, %if.end12 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv_cesa_dma_step(ptr nocapture noundef readonly %dreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dreq, align 4
  %regs = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 56840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !11
  %int_mask1.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %int_mask1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_mask1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp.i = icmp eq i32 %5, 128
  br i1 %cmp.i, label %entry.mv_cesa_set_int_mask.exit_crit_edge, label %if.end.i

entry.mv_cesa_set_int_mask.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_set_int_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 56868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #6, !srcloc !11
  %8 = ptrtoint ptr %int_mask1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %int_mask1.i, align 4
  br label %mv_cesa_set_int_mask.exit

mv_cesa_set_int_mask.exit:                        ; preds = %if.end.i, %entry.mv_cesa_set_int_mask.exit_crit_edge
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 68747264) #6, !srcloc !11
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 56840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -2144731136) #6, !srcloc !11
  %chain = getelementptr inbounds %struct.mv_cesa_req, ptr %dreq, i32 0, i32 1
  %13 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chain, align 4
  %cur_dma = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %cur_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_dma, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %19, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %17) #6, !srcloc !11
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %21, i32 56832
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !13
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %mv_cesa_set_int_mask.exit.if.end_crit_edge, label %do.end, !prof !14

mv_cesa_set_int_mask.exit.if.end_crit_edge:       ; preds = %mv_cesa_set_int_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %mv_cesa_set_int_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %mv_cesa_set_int_mask.exit.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr35 = getelementptr i8, ptr %25, i32 56832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 16777216) #6, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv_cesa_dma_cleanup(ptr nocapture noundef %dreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.mv_cesa_req, ptr %dreq, i32 0, i32 1
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %tobool.not13 = icmp eq ptr %1, null
  br i1 %tobool.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %tdma.014 = phi ptr [ %17, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.014, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 134217727
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp eq i32 %and, 2
  br i1 %cmp, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %4 = load ptr, ptr @cesa_dev, align 4
  %dma = getelementptr inbounds %struct.mv_cesa_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma, align 4
  %op_pool = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %op_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %op_pool, align 4
  %9 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.014, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.014, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void @dma_pool_free(ptr noundef %8, ptr noundef %11, i32 noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.014, i32 0, i32 5
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %18 = load ptr, ptr @cesa_dev, align 4
  %dma1 = getelementptr inbounds %struct.mv_cesa_dev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %cur_dma = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.014, i32 0, i32 4
  %23 = ptrtoint ptr %cur_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur_dma, align 4
  tail call void @dma_pool_free(ptr noundef %22, ptr noundef nonnull %tdma.014, i32 noundef %24) #6
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %25 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %chain, align 4
  %last = getelementptr inbounds %struct.mv_cesa_req, ptr %dreq, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %last, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv_cesa_dma_prepare(ptr nocapture noundef readonly %dreq, ptr nocapture noundef readonly %engine) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.mv_cesa_req, ptr %dreq, i32 0, i32 1
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %tdma.024 = load ptr, ptr %chain, align 4
  %tobool.not25 = icmp eq ptr %tdma.024, null
  br i1 %tobool.not25, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sram_dma = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tdma.026 = phi ptr [ %tdma.024, %for.body.lr.ph ], [ %tdma.0, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.026, i32 0, i32 7
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool1.not = icmp sgt i32 %2, -1
  br i1 %tobool1.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.026, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %sram_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sram_dma, align 4
  %add = add i32 %7, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %add)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and3 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.026, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %sram_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sram_dma, align 4
  %add7 = add i32 %16, %14
  %17 = tail call i32 @llvm.bswap.i32(i32 %add7)
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %12, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and10 = and i32 %20, 134217727
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and10)
  %cmp = icmp eq i32 %and10, 2
  br i1 %cmp, label %if.then11, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %21 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.026, i32 0, i32 6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %sram_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sram_dma, align 4
  %and.i = and i32 %25, 2047
  %add.i = add nuw nsw i32 %and.i, 128
  %or.i = mul nuw nsw i32 %add.i, 65537
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %enc_p.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %enc_p.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %enc_p.i, align 4
  %add2.i = add nuw nsw i32 %and.i, 32
  %28 = tail call i32 @llvm.bswap.i32(i32 %add2.i) #6
  %enc_key_p.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %23, i32 0, i32 3
  %29 = ptrtoint ptr %enc_key_p.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %enc_key_p.i, align 4
  %add4.i = add nuw nsw i32 %and.i, 64
  %shl6.i = shl nuw nsw i32 %add4.i, 16
  %or7.i = or i32 %shl6.i, %add4.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #6
  %enc_iv.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %23, i32 0, i32 4
  %31 = ptrtoint ptr %enc_iv.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %enc_iv.i, align 4
  %mac_src_p.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %23, i32 0, i32 5
  %32 = ptrtoint ptr %mac_src_p.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mac_src_p.i, align 4
  %and10.i = and i32 %33, 65535
  %34 = tail call i32 @llvm.bswap.i32(i32 %add.i) #6
  %or14.i = or i32 %and10.i, %34
  %35 = ptrtoint ptr %mac_src_p.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or14.i, ptr %mac_src_p.i, align 4
  %mac_digest.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %23, i32 0, i32 6
  %36 = ptrtoint ptr %mac_digest.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mac_digest.i, align 4
  %and16.i = and i32 %37, 65535
  %add17.i = add nuw nsw i32 %and.i, 96
  %38 = tail call i32 @llvm.bswap.i32(i32 %add17.i) #6
  %or20.i = or i32 %and16.i, %38
  %39 = ptrtoint ptr %mac_digest.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or20.i, ptr %mac_digest.i, align 4
  %or24.i = or i32 %shl6.i, %add2.i
  %40 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #6
  %mac_iv.i = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %23, i32 0, i32 7
  %41 = ptrtoint ptr %mac_iv.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mac_iv.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.end8.for.inc_crit_edge
  %next = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.026, i32 0, i32 5
  %42 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %42)
  %tdma.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %tdma.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mv_cesa_tdma_chain(ptr nocapture noundef %engine, ptr nocapture noundef readonly %dreq) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 13
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %last = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %chain3 = getelementptr inbounds %struct.mv_cesa_req, ptr %dreq, i32 0, i32 1
  %4 = ptrtoint ptr %chain3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain3, align 4
  %6 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %chain, align 4
  %last8 = getelementptr inbounds %struct.mv_cesa_req, ptr %dreq, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %last8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %last8, align 4
  %9 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %last, align 4
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %last13 = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %last13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last13, align 4
  %chain14 = getelementptr inbounds %struct.mv_cesa_req, ptr %dreq, i32 0, i32 1
  %12 = ptrtoint ptr %chain14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chain14, align 4
  %next = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %next, align 4
  %last17 = getelementptr inbounds %struct.mv_cesa_req, ptr %dreq, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %last17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %last17, align 4
  store ptr %16, ptr %last13, align 4
  %flags = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %11, i32 0, i32 7
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true20, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true20:                                  ; preds = %if.else
  %19 = ptrtoint ptr %chain14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chain14, align 4
  %flags23 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags23, align 4
  %and24 = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true20.if.end29_crit_edge

land.lhs.true20.if.end29_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  %cur_dma = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %cur_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cur_dma, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %next_dma = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %11, i32 0, i32 3
  %26 = ptrtoint ptr %next_dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %next_dma, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true20.if.end29_crit_edge, %if.else.if.end29_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_tdma_process(ptr noundef %engine, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %backlog = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !12
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  %chain = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 13
  %4 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain, align 4
  %lock = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 4
  %req8 = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 5
  %last = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 13, i32 1
  %complete_queue.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 14
  %prev.i.i = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 14, i32 1
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %entry
  %tdma.0 = phi ptr [ %5, %entry ], [ %7, %lor.lhs.false.for.cond_crit_edge ]
  %req.0 = phi ptr [ null, %entry ], [ %req.276, %lor.lhs.false.for.cond_crit_edge ]
  %tobool.not = icmp eq ptr %tdma.0, null
  br i1 %tobool.not, label %for.cond.if.end42_crit_edge, label %for.body

for.cond.if.end42_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

for.body:                                         ; preds = %for.cond
  call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %next2 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.0, i32 0, i32 5
  %6 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next2, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %flags = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.0, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.body.lor.lhs.false_crit_edge, label %if.then

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %backlog) #6
  %10 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %backlog, align 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %tobool6.not = icmp eq ptr %req.0, null
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %req8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req8, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call ptr @mv_cesa_dequeue_req_locked(ptr noundef %engine, ptr noundef nonnull %backlog) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %req.1 = phi ptr [ %call9, %if.else ], [ %12, %if.then7 ]
  %13 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next2, align 4
  %15 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %chain, align 4
  store ptr null, ptr %next2, align 4
  %16 = load ptr, ptr %chain, align 4
  %cmp = icmp eq ptr %16, null
  br i1 %cmp, label %if.then16, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %last, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %req.1, i32 0, i32 3
  %18 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm, align 4
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 0, i32 5
  %cur_dma = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.0, i32 0, i32 4
  %20 = ptrtoint ptr %cur_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cur_dma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %3)
  %cmp21 = icmp eq i32 %21, %3
  %spec.select = select i1 %cmp21, i32 %status, i32 128
  %22 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_ctx.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call22 = call i32 %25(ptr noundef %req.1, i32 noundef %spec.select) #6
  %26 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %__crt_ctx.i, align 4
  %complete = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %complete, align 4
  call void %29(ptr noundef %req.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp24 = icmp eq i32 %call22, 0
  br i1 %cmp24, label %if.then25, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %if.end18
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %req.1, ptr noundef %31, ptr noundef %complete_queue.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then25.if.end26_crit_edge

if.then25.if.end26_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end.i.i.i:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %req.1, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %req.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %complete_queue.i, ptr %req.1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %req.1, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %req.1, ptr %31, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end.i.i.i, %if.then25.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %36 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %backlog, align 4
  %tobool27.not = icmp eq ptr %37, null
  br i1 %tobool27.not, label %if.end26.if.end31_crit_edge, label %if.then28

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %complete29 = getelementptr inbounds %struct.crypto_async_request, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %complete29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %complete29, align 4
  call void %39(ptr noundef nonnull %37, i32 noundef -115) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %backlog) #6
  br i1 %cmp24, label %if.end31.lor.lhs.false_crit_edge, label %if.then38

if.end31.lor.lhs.false_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %req.276 = phi ptr [ %req.1, %if.end31.lor.lhs.false_crit_edge ], [ %req.0, %for.body.lor.lhs.false_crit_edge ]
  %cur_dma33 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %tdma.0, i32 0, i32 4
  %40 = ptrtoint ptr %cur_dma33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_dma33, align 4
  %cmp34 = icmp eq i32 %41, %3
  br i1 %cmp34, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %42 = ptrtoint ptr %req8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %req.1, ptr %req8, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %lor.lhs.false.if.end42_crit_edge, %for.cond.if.end42_crit_edge
  %res.280 = phi i32 [ %call22, %if.then38 ], [ 0, %lor.lhs.false.if.end42_crit_edge ], [ 0, %for.cond.if.end42_crit_edge ]
  ret i32 %res.280
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_cesa_dequeue_req_locked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_result_op(ptr nocapture noundef %chain, i32 noundef %src, i32 noundef %size, i32 noundef %flags, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %dma_handle.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %0 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle.i, align 4, !annotation !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %1 = load ptr, ptr @cesa_dev, align 4
  %dma.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %or.i.i = or i32 %gfp_flags, 256
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %5, i32 noundef %or.i.i, ptr noundef nonnull %dma_handle.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mv_cesa_dma_add_desc.exit.thread, label %if.end.i

mv_cesa_dma_add_desc.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  br label %if.then

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_handle.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cur_dma.i, align 4
  %last.i = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %chain, i32 0, i32 1
  %9 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %last.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge, label %if.then3.i

if.end.i.mv_cesa_dma_add_desc.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_dma_add_desc.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call i32 @llvm.bswap.i32(i32 %7) #6
  %next_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %next_dma.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %next_dma.i, align 4
  %13 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %last.i, align 4
  %next.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %14, i32 0, i32 5
  br label %mv_cesa_dma_add_desc.exit

mv_cesa_dma_add_desc.exit:                        ; preds = %if.then3.i, %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge
  %chain.sink.i = phi ptr [ %next.i, %if.then3.i ], [ %chain, %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge ]
  %15 = ptrtoint ptr %chain.sink.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %chain.sink.i, align 4
  %16 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %last.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mv_cesa_dma_add_desc.exit.if.then_crit_edge, label %for.cond.preheader

mv_cesa_dma_add_desc.exit.if.then_crit_edge:      ; preds = %mv_cesa_dma_add_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond.preheader:                               ; preds = %mv_cesa_dma_add_desc.exit
  %17 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %17)
  %op_desc.031 = load ptr, ptr %chain, align 4
  %tobool.not32 = icmp eq ptr %op_desc.031, null
  br i1 %tobool.not32, label %for.cond.preheader.cleanup12_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup12_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

if.then:                                          ; preds = %mv_cesa_dma_add_desc.exit.if.then_crit_edge, %mv_cesa_dma_add_desc.exit.thread
  %retval.0.i29 = phi ptr [ inttoptr (i32 -12 to ptr), %mv_cesa_dma_add_desc.exit.thread ], [ %call.i.i, %mv_cesa_dma_add_desc.exit.if.then_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i29 to i32
  br label %cleanup12

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %op_desc.033 = phi ptr [ %op_desc.0, %for.inc.for.body_crit_edge ], [ %op_desc.031, %for.cond.preheader.for.body_crit_edge ]
  %flags3 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %op_desc.033, i32 0, i32 7
  %19 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags3, align 4
  %and = and i32 %20, 134217727
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp eq i32 %and, 2
  br i1 %cmp, label %if.end8, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %op_desc.033, i32 0, i32 5
  %21 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %21)
  %op_desc.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %op_desc.0, null
  br i1 %tobool.not, label %for.inc.cleanup12_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %size, -2147483648
  %22 = call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %call.i.i, align 4
  %24 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %src, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %op_desc.033, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %op_desc.033, i32 0, i32 6
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %34, align 4
  %and9 = and i32 %flags, -1073741824
  %or10 = or i32 %and9, 3
  %flags11 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or10, ptr %flags11, align 4
  br label %cleanup12

cleanup12:                                        ; preds = %if.end8, %for.inc.cleanup12_crit_edge, %if.then, %for.cond.preheader.cleanup12_crit_edge
  %retval.0 = phi i32 [ %18, %if.then ], [ 0, %if.end8 ], [ -5, %for.cond.preheader.cleanup12_crit_edge ], [ -5, %for.inc.cleanup12_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mv_cesa_dma_add_op(ptr nocapture noundef %chain, ptr nocapture noundef readonly %op_templ, i1 noundef zeroext %skip_ctx, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %dma_handle.i = alloca i32, align 4
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #6
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %1 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dma_handle.i, align 4, !annotation !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %2 = load ptr, ptr @cesa_dev, align 4
  %dma.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %or.i.i = or i32 %flags, 256
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %6, i32 noundef %or.i.i, ptr noundef nonnull %dma_handle.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mv_cesa_dma_add_desc.exit.thread, label %if.end.i

mv_cesa_dma_add_desc.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_handle.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cur_dma.i, align 4
  %last.i = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %chain, i32 0, i32 1
  %10 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge, label %if.then3.i

if.end.i.mv_cesa_dma_add_desc.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_dma_add_desc.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = call i32 @llvm.bswap.i32(i32 %8) #6
  %next_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %next_dma.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %next_dma.i, align 4
  %14 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %last.i, align 4
  %next.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %15, i32 0, i32 5
  br label %mv_cesa_dma_add_desc.exit

mv_cesa_dma_add_desc.exit:                        ; preds = %if.then3.i, %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge
  %chain.sink.i = phi ptr [ %next.i, %if.then3.i ], [ %chain, %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge ]
  %16 = ptrtoint ptr %chain.sink.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %chain.sink.i, align 4
  %17 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %last.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mv_cesa_dma_add_desc.exit.cleanup_crit_edge, label %if.end

mv_cesa_dma_add_desc.exit.cleanup_crit_edge:      ; preds = %mv_cesa_dma_add_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mv_cesa_dma_add_desc.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %18 = load ptr, ptr @cesa_dev, align 4
  %dma = getelementptr inbounds %struct.mv_cesa_dev, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma, align 4
  %op_pool = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %op_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %op_pool, align 4
  %call3 = call ptr @dma_pool_alloc(ptr noundef %22, i32 noundef %flags, ptr noundef nonnull %dma_handle) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memcpy(ptr %call3, ptr %op_templ, i32 128)
  %24 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %last.i, align 4
  %26 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %25, i32 0, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call3, ptr %26, align 4
  %or = select i1 %skip_ctx, i32 -2147483616, i32 -2147483520
  %28 = call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %25, align 4
  %30 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_handle, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %25, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %35, align 4
  %flags8 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %25, i32 0, i32 7
  %37 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -2147483646, ptr %flags8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %mv_cesa_dma_add_desc.exit.cleanup_crit_edge, %mv_cesa_dma_add_desc.exit.thread
  %retval.0 = phi ptr [ %call3, %if.end6 ], [ inttoptr (i32 -12 to ptr), %mv_cesa_dma_add_desc.exit.thread ], [ %call.i.i, %mv_cesa_dma_add_desc.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_data_transfer(ptr nocapture noundef %chain, i32 noundef %dst, i32 noundef %src, i32 noundef %size, i32 noundef %flags, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %dma_handle.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %0 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle.i, align 4, !annotation !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %1 = load ptr, ptr @cesa_dev, align 4
  %dma.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %or.i.i = or i32 %gfp_flags, 256
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %5, i32 noundef %or.i.i, ptr noundef nonnull %dma_handle.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mv_cesa_dma_add_desc.exit.thread, label %if.end.i

mv_cesa_dma_add_desc.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  br label %if.then

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_handle.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cur_dma.i, align 4
  %last.i = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %chain, i32 0, i32 1
  %9 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %last.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge, label %if.then3.i

if.end.i.mv_cesa_dma_add_desc.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_dma_add_desc.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call i32 @llvm.bswap.i32(i32 %7) #6
  %next_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %next_dma.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %next_dma.i, align 4
  %13 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %last.i, align 4
  %next.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %14, i32 0, i32 5
  br label %mv_cesa_dma_add_desc.exit

mv_cesa_dma_add_desc.exit:                        ; preds = %if.then3.i, %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge
  %chain.sink.i = phi ptr [ %next.i, %if.then3.i ], [ %chain, %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge ]
  %15 = ptrtoint ptr %chain.sink.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %chain.sink.i, align 4
  %16 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %last.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mv_cesa_dma_add_desc.exit.if.then_crit_edge, label %if.end

mv_cesa_dma_add_desc.exit.if.then_crit_edge:      ; preds = %mv_cesa_dma_add_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %mv_cesa_dma_add_desc.exit.if.then_crit_edge, %mv_cesa_dma_add_desc.exit.thread
  %retval.0.i13 = phi ptr [ inttoptr (i32 -12 to ptr), %mv_cesa_dma_add_desc.exit.thread ], [ %call.i.i, %mv_cesa_dma_add_desc.exit.if.then_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i13 to i32
  br label %cleanup

if.end:                                           ; preds = %mv_cesa_dma_add_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %size, -2147483648
  %18 = call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call.i.i, align 4
  %20 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %src, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dst, ptr %22, align 4
  %and = and i32 %flags, -1073741824
  %or3 = or i32 %and, 1
  %flags4 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or3, ptr %flags4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_dummy_launch(ptr nocapture noundef %chain, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %dma_handle.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %0 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle.i, align 4, !annotation !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %1 = load ptr, ptr @cesa_dev, align 4
  %dma.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %or.i.i = or i32 %flags, 256
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %5, i32 noundef %or.i.i, ptr noundef nonnull %dma_handle.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.mv_cesa_dma_add_desc.exit_crit_edge, label %if.end.i

entry.mv_cesa_dma_add_desc.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_dma_add_desc.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_handle.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cur_dma.i, align 4
  %last.i = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %chain, i32 0, i32 1
  %9 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %last.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call i32 @llvm.bswap.i32(i32 %7) #6
  %next_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %next_dma.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %next_dma.i, align 4
  %13 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %last.i, align 4
  %next.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %14, i32 0, i32 5
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %chain.sink.i = phi ptr [ %next.i, %if.then3.i ], [ %chain, %if.end.i.if.end6.i_crit_edge ]
  %15 = ptrtoint ptr %chain.sink.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %chain.sink.i, align 4
  %16 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %last.i, align 4
  br label %mv_cesa_dma_add_desc.exit

mv_cesa_dma_add_desc.exit:                        ; preds = %if.end6.i, %entry.mv_cesa_dma_add_desc.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end6.i ], [ inttoptr (i32 -12 to ptr), %entry.mv_cesa_dma_add_desc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %cmp.i.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %retval.0.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %17, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_dummy_end(ptr nocapture noundef %chain, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %dma_handle.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %0 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle.i, align 4, !annotation !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %1 = load ptr, ptr @cesa_dev, align 4
  %dma.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %or.i.i = or i32 %flags, 256
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %5, i32 noundef %or.i.i, ptr noundef nonnull %dma_handle.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %mv_cesa_dma_add_desc.exit.thread, label %if.end.i

mv_cesa_dma_add_desc.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  br label %if.then

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_handle.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cur_dma.i, align 4
  %last.i = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %chain, i32 0, i32 1
  %9 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %last.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge, label %if.then3.i

if.end.i.mv_cesa_dma_add_desc.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_dma_add_desc.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call i32 @llvm.bswap.i32(i32 %7) #6
  %next_dma.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %next_dma.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %next_dma.i, align 4
  %13 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %last.i, align 4
  %next.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %14, i32 0, i32 5
  br label %mv_cesa_dma_add_desc.exit

mv_cesa_dma_add_desc.exit:                        ; preds = %if.then3.i, %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge
  %chain.sink.i = phi ptr [ %next.i, %if.then3.i ], [ %chain, %if.end.i.mv_cesa_dma_add_desc.exit_crit_edge ]
  %15 = ptrtoint ptr %chain.sink.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %chain.sink.i, align 4
  %16 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %last.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mv_cesa_dma_add_desc.exit.if.then_crit_edge, label %if.end

mv_cesa_dma_add_desc.exit.if.then_crit_edge:      ; preds = %mv_cesa_dma_add_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %mv_cesa_dma_add_desc.exit.if.then_crit_edge, %mv_cesa_dma_add_desc.exit.thread
  %retval.0.i7 = phi ptr [ inttoptr (i32 -12 to ptr), %mv_cesa_dma_add_desc.exit.thread ], [ %call.i.i, %mv_cesa_dma_add_desc.exit.if.then_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i7 to i32
  br label %cleanup

if.end:                                           ; preds = %mv_cesa_dma_add_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 128, ptr %call.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_op_transfers(ptr nocapture noundef %chain, ptr nocapture noundef readonly %dma_iter, ptr nocapture noundef %sgiter, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %dma_handle.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgiter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sgiter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %op_len.i = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %dma_iter, i32 0, i32 2
  %op_offset.i = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %sgiter, i32 0, i32 3
  %sg.i = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %sgiter, i32 0, i32 1
  %offset.i = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %sgiter, i32 0, i32 2
  %or.i.i.i = or i32 %gfp_flags, 256
  %last.i.i = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %chain, i32 0, i32 1
  %or3.i = select i1 %cmp, i32 -2147483647, i32 1073741825
  br label %do.body

do.body:                                          ; preds = %mv_cesa_req_dma_iter_next_transfer.exit.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %op_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_len.i, align 4
  %4 = ptrtoint ptr %op_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_offset.i, align 4
  %sub.i = sub i32 %3, %5
  %6 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length.i, align 4
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %sub1.i = sub i32 %9, %11
  %12 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub1.i) #6
  %13 = ptrtoint ptr %sgiter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sgiter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp2 = icmp eq i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %5, 128
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address, align 4
  %add3 = add i32 %16, %11
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address5 = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  %17 = ptrtoint ptr %dma_address5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_address5, align 4
  %add7 = add i32 %18, %11
  %add9 = add i32 %5, 128
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dst.0 = phi i32 [ %add, %if.then ], [ %add7, %if.else ]
  %src.0 = phi i32 [ %add3, %if.then ], [ %add9, %if.else ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i.i) #6
  %19 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %dma_handle.i.i, align 4, !annotation !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cesa_dev to i32))
  %20 = load ptr, ptr @cesa_dev, align 4
  %dma.i.i = getelementptr inbounds %struct.mv_cesa_dev, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i.i.i = call ptr @dma_pool_alloc(ptr noundef %24, i32 noundef %or.i.i.i, ptr noundef nonnull %dma_handle.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %mv_cesa_dma_add_desc.exit.thread.i, label %if.end.i.i

mv_cesa_dma_add_desc.exit.thread.i:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i.i) #6
  br label %mv_cesa_dma_add_data_transfer.exit

if.end.i.i:                                       ; preds = %if.end
  %25 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_handle.i.i, align 4
  %cur_dma.i.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %cur_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cur_dma.i.i, align 4
  %28 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %last.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.mv_cesa_dma_add_desc.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.mv_cesa_dma_add_desc.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_dma_add_desc.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = call i32 @llvm.bswap.i32(i32 %26) #6
  %next_dma.i.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %29, i32 0, i32 3
  %31 = ptrtoint ptr %next_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %next_dma.i.i, align 4
  %32 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %last.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %33, i32 0, i32 5
  br label %mv_cesa_dma_add_desc.exit.i

mv_cesa_dma_add_desc.exit.i:                      ; preds = %if.then3.i.i, %if.end.i.i.mv_cesa_dma_add_desc.exit.i_crit_edge
  %chain.sink.i.i = phi ptr [ %next.i.i, %if.then3.i.i ], [ %chain, %if.end.i.i.mv_cesa_dma_add_desc.exit.i_crit_edge ]
  %34 = ptrtoint ptr %chain.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i.i, ptr %chain.sink.i.i, align 4
  %35 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i.i, ptr %last.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i.i) #6
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mv_cesa_dma_add_desc.exit.i.mv_cesa_dma_add_data_transfer.exit_crit_edge, label %mv_cesa_dma_add_data_transfer.exit.thread

mv_cesa_dma_add_desc.exit.i.mv_cesa_dma_add_data_transfer.exit_crit_edge: ; preds = %mv_cesa_dma_add_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_dma_add_data_transfer.exit

mv_cesa_dma_add_data_transfer.exit.thread:        ; preds = %mv_cesa_dma_add_desc.exit.i
  %or.i = or i32 %12, -2147483648
  %36 = call i32 @llvm.bswap.i32(i32 %or.i) #6
  %37 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %call.i.i.i, align 4
  %38 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %src.0, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dst.0, ptr %40, align 4
  %flags4.i = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %call.i.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or3.i, ptr %flags4.i, align 4
  %43 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sg.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %mv_cesa_dma_add_data_transfer.exit.thread.cleanup16_crit_edge, label %if.end.i35

mv_cesa_dma_add_data_transfer.exit.thread.cleanup16_crit_edge: ; preds = %mv_cesa_dma_add_data_transfer.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

mv_cesa_dma_add_data_transfer.exit:               ; preds = %mv_cesa_dma_add_desc.exit.i.mv_cesa_dma_add_data_transfer.exit_crit_edge, %mv_cesa_dma_add_desc.exit.thread.i
  %retval.0.i13.i = phi ptr [ inttoptr (i32 -12 to ptr), %mv_cesa_dma_add_desc.exit.thread.i ], [ %call.i.i.i, %mv_cesa_dma_add_desc.exit.i.mv_cesa_dma_add_data_transfer.exit_crit_edge ]
  %45 = ptrtoint ptr %retval.0.i13.i to i32
  br label %cleanup16

if.end.i35:                                       ; preds = %mv_cesa_dma_add_data_transfer.exit.thread
  %46 = ptrtoint ptr %op_offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %op_offset.i, align 4
  %add.i = add i32 %47, %12
  store i32 %add.i, ptr %op_offset.i, align 4
  %48 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i, align 4
  %add1.i = add i32 %49, %12
  store i32 %add1.i, ptr %offset.i, align 4
  %dma_length.i34 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 4
  %50 = ptrtoint ptr %dma_length.i34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_length.i34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %51)
  %cmp.i = icmp eq i32 %add1.i, %51
  br i1 %cmp.i, label %if.then4.i, label %if.end.i35.mv_cesa_req_dma_iter_next_transfer.exit_crit_edge

if.end.i35.mv_cesa_req_dma_iter_next_transfer.exit_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %mv_cesa_req_dma_iter_next_transfer.exit

if.then4.i:                                       ; preds = %if.end.i35
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %44, align 4
  %and.i.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end7.i, label %if.then4.i.cleanup16_crit_edge

if.then4.i.cleanup16_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

if.end7.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %offset.i, align 4
  %call10.i = call ptr @sg_next(ptr noundef nonnull %44) #6
  %55 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call10.i, ptr %sg.i, align 4
  br label %mv_cesa_req_dma_iter_next_transfer.exit

mv_cesa_req_dma_iter_next_transfer.exit:          ; preds = %if.end7.i, %if.end.i35.mv_cesa_req_dma_iter_next_transfer.exit_crit_edge
  %56 = ptrtoint ptr %op_offset.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %op_offset.i, align 4
  %58 = ptrtoint ptr %op_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %op_len.i, align 4
  %cmp14.i.not = icmp eq i32 %57, %59
  br i1 %cmp14.i.not, label %mv_cesa_req_dma_iter_next_transfer.exit.cleanup16_crit_edge, label %mv_cesa_req_dma_iter_next_transfer.exit.do.body_crit_edge

mv_cesa_req_dma_iter_next_transfer.exit.do.body_crit_edge: ; preds = %mv_cesa_req_dma_iter_next_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

mv_cesa_req_dma_iter_next_transfer.exit.cleanup16_crit_edge: ; preds = %mv_cesa_req_dma_iter_next_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

cleanup16:                                        ; preds = %mv_cesa_req_dma_iter_next_transfer.exit.cleanup16_crit_edge, %if.then4.i.cleanup16_crit_edge, %mv_cesa_dma_add_data_transfer.exit, %mv_cesa_dma_add_data_transfer.exit.thread.cleanup16_crit_edge
  %retval.2 = phi i32 [ %45, %mv_cesa_dma_add_data_transfer.exit ], [ 0, %mv_cesa_req_dma_iter_next_transfer.exit.cleanup16_crit_edge ], [ 0, %mv_cesa_dma_add_data_transfer.exit.thread.cleanup16_crit_edge ], [ 0, %if.then4.i.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_sg_copy(ptr nocapture noundef readonly %engine, ptr noundef %sgl, i32 noundef %nents, i32 noundef %sram_off, i32 noundef %buflen, i32 noundef %skip, i1 noundef zeroext %to_sram) local_unnamed_addr #0 align 64 {
entry:
  %miter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter) #6
  %0 = call ptr @memset(ptr %miter, i32 255, i32 44)
  %. = select i1 %to_sram, i32 5, i32 3
  call void @sg_miter_start(ptr noundef nonnull %miter, ptr noundef %sgl, i32 noundef %nents, i32 noundef %.) #6
  %call = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %miter, i32 noundef %skip) #6
  br i1 %call, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp56.not = icmp eq i32 %buflen, 0
  br i1 %cmp56.not, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %pool17 = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 10
  %addr20 = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mv_cesa_engine, ptr %engine, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %if.end28.land.rhs_crit_edge, %land.rhs.lr.ph
  %offset.057 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add, %if.end28.land.rhs_crit_edge ]
  %call4 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %miter) #6
  br i1 %call4, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %sub = sub i32 %buflen, %offset.057
  %4 = call i32 @llvm.umin.i32(i32 %3, i32 %sub)
  %5 = ptrtoint ptr %pool17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pool17, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %to_sram, label %if.then7, label %if.else16

if.then7:                                         ; preds = %while.body
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 %sram_off
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 %offset.057
  %9 = ptrtoint ptr %addr20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr20, align 4
  br i1 %tobool8.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %add.ptr13, ptr %10, i32 %4)
  br label %if.end28

if.else11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  call void @mmiocpy(ptr noundef %add.ptr13, ptr noundef %10, i32 noundef %4) #6
  br label %if.end28

if.else16:                                        ; preds = %while.body
  %12 = ptrtoint ptr %addr20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr20, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 %sram_off
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 %offset.057
  br i1 %tobool8.not, label %if.else23, label %if.then19

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  %16 = call ptr @memcpy(ptr %13, ptr %add.ptr26, i32 %4)
  br label %if.end28

if.else23:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  call void @mmiocpy(ptr noundef %13, ptr noundef %add.ptr26, i32 noundef %4) #6
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then19, %if.else11, %if.then9
  %add = add i32 %4, %offset.057
  %cmp = icmp ult i32 %add, %buflen
  br i1 %cmp, label %if.end28.land.rhs_crit_edge, label %if.end28.while.end_crit_edge

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end28.land.rhs_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add, %if.end28.while.end_crit_edge ], [ %offset.057, %land.rhs.while.end_crit_edge ]
  call void @sg_miter_stop(ptr noundef nonnull %miter) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %offset.0.lcssa, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_skip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/marvell/cesa/tdma.c", i32 53, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 6027392}
!12 = !{i64 6027810}
!13 = !{i64 2153622042}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153622768}
!16 = !{i64 2153625895}
!17 = !{!"auto-init"}
