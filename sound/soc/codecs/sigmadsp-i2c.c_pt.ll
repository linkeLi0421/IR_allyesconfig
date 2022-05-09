; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/sigmadsp-i2c.c_pt.bc'
source_filename = "../sound/soc/codecs/sigmadsp-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_sigmadsp_init_i2c\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_sigmadsp_init_i2c\09\09\09\09"
module asm "\09.long\09__crc_devm_sigmadsp_init_i2c\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_sigmadsp_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_sigmadsp_init_i2c\22\09\09\09\09\09"
module asm "__kstrtabns_devm_sigmadsp_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.sigmadsp = type { ptr, %struct.list_head, %struct.list_head, %struct.snd_pcm_hw_constraint_list, i32, ptr, ptr, %struct.mutex, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_devm_sigmadsp_init_i2c = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_sigmadsp_init_i2c = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_sigmadsp_init_i2c = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_sigmadsp_init_i2c to i32), ptr @__kstrtab_devm_sigmadsp_init_i2c, ptr @__kstrtabns_devm_sigmadsp_init_i2c }, section "___ksymtab_gpl+devm_sigmadsp_init_i2c", align 4
@__UNIQUE_ID_author288 = internal constant [65 x i8] c"snd_soc_sigmadsp_i2c.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [62 x i8] c"snd_soc_sigmadsp_i2c.description=SigmaDSP I2C firmware loader\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [64 x i8] c"snd_soc_sigmadsp_i2c.file=sound/soc/codecs/snd-soc-sigmadsp-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [33 x i8] c"snd_soc_sigmadsp_i2c.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_devm_sigmadsp_init_i2c], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_sigmadsp_init_i2c(ptr noundef %client, ptr noundef %ops, ptr noundef %firmware_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_sigmadsp_init(ptr noundef %dev, ptr noundef %ops, ptr noundef %firmware_name) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %control_data = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %control_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %control_data, align 4
  %write = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sigmadsp_write_i2c, ptr %write, align 4
  %read = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sigmadsp_read_i2c, ptr %read, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_sigmadsp_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sigmadsp_write_i2c(ptr noundef %control_data, i32 noundef %addr, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3521) #8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %addr to i16
  %0 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %call9.i.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 2
  %1 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %len)
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %control_data, ptr noundef nonnull %call9.i.i, i32 noundef %add, i16 noundef zeroext 0) #5
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sigmadsp_read_i2c(ptr nocapture noundef readonly %control_data, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #5
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #5
  %conv = trunc i32 %addr to i16
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %buf, align 2
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %control_data, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msgs, align 4
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %len4, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %7 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %buf7, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %arrayidx10 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayidx10, align 4
  %conv12 = trunc i32 %len to i16
  %len14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %len14 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv12, ptr %len14, align 4
  %buf16 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %buf16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %buf16, align 4
  %flags18 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags18, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %control_data, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp21.not = icmp eq i32 %call, 2
  %. = select i1 %cmp21.not, i32 0, i32 -5
  %retval.0 = select i1 %cmp, i32 %call, i32 %.
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_devm_sigmadsp_init_i2c, !1, !"__ksymtab_devm_sigmadsp_init_i2c", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/sigmadsp-i2c.c", i32 92, i32 1}
!2 = !{ptr @__UNIQUE_ID_author288, !3, !"__UNIQUE_ID_author288", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/sigmadsp-i2c.c", i32 94, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/sigmadsp-i2c.c", i32 95, i32 1}
!6 = !{ptr @__UNIQUE_ID_file290, !7, !"__UNIQUE_ID_file290", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/sigmadsp-i2c.c", i32 96, i32 1}
!8 = !{ptr @__UNIQUE_ID_license291, !7, !"__UNIQUE_ID_license291", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
