; ModuleID = '/llk/IR_all_yes/drivers/crypto/qce/common.c_pt.bc'
source_filename = "../drivers/crypto/qce/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.qce_device = type { %struct.crypto_queue, %struct.spinlock, %struct.tasklet_struct, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.qce_dma_data, i32, i32, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.78, i32 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { ptr }
%struct.qce_dma_data = type { ptr, ptr, ptr, ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.71, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.71 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@std_iv_sha1 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878, i32 -1009589776, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@std_iv_sha256 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 15]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 256, i64 512, i64 1024, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 256, i64 512, i64 1024, i64 2048, i64 4096]
@___asan_gen_.3 = private unnamed_addr constant [12 x i8] c"std_iv_sha1\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 395, i32 18 }
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"std_iv_sha256\00", align 1
@___asan_gen_.7 = private constant [31 x i8] c"../drivers/crypto/qce/common.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 399, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @std_iv_sha1, ptr @std_iv_sha256], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_iv_sha1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_iv_sha256 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qce_cpu_to_be32p_array(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.not5 = icmp ult i32 %len, 4
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %div4 = lshr i32 %len, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %n.08 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %div4, %for.body.preheader ]
  %s.07 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %src, %for.body.preheader ]
  %d.06 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %dst, %for.body.preheader ]
  %0 = ptrtoint ptr %s.07 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s.07, align 4
  %2 = ptrtoint ptr %d.06 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %d.06, align 4
  %add.ptr = getelementptr i8, ptr %s.07, i32 4
  %incdec.ptr = getelementptr i32, ptr %d.06, i32 1
  %dec = add nsw i32 %n.08, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qce_start(ptr noundef readonly %async_req, i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  %enckey.i37 = alloca [8 x i32], align 4
  %enciv.i38 = alloca [4 x i32], align 4
  %authkey.i39 = alloca [16 x i32], align 4
  %authiv.i = alloca [8 x i32], align 4
  %auth.i = alloca [8 x i32], align 4
  %mackey.i = alloca [16 x i32], align 4
  %swap.i.i = alloca [16 x i8], align 1
  %xtskey.i.i = alloca [8 x i32], align 4
  %enckey.i = alloca [8 x i32], align 4
  %enciv.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 5, label %sw.bb
    i32 15, label %sw.bb1
    i32 3, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %__ctx.i.i = getelementptr i8, ptr %async_req, i32 112
  %tfm.i = getelementptr %struct.crypto_async_request, ptr %async_req, i32 0, i32 3
  %1 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm.i, align 4
  %__crt_ctx.i.i = getelementptr %struct.crypto_tfm, ptr %2, i32 0, i32 5
  %__crt_alg.i.i.i = getelementptr i8, ptr %2, i32 12
  %3 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %qce5.i = getelementptr i8, ptr %4, i32 640
  %5 = ptrtoint ptr %qce5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qce5.i, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %enckey.i) #5
  %7 = call ptr @memset(ptr %enckey.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %enciv.i) #5
  %8 = call ptr @memset(ptr %enciv.i, i32 0, i32 16)
  %ivsize6.i = getelementptr i8, ptr %async_req, i32 120
  %9 = ptrtoint ptr %ivsize6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ivsize6.i, align 8
  %11 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %__ctx.i.i, align 128
  %burst_size.i.i.i = getelementptr inbounds %struct.qce_device, ptr %6, i32 0, i32 11
  %13 = ptrtoint ptr %burst_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %burst_size.i.i.i, align 4
  %pipe_pair_id.i.i.i = getelementptr inbounds %struct.qce_device, ptr %6, i32 0, i32 12
  %15 = ptrtoint ptr %pipe_pair_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe_pair_id.i.i.i, align 4
  %17 = shl i32 %14, 14
  %18 = add i32 %17, 1966080
  %and.i.i.i = and i32 %18, 1966080
  %shl1.i.i.i = shl i32 %16, 5
  %and2.i.i.i = and i32 %shl1.i.i.i, 480
  %or.i.i.i = or i32 %and.i.i.i, %and2.i.i.i
  %spec.select.i.i.i = or i32 %or.i.i.i, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %base.i.i.i = getelementptr inbounds %struct.qce_device, ptr %6, i32 0, i32 5
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i116.i = getelementptr i8, ptr %20, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i116.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i.i) #5
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %23, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %21) #5, !srcloc !14
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %enc_keylen8.i = getelementptr inbounds %struct.crypto_tfm, ptr %2, i32 1, i32 4, i32 48
  %24 = ptrtoint ptr %enc_keylen8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enc_keylen8.i, align 4
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %div114.i = zext i1 %not.tobool.not.i to i32
  %keylen.0.i = lshr i32 %25, %div114.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen.0.i)
  %cmp.not5.i.i = icmp ult i32 %keylen.0.i, 4
  br i1 %cmp.not5.i.i, label %sw.bb.qce_cpu_to_be32p_array.exit.i_crit_edge, label %for.body.preheader.i.i

sw.bb.qce_cpu_to_be32p_array.exit.i_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_cpu_to_be32p_array.exit.i

for.body.preheader.i.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %26 = and i32 %keylen.0.i, -4
  %27 = call ptr @memcpy(ptr %enckey.i, ptr %__crt_ctx.i.i, i32 %26)
  br label %qce_cpu_to_be32p_array.exit.i

qce_cpu_to_be32p_array.exit.i:                    ; preds = %for.body.preheader.i.i, %sw.bb.qce_cpu_to_be32p_array.exit.i_crit_edge
  %div10113.pre-phi.i = lshr i32 %keylen.0.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %29, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 0) #5, !srcloc !14
  %and.i.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keylen.0.i)
  %cond.i.i = icmp ne i32 %keylen.0.i, 32
  %30 = or i1 %tobool.not.i.i, %cond.i.i
  %cfg.0.i.i = select i1 %30, i32 0, i32 16
  %31 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp ne i32 %31, 0
  %or17.i.i = zext i1 %32 to i32
  %or17.sink.i.i = select i1 %tobool.not.i.i, i32 %or17.i.i, i32 2
  %and25.i.i = shl i32 %12, 2
  %33 = and i32 %and25.i.i, 8
  %spec.select.i.i = or i32 %or17.sink.i.i, %33
  %34 = or i32 %spec.select.i.i, %cfg.0.i.i
  %and30.i.i = and i32 %12, 7936
  %35 = zext i32 %and30.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and30.i.i, label %qce_cpu_to_be32p_array.exit.i.qce_encr_cfg.exit.i_crit_edge [
    i32 512, label %qce_cpu_to_be32p_array.exit.i.sw.epilog.i.i_crit_edge
    i32 256, label %sw.bb32.i.i
    i32 1024, label %sw.bb34.i.i
    i32 2048, label %sw.bb36.i.i
    i32 4096, label %sw.bb38.i.i
  ]

qce_cpu_to_be32p_array.exit.i.sw.epilog.i.i_crit_edge: ; preds = %qce_cpu_to_be32p_array.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

qce_cpu_to_be32p_array.exit.i.qce_encr_cfg.exit.i_crit_edge: ; preds = %qce_cpu_to_be32p_array.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_encr_cfg.exit.i

sw.bb32.i.i:                                      ; preds = %qce_cpu_to_be32p_array.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %or33.i.i = or i32 %34, 64
  br label %sw.epilog.i.i

sw.bb34.i.i:                                      ; preds = %qce_cpu_to_be32p_array.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %or35.i.i = or i32 %34, 128
  br label %sw.epilog.i.i

sw.bb36.i.i:                                      ; preds = %qce_cpu_to_be32p_array.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %or37.i.i = or i32 %34, 192
  br label %sw.epilog.i.i

sw.bb38.i.i:                                      ; preds = %qce_cpu_to_be32p_array.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %or40.i.i = or i32 %34, 8448
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb38.i.i, %sw.bb36.i.i, %sw.bb34.i.i, %sw.bb32.i.i, %qce_cpu_to_be32p_array.exit.i.sw.epilog.i.i_crit_edge
  %cfg.4.i.i = phi i32 [ %or40.i.i, %sw.bb38.i.i ], [ %or37.i.i, %sw.bb36.i.i ], [ %or35.i.i, %sw.bb34.i.i ], [ %or33.i.i, %sw.bb32.i.i ], [ %34, %qce_cpu_to_be32p_array.exit.i.sw.epilog.i.i_crit_edge ]
  br label %qce_encr_cfg.exit.i

qce_encr_cfg.exit.i:                              ; preds = %sw.epilog.i.i, %qce_cpu_to_be32p_array.exit.i.qce_encr_cfg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cfg.4.i.i, %sw.epilog.i.i ], [ -1, %qce_cpu_to_be32p_array.exit.i.qce_encr_cfg.exit.i_crit_edge ]
  %and12.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else15.i, label %qce_encr_cfg.exit.i.for.body.lr.ph.i.i_crit_edge

qce_encr_cfg.exit.i.for.body.lr.ph.i.i_crit_edge: ; preds = %qce_encr_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.i.i

if.else15.i:                                      ; preds = %qce_encr_cfg.exit.i
  %and16.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else19.i, label %if.else15.i.for.body.lr.ph.i.i_crit_edge

if.else15.i.for.body.lr.ph.i.i_crit_edge:         ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.i.i

if.else19.i:                                      ; preds = %if.else15.i
  br i1 %tobool.not.i.i, label %if.else19.i.qce_setup_regs_skcipher.exit_crit_edge, label %if.then22.i

if.else19.i.qce_setup_regs_skcipher.exit_crit_edge: ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_setup_regs_skcipher.exit

if.then22.i:                                      ; preds = %if.else19.i
  br i1 %tobool.not.i, label %if.then22.i.if.end33.i_crit_edge, label %if.then25.i

if.then22.i.if.end33.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.then25.i:                                      ; preds = %if.then22.i
  %36 = ptrtoint ptr %enc_keylen8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enc_keylen8.i, align 4
  %cryptlen.i = getelementptr i8, ptr %async_req, i32 172
  %38 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cryptlen.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %xtskey.i.i) #5
  %40 = call ptr @memset(ptr %xtskey.i.i, i32 0, i32 32)
  %div7.i.i = lshr i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp.not5.i.i.i = icmp ult i32 %37, 8
  br i1 %cmp.not5.i.i.i, label %if.then25.i.qce_xtskey.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then25.i.qce_xtskey.exit.i_crit_edge:          ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_xtskey.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then25.i
  %div18.i.i = lshr i32 %37, 1
  %add.ptr.i119.i = getelementptr i8, ptr %__crt_ctx.i.i, i32 %div18.i.i
  %41 = shl nuw nsw i32 %div7.i.i, 2
  %42 = call ptr @memcpy(ptr %xtskey.i.i, ptr %add.ptr.i119.i, i32 %41)
  br label %for.body.i9.i.i

