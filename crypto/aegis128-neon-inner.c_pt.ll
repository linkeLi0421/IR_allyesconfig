; ModuleID = '/llk/IR_all_yes/crypto/aegis128-neon-inner.c_pt.bc'
source_filename = "../crypto/aegis128-neon-inner.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv8-unknown-linux-gnueabi"

@permute = internal unnamed_addr constant [48 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 64
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_aegis128_init_neon(ptr noundef %state, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %iv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %1 = load <16 x i8>, ptr %key, align 1
  %shuffle = shufflevector <16 x i8> %1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %2 = ptrtoint ptr %iv to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %3 = load <16 x i8>, ptr %iv, align 1
  %4 = xor <16 x i8> %3, %1
  %xor = shufflevector <16 x i8> %4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %xor19 = xor <16 x i8> %shuffle, <i8 98, i8 121, i8 -23, i8 -112, i8 89, i8 55, i8 34, i8 21, i8 13, i8 8, i8 5, i8 3, i8 2, i8 1, i8 1, i8 0>
  %xor25 = xor <16 x i8> %shuffle, <i8 -35, i8 40, i8 -75, i8 115, i8 66, i8 49, i8 17, i8 32, i8 -15, i8 47, i8 -62, i8 109, i8 85, i8 24, i8 61, i8 -37>
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.095 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %st.sroa.0.094 = phi <16 x i8> [ %xor, %entry ], [ %xor27.i56, %for.body.for.body_crit_edge ]
  %st.sroa.9.093 = phi <16 x i8> [ <i8 -35, i8 40, i8 -75, i8 115, i8 66, i8 49, i8 17, i8 32, i8 -15, i8 47, i8 -62, i8 109, i8 85, i8 24, i8 61, i8 -37>, %entry ], [ %xor24.i55, %for.body.for.body_crit_edge ]
  %st.sroa.10.092 = phi <16 x i8> [ <i8 98, i8 121, i8 -23, i8 -112, i8 89, i8 55, i8 34, i8 21, i8 13, i8 8, i8 5, i8 3, i8 2, i8 1, i8 1, i8 0>, %entry ], [ %xor18.i54, %for.body.for.body_crit_edge ]
  %st.sroa.11.091 = phi <16 x i8> [ %xor19, %entry ], [ %xor12.i52, %for.body.for.body_crit_edge ]
  %st.sroa.12.090 = phi <16 x i8> [ %xor25, %entry ], [ %xor6.i50, %for.body.for.body_crit_edge ]
  %5 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.12.090) #4, !srcloc !15
  %6 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.11.091) #4, !srcloc !15
  %xor6.i = xor <16 x i8> %6, %st.sroa.12.090
  %7 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.10.092) #4, !srcloc !15
  %xor12.i = xor <16 x i8> %7, %st.sroa.11.091
  %8 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.9.093) #4, !srcloc !15
  %xor18.i = xor <16 x i8> %8, %st.sroa.10.092
  %9 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.0.094) #4, !srcloc !15
  %xor24.i = xor <16 x i8> %9, %st.sroa.9.093
  %xor.i = xor <16 x i8> %st.sroa.0.094, %shuffle
  %xor27.i = xor <16 x i8> %xor.i, %5
  %10 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %xor6.i) #4, !srcloc !15
  %11 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %xor12.i) #4, !srcloc !15
  %xor6.i50 = xor <16 x i8> %11, %xor6.i
  %12 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %xor18.i) #4, !srcloc !15
  %xor12.i52 = xor <16 x i8> %12, %xor12.i
  %13 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %xor24.i) #4, !srcloc !15
  %xor18.i54 = xor <16 x i8> %13, %xor18.i
  %14 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %xor27.i) #4, !srcloc !15
  %xor24.i55 = xor <16 x i8> %14, %xor24.i
  %xor.i48 = xor <16 x i8> %xor27.i, %xor
  %xor27.i56 = xor <16 x i8> %xor.i48, %10
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %shuffle.i = shufflevector <16 x i8> %xor27.i56, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %state, <16 x i8> %shuffle.i, i32 1) #5
  %shuffle5.i = shufflevector <16 x i8> %xor24.i55, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr.i = getelementptr i8, ptr %state, i32 16
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr.i, <16 x i8> %shuffle5.i, i32 1) #5
  %shuffle10.i = shufflevector <16 x i8> %xor18.i54, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr11.i = getelementptr i8, ptr %state, i32 32
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr11.i, <16 x i8> %shuffle10.i, i32 1) #5
  %shuffle16.i = shufflevector <16 x i8> %xor12.i52, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr17.i = getelementptr i8, ptr %state, i32 48
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr17.i, <16 x i8> %shuffle16.i, i32 1) #5
  %shuffle22.i = shufflevector <16 x i8> %xor6.i50, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr23.i = getelementptr i8, ptr %state, i32 64
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr23.i, <16 x i8> %shuffle22.i, i32 1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_aegis128_update_neon(ptr noundef %state, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %1 = load <16 x i8>, ptr %state, align 1, !noalias !16
  %shuffle.i = shufflevector <16 x i8> %1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr.i = getelementptr i8, ptr %state, i32 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %3 = load <16 x i8>, ptr %add.ptr.i, align 1, !noalias !16
  %shuffle3.i = shufflevector <16 x i8> %3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr7.i = getelementptr i8, ptr %state, i32 32
  %4 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 16)
  %5 = load <16 x i8>, ptr %add.ptr7.i, align 1, !noalias !16
  %shuffle9.i = shufflevector <16 x i8> %5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr13.i = getelementptr i8, ptr %state, i32 48
  %6 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %7 = load <16 x i8>, ptr %add.ptr13.i, align 1, !noalias !16
  %shuffle15.i = shufflevector <16 x i8> %7, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr19.i = getelementptr i8, ptr %state, i32 64
  %8 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 16)
  %9 = load <16 x i8>, ptr %add.ptr19.i, align 1, !noalias !16
  %shuffle21.i = shufflevector <16 x i8> %9, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %10, i32 16)
  %11 = load <16 x i8>, ptr %msg, align 1
  %12 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %shuffle21.i) #4, !srcloc !15
  %13 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %shuffle15.i) #4, !srcloc !15
  %xor6.i = xor <16 x i8> %13, %shuffle21.i
  %14 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %shuffle9.i) #4, !srcloc !15
  %xor12.i = xor <16 x i8> %14, %shuffle15.i
  %15 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %shuffle3.i) #4, !srcloc !15
  %xor18.i = xor <16 x i8> %15, %shuffle9.i
  %16 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %shuffle.i) #4, !srcloc !15
  %xor24.i = xor <16 x i8> %16, %shuffle3.i
  %17 = xor <16 x i8> %11, %1
  %xor.i = shufflevector <16 x i8> %17, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %xor27.i = xor <16 x i8> %xor.i, %12
  %shuffle.i7 = shufflevector <16 x i8> %xor27.i, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %state, <16 x i8> %shuffle.i7, i32 1) #5
  %shuffle5.i = shufflevector <16 x i8> %xor24.i, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr.i, <16 x i8> %shuffle5.i, i32 1) #5
  %shuffle10.i = shufflevector <16 x i8> %xor18.i, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr7.i, <16 x i8> %shuffle10.i, i32 1) #5
  %shuffle16.i = shufflevector <16 x i8> %xor12.i, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr13.i, <16 x i8> %shuffle16.i, i32 1) #5
  %shuffle22.i = shufflevector <16 x i8> %xor6.i, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr19.i, <16 x i8> %shuffle22.i, i32 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_aegis128_encrypt_chunk_neon(ptr noundef %state, ptr noundef %dst, ptr noundef %src, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %1 = load <16 x i8>, ptr %state, align 1, !noalias !19
  %shuffle.i = shufflevector <16 x i8> %1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr.i = getelementptr i8, ptr %state, i32 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %3 = load <16 x i8>, ptr %add.ptr.i, align 1, !noalias !19
  %shuffle3.i = shufflevector <16 x i8> %3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr7.i = getelementptr i8, ptr %state, i32 32
  %4 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 16)
  %5 = load <16 x i8>, ptr %add.ptr7.i, align 1, !noalias !19
  %shuffle9.i = shufflevector <16 x i8> %5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr13.i = getelementptr i8, ptr %state, i32 48
  %6 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %7 = load <16 x i8>, ptr %add.ptr13.i, align 1, !noalias !19
  %shuffle15.i = shufflevector <16 x i8> %7, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr19.i = getelementptr i8, ptr %state, i32 64
  %8 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 16)
  %9 = load <16 x i8>, ptr %add.ptr19.i, align 1, !noalias !19
  %shuffle21.i = shufflevector <16 x i8> %9, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp = icmp ult i32 %size, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp1168 = icmp ugt i32 %size, 15
  br i1 %cmp1168, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dst.addr.0176 = phi ptr [ %add.ptr13, %while.body.while.body_crit_edge ], [ %dst, %entry.while.body_crit_edge ]
  %src.addr.0175 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %src, %entry.while.body_crit_edge ]
  %size.addr.0174 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %size, %entry.while.body_crit_edge ]
  %st.sroa.0.0173 = phi <16 x i8> [ %xor27.i, %while.body.while.body_crit_edge ], [ %shuffle.i, %entry.while.body_crit_edge ]
  %st.sroa.9.0172 = phi <16 x i8> [ %xor24.i, %while.body.while.body_crit_edge ], [ %shuffle3.i, %entry.while.body_crit_edge ]
  %st.sroa.12.0171 = phi <16 x i8> [ %xor18.i, %while.body.while.body_crit_edge ], [ %shuffle9.i, %entry.while.body_crit_edge ]
  %st.sroa.15.0170 = phi <16 x i8> [ %xor12.i, %while.body.while.body_crit_edge ], [ %shuffle15.i, %entry.while.body_crit_edge ]
  %st.sroa.18.0169 = phi <16 x i8> [ %xor6.i, %while.body.while.body_crit_edge ], [ %shuffle21.i, %entry.while.body_crit_edge ]
  %and = and <16 x i8> %st.sroa.12.0171, %st.sroa.15.0170
  %10 = ptrtoint ptr %src.addr.0175 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 16)
  %11 = load <16 x i8>, ptr %src.addr.0175, align 1
  %shuffle = shufflevector <16 x i8> %11, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %12 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.18.0169) #4, !srcloc !15
  %13 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.15.0170) #4, !srcloc !15
  %xor6.i = xor <16 x i8> %13, %st.sroa.18.0169
  %14 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.12.0171) #4, !srcloc !15
  %xor12.i = xor <16 x i8> %14, %st.sroa.15.0170
  %15 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.9.0172) #4, !srcloc !15
  %xor18.i = xor <16 x i8> %15, %st.sroa.12.0171
  %16 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.0.0173) #4, !srcloc !15
  %xor24.i = xor <16 x i8> %16, %st.sroa.9.0172
  %xor.i = xor <16 x i8> %shuffle, %st.sroa.0.0173
  %xor27.i = xor <16 x i8> %xor.i, %12
  %xor = xor <16 x i8> %st.sroa.9.0172, %st.sroa.18.0169
  %xor9 = xor <16 x i8> %xor, %and
  %xor11 = xor <16 x i8> %xor9, %shuffle
  %shuffle12 = shufflevector <16 x i8> %xor11, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %dst.addr.0176, <16 x i8> %shuffle12, i32 1)
  %sub = add i32 %size.addr.0174, -16
  %add.ptr = getelementptr i8, ptr %src.addr.0175, i32 16
  %add.ptr13 = getelementptr i8, ptr %dst.addr.0176, i32 16
  %cmp1 = icmp ugt i32 %sub, 15
  br i1 %cmp1, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %st.sroa.18.0.lcssa = phi <16 x i8> [ %shuffle21.i, %entry.while.end_crit_edge ], [ %xor6.i, %while.body.while.end_crit_edge ]
  %st.sroa.15.0.lcssa = phi <16 x i8> [ %shuffle15.i, %entry.while.end_crit_edge ], [ %xor12.i, %while.body.while.end_crit_edge ]
  %st.sroa.12.0.lcssa = phi <16 x i8> [ %shuffle9.i, %entry.while.end_crit_edge ], [ %xor18.i, %while.body.while.end_crit_edge ]
  %st.sroa.9.0.lcssa = phi <16 x i8> [ %shuffle3.i, %entry.while.end_crit_edge ], [ %xor24.i, %while.body.while.end_crit_edge ]
  %st.sroa.0.0.lcssa = phi <16 x i8> [ %shuffle.i, %entry.while.end_crit_edge ], [ %xor27.i, %while.body.while.end_crit_edge ]
  %msg.0.lcssa = phi <16 x i8> [ <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %entry.while.end_crit_edge ], [ %xor11, %while.body.while.end_crit_edge ]
  %size.addr.0.lcssa = phi i32 [ %size, %entry.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %src, %entry.while.end_crit_edge ], [ %add.ptr, %while.body.while.end_crit_edge ]
  %dst.addr.0.lcssa = phi ptr [ %dst, %entry.while.end_crit_edge ], [ %add.ptr13, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %cmp14.not = icmp eq i32 %size.addr.0.lcssa, 0
  br i1 %cmp14.not, label %while.end.if.end66_crit_edge, label %if.then

while.end.if.end66_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then:                                          ; preds = %while.end
  %and23 = and <16 x i8> %st.sroa.12.0.lcssa, %st.sroa.15.0.lcssa
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #5
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %17, i32 16)
  store <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, ptr %buf, align 1
  br i1 %cmp, label %if.then28, label %if.then.if.end_crit_edge, !prof !22

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = sub nsw i32 0, %size.addr.0.lcssa
  br label %if.end

