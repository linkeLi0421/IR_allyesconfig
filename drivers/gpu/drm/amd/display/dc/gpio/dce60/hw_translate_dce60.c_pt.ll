; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/gpio/dce60/hw_translate_dce60.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce60/hw_translate_dce60.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hw_translate_funcs = type { ptr, ptr }
%struct.gpio_pin_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@funcs = internal constant { %struct.hw_translate_funcs, [24 x i8] } { %struct.hw_translate_funcs { ptr @offset_to_id, ptr @id_to_offset }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.offset_to_id = private unnamed_addr constant [13 x i8] c"offset_to_id\00", align 1
@__func__.index_from_vector = private unnamed_addr constant [18 x i8] c"index_from_vector\00", align 1
@__func__.id_to_offset = private unnamed_addr constant [13 x i8] c"id_to_offset\00", align 1
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 1511, i64 6404, i64 6465, i64 6469, i64 6477, i64 6481, i64 6485, i64 6489, i64 6493, i64 6497, i64 6501, i64 6505, i64 6509, i64 6513, i64 6517, i64 6520, i64 6521]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 256, i64 65536, i64 1048576, i64 2097152, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 256, i64 65536, i64 16777216, i64 67108864, i64 268435456]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 256]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 256, i64 65536, i64 16777216]
@__sancov_gen_cov_switch_values.5 = internal global [34 x i64] [i64 32, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.6 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.7 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.8 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 402, i32 40 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [76 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce60/hw_translate_dce60.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 96, i32 4 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @funcs, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dal_hw_translate_dce60_init(ptr nocapture noundef writeonly %translate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %translate to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @funcs, ptr %translate, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @offset_to_id(i32 noundef %offset, i32 noundef %mask, ptr nocapture noundef writeonly %id, ptr noundef writeonly %en) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %offset, label %do.body43 [
    i32 6469, label %sw.bb
    i32 6509, label %sw.bb8
    i32 6501, label %sw.bb18
    i32 6505, label %sw.bb24
    i32 1511, label %sw.bb32
    i32 6477, label %sw.bb33
    i32 6481, label %sw.bb34
    i32 6485, label %sw.bb35
    i32 6489, label %sw.bb36
    i32 6493, label %sw.bb37
    i32 6497, label %sw.bb38
    i32 6513, label %sw.bb39
    i32 6517, label %sw.bb40
    i32 6465, label %entry.return_crit_edge
    i32 6520, label %entry.return_crit_edge81
    i32 6521, label %entry.return_crit_edge82
    i32 6404, label %entry.return_crit_edge83
  ]

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %id, align 4
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %mask, label %do.body [
    i32 1, label %sw.bb1
    i32 256, label %sw.bb2
    i32 65536, label %sw.bb3
    i32 1048576, label %sw.bb4
    i32 2097152, label %sw.bb5
    i32 4194304, label %sw.bb6
    i32 8388608, label %sw.bb7
  ]

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %en, align 4
  br label %return

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %en, align 4
  br label %return

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %en, align 4
  br label %return

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %en, align 4
  br label %return

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %en, align 4
  br label %return

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %en, align 4
  br label %return

sw.bb7:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %en, align 4
  br label %return

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.offset_to_id, i32 noundef 96) #3
  tail call void @kgdb_breakpoint() #3
  br label %return

sw.bb8:                                           ; preds = %entry
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %id, align 4
  %11 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %mask, label %do.body16 [
    i32 1, label %sw.bb9
    i32 256, label %sw.bb10
    i32 65536, label %sw.bb11
    i32 16777216, label %sw.bb12
    i32 67108864, label %sw.bb13
    i32 268435456, label %sw.bb14
  ]

sw.bb9:                                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %en, align 4
  br label %return

sw.bb10:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %en, align 4
  br label %return

sw.bb11:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %en, align 4
  br label %return

sw.bb12:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %en, align 4
  br label %return

sw.bb13:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %en, align 4
  br label %return

sw.bb14:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %en, align 4
  br label %return

do.body16:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.offset_to_id, i32 noundef 123) #3
  tail call void @kgdb_breakpoint() #3
  br label %return

sw.bb18:                                          ; preds = %entry
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %id, align 4
  %19 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %mask, label %do.body22 [
    i32 1, label %sw.bb19
    i32 256, label %sw.bb20
  ]

sw.bb19:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %en, align 4
  br label %return

sw.bb20:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %en, align 4
  br label %return

do.body22:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.offset_to_id, i32 noundef 138) #3
  tail call void @kgdb_breakpoint() #3
  br label %return

