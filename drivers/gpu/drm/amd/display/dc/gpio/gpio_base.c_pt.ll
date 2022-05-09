; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/gpio/gpio_base.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gpio = type { ptr, ptr, i32, i32, %union.gpio_hw_container, i32, i32 }
%union.gpio_hw_container = type { ptr }
%struct.hw_gpio_pin_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_service = type { ptr, %struct.hw_translate, %struct.hw_factory, [8 x ptr] }
%struct.hw_translate = type { ptr }
%struct.hw_factory = type { [8 x i32], ptr }
%struct.hw_translate_funcs = type { ptr, ptr }
%struct.hw_factory_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dal_gpio_open_ex = private unnamed_addr constant [17 x i8] c"dal_gpio_open_ex\00", align 1
@__func__.dal_gpio_get_value = private unnamed_addr constant [19 x i8] c"dal_gpio_get_value\00", align 1
@__func__.dal_gpio_set_value = private unnamed_addr constant [19 x i8] c"dal_gpio_set_value\00", align 1
@__func__.dal_gpio_change_mode = private unnamed_addr constant [21 x i8] c"dal_gpio_change_mode\00", align 1
@__func__.dal_gpio_set_config = private unnamed_addr constant [20 x i8] c"dal_gpio_set_config\00", align 1
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 66, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 278, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_open(ptr noundef %gpio, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pin.i = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 1
  %0 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_open_ex, i32 noundef 66) #4
  tail call void @kgdb_breakpoint() #4
  br label %dal_gpio_open_ex.exit

if.end.i:                                         ; preds = %entry
  %hw_container.i = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 4
  %2 = ptrtoint ptr %hw_container.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_container.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %do.body3.i, label %if.end5.i

do.body3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_open_ex, i32 noundef 72) #4
  tail call void @kgdb_breakpoint() #4
  br label %dal_gpio_open_ex.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %mode6.i = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 5
  %4 = ptrtoint ptr %mode6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mode, ptr %mode6.i, align 4
  %call.i = tail call i32 @dal_gpio_service_open(ptr noundef %gpio) #4
  br label %dal_gpio_open_ex.exit

dal_gpio_open_ex.exit:                            ; preds = %if.end5.i, %do.body3.i, %do.body.i
  %retval.0.i = phi i32 [ 5, %do.body.i ], [ %call.i, %if.end5.i ], [ 6, %do.body3.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_open_ex(ptr noundef %gpio, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pin = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 1
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_open_ex, i32 noundef 66) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end:                                           ; preds = %entry
  %hw_container = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 4
  %2 = ptrtoint ptr %hw_container to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_container, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.body3, label %if.end5

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_open_ex, i32 noundef 72) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mode6 = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 5
  %4 = ptrtoint ptr %mode6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mode, ptr %mode6, align 4
  %call = tail call i32 @dal_gpio_service_open(ptr noundef %gpio) #4
  br label %return

return:                                           ; preds = %if.end5, %do.body3, %do.body
  %retval.0 = phi i32 [ 5, %do.body ], [ %call, %if.end5 ], [ 6, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_service_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_get_value(ptr nocapture noundef readonly %gpio, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pin = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 1
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_get_value, i32 noundef 85) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %get_value = getelementptr inbounds %struct.hw_gpio_pin_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_value, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %value) #4
  br label %return

return:                                           ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_set_value(ptr nocapture noundef readonly %gpio, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pin = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 1
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_set_value, i32 noundef 97) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %set_value = getelementptr inbounds %struct.hw_gpio_pin_funcs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %set_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_value, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %value) #4
  br label %return