for.body.i9.i.i:                                  ; preds = %for.body.i9.i.i.for.body.i9.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.05.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i9.i.i.for.body.i9.i.i_crit_edge ]
  %mul.i.i.i = shl i32 %i.05.i.i.i, 2
  %add.i.i.i = add nuw i32 %mul.i.i.i, 12320
  %arrayidx.i.i.i = getelementptr i32, ptr %xtskey.i.i, i32 %i.05.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  %46 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %47, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %45) #5, !srcloc !14
  %inc.i.i.i = add nuw nsw i32 %i.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %div7.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i9.i.i.qce_xtskey.exit.i_crit_edge, label %for.body.i9.i.i.for.body.i9.i.i_crit_edge

for.body.i9.i.i.for.body.i9.i.i_crit_edge:        ; preds = %for.body.i9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i9.i.i

for.body.i9.i.i.qce_xtskey.exit.i_crit_edge:      ; preds = %for.body.i9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_xtskey.exit.i

qce_xtskey.exit.i:                                ; preds = %for.body.i9.i.i.qce_xtskey.exit.i_crit_edge, %if.then25.i.qce_xtskey.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %48 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %49 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %50, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %48) #5, !srcloc !14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %xtskey.i.i) #5
  br label %if.end33.i

if.end33.i:                                       ; preds = %qce_xtskey.exit.i, %if.then22.i.if.end33.i_crit_edge
  br i1 %cmp.not5.i.i, label %if.end33.i.qce_write_array.exit.i_crit_edge, label %if.end33.i.for.body.lr.ph.i.i_crit_edge

if.end33.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.i.i

if.end33.i.qce_write_array.exit.i_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end33.i.for.body.lr.ph.i.i_crit_edge, %if.else15.i.for.body.lr.ph.i.i_crit_edge, %qce_encr_cfg.exit.i.for.body.lr.ph.i.i_crit_edge
  %enciv_words.0179.i = phi i32 [ 4, %if.end33.i.for.body.lr.ph.i.i_crit_edge ], [ 2, %qce_encr_cfg.exit.i.for.body.lr.ph.i.i_crit_edge ], [ 2, %if.else15.i.for.body.lr.ph.i.i_crit_edge ]
  %enckey_words.0178.i = phi i32 [ %div10113.pre-phi.i, %if.end33.i.for.body.lr.ph.i.i_crit_edge ], [ 2, %qce_encr_cfg.exit.i.for.body.lr.ph.i.i_crit_edge ], [ 6, %if.else15.i.for.body.lr.ph.i.i_crit_edge ]
  br label %for.body.i123.i

for.body.i123.i:                                  ; preds = %for.body.i123.i.for.body.i123.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i123.i.for.body.i123.i_crit_edge ]
  %mul.i.i = shl i32 %i.05.i.i, 2
  %add.i.i = add i32 %mul.i.i, 12288
  %arrayidx.i.i = getelementptr i32, ptr %enckey.i, i32 %i.05.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %54 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i122.i = getelementptr i8, ptr %55, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122.i, i32 %53) #5, !srcloc !14
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %enckey_words.0178.i
  br i1 %exitcond.not.i.i, label %for.body.i123.i.qce_write_array.exit.i_crit_edge, label %for.body.i123.i.for.body.i123.i_crit_edge

for.body.i123.i.for.body.i123.i_crit_edge:        ; preds = %for.body.i123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i123.i

for.body.i123.i.qce_write_array.exit.i_crit_edge: ; preds = %for.body.i123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit.i

qce_write_array.exit.i:                           ; preds = %for.body.i123.i.qce_write_array.exit.i_crit_edge, %if.end33.i.qce_write_array.exit.i_crit_edge
  %enciv_words.0180.i = phi i32 [ 4, %if.end33.i.qce_write_array.exit.i_crit_edge ], [ %enciv_words.0179.i, %for.body.i123.i.qce_write_array.exit.i_crit_edge ]
  %and35.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %qce_write_array.exit.i.if.end47.i_crit_edge

qce_write_array.exit.i.if.end47.i_crit_edge:      ; preds = %qce_write_array.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i

if.then37.i:                                      ; preds = %qce_write_array.exit.i
  br i1 %tobool.not.i, label %if.else42.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then37.i
  %iv.i = getelementptr i8, ptr %async_req, i32 116
  %56 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iv.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %swap.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp.i.i = icmp ugt i32 %10, 16
  br i1 %cmp.i.i, label %if.then40.i.qce_xts_swapiv.exit.i_crit_edge, label %if.end.i.i

if.then40.i.qce_xts_swapiv.exit.i_crit_edge:      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_xts_swapiv.exit.i

if.end.i.i:                                       ; preds = %if.then40.i
  %58 = call ptr @memset(ptr %swap.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp212.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp212.not.i.i, label %if.end.i.i.for.body.i.preheader.i.i_crit_edge, label %for.body.preheader.i124.i

if.end.i.i.for.body.i.preheader.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader.i.i

for.body.preheader.i124.i:                        ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 16, %10
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %sub.i.i, i32 15) #5
  br label %for.body.i128.i

for.body.i.preheader.i.i:                         ; preds = %for.body.i128.i.for.body.i.preheader.i.i_crit_edge, %if.end.i.i.for.body.i.preheader.i.i_crit_edge
  %59 = call ptr @memcpy(ptr %enciv.i, ptr %swap.i.i, i32 16)
  br label %qce_xts_swapiv.exit.i

for.body.i128.i:                                  ; preds = %for.body.i128.i.for.body.i128.i_crit_edge, %for.body.preheader.i124.i
  %j.0.in14.i.i = phi i32 [ %j.0.i.i, %for.body.i128.i.for.body.i128.i_crit_edge ], [ %10, %for.body.preheader.i124.i ]
  %i.013.i.i = phi i32 [ %inc.i126.i, %for.body.i128.i.for.body.i128.i_crit_edge ], [ %sub.i.i, %for.body.preheader.i124.i ]
  %j.0.i.i = add i32 %j.0.in14.i.i, -1
  %arrayidx.i125.i = getelementptr i8, ptr %57, i32 %j.0.i.i
  %60 = ptrtoint ptr %arrayidx.i125.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i125.i, align 1
  %arrayidx3.i.i = getelementptr [16 x i8], ptr %swap.i.i, i32 0, i32 %i.013.i.i
  %62 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx3.i.i, align 1
  %inc.i126.i = add i32 %i.013.i.i, 1
  %exitcond.not.i127.i = icmp eq i32 %i.013.i.i, %umax.i.i
  br i1 %exitcond.not.i127.i, label %for.body.i128.i.for.body.i.preheader.i.i_crit_edge, label %for.body.i128.i.for.body.i128.i_crit_edge

for.body.i128.i.for.body.i128.i_crit_edge:        ; preds = %for.body.i128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i128.i

for.body.i128.i.for.body.i.preheader.i.i_crit_edge: ; preds = %for.body.i128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader.i.i

qce_xts_swapiv.exit.i:                            ; preds = %for.body.i.preheader.i.i, %if.then40.i.qce_xts_swapiv.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %swap.i.i) #5
  br label %for.body.i150.i

if.else42.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.not5.i129.i = icmp ult i32 %10, 4
  br i1 %cmp.not5.i129.i, label %if.else42.i.for.body.i150.i_crit_edge, label %for.body.preheader.i131.i

if.else42.i.for.body.i150.i_crit_edge:            ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i150.i

for.body.preheader.i131.i:                        ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #7
  %iv44.i = getelementptr i8, ptr %async_req, i32 116
  %63 = ptrtoint ptr %iv44.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iv44.i, align 4
  %div4.i130.i = and i32 %10, -4
  %65 = call ptr @memcpy(ptr %enciv.i, ptr %64, i32 %div4.i130.i)
  br label %for.body.i150.i

for.body.i150.i:                                  ; preds = %for.body.preheader.i131.i, %if.else42.i.for.body.i150.i_crit_edge, %qce_xts_swapiv.exit.i
  %66 = ptrtoint ptr %enciv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %enciv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #5
  %69 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i147.i = getelementptr i8, ptr %70, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147.i, i32 %68) #5, !srcloc !14
  %arrayidx.i146.i.1 = getelementptr inbounds i32, ptr %enciv.i, i32 1
  %71 = ptrtoint ptr %arrayidx.i146.i.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i146.i.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #5
  %74 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i147.i.1 = getelementptr i8, ptr %75, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147.i.1, i32 %73) #5, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %enciv_words.0180.i)
  %exitcond.not.i149.i.1 = icmp eq i32 %enciv_words.0180.i, 2
  br i1 %exitcond.not.i149.i.1, label %for.body.i150.i.if.end47.i_crit_edge, label %for.body.i150.i.2

for.body.i150.i.if.end47.i_crit_edge:             ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i

for.body.i150.i.2:                                ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i146.i.2 = getelementptr inbounds i32, ptr %enciv.i, i32 2
  %76 = ptrtoint ptr %arrayidx.i146.i.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i146.i.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #5
  %79 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i147.i.2 = getelementptr i8, ptr %80, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147.i.2, i32 %78) #5, !srcloc !14
  %arrayidx.i146.i.3 = getelementptr inbounds i32, ptr %enciv.i, i32 3
  %81 = ptrtoint ptr %arrayidx.i146.i.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i146.i.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #5
  %84 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i147.i.3 = getelementptr i8, ptr %85, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i147.i.3, i32 %83) #5, !srcloc !14
  br label %if.end47.i

if.end47.i:                                       ; preds = %for.body.i150.i.2, %for.body.i150.i.if.end47.i_crit_edge, %qce_write_array.exit.i.if.end47.i_crit_edge
  %and48.i = lshr i32 %12, 20
  %86 = and i32 %and48.i, 1024
  %87 = or i32 %retval.0.i.i, %86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #5
  %89 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %90, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i, i32 %88) #5, !srcloc !14
  %cryptlen52.i = getelementptr i8, ptr %async_req, i32 172
  %91 = ptrtoint ptr %cryptlen52.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cryptlen52.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #5
  %94 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %95, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 %93) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %97, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i, i32 0) #5, !srcloc !14
  %and53.i = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end47.i.if.end56.i_crit_edge, label %if.then55.i

if.end47.i.if.end56.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then55.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %99, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 -1) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %101, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i, i32 -1) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %103, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 -1) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %105, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i, i32 -1) #5, !srcloc !14
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %if.end47.i.if.end56.i_crit_edge
  %106 = ptrtoint ptr %cryptlen52.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cryptlen52.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #5
  %109 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %110, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i, i32 %108) #5, !srcloc !14
  %111 = ptrtoint ptr %burst_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %burst_size.i.i.i, align 4
  %113 = ptrtoint ptr %pipe_pair_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pipe_pair_id.i.i.i, align 4
  %115 = shl i32 %112, 14
  %116 = add i32 %115, 1966080
  %and.i168.i = and i32 %116, 1966080
  %shl1.i.i = shl i32 %114, 5
  %and2.i.i = and i32 %shl1.i.i, 480
  %or.i.i = or i32 %and2.i.i, %and.i168.i
  %spec.select.i169.i = or i32 %or.i.i, 523
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %117 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i169.i) #5
  %118 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %119, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %117) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i173.i = getelementptr i8, ptr %121, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i173.i, i32 83886080) #5, !srcloc !14
  br label %qce_setup_regs_skcipher.exit

