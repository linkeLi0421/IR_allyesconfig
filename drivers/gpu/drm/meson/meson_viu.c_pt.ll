; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_viu.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_viu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.43, %struct.anon.44, %struct.anon.45, %struct.anon.46 }
%struct.anon.43 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.44 = type { i32, i8, i8, i8 }
%struct.anon.45 = type { i32, ptr, i32 }
%struct.anon.46 = type { ptr, i64, i32 }

@RGB709_to_YUV709l_coeff = internal global { [24 x i32], [32 x i8] } { [24 x i32] [i32 0, i32 0, i32 0, i32 186, i32 627, i32 63, i32 -102, i32 -344, i32 448, i32 448, i32 -406, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 512, i32 512, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@eotf_33_linear_mapping = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 0, i32 512, i32 1024, i32 1536, i32 2048, i32 2560, i32 3072, i32 3584, i32 4096, i32 4608, i32 5120, i32 5632, i32 6144, i32 6656, i32 7168, i32 7680, i32 8192, i32 8704, i32 9216, i32 9728, i32 10240, i32 10752, i32 11264, i32 11776, i32 12288, i32 12800, i32 13312, i32 13824, i32 14336, i32 14848, i32 15360, i32 15872, i32 16384], [60 x i8] zeroinitializer }, align 32
@eotf_bypass_coeff = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 2048, i32 0, i32 0, i32 0, i32 2048, i32 0, i32 0, i32 0, i32 2048, i32 1], [56 x i8] zeroinitializer }, align 32
@oetf_41_linear_mapping = internal global { [41 x i32], [60 x i8] } { [41 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 64, i32 96, i32 128, i32 160, i32 196, i32 224, i32 256, i32 288, i32 320, i32 352, i32 384, i32 416, i32 448, i32 480, i32 512, i32 544, i32 576, i32 608, i32 640, i32 672, i32 704, i32 736, i32 768, i32 800, i32 832, i32 864, i32 896, i32 928, i32 960, i32 992, i32 1023, i32 1023, i32 1023, i32 1023, i32 1023], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"RGB709_to_YUV709l_coeff\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 62, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"eotf_33_linear_mapping\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 260, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"eotf_bypass_coeff\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 74, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"oetf_41_linear_mapping\00", align 1
@___asan_gen_.11 = private constant [37 x i8] c"../drivers/gpu/drm/meson/meson_viu.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 273, i32 21 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @RGB709_to_YUV709l_coeff, ptr @eotf_33_linear_mapping, ptr @eotf_bypass_coeff, ptr @oetf_41_linear_mapping], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RGB709_to_YUV709l_coeff to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eotf_33_linear_mapping to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eotf_bypass_coeff to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oetf_41_linear_mapping to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_viu_osd1_reset(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26796
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 26804
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #3, !srcloc !17
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 26628
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #3, !srcloc !17
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr12 = getelementptr i8, ptr %11, i32 26628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #3, !srcloc !18
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 8
  %add.ptr15 = getelementptr i8, ptr %13, i32 26628
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #3, !srcloc !17
  %15 = and i32 %14, -16777217
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 8
  %add.ptr21 = getelementptr i8, ptr %17, i32 26628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %15) #3, !srcloc !18
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 8
  %add.ptr23 = getelementptr i8, ptr %19, i32 26796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %2) #3, !srcloc !18
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 8
  %add.ptr25 = getelementptr i8, ptr %21, i32 26804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %5) #3, !srcloc !18
  tail call fastcc void @meson_viu_set_osd_lut(ptr noundef %priv, i32 noundef 0, ptr noundef nonnull @eotf_33_linear_mapping, ptr noundef nonnull @eotf_33_linear_mapping, ptr noundef nonnull @eotf_33_linear_mapping) #3
  tail call fastcc void @meson_viu_set_osd_matrix(ptr noundef %priv, i32 noundef 0, ptr noundef nonnull @eotf_bypass_coeff, i1 noundef zeroext false) #3
  tail call fastcc void @meson_viu_set_osd_lut(ptr noundef %priv, i32 noundef 1, ptr noundef nonnull @oetf_41_linear_mapping, ptr noundef nonnull @oetf_41_linear_mapping, ptr noundef nonnull @oetf_41_linear_mapping) #3
  tail call fastcc void @meson_viu_set_osd_matrix(ptr noundef %priv, i32 noundef 1, ptr noundef nonnull @RGB709_to_YUV709l_coeff, i1 noundef zeroext true) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_viu_g12a_enable_osd1_afbc(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26812
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  %3 = or i32 %2, 128
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr66 = getelementptr i8, ptr %5, i32 26812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %3) #3, !srcloc !18
  %format = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 18, i32 2
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 875709016, i32 %7)
  %switch.selectcmp.case1 = icmp eq i32 %7, 875709016
  call void @__sanitizer_cov_trace_const_cmp4(i32 875708993, i32 %7)
  %switch.selectcmp.case2 = icmp eq i32 %7, 875708993
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %8 = select i1 %switch.selectcmp, i32 4660, i32 12820
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 8
  %add.ptr136 = getelementptr i8, ptr %10, i32 26812
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #3, !srcloc !17
  %12 = and i32 %11, 65535
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or141 = or i32 %13, %8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or141)
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 8
  %add.ptr143 = getelementptr i8, ptr %16, i32 26812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %14) #3, !srcloc !18
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 8
  %add.ptr146 = getelementptr i8, ptr %18, i32 26680
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #3, !srcloc !17
  %20 = or i32 %19, 268435456
  %21 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base, align 8
  %add.ptr152 = getelementptr i8, ptr %22, i32 26680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %20) #3, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_viu_g12a_disable_osd1_afbc(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26680
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  %3 = and i32 %2, -268435457
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 26680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #3, !srcloc !18
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 26812
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !17
  %9 = and i32 %8, -129
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr11 = getelementptr i8, ptr %11, i32 26812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #3, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_viu_gxm_enable_osd1_afbc(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26652
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  %3 = and i32 %2, -16711681
  %4 = or i32 %3, 9437184
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 8
  %add.ptr12 = getelementptr i8, ptr %6, i32 26652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %4) #3, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_viu_gxm_disable_osd1_afbc(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26652
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  %3 = and i32 %2, -16711681
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr12 = getelementptr i8, ptr %5, i32 26652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #3, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_viu_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26688
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  %3 = and i32 %2, -16785409
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 26688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #3, !srcloc !18
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 26816
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !17
  %9 = and i32 %8, -16785409
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr11 = getelementptr i8, ptr %11, i32 26816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %9) #3, !srcloc !18
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %compat.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %entry.if.end27_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge165
    i32 3, label %if.then17
  ]