if.then28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr29 = getelementptr inbounds i8, ptr %buf, i32 16
  %idx.neg = sub nsw i32 0, %size.addr.0.lcssa
  %add.ptr30 = getelementptr i8, ptr %add.ptr29, i32 %idx.neg
  %call = call ptr @memcpy(ptr noundef %add.ptr30, ptr noundef %src.addr.0.lcssa, i32 noundef %size.addr.0.lcssa) #8
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then.if.end_crit_edge
  %idx.neg38.pre-phi = phi i32 [ %.pre, %if.then.if.end_crit_edge ], [ %idx.neg, %if.then28 ]
  %out.0 = phi ptr [ %dst.addr.0.lcssa, %if.then.if.end_crit_edge ], [ %call, %if.then28 ]
  %in.0 = phi ptr [ %src.addr.0.lcssa, %if.then.if.end_crit_edge ], [ %call, %if.then28 ]
  %add.ptr32 = getelementptr i8, ptr %in.0, i32 %size.addr.0.lcssa
  %add.ptr33 = getelementptr i8, ptr %add.ptr32, i32 -16
  %18 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 16)
  %19 = load <16 x i8>, ptr %add.ptr33, align 1
  %shuffle35 = shufflevector <16 x i8> %19, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr39 = getelementptr i8, ptr getelementptr inbounds ([48 x i8], ptr @permute, i32 0, i32 32), i32 %idx.neg38.pre-phi
  %20 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 16)
  %21 = load <16 x i8>, ptr %add.ptr39, align 1
  %shuffle41 = shufflevector <16 x i8> %21, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i.i = shufflevector <16 x i8> %shuffle41, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i = shufflevector <8 x i8> %shuffle1.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i = bitcast <16 x i8> %shuffle35 to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 0
  %__a.sroa.0.8.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 1
  %22 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i to <8 x i8>
  %23 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i to <8 x i8>
  %shuffle.i.i = shufflevector <8 x i8> %22, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i = shufflevector <8 x i8> %23, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i = shufflevector <8 x i8> %shuffle2.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i = call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i.i) #5
  %shuffle.i17.i = shufflevector <16 x i8> %shuffle41, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i = shufflevector <16 x i8> %shuffle.i17.i, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i = shufflevector <8 x i8> %shuffle1.i18.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i = shufflevector <8 x i8> %shuffle2.i19.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i = call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i22.i) #5
  %shuffle3.i.i = shufflevector <8 x i8> %vtbl2.i.i, <8 x i8> %vtbl2.i23.i, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %24 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.18.0.lcssa) #4, !srcloc !15
  %25 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.15.0.lcssa) #4, !srcloc !15
  %xor6.i107 = xor <16 x i8> %25, %st.sroa.18.0.lcssa
  %26 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.12.0.lcssa) #4, !srcloc !15
  %xor12.i109 = xor <16 x i8> %26, %st.sroa.15.0.lcssa
  %27 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.9.0.lcssa) #4, !srcloc !15
  %xor18.i111 = xor <16 x i8> %27, %st.sroa.12.0.lcssa
  %28 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.0.0.lcssa) #4, !srcloc !15
  %xor24.i112 = xor <16 x i8> %28, %st.sroa.9.0.lcssa
  %xor.i105 = xor <16 x i8> %shuffle3.i.i, %st.sroa.0.0.lcssa
  %xor27.i113 = xor <16 x i8> %xor.i105, %24
  %xor24 = xor <16 x i8> %st.sroa.9.0.lcssa, %st.sroa.18.0.lcssa
  %xor27 = xor <16 x i8> %xor24, %and23
  %xor46 = xor <16 x i8> %xor27, %shuffle3.i.i
  %add.ptr48 = getelementptr i8, ptr @permute, i32 %size.addr.0.lcssa
  %29 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 16)
  %30 = load <16 x i8>, ptr %add.ptr48, align 1
  %shuffle50 = shufflevector <16 x i8> %30, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i.i114 = shufflevector <16 x i8> %shuffle50, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i115 = shufflevector <8 x i8> %shuffle1.i.i114, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i116 = bitcast <16 x i8> %xor46 to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i117 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i116, i64 0
  %__a.sroa.0.8.vec.extract.extract.i118 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i116, i64 1
  %31 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i117 to <8 x i8>
  %32 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i118 to <8 x i8>
  %shuffle.i.i119 = shufflevector <8 x i8> %31, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i120 = shufflevector <8 x i8> %32, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i121 = shufflevector <8 x i8> %shuffle2.i.i115, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i122 = call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i119, <8 x i8> %shuffle9.i.i120, <8 x i8> %shuffle12.i.i121) #5
  %shuffle.i17.i123 = shufflevector <16 x i8> %shuffle50, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i124 = shufflevector <16 x i8> %shuffle.i17.i123, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i125 = shufflevector <8 x i8> %shuffle1.i18.i124, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i126 = shufflevector <8 x i8> %shuffle2.i19.i125, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i127 = call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i119, <8 x i8> %shuffle9.i.i120, <8 x i8> %shuffle12.i22.i126) #5
  %shuffle3.i.i128 = shufflevector <8 x i8> %vtbl2.i.i122, <8 x i8> %vtbl2.i23.i127, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle54 = shufflevector <16 x i8> %shuffle3.i.i128, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr55 = getelementptr i8, ptr %out.0, i32 %size.addr.0.lcssa
  %add.ptr56 = getelementptr i8, ptr %add.ptr55, i32 -16
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr56, <16 x i8> %shuffle54, i32 1)
  br i1 %cmp, label %if.then59, label %if.else, !prof !22

