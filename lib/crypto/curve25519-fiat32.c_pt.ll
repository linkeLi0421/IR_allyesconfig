; ModuleID = '/llk/IR_all_yes/lib/crypto/curve25519-fiat32.c_pt.bc'
source_filename = "../lib/crypto/curve25519-fiat32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fe = type { [10 x i32] }
%struct.fe_loose = type { [10 x i32] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @curve25519_generic(ptr noundef writeonly %out, ptr nocapture noundef readonly %scalar, ptr nocapture noundef readonly %point) local_unnamed_addr #0 align 64 {
entry:
  %t0.i.i = alloca %struct.fe, align 4
  %t1.i.i = alloca %struct.fe, align 4
  %t2.i.i = alloca %struct.fe, align 4
  %t3.i.i = alloca %struct.fe, align 4
  %l.i = alloca %struct.fe_loose, align 4
  %x1 = alloca %struct.fe, align 4
  %x2 = alloca %struct.fe, align 4
  %z2 = alloca %struct.fe, align 4
  %x3 = alloca %struct.fe, align 4
  %z3 = alloca %struct.fe, align 4
  %x2l = alloca %struct.fe_loose, align 4
  %z2l = alloca %struct.fe_loose, align 4
  %x3l = alloca %struct.fe_loose, align 4
  %e = alloca [32 x i8], align 1
  %tmp0 = alloca %struct.fe, align 4
  %tmp1 = alloca %struct.fe, align 4
  %tmp0l = alloca %struct.fe_loose, align 4
  %tmp1l = alloca %struct.fe_loose, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %z2) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %x3) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %z3) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %x2l) #5
  %0 = call ptr @memset(ptr %x2l, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %z2l) #5
  %1 = call ptr @memset(ptr %z2l, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %x3l) #5
  %2 = call ptr @memset(ptr %x3l, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %e) #5
  %3 = getelementptr inbounds [32 x i8], ptr %e, i32 0, i32 31
  %4 = call ptr @memcpy(ptr %e, ptr %scalar, i32 32)
  %5 = ptrtoint ptr %e to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %e, align 1
  %7 = and i8 %6, -8
  store i8 %7, ptr %e, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  %10 = and i8 %9, 63
  %11 = or i8 %10, 64
  store i8 %11, ptr %3, align 1
  %12 = ptrtoint ptr %point to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %point, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %add.ptr.i.i = getelementptr i8, ptr %point, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr.i.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %add.ptr2.i.i = getelementptr i8, ptr %point, i32 8
  %18 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr2.i.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %add.ptr4.i.i = getelementptr i8, ptr %point, i32 12
  %21 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr4.i.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %add.ptr6.i.i = getelementptr i8, ptr %point, i32 16
  %24 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr6.i.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %add.ptr8.i.i = getelementptr i8, ptr %point, i32 20
  %27 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr8.i.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %add.ptr10.i.i = getelementptr i8, ptr %point, i32 24
  %30 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr10.i.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %add.ptr12.i.i = getelementptr i8, ptr %point, i32 28
  %33 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr12.i.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %and.i.i = and i32 %14, 67108863
  %36 = ptrtoint ptr %x1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i.i, ptr %x1, align 4
  %shr.i.i = lshr i32 %14, 26
  %and14.i.i = shl i32 %17, 6
  %shl.i.i = and i32 %and14.i.i, 33554368
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  %arrayidx15.i.i = getelementptr inbounds i32, ptr %x1, i32 1
  %37 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i, ptr %arrayidx15.i.i, align 4
  %shr16.i.i = lshr i32 %17, 19
  %and17.i.i = shl i32 %20, 13
  %shl18.i.i = and i32 %and17.i.i, 67100672
  %or19.i.i = or i32 %shl18.i.i, %shr16.i.i
  %arrayidx20.i.i = getelementptr inbounds i32, ptr %x1, i32 2
  %38 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or19.i.i, ptr %arrayidx20.i.i, align 4
  %shr21.i.i = lshr i32 %20, 13
  %and22.i.i = shl i32 %23, 19
  %shl23.i.i = and i32 %and22.i.i, 33030144
  %or24.i.i = or i32 %shl23.i.i, %shr21.i.i
  %arrayidx25.i.i = getelementptr inbounds i32, ptr %x1, i32 3
  %39 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or24.i.i, ptr %arrayidx25.i.i, align 4
  %shr26.i.i = lshr i32 %23, 6
  %arrayidx27.i.i = getelementptr inbounds i32, ptr %x1, i32 4
  %40 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr26.i.i, ptr %arrayidx27.i.i, align 4
  %and28.i.i = and i32 %26, 33554431
  %arrayidx29.i.i = getelementptr inbounds i32, ptr %x1, i32 5
  %41 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and28.i.i, ptr %arrayidx29.i.i, align 4
  %shr30.i.i = lshr i32 %26, 25
  %and31.i.i = shl i32 %29, 7
  %shl32.i.i = and i32 %and31.i.i, 67108736
  %or33.i.i = or i32 %shl32.i.i, %shr30.i.i
  %arrayidx34.i.i = getelementptr inbounds i32, ptr %x1, i32 6
  %42 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or33.i.i, ptr %arrayidx34.i.i, align 4
  %shr35.i.i = lshr i32 %29, 19
  %and36.i.i = shl i32 %32, 13
  %shl37.i.i = and i32 %and36.i.i, 33546240
  %or38.i.i = or i32 %shl37.i.i, %shr35.i.i
  %arrayidx39.i.i = getelementptr inbounds i32, ptr %x1, i32 7
  %43 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or38.i.i, ptr %arrayidx39.i.i, align 4
  %shr40.i.i = lshr i32 %32, 12
  %and41.i.i = shl i32 %35, 20
  %shl42.i.i = and i32 %and41.i.i, 66060288
  %or43.i.i = or i32 %shl42.i.i, %shr40.i.i
  %arrayidx44.i.i = getelementptr inbounds i32, ptr %x1, i32 8
  %44 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or43.i.i, ptr %arrayidx44.i.i, align 4
  %shr45.i.i = lshr i32 %35, 6
  %and46.i.i = and i32 %shr45.i.i, 33554431
  %arrayidx47.i.i = getelementptr inbounds i32, ptr %x1, i32 9
  %45 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and46.i.i, ptr %arrayidx47.i.i, align 4
  %46 = getelementptr inbounds i8, ptr %x2, i32 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 36)
  %48 = ptrtoint ptr %x2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %x2, align 4
  %49 = call ptr @memset(ptr %z2, i32 0, i32 40)
  %50 = call ptr @memcpy(ptr %x3, ptr %x1, i32 40)
  %51 = getelementptr inbounds i8, ptr %z3, i32 4
  %52 = call ptr @memset(ptr %51, i32 0, i32 36)
  %53 = ptrtoint ptr %z3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %z3, align 4
  %arrayidx.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 9
  %arrayidx1.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 8
  %arrayidx2.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 7
  %arrayidx3.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 6
  %arrayidx4.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 5
  %arrayidx5.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 4
  %arrayidx6.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 3
  %arrayidx7.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 2
  %arrayidx8.i.i = getelementptr inbounds i32, ptr %tmp1l, i32 1
  %arrayidx389.i.i = getelementptr inbounds i32, ptr %z3, i32 2
  %arrayidx390.i.i = getelementptr inbounds i32, ptr %z3, i32 3
  %arrayidx391.i.i = getelementptr inbounds i32, ptr %z3, i32 4
  %arrayidx392.i.i = getelementptr inbounds i32, ptr %z3, i32 5
  %arrayidx393.i.i = getelementptr inbounds i32, ptr %z3, i32 6
  %arrayidx394.i.i = getelementptr inbounds i32, ptr %z3, i32 7
  %arrayidx395.i.i = getelementptr inbounds i32, ptr %z3, i32 8
  %arrayidx396.i.i = getelementptr inbounds i32, ptr %z3, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %swap.025 = phi i32 [ 0, %entry ], [ %and2, %for.body.for.body_crit_edge ]
  %pos.024 = phi i32 [ 254, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp0) #5
  %54 = call ptr @memset(ptr %tmp0, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp1) #5
  %55 = call ptr @memset(ptr %tmp1, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp0l) #5
  %56 = call ptr @memset(ptr %tmp0l, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp1l) #5
  %57 = call ptr @memset(ptr %tmp1l, i32 255, i32 40)
  %div2223 = lshr i32 %pos.024, 3
  %arrayidx = getelementptr [32 x i8], ptr %e, i32 0, i32 %div2223
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %59 to i32
  %and = and i32 %pos.024, 7
  %shr = lshr i32 %conv, %and
  %and2 = and i32 %shr, 1
  %xor = xor i32 %and2, %swap.025
  call fastcc void @fe_cswap(ptr noundef nonnull %x2, ptr noundef nonnull %x3, i32 noundef %xor)
  call fastcc void @fe_cswap(ptr noundef nonnull %z2, ptr noundef nonnull %z3, i32 noundef %xor)
  call fastcc void @fe_sub_impl(ptr noundef nonnull %tmp0l, ptr noundef nonnull %x3, ptr noundef nonnull %z3) #5
  call fastcc void @fe_sub_impl(ptr noundef nonnull %tmp1l, ptr noundef nonnull %x2, ptr noundef nonnull %z2) #5
  call fastcc void @fe_add_impl(ptr noundef nonnull %x2l, ptr noundef nonnull %x2, ptr noundef nonnull %z2) #5
  call fastcc void @fe_add_impl(ptr noundef nonnull %z2l, ptr noundef nonnull %x3, ptr noundef nonnull %z3) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %z3, ptr noundef nonnull %tmp0l, ptr noundef nonnull %x2l) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %z2, ptr noundef nonnull %z2l, ptr noundef nonnull %tmp1l) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %tmp0, ptr noundef nonnull %tmp1l) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %tmp1, ptr noundef nonnull %x2l) #5
  call fastcc void @fe_add_impl(ptr noundef nonnull %x3l, ptr noundef nonnull %z3, ptr noundef nonnull %z2) #5
  call fastcc void @fe_sub_impl(ptr noundef nonnull %z2l, ptr noundef nonnull %z3, ptr noundef nonnull %z2) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %x2, ptr noundef nonnull %tmp1, ptr noundef nonnull %tmp0) #5
  call fastcc void @fe_sub_impl(ptr noundef nonnull %tmp1l, ptr noundef nonnull %tmp1, ptr noundef nonnull %tmp0) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %z2, ptr noundef nonnull %z2l) #5
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  %62 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx1.i.i, align 4
  %64 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx2.i.i, align 4
  %66 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx3.i.i, align 4
  %68 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx4.i.i, align 4
  %70 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx5.i.i, align 4
  %72 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx6.i.i, align 4
  %74 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx7.i.i, align 4
  %76 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx8.i.i, align 4
  %78 = ptrtoint ptr %tmp1l to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tmp1l, align 4
  %conv.i.i = zext i32 %79 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 121666
  %conv10.i.i = zext i32 %77 to i64
  %mul11.i.i = mul nuw nsw i64 %conv10.i.i, 121666
  %conv16.i.i = zext i32 %75 to i64
  %mul17.i.i = mul nuw nsw i64 %conv16.i.i, 121666
  %conv27.i.i = zext i32 %73 to i64
  %mul28.i.i = mul nuw nsw i64 %conv27.i.i, 121666
  %conv42.i.i = zext i32 %71 to i64
  %mul43.i.i = mul nuw nsw i64 %conv42.i.i, 121666
  %conv59.i.i = zext i32 %69 to i64
  %mul60.i.i = mul nuw nsw i64 %conv59.i.i, 121666
  %conv80.i.i = zext i32 %67 to i64
  %mul81.i.i = mul nuw nsw i64 %conv80.i.i, 121666
  %conv103.i.i = zext i32 %65 to i64
  %mul104.i.i = mul nuw nsw i64 %conv103.i.i, 121666
  %conv130.i.i = zext i32 %63 to i64
  %mul131.i.i = mul nuw nsw i64 %conv130.i.i, 121666
  %conv159.i.i = zext i32 %61 to i64
  %mul160.i.i = mul nuw nsw i64 %conv159.i.i, 121666
  %shr.i.i11 = lshr i64 %mul.i.i, 26
  %add340.i.i = add nuw nsw i64 %shr.i.i11, %mul11.i.i
  %shr341.i.i = lshr i64 %add340.i.i, 25
  %conv342.i.i = trunc i64 %add340.i.i to i32
  %and343.i.i = and i32 %conv342.i.i, 33554431
  %add344.i.i = add nuw nsw i64 %shr341.i.i, %mul17.i.i
  %shr345.i.i = lshr i64 %add344.i.i, 26
  %conv346.i.i = trunc i64 %add344.i.i to i32
  %and347.i.i = and i32 %conv346.i.i, 67108863
  %add348.i.i = add nuw nsw i64 %shr345.i.i, %mul28.i.i
  %shr349.i.i = lshr i64 %add348.i.i, 25
  %conv350.i.i = trunc i64 %add348.i.i to i32
  %and351.i.i = and i32 %conv350.i.i, 33554431
  %add352.i.i = add nuw nsw i64 %shr349.i.i, %mul43.i.i
  %shr353.i.i = lshr i64 %add352.i.i, 26
  %conv354.i.i = trunc i64 %add352.i.i to i32
  %and355.i.i = and i32 %conv354.i.i, 67108863
  %add356.i.i = add nuw nsw i64 %shr353.i.i, %mul60.i.i
  %shr357.i.i = lshr i64 %add356.i.i, 25
  %conv358.i.i = trunc i64 %add356.i.i to i32
  %and359.i.i = and i32 %conv358.i.i, 33554431
  %add360.i.i = add nuw nsw i64 %shr357.i.i, %mul81.i.i
  %shr361.i.i = lshr i64 %add360.i.i, 26
  %conv362.i.i = trunc i64 %add360.i.i to i32
  %and363.i.i = and i32 %conv362.i.i, 67108863
  %add364.i.i = add nuw nsw i64 %shr361.i.i, %mul104.i.i
  %shr365.i.i = lshr i64 %add364.i.i, 25
  %conv366.i.i = trunc i64 %add364.i.i to i32
  %and367.i.i = and i32 %conv366.i.i, 33554431
  %add368.i.i = add nuw nsw i64 %shr365.i.i, %mul131.i.i
  %shr369.i.i = lshr i64 %add368.i.i, 26
  %conv370.i.i = trunc i64 %add368.i.i to i32
  %and371.i.i = and i32 %conv370.i.i, 67108863
  %add372.i.i = add nuw nsw i64 %shr369.i.i, %mul160.i.i
  %shr373.i.i = lshr i64 %add372.i.i, 25
  %conv374.i.i = trunc i64 %add372.i.i to i32
  %and375.i.i = and i32 %conv374.i.i, 33554431
  %conv376.i.i = and i64 %mul.i.i, 67108862
  %mul377.i.i = mul nuw nsw i64 %shr373.i.i, 19
  %add378.i.i = add nuw nsw i64 %mul377.i.i, %conv376.i.i
  %shr379.i.i = lshr i64 %add378.i.i, 26
  %conv380.i.i = trunc i64 %shr379.i.i to i32
  %conv381.i.i = trunc i64 %add378.i.i to i32
  %and382.i.i = and i32 %conv381.i.i, 67108863
  %add383.i.i = add nuw nsw i32 %and343.i.i, %conv380.i.i
  %shr384.i.i = lshr i32 %add383.i.i, 25
  %and385.i.i = and i32 %add383.i.i, 33554431
  %80 = ptrtoint ptr %z3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and382.i.i, ptr %z3, align 4
  %81 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and385.i.i, ptr %51, align 4
  %add388.i.i = add nuw nsw i32 %shr384.i.i, %and347.i.i
  %82 = ptrtoint ptr %arrayidx389.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add388.i.i, ptr %arrayidx389.i.i, align 4
  %83 = ptrtoint ptr %arrayidx390.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and351.i.i, ptr %arrayidx390.i.i, align 4
  %84 = ptrtoint ptr %arrayidx391.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and355.i.i, ptr %arrayidx391.i.i, align 4
  %85 = ptrtoint ptr %arrayidx392.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and359.i.i, ptr %arrayidx392.i.i, align 4
  %86 = ptrtoint ptr %arrayidx393.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and363.i.i, ptr %arrayidx393.i.i, align 4
  %87 = ptrtoint ptr %arrayidx394.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and367.i.i, ptr %arrayidx394.i.i, align 4
  %88 = ptrtoint ptr %arrayidx395.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and371.i.i, ptr %arrayidx395.i.i, align 4
  %89 = ptrtoint ptr %arrayidx396.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and375.i.i, ptr %arrayidx396.i.i, align 4
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %x3, ptr noundef nonnull %x3l) #5
  call fastcc void @fe_add_impl(ptr noundef nonnull %tmp0l, ptr noundef nonnull %tmp0, ptr noundef nonnull %z3) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %z3, ptr noundef nonnull %x1, ptr noundef nonnull %z2) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %z2, ptr noundef nonnull %tmp1l, ptr noundef nonnull %tmp0l) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp1l) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp0l) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp1) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp0) #5
  %dec = add nsw i32 %pos.024, -1
  %cmp.not = icmp eq i32 %pos.024, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call fastcc void @fe_cswap(ptr noundef nonnull %x2, ptr noundef nonnull %x3, i32 noundef %and2)
  call fastcc void @fe_cswap(ptr noundef nonnull %z2, ptr noundef nonnull %z3, i32 noundef %and2)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %l.i) #5
  %90 = call ptr @memcpy(ptr %l.i, ptr %z2, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %t0.i.i) #5
  %91 = call ptr @memset(ptr %t0.i.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %t1.i.i) #5
  %92 = call ptr @memset(ptr %t1.i.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %t2.i.i) #5
  %93 = call ptr @memset(ptr %t2.i.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %t3.i.i) #5
  %94 = call ptr @memset(ptr %t3.i.i, i32 255, i32 40)
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t0.i.i, ptr noundef nonnull %l.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t0.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %l.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t0.i.i, ptr noundef nonnull %t0.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t0.i.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t1.i.i) #5
  br label %for.body27.i.i

