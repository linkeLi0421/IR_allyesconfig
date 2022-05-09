; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/fuse/speedo-tegra114.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/speedo-tegra114.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cpu_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1695, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@soc_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1123, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@rev_sku_to_speedo_ids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Tegra Unknown SKU %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rev_sku_to_speedo_ids\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/soc/tegra/fuse/speedo-tegra114.c\00", [55 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry_ptr = internal global ptr @rev_sku_to_speedo_ids._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 16]
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [44 x i8] c"../drivers/soc/tegra/fuse/speedo-tegra114.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 58, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @rev_sku_to_speedo_ids._entry, ptr @rev_sku_to_speedo_ids._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev_sku_to_speedo_ids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra114_init_speedo_data(ptr nocapture noundef %sku_info) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %threshold = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %threshold) #3
  %0 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %threshold, align 4, !annotation !19
  call fastcc void @rev_sku_to_speedo_ids(ptr noundef %sku_info, ptr noundef nonnull %threshold) #6
  %call = tail call i32 @tegra_fuse_read_early(i32 noundef 300) #7
  %add = add i32 %call, 1024
  %call4 = tail call i32 @tegra_fuse_read_early(i32 noundef 308) #7
  %1 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %threshold, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %cmp = phi i1 [ false, %entry ], [ true, %for.body.for.body_crit_edge ]
  %i.027 = phi i32 [ 0, %entry ], [ 1, %for.body.for.body_crit_edge ]
  %arrayidx5 = getelementptr [2 x [2 x i32]], ptr @cpu_process_speedos, i32 0, i32 %2, i32 %i.027
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp6 = icmp ult i32 %add, %4
  %brmerge = or i1 %cmp6, %cmp
  br i1 %brmerge, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  %i.027.mux = select i1 %cmp6, i32 %i.027, i32 2
  %cpu_process_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 1
  %5 = ptrtoint ptr %cpu_process_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.027.mux, ptr %cpu_process_id, align 4
  %6 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %threshold, align 4
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.end
  %cmp8 = phi i1 [ false, %for.end ], [ true, %for.body9.for.body9_crit_edge ]
  %i.128 = phi i32 [ 0, %for.end ], [ 1, %for.body9.for.body9_crit_edge ]
  %arrayidx11 = getelementptr [2 x [2 x i32]], ptr @soc_process_speedos, i32 0, i32 %7, i32 %i.128
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %9)
  %cmp12 = icmp ult i32 %call4, %9
  %brmerge29 = or i1 %cmp12, %cmp8
  br i1 %brmerge29, label %for.end17, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body9

for.end17:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #5
  %i.128.mux = select i1 %cmp12, i32 %i.128, i32 2
  %soc_process_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 5
  %10 = ptrtoint ptr %soc_process_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.128.mux, ptr %soc_process_id, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %threshold) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rev_sku_to_speedo_ids(ptr nocapture noundef %sku_info, ptr nocapture noundef writeonly %threshold) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sku_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sku_info, align 4
  %revision = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 11
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision, align 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %entry.sw.epilog_crit_edge26
    i32 5, label %entry.sw.epilog_crit_edge27
    i32 6, label %entry.sw.epilog_crit_edge28
    i32 3, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge29
  ]

entry.sw.bb1_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.epilog_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge26:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge29
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge26, %entry.sw.epilog_crit_edge27, %entry.sw.epilog_crit_edge28
  %.sink25 = phi i32 [ 0, %do.end ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge26 ], [ 1, %entry.sw.epilog_crit_edge27 ], [ 1, %entry.sw.epilog_crit_edge28 ]
  %.sink24 = phi i32 [ 0, %do.end ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge26 ], [ 0, %entry.sw.epilog_crit_edge27 ], [ 0, %entry.sw.epilog_crit_edge28 ]
  %cpu_speedo_id5 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %5 = ptrtoint ptr %cpu_speedo_id5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink25, ptr %cpu_speedo_id5, align 4
  %soc_speedo_id6 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %6 = ptrtoint ptr %soc_speedo_id6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink24, ptr %soc_speedo_id6, align 4
  %7 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink24, ptr %threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %sw.epilog.if.end11_crit_edge

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then:                                          ; preds = %sw.epilog
  %call7 = tail call i32 @tegra_fuse_read_early(i32 noundef 624) #7
  %shl = shl i32 %call7, 1
  %call8 = tail call i32 @tegra_fuse_read_early(i32 noundef 620) #7
  %or = or i32 %shl, %call8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.then9, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %cpu_speedo_id10 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %8 = ptrtoint ptr %cpu_speedo_id10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cpu_speedo_id10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then.if.end11_crit_edge, %sw.epilog.if.end11_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/fuse/speedo-tegra114.c", i32 58, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rev_sku_to_speedo_ids._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rev_sku_to_speedo_ids._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @cpu_process_speedos, !7, !"cpu_process_speedos", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/fuse/speedo-tegra114.c", i32 28, i32 30}
!8 = !{ptr @soc_process_speedos, !9, !"soc_process_speedos", i1 false, i1 false}
!9 = !{!"../drivers/soc/tegra/fuse/speedo-tegra114.c", i32 23, i32 30}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
