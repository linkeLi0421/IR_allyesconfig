; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_osd_afbcd.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_osd_afbcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.meson_afbcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.64, %struct.anon.65, %struct.anon.66, %struct.anon.67 }
%struct.anon.64 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.65 = type { i32, i8, i8, i8 }
%struct.anon.66 = type { i32, ptr, i32 }
%struct.anon.67 = type { ptr, i64, i32 }

@meson_afbcd_gxm_ops = dso_local global { %struct.meson_afbcd_ops, [36 x i8] } { %struct.meson_afbcd_ops { ptr @meson_gxm_afbcd_init, ptr @meson_gxm_afbcd_reset, ptr @meson_gxm_afbcd_enable, ptr @meson_gxm_afbcd_disable, ptr @meson_gxm_afbcd_setup, ptr null, ptr @meson_gxm_afbcd_supported_fmt }, [36 x i8] zeroinitializer }, align 32
@meson_afbcd_g12a_ops = dso_local global { %struct.meson_afbcd_ops, [36 x i8] } { %struct.meson_afbcd_ops { ptr @meson_g12a_afbcd_init, ptr @meson_g12a_afbcd_reset, ptr @meson_g12a_afbcd_enable, ptr @meson_g12a_afbcd_disable, ptr @meson_g12a_afbcd_setup, ptr @meson_g12a_afbcd_fmt_to_blk_mode, ptr @meson_g12a_afbcd_supported_fmt }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported afbc format[%08x]\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 875708993, i64 875709016]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 875708993, i64 875709016]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 875708993, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 909199186]
@__sancov_gen_cov_switch_values.3 = internal global [8 x i64] [i64 6, i64 32, i64 875708993, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 909199186]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 875708993, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 909199186]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 32, i64 875708993, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 909199186]
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"meson_afbcd_gxm_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 173, i32 24 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"meson_afbcd_g12a_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 381, i32 24 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [43 x i8] c"../drivers/gpu/drm/meson/meson_osd_afbcd.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 66, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @meson_afbcd_gxm_ops, ptr @meson_afbcd_g12a_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_afbcd_gxm_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_afbcd_g12a_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_gxm_afbcd_init(ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxm_afbcd_reset(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #4, !srcloc !15
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 26628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #4, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxm_afbcd_enable(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 50816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8454144) #4, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxm_afbcd_disable(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 50816
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !16
  %3 = and i32 %2, -65537
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 50816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #4, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gxm_afbcd_setup(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %modifier = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 18, i32 1
  %format = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 18, i32 2
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default.i [
    i32 875709016, label %entry.meson_gxm_afbcd_pixel_fmt.exit_crit_edge
    i32 875708993, label %entry.meson_gxm_afbcd_pixel_fmt.exit_crit_edge301
  ]

entry.meson_gxm_afbcd_pixel_fmt.exit_crit_edge301: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxm_afbcd_pixel_fmt.exit

entry.meson_gxm_afbcd_pixel_fmt.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_gxm_afbcd_pixel_fmt.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %1) #4
  br label %meson_gxm_afbcd_pixel_fmt.exit

meson_gxm_afbcd_pixel_fmt.exit:                   ; preds = %sw.default.i, %entry.meson_gxm_afbcd_pixel_fmt.exit_crit_edge, %entry.meson_gxm_afbcd_pixel_fmt.exit_crit_edge301
  %retval.0.i = phi i32 [ -22, %sw.default.i ], [ 21, %entry.meson_gxm_afbcd_pixel_fmt.exit_crit_edge ], [ 21, %entry.meson_gxm_afbcd_pixel_fmt.exit_crit_edge301 ]
  %3 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %modifier, align 8
  %and = and i64 %4, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select.v = select i1 %tobool.not, i32 50607104, i32 50607136
  %spec.select = or i32 %spec.select.v, %retval.0.i
  %5 = trunc i64 %4 to i32
  %6 = shl i32 %5, 1
  %7 = and i32 %6, 64
  %8 = or i32 %spec.select, %7
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 50820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #4, !srcloc !15
  %osd1_width = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 12
  %12 = ptrtoint ptr %osd1_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %osd1_width, align 4
  %osd1_height = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 11
  %14 = ptrtoint ptr %osd1_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %osd1_height, align 8
  %shl = shl i32 %13, 16
  %and111 = and i32 %15, 65535
  %or112 = or i32 %and111, %shl
  %16 = tail call i32 @llvm.bswap.i32(i32 %or112)
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base, align 8
  %add.ptr114 = getelementptr i8, ptr %18, i32 50824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %16) #4, !srcloc !15
  %osd1_addr = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 9
  %19 = ptrtoint ptr %osd1_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %osd1_addr, align 8
  %shr = lshr i32 %20, 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 8
  %add.ptr117 = getelementptr i8, ptr %23, i32 50828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %21) #4, !srcloc !15
  %24 = ptrtoint ptr %osd1_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %osd1_addr, align 8
  %shr120 = lshr i32 %25, 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %shr120)
  %27 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base, align 8
  %add.ptr122 = getelementptr i8, ptr %28, i32 50832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %26) #4, !srcloc !15
  %29 = ptrtoint ptr %osd1_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %osd1_addr, align 8
  %and125 = and i32 %30, 16777215
  %or126 = or i32 %and125, -469762048
  %31 = tail call i32 @llvm.bswap.i32(i32 %or126)
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base, align 8
  %add.ptr128 = getelementptr i8, ptr %33, i32 50836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %31) #4, !srcloc !15
  %34 = ptrtoint ptr %osd1_width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %osd1_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %35)
  %cmp = icmp ult i32 %35, 129
  br i1 %cmp, label %meson_gxm_afbcd_pixel_fmt.exit.if.end156_crit_edge, label %if.else