qce_setup_regs_skcipher.exit:                     ; preds = %if.end56.i, %if.else19.i.qce_setup_regs_skcipher.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end56.i ], [ -22, %if.else19.i.qce_setup_regs_skcipher.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %enciv.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %enckey.i) #5
  br label %return

sw.bb1:                                           ; preds = %entry
  %tfm.i7 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 3
  %122 = ptrtoint ptr %tfm.i7 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tfm.i7, align 4
  %__crt_alg.i.i.i8 = getelementptr i8, ptr %123, i32 12
  %124 = ptrtoint ptr %__crt_alg.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %__crt_alg.i.i.i8, align 4
  %qce5.i9 = getelementptr i8, ptr %125, i32 512
  %126 = ptrtoint ptr %qce5.i9 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %qce5.i9, align 128
  %add.ptr.i.i.i.i10 = getelementptr i8, ptr %125, i32 -128
  %128 = ptrtoint ptr %add.ptr.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i.i.i.i10, align 128
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %125, i32 0, i32 3
  %130 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %auth.i) #5
  %132 = call ptr @memset(ptr %auth.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mackey.i) #5
  %133 = call ptr @memset(ptr %mackey.i, i32 0, i32 64)
  %last_blk.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 33
  %134 = ptrtoint ptr %last_blk.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %last_blk.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i11 = icmp eq i8 %135, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i, label %sw.bb1.if.end.i_crit_edge

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb1
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 0, i32 1
  %136 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %nbytes.i, align 8
  %rem.i = urem i32 %137, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool9.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.qce_setup_regs_ahash.exit_crit_edge

land.lhs.true.i.qce_setup_regs_ahash.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_setup_regs_ahash.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb1.if.end.i_crit_edge
  %burst_size.i.i.i12 = getelementptr inbounds %struct.qce_device, ptr %127, i32 0, i32 11
  %138 = ptrtoint ptr %burst_size.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %burst_size.i.i.i12, align 4
  %pipe_pair_id.i.i.i13 = getelementptr inbounds %struct.qce_device, ptr %127, i32 0, i32 12
  %140 = ptrtoint ptr %pipe_pair_id.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pipe_pair_id.i.i.i13, align 4
  %142 = shl i32 %139, 14
  %143 = add i32 %142, 1966080
  %and.i.i.i14 = and i32 %143, 1966080
  %shl1.i.i.i15 = shl i32 %141, 5
  %and2.i.i.i16 = and i32 %shl1.i.i.i15, 480
  %or.i.i.i17 = or i32 %and.i.i.i14, %and2.i.i.i16
  %spec.select.i.i.i18 = or i32 %or.i.i.i17, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %base.i.i.i19 = getelementptr inbounds %struct.qce_device, ptr %127, i32 0, i32 5
  %144 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %145, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %146 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i.i18) #5
  %147 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i4.i.i20 = getelementptr i8, ptr %148, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i20, i32 %146) #5, !srcloc !14
  %flags.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 4
  %149 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i, align 4
  %and.i21 = and i32 %150, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool10.not.i = icmp eq i32 %and.i21, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then11.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %152, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %154, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %156, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %157 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.i = getelementptr i8, ptr %158, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %159 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.1.i = getelementptr i8, ptr %160, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.1.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %161 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.2.i = getelementptr i8, ptr %162, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.2.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %163 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.3.i = getelementptr i8, ptr %164, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.3.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.4.i = getelementptr i8, ptr %166, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.4.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %167 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.5.i = getelementptr i8, ptr %168, i32 804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.5.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %169 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.6.i = getelementptr i8, ptr %170, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.6.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.7.i = getelementptr i8, ptr %172, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.7.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %173 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.8.i = getelementptr i8, ptr %174, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.8.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %175 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.9.i = getelementptr i8, ptr %176, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.9.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %177 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.10.i = getelementptr i8, ptr %178, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.10.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.11.i = getelementptr i8, ptr %180, i32 828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.11.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %181 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.12.i = getelementptr i8, ptr %182, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.12.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %183 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.13.i = getelementptr i8, ptr %184, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.13.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %185 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.14.i = getelementptr i8, ptr %186, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.14.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %187 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i145.15.i = getelementptr i8, ptr %188, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145.15.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %189 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.i = getelementptr i8, ptr %190, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %191 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.1.i = getelementptr i8, ptr %192, i32 12356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.1.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %193 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.2.i = getelementptr i8, ptr %194, i32 12360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.2.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %195 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.3.i = getelementptr i8, ptr %196, i32 12364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.3.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.4.i = getelementptr i8, ptr %198, i32 12368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.4.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.5.i = getelementptr i8, ptr %200, i32 12372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.5.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %201 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.6.i = getelementptr i8, ptr %202, i32 12376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.6.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %203 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.7.i = getelementptr i8, ptr %204, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.7.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %205 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.8.i = getelementptr i8, ptr %206, i32 12384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.8.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %207 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.9.i = getelementptr i8, ptr %208, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.9.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %209 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.10.i = getelementptr i8, ptr %210, i32 12392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.10.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %211 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.11.i = getelementptr i8, ptr %212, i32 12396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.11.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %213 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.12.i = getelementptr i8, ptr %214, i32 12400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.12.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %215 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.13.i = getelementptr i8, ptr %216, i32 12404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.13.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %217 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.14.i = getelementptr i8, ptr %218, i32 12408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.14.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %219 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i150.15.i = getelementptr i8, ptr %220, i32 12412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.15.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %221 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i159.i = getelementptr i8, ptr %222, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i159.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %223 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i159.1.i = getelementptr i8, ptr %224, i32 916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i159.1.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %225 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i159.2.i = getelementptr i8, ptr %226, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i159.2.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %227 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i159.3.i = getelementptr i8, ptr %228, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i159.3.i, i32 0) #5, !srcloc !14
  %229 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %flags.i, align 4
  %authklen.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 80
  %231 = ptrtoint ptr %authklen.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %authklen.i, align 8
  %and.i.i22 = and i32 %230, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i22, 0
  %and1.i.i = and i32 %230, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %233 = and i32 %230, 4224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %234 = icmp eq i32 %233, 0
  %cfg.0.i.i24 = select i1 %234, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %232)
  %cond.i.i25 = icmp ne i32 %232, 32
  %235 = or i1 %234, %cond.i.i25
  %or15.i.i = or i32 %cfg.0.i.i24, 16
  %cfg.1.i.i = select i1 %235, i32 %cfg.0.i.i24, i32 %or15.i.i
  %236 = and i32 %230, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %if.else26.i.i, label %if.then11.i.if.end47.i.i_crit_edge

if.then11.i.if.end47.i.i_crit_edge:               ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i.i

if.else26.i.i:                                    ; preds = %if.then11.i
  %238 = and i32 %230, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %if.else34.i.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or33.i.i26 = or i32 %cfg.1.i.i, 512
  br label %if.end47.i.i

if.else34.i.i:                                    ; preds = %if.else26.i.i
  br i1 %tobool2.not.i.i, label %if.else39.i.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.else34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or38.i.i = or i32 %cfg.1.i.i, 7680
  br label %if.end47.i.i

if.else39.i.i:                                    ; preds = %if.else34.i.i
  br i1 %tobool.not.i.i23, label %if.else39.i.i.if.end47.i.i_crit_edge, label %if.then42.i.i

if.else39.i.i.if.end47.i.i_crit_edge:             ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i.i

if.then42.i.i:                                    ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i27 = shl i32 %129, 9
  %shl.i.i = add i32 %sub.i.i27, -512
  %or43.i.i = or i32 %cfg.1.i.i, %shl.i.i
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then42.i.i, %if.else39.i.i.if.end47.i.i_crit_edge, %if.then37.i.i, %if.then32.i.i, %if.then11.i.if.end47.i.i_crit_edge
  %cfg.2.i.i = phi i32 [ %or33.i.i26, %if.then32.i.i ], [ %or38.i.i, %if.then37.i.i ], [ %or43.i.i, %if.then42.i.i ], [ %cfg.1.i.i, %if.else39.i.i.if.end47.i.i_crit_edge ], [ %cfg.1.i.i, %if.then11.i.if.end47.i.i_crit_edge ]
  %240 = and i32 %230, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %if.else55.i.i, label %if.end47.i.i.qce_auth_cfg.exit.i_crit_edge

if.end47.i.i.qce_auth_cfg.exit.i_crit_edge:       ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_auth_cfg.exit.i

if.else55.i.i:                                    ; preds = %if.end47.i.i
  %242 = and i32 %230, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %if.else63.i.i, label %if.then61.i.i

if.then61.i.i:                                    ; preds = %if.else55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or62.i.i = or i32 %cfg.2.i.i, 64
  br label %qce_auth_cfg.exit.i

if.else63.i.i:                                    ; preds = %if.else55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not.not.i.i = xor i1 %tobool.not.i.i23, true
  %or.cond136.i.i = or i1 %tobool2.not.i.i, %tobool.not.not.i.i
  %or72.i.i = or i32 %cfg.2.i.i, 64
  %spec.select.i.i28 = select i1 %or.cond136.i.i, i32 %cfg.2.i.i, i32 %or72.i.i
  br label %qce_auth_cfg.exit.i

qce_auth_cfg.exit.i:                              ; preds = %if.else63.i.i, %if.then61.i.i, %if.end47.i.i.qce_auth_cfg.exit.i_crit_edge
  %cfg.3.i.i = phi i32 [ %or62.i.i, %if.then61.i.i ], [ %cfg.2.i.i, %if.end47.i.i.qce_auth_cfg.exit.i_crit_edge ], [ %spec.select.i.i28, %if.else63.i.i ]
  %244 = shl nuw nsw i32 %and.i.i22, 10
  %245 = or i32 %cfg.3.i.i, %244
  br label %if.end14.i

if.end14.i:                                       ; preds = %qce_auth_cfg.exit.i, %if.end.i.if.end14.i_crit_edge
  %auth_cfg.0.i = phi i32 [ %245, %qce_auth_cfg.exit.i ], [ 0, %if.end.i.if.end14.i_crit_edge ]
  %246 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %flags.i, align 4
  %248 = and i32 %247, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %if.end14.i.if.end29.i_crit_edge, label %if.then25.i30

if.end14.i.if.end29.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then25.i30:                                    ; preds = %if.end14.i
  %authklen26.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 80
  %250 = ptrtoint ptr %authklen26.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %authklen26.i, align 8
  %div136.i = lshr i32 %251, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %251)
  %cmp.not5.i.i29 = icmp ult i32 %251, 4
  br i1 %cmp.not5.i.i29, label %if.then25.i30.if.end29.i_crit_edge, label %for.body.i172.preheader.i

if.then25.i30.if.end29.i_crit_edge:               ; preds = %if.then25.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