entry.if.then_crit_edge165:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge165
  tail call fastcc void @meson_viu_set_osd_lut(ptr noundef %priv, i32 noundef 0, ptr noundef nonnull @eotf_33_linear_mapping, ptr noundef nonnull @eotf_33_linear_mapping, ptr noundef nonnull @eotf_33_linear_mapping) #3
  tail call fastcc void @meson_viu_set_osd_matrix(ptr noundef %priv, i32 noundef 0, ptr noundef nonnull @eotf_bypass_coeff, i1 noundef zeroext false) #3
  tail call fastcc void @meson_viu_set_osd_lut(ptr noundef %priv, i32 noundef 1, ptr noundef nonnull @oetf_41_linear_mapping, ptr noundef nonnull @oetf_41_linear_mapping, ptr noundef nonnull @oetf_41_linear_mapping) #3
  tail call fastcc void @meson_viu_set_osd_matrix(ptr noundef %priv, i32 noundef 1, ptr noundef nonnull @RGB709_to_YUV709l_coeff, i1 noundef zeroext true) #3
  br label %if.end27

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %15 = load i32, ptr @RGB709_to_YUV709l_coeff, align 4
  %and.i = shl i32 %15, 16
  %shl.i = and i32 %and.i, 268369920
  %16 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 1), align 4
  %and2.i = and i32 %16, 4095
  %or.i = or i32 %shl.i, %and2.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 62892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %20 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 2), align 4
  %and6.i = and i32 %20, 4095
  %21 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #3
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 8
  %add.ptr8.i = getelementptr i8, ptr %23, i32 62896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %21) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %24 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 3), align 4
  %and12.i = shl i32 %24, 16
  %shl13.i = and i32 %and12.i, 536805376
  %25 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 4), align 4
  %and15.i = and i32 %25, 8191
  %or16.i = or i32 %shl13.i, %and15.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #3
  %27 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base, align 8
  %add.ptr18.i = getelementptr i8, ptr %28, i32 62848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %26) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %29 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 5), align 4
  %and22.i = shl i32 %29, 16
  %shl23.i = and i32 %and22.i, 536805376
  %30 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 6), align 4
  %and25.i = and i32 %30, 8191
  %or26.i = or i32 %shl23.i, %and25.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #3
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 8
  %add.ptr28.i = getelementptr i8, ptr %33, i32 62852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %31) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %34 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 7), align 4
  %and32.i = shl i32 %34, 16
  %shl33.i = and i32 %and32.i, 536805376
  %35 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 8), align 4
  %and35.i = and i32 %35, 8191
  %or36.i = or i32 %shl33.i, %and35.i
  %36 = tail call i32 @llvm.bswap.i32(i32 %or36.i) #3
  %37 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base, align 8
  %add.ptr38.i = getelementptr i8, ptr %38, i32 62856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %36) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %39 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 9), align 4
  %and42.i = shl i32 %39, 16
  %shl43.i = and i32 %and42.i, 536805376
  %40 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 10), align 4
  %and45.i = and i32 %40, 8191
  %or46.i = or i32 %shl43.i, %and45.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #3
  %42 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base, align 8
  %add.ptr48.i = getelementptr i8, ptr %43, i32 62860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %41) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %44 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 11), align 4
  %and52.i = shl i32 %44, 16
  %shl53.i = and i32 %and52.i, 536805376
  %45 = tail call i32 @llvm.bswap.i32(i32 %shl53.i) #3
  %46 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base, align 8
  %add.ptr55.i = getelementptr i8, ptr %47, i32 62864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %45) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %48 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 18), align 4
  %and59.i = shl i32 %48, 16
  %shl60.i = and i32 %and59.i, 268369920
  %49 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 19), align 4
  %and62.i = and i32 %49, 4095
  %or63.i = or i32 %shl60.i, %and62.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %or63.i) #3
  %51 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base, align 8
  %add.ptr65.i = getelementptr i8, ptr %52, i32 62884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %50) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %53 = load i32, ptr getelementptr inbounds ([24 x i32], ptr @RGB709_to_YUV709l_coeff, i32 0, i32 20), align 4
  %and69.i = and i32 %53, 4095
  %54 = tail call i32 @llvm.bswap.i32(i32 %and69.i) #3
  %55 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base, align 8
  %add.ptr71.i = getelementptr i8, ptr %56, i32 62888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %54) #3, !srcloc !18
  %57 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base, align 8
  %add.ptr73.i = getelementptr i8, ptr %58, i32 62900
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i) #3, !srcloc !17
  %60 = or i32 %59, 16777216
  %61 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base, align 8
  %add.ptr78.i = getelementptr i8, ptr %62, i32 62900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %60) #3, !srcloc !18
  %63 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_base, align 8
  %add.ptr20 = getelementptr i8, ptr %64, i32 57984
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #3, !srcloc !17
  %66 = and i32 %65, -2097409
  %67 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_base, align 8
  %add.ptr26 = getelementptr i8, ptr %68, i32 57984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %66) #3, !srcloc !18
  br label %if.end27

