; ModuleID = '/llk/IR_all_yes/drivers/clk/pistachio/clk.c_pt.bc'
source_filename = "../drivers/clk/pistachio/clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pistachio_clk_provider = type { ptr, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.pistachio_gate = type { i32, i32, i32, ptr, ptr }
%struct.pistachio_mux = type { i32, i32, i32, i32, ptr, ptr }
%struct.pistachio_div = type { i32, i32, i32, i32, ptr, ptr }
%struct.pistachio_fixed_factor = type { i32, i32, ptr, ptr }

@pistachio_clk_alloc_provider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Failed to map clock provider registers\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pistachio_clk_alloc_provider\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/pistachio/clk.c\00", [36 x i8] zeroinitializer }, align 32
@pistachio_clk_alloc_provider._entry_ptr = internal global ptr @pistachio_clk_alloc_provider._entry, section ".printk_index", align 4
@pistachio_clk_register_provider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014Failed to register clock %d: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pistachio_clk_register_provider\00", [32 x i8] zeroinitializer }, align 32
@pistachio_clk_register_provider._entry_ptr = internal global ptr @pistachio_clk_register_provider._entry, section ".printk_index", align 4
@pistachio_clk_force_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to enable clock %s: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pistachio_clk_force_enable\00", [37 x i8] zeroinitializer }, align 32
@pistachio_clk_force_enable._entry_ptr = internal global ptr @pistachio_clk_force_enable._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 31, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 50, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [31 x i8] c"../drivers/clk/pistachio/clk.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 135, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @pistachio_clk_alloc_provider._entry, ptr @pistachio_clk_alloc_provider._entry_ptr, ptr @pistachio_clk_force_enable._entry, ptr @pistachio_clk_force_enable._entry_ptr, ptr @pistachio_clk_register_provider._entry, ptr @pistachio_clk_register_provider._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_clk_alloc_provider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_clk_register_provider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pistachio_clk_force_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pistachio_clk_alloc_provider(ptr noundef %node, i32 noundef %num_clks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_clks, i32 4) #6
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !25

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %clk_data30 = getelementptr inbounds %struct.pistachio_clk_provider, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk_data30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %clk_data30, align 8
  br label %free_provider

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #10
  %clk_data = getelementptr inbounds %struct.pistachio_clk_provider, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %clk_data, align 8
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.free_provider_crit_edge, label %if.end6

if.end7.i.i.free_provider_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_provider

if.end6:                                          ; preds = %if.end7.i.i
  %clk_num = getelementptr inbounds %struct.pistachio_clk_provider, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num_clks, ptr %clk_num, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node, ptr %call7.i.i, align 8
  %call9 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.pistachio_clk_provider, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %base, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %do.end, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %9 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_data, align 8
  tail call void @kfree(ptr noundef %10) #6
  br label %free_provider

