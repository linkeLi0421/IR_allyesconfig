; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8192/mt8192-afe-control.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8192/mt8192-afe-control.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mt8192_afe_private = type { ptr, ptr, ptr, ptr, i32, i32, [44 x i8], [44 x ptr], i32, [4 x i32], [4 x i32], i32, i32, i32, i32, [11 x i32] }

@mt8192_general_rate_transform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(), rate %u invalid, use %d!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt8192_general_rate_transform\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sound/soc/mediatek/mt8192/mt8192-afe-control.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8192_general_rate_transform._entry_ptr = internal global ptr @mt8192_general_rate_transform._entry, section ".printk_index", align 4
@dai_memif_rate_transform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dai_memif_rate_transform\00", [39 x i8] zeroinitializer }, align 32
@dai_memif_rate_transform._entry_ptr = internal global ptr @dai_memif_rate_transform._entry, section ".printk_index", align 4
@pcm_rate_transform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcm_rate_transform\00", [45 x i8] zeroinitializer }, align 32
@pcm_rate_transform._entry_ptr = internal global ptr @pcm_rate_transform._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 260000, i64 352800, i64 384000]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 12, i64 41, i64 42]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 16000, i64 32000, i64 48000]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 16000, i64 32000, i64 48000]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 83, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 103, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [50 x i8] c"../sound/soc/mediatek/mt8192/mt8192-afe-control.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 123, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @dai_memif_rate_transform._entry, ptr @dai_memif_rate_transform._entry_ptr, ptr @mt8192_general_rate_transform._entry, ptr @mt8192_general_rate_transform._entry_ptr, ptr @pcm_rate_transform._entry, ptr @pcm_rate_transform._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_general_rate_transform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_memif_rate_transform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_rate_transform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_general_rate_transform(ptr noundef %dev, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %do.end [
    i32 8000, label %entry.return_crit_edge
    i32 11025, label %sw.bb1
    i32 12000, label %sw.bb2
    i32 16000, label %sw.bb3
    i32 22050, label %sw.bb4
    i32 24000, label %sw.bb5
    i32 32000, label %sw.bb6
    i32 44100, label %sw.bb7
    i32 48000, label %sw.bb8
    i32 88200, label %sw.bb9
    i32 96000, label %sw.bb10
    i32 176400, label %sw.bb11
    i32 192000, label %sw.bb12
    i32 260000, label %sw.bb13
    i32 352800, label %sw.bb14
    i32 384000, label %sw.bb15
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %rate, i32 noundef 10) #6
  br label %return

return:                                           ; preds = %do.end, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 10, %do.end ], [ 3, %sw.bb15 ], [ 7, %sw.bb14 ], [ 15, %sw.bb13 ], [ 14, %sw.bb12 ], [ 13, %sw.bb11 ], [ 12, %sw.bb10 ], [ 11, %sw.bb9 ], [ 10, %sw.bb8 ], [ 9, %sw.bb7 ], [ 8, %sw.bb6 ], [ 6, %sw.bb5 ], [ 5, %sw.bb4 ], [ 4, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_rate_transform(ptr noundef %dev, i32 noundef %rate, i32 noundef %aud_blk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %aud_blk to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %aud_blk, label %sw.default [
    i32 10, label %entry.sw.bb_crit_edge
    i32 12, label %entry.sw.bb_crit_edge13
    i32 41, label %entry.sw.bb1_crit_edge
    i32 42, label %entry.sw.bb1_crit_edge14
  ]

entry.sw.bb1_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13
  %1 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %rate, label %do.end.i [
    i32 8000, label %sw.bb.return_crit_edge
    i32 16000, label %sw.bb1.i
    i32 32000, label %sw.bb2.i
    i32 48000, label %sw.bb3.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %rate, i32 noundef 1) #6
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge14
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %rate, label %do.end.i11 [
    i32 8000, label %sw.bb1.return_crit_edge
    i32 16000, label %sw.bb1.i8
    i32 32000, label %sw.bb2.i9
    i32 48000, label %sw.bb3.i10
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1.i8:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb2.i9:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3.i10:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end.i11:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %rate, i32 noundef 2) #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @mt8192_general_rate_transform(ptr noundef %dev, i32 noundef %rate)
  br label %return

return:                                           ; preds = %sw.default, %do.end.i11, %sw.bb3.i10, %sw.bb2.i9, %sw.bb1.i8, %sw.bb1.return_crit_edge, %do.end.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.default ], [ 1, %do.end.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %sw.bb.return_crit_edge ], [ 2, %do.end.i11 ], [ 3, %sw.bb3.i10 ], [ 2, %sw.bb2.i9 ], [ 1, %sw.bb1.i8 ], [ 0, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_dai_set_priv(ptr nocapture noundef readonly %afe, i32 noundef %id, i32 noundef %priv_size, ptr noundef readonly %priv_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %priv_size, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %priv_data, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = call ptr @memcpy(ptr %call.i, ptr %priv_data, i32 %priv_size)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %arrayidx = getelementptr %struct.mt8192_afe_private, ptr %1, i32 0, i32 7, i32 %id
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-control.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt8192_general_rate_transform._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt8192_general_rate_transform._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-control.c", i32 103, i32 3}
!10 = !{ptr @dai_memif_rate_transform._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dai_memif_rate_transform._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-control.c", i32 123, i32 3}
!14 = !{ptr @pcm_rate_transform._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @pcm_rate_transform._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
