; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_vpp.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_vpp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.43, %struct.anon.44, %struct.anon.45, %struct.anon.46 }
%struct.anon.43 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.44 = type { i32, i8, i8, i8 }
%struct.anon.45 = type { i32, ptr, i32 }
%struct.anon.46 = type { ptr, i64, i32 }

@vpp_filter_coefs_4point_bspline = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 357963008, i32 341186048, i32 324409088, i32 307632128, i32 290789888, i32 290724608, i32 273947648, i32 257170688, i32 257105408, i32 240328448, i32 223486208, i32 206709248, i32 189932288, i32 189867008, i32 173024768, i32 172959488, i32 156117248, i32 139340288, i32 139275008, i32 122432513, i32 122367233, i32 105524993, i32 105459713, i32 88617473, i32 88552193, i32 88486913, i32 71644673, i32 71513858, i32 71448578, i32 54606338, i32 54541058, i32 54475778, i32 54344963], [60 x i8] zeroinitializer }, align 32
@vpp_filter_coefs_bicubic = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 8388608, i32 8323328, i32 -8453632, i32 -25230592, i32 -42072832, i32 -58849792, i32 -75692032, i32 -75757312, i32 -92599552, i32 -92664321, i32 -109506561, i32 -109637121, i32 -126479361, i32 -126609666, i32 -126740226, i32 -126870786, i32 -143712771, i32 -143843331, i32 -143973891, i32 -144169731, i32 -144300036, i32 -144430596, i32 -144626436, i32 -144756741, i32 -144887301, i32 -145083141, i32 -145213446, i32 -145409286, i32 -128828166, i32 -128958471, i32 -129154311, i32 -129350151, i32 -129480456], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [32 x i8] c"vpp_filter_coefs_4point_bspline\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 41, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"vpp_filter_coefs_bicubic\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../drivers/gpu/drm/meson/meson_vpp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 66, i32 23 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @vpp_filter_coefs_4point_bspline, ptr @vpp_filter_coefs_bicubic], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpp_filter_coefs_4point_bspline to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpp_filter_coefs_bicubic to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_vpp_setup_mux(ptr nocapture noundef readonly %priv, i32 noundef %mux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %mux)
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 40040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_vpp_init(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %compat.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.else26_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then3
    i32 3, label %if.then16
  ]

entry.if.else26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else26

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 30116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2139090944) #3, !srcloc !14
  br label %if.end20

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %io_base4 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %io_base4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base4, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 26652
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !15
  %8 = or i32 %7, 65280
  %9 = ptrtoint ptr %io_base4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base4, align 8
  %add.ptr8 = getelementptr i8, ptr %10, i32 26652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #3, !srcloc !14
  %11 = ptrtoint ptr %io_base4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base4, align 8
  %add.ptr10 = getelementptr i8, ptr %12, i32 30284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 512) #3, !srcloc !14
  %13 = ptrtoint ptr %io_base4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base4, align 8
  %add.ptr12 = getelementptr i8, ptr %14, i32 30116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -2147483135) #3, !srcloc !14
  br label %if.end20

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %io_base17 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %io_base17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base17, align 8
  %add.ptr18 = getelementptr i8, ptr %16, i32 26672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 251658240) #3, !srcloc !14
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then3, %if.then
  %17 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp.i122.not = icmp eq i32 %.pr, 3
  br i1 %cmp.i122.not, label %if.then23, label %if.end20.if.else26_crit_edge

if.end20.if.else26_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %io_base24 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %io_base24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base24, align 8
  %add.ptr25 = getelementptr i8, ptr %19, i32 29852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 1110271) #3, !srcloc !14
  br label %if.end36