for.body.i172.preheader.i:                        ; preds = %if.then25.i30
  %authkey.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 76
  %252 = ptrtoint ptr %authkey.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %authkey.i, align 4
  %254 = and i32 %251, -4
  %255 = call ptr @memcpy(ptr %mackey.i, ptr %253, i32 %254)
  br label %for.body.i172.i

for.body.i172.i:                                  ; preds = %for.body.i172.i.for.body.i172.i_crit_edge, %for.body.i172.preheader.i
  %i.05.i.i31 = phi i32 [ %inc.i170.i, %for.body.i172.i.for.body.i172.i_crit_edge ], [ 0, %for.body.i172.preheader.i ]
  %mul.i167.i = shl i32 %i.05.i.i31, 2
  %add.i168.i = add i32 %mul.i167.i, 12352
  %arrayidx.i.i32 = getelementptr i32, ptr %mackey.i, i32 %i.05.i.i31
  %256 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx.i.i32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #5
  %259 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i169.i = getelementptr i8, ptr %260, i32 %add.i168.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i169.i, i32 %258) #5, !srcloc !14
  %inc.i170.i = add nuw nsw i32 %i.05.i.i31, 1
  %exitcond.not.i171.i = icmp eq i32 %inc.i170.i, %div136.i
  br i1 %exitcond.not.i171.i, label %for.body.i172.i.if.end29.i_crit_edge, label %for.body.i172.i.for.body.i172.i_crit_edge

for.body.i172.i.for.body.i172.i_crit_edge:        ; preds = %for.body.i172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i172.i

for.body.i172.i.if.end29.i_crit_edge:             ; preds = %for.body.i172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %for.body.i172.i.if.end29.i_crit_edge, %if.then25.i30.if.end29.i_crit_edge, %if.end14.i.if.end29.i_crit_edge
  %261 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %flags.i, align 4
  %and31.i = and i32 %262, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end29.i.go_proc.i_crit_edge

if.end29.i.go_proc.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %go_proc.i

if.end34.i:                                       ; preds = %if.end29.i
  %first_blk.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 32
  %263 = ptrtoint ptr %first_blk.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %first_blk.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool35.not.i = icmp eq i8 %264, 0
  br i1 %tobool35.not.i, label %if.else.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %digest.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2
  %265 = call ptr @memcpy(ptr %auth.i, ptr %digest.i, i32 %129)
  br label %if.end42.i

if.else.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %129)
  %cmp.not5.i173.i = icmp ult i32 %129, 4
  br i1 %cmp.not5.i173.i, label %if.else.i.if.end42.i_crit_edge, label %for.body.preheader.i175.i

if.else.i.if.end42.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

for.body.preheader.i175.i:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %digest40.i = getelementptr %struct.ahash_request, ptr %async_req, i32 2
  %div4.i174.i = and i32 %129, -4
  %266 = call ptr @memcpy(ptr %auth.i, ptr %digest40.i, i32 %div4.i174.i)
  br label %if.end42.i

if.end42.i:                                       ; preds = %for.body.preheader.i175.i, %if.else.i.if.end42.i_crit_edge, %if.then36.i
  %267 = and i32 %262, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %268 = icmp eq i32 %267, 0
  %269 = select i1 %268, i32 8, i32 5
  br label %for.body.i194.i

for.body.i194.i:                                  ; preds = %for.body.i194.i.for.body.i194.i_crit_edge, %if.end42.i
  %i.05.i187.i = phi i32 [ 0, %if.end42.i ], [ %inc.i192.i, %for.body.i194.i.for.body.i194.i_crit_edge ]
  %mul.i188.i = shl i32 %i.05.i187.i, 2
  %add.i189.i = add i32 %mul.i188.i, 784
  %arrayidx.i190.i = getelementptr i32, ptr %auth.i, i32 %i.05.i187.i
  %270 = ptrtoint ptr %arrayidx.i190.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx.i190.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #5
  %273 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i191.i = getelementptr i8, ptr %274, i32 %add.i189.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i191.i, i32 %272) #5, !srcloc !14
  %inc.i192.i = add nuw i32 %i.05.i187.i, 1
  %exitcond.not.i193.i = icmp eq i32 %inc.i192.i, %269
  br i1 %exitcond.not.i193.i, label %qce_write_array.exit195.i, label %for.body.i194.i.for.body.i194.i_crit_edge

for.body.i194.i.for.body.i194.i_crit_edge:        ; preds = %for.body.i194.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i194.i

qce_write_array.exit195.i:                        ; preds = %for.body.i194.i
  %275 = ptrtoint ptr %first_blk.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %first_blk.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool51.not.i = icmp eq i8 %276, 0
  br i1 %tobool51.not.i, label %if.else53.i, label %for.body.i204.preheader.i

for.body.i204.preheader.i:                        ; preds = %qce_write_array.exit195.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %277 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i201.i = getelementptr i8, ptr %278, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i201.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %279 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i201.1.i = getelementptr i8, ptr %280, i32 916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i201.1.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %281 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i201.2.i = getelementptr i8, ptr %282, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i201.2.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %283 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i201.3.i = getelementptr i8, ptr %284, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i201.3.i, i32 0) #5, !srcloc !14
  br label %if.end55.i

if.else53.i:                                      ; preds = %qce_write_array.exit195.i
  call void @__sanitizer_cov_trace_pc() #7
  %byte_count.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 12
  %285 = ptrtoint ptr %byte_count.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %byte_count.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #5
  %288 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i212.i = getelementptr i8, ptr %289, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i212.i, i32 %287) #5, !srcloc !14
  %arrayidx.i211.1.i = getelementptr %struct.ahash_request, ptr %async_req, i32 2, i32 5, i32 16
  %290 = ptrtoint ptr %arrayidx.i211.1.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx.i211.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %292 = tail call i32 @llvm.bswap.i32(i32 %291) #5
  %293 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i212.1.i = getelementptr i8, ptr %294, i32 916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i212.1.i, i32 %292) #5, !srcloc !14
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else53.i, %for.body.i204.preheader.i
  %295 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %flags.i, align 4
  %and.i217.i = and i32 %296, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217.i)
  %tobool.not.i218.i = icmp eq i32 %and.i217.i, 0
  %and1.i219.i = and i32 %296, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i219.i)
  %tobool2.not.i220.i = icmp eq i32 %and1.i219.i, 0
  %297 = and i32 %296, 4224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %298 = icmp eq i32 %297, 0
  %cfg.0.i221.i = select i1 %298, i32 1, i32 2
  %299 = and i32 %296, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %if.else26.i223.i, label %if.end55.i.if.end47.i235.i_crit_edge

if.end55.i.if.end47.i235.i_crit_edge:             ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i235.i

if.else26.i223.i:                                 ; preds = %if.end55.i
  %301 = and i32 %296, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %if.else34.i226.i, label %if.then32.i225.i

if.then32.i225.i:                                 ; preds = %if.else26.i223.i
  call void @__sanitizer_cov_trace_pc() #7
  %or33.i224.i = or i32 %cfg.0.i221.i, 512
  br label %if.end47.i235.i

if.else34.i226.i:                                 ; preds = %if.else26.i223.i
  br i1 %tobool2.not.i220.i, label %if.else39.i229.i, label %if.then37.i228.i

if.then37.i228.i:                                 ; preds = %if.else34.i226.i
  call void @__sanitizer_cov_trace_pc() #7
  %or38.i227.i = or i32 %cfg.0.i221.i, 7680
  br label %if.end47.i235.i

if.else39.i229.i:                                 ; preds = %if.else34.i226.i
  br i1 %tobool.not.i218.i, label %if.else39.i229.i.if.end47.i235.i_crit_edge, label %if.then42.i233.i

if.else39.i229.i.if.end47.i235.i_crit_edge:       ; preds = %if.else39.i229.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i235.i

if.then42.i233.i:                                 ; preds = %if.else39.i229.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i230.i = shl i32 %129, 9
  %shl.i231.i = add i32 %sub.i230.i, -512
  %or43.i232.i = or i32 %cfg.0.i221.i, %shl.i231.i
  br label %if.end47.i235.i

if.end47.i235.i:                                  ; preds = %if.then42.i233.i, %if.else39.i229.i.if.end47.i235.i_crit_edge, %if.then37.i228.i, %if.then32.i225.i, %if.end55.i.if.end47.i235.i_crit_edge
  %cfg.2.i234.i = phi i32 [ %or33.i224.i, %if.then32.i225.i ], [ %or38.i227.i, %if.then37.i228.i ], [ %or43.i232.i, %if.then42.i233.i ], [ %cfg.0.i221.i, %if.else39.i229.i.if.end47.i235.i_crit_edge ], [ %cfg.0.i221.i, %if.end55.i.if.end47.i235.i_crit_edge ]
  %303 = and i32 %296, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %if.else55.i236.i, label %if.end47.i235.i.qce_auth_cfg.exit245.i_crit_edge

if.end47.i235.i.qce_auth_cfg.exit245.i_crit_edge: ; preds = %if.end47.i235.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_auth_cfg.exit245.i

if.else55.i236.i:                                 ; preds = %if.end47.i235.i
  %305 = and i32 %296, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %if.else63.i243.i, label %if.then61.i238.i

if.then61.i238.i:                                 ; preds = %if.else55.i236.i
  call void @__sanitizer_cov_trace_pc() #7
  %or62.i237.i = or i32 %cfg.2.i234.i, 64
  br label %qce_auth_cfg.exit245.i

if.else63.i243.i:                                 ; preds = %if.else55.i236.i
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not.not.i239.i = xor i1 %tobool.not.i218.i, true
  %or.cond136.i240.i = or i1 %tobool2.not.i220.i, %tobool.not.not.i239.i
  %or72.i241.i = or i32 %cfg.2.i234.i, 64
  %spec.select.i242.i = select i1 %or.cond136.i240.i, i32 %cfg.2.i234.i, i32 %or72.i241.i
  br label %qce_auth_cfg.exit245.i

qce_auth_cfg.exit245.i:                           ; preds = %if.else63.i243.i, %if.then61.i238.i, %if.end47.i235.i.qce_auth_cfg.exit245.i_crit_edge
  %cfg.3.i244.i = phi i32 [ %or62.i237.i, %if.then61.i238.i ], [ %cfg.2.i234.i, %if.end47.i235.i.qce_auth_cfg.exit245.i_crit_edge ], [ %spec.select.i242.i, %if.else63.i243.i ]
  %307 = shl nuw nsw i32 %and.i217.i, 10
  %308 = ptrtoint ptr %last_blk.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %last_blk.i, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %tobool59.not.i = icmp eq i8 %309, 0
  %cfg.3.i244.masked.i = and i32 %cfg.3.i244.i, -65537
  %and62.i = or i32 %cfg.3.i244.masked.i, %307
  %masksel.i = select i1 %tobool59.not.i, i32 0, i32 65536
  %auth_cfg.1.i = or i32 %and62.i, %masksel.i
  %310 = ptrtoint ptr %first_blk.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %first_blk.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool65.not.i = icmp eq i8 %311, 0
  br i1 %tobool65.not.i, label %if.else68.i, label %if.then66.i

