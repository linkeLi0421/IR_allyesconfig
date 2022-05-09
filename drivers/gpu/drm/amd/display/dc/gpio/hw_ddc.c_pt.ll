; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/gpio/hw_ddc.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_ddc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_gpio_pin_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hw_gpio_pin = type { ptr, i32, i32, i32, i8, ptr }
%struct.hw_ddc = type { %struct.hw_gpio, ptr, ptr, ptr }
%struct.hw_gpio = type { %struct.hw_gpio_pin, %struct.anon, i8, ptr }
%struct.anon = type { i32, i32, i32, i32 }
%struct.ddc_sh_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_config_data = type { i32, %union.anon }
%union.anon = type { %struct.gpio_generic_mux_config }
%struct.gpio_generic_mux_config = type { i8, i32, i32 }
%struct.gpio_ddc_config = type { i32, i8, i8 }
%struct.ddc_registers = type { %struct.gpio_registers, i32, i32, i32 }
%struct.gpio_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_ddc.c\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@funcs = internal constant { %struct.hw_gpio_pin_funcs, [36 x i8] } { %struct.hw_gpio_pin_funcs { ptr @dal_hw_ddc_destroy, ptr @dal_hw_gpio_open, ptr @dal_hw_gpio_get_value, ptr @dal_hw_gpio_set_value, ptr @set_config, ptr @dal_hw_gpio_change_mode, ptr @dal_hw_gpio_close }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.set_config = private unnamed_addr constant [11 x i8] c"set_config\00", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 235, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 208, i32 39 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [58 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_ddc.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 203, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @funcs, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_hw_ddc_init(ptr nocapture noundef writeonly %hw_ddc, ptr noundef %ctx, i32 noundef %id, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %en)
  %cmp1 = icmp ugt i32 %en, 7
  br i1 %cmp1, label %do.end, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef null) #4
  tail call void @kgdb_breakpoint() #4
  %0 = ptrtoint ptr %hw_ddc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %hw_ddc, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry.if.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 60) #7
  %2 = ptrtoint ptr %hw_ddc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %hw_ddc, align 4
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %do.end39, label %if.end58

do.end39:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef null) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end58:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dal_hw_gpio_construct(ptr noundef nonnull %call7.i.i, i32 noundef %id, i32 noundef %en, ptr noundef %ctx) #4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @funcs, ptr %call7.i.i, align 8
  br label %return

return:                                           ; preds = %if.end58, %do.end39
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_hw_ddc_get_pin(ptr noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dal_gpio_get_ddc(ptr noundef %gpio) #4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_gpio_get_ddc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_hw_gpio_construct(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dal_hw_ddc_destroy(ptr nocapture noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  tail call void @dal_hw_gpio_destruct(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_hw_gpio_open(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_hw_gpio_get_value(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_hw_gpio_set_value(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_config(ptr noundef readonly %ptr, ptr nocapture noundef readonly %config_data) #0 align 64 {
entry:
  %ddc_data_pd_en = alloca i32, align 4
  %ddc_clk_pd_en = alloca i32, align 4
  %aux_pad_mode = alloca i32, align 4
  %sda_pd_dis = alloca i32, align 4
  %scl_pd_dis = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ddc_data_pd_en) #4
  %0 = ptrtoint ptr %ddc_data_pd_en to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ddc_data_pd_en, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ddc_clk_pd_en) #4
  %1 = ptrtoint ptr %ddc_clk_pd_en to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ddc_clk_pd_en, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aux_pad_mode) #4
  %2 = ptrtoint ptr %aux_pad_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %aux_pad_mode, align 4
  %cmp = icmp eq ptr %ptr, null
  br i1 %cmp, label %do.end, label %if.end26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #4
  tail call void @kgdb_breakpoint() #4
  br label %cleanup