sw.bb24:                                          ; preds = %entry
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %id, align 4
  %23 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %mask, label %do.body30 [
    i32 1, label %sw.bb25
    i32 256, label %sw.bb26
    i32 65536, label %sw.bb27
    i32 16777216, label %sw.bb28
  ]

sw.bb25:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %en, align 4
  br label %return

sw.bb26:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %en, align 4
  br label %return

sw.bb27:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %en, align 4
  br label %return

sw.bb28:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %en, align 4
  br label %return

do.body30:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.offset_to_id, i32 noundef 159) #3
  tail call void @kgdb_breakpoint() #3
  br label %return

sw.bb32:                                          ; preds = %entry
  %28 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %id, align 4
  %29 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %mask, label %if.end.31.i [
    i32 1, label %sw.bb32.index_from_vector.exit_crit_edge
    i32 2, label %cleanup.fold.split.i
    i32 4, label %cleanup.fold.split10.i
    i32 8, label %cleanup.fold.split11.i
    i32 16, label %cleanup.fold.split12.i
    i32 32, label %cleanup.fold.split13.i
    i32 64, label %cleanup.fold.split14.i
    i32 128, label %cleanup.fold.split15.i
    i32 256, label %cleanup.fold.split16.i
    i32 512, label %cleanup.fold.split17.i
    i32 1024, label %cleanup.fold.split18.i
    i32 2048, label %cleanup.fold.split19.i
    i32 4096, label %cleanup.fold.split20.i
    i32 8192, label %cleanup.fold.split21.i
    i32 16384, label %cleanup.fold.split22.i
    i32 32768, label %cleanup.fold.split23.i
    i32 65536, label %cleanup.fold.split24.i
    i32 131072, label %cleanup.fold.split25.i
    i32 262144, label %cleanup.fold.split26.i
    i32 524288, label %cleanup.fold.split27.i
    i32 1048576, label %cleanup.fold.split28.i
    i32 2097152, label %cleanup.fold.split29.i
    i32 4194304, label %cleanup.fold.split30.i
    i32 8388608, label %cleanup.fold.split31.i
    i32 16777216, label %cleanup.fold.split32.i
    i32 33554432, label %cleanup.fold.split33.i
    i32 67108864, label %cleanup.fold.split34.i
    i32 134217728, label %cleanup.fold.split35.i
    i32 268435456, label %cleanup.fold.split36.i
    i32 536870912, label %cleanup.fold.split37.i
    i32 1073741824, label %cleanup.fold.split38.i
    i32 -2147483648, label %cleanup.fold.split39.i
  ]

sw.bb32.index_from_vector.exit_crit_edge:         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

if.end.31.i:                                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.index_from_vector, i32 noundef 58) #3
  tail call void @kgdb_breakpoint() #3
  br label %index_from_vector.exit

cleanup.fold.split.i:                             ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split10.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split11.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split12.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split13.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split14.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split15.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split16.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split17.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split18.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split19.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split20.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split21.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split22.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split23.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split24.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split25.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split26.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split27.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split28.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split29.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split30.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split31.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split32.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split33.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split34.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split35.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split36.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split37.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split38.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

cleanup.fold.split39.i:                           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #5
  br label %index_from_vector.exit