if.end27:                                         ; preds = %if.then17, %if.then, %entry.if.end27_crit_edge
  %69 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp.i153.not = icmp eq i32 %70, 3
  %. = select i1 %cmp.i153.not, i32 42076129, i32 42078177
  %71 = tail call i32 @llvm.bswap.i32(i32 %.)
  %72 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %io_base, align 8
  %add.ptr36 = getelementptr i8, ptr %73, i32 26796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %71) #3, !srcloc !18
  %74 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base, align 8
  %add.ptr38 = getelementptr i8, ptr %75, i32 26924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %71) #3, !srcloc !18
  %76 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %io_base, align 8
  %add.ptr41 = getelementptr i8, ptr %77, i32 26804
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #3, !srcloc !17
  %79 = or i32 %78, -1069613056
  %80 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base, align 8
  %add.ptr47 = getelementptr i8, ptr %81, i32 26804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %79) #3, !srcloc !18
  %82 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_base, align 8
  %add.ptr50 = getelementptr i8, ptr %83, i32 26932
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #3, !srcloc !17
  %85 = or i32 %84, -1069613056
  %86 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_base, align 8
  %add.ptr56 = getelementptr i8, ptr %87, i32 26932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %85) #3, !srcloc !18
  %88 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %io_base, align 8
  %add.ptr59 = getelementptr i8, ptr %89, i32 26648
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #3, !srcloc !17
  %91 = and i32 %90, -5889
  %92 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io_base, align 8
  %add.ptr65 = getelementptr i8, ptr %93, i32 26648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %91) #3, !srcloc !18
  %94 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %io_base, align 8
  %add.ptr67 = getelementptr i8, ptr %95, i32 27520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #3, !srcloc !18
  %96 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %io_base, align 8
  %add.ptr69 = getelementptr i8, ptr %97, i32 27020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -1073676544) #3, !srcloc !18
  %98 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io_base, align 8
  %add.ptr71 = getelementptr i8, ptr %99, i32 27148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 -1073676544) #3, !srcloc !18
  %100 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp.i156.not = icmp eq i32 %101, 3
  br i1 %cmp.i156.not, label %if.then74, label %if.end27.if.end98_crit_edge

if.end27.if.end98_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end98

if.then74:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %102 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %io_base, align 8
  %add.ptr76 = getelementptr i8, ptr %103, i32 59072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 16781455) #3, !srcloc !18
  %104 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io_base, align 8
  %add.ptr78 = getelementptr i8, ptr %105, i32 30708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 4096) #3, !srcloc !18
  %106 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %io_base, align 8
  %add.ptr80 = getelementptr i8, ptr %107, i32 30712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 4096) #3, !srcloc !18
  %108 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %io_base, align 8
  %add.ptr82 = getelementptr i8, ptr %109, i32 30700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #3, !srcloc !18
  %110 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %io_base, align 8
  %add.ptr84 = getelementptr i8, ptr %111, i32 30704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 0) #3, !srcloc !18
  %112 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_base, align 8
  %add.ptr86 = getelementptr i8, ptr %113, i32 59108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 0) #3, !srcloc !18
  %114 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %io_base, align 8
  %add.ptr88 = getelementptr i8, ptr %115, i32 59112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 0) #3, !srcloc !18
  %116 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %io_base, align 8
  %add.ptr91 = getelementptr i8, ptr %117, i32 26672
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #3, !srcloc !17
  %119 = or i32 %118, 201326592
  %120 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %io_base, align 8
  %add.ptr97 = getelementptr i8, ptr %121, i32 26672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %119) #3, !srcloc !18
  %122 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %io_base, align 8
  %add.ptr.i159 = getelementptr i8, ptr %123, i32 26680
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #3, !srcloc !17
  %125 = and i32 %124, -268435457
  %126 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %io_base, align 8
  %add.ptr2.i = getelementptr i8, ptr %127, i32 26680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %125) #3, !srcloc !18
  %128 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %io_base, align 8
  %add.ptr5.i = getelementptr i8, ptr %129, i32 26812
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #3, !srcloc !17
  %131 = and i32 %130, -129
  %132 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %io_base, align 8
  %add.ptr11.i = getelementptr i8, ptr %133, i32 26812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %131) #3, !srcloc !18
  %134 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr = load i32, ptr %compat.i, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then74, %if.end27.if.end98_crit_edge
  %135 = phi i32 [ %.pr, %if.then74 ], [ %101, %if.end27.if.end98_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp.i161.not = icmp eq i32 %135, 2
  br i1 %cmp.i161.not, label %if.then101, label %if.end98.if.end102_crit_edge

if.end98.if.end102_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end102

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #5
  %136 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %io_base, align 8
  %add.ptr.i164 = getelementptr i8, ptr %137, i32 26652
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #3, !srcloc !17
  %139 = and i32 %138, -16711681
  %140 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io_base, align 8
  %add.ptr12.i = getelementptr i8, ptr %141, i32 26652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %139) #3, !srcloc !18
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end98.if.end102_crit_edge
  %viu = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15
  %142 = ptrtoint ptr %viu to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %viu, align 8
  %osd1_commit = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 2
  %143 = ptrtoint ptr %osd1_commit to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %osd1_commit, align 2
  %osd1_interlace = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 1
  %144 = ptrtoint ptr %osd1_interlace to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %osd1_interlace, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_viu_set_osd_lut(ptr nocapture noundef readonly %priv, i32 noundef %lut_sel, ptr nocapture noundef readonly %r_map, ptr nocapture noundef readonly %g_map, ptr nocapture noundef readonly %b_map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lut_sel)
  %cmp = icmp eq i32 %lut_sel, 0
  %ctrl_port.0 = select i1 %cmp, i32 27472, i32 27504
  %data_port.0 = select i1 %cmp, i32 27500, i32 27512
  %addr_port.0 = select i1 %cmp, i32 27496, i32 27508
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lut_sel)
  %cmp5 = icmp eq i32 %lut_sel, 1
  br i1 %cmp5, label %do.body, label %if.else94

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %addr_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !18
  br label %do.body8