if.end26:                                         ; preds = %entry
  %ctx = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 5
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.hw_ddc, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shifts = getelementptr inbounds %struct.hw_ddc, ptr %ptr, i32 0, i32 2
  %9 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shifts, align 4
  %DC_GPIO_DDC1DATA_PD_EN = getelementptr inbounds %struct.ddc_sh_mask, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %DC_GPIO_DDC1DATA_PD_EN to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %DC_GPIO_DDC1DATA_PD_EN, align 4
  %conv = trunc i32 %12 to i8
  %masks = getelementptr inbounds %struct.hw_ddc, ptr %ptr, i32 0, i32 3
  %13 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %masks, align 4
  %DC_GPIO_DDC1DATA_PD_EN29 = getelementptr inbounds %struct.ddc_sh_mask, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %DC_GPIO_DDC1DATA_PD_EN29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %DC_GPIO_DDC1DATA_PD_EN29, align 4
  %DC_GPIO_DDC1CLK_PD_EN = getelementptr inbounds %struct.ddc_sh_mask, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %DC_GPIO_DDC1CLK_PD_EN to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %DC_GPIO_DDC1CLK_PD_EN, align 4
  %conv31 = trunc i32 %18 to i8
  %DC_GPIO_DDC1CLK_PD_EN33 = getelementptr inbounds %struct.ddc_sh_mask, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %DC_GPIO_DDC1CLK_PD_EN33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %DC_GPIO_DDC1CLK_PD_EN33, align 4
  %AUX_PAD1_MODE = getelementptr inbounds %struct.ddc_sh_mask, ptr %10, i32 0, i32 5
  %21 = ptrtoint ptr %AUX_PAD1_MODE to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %AUX_PAD1_MODE, align 4
  %conv35 = trunc i32 %22 to i8
  %AUX_PAD1_MODE37 = getelementptr inbounds %struct.ddc_sh_mask, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %AUX_PAD1_MODE37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %AUX_PAD1_MODE37, align 4
  %call = call i32 @generic_reg_get3(ptr noundef %4, i32 noundef %8, i8 noundef zeroext %conv, i32 noundef %16, ptr noundef nonnull %ddc_data_pd_en, i8 noundef zeroext %conv31, i32 noundef %20, ptr noundef nonnull %ddc_clk_pd_en, i8 noundef zeroext %conv35, i32 noundef %24, ptr noundef nonnull %aux_pad_mode) #4
  %config = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %config, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.end26.do.body294_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb177
    i32 2, label %land.lhs.true
    i32 3, label %land.lhs.true241
    i32 4, label %land.lhs.true272
  ]

if.end26.do.body294_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body294

sw.bb:                                            ; preds = %if.end26
  %en = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 2
  %28 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %cmp39.not = icmp eq i32 %29, 7
  br i1 %cmp39.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %sw.bb
  %30 = ptrtoint ptr %ddc_data_pd_en to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ddc_data_pd_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool42.not = icmp eq i32 %31, 0
  br i1 %tobool42.not, label %if.then41.if.then44_crit_edge, label %lor.lhs.false

if.then41.if.then44_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.then41
  %32 = ptrtoint ptr %ddc_clk_pd_en to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ddc_clk_pd_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool43.not = icmp eq i32 %33, 0
  br i1 %tobool43.not, label %lor.lhs.false.if.then44_crit_edge, label %lor.lhs.false.if.end122_crit_edge

lor.lhs.false.if.end122_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.then41.if.then44_crit_edge
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shifts, align 4
  %DC_GPIO_DDC1DATA_PD_EN52 = getelementptr inbounds %struct.ddc_sh_mask, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %DC_GPIO_DDC1DATA_PD_EN52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DC_GPIO_DDC1DATA_PD_EN52, align 4
  %conv53 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %masks, align 4
  %DC_GPIO_DDC1DATA_PD_EN55 = getelementptr inbounds %struct.ddc_sh_mask, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %DC_GPIO_DDC1DATA_PD_EN55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %DC_GPIO_DDC1DATA_PD_EN55, align 4
  %DC_GPIO_DDC1CLK_PD_EN57 = getelementptr inbounds %struct.ddc_sh_mask, ptr %41, i32 0, i32 4
  %48 = ptrtoint ptr %DC_GPIO_DDC1CLK_PD_EN57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %DC_GPIO_DDC1CLK_PD_EN57, align 4
  %DC_GPIO_DDC1CLK_PD_EN59 = getelementptr inbounds %struct.ddc_sh_mask, ptr %45, i32 0, i32 4
  %50 = ptrtoint ptr %DC_GPIO_DDC1CLK_PD_EN59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %DC_GPIO_DDC1CLK_PD_EN59, align 4
  %call60 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %35, i32 noundef %39, i32 noundef %call, i32 noundef 2, i8 noundef zeroext %conv53, i32 noundef %47, i32 noundef 1, i32 noundef %49, i32 noundef %51, i32 noundef 1) #4
  %52 = ptrtoint ptr %config_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %config_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %53)
  %cmp62 = icmp eq i32 %53, 5
  br i1 %cmp62, label %if.then64, label %if.then44.if.end122_crit_edge