index_from_vector.exit:                           ; preds = %cleanup.fold.split39.i, %cleanup.fold.split38.i, %cleanup.fold.split37.i, %cleanup.fold.split36.i, %cleanup.fold.split35.i, %cleanup.fold.split34.i, %cleanup.fold.split33.i, %cleanup.fold.split32.i, %cleanup.fold.split31.i, %cleanup.fold.split30.i, %cleanup.fold.split29.i, %cleanup.fold.split28.i, %cleanup.fold.split27.i, %cleanup.fold.split26.i, %cleanup.fold.split25.i, %cleanup.fold.split24.i, %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split21.i, %cleanup.fold.split20.i, %cleanup.fold.split19.i, %cleanup.fold.split18.i, %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split.i, %if.end.31.i, %sw.bb32.index_from_vector.exit_crit_edge
  %cmp = phi i1 [ true, %sw.bb32.index_from_vector.exit_crit_edge ], [ false, %if.end.31.i ], [ true, %cleanup.fold.split.i ], [ true, %cleanup.fold.split10.i ], [ true, %cleanup.fold.split11.i ], [ true, %cleanup.fold.split12.i ], [ true, %cleanup.fold.split13.i ], [ true, %cleanup.fold.split14.i ], [ true, %cleanup.fold.split15.i ], [ true, %cleanup.fold.split16.i ], [ true, %cleanup.fold.split17.i ], [ true, %cleanup.fold.split18.i ], [ true, %cleanup.fold.split19.i ], [ true, %cleanup.fold.split20.i ], [ true, %cleanup.fold.split21.i ], [ true, %cleanup.fold.split22.i ], [ true, %cleanup.fold.split23.i ], [ true, %cleanup.fold.split24.i ], [ true, %cleanup.fold.split25.i ], [ true, %cleanup.fold.split26.i ], [ true, %cleanup.fold.split27.i ], [ true, %cleanup.fold.split28.i ], [ true, %cleanup.fold.split29.i ], [ true, %cleanup.fold.split30.i ], [ true, %cleanup.fold.split31.i ], [ true, %cleanup.fold.split32.i ], [ true, %cleanup.fold.split33.i ], [ true, %cleanup.fold.split34.i ], [ true, %cleanup.fold.split35.i ], [ true, %cleanup.fold.split36.i ], [ true, %cleanup.fold.split37.i ], [ true, %cleanup.fold.split38.i ], [ false, %cleanup.fold.split39.i ]
  %retval.0.i = phi i32 [ 0, %sw.bb32.index_from_vector.exit_crit_edge ], [ 32, %if.end.31.i ], [ 1, %cleanup.fold.split.i ], [ 2, %cleanup.fold.split10.i ], [ 3, %cleanup.fold.split11.i ], [ 4, %cleanup.fold.split12.i ], [ 5, %cleanup.fold.split13.i ], [ 6, %cleanup.fold.split14.i ], [ 7, %cleanup.fold.split15.i ], [ 8, %cleanup.fold.split16.i ], [ 9, %cleanup.fold.split17.i ], [ 10, %cleanup.fold.split18.i ], [ 11, %cleanup.fold.split19.i ], [ 12, %cleanup.fold.split20.i ], [ 13, %cleanup.fold.split21.i ], [ 14, %cleanup.fold.split22.i ], [ 15, %cleanup.fold.split23.i ], [ 16, %cleanup.fold.split24.i ], [ 17, %cleanup.fold.split25.i ], [ 18, %cleanup.fold.split26.i ], [ 19, %cleanup.fold.split27.i ], [ 20, %cleanup.fold.split28.i ], [ 21, %cleanup.fold.split29.i ], [ 22, %cleanup.fold.split30.i ], [ 23, %cleanup.fold.split31.i ], [ 24, %cleanup.fold.split32.i ], [ 25, %cleanup.fold.split33.i ], [ 26, %cleanup.fold.split34.i ], [ 27, %cleanup.fold.split35.i ], [ 28, %cleanup.fold.split36.i ], [ 29, %cleanup.fold.split37.i ], [ 30, %cleanup.fold.split38.i ], [ 31, %cleanup.fold.split39.i ]
  %30 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i, ptr %en, align 4
  br label %return

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %en, align 4
  br label %return

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %en, align 4
  br label %return

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %en, align 4
  br label %return

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %en, align 4
  br label %return

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %en, align 4
  br label %return

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %en, align 4
  br label %return

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %en, align 4
  br label %return

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %en, align 4
  br label %return

