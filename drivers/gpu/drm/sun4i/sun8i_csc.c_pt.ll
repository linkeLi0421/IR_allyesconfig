; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_csc.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_csc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }

@ccsc_base = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 696400, i32 1024080], [2 x i32] [i32 655360, i32 983040]], [16 x i8] zeroinitializer }, align 32
@yuv2rgb_de3 = internal constant { [2 x [3 x [12 x i32]]], [64 x i8] } { [2 x [3 x [12 x i32]]] [[3 x [12 x i32]] [[12 x i32] [i32 152618, i32 0, i32 209194, i32 -4194304, i32 152618, i32 -51349, i32 -106557, i32 -33554432, i32 152618, i32 264402, i32 0, i32 -33554432], [12 x i32] [i32 152618, i32 0, i32 234978, i32 -4194304, i32 152618, i32 -27950, i32 -69849, i32 -33554432, i32 152618, i32 276876, i32 0, i32 -33554432], [12 x i32] [i32 152618, i32 0, i32 220027, i32 -4194304, i32 152618, i32 -24553, i32 -85252, i32 -33554432, i32 152618, i32 280726, i32 0, i32 -33554432]], [3 x [12 x i32]] [[12 x i32] [i32 131072, i32 0, i32 183762, i32 0, i32 131072, i32 -45106, i32 -93603, i32 -33554432, i32 131072, i32 232259, i32 0, i32 -33554432], [12 x i32] [i32 131072, i32 0, i32 206412, i32 0, i32 131072, i32 -24552, i32 -61357, i32 -33554432, i32 131072, i32 243217, i32 0, i32 -33554432], [12 x i32] [i32 131072, i32 0, i32 193278, i32 0, i32 131072, i32 -21568, i32 -74888, i32 -33554432, i32 131072, i32 246598, i32 0, i32 -33554432]]], [64 x i8] zeroinitializer }, align 32
@sun8i_de3_ccsc_set_coefficients._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014[drm] Wrong CSC mode specified.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sun8i_de3_ccsc_set_coefficients\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/sun4i/sun8i_csc.c\00", [62 x i8] zeroinitializer }, align 32
@sun8i_de3_ccsc_set_coefficients._entry_ptr = internal global ptr @sun8i_de3_ccsc_set_coefficients._entry, section ".printk_index", align 4
@yuv2rgb = internal constant { [2 x [2 x [12 x i32]]], [32 x i8] } { [2 x [2 x [12 x i32]]] [[2 x [12 x i32]] [[12 x i32] [i32 1192, i32 0, i32 1634, i32 -228271, i32 1192, i32 -401, i32 -832, i32 138829, i32 1192, i32 2065, i32 0, i32 -283479], [12 x i32] [i32 1192, i32 0, i32 1835, i32 -254055, i32 1192, i32 -218, i32 -545, i32 78723, i32 1192, i32 2163, i32 0, i32 -295953]], [2 x [12 x i32]] [[12 x i32] [i32 1024, i32 0, i32 1435, i32 -183762, i32 1024, i32 -352, i32 -731, i32 138709, i32 1024, i32 1814, i32 0, i32 -232259], [12 x i32] [i32 1024, i32 0, i32 1612, i32 -206412, i32 1024, i32 -191, i32 -479, i32 85910, i32 1024, i32 1900, i32 0, i32 -243217]]], [32 x i8] zeroinitializer }, align 32
@sun8i_csc_set_coefficients._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun8i_csc_set_coefficients\00", [37 x i8] zeroinitializer }, align 32
@sun8i_csc_set_coefficients._entry_ptr = internal global ptr @sun8i_csc_set_coefficients._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"ccsc_base\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 11, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"yuv2rgb_de3\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 72, i32 18 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 175, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"yuv2rgb\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 22, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [37 x i8] c"../drivers/gpu/drm/sun4i/sun8i_csc.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 137, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @sun8i_csc_set_coefficients._entry, ptr @sun8i_csc_set_coefficients._entry_ptr, ptr @sun8i_de3_ccsc_set_coefficients._entry, ptr @sun8i_de3_ccsc_set_coefficients._entry_ptr, ptr @ccsc_base, ptr @yuv2rgb_de3, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @yuv2rgb, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccsc_base to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb_de3 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_de3_ccsc_set_coefficients._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_csc_set_coefficients._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_csc_set_ccsc_coefficients(ptr nocapture noundef readonly %mixer, i32 noundef %layer, i32 noundef %mode, i32 noundef %encoding, i32 noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %mixer, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %is_de3 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_de3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_de3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %mixer, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %arrayidx1.i = getelementptr [2 x [3 x [12 x i32]]], ptr @yuv2rgb_de3, i32 0, i32 %range, i32 %encoding
  %5 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %if.end22.i.11
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %mul.i = mul i32 %layer, 48
  %add.i = add i32 %mul.i, 2320
  %call.i = tail call i32 @regmap_bulk_write(ptr noundef %4, i32 noundef %add.i, ptr noundef %arrayidx1.i, i32 noundef 12) #3
  br label %cleanup

if.end22.i.11:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %mul13.i = mul i32 %layer, 48
  %add19.i = add i32 %mul13.i, 2320
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i, align 4
  %call24.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add19.i, i32 noundef %7) #3
  %add16.i.1 = add i32 %mul13.i, 2328
  %arrayidx23.i.1 = getelementptr i32, ptr %arrayidx1.i, i32 1
  %8 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx23.i.1, align 4
  %call24.i.1 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.1, i32 noundef %9) #3
  %add16.i.2 = add i32 %mul13.i, 2324
  %arrayidx23.i.2 = getelementptr i32, ptr %arrayidx1.i, i32 2
  %10 = ptrtoint ptr %arrayidx23.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx23.i.2, align 4
  %call24.i.2 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.2, i32 noundef %11) #3
  %add16.i.3 = add i32 %mul13.i, 2332
  %arrayidx23.i.3 = getelementptr i32, ptr %arrayidx1.i, i32 3
  %12 = ptrtoint ptr %arrayidx23.i.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx23.i.3, align 4
  %call24.i.3 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.3, i32 noundef %13) #3
  %add16.i.4 = add i32 %mul13.i, 2336
  %arrayidx23.i.4 = getelementptr i32, ptr %arrayidx1.i, i32 4
  %14 = ptrtoint ptr %arrayidx23.i.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx23.i.4, align 4
  %call24.i.4 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.4, i32 noundef %15) #3
  %add16.i.5 = add i32 %mul13.i, 2344
  %arrayidx23.i.5 = getelementptr i32, ptr %arrayidx1.i, i32 5
  %16 = ptrtoint ptr %arrayidx23.i.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx23.i.5, align 4
  %call24.i.5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.5, i32 noundef %17) #3
  %add16.i.6 = add i32 %mul13.i, 2340
  %arrayidx23.i.6 = getelementptr i32, ptr %arrayidx1.i, i32 6
  %18 = ptrtoint ptr %arrayidx23.i.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23.i.6, align 4
  %call24.i.6 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.6, i32 noundef %19) #3
  %add16.i.7 = add i32 %mul13.i, 2348
  %arrayidx23.i.7 = getelementptr i32, ptr %arrayidx1.i, i32 7
  %20 = ptrtoint ptr %arrayidx23.i.7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx23.i.7, align 4
  %call24.i.7 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.7, i32 noundef %21) #3
  %add16.i.8 = add i32 %mul13.i, 2352
  %arrayidx23.i.8 = getelementptr i32, ptr %arrayidx1.i, i32 8
  %22 = ptrtoint ptr %arrayidx23.i.8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx23.i.8, align 4
  %call24.i.8 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.8, i32 noundef %23) #3
  %add16.i.9 = add i32 %mul13.i, 2360
  %arrayidx23.i.9 = getelementptr i32, ptr %arrayidx1.i, i32 9
  %24 = ptrtoint ptr %arrayidx23.i.9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx23.i.9, align 4
  %call24.i.9 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.9, i32 noundef %25) #3
  %add16.i.10 = add i32 %mul13.i, 2356
  %arrayidx23.i.10 = getelementptr i32, ptr %arrayidx1.i, i32 10
  %26 = ptrtoint ptr %arrayidx23.i.10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx23.i.10, align 4
  %call24.i.10 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.10, i32 noundef %27) #3
  %add16.i.11 = add i32 %mul13.i, 2364
  %arrayidx23.i.11 = getelementptr i32, ptr %arrayidx1.i, i32 11
  %28 = ptrtoint ptr %arrayidx23.i.11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx23.i.11, align 4
  %call24.i.11 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add16.i.11, i32 noundef %29) #3
  br label %cleanup

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ccsc = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %ccsc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ccsc, align 4
  %arrayidx2 = getelementptr [2 x [2 x i32]], ptr @ccsc_base, i32 0, i32 %31, i32 %layer
  %32 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2, align 4
  %regs4 = getelementptr inbounds %struct.sunxi_engine, ptr %mixer, i32 0, i32 2
  %34 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs4, align 4
  %arrayidx1.i12 = getelementptr [2 x [2 x [12 x i32]]], ptr @yuv2rgb, i32 0, i32 %range, i32 %encoding
  %36 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %mode, label %do.end.i23 [
    i32 1, label %sw.bb.i17
    i32 2, label %if.end18.i.11
  ]