if.then66.i:                                      ; preds = %qce_auth_cfg.exit245.i
  call void @__sanitizer_cov_trace_pc() #7
  %or67.i = or i32 %auth_cfg.1.i, 131072
  br label %go_proc.i

if.else68.i:                                      ; preds = %qce_auth_cfg.exit245.i
  call void @__sanitizer_cov_trace_pc() #7
  %and69.i = and i32 %auth_cfg.1.i, -131073
  br label %go_proc.i

go_proc.i:                                        ; preds = %if.else68.i, %if.then66.i, %if.end29.i.go_proc.i_crit_edge
  %auth_cfg.2.i = phi i32 [ %auth_cfg.0.i, %if.end29.i.go_proc.i_crit_edge ], [ %or67.i, %if.then66.i ], [ %and69.i, %if.else68.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %312 = tail call i32 @llvm.bswap.i32(i32 %auth_cfg.2.i) #5
  %313 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i247.i = getelementptr i8, ptr %314, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247.i, i32 %312) #5, !srcloc !14
  %nbytes71.i = getelementptr inbounds %struct.ahash_request, ptr %async_req, i32 0, i32 1
  %315 = ptrtoint ptr %nbytes71.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %nbytes71.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %317 = tail call i32 @llvm.bswap.i32(i32 %316) #5
  %318 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i249.i = getelementptr i8, ptr %319, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249.i, i32 %317) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %320 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i251.i = getelementptr i8, ptr %321, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %322 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i253.i = getelementptr i8, ptr %323, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253.i, i32 0) #5, !srcloc !14
  %324 = ptrtoint ptr %nbytes71.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %nbytes71.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %326 = tail call i32 @llvm.bswap.i32(i32 %325) #5
  %327 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i255.i = getelementptr i8, ptr %328, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255.i, i32 %326) #5, !srcloc !14
  %329 = ptrtoint ptr %burst_size.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %burst_size.i.i.i12, align 4
  %331 = ptrtoint ptr %pipe_pair_id.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %pipe_pair_id.i.i.i13, align 4
  %333 = shl i32 %330, 14
  %334 = add i32 %333, 1966080
  %and.i256.i = and i32 %334, 1966080
  %shl1.i.i33 = shl i32 %332, 5
  %and2.i.i34 = and i32 %shl1.i.i33, 480
  %or.i.i35 = or i32 %and2.i.i34, %and.i256.i
  %spec.select.i257.i = or i32 %or.i.i35, 523
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %335 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i257.i) #5
  %336 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i259.i = getelementptr i8, ptr %337, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.i, i32 %335) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %338 = ptrtoint ptr %base.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %base.i.i.i19, align 4
  %add.ptr.i.i261.i = getelementptr i8, ptr %339, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i261.i, i32 83886080) #5, !srcloc !14
  br label %qce_setup_regs_ahash.exit

qce_setup_regs_ahash.exit:                        ; preds = %go_proc.i, %land.lhs.true.i.qce_setup_regs_ahash.exit_crit_edge
  %retval.0.i36 = phi i32 [ 0, %go_proc.i ], [ -22, %land.lhs.true.i.qce_setup_regs_ahash.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mackey.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %auth.i) #5
  br label %return

sw.bb3:                                           ; preds = %entry
  %__ctx.i.i40 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 0, i32 7
  %tfm.i41 = getelementptr inbounds %struct.crypto_async_request, ptr %async_req, i32 0, i32 3
  %340 = ptrtoint ptr %tfm.i41 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %tfm.i41, align 4
  %__crt_alg.i.i.i42 = getelementptr i8, ptr %341, i32 12
  %342 = ptrtoint ptr %__crt_alg.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %__crt_alg.i.i.i42, align 4
  %qce5.i43 = getelementptr i8, ptr %343, i32 640
  %344 = ptrtoint ptr %qce5.i43 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %qce5.i43, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %enckey.i37) #5
  %346 = call ptr @memset(ptr %enckey.i37, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %enciv.i38) #5
  %347 = call ptr @memset(ptr %enciv.i38, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %authkey.i39) #5
  %348 = call ptr @memset(ptr %authkey.i39, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %authiv.i) #5
  %349 = call ptr @memset(ptr %authiv.i, i32 0, i32 32)
  %enc_keylen6.i = getelementptr inbounds %struct.crypto_tfm, ptr %341, i32 2, i32 1
  %350 = ptrtoint ptr %enc_keylen6.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %enc_keylen6.i, align 4
  %auth_keylen7.i = getelementptr inbounds %struct.crypto_tfm, ptr %341, i32 2, i32 2
  %352 = ptrtoint ptr %auth_keylen7.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %auth_keylen7.i, align 4
  %ivsize.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 1
  %354 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %ivsize.i, align 8
  %356 = ptrtoint ptr %__ctx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %__ctx.i.i40, align 128
  %burst_size.i.i.i44 = getelementptr inbounds %struct.qce_device, ptr %345, i32 0, i32 11
  %358 = ptrtoint ptr %burst_size.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %burst_size.i.i.i44, align 4
  %pipe_pair_id.i.i.i45 = getelementptr inbounds %struct.qce_device, ptr %345, i32 0, i32 12
  %360 = ptrtoint ptr %pipe_pair_id.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %pipe_pair_id.i.i.i45, align 4
  %362 = shl i32 %359, 14
  %363 = add i32 %362, 1966080
  %and.i.i.i46 = and i32 %363, 1966080
  %shl1.i.i.i47 = shl i32 %361, 5
  %and2.i.i.i48 = and i32 %shl1.i.i.i47, 480
  %or.i.i.i49 = or i32 %and.i.i.i46, %and2.i.i.i48
  %spec.select.i.i.i50 = or i32 %or.i.i.i49, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %base.i.i.i51 = getelementptr inbounds %struct.qce_device, ptr %345, i32 0, i32 5
  %364 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %365, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %366 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i.i50) #5
  %367 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i4.i.i52 = getelementptr i8, ptr %368, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i52, i32 %366) #5, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %351)
  %cmp.not8.i.i = icmp ult i32 %351, 4
  br i1 %cmp.not8.i.i, label %sw.bb3.qce_be32_to_cpu_array.exit.i_crit_edge, label %for.body.preheader.i.i54

sw.bb3.qce_be32_to_cpu_array.exit.i_crit_edge:    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_be32_to_cpu_array.exit.i

for.body.preheader.i.i54:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %__crt_ctx.i.i53 = getelementptr %struct.crypto_tfm, ptr %341, i32 0, i32 5
  %div6.i.i = and i32 %351, -4
  %369 = call ptr @memcpy(ptr %enckey.i37, ptr %__crt_ctx.i.i53, i32 %div6.i.i)
  br label %qce_be32_to_cpu_array.exit.i

qce_be32_to_cpu_array.exit.i:                     ; preds = %for.body.preheader.i.i54, %sw.bb3.qce_be32_to_cpu_array.exit.i_crit_edge
  %sub.i.i55 = add i32 %351, 3
  %div17.i.i = lshr i32 %sub.i.i55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i55)
  %cmp4.not.i.i = icmp ult i32 %sub.i.i55, 4
  br i1 %cmp4.not.i.i, label %qce_be32_to_cpu_array.exit.i.qce_write_array.exit.i62_crit_edge, label %qce_be32_to_cpu_array.exit.i.for.body.i9.i_crit_edge

qce_be32_to_cpu_array.exit.i.for.body.i9.i_crit_edge: ; preds = %qce_be32_to_cpu_array.exit.i
  br label %for.body.i9.i

qce_be32_to_cpu_array.exit.i.qce_write_array.exit.i62_crit_edge: ; preds = %qce_be32_to_cpu_array.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit.i62

for.body.i9.i:                                    ; preds = %for.body.i9.i.for.body.i9.i_crit_edge, %qce_be32_to_cpu_array.exit.i.for.body.i9.i_crit_edge
  %i.05.i.i56 = phi i32 [ %inc.i.i60, %for.body.i9.i.for.body.i9.i_crit_edge ], [ 0, %qce_be32_to_cpu_array.exit.i.for.body.i9.i_crit_edge ]
  %mul.i.i57 = shl i32 %i.05.i.i56, 2
  %add.i.i58 = add i32 %mul.i.i57, 12288
  %arrayidx.i.i59 = getelementptr i32, ptr %enckey.i37, i32 %i.05.i.i56
  %370 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx.i.i59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %372 = tail call i32 @llvm.bswap.i32(i32 %371) #5
  %373 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %374, i32 %add.i.i58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 %372) #5, !srcloc !14
  %inc.i.i60 = add nuw nsw i32 %i.05.i.i56, 1
  %exitcond.not.i.i61 = icmp eq i32 %inc.i.i60, %div17.i.i
  br i1 %exitcond.not.i.i61, label %for.body.i9.i.qce_write_array.exit.i62_crit_edge, label %for.body.i9.i.for.body.i9.i_crit_edge

for.body.i9.i.for.body.i9.i_crit_edge:            ; preds = %for.body.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i9.i

for.body.i9.i.qce_write_array.exit.i62_crit_edge: ; preds = %for.body.i9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit.i62

qce_write_array.exit.i62:                         ; preds = %for.body.i9.i.qce_write_array.exit.i62_crit_edge, %qce_be32_to_cpu_array.exit.i.qce_write_array.exit.i62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %355)
  %cmp.not8.i10.i = icmp ult i32 %355, 4
  br i1 %cmp.not8.i10.i, label %qce_write_array.exit.i62.qce_be32_to_cpu_array.exit23.i_crit_edge, label %for.body.preheader.i12.i

qce_write_array.exit.i62.qce_be32_to_cpu_array.exit23.i_crit_edge: ; preds = %qce_write_array.exit.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_be32_to_cpu_array.exit23.i

for.body.preheader.i12.i:                         ; preds = %qce_write_array.exit.i62
  call void @__sanitizer_cov_trace_pc() #7
  %iv.i63 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 0, i32 0, i32 1
  %375 = ptrtoint ptr %iv.i63 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %iv.i63, align 4
  %div6.i11.i = and i32 %355, -4
  %377 = call ptr @memcpy(ptr %enciv.i38, ptr %376, i32 %div6.i11.i)
  br label %qce_be32_to_cpu_array.exit23.i

qce_be32_to_cpu_array.exit23.i:                   ; preds = %for.body.preheader.i12.i, %qce_write_array.exit.i62.qce_be32_to_cpu_array.exit23.i_crit_edge
  %sub.i21.i = add i32 %355, 3
  %div17.i22.i = lshr i32 %sub.i21.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i21.i)
  %cmp4.not.i24.i = icmp ult i32 %sub.i21.i, 4
  br i1 %cmp4.not.i24.i, label %qce_be32_to_cpu_array.exit23.i.qce_write_array.exit35.i_crit_edge, label %qce_be32_to_cpu_array.exit23.i.for.body.i34.i_crit_edge

qce_be32_to_cpu_array.exit23.i.for.body.i34.i_crit_edge: ; preds = %qce_be32_to_cpu_array.exit23.i
  br label %for.body.i34.i