if.then44.if.end122_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end122

if.then64:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  call void @msleep(i32 noundef 3) #4
  br label %if.end122

if.else:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sda_pd_dis) #4
  %54 = ptrtoint ptr %sda_pd_dis to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %sda_pd_dis, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scl_pd_dis) #4
  %55 = ptrtoint ptr %scl_pd_dis to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %scl_pd_dis, align 4
  %56 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx, align 4
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %62 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shifts, align 4
  %DC_GPIO_SDA_PD_DIS = getelementptr inbounds %struct.ddc_sh_mask, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %DC_GPIO_SDA_PD_DIS to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %DC_GPIO_SDA_PD_DIS, align 4
  %conv74 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %masks, align 4
  %DC_GPIO_SDA_PD_DIS76 = getelementptr inbounds %struct.ddc_sh_mask, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %DC_GPIO_SDA_PD_DIS76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %DC_GPIO_SDA_PD_DIS76, align 4
  %DC_GPIO_SCL_PD_DIS = getelementptr inbounds %struct.ddc_sh_mask, ptr %63, i32 0, i32 7
  %70 = ptrtoint ptr %DC_GPIO_SCL_PD_DIS to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %DC_GPIO_SCL_PD_DIS, align 4
  %conv78 = trunc i32 %71 to i8
  %DC_GPIO_SCL_PD_DIS80 = getelementptr inbounds %struct.ddc_sh_mask, ptr %67, i32 0, i32 7
  %72 = ptrtoint ptr %DC_GPIO_SCL_PD_DIS80 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %DC_GPIO_SCL_PD_DIS80, align 4
  %call81 = call i32 @generic_reg_get2(ptr noundef %57, i32 noundef %61, i8 noundef zeroext %conv74, i32 noundef %69, ptr noundef nonnull %sda_pd_dis, i8 noundef zeroext %conv78, i32 noundef %73, ptr noundef nonnull %scl_pd_dis) #4
  %74 = ptrtoint ptr %sda_pd_dis to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sda_pd_dis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool82.not = icmp eq i32 %75, 0
  br i1 %tobool82.not, label %if.else.if.end101_crit_edge, label %if.then83

if.else.if.end101_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

if.then83:                                        ; preds = %if.else
  %76 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctx, align 4
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %shifts, align 4
  %DC_GPIO_SDA_PD_DIS91 = getelementptr inbounds %struct.ddc_sh_mask, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %DC_GPIO_SDA_PD_DIS91 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %DC_GPIO_SDA_PD_DIS91, align 4
  %conv92 = trunc i32 %85 to i8
  %86 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %masks, align 4
  %DC_GPIO_SDA_PD_DIS94 = getelementptr inbounds %struct.ddc_sh_mask, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %DC_GPIO_SDA_PD_DIS94 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %DC_GPIO_SDA_PD_DIS94, align 4
  %call95 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %77, i32 noundef %81, i32 noundef %call, i32 noundef 1, i8 noundef zeroext %conv92, i32 noundef %89, i32 noundef 0) #4
  %90 = ptrtoint ptr %config_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %config_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %91)
  %cmp97 = icmp eq i32 %91, 5
  br i1 %cmp97, label %if.then99, label %if.then83.if.end101_crit_edge