do.body8:                                         ; preds = %do.body8.do.body8_crit_edge, %do.body
  %i.04 = phi i32 [ 0, %do.body ], [ %inc, %do.body8.do.body8_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %mul = shl nuw i32 %i.04, 1
  %arrayidx = getelementptr i32, ptr %r_map, i32 %mul
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = or i32 %mul, 1
  %arrayidx12 = getelementptr i32, ptr %r_map, i32 %add
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx12, align 4
  %shl13 = shl i32 %5, 16
  %or = or i32 %shl13, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base, align 8
  %add.ptr16 = getelementptr i8, ptr %8, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %6) #3, !srcloc !18
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond9.not = icmp eq i32 %inc, 20
  br i1 %exitcond9.not, label %do.body17, label %do.body8.do.body8_crit_edge

do.body8.do.body8_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body8

do.body17:                                        ; preds = %do.body8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %arrayidx20 = getelementptr i32, ptr %r_map, i32 40
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx20, align 4
  %11 = ptrtoint ptr %g_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %g_map, align 4
  %shl22 = shl i32 %12, 16
  %or23 = or i32 %shl22, %10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 8
  %add.ptr26 = getelementptr i8, ptr %15, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %13) #3, !srcloc !18
  br label %do.body30

do.body30:                                        ; preds = %do.body30.do.body30_crit_edge, %do.body17
  %i.15 = phi i32 [ 0, %do.body17 ], [ %inc45, %do.body30.do.body30_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %mul33 = shl nuw i32 %i.15, 1
  %add34 = or i32 %mul33, 1
  %arrayidx35 = getelementptr i32, ptr %g_map, i32 %add34
  %16 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx35, align 4
  %add37 = add nuw nsw i32 %mul33, 2
  %arrayidx38 = getelementptr i32, ptr %g_map, i32 %add37
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx38, align 4
  %shl39 = shl i32 %19, 16
  %or40 = or i32 %shl39, %17
  %20 = tail call i32 @llvm.bswap.i32(i32 %or40)
  %21 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_base, align 8
  %add.ptr43 = getelementptr i8, ptr %22, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %20) #3, !srcloc !18
  %inc45 = add nuw nsw i32 %i.15, 1
  %exitcond10.not = icmp eq i32 %inc45, 20
  br i1 %exitcond10.not, label %do.body30.do.body50_crit_edge, label %do.body30.do.body30_crit_edge

do.body30.do.body30_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body30

do.body30.do.body50_crit_edge:                    ; preds = %do.body30
  br label %do.body50

do.body50:                                        ; preds = %do.body50.do.body50_crit_edge, %do.body30.do.body50_crit_edge
  %i.26 = phi i32 [ %inc64, %do.body50.do.body50_crit_edge ], [ 0, %do.body30.do.body50_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %mul53 = shl nuw i32 %i.26, 1
  %arrayidx54 = getelementptr i32, ptr %b_map, i32 %mul53
  %23 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx54, align 4
  %add56 = or i32 %mul53, 1
  %arrayidx57 = getelementptr i32, ptr %b_map, i32 %add56
  %25 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx57, align 4
  %shl58 = shl i32 %26, 16
  %or59 = or i32 %shl58, %24
  %27 = tail call i32 @llvm.bswap.i32(i32 %or59)
  %28 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base, align 8
  %add.ptr62 = getelementptr i8, ptr %29, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %27) #3, !srcloc !18
  %inc64 = add nuw nsw i32 %i.26, 1
  %exitcond11.not = icmp eq i32 %inc64, 20
  br i1 %exitcond11.not, label %do.body66, label %do.body50.do.body50_crit_edge