qce_be32_to_cpu_array.exit23.i.qce_write_array.exit35.i_crit_edge: ; preds = %qce_be32_to_cpu_array.exit23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit35.i

for.body.i34.i:                                   ; preds = %for.body.i34.i.for.body.i34.i_crit_edge, %qce_be32_to_cpu_array.exit23.i.for.body.i34.i_crit_edge
  %i.05.i27.i = phi i32 [ %inc.i32.i, %for.body.i34.i.for.body.i34.i_crit_edge ], [ 0, %qce_be32_to_cpu_array.exit23.i.for.body.i34.i_crit_edge ]
  %mul.i28.i = shl i32 %i.05.i27.i, 2
  %add.i29.i = add i32 %mul.i28.i, 524
  %arrayidx.i30.i = getelementptr i32, ptr %enciv.i38, i32 %i.05.i27.i
  %378 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx.i30.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %380 = tail call i32 @llvm.bswap.i32(i32 %379) #5
  %381 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i31.i = getelementptr i8, ptr %382, i32 %add.i29.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31.i, i32 %380) #5, !srcloc !14
  %inc.i32.i = add nuw nsw i32 %i.05.i27.i, 1
  %exitcond.not.i33.i = icmp eq i32 %inc.i32.i, %div17.i22.i
  br i1 %exitcond.not.i33.i, label %for.body.i34.i.qce_write_array.exit35.i_crit_edge, label %for.body.i34.i.for.body.i34.i_crit_edge

for.body.i34.i.for.body.i34.i_crit_edge:          ; preds = %for.body.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i34.i

for.body.i34.i.qce_write_array.exit35.i_crit_edge: ; preds = %for.body.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit35.i

qce_write_array.exit35.i:                         ; preds = %for.body.i34.i.qce_write_array.exit35.i_crit_edge, %qce_be32_to_cpu_array.exit23.i.qce_write_array.exit35.i_crit_edge
  %383 = ptrtoint ptr %__ctx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %__ctx.i.i40, align 128
  %and.i64 = and i32 %384, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %qce_write_array.exit35.i.if.end.i66_crit_edge, label %if.then.i

qce_write_array.exit35.i.if.end.i66_crit_edge:    ; preds = %qce_write_array.exit35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i66

if.then.i:                                        ; preds = %qce_write_array.exit35.i
  %sub.i = add nsw i32 %div17.i22.i, -1
  %arrayidx.i = getelementptr [4 x i32], ptr %enciv.i38, i32 0, i32 %sub.i
  %385 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %386, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %387 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %388 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %389, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %387) #5, !srcloc !14
  br i1 %cmp4.not.i24.i, label %if.then.i.qce_write_array.exit48.i_crit_edge, label %if.then.i.for.body.i47.i_crit_edge

if.then.i.for.body.i47.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i47.i

if.then.i.qce_write_array.exit48.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit48.i

for.body.i47.i:                                   ; preds = %for.body.i47.i.for.body.i47.i_crit_edge, %if.then.i.for.body.i47.i_crit_edge
  %i.05.i40.i = phi i32 [ %inc.i45.i, %for.body.i47.i.for.body.i47.i_crit_edge ], [ 0, %if.then.i.for.body.i47.i_crit_edge ]
  %mul.i41.i = shl i32 %i.05.i40.i, 2
  %add.i42.i = add i32 %mul.i41.i, 544
  %arrayidx.i43.i = getelementptr i32, ptr %enciv.i38, i32 %i.05.i40.i
  %390 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx.i43.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %392 = tail call i32 @llvm.bswap.i32(i32 %391) #5
  %393 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i44.i = getelementptr i8, ptr %394, i32 %add.i42.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.i, i32 %392) #5, !srcloc !14
  %inc.i45.i = add nuw nsw i32 %i.05.i40.i, 1
  %exitcond.not.i46.i = icmp eq i32 %inc.i45.i, %div17.i22.i
  br i1 %exitcond.not.i46.i, label %for.body.i47.i.qce_write_array.exit48.i_crit_edge, label %for.body.i47.i.for.body.i47.i_crit_edge

for.body.i47.i.for.body.i47.i_crit_edge:          ; preds = %for.body.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i47.i

for.body.i47.i.qce_write_array.exit48.i_crit_edge: ; preds = %for.body.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit48.i

qce_write_array.exit48.i:                         ; preds = %for.body.i47.i.qce_write_array.exit48.i_crit_edge, %if.then.i.qce_write_array.exit48.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %395 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %396, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 -1) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %397 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %398, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 -1) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %399 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %400, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 -1) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %401 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %402, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 -1) #5, !srcloc !14
  br label %if.end.i66

if.end.i66:                                       ; preds = %qce_write_array.exit48.i, %qce_write_array.exit35.i.if.end.i66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %403 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.i = getelementptr i8, ptr %404, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %405 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.1.i = getelementptr i8, ptr %406, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.1.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %407 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.2.i = getelementptr i8, ptr %408, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.2.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %409 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.3.i = getelementptr i8, ptr %410, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.3.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %411 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.4.i = getelementptr i8, ptr %412, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.4.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %413 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.5.i = getelementptr i8, ptr %414, i32 804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.5.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %415 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.6.i = getelementptr i8, ptr %416, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.6.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %417 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.7.i = getelementptr i8, ptr %418, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.7.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %419 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.8.i = getelementptr i8, ptr %420, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.8.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %421 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.9.i = getelementptr i8, ptr %422, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.9.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %423 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.10.i = getelementptr i8, ptr %424, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.10.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %425 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.11.i = getelementptr i8, ptr %426, i32 828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.11.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %427 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.12.i = getelementptr i8, ptr %428, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.12.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %429 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.13.i = getelementptr i8, ptr %430, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.13.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %431 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.14.i = getelementptr i8, ptr %432, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.14.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %433 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i61.15.i = getelementptr i8, ptr %434, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61.15.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %435 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.i = getelementptr i8, ptr %436, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %437 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.1.i = getelementptr i8, ptr %438, i32 12356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.1.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %439 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.2.i = getelementptr i8, ptr %440, i32 12360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.2.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %441 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.3.i = getelementptr i8, ptr %442, i32 12364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.3.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %443 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.4.i = getelementptr i8, ptr %444, i32 12368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.4.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %445 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.5.i = getelementptr i8, ptr %446, i32 12372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.5.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %447 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.6.i = getelementptr i8, ptr %448, i32 12376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.6.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %449 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.7.i = getelementptr i8, ptr %450, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.7.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %451 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.8.i = getelementptr i8, ptr %452, i32 12384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.8.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %453 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.9.i = getelementptr i8, ptr %454, i32 12388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.9.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %455 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.10.i = getelementptr i8, ptr %456, i32 12392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.10.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %457 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.11.i = getelementptr i8, ptr %458, i32 12396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.11.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %459 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.12.i = getelementptr i8, ptr %460, i32 12400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.12.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %461 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.13.i = getelementptr i8, ptr %462, i32 12404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.13.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %463 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.14.i = getelementptr i8, ptr %464, i32 12408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.14.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %465 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i70.15.i = getelementptr i8, ptr %466, i32 12412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70.15.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %467 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i80.i = getelementptr i8, ptr %468, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %469 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i80.1.i = getelementptr i8, ptr %470, i32 916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80.1.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %471 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i80.2.i = getelementptr i8, ptr %472, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80.2.i, i32 0) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %473 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i80.3.i = getelementptr i8, ptr %474, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80.3.i, i32 0) #5, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %353)
  %cmp.not8.i85.i = icmp ult i32 %353, 4
  br i1 %cmp.not8.i85.i, label %if.end.i66.qce_be32_to_cpu_array.exit98.i_crit_edge, label %for.body.preheader.i87.i

if.end.i66.qce_be32_to_cpu_array.exit98.i_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_be32_to_cpu_array.exit98.i

for.body.preheader.i87.i:                         ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  %auth_key.i = getelementptr %struct.crypto_tfm, ptr %341, i32 1, i32 4, i32 48
  %div6.i86.i = and i32 %353, -4
  %475 = call ptr @memcpy(ptr %authkey.i39, ptr %auth_key.i, i32 %div6.i86.i)
  br label %qce_be32_to_cpu_array.exit98.i

qce_be32_to_cpu_array.exit98.i:                   ; preds = %for.body.preheader.i87.i, %if.end.i66.qce_be32_to_cpu_array.exit98.i_crit_edge
  %sub.i96.i = add i32 %353, 3
  %div17.i97.i = lshr i32 %sub.i96.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i96.i)
  %cmp4.not.i99.i = icmp ult i32 %sub.i96.i, 4
  br i1 %cmp4.not.i99.i, label %qce_be32_to_cpu_array.exit98.i.qce_write_array.exit110.i_crit_edge, label %qce_be32_to_cpu_array.exit98.i.for.body.i109.i_crit_edge

qce_be32_to_cpu_array.exit98.i.for.body.i109.i_crit_edge: ; preds = %qce_be32_to_cpu_array.exit98.i
  br label %for.body.i109.i

qce_be32_to_cpu_array.exit98.i.qce_write_array.exit110.i_crit_edge: ; preds = %qce_be32_to_cpu_array.exit98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit110.i

for.body.i109.i:                                  ; preds = %for.body.i109.i.for.body.i109.i_crit_edge, %qce_be32_to_cpu_array.exit98.i.for.body.i109.i_crit_edge
  %i.05.i102.i = phi i32 [ %inc.i107.i, %for.body.i109.i.for.body.i109.i_crit_edge ], [ 0, %qce_be32_to_cpu_array.exit98.i.for.body.i109.i_crit_edge ]
  %mul.i103.i = shl i32 %i.05.i102.i, 2
  %add.i104.i = add i32 %mul.i103.i, 12352
  %arrayidx.i105.i = getelementptr i32, ptr %authkey.i39, i32 %i.05.i102.i
  %476 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx.i105.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %478 = tail call i32 @llvm.bswap.i32(i32 %477) #5
  %479 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i106.i = getelementptr i8, ptr %480, i32 %add.i104.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106.i, i32 %478) #5, !srcloc !14
  %inc.i107.i = add nuw nsw i32 %i.05.i102.i, 1
  %exitcond.not.i108.i = icmp eq i32 %inc.i107.i, %div17.i97.i
  br i1 %exitcond.not.i108.i, label %for.body.i109.i.qce_write_array.exit110.i_crit_edge, label %for.body.i109.i.for.body.i109.i_crit_edge

for.body.i109.i.for.body.i109.i_crit_edge:        ; preds = %for.body.i109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i109.i

for.body.i109.i.qce_write_array.exit110.i_crit_edge: ; preds = %for.body.i109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_write_array.exit110.i

qce_write_array.exit110.i:                        ; preds = %for.body.i109.i.qce_write_array.exit110.i_crit_edge, %qce_be32_to_cpu_array.exit98.i.qce_write_array.exit110.i_crit_edge
  %481 = ptrtoint ptr %__ctx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %__ctx.i.i40, align 128
  %and25.i = and i32 %482, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %483 = and i32 %482, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %483)
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %if.else41.i, label %if.then27.i