meson_gxm_afbcd_pixel_fmt.exit.if.end156_crit_edge: ; preds = %meson_gxm_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

if.else:                                          ; preds = %meson_gxm_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %35)
  %cmp134 = icmp ult i32 %35, 257
  br i1 %cmp134, label %if.else.if.end156_crit_edge, label %if.else136

if.else.if.end156_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

if.else136:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %35)
  %cmp139 = icmp ult i32 %35, 513
  br i1 %cmp139, label %if.else136.if.end156_crit_edge, label %if.else141

if.else136.if.end156_crit_edge:                   ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

if.else141:                                       ; preds = %if.else136
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %35)
  %cmp144 = icmp ult i32 %35, 1025
  br i1 %cmp144, label %if.else141.if.end156_crit_edge, label %if.else146

if.else141.if.end156_crit_edge:                   ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

if.else146:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %35)
  %cmp149 = icmp ult i32 %35, 2049
  %. = select i1 %cmp149, i32 512, i32 1024
  br label %if.end156

if.end156:                                        ; preds = %if.else146, %if.else141.if.end156_crit_edge, %if.else136.if.end156_crit_edge, %if.else.if.end156_crit_edge, %meson_gxm_afbcd_pixel_fmt.exit.if.end156_crit_edge
  %conv_lbuf_len.0 = phi i32 [ 32, %meson_gxm_afbcd_pixel_fmt.exit.if.end156_crit_edge ], [ 64, %if.else.if.end156_crit_edge ], [ 128, %if.else136.if.end156_crit_edge ], [ 256, %if.else141.if.end156_crit_edge ], [ %., %if.else146 ]
  %36 = tail call i32 @llvm.bswap.i32(i32 %conv_lbuf_len.0)
  %37 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base, align 8
  %add.ptr158 = getelementptr i8, ptr %38, i32 50840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %36) #4, !srcloc !15
  %39 = ptrtoint ptr %osd1_width to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %osd1_width, align 4
  %sub204 = add i32 %40, 65535
  %and206 = and i32 %sub204, 65535
  %41 = tail call i32 @llvm.bswap.i32(i32 %and206)
  %42 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base, align 8
  %add.ptr209 = getelementptr i8, ptr %43, i32 50852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 %41) #4, !srcloc !15
  %44 = ptrtoint ptr %osd1_height to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %osd1_height, align 8
  %sub256 = add i32 %45, 65535
  %and258 = and i32 %sub256, 65535
  %46 = tail call i32 @llvm.bswap.i32(i32 %and258)
  %47 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base, align 8
  %add.ptr261 = getelementptr i8, ptr %48, i32 50856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr261, i32 %46) #4, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @meson_gxm_afbcd_supported_fmt(i64 noundef %modifier, i32 noundef %format) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %modifier, 18
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %0)
  %.not = icmp eq i64 %0, 16
  br i1 %.not, label %if.end4, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %entry
  %1 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %format, label %sw.default.i [
    i32 875709016, label %if.end4.return_crit_edge
    i32 875708993, label %if.end4.return_crit_edge7
  ]

if.end4.return_crit_edge7:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %format) #4
  br label %return

