; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/gpio/gpio_service.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gpio_service = type { ptr, %struct.hw_translate, %struct.hw_factory, [8 x ptr] }
%struct.hw_translate = type { ptr }
%struct.hw_factory = type { [8 x i32], ptr }
%struct.gpio_pin_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_translate_funcs = type { ptr, ptr }
%struct.gpio_config_data = type { i32, %union.anon }
%union.anon = type { %struct.gpio_generic_mux_config }
%struct.gpio_generic_mux_config = type { i8, i32, i32 }
%struct.gpio = type { ptr, ptr, i32, i32, %union.gpio_hw_container, i32, i32 }
%union.gpio_hw_container = type { ptr }
%struct.hw_factory_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hw_gpio_pin_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hw_gpio_pin = type { ptr, i32, i32, i32, i8, ptr }
%struct.ddc = type { ptr, ptr, %struct.gpio_ddc_hw_info, ptr }
%struct.gpio_ddc_hw_info = type { i8, i32 }
%struct.hw_gpio = type { %struct.hw_gpio_pin, %struct.anon, i8, ptr }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gpio_ddc_config = type { i32, i8, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dal_gpio_service_create = private unnamed_addr constant [24 x i8] c"dal_gpio_service_create\00", align 1
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c\00", [35 x i8] zeroinitializer }, align 32
@__func__.dal_gpio_service_destroy = private unnamed_addr constant [25 x i8] c"dal_gpio_service_destroy\00", align 1
@__func__.dal_gpio_create_ddc = private unnamed_addr constant [20 x i8] c"dal_gpio_create_ddc\00", align 1
@__func__.dal_gpio_destroy_ddc = private unnamed_addr constant [21 x i8] c"dal_gpio_destroy_ddc\00", align 1
@__func__.dal_ddc_open = private unnamed_addr constant [13 x i8] c"dal_ddc_open\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 66, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 137, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_gpio_service_create(i32 noundef %dce_version, i32 noundef %dce_environment, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_service_create, i32 noundef 66) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup45

if.end:                                           ; preds = %entry
  %translate = getelementptr inbounds %struct.gpio_service, ptr %call7.i.i, i32 0, i32 1
  %call1 = tail call zeroext i1 @dal_hw_translate_init(ptr noundef %translate, i32 noundef %dce_version, i32 noundef %dce_environment) #5
  br i1 %call1, label %if.end6, label %if.end.failure_1.sink.split_crit_edge

if.end.failure_1.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1.sink.split

if.end6:                                          ; preds = %if.end
  %factory = getelementptr inbounds %struct.gpio_service, ptr %call7.i.i, i32 0, i32 2
  %call7 = tail call zeroext i1 @dal_hw_factory_init(ptr noundef %factory, i32 noundef %dce_version, i32 noundef %dce_environment) #5
  br i1 %call7, label %if.end12, label %if.end6.failure_1.sink.split_crit_edge

if.end6.failure_1.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1.sink.split

if.end12:                                         ; preds = %if.end6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  br label %do.body14

do.body14:                                        ; preds = %do.cond39.do.body14_crit_edge, %if.end12
  %index_of_id.0 = phi i32 [ 0, %if.end12 ], [ %inc37, %do.cond39.do.body14_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %factory, i32 0, i32 %index_of_id.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool16.not = icmp eq i32 %3, 0
  br i1 %tobool16.not, label %if.else, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %do.body14
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #9
  %arrayidx19 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %index_of_id.0
  %4 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %arrayidx19, align 4
  %tobool22.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool22.not, label %cleanup, label %if.end7.i.i.do.body28_crit_edge

if.end7.i.i.do.body28_crit_edge:                  ; preds = %if.end7.i.i
  br label %do.body28

do.body28:                                        ; preds = %do.body28.do.body28_crit_edge, %if.end7.i.i.do.body28_crit_edge
  %i.0 = phi i32 [ %inc, %do.body28.do.body28_crit_edge ], [ 0, %if.end7.i.i.do.body28_crit_edge ]
  %5 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx19, align 4
  %arrayidx31 = getelementptr i8, ptr %6, i32 %i.0
  %7 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx31, align 1
  %inc = add nuw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %do.body28.do.cond39_crit_edge, label %do.body28.do.body28_crit_edge

do.body28.do.body28_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

do.body28.do.cond39_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond39

if.else:                                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx35 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %index_of_id.0
  %8 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx35, align 4
  br label %do.cond39

cleanup:                                          ; preds = %if.end7.i.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_service_create, i32 noundef 98) #5
  tail call void @kgdb_breakpoint() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index_of_id.0)
  %tobool42.not77 = icmp eq i32 %index_of_id.0, 0
  br i1 %tobool42.not77, label %cleanup.failure_1_crit_edge, label %while.body