for.body27.i.i:                                   ; preds = %for.body27.i.i.for.body27.i.i_crit_edge, %for.end
  %i.571.i.i = phi i32 [ 1, %for.end ], [ %inc29.i.i, %for.body27.i.i.for.body27.i.i_crit_edge ]
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  %inc29.i.i = add nuw nsw i32 %i.571.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc29.i.i, 50
  br i1 %exitcond.not.i.i, label %for.end30.i.i, label %for.body27.i.i.for.body27.i.i_crit_edge

for.body27.i.i.for.body27.i.i_crit_edge:          ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body27.i.i

for.end30.i.i:                                    ; preds = %for.body27.i.i
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t2.i.i) #5
  br label %for.body33.i.i

for.body33.i.i:                                   ; preds = %for.body33.i.i.for.body33.i.i_crit_edge, %for.end30.i.i
  %i.672.i.i = phi i32 [ 1, %for.end30.i.i ], [ %inc35.i.i, %for.body33.i.i.for.body33.i.i_crit_edge ]
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t3.i.i) #5
  %inc35.i.i = add nuw nsw i32 %i.672.i.i, 1
  %exitcond75.not.i.i = icmp eq i32 %inc35.i.i, 100
  br i1 %exitcond75.not.i.i, label %for.end36.i.i, label %for.body33.i.i.for.body33.i.i_crit_edge

for.body33.i.i.for.body33.i.i_crit_edge:          ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body33.i.i

for.end36.i.i:                                    ; preds = %for.body33.i.i
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t3.i.i, ptr noundef nonnull %t2.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  br label %for.body39.i.i

