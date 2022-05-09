; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-sunxi.c_pt.bc'
source_filename = "../drivers/reset/reset-sunxi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.reset_simple_data = type { %struct.spinlock, ptr, %struct.reset_controller_dev, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@sunxi_early_reset_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-ahb1-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@sunxi_reset_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@reset_simple_ops = external dso_local constant %struct.reset_control_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [31 x i8] c"../drivers/reset/reset-sunxi.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 50, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @sunxi_reset_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_reset_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sun6i_reset_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @sunxi_early_reset_dt_ids, ptr noundef null) #4
  %tobool.not6 = icmp eq ptr %call.i, null
  br i1 %tobool.not6, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %sunxi_reset_init.exit.for.body_crit_edge, %for.body.lr.ph
  %np.07 = phi ptr [ %call.i, %for.body.lr.ph ], [ %call.i5, %sunxi_reset_init.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #4
  %1 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 100) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.sunxi_reset_init.exit_crit_edge, label %if.end.i

for.body.sunxi_reset_init.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sunxi_reset_init.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = call i32 @of_address_to_resource(ptr noundef nonnull %np.07, i32 noundef 0, ptr noundef nonnull %res.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.err_alloc.i_crit_edge

if.end.i.err_alloc.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_alloc.i

if.end4.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  %5 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res.i, align 4
  %sub.i.i = add i32 %4, 1
  %add.i.i = sub i32 %sub.i.i, %6
  %7 = ptrtoint ptr %np.07 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np.07, align 4
  %call6.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %6, i32 noundef %add.i.i, ptr noundef %8, i32 noundef 0) #4
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end4.i.err_alloc.i_crit_edge, label %if.end9.i

if.end4.i.err_alloc.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_alloc.i

if.end9.i:                                        ; preds = %if.end4.i
  %9 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res.i, align 4
  %call11.i = call ptr @ioremap(i32 noundef %10, i32 noundef %add.i.i) #4
  %membase.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11.i, ptr %membase.i, align 4
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.end9.i.err_alloc.i_crit_edge, label %do.body.i

if.end9.i.err_alloc.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_alloc.i

do.body.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @sunxi_reset_init.__key, i16 noundef signext 3) #4
  %rcdev.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 2
  %owner.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %owner.i, align 4
  %mul.i = shl i32 %add.i.i, 3
  %nr_resets.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %nr_resets.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i, ptr %nr_resets.i, align 8
  %14 = ptrtoint ptr %rcdev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @reset_simple_ops, ptr %rcdev.i, align 8
  %of_node.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %np.07, ptr %of_node.i, align 4
  %active_low.i = getelementptr inbounds %struct.reset_simple_data, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %active_low.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %active_low.i, align 4
  %call21.i = call i32 @reset_controller_register(ptr noundef %rcdev.i) #4
  br label %sunxi_reset_init.exit

err_alloc.i:                                      ; preds = %if.end9.i.err_alloc.i_crit_edge, %if.end4.i.err_alloc.i_crit_edge, %if.end.i.err_alloc.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %sunxi_reset_init.exit

sunxi_reset_init.exit:                            ; preds = %err_alloc.i, %do.body.i, %for.body.sunxi_reset_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #4
  %call.i5 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.07, ptr noundef nonnull @sunxi_early_reset_dt_ids, ptr noundef null) #4
  %tobool.not = icmp eq ptr %call.i5, null
  br i1 %tobool.not, label %sunxi_reset_init.exit.for.end_crit_edge, label %sunxi_reset_init.exit.for.body_crit_edge

sunxi_reset_init.exit.for.body_crit_edge:         ; preds = %sunxi_reset_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

sunxi_reset_init.exit.for.end_crit_edge:          ; preds = %sunxi_reset_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %sunxi_reset_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @sunxi_early_reset_dt_ids, !1, !"sunxi_early_reset_dt_ids", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-sunxi.c", i32 72, i32 34}
!2 = !{ptr @sunxi_reset_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/reset/reset-sunxi.c", i32 50, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