if.then27.i:                                      ; preds = %qce_write_array.exit110.i
  %and22.i = and i32 %482, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else.i67, label %if.then31.i

if.then31.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  %485 = call ptr @memcpy(ptr %authiv.i, ptr @std_iv_sha1, i32 20)
  br label %for.body.i121.i

if.else.i67:                                      ; preds = %if.then27.i
  br i1 %tobool26.not.i, label %if.else.i67.if.end51.i_crit_edge, label %if.then36.i68

if.else.i67.if.end51.i_crit_edge:                 ; preds = %if.else.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.then36.i68:                                    ; preds = %if.else.i67
  call void @__sanitizer_cov_trace_pc() #7
  %486 = call ptr @memcpy(ptr %authiv.i, ptr @std_iv_sha256, i32 32)
  br label %for.body.i121.i

for.body.i121.i:                                  ; preds = %if.then36.i68, %if.then31.i
  %487 = ptrtoint ptr %authiv.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %authiv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %489 = tail call i32 @llvm.bswap.i32(i32 %488) #5
  %490 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i118.i = getelementptr i8, ptr %491, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i, i32 %489) #5, !srcloc !14
  %arrayidx.i117.i.1 = getelementptr inbounds i32, ptr %authiv.i, i32 1
  %492 = ptrtoint ptr %arrayidx.i117.i.1 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %arrayidx.i117.i.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %494 = tail call i32 @llvm.bswap.i32(i32 %493) #5
  %495 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i118.i.1 = getelementptr i8, ptr %496, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i.1, i32 %494) #5, !srcloc !14
  %arrayidx.i117.i.2 = getelementptr inbounds i32, ptr %authiv.i, i32 2
  %497 = ptrtoint ptr %arrayidx.i117.i.2 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %arrayidx.i117.i.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %499 = tail call i32 @llvm.bswap.i32(i32 %498) #5
  %500 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i118.i.2 = getelementptr i8, ptr %501, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i.2, i32 %499) #5, !srcloc !14
  %arrayidx.i117.i.3 = getelementptr inbounds i32, ptr %authiv.i, i32 3
  %502 = ptrtoint ptr %arrayidx.i117.i.3 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %arrayidx.i117.i.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %504 = tail call i32 @llvm.bswap.i32(i32 %503) #5
  %505 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i118.i.3 = getelementptr i8, ptr %506, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i.3, i32 %504) #5, !srcloc !14
  %arrayidx.i117.i.4 = getelementptr inbounds i32, ptr %authiv.i, i32 4
  %507 = ptrtoint ptr %arrayidx.i117.i.4 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx.i117.i.4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %509 = tail call i32 @llvm.bswap.i32(i32 %508) #5
  %510 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i118.i.4 = getelementptr i8, ptr %511, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i.4, i32 %509) #5, !srcloc !14
  br i1 %tobool23.not.i, label %for.body.i121.i.5, label %for.body.i121.i.if.end51.i_crit_edge

for.body.i121.i.if.end51.i_crit_edge:             ; preds = %for.body.i121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

for.body.i121.i.5:                                ; preds = %for.body.i121.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i117.i.5 = getelementptr inbounds i32, ptr %authiv.i, i32 5
  %512 = ptrtoint ptr %arrayidx.i117.i.5 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx.i117.i.5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %514 = tail call i32 @llvm.bswap.i32(i32 %513) #5
  %515 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i118.i.5 = getelementptr i8, ptr %516, i32 804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i.5, i32 %514) #5, !srcloc !14
  %arrayidx.i117.i.6 = getelementptr inbounds i32, ptr %authiv.i, i32 6
  %517 = ptrtoint ptr %arrayidx.i117.i.6 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx.i117.i.6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %519 = tail call i32 @llvm.bswap.i32(i32 %518) #5
  %520 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i118.i.6 = getelementptr i8, ptr %521, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i.6, i32 %519) #5, !srcloc !14
  %arrayidx.i117.i.7 = getelementptr inbounds i32, ptr %authiv.i, i32 7
  %522 = ptrtoint ptr %arrayidx.i117.i.7 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %arrayidx.i117.i.7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %524 = tail call i32 @llvm.bswap.i32(i32 %523) #5
  %525 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i118.i.7 = getelementptr i8, ptr %526, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i.7, i32 %524) #5, !srcloc !14
  br label %if.end51.i

if.else41.i:                                      ; preds = %qce_write_array.exit110.i
  %and43.i = and i32 %482, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.else41.i.if.end51.i_crit_edge, label %if.then45.i

if.else41.i.if.end51.i_crit_edge:                 ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.then45.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #7
  %ccm_nonce.i = getelementptr %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 60
  %527 = ptrtoint ptr %ccm_nonce.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %authnonce.sroa.0.0.copyload.i = load i32, ptr %ccm_nonce.i, align 4
  %authnonce.sroa.5.0.ccm_nonce.sroa_idx.i = getelementptr %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 64
  %528 = ptrtoint ptr %authnonce.sroa.5.0.ccm_nonce.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %authnonce.sroa.5.0.copyload.i = load i32, ptr %authnonce.sroa.5.0.ccm_nonce.sroa_idx.i, align 4
  %authnonce.sroa.6.0.ccm_nonce.sroa_idx.i = getelementptr %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 68
  %529 = ptrtoint ptr %authnonce.sroa.6.0.ccm_nonce.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %authnonce.sroa.6.0.copyload.i = load i32, ptr %authnonce.sroa.6.0.ccm_nonce.sroa_idx.i, align 4
  %authnonce.sroa.7.0.ccm_nonce.sroa_idx.i = getelementptr %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 72
  %530 = ptrtoint ptr %authnonce.sroa.7.0.ccm_nonce.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %authnonce.sroa.7.0.copyload.i = load i32, ptr %authnonce.sroa.7.0.ccm_nonce.sroa_idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %531 = tail call i32 @llvm.bswap.i32(i32 %authnonce.sroa.0.0.copyload.i) #5
  %532 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i139.i = getelementptr i8, ptr %533, i32 848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139.i, i32 %531) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %534 = tail call i32 @llvm.bswap.i32(i32 %authnonce.sroa.5.0.copyload.i) #5
  %535 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i139.1.i = getelementptr i8, ptr %536, i32 852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139.1.i, i32 %534) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %537 = tail call i32 @llvm.bswap.i32(i32 %authnonce.sroa.6.0.copyload.i) #5
  %538 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i139.2.i = getelementptr i8, ptr %539, i32 856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139.2.i, i32 %537) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %540 = tail call i32 @llvm.bswap.i32(i32 %authnonce.sroa.7.0.copyload.i) #5
  %541 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i139.3.i = getelementptr i8, ptr %542, i32 860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139.3.i, i32 %540) #5, !srcloc !14
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then45.i, %if.else41.i.if.end51.i_crit_edge, %for.body.i121.i.5, %for.body.i121.i.if.end51.i_crit_edge, %if.else.i67.if.end51.i_crit_edge
  %and.i.i69 = and i32 %357, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i69)
  %tobool.not.i.i70 = icmp eq i32 %and.i.i69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %351)
  %cond.i.i71 = icmp ne i32 %351, 32
  %543 = or i1 %cond.i.i71, %tobool.not.i.i70
  %cfg.0.i.i72 = select i1 %543, i32 0, i32 16
  %544 = and i32 %357, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %544)
  %545 = icmp ne i32 %544, 0
  %or17.i.i73 = zext i1 %545 to i32
  %or17.sink.i.i74 = select i1 %tobool.not.i.i70, i32 %or17.i.i73, i32 2
  %and25.i.i75 = shl i32 %357, 2
  %546 = and i32 %and25.i.i75, 8
  %spec.select.i.i76 = or i32 %or17.sink.i.i74, %546
  %547 = or i32 %spec.select.i.i76, %cfg.0.i.i72
  %and30.i.i77 = and i32 %357, 7936
  %548 = zext i32 %and30.i.i77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %548, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and30.i.i77, label %if.end51.i.qce_encr_cfg.exit.i95_crit_edge [
    i32 512, label %if.end51.i.sw.epilog.i.i87_crit_edge
    i32 256, label %sw.bb32.i.i79
    i32 1024, label %sw.bb34.i.i81
    i32 2048, label %sw.bb36.i.i83
    i32 4096, label %sw.bb38.i.i85
  ]

if.end51.i.sw.epilog.i.i87_crit_edge:             ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i87

if.end51.i.qce_encr_cfg.exit.i95_crit_edge:       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_encr_cfg.exit.i95

sw.bb32.i.i79:                                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %or33.i.i78 = or i32 %547, 64
  br label %sw.epilog.i.i87

sw.bb34.i.i81:                                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %or35.i.i80 = or i32 %547, 128
  br label %sw.epilog.i.i87

sw.bb36.i.i83:                                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %or37.i.i82 = or i32 %547, 192
  br label %sw.epilog.i.i87

sw.bb38.i.i85:                                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %or40.i.i84 = or i32 %547, 8448
  br label %sw.epilog.i.i87

sw.epilog.i.i87:                                  ; preds = %sw.bb38.i.i85, %sw.bb36.i.i83, %sw.bb34.i.i81, %sw.bb32.i.i79, %if.end51.i.sw.epilog.i.i87_crit_edge
  %cfg.4.i.i86 = phi i32 [ %or40.i.i84, %sw.bb38.i.i85 ], [ %or37.i.i82, %sw.bb36.i.i83 ], [ %or35.i.i80, %sw.bb34.i.i81 ], [ %or33.i.i78, %sw.bb32.i.i79 ], [ %547, %if.end51.i.sw.epilog.i.i87_crit_edge ]
  br label %qce_encr_cfg.exit.i95

qce_encr_cfg.exit.i95:                            ; preds = %sw.epilog.i.i87, %if.end51.i.qce_encr_cfg.exit.i95_crit_edge
  %retval.0.i.i88 = phi i32 [ %cfg.4.i.i86, %sw.epilog.i.i87 ], [ -1, %if.end51.i.qce_encr_cfg.exit.i95_crit_edge ]
  %and53.i89 = and i32 %357, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i89)
  %tobool54.not.i90 = icmp eq i32 %and53.i89, 0
  %549 = lshr exact i32 %and53.i89, 20
  %550 = or i32 %retval.0.i.i88, %549
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %551 = tail call i32 @llvm.bswap.i32(i32 %550) #5
  %552 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %553, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 %551) #5, !srcloc !14
  %554 = ptrtoint ptr %__ctx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %__ctx.i.i40, align 128
  %authsize.i = getelementptr inbounds %struct.crypto_tfm, ptr %341, i32 2, i32 3
  %556 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %authsize.i, align 4
  %and.i146.i = and i32 %555, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146.i)
  %tobool.not.i147.i = icmp eq i32 %and.i146.i, 0
  %and1.i.i91 = and i32 %555, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i91)
  %tobool2.not.i.i92 = icmp eq i32 %and1.i.i91, 0
  %558 = and i32 %555, 4224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %558)
  %559 = icmp eq i32 %558, 0
  %cfg.0.i148.i = select i1 %559, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %353)
  %cond.i149.i = icmp ne i32 %353, 32
  %560 = or i1 %cond.i149.i, %559
  %or15.i.i93 = or i32 %cfg.0.i148.i, 16
  %cfg.1.i.i94 = select i1 %560, i32 %cfg.0.i148.i, i32 %or15.i.i93
  %561 = and i32 %555, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %561)
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %if.else26.i.i96, label %qce_encr_cfg.exit.i95.if.end47.i.i106_crit_edge