for.body39.i.i:                                   ; preds = %for.body39.i.i.for.body39.i.i_crit_edge, %for.end36.i.i
  %i.773.i.i = phi i32 [ 1, %for.end36.i.i ], [ %inc41.i.i, %for.body39.i.i.for.body39.i.i_crit_edge ]
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t2.i.i) #5
  %inc41.i.i = add nuw nsw i32 %i.773.i.i, 1
  %exitcond76.not.i.i = icmp eq i32 %inc41.i.i, 50
  br i1 %exitcond76.not.i.i, label %fe_invert.exit, label %for.body39.i.i.for.body39.i.i_crit_edge

for.body39.i.i.for.body39.i.i_crit_edge:          ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39.i.i

fe_invert.exit:                                   ; preds = %for.body39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @fe_mul_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t2.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_sqr_impl(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %z2, ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t0.i.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %t3.i.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %t2.i.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %t1.i.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %t0.i.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %l.i) #5
  call fastcc void @fe_mul_impl(ptr noundef nonnull %x2, ptr noundef nonnull %x2, ptr noundef nonnull %z2) #5
  %arrayidx.i.i12 = getelementptr inbounds i32, ptr %x2, i32 9
  %95 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i12, align 4
  %arrayidx1.i.i13 = getelementptr inbounds i32, ptr %x2, i32 8
  %97 = ptrtoint ptr %arrayidx1.i.i13 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx1.i.i13, align 4
  %arrayidx2.i.i14 = getelementptr inbounds i32, ptr %x2, i32 7
  %99 = ptrtoint ptr %arrayidx2.i.i14 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx2.i.i14, align 4
  %arrayidx3.i.i15 = getelementptr inbounds i32, ptr %x2, i32 6
  %101 = ptrtoint ptr %arrayidx3.i.i15 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx3.i.i15, align 4
  %arrayidx4.i.i16 = getelementptr inbounds i32, ptr %x2, i32 5
  %103 = ptrtoint ptr %arrayidx4.i.i16 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx4.i.i16, align 4
  %arrayidx5.i.i17 = getelementptr inbounds i32, ptr %x2, i32 4
  %105 = ptrtoint ptr %arrayidx5.i.i17 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx5.i.i17, align 4
  %arrayidx6.i.i18 = getelementptr inbounds i32, ptr %x2, i32 3
  %107 = ptrtoint ptr %arrayidx6.i.i18 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx6.i.i18, align 4
  %arrayidx7.i.i19 = getelementptr inbounds i32, ptr %x2, i32 2
  %109 = ptrtoint ptr %arrayidx7.i.i19 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx7.i.i19, align 4
  %111 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %46, align 4
  %113 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %x2, align 4
  %sub1.i.i.i = add i32 %114, -67108845
  %and.i.i.i = and i32 %sub1.i.i.i, 67108863
  %shr.i.neg.i.i = ashr i32 %sub1.i.i.i, 31
  %sub.i.i.i = add i32 %112, -33554431
  %sub1.i76.i.i = add i32 %sub.i.i.i, %shr.i.neg.i.i
  %and.i77.i.i = and i32 %sub1.i76.i.i, 33554431
  %shr.i78.neg.i.i = ashr i32 %sub1.i76.i.i, 31
  %.neg.i.i = add i32 %110, -67108863
  %sub1.i81.i.i = add i32 %.neg.i.i, %shr.i78.neg.i.i
  %and.i82.i.i = and i32 %sub1.i81.i.i, 67108863
  %shr.i83.neg.i.i = ashr i32 %sub1.i81.i.i, 31
  %sub.i85.i.i = add i32 %108, -33554431
  %sub1.i87.i.i = add i32 %sub.i85.i.i, %shr.i83.neg.i.i
  %and.i88.i.i = and i32 %sub1.i87.i.i, 33554431
  %shr.i89.neg.i.i = ashr i32 %sub1.i87.i.i, 31
  %.neg179.i.i = add i32 %106, -67108863
  %sub1.i92.i.i = add i32 %.neg179.i.i, %shr.i89.neg.i.i
  %and.i93.i.i = and i32 %sub1.i92.i.i, 67108863
  %shr.i94.neg.i.i = ashr i32 %sub1.i92.i.i, 31
  %sub.i96.i.i = add i32 %104, -33554431
  %sub1.i98.i.i = add i32 %sub.i96.i.i, %shr.i94.neg.i.i
  %and.i99.i.i = and i32 %sub1.i98.i.i, 33554431
  %shr.i100.neg.i.i = ashr i32 %sub1.i98.i.i, 31
  %.neg180.i.i = add i32 %102, -67108863
  %sub1.i103.i.i = add i32 %.neg180.i.i, %shr.i100.neg.i.i
  %and.i104.i.i = and i32 %sub1.i103.i.i, 67108863
  %shr.i105.neg.i.i = ashr i32 %sub1.i103.i.i, 31
  %sub.i107.i.i = add i32 %100, -33554431
  %sub1.i109.i.i = add i32 %sub.i107.i.i, %shr.i105.neg.i.i
  %and.i110.i.i = and i32 %sub1.i109.i.i, 33554431
  %shr.i111.neg.i.i = ashr i32 %sub1.i109.i.i, 31
  %.neg181.i.i = add i32 %98, -67108863
  %sub1.i114.i.i = add i32 %.neg181.i.i, %shr.i111.neg.i.i
  %and.i115.i.i = and i32 %sub1.i114.i.i, 67108863
  %shr.i116.neg.i.i = ashr i32 %sub1.i114.i.i, 31
  %sub.i118.i.i = add i32 %96, -33554431
  %sub1.i120.i.i = add i32 %sub.i118.i.i, %shr.i116.neg.i.i
  %sub1.i120.lobit.i.i = ashr i32 %sub1.i120.i.i, 31
  %and.i.i21 = and i32 %sub1.i120.lobit.i.i, 67108845
  %add1.i.i.i = add nuw nsw i32 %and.i.i21, %and.i.i.i
  %shr.i125.i.i = lshr i32 %add1.i.i.i, 26
  %and21.i.i = and i32 %sub1.i120.lobit.i.i, 33554431
  %add.i.i.i = add nuw nsw i32 %and21.i.i, %and.i77.i.i
  %add1.i127.i.i = add nuw nsw i32 %add.i.i.i, %shr.i125.i.i
  %and.i128.i.i = and i32 %add1.i127.i.i, 33554431
  %shr.i129.i.i = lshr i32 %add1.i127.i.i, 25
  %and23.i.i = and i32 %sub1.i120.lobit.i.i, 67108863
  %add.i132.i.i = add nuw nsw i32 %and23.i.i, %and.i82.i.i
  %add1.i133.i.i = add nuw nsw i32 %add.i132.i.i, %shr.i129.i.i
  %and.i134.i.i = and i32 %add1.i133.i.i, 67108863
  %shr.i135.i.i = lshr i32 %add1.i133.i.i, 26
  %add.i138.i.i = add nuw nsw i32 %and21.i.i, %and.i88.i.i
  %add1.i139.i.i = add nuw nsw i32 %add.i138.i.i, %shr.i135.i.i
  %and.i140.i.i = and i32 %add1.i139.i.i, 33554431
  %shr.i141.i.i = lshr i32 %add1.i139.i.i, 25
  %add.i144.i.i = add nuw nsw i32 %and23.i.i, %and.i93.i.i
  %add1.i145.i.i = add nuw nsw i32 %add.i144.i.i, %shr.i141.i.i
  %shr.i147.i.i = lshr i32 %add1.i145.i.i, 26
  %add.i150.i.i = add nuw nsw i32 %and21.i.i, %and.i99.i.i
  %add1.i151.i.i = add nuw nsw i32 %add.i150.i.i, %shr.i147.i.i
  %shr.i153.i.i = lshr i32 %add1.i151.i.i, 25
  %add.i156.i.i = add nuw nsw i32 %and23.i.i, %and.i104.i.i
  %add1.i157.i.i = add nuw nsw i32 %add.i156.i.i, %shr.i153.i.i
  %and.i158.i.i = and i32 %add1.i157.i.i, 67108863
  %shr.i159.i.i = lshr i32 %add1.i157.i.i, 26
  %add.i162.i.i = add nuw nsw i32 %and21.i.i, %and.i110.i.i
  %add1.i163.i.i = add nuw nsw i32 %add.i162.i.i, %shr.i159.i.i
  %and.i164.i.i = and i32 %add1.i163.i.i, 33554431
  %shr.i165.i.i = lshr i32 %add1.i163.i.i, 25
  %add.i168.i.i = add nuw nsw i32 %and23.i.i, %and.i115.i.i
  %add1.i169.i.i = add nuw nsw i32 %add.i168.i.i, %shr.i165.i.i
  %and.i170.i.i = and i32 %add1.i169.i.i, 67108863
  %shr.i171.i.i = lshr i32 %add1.i169.i.i, 26
  %add.i174.i.i = add i32 %sub1.i120.lobit.i.i, %sub1.i120.i.i
  %add1.i175.i.i = add i32 %add.i174.i.i, %shr.i171.i.i
  %and.i176.i.i = and i32 %add1.i175.i.i, 33554431
  %conv.i = trunc i32 %add1.i.i.i to i8
  %115 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i, ptr %out, align 1
  %shr4.i = lshr i32 %add1.i.i.i, 8
  %conv5.i = trunc i32 %shr4.i to i8
  %arrayidx6.i = getelementptr i8, ptr %out, i32 1
  %116 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr8.i = lshr i32 %add1.i.i.i, 16
  %conv9.i = trunc i32 %shr8.i to i8
  %arrayidx10.i = getelementptr i8, ptr %out, i32 2
  %117 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %and.i124.i.i = lshr i32 %add1.i.i.i, 24
  %shr12.i = and i32 %and.i124.i.i, 3
  %shl.i = shl nuw nsw i32 %and.i128.i.i, 2
  %or.i = or i32 %shl.i, %shr12.i
  %conv14.i = trunc i32 %or.i to i8
  %arrayidx15.i = getelementptr i8, ptr %out, i32 3
  %118 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  %shr17.i = lshr i32 %add1.i127.i.i, 6
  %conv18.i = trunc i32 %shr17.i to i8
  %arrayidx19.i = getelementptr i8, ptr %out, i32 4
  %119 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv18.i, ptr %arrayidx19.i, align 1
  %shr21.i = lshr i32 %add1.i127.i.i, 14
  %conv22.i = trunc i32 %shr21.i to i8
  %arrayidx23.i = getelementptr i8, ptr %out, i32 5
  %120 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv22.i, ptr %arrayidx23.i, align 1
  %shr25.i = lshr i32 %and.i128.i.i, 22
  %shl27.i = shl nuw nsw i32 %and.i134.i.i, 3
  %or28.i = or i32 %shl27.i, %shr25.i
  %conv29.i = trunc i32 %or28.i to i8
  %arrayidx30.i = getelementptr i8, ptr %out, i32 6
  %121 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv29.i, ptr %arrayidx30.i, align 1
  %shr32.i = lshr i32 %add1.i133.i.i, 5
  %conv33.i = trunc i32 %shr32.i to i8
  %arrayidx34.i = getelementptr i8, ptr %out, i32 7
  %122 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv33.i, ptr %arrayidx34.i, align 1
  %shr36.i = lshr i32 %add1.i133.i.i, 13
  %conv37.i = trunc i32 %shr36.i to i8
  %arrayidx38.i = getelementptr i8, ptr %out, i32 8
  %123 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv37.i, ptr %arrayidx38.i, align 1
  %shr40.i = lshr i32 %and.i134.i.i, 21
  %shl42.i = shl nuw nsw i32 %and.i140.i.i, 5
  %or43.i = or i32 %shl42.i, %shr40.i
  %conv44.i = trunc i32 %or43.i to i8
  %arrayidx45.i = getelementptr i8, ptr %out, i32 9
  %124 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv44.i, ptr %arrayidx45.i, align 1
  %shr47.i = lshr i32 %add1.i139.i.i, 3
  %conv48.i = trunc i32 %shr47.i to i8
  %arrayidx49.i = getelementptr i8, ptr %out, i32 10
  %125 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv48.i, ptr %arrayidx49.i, align 1
  %shr51.i = lshr i32 %add1.i139.i.i, 11
  %conv52.i = trunc i32 %shr51.i to i8
  %arrayidx53.i = getelementptr i8, ptr %out, i32 11
  %126 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv52.i, ptr %arrayidx53.i, align 1
  %shr55.i = lshr i32 %and.i140.i.i, 19
  %and.i146.i.i = shl i32 %add1.i145.i.i, 6
  %or58.i = or i32 %and.i146.i.i, %shr55.i
  %conv59.i = trunc i32 %or58.i to i8
  %arrayidx60.i = getelementptr i8, ptr %out, i32 12
  %127 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv59.i, ptr %arrayidx60.i, align 1
  %shr62.i = lshr i32 %add1.i145.i.i, 2
  %conv63.i = trunc i32 %shr62.i to i8
  %arrayidx64.i = getelementptr i8, ptr %out, i32 13
  %128 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv63.i, ptr %arrayidx64.i, align 1
  %shr66.i = lshr i32 %add1.i145.i.i, 10
  %conv67.i = trunc i32 %shr66.i to i8
  %arrayidx68.i = getelementptr i8, ptr %out, i32 14
  %129 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv67.i, ptr %arrayidx68.i, align 1
  %shr70.i = lshr i32 %add1.i145.i.i, 18
  %conv71.i = trunc i32 %shr70.i to i8
  %arrayidx72.i = getelementptr i8, ptr %out, i32 15
  %130 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv71.i, ptr %arrayidx72.i, align 1
  %conv75.i = trunc i32 %add1.i151.i.i to i8
  %arrayidx76.i = getelementptr i8, ptr %out, i32 16
  %131 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv75.i, ptr %arrayidx76.i, align 1
  %shr78.i = lshr i32 %add1.i151.i.i, 8
  %conv79.i = trunc i32 %shr78.i to i8
  %arrayidx80.i = getelementptr i8, ptr %out, i32 17
  %132 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv79.i, ptr %arrayidx80.i, align 1
  %shr82.i = lshr i32 %add1.i151.i.i, 16
  %conv83.i = trunc i32 %shr82.i to i8
  %arrayidx84.i = getelementptr i8, ptr %out, i32 18
  %133 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv83.i, ptr %arrayidx84.i, align 1
  %and.i152.i.i = lshr i32 %add1.i151.i.i, 24
  %shr86.i = and i32 %and.i152.i.i, 1
  %shl88.i = shl nuw nsw i32 %and.i158.i.i, 1
  %or89.i = or i32 %shl88.i, %shr86.i
  %conv90.i = trunc i32 %or89.i to i8
  %arrayidx91.i = getelementptr i8, ptr %out, i32 19
  %134 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv90.i, ptr %arrayidx91.i, align 1
  %shr93.i = lshr i32 %add1.i157.i.i, 7
  %conv94.i = trunc i32 %shr93.i to i8
  %arrayidx95.i = getelementptr i8, ptr %out, i32 20
  %135 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv94.i, ptr %arrayidx95.i, align 1
  %shr97.i = lshr i32 %add1.i157.i.i, 15
  %conv98.i = trunc i32 %shr97.i to i8
  %arrayidx99.i = getelementptr i8, ptr %out, i32 21
  %136 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv98.i, ptr %arrayidx99.i, align 1
  %shr101.i = lshr i32 %and.i158.i.i, 23
  %shl103.i = shl nuw nsw i32 %and.i164.i.i, 3
  %or104.i = or i32 %shl103.i, %shr101.i
  %conv105.i = trunc i32 %or104.i to i8
  %arrayidx106.i = getelementptr i8, ptr %out, i32 22
  %137 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv105.i, ptr %arrayidx106.i, align 1
  %shr108.i = lshr i32 %add1.i163.i.i, 5
  %conv109.i = trunc i32 %shr108.i to i8
  %arrayidx110.i = getelementptr i8, ptr %out, i32 23
  %138 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv109.i, ptr %arrayidx110.i, align 1
  %shr112.i = lshr i32 %add1.i163.i.i, 13
  %conv113.i = trunc i32 %shr112.i to i8
  %arrayidx114.i = getelementptr i8, ptr %out, i32 24
  %139 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv113.i, ptr %arrayidx114.i, align 1
  %shr116.i = lshr i32 %and.i164.i.i, 21
  %shl118.i = shl nuw nsw i32 %and.i170.i.i, 4
  %or119.i = or i32 %shl118.i, %shr116.i
  %conv120.i = trunc i32 %or119.i to i8
  %arrayidx121.i = getelementptr i8, ptr %out, i32 25
  %140 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv120.i, ptr %arrayidx121.i, align 1
  %shr123.i = lshr i32 %add1.i169.i.i, 4
  %conv124.i = trunc i32 %shr123.i to i8
  %arrayidx125.i = getelementptr i8, ptr %out, i32 26
  %141 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv124.i, ptr %arrayidx125.i, align 1
  %shr127.i = lshr i32 %add1.i169.i.i, 12
  %conv128.i = trunc i32 %shr127.i to i8
  %arrayidx129.i = getelementptr i8, ptr %out, i32 27
  %142 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv128.i, ptr %arrayidx129.i, align 1
  %shr131.i = lshr i32 %and.i170.i.i, 20
  %shl133.i = shl nuw nsw i32 %and.i176.i.i, 6
  %or134.i = or i32 %shl133.i, %shr131.i
  %conv135.i = trunc i32 %or134.i to i8
  %arrayidx136.i = getelementptr i8, ptr %out, i32 28
  %143 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv135.i, ptr %arrayidx136.i, align 1
  %shr138.i = lshr i32 %add1.i175.i.i, 2
  %conv139.i = trunc i32 %shr138.i to i8
  %arrayidx140.i = getelementptr i8, ptr %out, i32 29
  %144 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv139.i, ptr %arrayidx140.i, align 1
  %shr142.i = lshr i32 %add1.i175.i.i, 10
  %conv143.i = trunc i32 %shr142.i to i8
  %arrayidx144.i = getelementptr i8, ptr %out, i32 30
  %145 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv143.i, ptr %arrayidx144.i, align 1
  %shr146.i = lshr i32 %and.i176.i.i, 18
  %conv147.i = trunc i32 %shr146.i to i8
  %arrayidx148.i = getelementptr i8, ptr %out, i32 31
  %146 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv147.i, ptr %arrayidx148.i, align 1
  %147 = call ptr @memset(ptr %x1, i32 0, i32 40)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %x1) #5, !srcloc !9
  %148 = call ptr @memset(ptr %x2, i32 0, i32 40)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %x2) #5, !srcloc !9
  %149 = call ptr @memset(ptr %z2, i32 0, i32 40)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %z2) #5, !srcloc !9
  %150 = call ptr @memset(ptr %x3, i32 0, i32 40)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %x3) #5, !srcloc !9
  %151 = call ptr @memset(ptr %z3, i32 0, i32 40)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %z3) #5, !srcloc !9
  %152 = call ptr @memset(ptr %x2l, i32 0, i32 40)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %x2l) #5, !srcloc !9
  %153 = call ptr @memset(ptr %z2l, i32 0, i32 40)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %z2l) #5, !srcloc !9
  %154 = call ptr @memset(ptr %x3l, i32 0, i32 40)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %x3l) #5, !srcloc !9
  %155 = call ptr @memset(ptr %e, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %e) #5, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %x3l) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %z2l) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %x2l) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %z3) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %x3) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %z2) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %x1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fe_cswap(ptr nocapture noundef %f, ptr nocapture noundef %g, i32 noundef %b) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %b
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %g, align 4
  %xor = xor i32 %3, %1
  %and = and i32 %xor, %sub
  %xor5 = xor i32 %and, %1
  store i32 %xor5, ptr %f, align 4
  %4 = load i32, ptr %g, align 4
  %xor8 = xor i32 %4, %and
  store i32 %xor8, ptr %g, align 4
  %arrayidx.1 = getelementptr [10 x i32], ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr [10 x i32], ptr %g, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.1, align 4
  %xor.1 = xor i32 %8, %6
  %and.1 = and i32 %xor.1, %sub
  %xor5.1 = xor i32 %and.1, %6
  store i32 %xor5.1, ptr %arrayidx.1, align 4
  %9 = load i32, ptr %arrayidx2.1, align 4
  %xor8.1 = xor i32 %9, %and.1
  store i32 %xor8.1, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr [10 x i32], ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr [10 x i32], ptr %g, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.2, align 4
  %xor.2 = xor i32 %13, %11
  %and.2 = and i32 %xor.2, %sub
  %xor5.2 = xor i32 %and.2, %11
  store i32 %xor5.2, ptr %arrayidx.2, align 4
  %14 = load i32, ptr %arrayidx2.2, align 4
  %xor8.2 = xor i32 %14, %and.2
  store i32 %xor8.2, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr [10 x i32], ptr %f, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr [10 x i32], ptr %g, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.3, align 4
  %xor.3 = xor i32 %18, %16
  %and.3 = and i32 %xor.3, %sub
  %xor5.3 = xor i32 %and.3, %16
  store i32 %xor5.3, ptr %arrayidx.3, align 4
  %19 = load i32, ptr %arrayidx2.3, align 4
  %xor8.3 = xor i32 %19, %and.3
  store i32 %xor8.3, ptr %arrayidx2.3, align 4
  %arrayidx.4 = getelementptr [10 x i32], ptr %f, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr [10 x i32], ptr %g, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.4, align 4
  %xor.4 = xor i32 %23, %21
  %and.4 = and i32 %xor.4, %sub
  %xor5.4 = xor i32 %and.4, %21
  store i32 %xor5.4, ptr %arrayidx.4, align 4
  %24 = load i32, ptr %arrayidx2.4, align 4
  %xor8.4 = xor i32 %24, %and.4
  store i32 %xor8.4, ptr %arrayidx2.4, align 4
  %arrayidx.5 = getelementptr [10 x i32], ptr %f, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr [10 x i32], ptr %g, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx2.5, align 4
  %xor.5 = xor i32 %28, %26
  %and.5 = and i32 %xor.5, %sub
  %xor5.5 = xor i32 %and.5, %26
  store i32 %xor5.5, ptr %arrayidx.5, align 4
  %29 = load i32, ptr %arrayidx2.5, align 4
  %xor8.5 = xor i32 %29, %and.5
  store i32 %xor8.5, ptr %arrayidx2.5, align 4
  %arrayidx.6 = getelementptr [10 x i32], ptr %f, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr [10 x i32], ptr %g, i32 0, i32 6
  %32 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.6, align 4
  %xor.6 = xor i32 %33, %31
  %and.6 = and i32 %xor.6, %sub
  %xor5.6 = xor i32 %and.6, %31
  store i32 %xor5.6, ptr %arrayidx.6, align 4
  %34 = load i32, ptr %arrayidx2.6, align 4
  %xor8.6 = xor i32 %34, %and.6
  store i32 %xor8.6, ptr %arrayidx2.6, align 4
  %arrayidx.7 = getelementptr [10 x i32], ptr %f, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr [10 x i32], ptr %g, i32 0, i32 7
  %37 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.7, align 4
  %xor.7 = xor i32 %38, %36
  %and.7 = and i32 %xor.7, %sub
  %xor5.7 = xor i32 %and.7, %36
  store i32 %xor5.7, ptr %arrayidx.7, align 4
  %39 = load i32, ptr %arrayidx2.7, align 4
  %xor8.7 = xor i32 %39, %and.7
  store i32 %xor8.7, ptr %arrayidx2.7, align 4
  %arrayidx.8 = getelementptr [10 x i32], ptr %f, i32 0, i32 8
  %40 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.8, align 4
  %arrayidx2.8 = getelementptr [10 x i32], ptr %g, i32 0, i32 8
  %42 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx2.8, align 4
  %xor.8 = xor i32 %43, %41
  %and.8 = and i32 %xor.8, %sub
  %xor5.8 = xor i32 %and.8, %41
  store i32 %xor5.8, ptr %arrayidx.8, align 4
  %44 = load i32, ptr %arrayidx2.8, align 4
  %xor8.8 = xor i32 %44, %and.8
  store i32 %xor8.8, ptr %arrayidx2.8, align 4
  %arrayidx.9 = getelementptr [10 x i32], ptr %f, i32 0, i32 9
  %45 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.9, align 4
  %arrayidx2.9 = getelementptr [10 x i32], ptr %g, i32 0, i32 9
  %47 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx2.9, align 4
  %xor.9 = xor i32 %48, %46
  %and.9 = and i32 %xor.9, %sub
  %xor5.9 = xor i32 %and.9, %46
  store i32 %xor5.9, ptr %arrayidx.9, align 4
  %49 = load i32, ptr %arrayidx2.9, align 4
  %xor8.9 = xor i32 %49, %and.9
  store i32 %xor8.9, ptr %arrayidx2.9, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @fe_sub_impl(ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in1, ptr nocapture noundef readonly %in2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %in1, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %in1, i32 8
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %in1, i32 7
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %in1, i32 6
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %in1, i32 5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %in1, i32 4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %in1, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %in1, i32 2
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %in1, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %18 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in1, align 4
  %arrayidx10 = getelementptr i32, ptr %in2, i32 9
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr i32, ptr %in2, i32 8
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr i32, ptr %in2, i32 7
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %in2, i32 6
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr i32, ptr %in2, i32 5
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i32, ptr %in2, i32 4
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %in2, i32 3
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr i32, ptr %in2, i32 2
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %in2, i32 1
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx18, align 4
  %38 = ptrtoint ptr %in2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in2, align 4
  %add = add i32 %19, 134217690
  %sub = sub i32 %add, %39
  %40 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub, ptr %out, align 4
  %add21 = add i32 %17, 67108862
  %sub22 = sub i32 %add21, %37
  %arrayidx23 = getelementptr i32, ptr %out, i32 1
  %41 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub22, ptr %arrayidx23, align 4
  %add24 = add i32 %15, 134217726
  %sub25 = sub i32 %add24, %35
  %arrayidx26 = getelementptr i32, ptr %out, i32 2
  %42 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub25, ptr %arrayidx26, align 4
  %add27 = add i32 %13, 67108862
  %sub28 = sub i32 %add27, %33
  %arrayidx29 = getelementptr i32, ptr %out, i32 3
  %43 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub28, ptr %arrayidx29, align 4
  %add30 = add i32 %11, 134217726
  %sub31 = sub i32 %add30, %31
  %arrayidx32 = getelementptr i32, ptr %out, i32 4
  %44 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub31, ptr %arrayidx32, align 4
  %add33 = add i32 %9, 67108862
  %sub34 = sub i32 %add33, %29
  %arrayidx35 = getelementptr i32, ptr %out, i32 5
  %45 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub34, ptr %arrayidx35, align 4
  %add36 = add i32 %7, 134217726
  %sub37 = sub i32 %add36, %27
  %arrayidx38 = getelementptr i32, ptr %out, i32 6
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub37, ptr %arrayidx38, align 4
  %add39 = add i32 %5, 67108862
  %sub40 = sub i32 %add39, %25
  %arrayidx41 = getelementptr i32, ptr %out, i32 7
  %47 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub40, ptr %arrayidx41, align 4
  %add42 = add i32 %3, 134217726
  %sub43 = sub i32 %add42, %23
  %arrayidx44 = getelementptr i32, ptr %out, i32 8
  %48 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub43, ptr %arrayidx44, align 4
  %add45 = add i32 %1, 67108862
  %sub46 = sub i32 %add45, %21
  %arrayidx47 = getelementptr i32, ptr %out, i32 9
  %49 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub46, ptr %arrayidx47, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @fe_add_impl(ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in1, ptr nocapture noundef readonly %in2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %in1, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %in1, i32 8
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %in1, i32 7
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %in1, i32 6
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %in1, i32 5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %in1, i32 4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %in1, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %in1, i32 2
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %in1, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %18 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in1, align 4
  %arrayidx10 = getelementptr i32, ptr %in2, i32 9
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr i32, ptr %in2, i32 8
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr i32, ptr %in2, i32 7
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %in2, i32 6
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr i32, ptr %in2, i32 5
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i32, ptr %in2, i32 4
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %in2, i32 3
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr i32, ptr %in2, i32 2
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %in2, i32 1
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx18, align 4
  %38 = ptrtoint ptr %in2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in2, align 4
  %add = add i32 %39, %19
  %40 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %out, align 4
  %add21 = add i32 %37, %17
  %arrayidx22 = getelementptr i32, ptr %out, i32 1
  %41 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add21, ptr %arrayidx22, align 4
  %add23 = add i32 %35, %15
  %arrayidx24 = getelementptr i32, ptr %out, i32 2
  %42 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add23, ptr %arrayidx24, align 4
  %add25 = add i32 %33, %13
  %arrayidx26 = getelementptr i32, ptr %out, i32 3
  %43 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add25, ptr %arrayidx26, align 4
  %add27 = add i32 %31, %11
  %arrayidx28 = getelementptr i32, ptr %out, i32 4
  %44 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add27, ptr %arrayidx28, align 4
  %add29 = add i32 %29, %9
  %arrayidx30 = getelementptr i32, ptr %out, i32 5
  %45 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add29, ptr %arrayidx30, align 4
  %add31 = add i32 %27, %7
  %arrayidx32 = getelementptr i32, ptr %out, i32 6
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add31, ptr %arrayidx32, align 4
  %add33 = add i32 %25, %5
  %arrayidx34 = getelementptr i32, ptr %out, i32 7
  %47 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add33, ptr %arrayidx34, align 4
  %add35 = add i32 %23, %3
  %arrayidx36 = getelementptr i32, ptr %out, i32 8
  %48 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add35, ptr %arrayidx36, align 4
  %add37 = add i32 %21, %1
  %arrayidx38 = getelementptr i32, ptr %out, i32 9
  %49 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add37, ptr %arrayidx38, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @fe_mul_impl(ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in1, ptr nocapture noundef readonly %in2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %in1, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %in1, i32 8
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %in1, i32 7
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %in1, i32 6
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %in1, i32 5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %in1, i32 4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %in1, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %in1, i32 2
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %in1, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %18 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in1, align 4
  %arrayidx10 = getelementptr i32, ptr %in2, i32 9
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr i32, ptr %in2, i32 8
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr i32, ptr %in2, i32 7
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %in2, i32 6
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr i32, ptr %in2, i32 5
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i32, ptr %in2, i32 4
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %in2, i32 3
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr i32, ptr %in2, i32 2
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %in2, i32 1
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx18, align 4
  %38 = ptrtoint ptr %in2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in2, align 4
  %conv = zext i32 %39 to i64
  %conv20 = zext i32 %19 to i64
  %mul = mul nuw i64 %conv, %conv20
  %conv22 = zext i32 %17 to i64
  %mul23 = mul nuw i64 %conv, %conv22
  %conv24 = zext i32 %37 to i64
  %mul26 = mul nuw i64 %conv24, %conv20
  %mul27 = shl i32 %37, 1
  %conv28 = zext i32 %mul27 to i64
  %mul30 = mul nuw i64 %conv28, %conv22
  %conv32 = zext i32 %15 to i64
  %mul33 = mul nuw i64 %conv, %conv32
  %conv35 = zext i32 %35 to i64
  %mul37 = mul nuw i64 %conv35, %conv20
  %mul41 = mul nuw i64 %conv24, %conv32
  %mul44 = mul nuw i64 %conv35, %conv22
  %conv47 = zext i32 %13 to i64
  %mul48 = mul nuw i64 %conv, %conv47
  %conv50 = zext i32 %33 to i64
  %mul52 = mul nuw i64 %conv50, %conv20
  %mul56 = mul nuw i64 %conv35, %conv32
  %mul59 = mul nuw i64 %conv24, %conv47
  %mul62 = mul nuw i64 %conv50, %conv22
  %add63 = add i64 %mul59, %mul62
  %mul64 = shl i64 %add63, 1
  %conv67 = zext i32 %11 to i64
  %mul68 = mul nuw i64 %conv, %conv67
  %conv70 = zext i32 %31 to i64
  %mul72 = mul nuw i64 %conv70, %conv20
  %mul76 = mul nuw i64 %conv35, %conv47
  %mul79 = mul nuw i64 %conv50, %conv32
  %mul83 = mul nuw i64 %conv24, %conv67
  %mul87 = mul nuw i64 %conv70, %conv22
  %conv90 = zext i32 %9 to i64
  %mul91 = mul nuw i64 %conv, %conv90
  %conv93 = zext i32 %29 to i64
  %mul95 = mul nuw i64 %conv93, %conv20
  %mul99 = mul nuw i64 %conv50, %conv47
  %mul102 = mul nuw i64 %conv24, %conv90
  %mul106 = mul nuw i64 %conv93, %conv22
  %mul111 = mul nuw i64 %conv35, %conv67
  %mul115 = mul nuw i64 %conv70, %conv32
  %conv118 = zext i32 %7 to i64
  %mul119 = mul nuw i64 %conv, %conv118
  %conv121 = zext i32 %27 to i64
  %mul123 = mul nuw i64 %conv121, %conv20
  %mul127 = mul nuw i64 %conv50, %conv67
  %mul130 = mul nuw i64 %conv70, %conv47
  %mul134 = mul nuw i64 %conv35, %conv90
  %mul138 = mul nuw i64 %conv93, %conv32
  %mul142 = mul nuw i64 %conv24, %conv118
  %mul146 = mul nuw i64 %conv121, %conv22
  %conv149 = zext i32 %5 to i64
  %mul150 = mul nuw i64 %conv, %conv149
  %conv152 = zext i32 %25 to i64
  %mul154 = mul nuw i64 %conv152, %conv20
  %mul158 = mul nuw i64 %conv70, %conv67
  %mul161 = mul nuw i64 %conv50, %conv90
  %mul164 = mul nuw i64 %conv93, %conv47
  %mul168 = mul nuw i64 %conv24, %conv149
  %mul172 = mul nuw i64 %conv152, %conv22
  %mul178 = mul nuw i64 %conv35, %conv118
  %mul182 = mul nuw i64 %conv121, %conv32
  %conv185 = zext i32 %3 to i64
  %mul186 = mul nuw i64 %conv, %conv185
  %conv188 = zext i32 %23 to i64
  %mul190 = mul nuw i64 %conv188, %conv20
  %mul194 = mul nuw i64 %conv70, %conv90
  %mul197 = mul nuw i64 %conv93, %conv67
  %mul201 = mul nuw i64 %conv50, %conv118
  %mul205 = mul nuw i64 %conv121, %conv47
  %mul209 = mul nuw i64 %conv35, %conv149
  %mul213 = mul nuw i64 %conv152, %conv32
  %mul217 = mul nuw i64 %conv24, %conv185
  %mul221 = mul nuw i64 %conv188, %conv22
  %conv224 = zext i32 %1 to i64
  %mul225 = mul nuw i64 %conv, %conv224
  %conv227 = zext i32 %21 to i64
  %mul229 = mul nuw i64 %conv227, %conv20
  %mul233 = mul nuw i64 %conv93, %conv90
  %mul236 = mul nuw i64 %conv50, %conv149
  %mul240 = mul nuw i64 %conv152, %conv47
  %mul244 = mul nuw i64 %conv24, %conv224
  %mul248 = mul nuw i64 %conv227, %conv22
  %add237 = add i64 %mul240, %mul248
  %add241 = add i64 %add237, %mul233
  %add245 = add i64 %add241, %mul236
  %add249 = add i64 %add245, %mul244
  %mul250 = shl i64 %add249, 1
  %mul253 = mul nuw i64 %conv70, %conv118
  %mul257 = mul nuw i64 %conv121, %conv67
  %mul261 = mul nuw i64 %conv35, %conv185
  %mul265 = mul nuw i64 %conv188, %conv32
  %add254 = add i64 %mul257, %mul265
  %add258 = add i64 %add254, %mul253
  %add262 = add i64 %add258, %mul261
  %add266 = add i64 %add262, %mul250
  %mul269 = mul nuw i64 %conv93, %conv118
  %mul272 = mul nuw i64 %conv121, %conv90
  %mul276 = mul nuw i64 %conv70, %conv149
  %mul280 = mul nuw i64 %conv152, %conv67
  %mul284 = mul nuw i64 %conv50, %conv185
  %mul288 = mul nuw i64 %conv188, %conv47
  %mul292 = mul nuw i64 %conv35, %conv224
  %mul296 = mul nuw i64 %conv227, %conv32
  %add273 = add i64 %mul288, %mul296
  %add277 = add i64 %add273, %mul280
  %add281 = add i64 %add277, %mul272
  %add285 = add i64 %add281, %mul269
  %add289 = add i64 %add285, %mul276
  %add293 = add i64 %add289, %mul284
  %add297 = add i64 %add293, %mul292
  %mul300 = mul nuw i64 %conv121, %conv118
  %mul303 = mul nuw i64 %conv93, %conv149
  %mul306 = mul nuw i64 %conv152, %conv90
  %mul310 = mul nuw i64 %conv50, %conv224
  %mul314 = mul nuw i64 %conv227, %conv47
  %add307 = add i64 %mul306, %mul314
  %add311 = add i64 %add307, %mul303
  %add315 = add i64 %add311, %mul310
  %mul316 = shl i64 %add315, 1
  %mul320 = mul nuw i64 %conv70, %conv185
  %mul324 = mul nuw i64 %conv188, %conv67
  %add317 = add i64 %mul300, %mul324
  %add321 = add i64 %add317, %mul320
  %add325 = add i64 %add321, %mul316
  %mul328 = mul nuw i64 %conv121, %conv149
  %mul331 = mul nuw i64 %conv152, %conv118
  %mul335 = mul nuw i64 %conv93, %conv185
  %mul339 = mul nuw i64 %conv188, %conv90
  %mul343 = mul nuw i64 %conv70, %conv224
  %mul347 = mul nuw i64 %conv227, %conv67
  %add332 = add i64 %mul339, %mul347
  %add336 = add i64 %add332, %mul331
  %add340 = add i64 %add336, %mul328
  %add344 = add i64 %add340, %mul335
  %add348 = add i64 %add344, %mul343
  %mul351 = mul nuw i64 %conv152, %conv149
  %mul354 = mul nuw i64 %conv93, %conv224
  %mul358 = mul nuw i64 %conv227, %conv90
  %add355 = add i64 %mul351, %mul358
  %add359 = add i64 %add355, %mul354
  %mul360 = shl i64 %add359, 1
  %mul363 = mul nuw i64 %conv121, %conv185
  %mul367 = mul nuw i64 %conv188, %conv118
  %add364 = add i64 %mul363, %mul367
  %add368 = add i64 %add364, %mul360
  %mul371 = mul nuw i64 %conv152, %conv185
  %mul374 = mul nuw i64 %conv188, %conv149
  %mul378 = mul nuw i64 %conv121, %conv224
  %mul382 = mul nuw i64 %conv227, %conv118
  %add375 = add i64 %mul374, %mul382
  %add379 = add i64 %add375, %mul371
  %add383 = add i64 %add379, %mul378
  %mul386 = mul nuw i64 %conv188, %conv185
  %mul389 = mul nuw i64 %conv152, %conv224
  %mul392 = mul nuw i64 %conv227, %conv149
  %add393 = add i64 %mul389, %mul392
  %mul394 = shl i64 %add393, 1
  %add395 = add i64 %mul394, %mul386
  %mul398 = mul nuw i64 %conv188, %conv224
  %mul401 = mul nuw i64 %conv227, %conv185
  %add402 = add i64 %mul398, %mul401
  %mul403 = shl i32 %21, 1
  %conv404 = zext i32 %mul403 to i64
  %mul406 = mul nuw i64 %conv404, %conv224
  %shl = shl i64 %mul406, 4
  %shl416 = shl i64 %add395, 4
  %reass.mul = mul i64 %add266, 18
  %add449 = add i64 %add266, %mul
  %add450 = add i64 %add449, %reass.mul
  %shr = lshr i64 %add450, 26
  %reass.mul747 = mul i64 %add297, 18
  %add442 = add i64 %mul23, %mul26
  %add444 = add i64 %add442, %add297
  %add445 = add i64 %add444, %reass.mul747
  %add452 = add i64 %add445, %shr
  %shr453 = lshr i64 %add452, 25
  %conv454 = trunc i64 %add452 to i32
  %and455 = and i32 %conv454, 33554431
  %reass.mul749 = mul i64 %add325, 18
  %add38 = add i64 %mul33, %mul37
  %add437 = add i64 %add38, %mul30
  %add439 = add i64 %add437, %add325
  %add440 = add i64 %add439, %reass.mul749
  %add456 = add i64 %add440, %shr453
  %shr457 = lshr i64 %add456, 26
  %conv458 = trunc i64 %add456 to i32
  %and459 = and i32 %conv458, 67108863
  %reass.mul751 = mul i64 %add348, 18
  %add49 = add i64 %mul44, %mul52
  %add53 = add i64 %add49, %mul41
  %add432 = add i64 %add53, %add348
  %add434 = add i64 %add432, %mul48
  %add435 = add i64 %add434, %reass.mul751
  %add460 = add i64 %add435, %shr457
  %shr461 = lshr i64 %add460, 25
  %conv462 = trunc i64 %add460 to i32
  %and463 = and i32 %conv462, 33554431
  %reass.mul753 = mul i64 %add368, 18
  %add69 = add i64 %mul56, %mul72
  %add73 = add i64 %add69, %mul68
  %add427 = add i64 %add73, %add368
  %add429 = add i64 %add427, %mul64
  %add430 = add i64 %add429, %reass.mul753
  %add464 = add i64 %add430, %shr461
  %shr465 = lshr i64 %add464, 26
  %conv466 = trunc i64 %add464 to i32
  %and467 = and i32 %conv466, 67108863
  %reass.mul755 = mul i64 %add383, 18
  %add84 = add i64 %mul87, %mul95
  %add88 = add i64 %add84, %add383
  %add92 = add i64 %add88, %mul79
  %add96 = add i64 %add92, %reass.mul755
  %add422 = add i64 %add96, %mul76
  %add424 = add i64 %add422, %mul83
  %add425 = add i64 %add424, %mul91
  %add468 = add i64 %add425, %shr465
  %shr469 = lshr i64 %add468, 25
  %conv470 = trunc i64 %add468 to i32
  %and471 = and i32 %conv470, 33554431
  %add103 = add i64 %add395, %mul106
  %add107 = add i64 %add103, %mul99
  %reass.add756 = add i64 %add107, %mul102
  %reass.mul757 = shl i64 %reass.add756, 1
  %add116 = add i64 %mul115, %mul123
  %add120 = add i64 %add116, %add395
  %add124 = add i64 %add120, %shl416
  %add417 = add i64 %add124, %mul111
  %add419 = add i64 %add417, %mul119
  %add420 = add i64 %add419, %reass.mul757
  %add472 = add i64 %add420, %shr469
  %shr473 = lshr i64 %add472, 26
  %conv474 = trunc i64 %add472 to i32
  %and475 = and i32 %conv474, 67108863
  %reass.mul759 = mul i64 %add402, 18
  %add135 = add i64 %add402, %mul154
  %add139 = add i64 %add135, %mul146
  %add143 = add i64 %add139, %reass.mul759
  %add147 = add i64 %add143, %mul138
  %add151 = add i64 %add147, %mul130
  %add155 = add i64 %add151, %mul127
  %add412 = add i64 %add155, %mul134
  %add414 = add i64 %add412, %mul142
  %add415 = add i64 %add414, %mul150
  %add476 = add i64 %add415, %shr473
  %shr477 = lshr i64 %add476, 25
  %conv478 = trunc i64 %add476 to i32
  %and479 = and i32 %conv478, 33554431
  %add165 = add i64 %mul172, %mul406
  %add169 = add i64 %add165, %mul164
  %add173 = add i64 %add169, %mul161
  %reass.add760 = add i64 %add173, %mul168
  %reass.mul761 = shl i64 %reass.add760, 1
  %add179 = add i64 %mul406, %mul190
  %add183 = add i64 %add179, %shl
  %add187 = add i64 %add183, %mul182
  %add191 = add i64 %add187, %mul158
  %add407 = add i64 %add191, %mul178
  %add409 = add i64 %add407, %mul186
  %add410 = add i64 %add409, %reass.mul761
  %add480 = add i64 %add410, %shr477
  %shr481 = lshr i64 %add480, 26
  %conv482 = trunc i64 %add480 to i32
  %and483 = and i32 %conv482, 67108863
  %add198 = add i64 %mul221, %mul229
  %add202 = add i64 %add198, %mul213
  %add206 = add i64 %add202, %mul205
  %add210 = add i64 %add206, %mul197
  %add214 = add i64 %add210, %mul194
  %add218 = add i64 %add214, %mul201
  %add222 = add i64 %add218, %mul209
  %add226 = add i64 %add222, %mul217
  %add230 = add i64 %add226, %mul225
  %add484 = add i64 %add230, %shr481
  %shr485 = lshr i64 %add484, 25
  %conv486 = trunc i64 %add484 to i32
  %and487 = and i32 %conv486, 33554431
  %conv488 = and i64 %add450, 67108863
  %mul489 = mul nuw nsw i64 %shr485, 19
  %add490 = add nuw nsw i64 %mul489, %conv488
  %shr491 = lshr i64 %add490, 26
  %conv492 = trunc i64 %shr491 to i32
  %conv493 = trunc i64 %add490 to i32
  %and494 = and i32 %conv493, 67108863
  %add495 = add nuw nsw i32 %and455, %conv492
  %shr496 = lshr i32 %add495, 25
  %and497 = and i32 %add495, 33554431
  %40 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and494, ptr %out, align 4
  %arrayidx499 = getelementptr i32, ptr %out, i32 1
  %41 = ptrtoint ptr %arrayidx499 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and497, ptr %arrayidx499, align 4
  %add500 = add nuw nsw i32 %shr496, %and459
  %arrayidx501 = getelementptr i32, ptr %out, i32 2
  %42 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add500, ptr %arrayidx501, align 4
  %arrayidx502 = getelementptr i32, ptr %out, i32 3
  %43 = ptrtoint ptr %arrayidx502 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and463, ptr %arrayidx502, align 4
  %arrayidx503 = getelementptr i32, ptr %out, i32 4
  %44 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and467, ptr %arrayidx503, align 4
  %arrayidx504 = getelementptr i32, ptr %out, i32 5
  %45 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and471, ptr %arrayidx504, align 4
  %arrayidx505 = getelementptr i32, ptr %out, i32 6
  %46 = ptrtoint ptr %arrayidx505 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and475, ptr %arrayidx505, align 4
  %arrayidx506 = getelementptr i32, ptr %out, i32 7
  %47 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and479, ptr %arrayidx506, align 4
  %arrayidx507 = getelementptr i32, ptr %out, i32 8
  %48 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and483, ptr %arrayidx507, align 4
  %arrayidx508 = getelementptr i32, ptr %out, i32 9
  %49 = ptrtoint ptr %arrayidx508 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and487, ptr %arrayidx508, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @fe_sqr_impl(ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in1) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %in1, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %in1, i32 8
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %in1, i32 7
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %in1, i32 6
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %in1, i32 5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %in1, i32 4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %in1, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %in1, i32 2
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %in1, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %18 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in1, align 4
  %conv = zext i32 %19 to i64
  %mul = mul nuw i64 %conv, %conv
  %mul11 = shl i32 %19, 1
  %conv12 = zext i32 %mul11 to i64
  %conv13 = zext i32 %17 to i64
  %mul14 = mul nuw i64 %conv12, %conv13
  %mul17 = mul nuw i64 %conv13, %conv13
  %conv19 = zext i32 %15 to i64
  %mul20 = mul nuw i64 %conv, %conv19
  %add = add i64 %mul20, %mul17
  %mul21 = shl i64 %add, 1
  %mul24 = mul nuw i64 %conv13, %conv19
  %conv26 = zext i32 %13 to i64
  %mul27 = mul nuw i64 %conv, %conv26
  %add28 = add i64 %mul27, %mul24
  %mul29 = shl i64 %add28, 1
  %mul32 = mul nuw i64 %conv19, %conv19
  %mul33 = shl i32 %17, 2
  %conv34 = zext i32 %mul33 to i64
  %mul36 = mul nuw i64 %conv34, %conv26
  %conv40 = zext i32 %11 to i64
  %mul41 = mul nuw i64 %conv12, %conv40
  %mul45 = mul nuw i64 %conv19, %conv26
  %mul48 = mul nuw i64 %conv13, %conv40
  %add49 = add i64 %mul48, %mul45
  %conv51 = zext i32 %9 to i64
  %mul52 = mul nuw i64 %conv, %conv51
  %add53 = add i64 %add49, %mul52
  %mul54 = shl i64 %add53, 1
  %mul57 = mul nuw i64 %conv26, %conv26
  %mul60 = mul nuw i64 %conv19, %conv40
  %conv63 = zext i32 %7 to i64
  %mul64 = mul nuw i64 %conv, %conv63
  %mul66 = shl i32 %17, 1
  %conv67 = zext i32 %mul66 to i64
  %mul69 = mul nuw i64 %conv67, %conv51
  %mul74 = mul nuw i64 %conv26, %conv40
  %mul77 = mul nuw i64 %conv19, %conv51
  %mul81 = mul nuw i64 %conv13, %conv63
  %conv84 = zext i32 %5 to i64
  %mul85 = mul nuw i64 %conv, %conv84
  %mul90 = mul nuw i64 %conv40, %conv40
  %mul93 = mul nuw i64 %conv19, %conv63
  %conv95 = zext i32 %3 to i64
  %mul96 = mul nuw i64 %conv, %conv95
  %mul100 = mul nuw i64 %conv13, %conv84
  %mul103 = mul nuw i64 %conv26, %conv51
  %add104 = add i64 %mul100, %mul103
  %mul105 = shl i64 %add104, 1
  %mul111 = mul nuw i64 %conv40, %conv51
  %mul114 = mul nuw i64 %conv26, %conv63
  %add115 = add i64 %mul114, %mul111
  %mul118 = mul nuw i64 %conv19, %conv84
  %add119 = add i64 %add115, %mul118
  %mul122 = mul nuw i64 %conv13, %conv95
  %add123 = add i64 %add119, %mul122
  %conv125 = zext i32 %1 to i64
  %mul126 = mul nuw i64 %conv, %conv125
  %add127 = add i64 %add123, %mul126
  %mul128 = shl i64 %add127, 1
  %mul131 = mul nuw i64 %conv51, %conv51
  %mul134 = mul nuw i64 %conv40, %conv63
  %add135 = add i64 %mul134, %mul131
  %mul138 = mul nuw i64 %conv19, %conv95
  %add139 = add i64 %add135, %mul138
  %mul142 = mul nuw i64 %conv26, %conv84
  %mul145 = mul nuw i64 %conv13, %conv125
  %add146 = add i64 %mul145, %mul142
  %mul147 = shl i64 %add146, 1
  %add148 = add i64 %add139, %mul147
  %mul149 = shl i64 %add148, 1
  %mul152 = mul nuw i64 %conv51, %conv63
  %mul155 = mul nuw i64 %conv40, %conv84
  %add156 = add i64 %mul155, %mul152
  %mul159 = mul nuw i64 %conv26, %conv95
  %add160 = add i64 %add156, %mul159
  %mul163 = mul nuw i64 %conv19, %conv125
  %add164 = add i64 %add160, %mul163
  %mul168 = mul nuw i64 %conv63, %conv63
  %mul171 = mul nuw i64 %conv40, %conv95
  %mul174 = mul nuw i64 %conv51, %conv84
  %mul177 = mul nuw i64 %conv26, %conv125
  %add178 = add i64 %mul177, %mul174
  %mul179 = shl i64 %add178, 1
  %add180 = add i64 %mul179, %mul171
  %mul181 = shl i64 %add180, 1
  %add182 = add i64 %mul181, %mul168
  %mul185 = mul nuw i64 %conv63, %conv84
  %mul188 = mul nuw i64 %conv51, %conv95
  %add189 = add i64 %mul188, %mul185
  %mul192 = mul nuw i64 %conv40, %conv125
  %add193 = add i64 %add189, %mul192
  %mul197 = mul nuw i64 %conv84, %conv84
  %mul200 = mul nuw i64 %conv63, %conv95
  %add201 = add i64 %mul200, %mul197
  %mul202 = shl i32 %9, 1
  %conv203 = zext i32 %mul202 to i64
  %mul205 = mul nuw i64 %conv203, %conv125
  %add206 = add i64 %add201, %mul205
  %mul210 = mul nuw i64 %conv84, %conv95
  %mul213 = mul nuw i64 %conv63, %conv125
  %add214 = add i64 %mul213, %mul210
  %mul218 = mul nuw i64 %conv95, %conv95
  %mul219 = shl i32 %5, 2
  %conv220 = zext i32 %mul219 to i64
  %mul222 = mul nuw i64 %conv220, %conv125
  %add223 = add i64 %mul222, %mul218
  %mul224 = shl i32 %3, 1
  %conv225 = zext i32 %mul224 to i64
  %mul227 = mul nuw i64 %conv225, %conv125
  %mul228 = shl i32 %1, 1
  %conv229 = zext i32 %mul228 to i64
  %mul231 = mul nuw i64 %conv229, %conv125
  %reass.mul = mul i64 %add148, 36
  %add274 = add i64 %mul149, %mul
  %add275 = add i64 %add274, %reass.mul
  %shr = lshr i64 %add275, 26
  %reass.mul484 = mul i64 %add164, 38
  %add270 = add i64 %mul14, %reass.mul484
  %add277 = add i64 %add270, %shr
  %shr278 = lshr i64 %add277, 25
  %conv279 = trunc i64 %add277 to i32
  %and280 = and i32 %conv279, 33554431
  %reass.mul486 = mul i64 %add182, 18
  %add264 = add i64 %add182, %mul21
  %add265 = add i64 %add264, %reass.mul486
  %add281 = add i64 %add265, %shr278
  %shr282 = lshr i64 %add281, 26
  %conv283 = trunc i64 %add281 to i32
  %and284 = and i32 %conv283, 67108863
  %reass.mul489 = mul i64 %add193, 38
  %add260 = add i64 %mul29, %reass.mul489
  %add285 = add i64 %add260, %shr282
  %shr286 = lshr i64 %add285, 25
  %conv287 = trunc i64 %add285 to i32
  %and288 = and i32 %conv287, 33554431
  %reass.mul492 = mul i64 %add206, 38
  %add252 = add i64 %reass.mul492, %mul32
  %add254 = add i64 %add252, %mul36
  %add255 = add i64 %add254, %mul41
  %add289 = add i64 %add255, %shr286
  %shr290 = lshr i64 %add289, 26
  %conv291 = trunc i64 %add289 to i32
  %and292 = and i32 %conv291, 67108863
  %reass.mul495 = mul i64 %add214, 38
  %add250 = add i64 %mul54, %reass.mul495
  %add293 = add i64 %add250, %shr290
  %shr294 = lshr i64 %add293, 25
  %conv295 = trunc i64 %add293 to i32
  %and296 = and i32 %conv295, 33554431
  %add61 = add i64 %mul57, %add223
  %add65 = add i64 %add61, %mul60
  %add70 = add i64 %add65, %mul64
  %reass.add496 = add i64 %add70, %mul69
  %reass.mul497 = shl i64 %reass.add496, 1
  %add244 = mul i64 %add223, 17
  %add245 = add i64 %add244, %reass.mul497
  %add297 = add i64 %add245, %shr294
  %shr298 = lshr i64 %add297, 26
  %conv299 = trunc i64 %add297 to i32
  %and300 = and i32 %conv299, 67108863
  %add78 = add i64 %mul74, %mul227
  %add82 = add i64 %add78, %mul77
  %add86 = add i64 %add82, %mul81
  %reass.add498 = add i64 %add86, %mul85
  %reass.mul499 = shl i64 %reass.add498, 1
  %add239 = mul i64 %mul227, 17
  %add240 = add i64 %add239, %reass.mul499
  %add301 = add i64 %add240, %shr298
  %shr302 = lshr i64 %add301, 25
  %conv303 = trunc i64 %add301 to i32
  %and304 = and i32 %conv303, 33554431
  %add97 = add i64 %mul93, %mul231
  %add106 = add i64 %add97, %mul96
  %reass.add500 = add i64 %add106, %mul105
  %reass.mul501 = shl i64 %reass.add500, 1
  %add232 = mul i64 %mul231, 17
  %add234 = add i64 %add232, %mul90
  %add235 = add i64 %add234, %reass.mul501
  %add305 = add i64 %add235, %shr302
  %shr306 = lshr i64 %add305, 26
  %conv307 = trunc i64 %add305 to i32
  %and308 = and i32 %conv307, 67108863
  %add309 = add i64 %shr306, %mul128
  %shr310 = lshr i64 %add309, 25
  %conv311 = trunc i64 %add309 to i32
  %and312 = and i32 %conv311, 33554431
  %conv313 = and i64 %add275, 67108863
  %mul314 = mul nuw nsw i64 %shr310, 19
  %add315 = add nuw nsw i64 %mul314, %conv313
  %shr316 = lshr i64 %add315, 26
  %conv317 = trunc i64 %shr316 to i32
  %conv318 = trunc i64 %add315 to i32
  %and319 = and i32 %conv318, 67108863
  %add320 = add nuw nsw i32 %and280, %conv317
  %shr321 = lshr i32 %add320, 25
  %and322 = and i32 %add320, 33554431
  %20 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and319, ptr %out, align 4
  %arrayidx324 = getelementptr i32, ptr %out, i32 1
  %21 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and322, ptr %arrayidx324, align 4
  %add325 = add nuw nsw i32 %shr321, %and284
  %arrayidx326 = getelementptr i32, ptr %out, i32 2
  %22 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add325, ptr %arrayidx326, align 4
  %arrayidx327 = getelementptr i32, ptr %out, i32 3
  %23 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and288, ptr %arrayidx327, align 4
  %arrayidx328 = getelementptr i32, ptr %out, i32 4
  %24 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and292, ptr %arrayidx328, align 4
  %arrayidx329 = getelementptr i32, ptr %out, i32 5
  %25 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and296, ptr %arrayidx329, align 4
  %arrayidx330 = getelementptr i32, ptr %out, i32 6
  %26 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and300, ptr %arrayidx330, align 4
  %arrayidx331 = getelementptr i32, ptr %out, i32 7
  %27 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and304, ptr %arrayidx331, align 4
  %arrayidx332 = getelementptr i32, ptr %out, i32 8
  %28 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and308, ptr %arrayidx332, align 4
  %arrayidx333 = getelementptr i32, ptr %out, i32 9
  %29 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and312, ptr %arrayidx333, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #2 = { argmemonly nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2149258684}