if.then59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call60 = call ptr @memcpy(ptr noundef %dst.addr.0.lcssa, ptr noundef %out.0, i32 noundef %size.addr.0.lcssa) #8
  br label %if.end65

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shuffle63 = shufflevector <16 x i8> %msg.0.lcssa, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr64 = getelementptr i8, ptr %out.0, i32 -16
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr64, <16 x i8> %shuffle63, i32 1)
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #5
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %while.end.if.end66_crit_edge
  %st.sroa.18.1 = phi <16 x i8> [ %st.sroa.18.0.lcssa, %while.end.if.end66_crit_edge ], [ %xor6.i107, %if.end65 ]
  %st.sroa.15.1 = phi <16 x i8> [ %st.sroa.15.0.lcssa, %while.end.if.end66_crit_edge ], [ %xor12.i109, %if.end65 ]
  %st.sroa.12.1 = phi <16 x i8> [ %st.sroa.12.0.lcssa, %while.end.if.end66_crit_edge ], [ %xor18.i111, %if.end65 ]
  %st.sroa.9.1 = phi <16 x i8> [ %st.sroa.9.0.lcssa, %while.end.if.end66_crit_edge ], [ %xor24.i112, %if.end65 ]
  %st.sroa.0.1 = phi <16 x i8> [ %st.sroa.0.0.lcssa, %while.end.if.end66_crit_edge ], [ %xor27.i113, %if.end65 ]
  %shuffle.i130 = shufflevector <16 x i8> %st.sroa.0.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %state, <16 x i8> %shuffle.i130, i32 1) #5
  %shuffle5.i = shufflevector <16 x i8> %st.sroa.9.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr.i, <16 x i8> %shuffle5.i, i32 1) #5
  %shuffle10.i = shufflevector <16 x i8> %st.sroa.12.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr7.i, <16 x i8> %shuffle10.i, i32 1) #5
  %shuffle16.i = shufflevector <16 x i8> %st.sroa.15.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr13.i, <16 x i8> %shuffle16.i, i32 1) #5
  %shuffle22.i = shufflevector <16 x i8> %st.sroa.18.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr19.i, <16 x i8> %shuffle22.i, i32 1) #5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.arm.neon.vst1.p0.v16i8(ptr, <16 x i8>, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crypto_aegis128_decrypt_chunk_neon(ptr noundef %state, ptr noundef %dst, ptr noundef %src, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %1 = load <16 x i8>, ptr %state, align 1, !noalias !23
  %shuffle.i = shufflevector <16 x i8> %1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr.i = getelementptr i8, ptr %state, i32 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %3 = load <16 x i8>, ptr %add.ptr.i, align 1, !noalias !23
  %shuffle3.i = shufflevector <16 x i8> %3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr7.i = getelementptr i8, ptr %state, i32 32
  %4 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 16)
  %5 = load <16 x i8>, ptr %add.ptr7.i, align 1, !noalias !23
  %shuffle9.i = shufflevector <16 x i8> %5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr13.i = getelementptr i8, ptr %state, i32 48
  %6 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %7 = load <16 x i8>, ptr %add.ptr13.i, align 1, !noalias !23
  %shuffle15.i = shufflevector <16 x i8> %7, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr19.i = getelementptr i8, ptr %state, i32 64
  %8 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 16)
  %9 = load <16 x i8>, ptr %add.ptr19.i, align 1, !noalias !23
  %shuffle21.i = shufflevector <16 x i8> %9, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp = icmp ult i32 %size, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp1159 = icmp ugt i32 %size, 15
  br i1 %cmp1159, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dst.addr.0167 = phi ptr [ %add.ptr13, %while.body.while.body_crit_edge ], [ %dst, %entry.while.body_crit_edge ]
  %src.addr.0166 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %src, %entry.while.body_crit_edge ]
  %size.addr.0165 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %size, %entry.while.body_crit_edge ]
  %st.sroa.0.0164 = phi <16 x i8> [ %xor27.i, %while.body.while.body_crit_edge ], [ %shuffle.i, %entry.while.body_crit_edge ]
  %st.sroa.9.0163 = phi <16 x i8> [ %xor24.i, %while.body.while.body_crit_edge ], [ %shuffle3.i, %entry.while.body_crit_edge ]
  %st.sroa.12.0162 = phi <16 x i8> [ %xor18.i, %while.body.while.body_crit_edge ], [ %shuffle9.i, %entry.while.body_crit_edge ]
  %st.sroa.15.0161 = phi <16 x i8> [ %xor12.i, %while.body.while.body_crit_edge ], [ %shuffle15.i, %entry.while.body_crit_edge ]
  %st.sroa.18.0160 = phi <16 x i8> [ %xor6.i, %while.body.while.body_crit_edge ], [ %shuffle21.i, %entry.while.body_crit_edge ]
  %10 = ptrtoint ptr %src.addr.0166 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 16)
  %11 = load <16 x i8>, ptr %src.addr.0166, align 1
  %shuffle = shufflevector <16 x i8> %11, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %and = and <16 x i8> %st.sroa.12.0162, %st.sroa.15.0161
  %xor = xor <16 x i8> %st.sroa.9.0163, %st.sroa.18.0160
  %xor7 = xor <16 x i8> %xor, %and
  %xor10 = xor <16 x i8> %xor7, %shuffle
  %12 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.18.0160) #4, !srcloc !15
  %13 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.15.0161) #4, !srcloc !15
  %xor6.i = xor <16 x i8> %13, %st.sroa.18.0160
  %14 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.12.0162) #4, !srcloc !15
  %xor12.i = xor <16 x i8> %14, %st.sroa.15.0161
  %15 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.9.0163) #4, !srcloc !15
  %xor18.i = xor <16 x i8> %15, %st.sroa.12.0162
  %16 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.0.0164) #4, !srcloc !15
  %xor24.i = xor <16 x i8> %16, %st.sroa.9.0163
  %xor.i = xor <16 x i8> %12, %st.sroa.0.0164
  %xor27.i = xor <16 x i8> %xor.i, %xor10
  %shuffle12 = shufflevector <16 x i8> %xor10, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %dst.addr.0167, <16 x i8> %shuffle12, i32 1)
  %sub = add i32 %size.addr.0165, -16
  %add.ptr = getelementptr i8, ptr %src.addr.0166, i32 16
  %add.ptr13 = getelementptr i8, ptr %dst.addr.0167, i32 16
  %cmp1 = icmp ugt i32 %sub, 15
  br i1 %cmp1, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %st.sroa.18.0.lcssa = phi <16 x i8> [ %shuffle21.i, %entry.while.end_crit_edge ], [ %xor6.i, %while.body.while.end_crit_edge ]
  %st.sroa.15.0.lcssa = phi <16 x i8> [ %shuffle15.i, %entry.while.end_crit_edge ], [ %xor12.i, %while.body.while.end_crit_edge ]
  %st.sroa.12.0.lcssa = phi <16 x i8> [ %shuffle9.i, %entry.while.end_crit_edge ], [ %xor18.i, %while.body.while.end_crit_edge ]
  %st.sroa.9.0.lcssa = phi <16 x i8> [ %shuffle3.i, %entry.while.end_crit_edge ], [ %xor24.i, %while.body.while.end_crit_edge ]
  %st.sroa.0.0.lcssa = phi <16 x i8> [ %shuffle.i, %entry.while.end_crit_edge ], [ %xor27.i, %while.body.while.end_crit_edge ]
  %msg.0.lcssa = phi <16 x i8> [ <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %entry.while.end_crit_edge ], [ %xor10, %while.body.while.end_crit_edge ]
  %size.addr.0.lcssa = phi i32 [ %size, %entry.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %src, %entry.while.end_crit_edge ], [ %add.ptr, %while.body.while.end_crit_edge ]
  %dst.addr.0.lcssa = phi ptr [ %dst, %entry.while.end_crit_edge ], [ %add.ptr13, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %cmp14.not = icmp eq i32 %size.addr.0.lcssa, 0
  br i1 %cmp14.not, label %while.end.if.end65_crit_edge, label %if.then

while.end.if.end65_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then:                                          ; preds = %while.end
  %and22 = and <16 x i8> %st.sroa.12.0.lcssa, %st.sroa.15.0.lcssa
  %xor23 = xor <16 x i8> %st.sroa.9.0.lcssa, %st.sroa.18.0.lcssa
  %xor26 = xor <16 x i8> %xor23, %and22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #5
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %17, i32 16)
  store <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, ptr %buf, align 1
  br i1 %cmp, label %if.then27, label %if.then.if.end_crit_edge, !prof !22

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = sub nsw i32 0, %size.addr.0.lcssa
  br label %if.end