free_provider:                                    ; preds = %do.end, %if.end7.i.i.free_provider_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_provider, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_provider ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pistachio_clk_register_provider(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_data = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 2
  %clk_num = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_data, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %5 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.018, i32 noundef %6) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %7 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_num, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %9 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p, align 4
  %call8 = tail call i32 @of_clk_add_provider(ptr noundef %10, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pistachio_clk_register_gate(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %gate, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp17.not = icmp eq i32 %num, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 1
  %clk_data = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pistachio_gate, ptr %gate, i32 %i.018
  %name = getelementptr %struct.pistachio_gate, ptr %gate, i32 %i.018, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent = getelementptr %struct.pistachio_gate, ptr %gate, i32 %i.018, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %reg = getelementptr %struct.pistachio_gate, ptr %gate, i32 %i.018, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %shift = getelementptr %struct.pistachio_gate, ptr %gate, i32 %i.018, i32 2
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift, align 4
  %conv = trunc i32 %9 to i8
  %call = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef null) #6
  %10 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_data, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr ptr, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %arrayidx5, align 4
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pistachio_clk_register_mux(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %mux, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp26.not = icmp eq i32 %num, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 1
  %clk_data = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %get_count_order.exit.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %get_count_order.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pistachio_mux, ptr %mux, i32 %i.027
  %name = getelementptr %struct.pistachio_mux, ptr %mux, i32 %i.027, i32 4
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parents = getelementptr %struct.pistachio_mux, ptr %mux, i32 %i.027, i32 5
  %2 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parents, align 4
  %num_parents = getelementptr %struct.pistachio_mux, ptr %mux, i32 %i.027, i32 3
  %4 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_parents, align 4
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %reg = getelementptr %struct.pistachio_mux, ptr %mux, i32 %i.027, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %shift = getelementptr %struct.pistachio_mux, ptr %mux, i32 %i.027, i32 2
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift, align 4
  %conv5 = trunc i32 %11 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %for.body.get_count_order.exit_crit_edge, label %if.end.i

for.body.get_count_order.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_count_order.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #6, !range !26
  %sub.i.i = sub nuw nsw i32 32, %12
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %for.body.get_count_order.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i.i, %if.end.i ], [ -1, %for.body.get_count_order.exit_crit_edge ]
  %notmask = shl nsw i32 -1, %retval.0.i
  %sub = xor i32 %notmask, -1
  %call8 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %conv, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext %conv5, i32 noundef %sub, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #6
  %13 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_data, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr ptr, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8, ptr %arrayidx10, align 4
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %get_count_order.exit.for.end_crit_edge, label %get_count_order.exit.for.body_crit_edge

get_count_order.exit.for.body_crit_edge:          ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

get_count_order.exit.for.end_crit_edge:           ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %get_count_order.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pistachio_clk_register_div(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %div, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp21.not = icmp eq i32 %num, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 1
  %clk_data = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pistachio_div, ptr %div, i32 %i.022
  %name = getelementptr %struct.pistachio_div, ptr %div, i32 %i.022, i32 4
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent = getelementptr %struct.pistachio_div, ptr %div, i32 %i.022, i32 5
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %reg = getelementptr %struct.pistachio_div, ptr %div, i32 %i.022, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %width = getelementptr %struct.pistachio_div, ptr %div, i32 %i.022, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %conv = trunc i32 %9 to i8
  %div_flags = getelementptr %struct.pistachio_div, ptr %div, i32 %i.022, i32 3
  %10 = ptrtoint ptr %div_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div_flags, align 4
  %conv5 = trunc i32 %11 to i8
  %call = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %conv, i8 noundef zeroext %conv5, ptr noundef null, ptr noundef null) #6
  %12 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_data, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr ptr, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %arrayidx7, align 4
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pistachio_clk_register_fixed_factor(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %ff, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp13.not = icmp eq i32 %num, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_data = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pistachio_fixed_factor, ptr %ff, i32 %i.014
  %name = getelementptr %struct.pistachio_fixed_factor, ptr %ff, i32 %i.014, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent = getelementptr %struct.pistachio_fixed_factor, ptr %ff, i32 %i.014, i32 3
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %div = getelementptr %struct.pistachio_fixed_factor, ptr %ff, i32 %i.014, i32 1
  %4 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div, align 4
  %call = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef %5) #6
  %6 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_data, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %arrayidx4, align 4
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pistachio_clk_force_enable(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %clk_ids, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp15.not = icmp eq i32 %num, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_data = getelementptr inbounds %struct.pistachio_clk_provider, ptr %p, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %0 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_data, align 4
  %arrayidx = getelementptr i32, ptr %clk_ids, i32 %i.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %call4 = tail call ptr @__clk_get_name(ptr noundef %5) #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %call4, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/pistachio/clk.c", i32 31, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pistachio_clk_alloc_provider._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pistachio_clk_alloc_provider._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/pistachio/clk.c", i32 50, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pistachio_clk_register_provider._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @pistachio_clk_register_provider._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/pistachio/clk.c", i32 135, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pistachio_clk_force_enable._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @pistachio_clk_force_enable._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i32 0, i32 33}