do.body50.do.body50_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body50

do.body66:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %arrayidx69 = getelementptr i32, ptr %b_map, i32 40
  %30 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx69, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base, align 8
  %add.ptr72 = getelementptr i8, ptr %34, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %32) #3, !srcloc !18
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base, align 8
  %add.ptr85 = getelementptr i8, ptr %36, i32 %ctrl_port.0
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #3, !srcloc !17
  %38 = and i32 %37, -225
  %39 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_base, align 8
  %add.ptr92 = getelementptr i8, ptr %40, i32 %ctrl_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %38) #3, !srcloc !18
  br label %cleanup

if.else94:                                        ; preds = %entry
  br i1 %cmp, label %do.body97, label %if.else94.cleanup_crit_edge

if.else94.cleanup_crit_edge:                      ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body97:                                        ; preds = %if.else94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %io_base100 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %41 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_base100, align 8
  %add.ptr102 = getelementptr i8, ptr %42, i32 %addr_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 0) #3, !srcloc !18
  br label %do.body106

do.body106:                                       ; preds = %do.body106.do.body106_crit_edge, %do.body97
  %i.31 = phi i32 [ 0, %do.body97 ], [ %inc120, %do.body106.do.body106_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %mul109 = shl nuw i32 %i.31, 1
  %arrayidx110 = getelementptr i32, ptr %r_map, i32 %mul109
  %43 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx110, align 4
  %add112 = or i32 %mul109, 1
  %arrayidx113 = getelementptr i32, ptr %r_map, i32 %add112
  %45 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx113, align 4
  %shl114 = shl i32 %46, 16
  %or115 = or i32 %shl114, %44
  %47 = tail call i32 @llvm.bswap.i32(i32 %or115)
  %48 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base100, align 8
  %add.ptr118 = getelementptr i8, ptr %49, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %47) #3, !srcloc !18
  %inc120 = add nuw nsw i32 %i.31, 1
  %exitcond.not = icmp eq i32 %inc120, 16
  br i1 %exitcond.not, label %do.body122, label %do.body106.do.body106_crit_edge

do.body106.do.body106_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body106

do.body122:                                       ; preds = %do.body106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %arrayidx125 = getelementptr i32, ptr %r_map, i32 32
  %50 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx125, align 4
  %52 = ptrtoint ptr %g_map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %g_map, align 4
  %shl127 = shl i32 %53, 16
  %or128 = or i32 %shl127, %51
  %54 = tail call i32 @llvm.bswap.i32(i32 %or128)
  %55 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base100, align 8
  %add.ptr131 = getelementptr i8, ptr %56, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %54) #3, !srcloc !18
  br label %do.body135

do.body135:                                       ; preds = %do.body135.do.body135_crit_edge, %do.body122
  %i.42 = phi i32 [ 0, %do.body122 ], [ %inc150, %do.body135.do.body135_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %mul138 = shl nuw i32 %i.42, 1
  %add139 = or i32 %mul138, 1
  %arrayidx140 = getelementptr i32, ptr %g_map, i32 %add139
  %57 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx140, align 4
  %add142 = add nuw nsw i32 %mul138, 2
  %arrayidx143 = getelementptr i32, ptr %g_map, i32 %add142
  %59 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx143, align 4
  %shl144 = shl i32 %60, 16
  %or145 = or i32 %shl144, %58
  %61 = tail call i32 @llvm.bswap.i32(i32 %or145)
  %62 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io_base100, align 8
  %add.ptr148 = getelementptr i8, ptr %63, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %61) #3, !srcloc !18
  %inc150 = add nuw nsw i32 %i.42, 1
  %exitcond7.not = icmp eq i32 %inc150, 16
  br i1 %exitcond7.not, label %do.body135.do.body155_crit_edge, label %do.body135.do.body135_crit_edge

do.body135.do.body135_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body135

do.body135.do.body155_crit_edge:                  ; preds = %do.body135
  br label %do.body155

do.body155:                                       ; preds = %do.body155.do.body155_crit_edge, %do.body135.do.body155_crit_edge
  %i.53 = phi i32 [ %inc169, %do.body155.do.body155_crit_edge ], [ 0, %do.body135.do.body155_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %mul158 = shl nuw i32 %i.53, 1
  %arrayidx159 = getelementptr i32, ptr %b_map, i32 %mul158
  %64 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx159, align 4
  %add161 = or i32 %mul158, 1
  %arrayidx162 = getelementptr i32, ptr %b_map, i32 %add161
  %66 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx162, align 4
  %shl163 = shl i32 %67, 16
  %or164 = or i32 %shl163, %65
  %68 = tail call i32 @llvm.bswap.i32(i32 %or164)
  %69 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io_base100, align 8
  %add.ptr167 = getelementptr i8, ptr %70, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 %68) #3, !srcloc !18
  %inc169 = add nuw nsw i32 %i.53, 1
  %exitcond8.not = icmp eq i32 %inc169, 16
  br i1 %exitcond8.not, label %do.body171, label %do.body155.do.body155_crit_edge

do.body155.do.body155_crit_edge:                  ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body155

