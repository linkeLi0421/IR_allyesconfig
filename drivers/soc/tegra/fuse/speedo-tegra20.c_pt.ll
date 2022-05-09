; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/fuse/speedo-tegra20.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/speedo-tegra20.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tegra20_init_speedo_data.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"speedo_tegra20\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra20_init_speedo_data\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/soc/tegra/fuse/speedo-tegra20.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Tegra CPU speedo value %u\0A\00", [37 x i8] zeroinitializer }, align 32
@cpu_process_speedos = internal unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 315, i32 366, i32 420, i32 -1], [4 x i32] [i32 303, i32 368, i32 419, i32 -1], [4 x i32] [i32 316, i32 331, i32 383, i32 -1]], section ".init.rodata", align 4
@tegra20_init_speedo_data.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Core speedo value %u\0A\00", [42 x i8] zeroinitializer }, align 32
@soc_process_speedos = internal unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 165, i32 195, i32 224, i32 -1], [4 x i32] [i32 165, i32 195, i32 224, i32 -1], [4 x i32] [i32 165, i32 195, i32 224, i32 -1]], section ".init.rodata", align 4
@switch.table.tegra20_init_speedo_data = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 77, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [43 x i8] c"../drivers/soc/tegra/fuse/speedo-tegra20.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 92, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [38 x i8] c"switch.table.tegra20_init_speedo_data\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.tegra20_init_speedo_data], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra20_init_speedo_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra20_init_speedo_data(ptr nocapture noundef %sku_info) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %revision = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 11
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %sku_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sku_info, align 4
  %switch.tableidx = add i32 %3, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 9
  br i1 %4, label %switch.lookup, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.tegra20_init_speedo_data, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end20

if.end20:                                         ; preds = %switch.lookup, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %.sink = phi i32 [ 0, %entry.if.end20_crit_edge ], [ 1, %if.else.if.end20_crit_edge ], [ %switch.load, %switch.lookup ]
  %soc_speedo_id17 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %6 = ptrtoint ptr %soc_speedo_id17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %soc_speedo_id17, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end20
  %val.0125 = phi i32 [ 0, %if.end20 ], [ %or23, %for.body.for.body_crit_edge ]
  %i.0124 = phi i32 [ 29, %if.end20 ], [ %dec, %for.body.for.body_crit_edge ]
  %call = tail call i32 @tegra_fuse_read_spare(i32 noundef %i.0124) #6
  %add = add nuw nsw i32 %i.0124, 10
  %call22 = tail call i32 @tegra_fuse_read_spare(i32 noundef %add) #6
  %or = or i32 %call22, %call
  %shl = shl i32 %val.0125, 1
  %and = and i32 %or, 1
  %or23 = or i32 %and, %shl
  %dec = add nsw i32 %i.0124, -1
  %cmp21 = icmp ugt i32 %i.0124, 20
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  %mul = shl i32 %or23, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra20_init_speedo_data.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra20_init_speedo_data, %if.then28)) #3
          to label %do.end31 [label %if.then28], !srcloc !22

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tegra20_init_speedo_data.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.3, i32 noundef %mul) #3
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %for.end
  %soc_speedo_id35 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %7 = ptrtoint ptr %soc_speedo_id35 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %soc_speedo_id35, align 4
  br label %for.body34

for.body34:                                       ; preds = %for.inc40.for.body34_crit_edge, %do.end31
  %i.1126 = phi i32 [ 0, %do.end31 ], [ %inc, %for.inc40.for.body34_crit_edge ]
  %arrayidx36 = getelementptr [3 x [4 x i32]], ptr @cpu_process_speedos, i32 0, i32 %8, i32 %i.1126
  %9 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %10)
  %cmp37.not = icmp ugt i32 %mul, %10
  br i1 %cmp37.not, label %for.inc40, label %for.body34.for.end41_crit_edge

for.body34.for.end41_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end41

for.inc40:                                        ; preds = %for.body34
  %inc = add nuw nsw i32 %i.1126, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc40.for.end41_crit_edge, label %for.inc40.for.body34_crit_edge

for.inc40.for.body34_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body34

for.inc40.for.end41_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end41