do.body43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.offset_to_id, i32 noundef 205) #3
  tail call void @kgdb_breakpoint() #3
  br label %return

return:                                           ; preds = %do.body43, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %index_from_vector.exit, %do.body30, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %do.body22, %sw.bb20, %sw.bb19, %do.body16, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %do.body, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83
  %retval.0 = phi i1 [ false, %do.body43 ], [ true, %sw.bb40 ], [ true, %sw.bb39 ], [ true, %sw.bb38 ], [ true, %sw.bb37 ], [ true, %sw.bb36 ], [ true, %sw.bb35 ], [ true, %sw.bb34 ], [ true, %sw.bb33 ], [ %cmp, %index_from_vector.exit ], [ false, %do.body30 ], [ true, %sw.bb28 ], [ true, %sw.bb27 ], [ true, %sw.bb26 ], [ true, %sw.bb25 ], [ false, %do.body22 ], [ true, %sw.bb20 ], [ true, %sw.bb19 ], [ false, %do.body16 ], [ true, %sw.bb14 ], [ true, %sw.bb13 ], [ true, %sw.bb12 ], [ true, %sw.bb11 ], [ true, %sw.bb10 ], [ true, %sw.bb9 ], [ false, %do.body ], [ true, %sw.bb7 ], [ true, %sw.bb6 ], [ true, %sw.bb5 ], [ true, %sw.bb4 ], [ true, %sw.bb3 ], [ true, %sw.bb2 ], [ true, %sw.bb1 ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge81 ], [ false, %entry.return_crit_edge82 ], [ false, %entry.return_crit_edge83 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @id_to_offset(i32 noundef %id, i32 noundef %en, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %id, label %do.body116 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb39
    i32 3, label %sw.bb60
    i32 6, label %sw.bb79
    i32 7, label %sw.bb92
    i32 4, label %sw.epilog119
  ]

sw.bb:                                            ; preds = %entry
  %mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %mask, align 4
  %2 = zext i32 %en to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %en, label %do.body [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 5, label %sw.bb10
    i32 6, label %sw.bb12
    i32 7, label %sw.bb14
  ]

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6477, ptr %info, align 4
  br label %if.then

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6481, ptr %info, align 4
  br label %if.then

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6485, ptr %info, align 4
  br label %if.then

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6489, ptr %info, align 4
  br label %if.then

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6493, ptr %info, align 4
  br label %if.then

sw.bb10:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6497, ptr %info, align 4
  br label %if.then

sw.bb12:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6513, ptr %info, align 4
  br label %if.then

sw.bb14:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6517, ptr %info, align 4
  br label %if.then

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.id_to_offset, i32 noundef 246) #3
  tail call void @kgdb_breakpoint() #3
  br label %if.end

sw.bb16:                                          ; preds = %entry
  %mask17 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %11 = ptrtoint ptr %mask17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %mask17, align 4
  %12 = zext i32 %en to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %en, label %do.body35 [
    i32 0, label %sw.bb18
    i32 1, label %sw.bb20
    i32 2, label %sw.bb22
    i32 3, label %sw.bb24
    i32 4, label %sw.bb26
    i32 5, label %sw.bb28
    i32 6, label %sw.bb30
    i32 7, label %sw.bb32
  ]

sw.bb18:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6477, ptr %info, align 4
  br label %if.then

sw.bb20:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6481, ptr %info, align 4
  br label %if.then

sw.bb22:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6485, ptr %info, align 4
  br label %if.then

sw.bb24:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6489, ptr %info, align 4
  br label %if.then