if.else26:                                        ; preds = %if.end20.if.else26_crit_edge, %entry.if.else26_crit_edge
  %io_base28 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %20 = ptrtoint ptr %io_base28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base28, align 8
  %add.ptr29 = getelementptr i8, ptr %21, i32 29852
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #3, !srcloc !15
  %23 = and i32 %22, 12648447
  %24 = or i32 %23, 2131165184
  %25 = ptrtoint ptr %io_base28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base28, align 8
  %add.ptr35 = getelementptr i8, ptr %26, i32 29852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %24) #3, !srcloc !14
  br label %if.end36

if.end36:                                         ; preds = %if.else26, %if.then23
  %io_base37 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 2
  %27 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base37, align 8
  %add.ptr38 = getelementptr i8, ptr %28, i32 29832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 67371008) #3, !srcloc !14
  %29 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp.i125.not = icmp eq i32 %30, 3
  br i1 %cmp.i125.not, label %if.end36.if.end73_crit_edge, label %if.then41

if.end36.if.end73_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base37, align 8
  %add.ptr44 = getelementptr i8, ptr %32, i32 29848
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #3, !srcloc !15
  %34 = and i32 %33, -1073741825
  %35 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base37, align 8
  %add.ptr50 = getelementptr i8, ptr %36, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %34) #3, !srcloc !14
  %37 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_base37, align 8
  %add.ptr53 = getelementptr i8, ptr %38, i32 29848
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #3, !srcloc !15
  %40 = and i32 %39, 2147483647
  %41 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io_base37, align 8
  %add.ptr59 = getelementptr i8, ptr %42, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %40) #3, !srcloc !14
  %43 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base37, align 8
  %add.ptr62 = getelementptr i8, ptr %44, i32 29848
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #3, !srcloc !15
  %46 = and i32 %45, -16515073
  %47 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base37, align 8
  %add.ptr68 = getelementptr i8, ptr %48, i32 29848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %46) #3, !srcloc !14
  %49 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base37, align 8
  %add.ptr70 = getelementptr i8, ptr %50, i32 29800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 1048576) #3, !srcloc !14
  %51 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base37, align 8
  %add.ptr72 = getelementptr i8, ptr %52, i32 29816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 1048576) #3, !srcloc !14
  br label %if.end73

if.end73:                                         ; preds = %if.then41, %if.end36.if.end73_crit_edge
  %53 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_base37, align 8
  %add.ptr75 = getelementptr i8, ptr %54, i32 30496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 0) #3, !srcloc !14
  %55 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base37, align 8
  %add.ptr77 = getelementptr i8, ptr %56, i32 30472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #3, !srcloc !14
  %57 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io_base37, align 8
  %add.ptr79 = getelementptr i8, ptr %58, i32 30484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 0) #3, !srcloc !14
  %59 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_base37, align 8
  %add.ptr81 = getelementptr i8, ptr %60, i32 29796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 75759616) #3, !srcloc !14
  %61 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io_base37, align 8
  %add.ptr83 = getelementptr i8, ptr %62, i32 29952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 33554432) #3, !srcloc !14
  %63 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_base37, align 8
  %add.ptr.i = getelementptr i8, ptr %64, i32 30512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #3, !srcloc !14
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end73
  %i.01.i = phi i32 [ 0, %if.end73 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @vpp_filter_coefs_4point_bspline, i32 %i.01.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #3
  %68 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io_base37, align 8
  %add.ptr2.i = getelementptr i8, ptr %69, i32 30516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %67) #3, !srcloc !14
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %meson_vpp_write_scaling_filter_coefs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

meson_vpp_write_scaling_filter_coefs.exit:        ; preds = %for.body.i
  %70 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io_base37, align 8
  %add.ptr.i128 = getelementptr i8, ptr %71, i32 30512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 65536) #3, !srcloc !14
  br label %for.body.i134