return:                                           ; preds = %sw.default.i, %if.end4.return_crit_edge, %if.end4.return_crit_edge7, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end4.return_crit_edge ], [ true, %if.end4.return_crit_edge7 ], [ false, %sw.default.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_g12a_afbcd_init(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @meson_rdma_init(ptr noundef %priv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @meson_rdma_setup(ptr noundef %priv) #4
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 26684
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !16
  %3 = or i32 %2, 32768
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 26684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #4, !srcloc !15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_g12a_afbcd_reset(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @meson_rdma_reset(ptr noundef %priv) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 2621440, i32 noundef 6657) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 0, i32 noundef 6657) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_g12a_afbcd_enable(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 15, i32 noundef 14851) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 1, i32 noundef 14855) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 1, i32 noundef 14853) #4
  tail call void @meson_rdma_flush(ptr noundef %priv) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_g12a_afbcd_disable(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 59420
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !16
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 59420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #4, !srcloc !15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_g12a_afbcd_setup(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %modifier = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %modifier, align 8
  %format2 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 18, i32 2
  %2 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format2, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %3, label %sw.default.i [
    i32 875713112, label %entry.sw.bb.i_crit_edge
    i32 875713089, label %entry.sw.bb.i_crit_edge84
    i32 875709016, label %entry.sw.bb1.i_crit_edge
    i32 875708993, label %entry.sw.bb1.i_crit_edge85
    i32 875710290, label %sw.bb2.i
    i32 909199186, label %sw.bb7.i
  ]

entry.sw.bb1.i_crit_edge85:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge84
  %and.i = and i64 %1, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.bb1.i_crit_edge, label %sw.bb.i.meson_g12a_afbcd_pixel_fmt.exit_crit_edge

sw.bb.i.meson_g12a_afbcd_pixel_fmt.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_g12a_afbcd_pixel_fmt.exit

sw.bb.i.sw.bb1.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge85
  br label %meson_g12a_afbcd_pixel_fmt.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and3.i = and i64 %1, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i32 4, i32 -22
  br label %meson_g12a_afbcd_pixel_fmt.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and8.i = and i64 %1, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool9.not.i = icmp eq i64 %and8.i, 0
  %.15.i = select i1 %tobool9.not.i, i32 0, i32 -22
  br label %meson_g12a_afbcd_pixel_fmt.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %3) #4
  br label %meson_g12a_afbcd_pixel_fmt.exit

meson_g12a_afbcd_pixel_fmt.exit:                  ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i.meson_g12a_afbcd_pixel_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.default.i ], [ 5, %sw.bb1.i ], [ -22, %sw.bb.i.meson_g12a_afbcd_pixel_fmt.exit_crit_edge ], [ %..i, %sw.bb2.i ], [ %.15.i, %sw.bb7.i ]
  %5 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %modifier, align 8
  %7 = trunc i64 %6 to i32
  %8 = shl i32 %7, 4
  %9 = and i32 %8, 256
  %10 = or i32 %9, %retval.0.i
  %11 = and i32 %8, 512
  %12 = or i32 %10, %11
  %13 = shl i32 %7, 10
  %14 = and i32 %13, 262144
  %15 = or i32 %12, %14
  %and21 = and i64 %6, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and21)
  %cmp = icmp eq i64 %and21, 2
  %or35 = or i32 %15, 65536
  %format.3 = select i1 %cmp, i32 %or35, i32 %15
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef %format.3, i32 noundef 14866) #4
  %osd1_addr = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 9
  %16 = ptrtoint ptr %osd1_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %osd1_addr, align 8
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef %17, i32 noundef 14864) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 0, i32 noundef 14865) #4
  %osd1_width = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 12
  %18 = ptrtoint ptr %osd1_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %osd1_width, align 4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef %19, i32 noundef 14867) #4
  %osd1_height = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 15, i32 11
  %20 = ptrtoint ptr %osd1_height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %osd1_height, align 8
  %add = add i32 %21, 31
  %and39 = and i32 %add, -32
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef %and39, i32 noundef 14868) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 0, i32 noundef 14869) #4
  %22 = ptrtoint ptr %osd1_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %osd1_width, align 4
  %sub = add i32 %23, -1
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef %sub, i32 noundef 14870) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 0, i32 noundef 14871) #4
  %24 = ptrtoint ptr %osd1_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %osd1_height, align 8
  %sub44 = add i32 %25, -1
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef %sub44, i32 noundef 14872) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 16777216, i32 noundef 14873) #4
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef 0, i32 noundef 14874) #4
  %26 = ptrtoint ptr %osd1_width to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %osd1_width, align 4
  %28 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %format2, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %29, label %sw.default.i80 [
    i32 875713112, label %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge
    i32 875713089, label %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge86
    i32 875709016, label %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge87
    i32 875708993, label %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge88
    i32 875710290, label %sw.bb1.i78
    i32 909199186, label %sw.bb2.i79
  ]

meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge88: ; preds = %meson_g12a_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_g12a_afbcd_bpp.exit

meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge87: ; preds = %meson_g12a_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_g12a_afbcd_bpp.exit

meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge86: ; preds = %meson_g12a_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_g12a_afbcd_bpp.exit

meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge: ; preds = %meson_g12a_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_g12a_afbcd_bpp.exit

sw.bb1.i78:                                       ; preds = %meson_g12a_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_g12a_afbcd_bpp.exit

sw.bb2.i79:                                       ; preds = %meson_g12a_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_g12a_afbcd_bpp.exit

sw.default.i80:                                   ; preds = %meson_g12a_afbcd_pixel_fmt.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %29) #4
  br label %meson_g12a_afbcd_bpp.exit

meson_g12a_afbcd_bpp.exit:                        ; preds = %sw.default.i80, %sw.bb2.i79, %sw.bb1.i78, %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge, %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge86, %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge87, %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge88
  %retval.0.i81 = phi i32 [ 0, %sw.default.i80 ], [ 2, %sw.bb2.i79 ], [ 3, %sw.bb1.i78 ], [ 4, %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge ], [ 4, %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge86 ], [ 4, %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge87 ], [ 4, %meson_g12a_afbcd_pixel_fmt.exit.meson_g12a_afbcd_bpp.exit_crit_edge88 ]
  %mul = mul i32 %retval.0.i81, %27
  tail call void @meson_rdma_writel_sync(ptr noundef %priv, i32 noundef %mul, i32 noundef 14875) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_g12a_afbcd_fmt_to_blk_mode(i64 noundef %modifier, i32 noundef %format) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %format, label %sw.default [
    i32 875713112, label %entry.return_crit_edge
    i32 875713089, label %entry.return_crit_edge4
    i32 875709016, label %entry.return_crit_edge5
    i32 875708993, label %entry.return_crit_edge6
    i32 875710290, label %sw.bb1
    i32 909199186, label %sw.bb2
  ]

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %format) #4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6
  %retval.0 = phi i32 [ -22, %sw.default ], [ 512, %sw.bb2 ], [ 1792, %sw.bb1 ], [ 1280, %entry.return_crit_edge ], [ 1280, %entry.return_crit_edge4 ], [ 1280, %entry.return_crit_edge5 ], [ 1280, %entry.return_crit_edge6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @meson_g12a_afbcd_supported_fmt(i64 noundef %modifier, i32 noundef %format) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %format, label %sw.default.i [
    i32 875713112, label %entry.sw.bb.i_crit_edge
    i32 875713089, label %entry.sw.bb.i_crit_edge1
    i32 875709016, label %entry.sw.bb1.i_crit_edge
    i32 875708993, label %entry.sw.bb1.i_crit_edge2
    i32 875710290, label %sw.bb2.i
    i32 909199186, label %sw.bb7.i
  ]

entry.sw.bb1.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge1
  %and.i = and i64 %modifier, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.bb1.i_crit_edge, label %sw.bb.i.meson_g12a_afbcd_pixel_fmt.exit_crit_edge

sw.bb.i.meson_g12a_afbcd_pixel_fmt.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_g12a_afbcd_pixel_fmt.exit

sw.bb.i.sw.bb1.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge2
  br label %meson_g12a_afbcd_pixel_fmt.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and3.i = and i64 %modifier, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i32 4, i32 -22
  br label %meson_g12a_afbcd_pixel_fmt.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and8.i = and i64 %modifier, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool9.not.i = icmp eq i64 %and8.i, 0
  %.15.i = select i1 %tobool9.not.i, i32 0, i32 -22
  br label %meson_g12a_afbcd_pixel_fmt.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %format) #4
  br label %meson_g12a_afbcd_pixel_fmt.exit

meson_g12a_afbcd_pixel_fmt.exit:                  ; preds = %sw.default.i, %sw.bb7.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i.meson_g12a_afbcd_pixel_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.default.i ], [ 5, %sw.bb1.i ], [ -22, %sw.bb.i.meson_g12a_afbcd_pixel_fmt.exit_crit_edge ], [ %..i, %sw.bb2.i ], [ %.15.i, %sw.bb7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, -1
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_rdma_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_rdma_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_rdma_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_rdma_writel_sync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_rdma_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @meson_afbcd_gxm_ops, !1, !"meson_afbcd_gxm_ops", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_osd_afbcd.c", i32 173, i32 24}
!2 = !{ptr @meson_afbcd_g12a_ops, !3, !"meson_afbcd_g12a_ops", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_osd_afbcd.c", i32 381, i32 24}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/meson/meson_osd_afbcd.c", i32 66, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 6032892}
!16 = !{i64 6033310}