sw.bb26:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6493, ptr %info, align 4
  br label %if.then

sw.bb28:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6497, ptr %info, align 4
  br label %if.then

sw.bb30:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6513, ptr %info, align 4
  br label %if.then

sw.bb32:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6517, ptr %info, align 4
  br label %if.then

do.body35:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.id_to_offset, i32 noundef 278) #3
  tail call void @kgdb_breakpoint() #3
  br label %if.end

sw.bb39:                                          ; preds = %entry
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6469, ptr %info, align 4
  %22 = zext i32 %en to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %en, label %do.body56 [
    i32 0, label %sw.bb41
    i32 1, label %sw.bb43
    i32 2, label %sw.bb45
    i32 3, label %sw.bb47
    i32 4, label %sw.bb49
    i32 5, label %sw.bb51
    i32 6, label %sw.bb53
  ]

sw.bb41:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  %mask42 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %23 = ptrtoint ptr %mask42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %mask42, align 4
  br label %if.then

sw.bb43:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  %mask44 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %mask44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %mask44, align 4
  br label %if.then

sw.bb45:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  %mask46 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %25 = ptrtoint ptr %mask46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65536, ptr %mask46, align 4
  br label %if.then

sw.bb47:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  %mask48 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %26 = ptrtoint ptr %mask48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1048576, ptr %mask48, align 4
  br label %if.then

sw.bb49:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  %mask50 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %27 = ptrtoint ptr %mask50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2097152, ptr %mask50, align 4
  br label %if.then

sw.bb51:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  %mask52 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %28 = ptrtoint ptr %mask52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4194304, ptr %mask52, align 4
  br label %if.then

sw.bb53:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  %mask54 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %29 = ptrtoint ptr %mask54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8388608, ptr %mask54, align 4
  br label %if.then

do.body56:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.id_to_offset, i32 noundef 307) #3
  tail call void @kgdb_breakpoint() #3
  br label %if.end

sw.bb60:                                          ; preds = %entry
  %30 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6509, ptr %info, align 4
  %31 = zext i32 %en to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %en, label %do.body75 [
    i32 0, label %sw.bb62
    i32 1, label %sw.bb64
    i32 2, label %sw.bb66
    i32 3, label %sw.bb68
    i32 4, label %sw.bb70
    i32 5, label %sw.bb72
  ]

sw.bb62:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #5
  %mask63 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %32 = ptrtoint ptr %mask63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %mask63, align 4
  br label %if.then

sw.bb64:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #5
  %mask65 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %33 = ptrtoint ptr %mask65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 256, ptr %mask65, align 4
  br label %if.then

sw.bb66:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #5
  %mask67 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %34 = ptrtoint ptr %mask67 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65536, ptr %mask67, align 4
  br label %if.then

sw.bb68:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #5
  %mask69 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %35 = ptrtoint ptr %mask69 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16777216, ptr %mask69, align 4
  br label %if.then

sw.bb70:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #5
  %mask71 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %36 = ptrtoint ptr %mask71 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 67108864, ptr %mask71, align 4
  br label %if.then

sw.bb72:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #5
  %mask73 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %37 = ptrtoint ptr %mask73 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 268435456, ptr %mask73, align 4
  br label %if.then

do.body75:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.id_to_offset, i32 noundef 333) #3
  tail call void @kgdb_breakpoint() #3
  br label %if.end

sw.bb79:                                          ; preds = %entry
  %38 = zext i32 %en to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %en, label %do.body88 [
    i32 0, label %sw.bb80
    i32 1, label %sw.bb83
  ]

sw.bb80:                                          ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 6501, ptr %info, align 4
  %mask82 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %40 = ptrtoint ptr %mask82 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %mask82, align 4
  br label %if.then

sw.bb83:                                          ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6501, ptr %info, align 4
  %mask85 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %42 = ptrtoint ptr %mask85 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %mask85, align 4
  br label %if.then

do.body88:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.id_to_offset, i32 noundef 350) #3
  tail call void @kgdb_breakpoint() #3
  br label %if.end