cleanup.failure_1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1

do.cond39:                                        ; preds = %if.else, %do.body28.do.cond39_crit_edge
  %inc37 = add nuw nsw i32 %index_of_id.0, 1
  %exitcond80.not = icmp eq i32 %inc37, 8
  br i1 %exitcond80.not, label %do.cond39.cleanup45_crit_edge, label %do.cond39.do.body14_crit_edge

do.cond39.do.body14_crit_edge:                    ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

do.cond39.cleanup45_crit_edge:                    ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup45

while.body:                                       ; preds = %cleanup
  %dec = add nsw i32 %index_of_id.0, -1
  %arrayidx44 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %dec
  %9 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx44, align 4
  tail call void @kfree(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool42.not = icmp eq i32 %dec, 0
  br i1 %tobool42.not, label %while.body.failure_1_crit_edge, label %while.body.1

while.body.failure_1_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1

while.body.1:                                     ; preds = %while.body
  %dec.1 = add nsw i32 %index_of_id.0, -2
  %arrayidx44.1 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %dec.1
  %11 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx44.1, align 4
  tail call void @kfree(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool42.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool42.not.1, label %while.body.1.failure_1_crit_edge, label %while.body.2

while.body.1.failure_1_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1

while.body.2:                                     ; preds = %while.body.1
  %dec.2 = add nsw i32 %index_of_id.0, -3
  %arrayidx44.2 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %dec.2
  %13 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx44.2, align 4
  tail call void @kfree(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool42.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool42.not.2, label %while.body.2.failure_1_crit_edge, label %while.body.3

while.body.2.failure_1_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1

while.body.3:                                     ; preds = %while.body.2
  %dec.3 = add nsw i32 %index_of_id.0, -4
  %arrayidx44.3 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %dec.3
  %15 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx44.3, align 4
  tail call void @kfree(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.3)
  %tobool42.not.3 = icmp eq i32 %dec.3, 0
  br i1 %tobool42.not.3, label %while.body.3.failure_1_crit_edge, label %while.body.4

while.body.3.failure_1_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1

while.body.4:                                     ; preds = %while.body.3
  %dec.4 = add nsw i32 %index_of_id.0, -5
  %arrayidx44.4 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %dec.4
  %17 = ptrtoint ptr %arrayidx44.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx44.4, align 4
  tail call void @kfree(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.4)
  %tobool42.not.4 = icmp eq i32 %dec.4, 0
  br i1 %tobool42.not.4, label %while.body.4.failure_1_crit_edge, label %while.body.5

while.body.4.failure_1_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1

while.body.5:                                     ; preds = %while.body.4
  %dec.5 = add nsw i32 %index_of_id.0, -6
  %arrayidx44.5 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %dec.5
  %19 = ptrtoint ptr %arrayidx44.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx44.5, align 4
  tail call void @kfree(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.5)
  %tobool42.not.5 = icmp eq i32 %dec.5, 0
  br i1 %tobool42.not.5, label %while.body.5.failure_1_crit_edge, label %while.body.6

while.body.5.failure_1_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_1

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #7
  %dec.6 = add nsw i32 %index_of_id.0, -7
  %arrayidx44.6 = getelementptr %struct.gpio_service, ptr %call7.i.i, i32 0, i32 3, i32 %dec.6
  %21 = ptrtoint ptr %arrayidx44.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx44.6, align 4
  tail call void @kfree(ptr noundef %22) #5
  br label %failure_1

failure_1.sink.split:                             ; preds = %if.end6.failure_1.sink.split_crit_edge, %if.end.failure_1.sink.split_crit_edge
  %.sink = phi i32 [ 72, %if.end.failure_1.sink.split_crit_edge ], [ 78, %if.end6.failure_1.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_service_create, i32 noundef %.sink) #5
  tail call void @kgdb_breakpoint() #5
  br label %failure_1

failure_1:                                        ; preds = %failure_1.sink.split, %while.body.6, %while.body.5.failure_1_crit_edge, %while.body.4.failure_1_crit_edge, %while.body.3.failure_1_crit_edge, %while.body.2.failure_1_crit_edge, %while.body.1.failure_1_crit_edge, %while.body.failure_1_crit_edge, %cleanup.failure_1_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup45

cleanup45:                                        ; preds = %failure_1, %do.cond39.cleanup45_crit_edge, %do.body
  %retval.0 = phi ptr [ null, %failure_1 ], [ null, %do.body ], [ %call7.i.i, %do.cond39.cleanup45_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_hw_translate_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_hw_factory_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_gpio_service_create_irq(ptr noundef %service, i32 noundef %offset, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  %en = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en) #5
  %1 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %en, align 4, !annotation !22
  %translate = getelementptr inbounds %struct.gpio_service, ptr %service, i32 0, i32 1
  %2 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %translate, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call zeroext i1 %5(i32 noundef %offset, i32 noundef %mask, ptr noundef nonnull %id, ptr noundef nonnull %en) #5
  br i1 %call, label %if.end22, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end22:                                         ; preds = %entry
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %id.off.i = add i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off.i)
  %switch.i = icmp ult i32 %id.off.i, 2
  br i1 %switch.i, label %sw.epilog.i, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.epilog.i:                                      ; preds = %if.end22
  %8 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en, align 4
  %call.i = call ptr @dal_gpio_create(ptr noundef %service, i32 noundef %7, i32 noundef %9, i32 noundef 0) #5
  %tobool21.not.i = icmp eq ptr %call.i, null
  br i1 %tobool21.not.i, label %sw.epilog.i.cleanup.sink.split_crit_edge, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.i.cleanup.sink.split_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog.i.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink.i.sink = phi i32 [ 137, %entry.cleanup.sink.split_crit_edge ], [ 440, %if.end22.cleanup.sink.split_crit_edge ], [ 450, %sw.epilog.i.cleanup.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %.sink.i.sink, i32 noundef 9, ptr noundef null) #5
  call void @kgdb_breakpoint() #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %sw.epilog.i.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_gpio_create_irq(ptr noundef %service, i32 noundef %id, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id.off = add i32 %id, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off)
  %switch = icmp ult i32 %id.off, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %entry
  %call = tail call ptr @dal_gpio_create(ptr noundef %service, i32 noundef %id, i32 noundef %en, i32 noundef 0) #5
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %sw.epilog.cleanup.sink.split_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 440, %entry.cleanup.sink.split_crit_edge ], [ 450, %sw.epilog.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %sw.epilog.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_gpio_service_create_generic_mux(ptr noundef %service, i32 noundef %offset, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  %en = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en) #5
  %1 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %en, align 4, !annotation !22
  %translate = getelementptr inbounds %struct.gpio_service, ptr %service, i32 0, i32 1
  %2 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %translate, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call zeroext i1 %5(i32 noundef %offset, i32 noundef %mask, ptr noundef nonnull %id, ptr noundef nonnull %en) #5
  br i1 %call, label %if.end22, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 154, i32 noundef 9, ptr noundef null) #5
  call void @kgdb_breakpoint() #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en, align 4
  %call23 = call ptr @dal_gpio_create(ptr noundef %service, i32 noundef %7, i32 noundef %9, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi ptr [ %call23, %if.end22 ], [ null, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_gpio_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_gpio_destroy_generic_mux(ptr noundef %mux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mux, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end24

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %return

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dal_gpio_destroy(ptr noundef nonnull %mux) #5
  %2 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mux, align 4
  br label %return

return:                                           ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_gpio_get_generic_pin_info(ptr noalias sret(%struct.gpio_pin_info) align 4 %agg.result, ptr nocapture noundef readonly %service, i32 noundef %id, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %translate = getelementptr inbounds %struct.gpio_service, ptr %service, i32 0, i32 1
  %0 = call ptr @memset(ptr %agg.result, i32 255, i32 32)
  %1 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %translate, align 4
  %id_to_offset = getelementptr inbounds %struct.hw_translate_funcs, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %id_to_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id_to_offset, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 %4(i32 noundef %id, i32 noundef %en, ptr noundef %agg.result) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_gpio_service_destroy(ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %do.body2.preheader

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body2.preheader:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  %arrayidx = getelementptr %struct.gpio_service, ptr %3, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %5) #5
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr, align 4
  %arrayidx.1 = getelementptr %struct.gpio_service, ptr %7, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %9) #5
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr, align 4
  %arrayidx.2 = getelementptr %struct.gpio_service, ptr %11, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %13) #5
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr, align 4
  %arrayidx.3 = getelementptr %struct.gpio_service, ptr %15, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %17) #5
  %18 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr, align 4
  %arrayidx.4 = getelementptr %struct.gpio_service, ptr %19, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %21) #5
  %22 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptr, align 4
  %arrayidx.5 = getelementptr %struct.gpio_service, ptr %23, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.5, align 4
  tail call void @kfree(ptr noundef %25) #5
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptr, align 4
  %arrayidx.6 = getelementptr %struct.gpio_service, ptr %27, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.6, align 4
  tail call void @kfree(ptr noundef %29) #5
  %30 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptr, align 4
  %arrayidx.7 = getelementptr %struct.gpio_service, ptr %31, i32 0, i32 3, i32 7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.7, align 4
  tail call void @kfree(ptr noundef %33) #5
  %34 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptr, align 4
  tail call void @kfree(ptr noundef %35) #5
  %36 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %ptr, align 4
  br label %return

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_service_destroy, i32 noundef 199) #5
  tail call void @kgdb_breakpoint() #5
  br label %return

return:                                           ; preds = %do.body, %do.body2.preheader
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_mux_setup_config(ptr noundef %mux, ptr noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  %config_data = alloca %struct.gpio_config_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %config_data) #5
  %tobool.not = icmp eq ptr %config, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %config1 = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %config1, ptr %config, i32 12)
  %1 = ptrtoint ptr %config_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %config_data, align 4
  %call = call i32 @dal_gpio_set_config(ptr noundef %mux, ptr noundef nonnull %config_data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config_data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_set_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_service_lock(ptr nocapture noundef readonly %service, i32 noundef %id, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gpio_service, ptr %service, i32 0, i32 3, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 269, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i = getelementptr i8, ptr %1, i32 %en
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arrayidx1.i, align 1
  br label %return

return:                                           ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 4, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_service_unlock(ptr nocapture noundef readonly %service, i32 noundef %id, i32 noundef %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gpio_service, ptr %service, i32 0, i32 3, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 283, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i = getelementptr i8, ptr %1, i32 %en
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx1.i, align 1
  br label %return

return:                                           ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 4, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_service_open(ptr noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %id2 = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 2
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id2, align 4
  %en3 = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %4 = ptrtoint ptr %en3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en3, align 4
  %mode4 = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 5
  %6 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode4, align 4
  %pin5 = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 1
  %arrayidx = getelementptr %struct.gpio_service, ptr %1, i32 0, i32 3, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.end28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 303, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end28:                                         ; preds = %entry
  %arrayidx1.i = getelementptr i8, ptr %9, i32 %5
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not = icmp eq i8 %11, 0
  br i1 %tobool.i.not, label %if.end62, label %do.end43

do.end43:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 308, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end62:                                         ; preds = %if.end28
  %12 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end100 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb66
    i32 2, label %sw.bb74
    i32 3, label %sw.bb80
    i32 6, label %if.end62.sw.epilog_crit_edge
    i32 7, label %if.end62.sw.epilog_crit_edge239
  ]

if.end62.sw.epilog_crit_edge239:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end62.sw.epilog_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %funcs = getelementptr inbounds %struct.gpio_service, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %get_ddc_pin = getelementptr inbounds %struct.hw_factory_funcs, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %get_ddc_pin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_ddc_pin, align 4
  %call63 = tail call ptr %16(ptr noundef %gpio) #5
  %17 = ptrtoint ptr %pin5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call63, ptr %pin5, align 4
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %define_ddc_registers = getelementptr inbounds %struct.hw_factory_funcs, ptr %19, i32 0, i32 7
  br label %sw.epilog.sink.split

sw.bb66:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %funcs68 = getelementptr inbounds %struct.gpio_service, ptr %1, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs68, align 4
  %get_ddc_pin69 = getelementptr inbounds %struct.hw_factory_funcs, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %get_ddc_pin69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_ddc_pin69, align 4
  %call70 = tail call ptr %23(ptr noundef %gpio) #5
  %24 = ptrtoint ptr %pin5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call70, ptr %pin5, align 4
  %25 = ptrtoint ptr %funcs68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs68, align 4
  %define_ddc_registers73 = getelementptr inbounds %struct.hw_factory_funcs, ptr %26, i32 0, i32 7
  br label %sw.epilog.sink.split

sw.bb74:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %funcs76 = getelementptr inbounds %struct.gpio_service, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %funcs76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs76, align 4
  %get_generic_pin = getelementptr inbounds %struct.hw_factory_funcs, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %get_generic_pin to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_generic_pin, align 4
  %call77 = tail call ptr %30(ptr noundef %gpio) #5
  %31 = ptrtoint ptr %pin5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call77, ptr %pin5, align 4
  %32 = ptrtoint ptr %funcs76 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs76, align 4
  %define_generic_registers = getelementptr inbounds %struct.hw_factory_funcs, ptr %33, i32 0, i32 8
  br label %sw.epilog.sink.split

sw.bb80:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %funcs82 = getelementptr inbounds %struct.gpio_service, ptr %1, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %funcs82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs82, align 4
  %get_hpd_pin = getelementptr inbounds %struct.hw_factory_funcs, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %get_hpd_pin to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_hpd_pin, align 4
  %call83 = tail call ptr %37(ptr noundef %gpio) #5
  %38 = ptrtoint ptr %pin5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call83, ptr %pin5, align 4
  %39 = ptrtoint ptr %funcs82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs82, align 4
  %define_hpd_registers = getelementptr inbounds %struct.hw_factory_funcs, ptr %40, i32 0, i32 6
  br label %sw.epilog.sink.split

do.end100:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb80, %sw.bb74, %sw.bb66, %sw.bb
  %define_hpd_registers.sink = phi ptr [ %define_hpd_registers, %sw.bb80 ], [ %define_generic_registers, %sw.bb74 ], [ %define_ddc_registers73, %sw.bb66 ], [ %define_ddc_registers, %sw.bb ]
  %call83.sink = phi ptr [ %call83, %sw.bb80 ], [ %call77, %sw.bb74 ], [ %call70, %sw.bb66 ], [ %call63, %sw.bb ]
  %41 = ptrtoint ptr %define_hpd_registers.sink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %define_hpd_registers.sink, align 4
  tail call void %42(ptr noundef %call83.sink, i32 noundef %5) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end62.sw.epilog_crit_edge, %if.end62.sw.epilog_crit_edge239
  %43 = ptrtoint ptr %pin5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pin5, align 4
  %tobool119.not = icmp eq ptr %44, null
  br i1 %tobool119.not, label %do.end134, label %if.end153

do.end134:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 340, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end153:                                        ; preds = %sw.epilog
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %open = getelementptr inbounds %struct.hw_gpio_pin_funcs, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %open, align 4
  %call155 = tail call zeroext i1 %48(ptr noundef nonnull %44, i32 noundef %7) #5
  br i1 %call155, label %if.end189, label %do.end170

do.end170:                                        ; preds = %if.end153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 345, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  %tobool.not.i = icmp eq ptr %pin5, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i

do.end.i:                                         ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 361, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end23.i:                                       ; preds = %do.end170
  %49 = ptrtoint ptr %pin5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pin5, align 4
  %tobool24.not.i = icmp eq ptr %50, null
  br i1 %tobool24.not.i, label %if.end23.i.cleanup_crit_edge, label %if.then25.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %id.i = getelementptr inbounds %struct.hw_gpio_pin, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i, align 4
  %en.i = getelementptr inbounds %struct.hw_gpio_pin, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %en.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %en.i, align 4
  %arrayidx.i.i = getelementptr %struct.gpio_service, ptr %1, i32 0, i32 3, i32 %52
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr i8, ptr %56, i32 %54
  %57 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %50, align 4
  %close.i = getelementptr inbounds %struct.hw_gpio_pin_funcs, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %close.i, align 4
  tail call void %61(ptr noundef nonnull %50) #5
  %62 = ptrtoint ptr %pin5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %pin5, align 4
  br label %cleanup

if.end189:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx, align 4
  %arrayidx1.i238 = getelementptr i8, ptr %64, i32 %5
  %65 = ptrtoint ptr %arrayidx1.i238 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %arrayidx1.i238, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %if.then25.i, %if.end23.i.cleanup_crit_edge, %do.end.i, %do.end134, %do.end100, %do.end43, %do.end
  %retval.0 = phi i32 [ 3, %do.end43 ], [ 6, %do.end100 ], [ 0, %if.end189 ], [ 6, %do.end134 ], [ 4, %do.end ], [ 4, %do.end.i ], [ 4, %if.end23.i.cleanup_crit_edge ], [ 4, %if.then25.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_gpio_service_close(ptr nocapture noundef readonly %service, ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %do.end, label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 361, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.hw_gpio_pin, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %en = getelementptr inbounds %struct.hw_gpio_pin, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en, align 4
  %arrayidx.i = getelementptr %struct.gpio_service, ptr %service, i32 0, i32 3, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr i8, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx1.i, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %close = getelementptr inbounds %struct.hw_gpio_pin_funcs, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %close, align 4
  tail call void %12(ptr noundef nonnull %1) #5
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_irq_get_source(ptr noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dal_gpio_get_id(ptr noundef %irq) #5
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 3, label %entry.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 33, %sw.bb2 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %call3 = tail call i32 @dal_gpio_get_enum(ptr noundef %irq) #5
  %add4 = add i32 %call3, %.sink
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_get_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_get_enum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_irq_get_rx_source(ptr noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dal_gpio_get_id(ptr noundef %irq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cond = icmp eq i32 %call, 3
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @dal_gpio_get_enum(ptr noundef %irq) #5
  %add = add i32 %call1, 7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_irq_setup_hpd_filter(ptr noundef %irq, ptr noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  %config_data = alloca %struct.gpio_config_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %config_data) #5
  %0 = getelementptr inbounds i8, ptr %config_data, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %tobool.not = icmp eq ptr %config, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %config_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %config_data, align 4
  %config1 = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %config, align 4
  %5 = ptrtoint ptr %config1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %config1, align 4
  %call = call i32 @dal_gpio_set_config(ptr noundef %irq, ptr noundef nonnull %config_data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_gpio_destroy_irq(ptr noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %irq, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end24

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 458, i32 noundef 9, ptr noundef null) #5
  tail call void @kgdb_breakpoint() #5
  br label %return

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dal_gpio_destroy(ptr noundef nonnull %irq) #5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %irq, align 4
  br label %return

return:                                           ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_gpio_create_ddc(ptr noundef %service, i32 noundef %offset, i32 noundef %mask, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  %en = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en) #5
  %1 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %en, align 4, !annotation !22
  %translate = getelementptr inbounds %struct.gpio_service, ptr %service, i32 0, i32 1
  %2 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %translate, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call zeroext i1 %5(i32 noundef %offset, i32 noundef %mask, ptr noundef nonnull %id, ptr noundef nonnull %en) #5
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_create_ddc, i32 noundef 484) #5
  call void @kgdb_breakpoint() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %en, align 4
  %call4 = call ptr @dal_gpio_create(ptr noundef %service, i32 noundef 0, i32 noundef %8, i32 noundef 0) #5
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %call7.i.i, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.body8, label %if.end11

do.body8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_create_ddc, i32 noundef 492) #5
  call void @kgdb_breakpoint() #5
  br label %failure_1

if.end11:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %en, align 4
  %call12 = call ptr @dal_gpio_create(ptr noundef %service, i32 noundef 1, i32 noundef %11, i32 noundef 0) #5
  %pin_clock = getelementptr inbounds %struct.ddc, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %pin_clock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %pin_clock, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.body16, label %if.end19

do.body16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_create_ddc, i32 noundef 500) #5
  call void @kgdb_breakpoint() #5
  call void @dal_gpio_destroy(ptr noundef nonnull %call7.i.i) #5
  br label %failure_1

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %hw_info = getelementptr inbounds %struct.ddc, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %info, align 4
  %15 = ptrtoint ptr %hw_info to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %hw_info, align 8
  %16 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %service, align 4
  %ctx20 = getelementptr inbounds %struct.ddc, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %ctx20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %ctx20, align 8
  br label %cleanup

failure_1:                                        ; preds = %do.body16, %do.body8
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %failure_1, %if.end19, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end19 ], [ null, %failure_1 ], [ null, %do.body ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_gpio_destroy_ddc(ptr noundef %ddc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ddc, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_destroy_ddc, i32 noundef 523) #5
  tail call void @kgdb_breakpoint() #5
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %pin_clock.i = getelementptr inbounds %struct.ddc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pin_clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_clock.i, align 4
  tail call void @dal_gpio_close(ptr noundef %3) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @dal_gpio_close(ptr noundef %5) #5
  %6 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc, align 4
  tail call void @dal_gpio_destroy(ptr noundef %7) #5
  %8 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc, align 4
  %pin_clock = getelementptr inbounds %struct.ddc, ptr %9, i32 0, i32 1
  tail call void @dal_gpio_destroy(ptr noundef %pin_clock) #5
  %10 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc, align 4
  tail call void @kfree(ptr noundef %11) #5
  %12 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ddc, align 4
  br label %return

return:                                           ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_ddc_close(ptr nocapture noundef readonly %ddc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_clock = getelementptr inbounds %struct.ddc, ptr %ddc, i32 0, i32 1
  %0 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_clock, align 4
  tail call void @dal_gpio_close(ptr noundef %1) #5
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 4
  tail call void @dal_gpio_close(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_ddc_open(ptr nocapture noundef readonly %ddc, i32 noundef %mode, i32 noundef %config_type) local_unnamed_addr #0 align 64 {
entry:
  %config_data = alloca %struct.gpio_config_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %config_data) #5
  %0 = call ptr @memset(ptr %config_data, i32 255, i32 16)
  %1 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ddc, align 4
  %call = tail call i32 @dal_gpio_open_ex(ptr noundef %2, i32 noundef %mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_ddc_open, i32 noundef 549) #5
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pin_clock = getelementptr inbounds %struct.ddc, ptr %ddc, i32 0, i32 1
  %3 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pin_clock, align 4
  %call1 = tail call i32 @dal_gpio_open_ex(ptr noundef %4, i32 noundef %mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end7, label %do.body4

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_ddc_open, i32 noundef 556) #5
  tail call void @kgdb_breakpoint() #5
  br label %failure

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp8 = icmp eq i32 %mode, 0
  %. = select i1 %cmp8, i32 5, i32 1
  %5 = ptrtoint ptr %config_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %., ptr %config_data, align 4
  %config = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %config_type, ptr %config, align 4
  %7 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddc, align 4
  %pin = getelementptr inbounds %struct.gpio, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pin, align 4
  %11 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin_clock, align 4
  %pin16 = getelementptr inbounds %struct.gpio, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pin16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pin16, align 4
  %en = getelementptr inbounds %struct.hw_gpio, ptr %10, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp19 = icmp ne i32 %16, 0
  %data_en_bit_present = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1, i32 0, i32 1
  %frombool = zext i1 %cmp19 to i8
  %17 = ptrtoint ptr %data_en_bit_present to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %data_en_bit_present, align 4
  %en22 = getelementptr inbounds %struct.hw_gpio, ptr %14, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %en22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %en22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23 = icmp ne i32 %19, 0
  %clock_en_bit_present = getelementptr inbounds %struct.gpio_ddc_config, ptr %config, i32 0, i32 2
  %frombool25 = zext i1 %cmp23 to i8
  %20 = ptrtoint ptr %clock_en_bit_present to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool25, ptr %clock_en_bit_present, align 1
  %call27 = call i32 @dal_gpio_set_config(ptr noundef %8, ptr noundef nonnull %config_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.end7.cleanup_crit_edge, label %do.body31

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body31:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_ddc_open, i32 noundef 584) #5
  call void @kgdb_breakpoint() #5
  %21 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pin_clock, align 4
  call void @dal_gpio_close(ptr noundef %22) #5
  br label %failure

failure:                                          ; preds = %do.body31, %do.body4
  %result.0 = phi i32 [ %call1, %do.body4 ], [ %call27, %do.body31 ]
  %23 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddc, align 4
  call void @dal_gpio_close(ptr noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %failure, %if.end7.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ %call, %do.body ], [ %result.0, %failure ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config_data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_open_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_ddc_change_mode(ptr nocapture noundef readonly %ddc, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %call = tail call i32 @dal_gpio_get_mode(ptr noundef %1) #5
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 4
  %call2 = tail call i32 @dal_gpio_change_mode(ptr noundef %3, i32 noundef %mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %entry.failure_crit_edge

entry.failure_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure

if.end:                                           ; preds = %entry
  %pin_clock = getelementptr inbounds %struct.ddc, ptr %ddc, i32 0, i32 1
  %4 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_clock, align 4
  %call3 = tail call i32 @dal_gpio_change_mode(ptr noundef %5, i32 noundef %mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %pin_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pin_clock, align 4
  %call8 = tail call i32 @dal_gpio_change_mode(ptr noundef %7, i32 noundef %call) #5
  br label %failure

failure:                                          ; preds = %if.end6, %entry.failure_crit_edge
  %result.0 = phi i32 [ %call2, %entry.failure_crit_edge ], [ %call3, %if.end6 ]
  %8 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc, align 4
  %call10 = tail call i32 @dal_gpio_change_mode(ptr noundef %9, i32 noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %failure, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %failure ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_get_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_change_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_ddc_get_line(ptr nocapture noundef readonly %ddc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %call = tail call i32 @dal_gpio_get_enum(ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_ddc_set_config(ptr nocapture noundef readonly %ddc, i32 noundef %config_type) local_unnamed_addr #0 align 64 {
entry:
  %config_data = alloca %struct.gpio_config_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %config_data) #5
  %0 = getelementptr inbounds i8, ptr %config_data, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %2 = ptrtoint ptr %config_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %config_data, align 4
  %config = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %config_type, ptr %config, align 4
  %data_en_bit_present = getelementptr inbounds %struct.gpio_config_data, ptr %config_data, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %data_en_bit_present to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %data_en_bit_present, align 4
  %clock_en_bit_present = getelementptr inbounds %struct.gpio_ddc_config, ptr %config, i32 0, i32 2
  %5 = ptrtoint ptr %clock_en_bit_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %clock_en_bit_present, align 1
  %6 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc, align 4
  %call = call i32 @dal_gpio_set_config(ptr noundef %7, ptr noundef nonnull %config_data) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %config_data) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c", i32 66, i32 3}
!2 = !{ptr @__func__.dal_gpio_service_create, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c", i32 137, i32 3}
!5 = !{ptr @__func__.dal_gpio_service_destroy, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c", i32 199, i32 3}
!7 = !{ptr @__func__.dal_gpio_create_ddc, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c", i32 484, i32 3}
!9 = !{ptr @__func__.dal_gpio_destroy_ddc, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c", i32 523, i32 3}
!11 = !{ptr @__func__.dal_ddc_open, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_service.c", i32 549, i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