sw.bb.i17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.i15 = add i32 %33, 16
  %call.i16 = tail call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef %add.i15, ptr noundef %arrayidx1.i12, i32 noundef 12) #3
  br label %cleanup

if.end18.i.11:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add15.i = add i32 %33, 16
  %37 = ptrtoint ptr %arrayidx1.i12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx1.i12, align 4
  %call20.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add15.i, i32 noundef %38) #3
  %add13.i.1 = add i32 %33, 24
  %arrayidx19.i.1 = getelementptr i32, ptr %arrayidx1.i12, i32 1
  %39 = ptrtoint ptr %arrayidx19.i.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx19.i.1, align 4
  %call20.i.1 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.1, i32 noundef %40) #3
  %add13.i.2 = add i32 %33, 20
  %arrayidx19.i.2 = getelementptr i32, ptr %arrayidx1.i12, i32 2
  %41 = ptrtoint ptr %arrayidx19.i.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx19.i.2, align 4
  %call20.i.2 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.2, i32 noundef %42) #3
  %add13.i.3 = add i32 %33, 28
  %arrayidx19.i.3 = getelementptr i32, ptr %arrayidx1.i12, i32 3
  %43 = ptrtoint ptr %arrayidx19.i.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx19.i.3, align 4
  %call20.i.3 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.3, i32 noundef %44) #3
  %add13.i.4 = add i32 %33, 32
  %arrayidx19.i.4 = getelementptr i32, ptr %arrayidx1.i12, i32 4
  %45 = ptrtoint ptr %arrayidx19.i.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx19.i.4, align 4
  %call20.i.4 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.4, i32 noundef %46) #3
  %add13.i.5 = add i32 %33, 40
  %arrayidx19.i.5 = getelementptr i32, ptr %arrayidx1.i12, i32 5
  %47 = ptrtoint ptr %arrayidx19.i.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx19.i.5, align 4
  %call20.i.5 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.5, i32 noundef %48) #3
  %add13.i.6 = add i32 %33, 36
  %arrayidx19.i.6 = getelementptr i32, ptr %arrayidx1.i12, i32 6
  %49 = ptrtoint ptr %arrayidx19.i.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx19.i.6, align 4
  %call20.i.6 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.6, i32 noundef %50) #3
  %add13.i.7 = add i32 %33, 44
  %arrayidx19.i.7 = getelementptr i32, ptr %arrayidx1.i12, i32 7
  %51 = ptrtoint ptr %arrayidx19.i.7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx19.i.7, align 4
  %call20.i.7 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.7, i32 noundef %52) #3
  %add13.i.8 = add i32 %33, 48
  %arrayidx19.i.8 = getelementptr i32, ptr %arrayidx1.i12, i32 8
  %53 = ptrtoint ptr %arrayidx19.i.8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx19.i.8, align 4
  %call20.i.8 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.8, i32 noundef %54) #3
  %add13.i.9 = add i32 %33, 56
  %arrayidx19.i.9 = getelementptr i32, ptr %arrayidx1.i12, i32 9
  %55 = ptrtoint ptr %arrayidx19.i.9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx19.i.9, align 4
  %call20.i.9 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.9, i32 noundef %56) #3
  %add13.i.10 = add i32 %33, 52
  %arrayidx19.i.10 = getelementptr i32, ptr %arrayidx1.i12, i32 10
  %57 = ptrtoint ptr %arrayidx19.i.10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx19.i.10, align 4
  %call20.i.10 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.10, i32 noundef %58) #3
  %add13.i.11 = add i32 %33, 60
  %arrayidx19.i.11 = getelementptr i32, ptr %arrayidx1.i12, i32 11
  %59 = ptrtoint ptr %arrayidx19.i.11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx19.i.11, align 4
  %call20.i.11 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add13.i.11, i32 noundef %60) #3
  br label %cleanup

