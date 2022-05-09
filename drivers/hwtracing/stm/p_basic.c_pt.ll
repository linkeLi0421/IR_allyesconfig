; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/stm/p_basic.c_pt.bc'
source_filename = "../drivers/hwtracing/stm/p_basic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stm_protocol_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.stm_output = type { %struct.spinlock, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.stm_data = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_stm_p_basic__170_43_basic_stm_init6 = internal global ptr @basic_stm_init, section ".initcall6.init", align 4
@__exitcall_basic_stm_exit = internal global ptr @basic_stm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [51 x i8] c"stm_p_basic.file=drivers/hwtracing/stm/stm_p_basic\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [27 x i8] c"stm_p_basic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [58 x i8] c"stm_p_basic.description=Basic STM framing protocol driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [75 x i8] c"stm_p_basic.author=Alexander Shishkin <alexander.shishkin@linux.intel.com>\00", section ".modinfo", align 1
@basic_pdrv = internal constant { %struct.stm_protocol_driver, [32 x i8] } { %struct.stm_protocol_driver { ptr null, ptr @.str, ptr @basic_write, ptr null, ptr null, ptr null, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p_basic\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"basic_pdrv\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 27, i32 41 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [35 x i8] c"../drivers/hwtracing/stm/p_basic.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 29, i32 10 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_basic_stm_exit, ptr @__initcall__kmod_stm_p_basic__170_43_basic_stm_init6, ptr @basic_pdrv, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @basic_pdrv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @basic_stm_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stm_register_protocol(ptr noundef nonnull @basic_pdrv) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @basic_stm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @stm_unregister_protocol(ptr noundef nonnull @basic_pdrv) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_register_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @basic_write(ptr noundef %data, ptr nocapture noundef readonly %output, i32 noundef %chan, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %nil = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.stm_output, ptr %output, i32 0, i32 2
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %add = add i32 %1, %chan
  %master = getelementptr inbounds %struct.stm_output, ptr %output, i32 0, i32 1
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nil) #3
  %4 = ptrtoint ptr %nil to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %nil, align 1
  %call = tail call i32 @stm_data_write(ptr noundef %data, i32 noundef %3, i32 noundef %add, i1 noundef zeroext true, ptr noundef %buf, i32 noundef %count) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %packet = getelementptr inbounds %struct.stm_data, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %packet, align 4
  %call1 = call i32 %6(ptr noundef %data, i32 noundef %3, i32 noundef %add, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %nil) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nil) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_data_write(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm_unregister_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_stm_p_basic__170_43_basic_stm_init6, !1, !"__initcall__kmod_stm_p_basic__170_43_basic_stm_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/stm/p_basic.c", i32 43, i32 1}
!2 = !{ptr @__exitcall_basic_stm_exit, !3, !"__exitcall_basic_stm_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/stm/p_basic.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_file171, !5, !"__UNIQUE_ID_file171", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/stm/p_basic.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license172, !5, !"__UNIQUE_ID_license172", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/hwtracing/stm/p_basic.c", i32 47, i32 1}
!9 = !{ptr @__UNIQUE_ID_author174, !10, !"__UNIQUE_ID_author174", i1 false, i1 false}
!10 = !{!"../drivers/hwtracing/stm/p_basic.c", i32 48, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwtracing/stm/p_basic.c", i32 29, i32 10}
!13 = !{ptr @basic_pdrv, !14, !"basic_pdrv", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/stm/p_basic.c", i32 27, i32 41}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
