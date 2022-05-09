; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/via_aux_vt1631.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/via_aux_vt1631.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.via_aux_bus = type { ptr, %struct.list_head }

@__const.via_aux_vt1631_probe.drv = private unnamed_addr constant { %struct.list_head, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr } { %struct.list_head { ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr) }, ptr inttoptr (i32 -1 to ptr), i8 -1, [3 x i8] c"\FF\FF\FF", ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr) }, align 4
@via_aux_vt1631_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016viafb: Found %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"via_aux_vt1631_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/video/fbdev/via/via_aux_vt1631.c\00", [55 x i8] zeroinitializer }, align 32
@via_aux_vt1631_probe._entry_ptr = internal global ptr @via_aux_vt1631_probe._entry, section ".printk_index", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VT1631 LVDS Transmitter\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 29, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [44 x i8] c"../drivers/video/fbdev/via/via_aux_vt1631.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 13, i32 27 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @via_aux_vt1631_probe._entry, ptr @via_aux_vt1631_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_aux_vt1631_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_aux_vt1631_probe(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %start.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start.addr.i)
  %1 = ptrtoint ptr %start.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %start.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 56, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags.i, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %2, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %start.addr.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %8 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 56, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %9 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %10 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %11 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tmp, ptr %buf10.i, align 4
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start.addr.i)
  br i1 %cmp.i, label %lor.lhs.false, label %entry.cleanup8_crit_edge

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

lor.lhs.false:                                    ; preds = %entry
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %rhsv = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101814577, i32 %rhsv)
  %.not = icmp eq i32 %rhsv, 101814577
  br i1 %.not, label %do.end, label %lor.lhs.false.cleanup8_crit_edge

lor.lhs.false.cleanup8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

do.end:                                           ; preds = %lor.lhs.false
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup8_crit_edge, label %if.end.i

do.end.cleanup8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end.i:                                         ; preds = %do.end
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %call7.i.i, align 8
  %drv.sroa.5.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 8
  %17 = ptrtoint ptr %drv.sroa.5.0.call7.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bus, ptr %drv.sroa.5.0.call7.i.i.sroa_idx, align 8
  %drv.sroa.7.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 12
  %18 = ptrtoint ptr %drv.sroa.7.0.call7.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 56, ptr %drv.sroa.7.0.call7.i.i.sroa_idx, align 4
  %drv.sroa.9.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 13
  %19 = call ptr @memcpy(ptr %drv.sroa.9.0.call7.i.i.sroa_idx, ptr getelementptr inbounds ({ %struct.list_head, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr }, ptr @__const.via_aux_vt1631_probe.drv, i32 0, i32 3, i32 0), i32 3)
  %drv.sroa.916.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 16
  %20 = ptrtoint ptr %drv.sroa.916.0.call7.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.3, ptr %drv.sroa.916.0.call7.i.i.sroa_idx, align 8
  %drv.sroa.10.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %21 = ptrtoint ptr %drv.sroa.10.0.call7.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %drv.sroa.10.0.call7.i.i.sroa_idx, align 4
  %drv.sroa.11.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 24
  %22 = ptrtoint ptr %drv.sroa.11.0.call7.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %drv.sroa.11.0.call7.i.i.sroa_idx, align 8
  %drv.sroa.12.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 28
  %23 = ptrtoint ptr %drv.sroa.12.0.call7.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %drv.sroa.12.0.call7.i.i.sroa_idx, align 4
  %drivers.i = getelementptr inbounds %struct.via_aux_bus, ptr %bus, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.via_aux_bus, ptr %bus, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %25, ptr noundef %drivers.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.cleanup8_crit_edge

if.end.i.cleanup8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup8

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %drivers.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i, ptr %25, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %if.end.i.i.i, %if.end.i.cleanup8_crit_edge, %do.end.cleanup8_crit_edge, %lor.lhs.false.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/via_aux_vt1631.c", i32 29, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @via_aux_vt1631_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @via_aux_vt1631_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/via_aux_vt1631.c", i32 13, i32 27}
!8 = distinct !{null, !9, !"name", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/via_aux_vt1631.c", i32 13, i32 20}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
