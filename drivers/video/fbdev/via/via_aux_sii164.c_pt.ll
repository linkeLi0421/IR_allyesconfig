; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/via_aux_sii164.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/via_aux_sii164.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.via_aux_bus = type { ptr, %struct.list_head }

@__const.probe.drv = private unnamed_addr constant { %struct.list_head, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr } { %struct.list_head { ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr) }, ptr inttoptr (i32 -1 to ptr), i8 -1, [3 x i8] c"\FF\FF\FF", ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr), ptr inttoptr (i32 -1 to ptr) }, align 4
@probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016viafb: Found %s at address 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/video/fbdev/via/via_aux_sii164.c\00", [55 x i8] zeroinitializer }, align 32
@probe._entry_ptr = internal global ptr @probe._entry, section ".printk_index", align 4
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SiI 164 PanelLink Transmitter\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 29, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [44 x i8] c"../drivers/video/fbdev/via/via_aux_sii164.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 13, i32 27 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @probe._entry, ptr @probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_aux_sii164_probe(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %start.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %len8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %buf10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %drivers.i.i = getelementptr inbounds %struct.via_aux_bus, ptr %bus, i32 0, i32 1
  %prev.i.i.i = getelementptr inbounds %struct.via_aux_bus, ptr %bus, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %probe.exit.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 56, %entry ], [ %indvars.iv.next, %probe.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start.addr.i.i) #5
  %2 = ptrtoint ptr %start.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %start.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #5
  %3 = call ptr @memset(ptr %0, i32 255, i32 16)
  %4 = trunc i32 %indvars.iv to i16
  %5 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg.i.i, align 4
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags.i.i, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %0, align 4
  %8 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %start.addr.i.i, ptr %buf3.i.i, align 4
  %9 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayinit.element.i.i, align 4
  %10 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags7.i.i, align 2
  %11 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len8.i.i, align 4
  %12 = ptrtoint ptr %buf10.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tmp.i, ptr %buf10.i.i, align 4
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start.addr.i.i) #5
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %for.body.probe.exit_crit_edge

for.body.probe.exit_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %probe.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %rhsv.i = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16778752, i32 %rhsv.i)
  %.not.i = icmp eq i32 %rhsv.i, 16778752
  br i1 %.not.i, label %do.end.i, label %lor.lhs.false.i.probe.exit_crit_edge

lor.lhs.false.i.probe.exit_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %probe.exit

do.end.i:                                         ; preds = %lor.lhs.false.i
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %indvars.iv) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.probe.exit_crit_edge, label %if.end.i.i

do.end.i.probe.exit_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %probe.exit

if.end.i.i:                                       ; preds = %do.end.i
  %17 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %call7.i.i.i, align 8
  %drv.sroa.5.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 8
  %18 = ptrtoint ptr %drv.sroa.5.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bus, ptr %drv.sroa.5.0.call7.i.i.sroa_idx.i, align 8
  %drv.sroa.7.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 12
  %19 = trunc i32 %indvars.iv to i8
  %20 = ptrtoint ptr %drv.sroa.7.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %drv.sroa.7.0.call7.i.i.sroa_idx.i, align 4
  %drv.sroa.9.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 13
  %21 = call ptr @memcpy(ptr %drv.sroa.9.0.call7.i.i.sroa_idx.i, ptr getelementptr inbounds ({ %struct.list_head, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr }, ptr @__const.probe.drv, i32 0, i32 3, i32 0), i32 3)
  %drv.sroa.918.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 16
  %22 = ptrtoint ptr %drv.sroa.918.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.3, ptr %drv.sroa.918.0.call7.i.i.sroa_idx.i, align 8
  %drv.sroa.10.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 20
  %23 = ptrtoint ptr %drv.sroa.10.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %drv.sroa.10.0.call7.i.i.sroa_idx.i, align 4
  %drv.sroa.11.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 24
  %24 = ptrtoint ptr %drv.sroa.11.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %drv.sroa.11.0.call7.i.i.sroa_idx.i, align 8
  %drv.sroa.12.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i.i, i32 28
  %25 = ptrtoint ptr %drv.sroa.12.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %drv.sroa.12.0.call7.i.i.sroa_idx.i, align 4
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %27, ptr noundef %drivers.i.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.probe.exit_crit_edge

if.end.i.i.probe.exit_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %probe.exit

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %drivers.i.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i.i, ptr %27, align 4
  br label %probe.exit

probe.exit:                                       ; preds = %if.end.i.i.i.i, %if.end.i.i.probe.exit_crit_edge, %do.end.i.probe.exit_crit_edge, %lor.lhs.false.i.probe.exit_crit_edge, %for.body.probe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end, label %probe.exit.for.body_crit_edge

probe.exit.for.body_crit_edge:                    ; preds = %probe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %probe.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

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
!1 = !{!"../drivers/video/fbdev/via/via_aux_sii164.c", i32 29, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/via_aux_sii164.c", i32 13, i32 27}
!8 = distinct !{null, !9, !"name", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/via_aux_sii164.c", i32 13, i32 20}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
