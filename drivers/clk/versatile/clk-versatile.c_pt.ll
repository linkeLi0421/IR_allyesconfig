; ModuleID = '/llk/IR_all_yes/drivers/clk/versatile/clk-versatile.c_pt.bc'
source_filename = "../drivers/clk/versatile/clk-versatile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_icst_desc = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.icst_params = type { i32, i32, i32, i16, i16, i8, i8, ptr, ptr }

@__of_table_integrator_cm_auxosc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,integrator-cm-auxosc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_integrator_cm_osc_setup }, section "__clk_of_table", align 4
@__of_table_versatile_cm_auxosc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,versatile-cm-auxosc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_versatile_cm_osc_setup }, section "__clk_of_table", align 4
@cm_auxosc_desc = internal constant %struct.clk_icst_desc { ptr @cp_auxosc_params, i32 28, i32 20 }, section ".init.rodata", align 4
@cm_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cm_osc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013no parent on core module clock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm_osc_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/clk/versatile/clk-versatile.c\00", [58 x i8] zeroinitializer }, align 32
@cm_osc_setup._entry_ptr = internal global ptr @cm_osc_setup._entry, section ".printk_index", align 4
@cm_osc_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013could not remap core module base\0A\00", [60 x i8] zeroinitializer }, align 32
@cm_osc_setup._entry_ptr.5 = internal global ptr @cm_osc_setup._entry.3, section ".printk_index", align 4
@cp_auxosc_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 8, i16 263, i8 3, i8 65, ptr @icst525_s2div, ptr @icst525_idx2s }, [36 x i8] zeroinitializer }, align 32
@icst525_s2div = external dso_local constant [0 x i8], align 1
@icst525_idx2s = external dso_local constant [0 x i8], align 1
@versatile_auxosc_desc = internal constant %struct.clk_icst_desc { ptr @versatile_auxosc_params, i32 28, i32 32 }, section ".init.rodata", align 4
@versatile_auxosc_params = internal constant { %struct.icst_params, [36 x i8] } { %struct.icst_params { i32 0, i32 200000000, i32 6000000, i16 12, i16 519, i8 3, i8 -127, ptr @icst307_s2div, ptr @icst307_idx2s }, [36 x i8] zeroinitializer }, align 32
@icst307_s2div = external dso_local constant [0 x i8], align 1
@icst307_idx2s = external dso_local constant [0 x i8], align 1
@___asan_gen_.6 = private unnamed_addr constant [8 x i8] c"cm_base\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 21, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 69, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 75, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"cp_auxosc_params\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 23, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"versatile_auxosc_params\00", align 1
@___asan_gen_.31 = private constant [41 x i8] c"../drivers/clk/versatile/clk-versatile.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 40, i32 33 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__of_table_integrator_cm_auxosc_clk, ptr @__of_table_versatile_cm_auxosc_clk, ptr @cm_osc_setup._entry, ptr @cm_osc_setup._entry.3, ptr @cm_osc_setup._entry_ptr, ptr @cm_osc_setup._entry_ptr.5, ptr @cm_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @cp_auxosc_params, ptr @versatile_auxosc_params], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_osc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_osc_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_auxosc_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_auxosc_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_integrator_cm_osc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cm_osc_setup(ptr noundef %np, ptr noundef nonnull @cm_auxosc_desc) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_versatile_cm_osc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cm_osc_setup(ptr noundef %np, ptr noundef nonnull @versatile_auxosc_desc) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cm_osc_setup(ptr noundef %np, ptr noundef %desc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = load ptr, ptr @cm_base, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_get_parent(ptr noundef %np) #3
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup20

if.end:                                           ; preds = %if.then
  %call4 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #3
  store ptr %call4, ptr @cm_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %call) #3
  %3 = load ptr, ptr @cm_base, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %cleanup20

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %call14 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #3
  %4 = load ptr, ptr @cm_base, align 4
  %call15 = tail call ptr @icst_clk_register(ptr noundef null, ptr noundef %desc, ptr noundef %1, ptr noundef %call14, ptr noundef %4) #3
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13.cleanup20_crit_edge, label %if.then17

if.end13.cleanup20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %call18 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call15) #3
  br label %cleanup20

cleanup20:                                        ; preds = %if.then17, %if.end13.cleanup20_crit_edge, %do.end9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icst_clk_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__of_table_integrator_cm_auxosc_clk, !1, !"__of_table_integrator_cm_auxosc_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 90, i32 1}
!2 = !{ptr @__of_table_versatile_cm_auxosc_clk, !3, !"__of_table_versatile_cm_auxosc_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 97, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 69, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cm_osc_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @cm_osc_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 75, i32 4}
!12 = !{ptr @cm_osc_setup._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cm_osc_setup._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @cm_base, !15, !"cm_base", i1 false, i1 false}
!15 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 21, i32 22}
!16 = !{ptr @cm_auxosc_desc, !17, !"cm_auxosc_desc", i1 false, i1 false}
!17 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 34, i32 35}
!18 = !{ptr @cp_auxosc_params, !19, !"cp_auxosc_params", i1 false, i1 false}
!19 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 23, i32 33}
!20 = !{ptr @versatile_auxosc_desc, !21, !"versatile_auxosc_desc", i1 false, i1 false}
!21 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 51, i32 35}
!22 = !{ptr @versatile_auxosc_params, !23, !"versatile_auxosc_params", i1 false, i1 false}
!23 = !{!"../drivers/clk/versatile/clk-versatile.c", i32 40, i32 33}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