for.end41:                                        ; preds = %for.inc40.for.end41_crit_edge, %for.body34.for.end41_crit_edge
  %i.1.lcssa = phi i32 [ %i.1126, %for.body34.for.end41_crit_edge ], [ 3, %for.inc40.for.end41_crit_edge ]
  %cpu_process_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 1
  %11 = ptrtoint ptr %cpu_process_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.1.lcssa, ptr %cpu_process_id, align 4
  br label %for.body44

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.end41
  %val.1128 = phi i32 [ 0, %for.end41 ], [ %or51, %for.body44.for.body44_crit_edge ]
  %i.2127 = phi i32 [ 47, %for.end41 ], [ %dec53, %for.body44.for.body44_crit_edge ]
  %call45 = tail call i32 @tegra_fuse_read_spare(i32 noundef %i.2127) #6
  %add46 = add nuw nsw i32 %i.2127, 8
  %call47 = tail call i32 @tegra_fuse_read_spare(i32 noundef %add46) #6
  %or48 = or i32 %call47, %call45
  %shl49 = shl i32 %val.1128, 1
  %and50 = and i32 %or48, 1
  %or51 = or i32 %and50, %shl49
  %dec53 = add nsw i32 %i.2127, -1
  %cmp43 = icmp ugt i32 %i.2127, 40
  br i1 %cmp43, label %for.body44.for.body44_crit_edge, label %for.end54

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body44

for.end54:                                        ; preds = %for.body44
  %mul55 = shl i32 %or51, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra20_init_speedo_data.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra20_init_speedo_data, %if.then68)) #3
          to label %do.end71 [label %if.then68], !srcloc !22

if.then68:                                        ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tegra20_init_speedo_data.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.4, i32 noundef %mul55) #3
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %for.end54
  %12 = ptrtoint ptr %soc_speedo_id35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %soc_speedo_id35, align 4
  br label %for.body74

for.body74:                                       ; preds = %for.inc81.for.body74_crit_edge, %do.end71
  %i.3129 = phi i32 [ 0, %do.end71 ], [ %inc82, %for.inc81.for.body74_crit_edge ]
  %arrayidx77 = getelementptr [3 x [4 x i32]], ptr @soc_process_speedos, i32 0, i32 %13, i32 %i.3129
  %14 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul55, i32 %15)
  %cmp78.not = icmp ugt i32 %mul55, %15
  br i1 %cmp78.not, label %for.inc81, label %for.body74.for.end83_crit_edge

for.body74.for.end83_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end83

for.inc81:                                        ; preds = %for.body74
  %inc82 = add nuw nsw i32 %i.3129, 1
  %exitcond130.not = icmp eq i32 %inc82, 3
  br i1 %exitcond130.not, label %for.inc81.for.end83_crit_edge, label %for.inc81.for.body74_crit_edge

for.inc81.for.body74_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body74

for.inc81.for.end83_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end83

for.end83:                                        ; preds = %for.inc81.for.end83_crit_edge, %for.body74.for.end83_crit_edge
  %i.3.lcssa = phi i32 [ %i.3129, %for.body74.for.end83_crit_edge ], [ 3, %for.inc81.for.end83_crit_edge ]
  %soc_process_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 5
  %16 = ptrtoint ptr %soc_process_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.3.lcssa, ptr %soc_process_id, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_spare(i32 noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/fuse/speedo-tegra20.c", i32 77, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tegra20_init_speedo_data.__UNIQUE_ID_ddebug231, !1, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/fuse/speedo-tegra20.c", i32 92, i32 2}
!8 = !{ptr @tegra20_init_speedo_data.__UNIQUE_ID_ddebug232, !7, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!9 = !{ptr @cpu_process_speedos, !10, !"cpu_process_speedos", i1 false, i1 false}
!10 = !{!"../drivers/soc/tegra/fuse/speedo-tegra20.c", i32 42, i32 30}
!11 = !{ptr @soc_process_speedos, !12, !"soc_process_speedos", i1 false, i1 false}
!12 = !{!"../drivers/soc/tegra/fuse/speedo-tegra20.c", i32 48, i32 30}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148147592, i64 2148147597, i64 2148147610, i64 2148147654, i64 2148147688, i64 2148147709}