if.then83.if.end101_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

if.then99:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #6
  call void @msleep(i32 noundef 3) #4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.then83.if.end101_crit_edge, %if.else.if.end101_crit_edge
  %92 = ptrtoint ptr %scl_pd_dis to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %scl_pd_dis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool102.not = icmp eq i32 %93, 0
  br i1 %tobool102.not, label %if.then103, label %if.end101.if.end121_crit_edge

if.end101.if.end121_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.then103:                                       ; preds = %if.end101
  %94 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctx, align 4
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %100 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %shifts, align 4
  %DC_GPIO_SCL_PD_DIS111 = getelementptr inbounds %struct.ddc_sh_mask, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %DC_GPIO_SCL_PD_DIS111 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %DC_GPIO_SCL_PD_DIS111, align 4
  %conv112 = trunc i32 %103 to i8
  %104 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %masks, align 4
  %DC_GPIO_SCL_PD_DIS114 = getelementptr inbounds %struct.ddc_sh_mask, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %DC_GPIO_SCL_PD_DIS114 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %DC_GPIO_SCL_PD_DIS114, align 4
  %call115 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %95, i32 noundef %99, i32 noundef %call, i32 noundef 1, i8 noundef zeroext %conv112, i32 noundef %107, i32 noundef 1) #4
  %108 = ptrtoint ptr %config_data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %config_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %109)
  %cmp117 = icmp eq i32 %109, 5
  br i1 %cmp117, label %if.then119, label %if.then103.if.end121_crit_edge

if.then103.if.end121_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.then119:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #6
  call void @msleep(i32 noundef 3) #4
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.then103.if.end121_crit_edge, %if.end101.if.end121_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scl_pd_dis) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sda_pd_dis) #4
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then64, %if.then44.if.end122_crit_edge, %lor.lhs.false.if.end122_crit_edge
  %110 = ptrtoint ptr %aux_pad_mode to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %aux_pad_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool123.not = icmp eq i32 %111, 0
  br i1 %tobool123.not, label %if.end122.if.end146_crit_edge, label %if.then124

if.end122.if.end146_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end146

if.then124:                                       ; preds = %if.end122
  %data_en_bit_present = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1, i32 0, i32 1
  %112 = ptrtoint ptr %data_en_bit_present to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %data_en_bit_present, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool126.not = icmp eq i8 %113, 0
  br i1 %tobool126.not, label %lor.lhs.false128, label %if.then124.if.then132_crit_edge

if.then124.if.then132_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then132

lor.lhs.false128:                                 ; preds = %if.then124
  %clock_en_bit_present = getelementptr inbounds %struct.gpio_ddc_config, ptr %config, i32 0, i32 2
  %114 = ptrtoint ptr %clock_en_bit_present to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %clock_en_bit_present, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool130.not = icmp eq i8 %115, 0
  br i1 %tobool130.not, label %lor.lhs.false128.if.end133_crit_edge, label %lor.lhs.false128.if.then132_crit_edge

lor.lhs.false128.if.then132_crit_edge:            ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then132

lor.lhs.false128.if.end133_crit_edge:             ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

if.then132:                                       ; preds = %lor.lhs.false128.if.then132_crit_edge, %if.then124.if.then132_crit_edge
  call void @msleep(i32 noundef 2) #4
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %lor.lhs.false128.if.end133_crit_edge
  %116 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctx, align 4
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %122 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %shifts, align 4
  %AUX_PAD1_MODE141 = getelementptr inbounds %struct.ddc_sh_mask, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %AUX_PAD1_MODE141 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %AUX_PAD1_MODE141, align 4
  %conv142 = trunc i32 %125 to i8
  %126 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %masks, align 4
  %AUX_PAD1_MODE144 = getelementptr inbounds %struct.ddc_sh_mask, ptr %127, i32 0, i32 5
  %128 = ptrtoint ptr %AUX_PAD1_MODE144 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %AUX_PAD1_MODE144, align 4
  %call145 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %117, i32 noundef %121, i32 noundef 1, i8 noundef zeroext %conv142, i32 noundef %129, i32 noundef 0) #4
  br label %if.end146