do.body171:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %arrayidx174 = getelementptr i32, ptr %b_map, i32 32
  %71 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx174, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io_base100, align 8
  %add.ptr177 = getelementptr i8, ptr %75, i32 %data_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %73) #3, !srcloc !18
  %76 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %io_base100, align 8
  %add.ptr195 = getelementptr i8, ptr %77, i32 %ctrl_port.0
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #3, !srcloc !17
  %79 = and i32 %78, -57
  %80 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io_base100, align 8
  %add.ptr202 = getelementptr i8, ptr %81, i32 %ctrl_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %79) #3, !srcloc !18
  %82 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_base100, align 8
  %add.ptr207 = getelementptr i8, ptr %83, i32 %ctrl_port.0
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr207) #3, !srcloc !17
  %85 = or i32 %84, 128
  %86 = ptrtoint ptr %io_base100 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_base100, align 8
  %add.ptr214 = getelementptr i8, ptr %87, i32 %ctrl_port.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 %85) #3, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %do.body171, %if.else94.cleanup_crit_edge, %do.body66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_viu_set_osd_matrix(ptr noundef readonly %priv, i32 noundef %m_select, ptr noundef readonly %m, i1 noundef zeroext %csc_on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %m_select)
  %cmp = icmp eq i32 %m_select, 1
  br i1 %cmp, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %io_base164 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m, align 4
  %and158 = shl i32 %1, 16
  %shl159 = and i32 %and158, 536805376
  %arrayidx161 = getelementptr i32, ptr %m, i32 1
  %2 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx161, align 4
  %and162 = and i32 %3, 8191
  %or163 = or i32 %shl159, %and162
  %4 = tail call i32 @llvm.bswap.i32(i32 %or163)
  %5 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base164, align 8
  %add.ptr168 = getelementptr i8, ptr %6, i32 27476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 %4) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %arrayidx157.1 = getelementptr i32, ptr %m, i32 2
  %7 = ptrtoint ptr %arrayidx157.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx157.1, align 4
  %and158.1 = shl i32 %8, 16
  %shl159.1 = and i32 %and158.1, 536805376
  %arrayidx161.1 = getelementptr i32, ptr %m, i32 3
  %9 = ptrtoint ptr %arrayidx161.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx161.1, align 4
  %and162.1 = and i32 %10, 8191
  %or163.1 = or i32 %shl159.1, %and162.1
  %11 = tail call i32 @llvm.bswap.i32(i32 %or163.1)
  %12 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base164, align 8
  %add.ptr168.1 = getelementptr i8, ptr %13, i32 27480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.1, i32 %11) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %arrayidx157.2 = getelementptr i32, ptr %m, i32 4
  %14 = ptrtoint ptr %arrayidx157.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx157.2, align 4
  %and158.2 = shl i32 %15, 16
  %shl159.2 = and i32 %and158.2, 536805376
  %arrayidx161.2 = getelementptr i32, ptr %m, i32 5
  %16 = ptrtoint ptr %arrayidx161.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx161.2, align 4
  %and162.2 = and i32 %17, 8191
  %or163.2 = or i32 %shl159.2, %and162.2
  %18 = tail call i32 @llvm.bswap.i32(i32 %or163.2)
  %19 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_base164, align 8
  %add.ptr168.2 = getelementptr i8, ptr %20, i32 27484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.2, i32 %18) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %arrayidx157.3 = getelementptr i32, ptr %m, i32 6
  %21 = ptrtoint ptr %arrayidx157.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx157.3, align 4
  %and158.3 = shl i32 %22, 16
  %shl159.3 = and i32 %and158.3, 536805376
  %arrayidx161.3 = getelementptr i32, ptr %m, i32 7
  %23 = ptrtoint ptr %arrayidx161.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx161.3, align 4
  %and162.3 = and i32 %24, 8191
  %or163.3 = or i32 %shl159.3, %and162.3
  %25 = tail call i32 @llvm.bswap.i32(i32 %or163.3)
  %26 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base164, align 8
  %add.ptr168.3 = getelementptr i8, ptr %27, i32 27488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.3, i32 %25) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %arrayidx157.4 = getelementptr i32, ptr %m, i32 8
  %28 = ptrtoint ptr %arrayidx157.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx157.4, align 4
  %and158.4 = shl i32 %29, 16
  %shl159.4 = and i32 %and158.4, 536805376
  %arrayidx161.4 = getelementptr i32, ptr %m, i32 9
  %30 = ptrtoint ptr %arrayidx161.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx161.4, align 4
  %and162.4 = and i32 %31, 8191
  %or163.4 = or i32 %shl159.4, %and162.4
  %32 = tail call i32 @llvm.bswap.i32(i32 %or163.4)
  %33 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_base164, align 8
  %add.ptr168.4 = getelementptr i8, ptr %34, i32 27492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.4, i32 %32) #3, !srcloc !18
  %35 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base164, align 8
  %add.ptr171 = getelementptr i8, ptr %36, i32 27472
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #3, !srcloc !17
  %38 = and i32 %37, -65
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %cond176 = select i1 %csc_on, i32 1073741824, i32 0
  %or178 = or i32 %39, %cond176
  %40 = tail call i32 @llvm.bswap.i32(i32 %or178)
  %41 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_base164, align 8
  %add.ptr180 = getelementptr i8, ptr %42, i32 27472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 %40) #3, !srcloc !18
  %43 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base164, align 8
  %add.ptr183 = getelementptr i8, ptr %44, i32 27472
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr183) #3, !srcloc !17
  %46 = and i32 %45, -129
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %cond188 = select i1 %csc_on, i32 -2147483648, i32 0
  %or190 = or i32 %47, %cond188
  %48 = tail call i32 @llvm.bswap.i32(i32 %or190)
  %49 = ptrtoint ptr %io_base164 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base164, align 8
  %add.ptr192 = getelementptr i8, ptr %50, i32 27472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 %48) #3, !srcloc !18
  br label %if.end194

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %51 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %m, align 4
  %and = shl i32 %52, 16
  %shl = and i32 %and, 268369920
  %arrayidx1 = getelementptr i32, ptr %m, i32 1
  %53 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx1, align 4
  %and2 = and i32 %54, 4095
  %or = or i32 %shl, %and2
  %55 = tail call i32 @llvm.bswap.i32(i32 %or)
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %56 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %57, i32 27232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %55) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %arrayidx5 = getelementptr i32, ptr %m, i32 2
  %58 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx5, align 4
  %and6 = and i32 %59, 4095
  %60 = tail call i32 @llvm.bswap.i32(i32 %and6)
  %61 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base, align 8
  %add.ptr8 = getelementptr i8, ptr %62, i32 27236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %60) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %arrayidx11 = getelementptr i32, ptr %m, i32 3
  %63 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx11, align 4
  %and12 = shl i32 %64, 16
  %shl13 = and i32 %and12, 536805376
  %arrayidx14 = getelementptr i32, ptr %m, i32 4
  %65 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %66, 8191
  %or16 = or i32 %shl13, %and15
  %67 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %68 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_base, align 8
  %add.ptr18 = getelementptr i8, ptr %69, i32 27204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %67) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %arrayidx21 = getelementptr i32, ptr %m, i32 5
  %70 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx21, align 4
  %and22 = shl i32 %71, 16
  %shl23 = and i32 %and22, 536805376
  %arrayidx24 = getelementptr i32, ptr %m, i32 6
  %72 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx24, align 4
  %and25 = and i32 %73, 8191
  %or26 = or i32 %shl23, %and25
  %74 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %75 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base, align 8
  %add.ptr28 = getelementptr i8, ptr %76, i32 27208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %74) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %arrayidx31 = getelementptr i32, ptr %m, i32 7
  %77 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx31, align 4
  %and32 = shl i32 %78, 16
  %shl33 = and i32 %and32, 536805376
  %arrayidx34 = getelementptr i32, ptr %m, i32 8
  %79 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx34, align 4
  %and35 = and i32 %80, 8191
  %or36 = or i32 %shl33, %and35
  %81 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %82 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_base, align 8
  %add.ptr38 = getelementptr i8, ptr %83, i32 27212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %81) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %arrayidx41 = getelementptr i32, ptr %m, i32 9
  %84 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx41, align 4
  %and42 = shl i32 %85, 16
  %shl43 = and i32 %and42, 536805376
  %arrayidx44 = getelementptr i32, ptr %m, i32 10
  %86 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx44, align 4
  %and45 = and i32 %87, 8191
  %or46 = or i32 %shl43, %and45
  %88 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %89 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %io_base, align 8
  %add.ptr48 = getelementptr i8, ptr %90, i32 27216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %88) #3, !srcloc !18
  %arrayidx49 = getelementptr i32, ptr %m, i32 21
  %91 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not = icmp eq i32 %92, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %arrayidx89 = getelementptr i32, ptr %m, i32 11
  %93 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx89, align 4
  %and90 = shl i32 %94, 16
  %shl91 = and i32 %and90, 536805376
  br i1 %tobool.not, label %do.body87, label %do.body51

