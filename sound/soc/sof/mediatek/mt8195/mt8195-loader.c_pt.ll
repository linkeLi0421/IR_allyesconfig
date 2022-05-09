; ModuleID = '/llk/IR_all_yes/sound/soc/sof/mediatek/mt8195/mt8195-loader.c_pt.bc'
source_filename = "../sound/soc/sof/mediatek/mt8195/mt8195-loader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.snd_sof_dsp_write, ptr @.str.2, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sound/soc/sof/mediatek/mt8195/../../ops.h\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@___asan_gen_ = private constant [49 x i8] c"../sound/soc/sof/mediatek/mt8195/mt8195-loader.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [45 x i8] c"../sound/soc/sof/mediatek/mt8195/../../ops.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 299, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @snd_sof_dsp_write._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sof_hifixdsp_boot_sequence(ptr noundef %sdev, i32 noundef %boot_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  tail call void %7(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef %boot_addr) #3
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 36, i32 noundef 8, i32 noundef 8) #3
  %call1 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 36, i32 noundef 36, i32 noundef 36) #3
  %call2 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 36, i32 noundef 3, i32 noundef 3) #3
  %call3 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 36, i32 noundef 3, i32 noundef 0) #3
  %call4 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 12, i32 noundef 1, i32 noundef 1) #3
  %call5 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 36, i32 noundef 8, i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sof_hifixdsp_shutdown(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 36
  tail call void %7(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef 0) #3
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.snd_sof_dsp_write) #6
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 4, i32 noundef 36, i32 noundef 8, i32 noundef 8) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/mediatek/mt8195/../../ops.h", i32 299, i32 2}
!2 = !{ptr @snd_sof_dsp_write._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.snd_sof_dsp_write, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_sof_dsp_write._entry, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @snd_sof_dsp_write._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