if.end146:                                        ; preds = %if.end133, %if.end122.if.end146_crit_edge
  %130 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs, align 4
  %dc_gpio_aux_ctrl_5 = getelementptr inbounds %struct.ddc_registers, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %dc_gpio_aux_ctrl_5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dc_gpio_aux_ctrl_5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp148.not = icmp eq i32 %133, 0
  br i1 %cmp148.not, label %if.end146.if.end161_crit_edge, label %if.then150

if.end146.if.end161_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end161

if.then150:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #6
  %134 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ctx, align 4
  %136 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %shifts, align 4
  %DDC_PAD_I2CMODE = getelementptr inbounds %struct.ddc_sh_mask, ptr %137, i32 0, i32 9
  %138 = ptrtoint ptr %DDC_PAD_I2CMODE to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %DDC_PAD_I2CMODE, align 4
  %conv157 = trunc i32 %139 to i8
  %140 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %masks, align 4
  %DDC_PAD_I2CMODE159 = getelementptr inbounds %struct.ddc_sh_mask, ptr %141, i32 0, i32 9
  %142 = ptrtoint ptr %DDC_PAD_I2CMODE159 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %DDC_PAD_I2CMODE159, align 4
  %call160 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %135, i32 noundef %133, i32 noundef 1, i8 noundef zeroext %conv157, i32 noundef %143, i32 noundef 1) #4
  br label %if.end161

if.end161:                                        ; preds = %if.then150, %if.end146.if.end161_crit_edge
  %144 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs, align 4
  %phy_aux_cntl = getelementptr inbounds %struct.ddc_registers, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %phy_aux_cntl to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %phy_aux_cntl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp163.not = icmp eq i32 %147, 0
  br i1 %cmp163.not, label %if.end161.cleanup_crit_edge, label %if.then165

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then165:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #6
  %148 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ctx, align 4
  %150 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %shifts, align 4
  %AUX_PAD_RXSEL = getelementptr inbounds %struct.ddc_sh_mask, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %AUX_PAD_RXSEL to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %AUX_PAD_RXSEL, align 4
  %conv172 = trunc i32 %153 to i8
  %154 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %masks, align 4
  %AUX_PAD_RXSEL174 = getelementptr inbounds %struct.ddc_sh_mask, ptr %155, i32 0, i32 8
  %156 = ptrtoint ptr %AUX_PAD_RXSEL174 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %AUX_PAD_RXSEL174, align 4
  %call175 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %149, i32 noundef %147, i32 noundef 1, i8 noundef zeroext %conv172, i32 noundef %157, i32 noundef 1) #4
  br label %cleanup

sw.bb177:                                         ; preds = %if.end26
  %158 = ptrtoint ptr %aux_pad_mode to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %aux_pad_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool178.not = icmp eq i32 %159, 0
  br i1 %tobool178.not, label %if.then179, label %sw.bb177.if.end192_crit_edge

sw.bb177.if.end192_crit_edge:                     ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end192

if.then179:                                       ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #6
  %160 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ctx, align 4
  %162 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  %166 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %shifts, align 4
  %AUX_PAD1_MODE187 = getelementptr inbounds %struct.ddc_sh_mask, ptr %167, i32 0, i32 5
  %168 = ptrtoint ptr %AUX_PAD1_MODE187 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %AUX_PAD1_MODE187, align 4
  %conv188 = trunc i32 %169 to i8
  %170 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %masks, align 4
  %AUX_PAD1_MODE190 = getelementptr inbounds %struct.ddc_sh_mask, ptr %171, i32 0, i32 5
  %172 = ptrtoint ptr %AUX_PAD1_MODE190 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %AUX_PAD1_MODE190, align 4
  %call191 = call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %161, i32 noundef %165, i32 noundef %call, i32 noundef 1, i8 noundef zeroext %conv188, i32 noundef %173, i32 noundef 1) #4
  br label %if.end192