sw.bb92:                                          ; preds = %entry
  %43 = zext i32 %en to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %en, label %do.body106 [
    i32 0, label %sw.bb93
    i32 1, label %sw.bb96
    i32 2, label %sw.bb99
    i32 3, label %sw.bb102
  ]

sw.bb93:                                          ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6505, ptr %info, align 4
  %mask95 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %45 = ptrtoint ptr %mask95 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %mask95, align 4
  br label %if.then

sw.bb96:                                          ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6505, ptr %info, align 4
  %mask98 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %47 = ptrtoint ptr %mask98 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 256, ptr %mask98, align 4
  br label %if.then

sw.bb99:                                          ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #5
  %48 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 6505, ptr %info, align 4
  %mask101 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %49 = ptrtoint ptr %mask101 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 65536, ptr %mask101, align 4
  br label %if.then

sw.bb102:                                         ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 6505, ptr %info, align 4
  %mask104 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %51 = ptrtoint ptr %mask104 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16777216, ptr %mask104, align 4
  br label %if.then

do.body106:                                       ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.id_to_offset, i32 noundef 374) #3
  tail call void @kgdb_breakpoint() #3
  br label %if.end

do.body116:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.id_to_offset, i32 noundef 385) #3
  tail call void @kgdb_breakpoint() #3
  br label %if.end

sw.epilog119:                                     ; preds = %entry
  %52 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1511, ptr %info, align 4
  %shl = shl nuw i32 1, %en
  %mask112 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %53 = ptrtoint ptr %mask112 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl, ptr %mask112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %en)
  %cmp = icmp ult i32 %en, 5
  br i1 %cmp, label %sw.epilog119.if.then_crit_edge, label %sw.epilog119.if.end_crit_edge

sw.epilog119.if.end_crit_edge:                    ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

sw.epilog119.if.then_crit_edge:                   ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %sw.epilog119.if.then_crit_edge, %sw.bb102, %sw.bb99, %sw.bb96, %sw.bb93, %sw.bb83, %sw.bb80, %sw.bb72, %sw.bb70, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %info, align 4
  %add = add i32 %55, 2
  %offset_y = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 1
  %56 = ptrtoint ptr %offset_y to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add, ptr %offset_y, align 4
  %add122 = add i32 %55, 1
  %offset_en = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 2
  %57 = ptrtoint ptr %offset_en to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add122, ptr %offset_en, align 4
  %sub = add i32 %55, -1
  %offset_mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 3
  %58 = ptrtoint ptr %offset_mask to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub, ptr %offset_mask, align 4
  %mask124 = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %59 = ptrtoint ptr %mask124 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask124, align 4
  %mask_y = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 5
  %61 = ptrtoint ptr %mask_y to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %mask_y, align 4
  %mask_en = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 6
  %62 = ptrtoint ptr %mask_en to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %mask_en, align 4
  %mask_mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 7
  %63 = ptrtoint ptr %mask_mask to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %mask_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog119.if.end_crit_edge, %do.body116, %do.body106, %do.body88, %do.body75, %do.body56, %do.body35, %do.body
  %result.0.off0195 = phi i1 [ true, %if.then ], [ false, %sw.epilog119.if.end_crit_edge ], [ false, %do.body116 ], [ false, %do.body106 ], [ false, %do.body88 ], [ false, %do.body75 ], [ false, %do.body56 ], [ false, %do.body35 ], [ false, %do.body ]
  ret i1 %result.0.off0195
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @funcs, !1, !"funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce60/hw_translate_dce60.c", i32 402, i32 40}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce60/hw_translate_dce60.c", i32 96, i32 4}
!4 = !{ptr @__func__.offset_to_id, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.index_from_vector, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce60/hw_translate_dce60.c", i32 58, i32 2}
!7 = !{ptr @__func__.id_to_offset, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/gpio/dce60/hw_translate_dce60.c", i32 246, i32 4}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