do.body51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx56 = getelementptr i32, ptr %m, i32 12
  %95 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx56, align 4
  %and57 = and i32 %96, 8191
  %or58 = or i32 %shl91, %and57
  %97 = tail call i32 @llvm.bswap.i32(i32 %or58)
  %98 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %io_base, align 8
  %add.ptr60 = getelementptr i8, ptr %99, i32 27252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %97) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %arrayidx63 = getelementptr i32, ptr %m, i32 13
  %100 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx63, align 4
  %and64 = shl i32 %101, 16
  %shl65 = and i32 %and64, 536805376
  %arrayidx66 = getelementptr i32, ptr %m, i32 14
  %102 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx66, align 4
  %and67 = and i32 %103, 8191
  %or68 = or i32 %shl65, %and67
  %104 = tail call i32 @llvm.bswap.i32(i32 %or68)
  %105 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %io_base, align 8
  %add.ptr70 = getelementptr i8, ptr %106, i32 27256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %104) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @arm_heavy_mb() #3
  %arrayidx73 = getelementptr i32, ptr %m, i32 15
  %107 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx73, align 4
  %and74 = shl i32 %108, 16
  %shl75 = and i32 %and74, 536805376
  %arrayidx76 = getelementptr i32, ptr %m, i32 16
  %109 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx76, align 4
  %and77 = and i32 %110, 8191
  %or78 = or i32 %shl75, %and77
  %111 = tail call i32 @llvm.bswap.i32(i32 %or78)
  %112 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_base, align 8
  %add.ptr80 = getelementptr i8, ptr %113, i32 27260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %111) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %arrayidx83 = getelementptr i32, ptr %m, i32 17
  %114 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx83, align 4
  %and84 = and i32 %115, 8191
  %116 = tail call i32 @llvm.bswap.i32(i32 %and84)
  %117 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %io_base, align 8
  %add.ptr86 = getelementptr i8, ptr %118, i32 27220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %116) #3, !srcloc !18
  br label %do.body94