if.then27:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr28 = getelementptr inbounds i8, ptr %buf, i32 16
  %idx.neg = sub nsw i32 0, %size.addr.0.lcssa
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %idx.neg
  %call = call ptr @memcpy(ptr noundef %add.ptr29, ptr noundef %src.addr.0.lcssa, i32 noundef %size.addr.0.lcssa) #8
  br label %if.end

if.end:                                           ; preds = %if.then27, %if.then.if.end_crit_edge
  %idx.neg37.pre-phi = phi i32 [ %.pre, %if.then.if.end_crit_edge ], [ %idx.neg, %if.then27 ]
  %out.0 = phi ptr [ %dst.addr.0.lcssa, %if.then.if.end_crit_edge ], [ %call, %if.then27 ]
  %in.0 = phi ptr [ %src.addr.0.lcssa, %if.then.if.end_crit_edge ], [ %call, %if.then27 ]
  %add.ptr31 = getelementptr i8, ptr %in.0, i32 %size.addr.0.lcssa
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 -16
  %18 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 16)
  %19 = load <16 x i8>, ptr %add.ptr32, align 1
  %shuffle34 = shufflevector <16 x i8> %19, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr38 = getelementptr i8, ptr getelementptr inbounds ([48 x i8], ptr @permute, i32 0, i32 32), i32 %idx.neg37.pre-phi
  %20 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 16)
  %21 = load <16 x i8>, ptr %add.ptr38, align 1
  %shuffle40 = shufflevector <16 x i8> %21, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i.i = shufflevector <16 x i8> %xor26, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i = shufflevector <8 x i8> %shuffle1.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i20.i = shufflevector <16 x i8> %shuffle40, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i21.i = shufflevector <8 x i8> %shuffle1.i20.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i = bitcast <16 x i8> %shuffle34 to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 0
  %__a.sroa.0.8.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 1
  %22 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i to <8 x i8>
  %23 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i to <8 x i8>
  %shuffle.i.i = shufflevector <8 x i8> %shuffle2.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle3.i.i = shufflevector <8 x i8> %22, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle10.i.i = shufflevector <8 x i8> %23, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle13.i.i = shufflevector <8 x i8> %shuffle2.i21.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbx2.i.i = call <8 x i8> @llvm.arm.neon.vtbx2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle3.i.i, <8 x i8> %shuffle10.i.i, <8 x i8> %shuffle13.i.i) #5
  %shuffle.i22.i = shufflevector <16 x i8> %xor26, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i23.i = shufflevector <16 x i8> %shuffle.i22.i, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i24.i = shufflevector <8 x i8> %shuffle1.i23.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle.i25.i = shufflevector <16 x i8> %shuffle40, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i26.i = shufflevector <16 x i8> %shuffle.i25.i, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i27.i = shufflevector <8 x i8> %shuffle1.i26.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle.i28.i = shufflevector <8 x i8> %shuffle2.i24.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle13.i31.i = shufflevector <8 x i8> %shuffle2.i27.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbx2.i32.i = call <8 x i8> @llvm.arm.neon.vtbx2(<8 x i8> %shuffle.i28.i, <8 x i8> %shuffle3.i.i, <8 x i8> %shuffle10.i.i, <8 x i8> %shuffle13.i31.i) #5
  %shuffle3.i34.i = shufflevector <8 x i8> %vtbx2.i.i, <8 x i8> %vtbx2.i32.i, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %xor43 = xor <16 x i8> %shuffle3.i34.i, %xor26
  %24 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.18.0.lcssa) #4, !srcloc !15
  %25 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.15.0.lcssa) #4, !srcloc !15
  %xor6.i106 = xor <16 x i8> %25, %st.sroa.18.0.lcssa
  %26 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.12.0.lcssa) #4, !srcloc !15
  %xor12.i108 = xor <16 x i8> %26, %st.sroa.15.0.lcssa
  %27 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.9.0.lcssa) #4, !srcloc !15
  %xor18.i110 = xor <16 x i8> %27, %st.sroa.12.0.lcssa
  %28 = call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.0.0.lcssa) #4, !srcloc !15
  %xor24.i111 = xor <16 x i8> %28, %st.sroa.9.0.lcssa
  %xor.i104 = xor <16 x i8> %24, %st.sroa.0.0.lcssa
  %xor27.i112 = xor <16 x i8> %xor.i104, %xor43
  %add.ptr47 = getelementptr i8, ptr @permute, i32 %size.addr.0.lcssa
  %29 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 16)
  %30 = load <16 x i8>, ptr %add.ptr47, align 1
  %shuffle49 = shufflevector <16 x i8> %30, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i.i113 = shufflevector <16 x i8> %shuffle49, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i114 = shufflevector <8 x i8> %shuffle1.i.i113, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i115 = bitcast <16 x i8> %xor43 to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i116 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i115, i64 0
  %__a.sroa.0.8.vec.extract.extract.i117 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i115, i64 1
  %31 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i116 to <8 x i8>
  %32 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i117 to <8 x i8>
  %shuffle.i.i118 = shufflevector <8 x i8> %31, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i = shufflevector <8 x i8> %32, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i = shufflevector <8 x i8> %shuffle2.i.i114, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i = call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i118, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i.i) #5
  %shuffle.i17.i = shufflevector <16 x i8> %shuffle49, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i = shufflevector <16 x i8> %shuffle.i17.i, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i = shufflevector <8 x i8> %shuffle1.i18.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i = shufflevector <8 x i8> %shuffle2.i19.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i = call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i118, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i22.i) #5
  %shuffle3.i.i119 = shufflevector <8 x i8> %vtbl2.i.i, <8 x i8> %vtbl2.i23.i, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle53 = shufflevector <16 x i8> %shuffle3.i.i119, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr54 = getelementptr i8, ptr %out.0, i32 %size.addr.0.lcssa
  %add.ptr55 = getelementptr i8, ptr %add.ptr54, i32 -16
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr55, <16 x i8> %shuffle53, i32 1)
  br i1 %cmp, label %if.then58, label %if.else, !prof !22