if.end192:                                        ; preds = %if.then179, %sw.bb177.if.end192_crit_edge
  %174 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs, align 4
  %dc_gpio_aux_ctrl_5194 = getelementptr inbounds %struct.ddc_registers, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %dc_gpio_aux_ctrl_5194 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dc_gpio_aux_ctrl_5194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp195.not = icmp eq i32 %177, 0
  br i1 %cmp195.not, label %if.end192.cleanup_crit_edge, label %if.then197

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then197:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #6
  %178 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ctx, align 4
  %180 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %shifts, align 4
  %DDC_PAD_I2CMODE204 = getelementptr inbounds %struct.ddc_sh_mask, ptr %181, i32 0, i32 9
  %182 = ptrtoint ptr %DDC_PAD_I2CMODE204 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %DDC_PAD_I2CMODE204, align 4
  %conv205 = trunc i32 %183 to i8
  %184 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %masks, align 4
  %DDC_PAD_I2CMODE207 = getelementptr inbounds %struct.ddc_sh_mask, ptr %185, i32 0, i32 9
  %186 = ptrtoint ptr %DDC_PAD_I2CMODE207 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %DDC_PAD_I2CMODE207, align 4
  %call208 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %179, i32 noundef %177, i32 noundef 1, i8 noundef zeroext %conv205, i32 noundef %187, i32 noundef 0) #4
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end26
  %en212 = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 2
  %188 = ptrtoint ptr %en212 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %en212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %189)
  %cmp217 = icmp ult i32 %189, 7
  br i1 %cmp217, label %if.then219, label %land.lhs.true.do.body294_crit_edge

land.lhs.true.do.body294_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body294

if.then219:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %190 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ctx, align 4
  %192 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs, align 4
  %ddc_setup = getelementptr inbounds %struct.ddc_registers, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %ddc_setup to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ddc_setup, align 4
  %196 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %shifts, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 4
  %conv225 = trunc i32 %199 to i8
  %200 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %masks, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  %DC_I2C_DDC1_EDID_DETECT_ENABLE = getelementptr inbounds %struct.ddc_sh_mask, ptr %197, i32 0, i32 1
  %204 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE, align 4
  %DC_I2C_DDC1_EDID_DETECT_ENABLE230 = getelementptr inbounds %struct.ddc_sh_mask, ptr %201, i32 0, i32 1
  %206 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE230 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE230, align 4
  %DC_I2C_DDC1_EDID_DETECT_MODE = getelementptr inbounds %struct.ddc_sh_mask, ptr %197, i32 0, i32 2
  %208 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_MODE to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_MODE, align 4
  %DC_I2C_DDC1_EDID_DETECT_MODE233 = getelementptr inbounds %struct.ddc_sh_mask, ptr %201, i32 0, i32 2
  %210 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_MODE233 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_MODE233, align 4
  %call234 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %191, i32 noundef %195, i32 noundef 3, i8 noundef zeroext %conv225, i32 noundef %203, i32 noundef 1, i32 noundef %205, i32 noundef %207, i32 noundef 1, i32 noundef %209, i32 noundef %211, i32 noundef 0) #4
  br label %cleanup

land.lhs.true241:                                 ; preds = %if.end26
  %en238 = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 2
  %212 = ptrtoint ptr %en238 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %en238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %213)
  %cmp244 = icmp ult i32 %213, 7
  br i1 %cmp244, label %if.then246, label %land.lhs.true241.do.body294_crit_edge

land.lhs.true241.do.body294_crit_edge:            ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body294