qce_encr_cfg.exit.i95.if.end47.i.i106_crit_edge:  ; preds = %qce_encr_cfg.exit.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i.i106

if.else26.i.i96:                                  ; preds = %qce_encr_cfg.exit.i95
  %563 = and i32 %555, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %563)
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %if.else34.i.i98, label %if.then32.i.i97

if.then32.i.i97:                                  ; preds = %if.else26.i.i96
  call void @__sanitizer_cov_trace_pc() #7
  %or33.i150.i = or i32 %cfg.1.i.i94, 512
  br label %if.end47.i.i106

if.else34.i.i98:                                  ; preds = %if.else26.i.i96
  br i1 %tobool2.not.i.i92, label %if.else39.i.i101, label %if.then37.i.i100

if.then37.i.i100:                                 ; preds = %if.else34.i.i98
  call void @__sanitizer_cov_trace_pc() #7
  %or38.i.i99 = or i32 %cfg.1.i.i94, 7680
  br label %if.end47.i.i106

if.else39.i.i101:                                 ; preds = %if.else34.i.i98
  br i1 %tobool.not.i147.i, label %if.else39.i.i101.if.end47.i.i106_crit_edge, label %if.then42.i.i104

if.else39.i.i101.if.end47.i.i106_crit_edge:       ; preds = %if.else39.i.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i.i106

if.then42.i.i104:                                 ; preds = %if.else39.i.i101
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i151.i = shl i32 %557, 9
  %shl.i.i102 = add i32 %sub.i151.i, -512
  %or43.i.i103 = or i32 %cfg.1.i.i94, %shl.i.i102
  br label %if.end47.i.i106

if.end47.i.i106:                                  ; preds = %if.then42.i.i104, %if.else39.i.i101.if.end47.i.i106_crit_edge, %if.then37.i.i100, %if.then32.i.i97, %qce_encr_cfg.exit.i95.if.end47.i.i106_crit_edge
  %cfg.2.i.i105 = phi i32 [ %or33.i150.i, %if.then32.i.i97 ], [ %or38.i.i99, %if.then37.i.i100 ], [ %or43.i.i103, %if.then42.i.i104 ], [ %cfg.1.i.i94, %if.else39.i.i101.if.end47.i.i106_crit_edge ], [ %cfg.1.i.i94, %qce_encr_cfg.exit.i95.if.end47.i.i106_crit_edge ]
  %565 = and i32 %555, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %565)
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %if.else55.i.i107, label %if.end47.i.i106.qce_auth_cfg.exit.i117_crit_edge

if.end47.i.i106.qce_auth_cfg.exit.i117_crit_edge: ; preds = %if.end47.i.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %qce_auth_cfg.exit.i117

if.else55.i.i107:                                 ; preds = %if.end47.i.i106
  %567 = and i32 %555, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %567)
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %if.else63.i.i113, label %if.then61.i.i109

if.then61.i.i109:                                 ; preds = %if.else55.i.i107
  call void @__sanitizer_cov_trace_pc() #7
  %or62.i.i108 = or i32 %cfg.2.i.i105, 64
  br label %qce_auth_cfg.exit.i117

if.else63.i.i113:                                 ; preds = %if.else55.i.i107
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not.not.i.i110 = xor i1 %tobool.not.i147.i, true
  %or.cond136.i.i111 = or i1 %tobool2.not.i.i92, %tobool.not.not.i.i110
  %or72.i.i112 = or i32 %cfg.2.i.i105, 64
  %spec.select.i152.i = select i1 %or.cond136.i.i111, i32 %cfg.2.i.i105, i32 %or72.i.i112
  br label %qce_auth_cfg.exit.i117

qce_auth_cfg.exit.i117:                           ; preds = %if.else63.i.i113, %if.then61.i.i109, %if.end47.i.i106.qce_auth_cfg.exit.i117_crit_edge
  %cfg.3.i.i114 = phi i32 [ %or62.i.i108, %if.then61.i.i109 ], [ %cfg.2.i.i105, %if.end47.i.i106.qce_auth_cfg.exit.i117_crit_edge ], [ %spec.select.i152.i, %if.else63.i.i113 ]
  %569 = shl nuw nsw i32 %and.i146.i, 10
  %570 = or i32 %cfg.3.i.i114, %569
  %or60.i = or i32 %570, 196608
  %or70.i = or i32 %570, 212992
  %spec.select3.i = select i1 %tobool.not.i147.i, i32 %or70.i, i32 %or60.i
  %spec.select4.i = select i1 %tobool.not.i147.i, i32 %or60.i, i32 %or70.i
  %auth_cfg.0.i115 = select i1 %tobool54.not.i90, i32 %spec.select4.i, i32 %spec.select3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %571 = tail call i32 @llvm.bswap.i32(i32 %auth_cfg.0.i115) #5
  %572 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i154.i = getelementptr i8, ptr %573, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i, i32 %571) #5, !srcloc !14
  %cryptlen.i116 = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 48
  %574 = ptrtoint ptr %cryptlen.i116 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %cryptlen.i116, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %async_req, i32 1, i32 6, i32 52
  %576 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %assoclen.i, align 32
  %add82.i = add i32 %577, %575
  %578 = ptrtoint ptr %__ctx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %__ctx.i.i40, align 128
  %580 = and i32 %579, -2147479552
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147479552, i32 %580)
  %.not.i = icmp eq i32 %580, -2147479552
  br i1 %.not.i, label %if.then89.i, label %if.else93.i

if.then89.i:                                      ; preds = %qce_auth_cfg.exit.i117
  call void @__sanitizer_cov_trace_pc() #7
  %581 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %authsize.i, align 4
  %add92.i = add i32 %582, %575
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %583 = tail call i32 @llvm.bswap.i32(i32 %add92.i) #5
  %584 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i156.i = getelementptr i8, ptr %585, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 %583) #5, !srcloc !14
  br label %if.end95.i

if.else93.i:                                      ; preds = %qce_auth_cfg.exit.i117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %586 = tail call i32 @llvm.bswap.i32(i32 %575) #5
  %587 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %588, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158.i, i32 %586) #5, !srcloc !14
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.else93.i, %if.then89.i
  %589 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %assoclen.i, align 32
  %and97.i = and i32 %590, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %591 = tail call i32 @llvm.bswap.i32(i32 %and97.i) #5
  %592 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i160.i = getelementptr i8, ptr %593, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i, i32 %591) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %594 = tail call i32 @llvm.bswap.i32(i32 %add82.i) #5
  %595 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %596, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.i, i32 %594) #5, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %597 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i164.i = getelementptr i8, ptr %598, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164.i, i32 0) #5, !srcloc !14
  %599 = ptrtoint ptr %__ctx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %__ctx.i.i40, align 128
  %601 = and i32 %600, -2147479552
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147479552, i32 %601)
  %.not178.i = icmp eq i32 %601, -2147479552
  br i1 %.not178.i, label %if.then105.i, label %if.else108.i

if.then105.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #7
  %602 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %authsize.i, align 4
  %add107.i = add i32 %603, %add82.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %604 = tail call i32 @llvm.bswap.i32(i32 %add107.i) #5
  %605 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %606, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 %604) #5, !srcloc !14
  br label %if.end109.i

if.else108.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %607 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %608, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 %594) #5, !srcloc !14
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.else108.i, %if.then105.i
  %609 = ptrtoint ptr %burst_size.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %burst_size.i.i.i44, align 4
  %611 = ptrtoint ptr %pipe_pair_id.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %pipe_pair_id.i.i.i45, align 4
  %613 = shl i32 %610, 14
  %614 = add i32 %613, 1966080
  %and.i169.i = and i32 %614, 1966080
  %shl1.i.i118 = shl i32 %612, 5
  %and2.i.i119 = and i32 %shl1.i.i118, 480
  %or.i.i120 = or i32 %and2.i.i119, %and.i169.i
  %spec.select.i170.i = or i32 %or.i.i120, 523
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %615 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i170.i) #5
  %616 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %617, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 %615) #5, !srcloc !14
  %and111.i = and i32 %357, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %618 = ptrtoint ptr %base.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %base.i.i.i51, align 4
  %add.ptr.i.i174.i = getelementptr i8, ptr %619, i32 288
  br i1 %tobool112.not.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i174.i, i32 83886080) #5, !srcloc !14
  br label %qce_setup_regs_aead.exit

if.else.i.i:                                      ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i174.i, i32 16777216) #5, !srcloc !14
  br label %qce_setup_regs_aead.exit

qce_setup_regs_aead.exit:                         ; preds = %if.else.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %authiv.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %authkey.i39) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %enciv.i38) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %enckey.i37) #5
  br label %return

return:                                           ; preds = %qce_setup_regs_aead.exit, %qce_setup_regs_ahash.exit, %qce_setup_regs_skcipher.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %qce_setup_regs_aead.exit ], [ %retval.0.i36, %qce_setup_regs_ahash.exit ], [ %retval.0.i, %qce_setup_regs_skcipher.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qce_check_status(ptr nocapture noundef readonly %qce, ptr nocapture noundef writeonly %status) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 5
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !16
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status, align 4
  %5 = and i32 %3, 1064963
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %.not = icmp eq i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not.inv = icmp slt i32 %3, 0
  %spec.select = select i1 %tobool4.not.inv, i32 -74, i32 0
  %ret.0 = select i1 %.not, i32 %spec.select, i32 -6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qce_get_version(ptr nocapture noundef readonly %qce, ptr nocapture noundef writeonly %major, ptr nocapture noundef writeonly %minor, ptr nocapture noundef writeonly %step) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.qce_device, ptr %qce, i32 0, i32 5
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !16
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  %shr = lshr i32 %3, 24
  %4 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %major, align 4
  %and1 = lshr i32 %3, 16
  %shr2 = and i32 %and1, 255
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr2, ptr %minor, align 4
  %and3 = and i32 %3, 65535
  %6 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %step, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @std_iv_sha1, !1, !"std_iv_sha1", i1 false, i1 false}
!1 = !{!"../drivers/crypto/qce/common.c", i32 395, i32 18}
!2 = !{ptr @std_iv_sha256, !3, !"std_iv_sha256", i1 false, i1 false}
!3 = !{!"../drivers/crypto/qce/common.c", i32 399, i32 18}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2154487612}
!14 = !{i64 4212843}
!15 = !{i8 0, i8 2}
!16 = !{i64 4213261}
!17 = !{i64 2154487228}