if.then58:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call59 = call ptr @memcpy(ptr noundef %dst.addr.0.lcssa, ptr noundef %out.0, i32 noundef %size.addr.0.lcssa) #8
  br label %if.end64

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shuffle62 = shufflevector <16 x i8> %msg.0.lcssa, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr63 = getelementptr i8, ptr %out.0, i32 -16
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr63, <16 x i8> %shuffle62, i32 1)
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then58
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #5
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %while.end.if.end65_crit_edge
  %st.sroa.18.1 = phi <16 x i8> [ %st.sroa.18.0.lcssa, %while.end.if.end65_crit_edge ], [ %xor6.i106, %if.end64 ]
  %st.sroa.15.1 = phi <16 x i8> [ %st.sroa.15.0.lcssa, %while.end.if.end65_crit_edge ], [ %xor12.i108, %if.end64 ]
  %st.sroa.12.1 = phi <16 x i8> [ %st.sroa.12.0.lcssa, %while.end.if.end65_crit_edge ], [ %xor18.i110, %if.end64 ]
  %st.sroa.9.1 = phi <16 x i8> [ %st.sroa.9.0.lcssa, %while.end.if.end65_crit_edge ], [ %xor24.i111, %if.end64 ]
  %st.sroa.0.1 = phi <16 x i8> [ %st.sroa.0.0.lcssa, %while.end.if.end65_crit_edge ], [ %xor27.i112, %if.end64 ]
  %shuffle.i121 = shufflevector <16 x i8> %st.sroa.0.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %state, <16 x i8> %shuffle.i121, i32 1) #5
  %shuffle5.i = shufflevector <16 x i8> %st.sroa.9.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr.i, <16 x i8> %shuffle5.i, i32 1) #5
  %shuffle10.i = shufflevector <16 x i8> %st.sroa.12.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr7.i, <16 x i8> %shuffle10.i, i32 1) #5
  %shuffle16.i = shufflevector <16 x i8> %st.sroa.15.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr13.i, <16 x i8> %shuffle16.i, i32 1) #5
  %shuffle22.i = shufflevector <16 x i8> %st.sroa.18.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  call void @llvm.arm.neon.vst1.p0.v16i8(ptr %add.ptr19.i, <16 x i8> %shuffle22.i, i32 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_aegis128_final_neon(ptr nocapture noundef readonly %state, ptr noundef %tag_xor, i32 noundef %assoclen, i32 noundef %cryptlen, i32 noundef %authsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %1 = load <16 x i8>, ptr %state, align 1, !noalias !26
  %shuffle.i = shufflevector <16 x i8> %1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr.i = getelementptr i8, ptr %state, i32 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %3 = load <16 x i8>, ptr %add.ptr.i, align 1, !noalias !26
  %shuffle3.i = shufflevector <16 x i8> %3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr7.i = getelementptr i8, ptr %state, i32 32
  %4 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 16)
  %5 = load <16 x i8>, ptr %add.ptr7.i, align 1, !noalias !26
  %shuffle9.i = shufflevector <16 x i8> %5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr13.i = getelementptr i8, ptr %state, i32 48
  %6 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %7 = load <16 x i8>, ptr %add.ptr13.i, align 1, !noalias !26
  %shuffle15.i = shufflevector <16 x i8> %7, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr19.i = getelementptr i8, ptr %state, i32 64
  %8 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 16)
  %9 = load <16 x i8>, ptr %add.ptr19.i, align 1, !noalias !26
  %shuffle21.i = shufflevector <16 x i8> %9, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %conv = zext i32 %assoclen to i64
  %mul = shl nuw nsw i64 %conv, 3
  %vecinit.i = insertelement <1 x i64> undef, i64 %mul, i64 0
  %conv2 = zext i32 %cryptlen to i64
  %mul3 = shl nuw nsw i64 %conv2, 3
  %vecinit.i46 = insertelement <1 x i64> undef, i64 %mul3, i64 0
  %shuffle1.i = shufflevector <1 x i64> %vecinit.i, <1 x i64> %vecinit.i46, <2 x i32> <i32 1, i32 0>
  %10 = bitcast <2 x i64> %shuffle1.i to <16 x i8>
  %xor = xor <16 x i8> %shuffle15.i, %10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.066 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %st.sroa.0.065 = phi <16 x i8> [ %shuffle.i, %entry ], [ %xor27.i, %for.body.for.body_crit_edge ]
  %st.sroa.7.064 = phi <16 x i8> [ %shuffle3.i, %entry ], [ %xor24.i, %for.body.for.body_crit_edge ]
  %st.sroa.9.063 = phi <16 x i8> [ %shuffle9.i, %entry ], [ %xor18.i, %for.body.for.body_crit_edge ]
  %st.sroa.11.062 = phi <16 x i8> [ %shuffle15.i, %entry ], [ %xor12.i, %for.body.for.body_crit_edge ]
  %st.sroa.14.061 = phi <16 x i8> [ %shuffle21.i, %entry ], [ %xor6.i, %for.body.for.body_crit_edge ]
  %11 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.14.061) #4, !srcloc !15
  %12 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.11.062) #4, !srcloc !15
  %xor6.i = xor <16 x i8> %12, %st.sroa.14.061
  %13 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.9.063) #4, !srcloc !15
  %xor12.i = xor <16 x i8> %13, %st.sroa.11.062
  %14 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.7.064) #4, !srcloc !15
  %xor18.i = xor <16 x i8> %14, %st.sroa.9.063
  %15 = tail call <16 x i8> asm "aese.8 ${0:q}, ${1:q} \0A\09 aesmc.8 ${0:q}, ${0:q}", "=w,w,0"(<16 x i8> zeroinitializer, <16 x i8> %st.sroa.0.065) #4, !srcloc !15
  %xor24.i = xor <16 x i8> %15, %st.sroa.7.064
  %xor.i = xor <16 x i8> %xor, %st.sroa.0.065
  %xor27.i = xor <16 x i8> %xor.i, %11
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %xor11 = xor <16 x i8> %xor12.i, %xor6.i
  %xor14 = xor <16 x i8> %xor11, %xor18.i
  %xor17 = xor <16 x i8> %xor14, %xor24.i
  %xor20 = xor <16 x i8> %xor17, %xor27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %authsize)
  %cmp21.not = icmp eq i32 %authsize, 0
  br i1 %cmp21.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %tag_xor to i32
  call void @__asan_loadN_noabort(i32 %16, i32 16)
  %17 = load <16 x i8>, ptr %tag_xor, align 1
  %shuffle = shufflevector <16 x i8> %17, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %18 = icmp ne <16 x i8> %xor20, %shuffle
  %19 = shufflevector <16 x i1> %18, <16 x i1> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %20 = sext <16 x i1> %19 to <16 x i8>
  %neg = shufflevector <16 x i8> %20, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr = getelementptr i8, ptr @permute, i32 %authsize
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %21, i32 16)
  %22 = load <16 x i8>, ptr %add.ptr, align 1
  %shuffle27 = shufflevector <16 x i8> %22, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i.i = shufflevector <16 x i8> %shuffle27, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i = shufflevector <8 x i8> %shuffle1.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i = bitcast <16 x i8> %neg to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 0
  %__a.sroa.0.8.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 1
  %23 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i to <8 x i8>
  %24 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i to <8 x i8>
  %shuffle.i.i = shufflevector <8 x i8> %23, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i = shufflevector <8 x i8> %24, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i = shufflevector <8 x i8> %shuffle2.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i.i) #5
  %shuffle.i17.i = shufflevector <16 x i8> %shuffle27, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i = shufflevector <16 x i8> %shuffle.i17.i, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i = shufflevector <8 x i8> %shuffle1.i18.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i = shufflevector <8 x i8> %shuffle2.i19.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i22.i) #5
  %vpmin_v.i.i = tail call <8 x i8> @llvm.arm.neon.vpmins.v8i8(<8 x i8> %vtbl2.i.i, <8 x i8> %vtbl2.i23.i) #5
  %vpmin_v.i19.i = tail call <8 x i8> @llvm.arm.neon.vpmins.v8i8(<8 x i8> %vpmin_v.i.i, <8 x i8> %vpmin_v.i.i) #5
  %vpmin_v.i21.i = tail call <8 x i8> @llvm.arm.neon.vpmins.v8i8(<8 x i8> %vpmin_v.i19.i, <8 x i8> %vpmin_v.i19.i) #5
  %vpmin_v.i23.i = tail call <8 x i8> @llvm.arm.neon.vpmins.v8i8(<8 x i8> %vpmin_v.i21.i, <8 x i8> %vpmin_v.i21.i) #5
  %vget_lane.i = extractelement <8 x i8> %vpmin_v.i23.i, i64 0
  %conv31 = sext i8 %vget_lane.i to i32
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %shuffle32 = shufflevector <16 x i8> %xor20, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %tag_xor, <16 x i8> %shuffle32, i32 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv31, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readnone
declare <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8>, <8 x i8>, <8 x i8>) #4