do.end.i23:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i23, %if.end18.i.11, %sw.bb.i17, %do.end.i, %if.end22.i.11, %sw.bb.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_csc_enable_ccsc(ptr nocapture noundef readonly %mixer, i32 noundef %layer, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %mixer, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %is_de3 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %is_de3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_de3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %mixer, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %shl.i = shl nuw i32 1, %layer
  %shl..i = select i1 %enable, i32 %shl.i, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 2304, i32 noundef %shl.i, i32 noundef %shl..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ccsc = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ccsc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccsc, align 4
  %arrayidx3 = getelementptr [2 x [2 x i32]], ptr @ccsc_base, i32 0, i32 %6, i32 %layer
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %regs5 = getelementptr inbounds %struct.sunxi_engine, ptr %mixer, i32 0, i32 2
  %9 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs5, align 4
  %..i = zext i1 %enable to i32
  %call.i.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %8, i32 noundef 1, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_csc.c", i32 175, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sun8i_de3_ccsc_set_coefficients._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sun8i_de3_ccsc_set_coefficients._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @yuv2rgb_de3, !7, !"yuv2rgb_de3", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sun4i/sun8i_csc.c", i32 72, i32 18}
!8 = !{ptr @ccsc_base, !9, !"ccsc_base", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun8i_csc.c", i32 11, i32 18}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sun4i/sun8i_csc.c", i32 137, i32 3}
!12 = !{ptr @sun8i_csc_set_coefficients._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sun8i_csc_set_coefficients._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @yuv2rgb, !15, !"yuv2rgb", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun8i_csc.c", i32 22, i32 18}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