for.body.i134:                                    ; preds = %for.body.i134.for.body.i134_crit_edge, %meson_vpp_write_scaling_filter_coefs.exit
  %i.01.i129 = phi i32 [ 0, %meson_vpp_write_scaling_filter_coefs.exit ], [ %inc.i132, %for.body.i134.for.body.i134_crit_edge ]
  %arrayidx.i130 = getelementptr i32, ptr @vpp_filter_coefs_4point_bspline, i32 %i.01.i129
  %72 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i130, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #3
  %75 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base37, align 8
  %add.ptr2.i131 = getelementptr i8, ptr %76, i32 30516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i131, i32 %74) #3, !srcloc !14
  %inc.i132 = add nuw nsw i32 %i.01.i129, 1
  %exitcond.not.i133 = icmp eq i32 %inc.i132, 33
  br i1 %exitcond.not.i133, label %meson_vpp_write_scaling_filter_coefs.exit135, label %for.body.i134.for.body.i134_crit_edge

for.body.i134.for.body.i134_crit_edge:            ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i134

meson_vpp_write_scaling_filter_coefs.exit135:     ; preds = %for.body.i134
  %77 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %io_base37, align 8
  %add.ptr.i137 = getelementptr i8, ptr %78, i32 29708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 0) #3, !srcloc !14
  br label %for.body.i143

for.body.i143:                                    ; preds = %for.body.i143.for.body.i143_crit_edge, %meson_vpp_write_scaling_filter_coefs.exit135
  %i.01.i138 = phi i32 [ 0, %meson_vpp_write_scaling_filter_coefs.exit135 ], [ %inc.i141, %for.body.i143.for.body.i143_crit_edge ]
  %arrayidx.i139 = getelementptr i32, ptr @vpp_filter_coefs_bicubic, i32 %i.01.i138
  %79 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i139, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #3
  %82 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_base37, align 8
  %add.ptr2.i140 = getelementptr i8, ptr %83, i32 29712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i140, i32 %81) #3, !srcloc !14
  %inc.i141 = add nuw nsw i32 %i.01.i138, 1
  %exitcond.not.i142 = icmp eq i32 %inc.i141, 33
  br i1 %exitcond.not.i142, label %meson_vpp_write_vd_scaling_filter_coefs.exit, label %for.body.i143.for.body.i143_crit_edge

for.body.i143.for.body.i143_crit_edge:            ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i143

meson_vpp_write_vd_scaling_filter_coefs.exit:     ; preds = %for.body.i143
  %84 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %io_base37, align 8
  %add.ptr.i145 = getelementptr i8, ptr %85, i32 29708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 65536) #3, !srcloc !14
  br label %for.body.i151

for.body.i151:                                    ; preds = %for.body.i151.for.body.i151_crit_edge, %meson_vpp_write_vd_scaling_filter_coefs.exit
  %i.01.i146 = phi i32 [ 0, %meson_vpp_write_vd_scaling_filter_coefs.exit ], [ %inc.i149, %for.body.i151.for.body.i151_crit_edge ]
  %arrayidx.i147 = getelementptr i32, ptr @vpp_filter_coefs_bicubic, i32 %i.01.i146
  %86 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i147, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #3
  %89 = ptrtoint ptr %io_base37 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %io_base37, align 8
  %add.ptr2.i148 = getelementptr i8, ptr %90, i32 29712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i148, i32 %88) #3, !srcloc !14
  %inc.i149 = add nuw nsw i32 %i.01.i146, 1
  %exitcond.not.i150 = icmp eq i32 %inc.i149, 33
  br i1 %exitcond.not.i150, label %meson_vpp_write_vd_scaling_filter_coefs.exit152, label %for.body.i151.for.body.i151_crit_edge

for.body.i151.for.body.i151_crit_edge:            ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i151

meson_vpp_write_vd_scaling_filter_coefs.exit152:  ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @vpp_filter_coefs_4point_bspline, !1, !"vpp_filter_coefs_4point_bspline", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_vpp.c", i32 41, i32 21}
!2 = !{ptr @vpp_filter_coefs_bicubic, !3, !"vpp_filter_coefs_bicubic", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_vpp.c", i32 66, i32 23}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2152655648}
!14 = !{i64 5032986}
!15 = !{i64 5033404}