; Function Attrs: nounwind readnone
declare <8 x i8> @llvm.arm.neon.vtbx2(<8 x i8>, <8 x i8>, <8 x i8>, <8 x i8>) #4

; Function Attrs: nounwind readnone
declare <8 x i8> @llvm.arm.neon.vpmins.v8i8(<8 x i8>, <8 x i8>) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_storeN_noabort(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+aes,+armv8-a,+crc,+d32,+dsp,+fp-armv8,+fp-armv8d16,+fp-armv8d16sp,+fp-armv8sp,+fp16,+fp64,+hwdiv,+hwdiv-arm,+neon,+sha2,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,+vfp4,+vfp4d16,+vfp4d16sp,+vfp4sp,-fp16fml,-fullfp16,-thumb-mode" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nounwind }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+aes,+armv8-a,+crc,+d32,+dsp,+fp-armv8,+fp-armv8d16,+fp-armv8d16sp,+fp-armv8sp,+fp16,+fp64,+hwdiv,+hwdiv-arm,+neon,+sha2,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,+vfp4,+vfp4d16,+vfp4d16sp,+vfp4sp,-fp16fml,-fullfp16,-thumb-mode" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{null, !1, !"const0", i1 false, i1 false}
!1 = !{!"../crypto/aegis128-neon-inner.c", i32 136, i32 23}
!2 = distinct !{null, !3, !"const1", i1 false, i1 false}
!3 = !{!"../crypto/aegis128-neon-inner.c", i32 140, i32 23}
!4 = !{ptr @permute, !5, !"permute", i1 false, i1 false}
!5 = !{!"../crypto/aegis128-neon-inner.c", i32 215, i32 22}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2150887022, i64 2150887041}
!16 = !{!17}
!17 = distinct !{!17, !18, !"aegis128_load_state_neon: %agg.result"}
!18 = distinct !{!18, !"aegis128_load_state_neon"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"aegis128_load_state_neon: %agg.result"}
!21 = distinct !{!21, !"aegis128_load_state_neon"}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{!24}
!24 = distinct !{!24, !25, !"aegis128_load_state_neon: %agg.result"}
!25 = distinct !{!25, !"aegis128_load_state_neon"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"aegis128_load_state_neon: %agg.result"}
!28 = distinct !{!28, !"aegis128_load_state_neon"}