if.then246:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #6
  %214 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ctx, align 4
  %216 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs, align 4
  %ddc_setup251 = getelementptr inbounds %struct.ddc_registers, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %ddc_setup251 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ddc_setup251, align 4
  %220 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %shifts, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %221, align 4
  %conv254 = trunc i32 %223 to i8
  %224 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %masks, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 4
  %DC_I2C_DDC1_EDID_DETECT_ENABLE258 = getelementptr inbounds %struct.ddc_sh_mask, ptr %221, i32 0, i32 1
  %228 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE258 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE258, align 4
  %DC_I2C_DDC1_EDID_DETECT_ENABLE260 = getelementptr inbounds %struct.ddc_sh_mask, ptr %225, i32 0, i32 1
  %230 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE260 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE260, align 4
  %DC_I2C_DDC1_EDID_DETECT_MODE262 = getelementptr inbounds %struct.ddc_sh_mask, ptr %221, i32 0, i32 2
  %232 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_MODE262 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_MODE262, align 4
  %DC_I2C_DDC1_EDID_DETECT_MODE264 = getelementptr inbounds %struct.ddc_sh_mask, ptr %225, i32 0, i32 2
  %234 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_MODE264 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_MODE264, align 4
  %call265 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %215, i32 noundef %219, i32 noundef 3, i8 noundef zeroext %conv254, i32 noundef %227, i32 noundef 1, i32 noundef %229, i32 noundef %231, i32 noundef 1, i32 noundef %233, i32 noundef %235, i32 noundef 1) #4
  br label %cleanup

land.lhs.true272:                                 ; preds = %if.end26
  %en269 = getelementptr inbounds %struct.hw_gpio_pin, ptr %ptr, i32 0, i32 2
  %236 = ptrtoint ptr %en269 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %en269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %237)
  %cmp275 = icmp ult i32 %237, 7
  br i1 %cmp275, label %if.then277, label %land.lhs.true272.do.body294_crit_edge

land.lhs.true272.do.body294_crit_edge:            ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body294

if.then277:                                       ; preds = %land.lhs.true272
  call void @__sanitizer_cov_trace_pc() #6
  %238 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ctx, align 4
  %240 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs, align 4
  %ddc_setup282 = getelementptr inbounds %struct.ddc_registers, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %ddc_setup282 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %ddc_setup282, align 4
  %244 = ptrtoint ptr %shifts to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %shifts, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %245, align 4
  %conv285 = trunc i32 %247 to i8
  %248 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %masks, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %249, align 4
  %DC_I2C_DDC1_EDID_DETECT_ENABLE289 = getelementptr inbounds %struct.ddc_sh_mask, ptr %245, i32 0, i32 1
  %252 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE289 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE289, align 4
  %DC_I2C_DDC1_EDID_DETECT_ENABLE291 = getelementptr inbounds %struct.ddc_sh_mask, ptr %249, i32 0, i32 1
  %254 = ptrtoint ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE291 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %DC_I2C_DDC1_EDID_DETECT_ENABLE291, align 4
  %call292 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %239, i32 noundef %243, i32 noundef 2, i8 noundef zeroext %conv285, i32 noundef %251, i32 noundef 0, i32 noundef %253, i32 noundef %255, i32 noundef 0) #4
  br label %cleanup

do.body294:                                       ; preds = %land.lhs.true272.do.body294_crit_edge, %land.lhs.true241.do.body294_crit_edge, %land.lhs.true.do.body294_crit_edge, %if.end26.do.body294_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.set_config, i32 noundef 203) #4
  call void @kgdb_breakpoint() #4
  br label %cleanup

cleanup:                                          ; preds = %do.body294, %if.then277, %if.then246, %if.then219, %if.then197, %if.end192.cleanup_crit_edge, %if.then165, %if.end161.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 6, %do.body294 ], [ 0, %if.then277 ], [ 0, %if.then246 ], [ 0, %if.then219 ], [ 0, %if.then165 ], [ 0, %if.end161.cleanup_crit_edge ], [ 0, %if.then197 ], [ 0, %if.end192.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux_pad_mode) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ddc_clk_pd_en) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ddc_data_pd_en) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_hw_gpio_change_mode(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_hw_gpio_close(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_hw_gpio_destruct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get3(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get2(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_ddc.c", i32 235, i32 3}
!2 = !{ptr @funcs, !3, !"funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_ddc.c", i32 208, i32 39}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/hw_ddc.c", i32 203, i32 2}
!6 = !{ptr @__func__.set_config, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i8 0, i8 2}
