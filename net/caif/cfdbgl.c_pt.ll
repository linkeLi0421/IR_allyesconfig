; ModuleID = '/llk/IR_all_yes/net/caif/cfdbgl.c_pt.bc'
source_filename = "../net/caif/cfdbgl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.caif_payload_info = type { ptr, i16, i16 }
%struct.cfsrvl = type { %struct.cflayer, i8, i8, i8, i8, ptr, %struct.dev_info, ptr, ptr, %struct.callback_head }
%struct.dev_info = type { ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dbg%d\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../net/caif/cfdbgl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 29, i32 48 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfdbgl_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 84) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cfsrvl_init(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %channel_id, ptr noundef %dev_info, i1 noundef zeroext false) #5
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfdbgl_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfdbgl_transmit, ptr %transmit, align 4
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 8
  %conv = zext i8 %channel_id to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfsrvl_init(ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfdbgl_receive(ptr nocapture noundef readonly %layr, ptr noundef %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layr, align 4
  %receive = getelementptr inbounds %struct.cflayer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %receive, align 4
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %pkt) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfdbgl_transmit(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #5
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !11
  %call = call zeroext i1 @cfsrvl_ready(ptr noundef %layr, ptr noundef nonnull %ret) #5
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @cfpkt_destroy(ptr noundef %pkt) #5
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call ptr @cfpkt_info(ptr noundef %pkt) #5
  %id = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 7
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %conv = trunc i32 %4 to i16
  %channel_id = getelementptr inbounds %struct.caif_payload_info, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %channel_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %channel_id, align 2
  %dev_info = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev_info, ptr %call1, align 4
  %dn = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 1
  %7 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transmit, align 4
  %call4 = call i32 %10(ptr noundef %8, ptr noundef %pkt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.end ], [ %2, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #5
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfsrvl_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/caif/cfdbgl.c", i32 29, i32 48}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