do.body87:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %119 = tail call i32 @llvm.bswap.i32(i32 %shl91)
  %120 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %io_base, align 8
  %add.ptr93 = getelementptr i8, ptr %121, i32 27252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %119) #3, !srcloc !18
  br label %do.body94

do.body94:                                        ; preds = %do.body87, %do.body51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %arrayidx96 = getelementptr i32, ptr %m, i32 18
  %122 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx96, align 4
  %and97 = shl i32 %123, 16
  %shl98 = and i32 %and97, 268369920
  %arrayidx99 = getelementptr i32, ptr %m, i32 19
  %124 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx99, align 4
  %and100 = and i32 %125, 4095
  %or101 = or i32 %shl98, %and100
  %126 = tail call i32 @llvm.bswap.i32(i32 %or101)
  %127 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %io_base, align 8
  %add.ptr103 = getelementptr i8, ptr %128, i32 27224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %126) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %arrayidx106 = getelementptr i32, ptr %m, i32 20
  %129 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx106, align 4
  %and107 = and i32 %130, 4095
  %131 = tail call i32 @llvm.bswap.i32(i32 %and107)
  %132 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %io_base, align 8
  %add.ptr109 = getelementptr i8, ptr %133, i32 27228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %131) #3, !srcloc !18
  %134 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %io_base, align 8
  %add.ptr111 = getelementptr i8, ptr %135, i32 27220
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #3, !srcloc !17
  %137 = and i32 %136, -193
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %139 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx49, align 4
  %shl114 = shl i32 %140, 30
  %or116 = or i32 %138, %shl114
  %141 = tail call i32 @llvm.bswap.i32(i32 %or116)
  %142 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %io_base, align 8
  %add.ptr118 = getelementptr i8, ptr %143, i32 27220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %141) #3, !srcloc !18
  %144 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %io_base, align 8
  %add.ptr121 = getelementptr i8, ptr %145, i32 27220
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #3, !srcloc !17
  %147 = and i32 %146, -1793
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %arrayidx125 = getelementptr i32, ptr %m, i32 22
  %149 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx125, align 4
  %shl126 = shl i32 %150, 16
  %and127 = and i32 %shl126, 458752
  %or128 = or i32 %and127, %148
  %151 = tail call i32 @llvm.bswap.i32(i32 %or128)
  %152 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %io_base, align 8
  %add.ptr130 = getelementptr i8, ptr %153, i32 27220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %151) #3, !srcloc !18
  %154 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %io_base, align 8
  %add.ptr133 = getelementptr i8, ptr %155, i32 27200
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #3, !srcloc !17
  %157 = and i32 %156, -16777217
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  %cond = zext i1 %csc_on to i32
  %or139 = or i32 %158, %cond
  %159 = tail call i32 @llvm.bswap.i32(i32 %or139)
  %160 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %io_base, align 8
  %add.ptr141 = getelementptr i8, ptr %161, i32 27200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %159) #3, !srcloc !18
  %162 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %io_base, align 8
  %add.ptr144 = getelementptr i8, ptr %163, i32 27200
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #3, !srcloc !17
  %165 = and i32 %164, -33554433
  %166 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %io_base, align 8
  %add.ptr150 = getelementptr i8, ptr %167, i32 27200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %165) #3, !srcloc !18
  br label %if.end194

if.end194:                                        ; preds = %do.body94, %for.cond.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @eotf_33_linear_mapping, !1, !"eotf_33_linear_mapping", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_viu.c", i32 260, i32 21}
!2 = !{ptr @eotf_bypass_coeff, !3, !"eotf_bypass_coeff", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_viu.c", i32 74, i32 12}
!4 = !{ptr @oetf_41_linear_mapping, !5, !"oetf_41_linear_mapping", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/meson/meson_viu.c", i32 273, i32 21}
!6 = !{ptr @RGB709_to_YUV709l_coeff, !7, !"RGB709_to_YUV709l_coeff", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/meson/meson_viu.c", i32 62, i32 12}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 5259324}
!18 = !{i64 5258906}
!19 = !{i64 2152883749}
!20 = !{i64 2152884314}
!21 = !{i64 2152884827}
!22 = !{i64 2152885427}
!23 = !{i64 2152886027}
!24 = !{i64 2152886628}
!25 = !{i64 2152887212}
!26 = !{i64 2152887755}
!27 = !{i64 2152888327}
!28 = !{i64 2152908401}
!29 = !{i64 2152908884}
!30 = !{i64 2152909475}
!31 = !{i64 2152910058}
!32 = !{i64 2152910667}
!33 = !{i64 2152911239}
!34 = !{i64 2152914466}
!35 = !{i64 2152914949}
!36 = !{i64 2152915540}
!37 = !{i64 2152916123}
!38 = !{i64 2152916732}
!39 = !{i64 2152917304}
!40 = !{i64 2152904140}
!41 = !{i64 2152890629}
!42 = !{i64 2152891194}
!43 = !{i64 2152891707}
!44 = !{i64 2152892307}
!45 = !{i64 2152892907}
!46 = !{i64 2152893508}
!47 = !{i64 2152894721}
!48 = !{i64 2152895329}
!49 = !{i64 2152895908}
!50 = !{i64 2152896951}
!51 = !{i64 2152897523}
