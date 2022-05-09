; ModuleID = '/llk/IR_all_yes/lib/raid6/recov_neon_inner.c_pt.bc'
source_filename = "../lib/raid6/recov_neon_inner.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__raid6_2data_recov_neon(i32 noundef %bytes, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %q, ptr noundef %dp, ptr noundef %dq, ptr nocapture noundef readonly %pbmul, ptr nocapture noundef readonly %qmul) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not150 = icmp eq i32 %bytes, 0
  br i1 %tobool.not150, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr10 = getelementptr i8, ptr %qmul, i32 16
  %0 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %1 = load <16 x i8>, ptr %add.ptr10, align 1
  %shuffle12 = shufflevector <16 x i8> %1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %2 = ptrtoint ptr %qmul to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %3 = load <16 x i8>, ptr %qmul, align 1
  %shuffle7 = shufflevector <16 x i8> %3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %add.ptr = getelementptr i8, ptr %pbmul, i32 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 16)
  %5 = load <16 x i8>, ptr %add.ptr, align 1
  %shuffle3 = shufflevector <16 x i8> %5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %6 = ptrtoint ptr %pbmul to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %7 = load <16 x i8>, ptr %pbmul, align 1
  %shuffle = shufflevector <16 x i8> %7, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i = bitcast <16 x i8> %shuffle7 to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 0
  %__a.sroa.0.8.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 1
  %8 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i to <8 x i8>
  %9 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i to <8 x i8>
  %shuffle.i.i = shufflevector <8 x i8> %8, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i = shufflevector <8 x i8> %9, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i107 = bitcast <16 x i8> %shuffle12 to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i108 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i107, i64 0
  %__a.sroa.0.8.vec.extract.extract.i109 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i107, i64 1
  %10 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i108 to <8 x i8>
  %11 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i109 to <8 x i8>
  %shuffle.i.i110 = shufflevector <8 x i8> %10, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i111 = shufflevector <8 x i8> %11, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i122 = bitcast <16 x i8> %shuffle to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i123 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i122, i64 0
  %__a.sroa.0.8.vec.extract.extract.i124 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i122, i64 1
  %12 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i123 to <8 x i8>
  %13 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i124 to <8 x i8>
  %shuffle.i.i125 = shufflevector <8 x i8> %12, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i126 = shufflevector <8 x i8> %13, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i137 = bitcast <16 x i8> %shuffle3 to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i138 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i137, i64 0
  %__a.sroa.0.8.vec.extract.extract.i139 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i137, i64 1
  %14 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i138 to <8 x i8>
  %15 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i139 to <8 x i8>
  %shuffle.i.i140 = shufflevector <8 x i8> %14, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i141 = shufflevector <8 x i8> %15, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %bytes.addr.0155 = phi i32 [ %bytes, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %p.addr.0154 = phi ptr [ %p, %while.body.lr.ph ], [ %add.ptr57, %while.body.while.body_crit_edge ]
  %q.addr.0153 = phi ptr [ %q, %while.body.lr.ph ], [ %add.ptr58, %while.body.while.body_crit_edge ]
  %dp.addr.0152 = phi ptr [ %dp, %while.body.lr.ph ], [ %add.ptr59, %while.body.while.body_crit_edge ]
  %dq.addr.0151 = phi ptr [ %dq, %while.body.lr.ph ], [ %add.ptr60, %while.body.while.body_crit_edge ]
  %16 = ptrtoint ptr %p.addr.0154 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 16)
  %17 = load <16 x i8>, ptr %p.addr.0154, align 1
  %18 = ptrtoint ptr %dp.addr.0152 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 16)
  %19 = load <16 x i8>, ptr %dp.addr.0152, align 1
  %20 = xor <16 x i8> %19, %17
  %21 = shufflevector <16 x i8> %20, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %22 = ptrtoint ptr %q.addr.0153 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 16)
  %23 = load <16 x i8>, ptr %q.addr.0153, align 1
  %24 = ptrtoint ptr %dq.addr.0151 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 16)
  %25 = load <16 x i8>, ptr %dq.addr.0151, align 1
  %26 = xor <16 x i8> %25, %23
  %27 = shufflevector <16 x i8> %26, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %28 = lshr <16 x i8> %27, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %29 = and <16 x i8> %27, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %shuffle1.i.i = shufflevector <16 x i8> %29, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i = shufflevector <8 x i8> %shuffle1.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i = shufflevector <8 x i8> %shuffle2.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i.i) #3
  %shuffle.i17.i = shufflevector <16 x i8> %29, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i = shufflevector <16 x i8> %shuffle.i17.i, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i = shufflevector <8 x i8> %shuffle1.i18.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i = shufflevector <8 x i8> %shuffle2.i19.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i22.i) #3
  %shuffle3.i.i = shufflevector <8 x i8> %vtbl2.i.i, <8 x i8> %vtbl2.i23.i, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i.i105 = shufflevector <16 x i8> %28, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i106 = shufflevector <8 x i8> %shuffle1.i.i105, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i112 = shufflevector <8 x i8> %shuffle2.i.i106, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i113 = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i110, <8 x i8> %shuffle9.i.i111, <8 x i8> %shuffle12.i.i112) #3
  %shuffle.i17.i114 = shufflevector <16 x i8> %28, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i115 = shufflevector <16 x i8> %shuffle.i17.i114, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i116 = shufflevector <8 x i8> %shuffle1.i18.i115, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i117 = shufflevector <8 x i8> %shuffle2.i19.i116, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i118 = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i110, <8 x i8> %shuffle9.i.i111, <8 x i8> %shuffle12.i22.i117) #3
  %shuffle3.i.i119 = shufflevector <8 x i8> %vtbl2.i.i113, <8 x i8> %vtbl2.i23.i118, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %30 = lshr <16 x i8> %21, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %31 = and <16 x i8> %21, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %shuffle1.i.i120 = shufflevector <16 x i8> %31, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i121 = shufflevector <8 x i8> %shuffle1.i.i120, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i127 = shufflevector <8 x i8> %shuffle2.i.i121, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i128 = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i125, <8 x i8> %shuffle9.i.i126, <8 x i8> %shuffle12.i.i127) #3
  %shuffle.i17.i129 = shufflevector <16 x i8> %31, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i130 = shufflevector <16 x i8> %shuffle.i17.i129, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i131 = shufflevector <8 x i8> %shuffle1.i18.i130, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i132 = shufflevector <8 x i8> %shuffle2.i19.i131, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i133 = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i125, <8 x i8> %shuffle9.i.i126, <8 x i8> %shuffle12.i22.i132) #3
  %shuffle3.i.i134 = shufflevector <8 x i8> %vtbl2.i.i128, <8 x i8> %vtbl2.i23.i133, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i.i135 = shufflevector <16 x i8> %30, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i136 = shufflevector <8 x i8> %shuffle1.i.i135, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i142 = shufflevector <8 x i8> %shuffle2.i.i136, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i143 = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i140, <8 x i8> %shuffle9.i.i141, <8 x i8> %shuffle12.i.i142) #3
  %shuffle.i17.i144 = shufflevector <16 x i8> %30, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i145 = shufflevector <16 x i8> %shuffle.i17.i144, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i146 = shufflevector <8 x i8> %shuffle1.i18.i145, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i147 = shufflevector <8 x i8> %shuffle2.i19.i146, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i148 = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i140, <8 x i8> %shuffle9.i.i141, <8 x i8> %shuffle12.i22.i147) #3
  %shuffle3.i.i149 = shufflevector <8 x i8> %vtbl2.i.i143, <8 x i8> %vtbl2.i23.i148, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %32 = xor <16 x i8> %shuffle3.i.i119, %shuffle3.i.i
  %33 = xor <16 x i8> %32, %shuffle3.i.i134
  %34 = xor <16 x i8> %33, %shuffle3.i.i149
  %shuffle52 = shufflevector <16 x i8> %34, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %dq.addr.0151, <16 x i8> %shuffle52, i32 1)
  %35 = xor <16 x i8> %34, %21
  %shuffle56 = shufflevector <16 x i8> %35, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %dp.addr.0152, <16 x i8> %shuffle56, i32 1)
  %sub = add i32 %bytes.addr.0155, -16
  %add.ptr57 = getelementptr i8, ptr %p.addr.0154, i32 16
  %add.ptr58 = getelementptr i8, ptr %q.addr.0153, i32 16
  %add.ptr59 = getelementptr i8, ptr %dp.addr.0152, i32 16
  %add.ptr60 = getelementptr i8, ptr %dq.addr.0151, i32 16
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.arm.neon.vst1.p0.v16i8(ptr, <16 x i8>, i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__raid6_datap_recov_neon(i32 noundef %bytes, ptr noundef %p, ptr nocapture noundef readonly %q, ptr noundef %dq, ptr nocapture noundef readonly %qmul) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not77 = icmp eq i32 %bytes, 0
  br i1 %tobool.not77, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr = getelementptr i8, ptr %qmul, i32 16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %1 = load <16 x i8>, ptr %add.ptr, align 1
  %shuffle3 = shufflevector <16 x i8> %1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %2 = ptrtoint ptr %qmul to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %3 = load <16 x i8>, ptr %qmul, align 1
  %shuffle = shufflevector <16 x i8> %3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i = bitcast <16 x i8> %shuffle to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 0
  %__a.sroa.0.8.vec.extract.extract.i = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i, i64 1
  %4 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i to <8 x i8>
  %5 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i to <8 x i8>
  %shuffle.i.i = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i = shufflevector <8 x i8> %5, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %__a.sroa.0.0.vec.extract.bc.i64 = bitcast <16 x i8> %shuffle3 to <2 x i64>
  %__a.sroa.0.0.vec.extract.extract.i65 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i64, i64 0
  %__a.sroa.0.8.vec.extract.extract.i66 = extractelement <2 x i64> %__a.sroa.0.0.vec.extract.bc.i64, i64 1
  %6 = bitcast i64 %__a.sroa.0.0.vec.extract.extract.i65 to <8 x i8>
  %7 = bitcast i64 %__a.sroa.0.8.vec.extract.extract.i66 to <8 x i8>
  %shuffle.i.i67 = shufflevector <8 x i8> %6, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle9.i.i68 = shufflevector <8 x i8> %7, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %bytes.addr.081 = phi i32 [ %bytes, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %p.addr.080 = phi ptr [ %p, %while.body.lr.ph ], [ %add.ptr31, %while.body.while.body_crit_edge ]
  %q.addr.079 = phi ptr [ %q, %while.body.lr.ph ], [ %add.ptr32, %while.body.while.body_crit_edge ]
  %dq.addr.078 = phi ptr [ %dq, %while.body.lr.ph ], [ %add.ptr33, %while.body.while.body_crit_edge ]
  %8 = ptrtoint ptr %q.addr.079 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 16)
  %9 = load <16 x i8>, ptr %q.addr.079, align 1
  %10 = ptrtoint ptr %dq.addr.078 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 16)
  %11 = load <16 x i8>, ptr %dq.addr.078, align 1
  %12 = xor <16 x i8> %11, %9
  %13 = shufflevector <16 x i8> %12, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %14 = lshr <16 x i8> %13, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>
  %15 = and <16 x i8> %13, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %shuffle1.i.i = shufflevector <16 x i8> %15, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i = shufflevector <8 x i8> %shuffle1.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i = shufflevector <8 x i8> %shuffle2.i.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i.i) #3
  %shuffle.i17.i = shufflevector <16 x i8> %15, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i = shufflevector <16 x i8> %shuffle.i17.i, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i = shufflevector <8 x i8> %shuffle1.i18.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i = shufflevector <8 x i8> %shuffle2.i19.i, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i, <8 x i8> %shuffle9.i.i, <8 x i8> %shuffle12.i22.i) #3
  %shuffle3.i.i = shufflevector <8 x i8> %vtbl2.i.i, <8 x i8> %vtbl2.i23.i, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i.i62 = shufflevector <16 x i8> %14, <16 x i8> poison, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %shuffle2.i.i63 = shufflevector <8 x i8> %shuffle1.i.i62, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i.i69 = shufflevector <8 x i8> %shuffle2.i.i63, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i.i70 = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i67, <8 x i8> %shuffle9.i.i68, <8 x i8> %shuffle12.i.i69) #3
  %shuffle.i17.i71 = shufflevector <16 x i8> %14, <16 x i8> poison, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle1.i18.i72 = shufflevector <16 x i8> %shuffle.i17.i71, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %shuffle2.i19.i73 = shufflevector <8 x i8> %shuffle1.i18.i72, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %shuffle12.i22.i74 = shufflevector <8 x i8> %shuffle2.i19.i73, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %vtbl2.i23.i75 = tail call <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8> %shuffle.i.i67, <8 x i8> %shuffle9.i.i68, <8 x i8> %shuffle12.i22.i74) #3
  %shuffle3.i.i76 = shufflevector <8 x i8> %vtbl2.i.i70, <8 x i8> %vtbl2.i23.i75, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %16 = xor <16 x i8> %shuffle3.i.i76, %shuffle3.i.i
  %17 = ptrtoint ptr %p.addr.080 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 16)
  %18 = load <16 x i8>, ptr %p.addr.080, align 1
  %shuffle24 = shufflevector <16 x i8> %18, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %19 = xor <16 x i8> %shuffle24, %16
  %shuffle27 = shufflevector <16 x i8> %16, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %dq.addr.078, <16 x i8> %shuffle27, i32 1)
  %shuffle30 = shufflevector <16 x i8> %19, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  tail call void @llvm.arm.neon.vst1.p0.v16i8(ptr %p.addr.080, <16 x i8> %shuffle30, i32 1)
  %sub = add i32 %bytes.addr.081, -16
  %add.ptr31 = getelementptr i8, ptr %p.addr.080, i32 16
  %add.ptr32 = getelementptr i8, ptr %q.addr.079, i32 16
  %add.ptr33 = getelementptr i8, ptr %dq.addr.078, i32 16
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind readnone
declare <8 x i8> @llvm.arm.neon.vtbl2(<8 x i8>, <8 x i8>, <8 x i8>) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