return:                                           ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_gpio_get_mode(ptr nocapture noundef readonly %gpio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 5
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_lock_pin(ptr nocapture noundef readonly %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %id = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %en = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %4 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en, align 4
  %call = tail call i32 @dal_gpio_service_lock(ptr noundef %1, i32 noundef %3, i32 noundef %5) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_service_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_unlock_pin(ptr nocapture noundef readonly %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %id = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %en = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %4 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en, align 4
  %call = tail call i32 @dal_gpio_service_unlock(ptr noundef %1, i32 noundef %3, i32 noundef %5) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_service_unlock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_change_mode(ptr nocapture noundef readonly %gpio, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pin = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 1
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_change_mode, i32 noundef 127) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %change_mode = getelementptr inbounds %struct.hw_gpio_pin_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %change_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %change_mode, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %mode) #4
  br label %return

return:                                           ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_gpio_get_id(ptr nocapture noundef readonly %gpio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_gpio_get_enum(ptr nocapture noundef readonly %gpio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %en = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %0 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %en, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_set_config(ptr nocapture noundef readonly %gpio, ptr noundef %config_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pin = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 1
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_gpio_set_config, i32 noundef 151) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %set_config = getelementptr inbounds %struct.hw_gpio_pin_funcs, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_config, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %config_data) #4
  br label %return

return:                                           ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_gpio_get_pin_info(ptr nocapture noundef readonly %gpio, ptr noundef %pin_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %translate = getelementptr inbounds %struct.gpio_service, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %translate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %translate, align 4
  %id_to_offset = getelementptr inbounds %struct.hw_translate_funcs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %id_to_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_to_offset, align 4
  %id = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %en = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %8 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en, align 4
  %call = tail call zeroext i1 %5(i32 noundef %7, i32 noundef %9, ptr noundef %pin_info) #4
  %cond = select i1 %call, i32 0, i32 2
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_gpio_get_sync_source(ptr nocapture noundef readonly %gpio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 6, label %sw.bb7
    i32 3, label %sw.bb14
    i32 7, label %sw.bb19
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %en = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %3 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %5 = icmp ult i32 %4, 6
  %switch.offset = add i32 %4, 14
  %spec.select = select i1 %5, i32 %switch.offset, i32 0
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %en8 = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %6 = ptrtoint ptr %en8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %en8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp ult i32 %7, 4
  %switch.offset34 = add i32 %7, 22
  %spec.select37 = select i1 %8, i32 %switch.offset34, i32 0
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %en15 = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %9 = ptrtoint ptr %en15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %en15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %switch.selectcmp = icmp eq i32 %10, 1
  %switch.select = select i1 %switch.selectcmp, i32 21, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %switch.selectcmp31 = icmp eq i32 %10, 0
  %switch.select32 = select i1 %switch.selectcmp31, i32 20, i32 %switch.select
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %en20 = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 3
  %11 = ptrtoint ptr %en20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %en20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %13 = icmp ult i32 %12, 4
  %switch.offset36 = add i32 %12, 10
  %spec.select38 = select i1 %13, i32 %switch.offset36, i32 0
  br label %return

return:                                           ; preds = %sw.bb19, %sw.bb14, %sw.bb7, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.select32, %sw.bb14 ], [ 0, %entry.return_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select37, %sw.bb7 ], [ %spec.select38, %sw.bb19 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_gpio_get_output_state(ptr nocapture noundef readonly %gpio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %output_state = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 6
  %0 = ptrtoint ptr %output_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output_state, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dal_gpio_get_ddc(ptr nocapture noundef readonly %gpio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_container = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 4
  %0 = ptrtoint ptr %hw_container to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_container, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dal_gpio_get_hpd(ptr nocapture noundef readonly %gpio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_container = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 4
  %0 = ptrtoint ptr %hw_container to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_container, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dal_gpio_get_generic(ptr nocapture noundef readonly %gpio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_container = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 4
  %0 = ptrtoint ptr %hw_container to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_container, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_gpio_close(ptr noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gpio, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %pin = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 1
  tail call void @dal_gpio_service_close(ptr noundef %1, ptr noundef %pin) #4
  %mode = getelementptr inbounds %struct.gpio, ptr %gpio, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_gpio_service_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_gpio_create(ptr noundef %service, i32 noundef %id, i32 noundef %en, i32 noundef %output_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 278, i32 noundef 9, ptr noundef null) #4
  tail call void @kgdb_breakpoint() #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %service, ptr %call7.i.i, align 8
  %pin = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pin, align 4
  %id25 = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %id25 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %id25, align 8
  %en26 = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %en26 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %en, ptr %en26, align 4
  %mode = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mode, align 4
  %output_state27 = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %output_state27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %output_state, ptr %output_state27, align 8
  %7 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %id, label %do.end62 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb37
    i32 3, label %sw.bb43
    i32 6, label %if.end23.cleanup_crit_edge
    i32 7, label %if.end23.cleanup_crit_edge113
  ]

if.end23.cleanup_crit_edge113:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %funcs = getelementptr inbounds %struct.gpio_service, ptr %service, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %hw_container = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %service, align 4
  tail call void %11(ptr noundef %hw_container, ptr noundef %13, i32 noundef 0, i32 noundef %en) #4
  br label %cleanup

sw.bb30:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %funcs33 = getelementptr inbounds %struct.gpio_service, ptr %service, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs33, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %hw_container35 = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %service, align 4
  tail call void %17(ptr noundef %hw_container35, ptr noundef %19, i32 noundef 1, i32 noundef %en) #4
  br label %cleanup

sw.bb37:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %funcs40 = getelementptr inbounds %struct.gpio_service, ptr %service, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %funcs40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs40, align 4
  %init_generic = getelementptr inbounds %struct.hw_factory_funcs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %init_generic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_generic, align 4
  %hw_container41 = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %service, align 4
  tail call void %23(ptr noundef %hw_container41, ptr noundef %25, i32 noundef 2, i32 noundef %en) #4
  br label %cleanup

sw.bb43:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %funcs46 = getelementptr inbounds %struct.gpio_service, ptr %service, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %funcs46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs46, align 4
  %init_hpd = getelementptr inbounds %struct.hw_factory_funcs, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %init_hpd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_hpd, align 4
  %hw_container47 = getelementptr inbounds %struct.gpio, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %service, align 4
  tail call void %29(ptr noundef %hw_container47, ptr noundef %31, i32 noundef 3, i32 noundef %en) #4
  br label %cleanup

do.end62:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 9, ptr noundef null) #4
  tail call void @kgdb_breakpoint() #4
  %32 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pin, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %sw.bb43, %sw.bb37, %sw.bb30, %sw.bb, %if.end23.cleanup_crit_edge, %if.end23.cleanup_crit_edge113, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_gpio_destroy(ptr noundef %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gpio, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end24

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 320, i32 noundef 9, ptr noundef null) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false
  %id = getelementptr inbounds %struct.gpio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %sw.epilog.sink.split, label %if.end24.sw.epilog_crit_edge

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %hw_container33 = getelementptr inbounds %struct.gpio, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %hw_container33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_container33, align 4
  tail call void @kfree(ptr noundef %5) #4
  %6 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio, align 4
  %hw_container34 = getelementptr inbounds %struct.gpio, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %hw_container34 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %hw_container34, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end24.sw.epilog_crit_edge
  %9 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio, align 4
  tail call void @kfree(ptr noundef %10) #4
  %11 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %gpio, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c", i32 66, i32 3}
!2 = !{ptr @__func__.dal_gpio_open_ex, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dal_gpio_get_value, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c", i32 85, i32 3}
!5 = !{ptr @__func__.dal_gpio_set_value, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c", i32 97, i32 3}
!7 = !{ptr @__func__.dal_gpio_change_mode, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c", i32 127, i32 3}
!9 = !{ptr @__func__.dal_gpio_set_config, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c", i32 151, i32 3}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/gpio_base.c", i32 278, i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
