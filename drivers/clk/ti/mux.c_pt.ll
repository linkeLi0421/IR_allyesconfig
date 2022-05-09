; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/mux.c_pt.bc'
source_filename = "../drivers/clk/ti/mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_omap_mux = type { %struct.clk_hw, %struct.clk_omap_reg, ptr, i32, i8, i8, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.ti_clk_mux = type { i8, i32, i16, i8, ptr, i16 }

@ti_clk_mux_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_mux_save_context, ptr @clk_mux_restore_context, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @ti_clk_mux_set_parent, ptr @ti_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__of_table_mux_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_mux_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_composite_mux_clk_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_mux_clk_setup }, section "__clk_of_table", align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@of_mux_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: mux-clock %pOFn must have parents\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"of_mux_clk_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/clk/ti/mux.c\00", [43 x i8] zeroinitializer }, align 32
@of_mux_clk_setup._entry_ptr = internal global ptr @of_mux_clk_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,bit-shift\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,latch-bit\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,index-starts-at-one\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,set-rate-parent\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@of_ti_composite_mux_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: %pOFn must have parents\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"of_ti_composite_mux_clk_setup\00", [34 x i8] zeroinitializer }, align 32
@of_ti_composite_mux_clk_setup._entry_ptr = internal global ptr @of_ti_composite_mux_clk_setup._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"ti_clk_mux_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 121, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 187, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 199, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 201, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 203, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 206, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [24 x i8] c"../drivers/clk/ti/mux.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 279, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__of_table_mux_clk, ptr @__of_table_ti_composite_mux_clk_setup, ptr @of_mux_clk_setup._entry, ptr @of_mux_clk_setup._entry_ptr, ptr @of_ti_composite_mux_clk_setup._entry, ptr @of_ti_composite_mux_clk_setup._entry_ptr, ptr @ti_clk_mux_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mux_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ti_composite_mux_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mux_save_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %reg.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 1
  %call1.i = tail call i32 %2(ptr noundef %reg.i) #8
  %shift.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shift.i, align 4
  %conv.i = zext i8 %4 to i32
  %shr.i = lshr i32 %call1.i, %conv.i
  %mask.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr.i, %6
  %table.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end8.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp58.i = icmp sgt i32 %call.i, 0
  br i1 %cmp58.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ti_clk_mux_get_parent.exit_crit_edge

for.cond.preheader.i.ti_clk_mux_get_parent.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ti_clk_mux_get_parent.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.059.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %8, i32 %i.059.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and.i)
  %cmp4.i = icmp eq i32 %10, %and.i
  br i1 %cmp4.i, label %if.then6.i, label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = trunc i32 %i.059.i to i8
  br label %ti_clk_mux_get_parent.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.ti_clk_mux_get_parent.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ti_clk_mux_get_parent.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ti_clk_mux_get_parent.exit

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.end8.i.if.end22.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end8.i
  %flags.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 6
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 2
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.i = icmp eq i8 %13, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.land.lhs.true16.i_crit_edge, label %if.end14.i

land.lhs.true.i.land.lhs.true16.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true16.i

if.end14.i:                                       ; preds = %land.lhs.true.i
  %14 = tail call i32 @llvm.cttz.i32(i32 %and.i, i1 true) #8, !range !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not.i = icmp eq i32 %14, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end22.i_crit_edge, label %if.end14.i.land.lhs.true16.i_crit_edge

if.end14.i.land.lhs.true16.i_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true16.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

land.lhs.true16.i:                                ; preds = %if.end14.i.land.lhs.true16.i_crit_edge, %land.lhs.true.i.land.lhs.true16.i_crit_edge
  %val.056.i = phi i32 [ %14, %if.end14.i.land.lhs.true16.i_crit_edge ], [ %and.i, %land.lhs.true.i.land.lhs.true16.i_crit_edge ]
  %15 = and i8 %12, 1
  %sext.i = sub nsw i8 0, %15
  %dec.i = sext i8 %sext.i to i32
  %spec.select49.i = add i32 %val.056.i, %dec.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true16.i, %if.end14.i.if.end22.i_crit_edge, %if.end8.i.if.end22.i_crit_edge
  %val.1.i = phi i32 [ 0, %if.end14.i.if.end22.i_crit_edge ], [ %spec.select49.i, %land.lhs.true16.i ], [ 0, %if.end8.i.if.end22.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.1.i, i32 %call.i)
  %cmp23.not.i = icmp ult i32 %val.1.i, %call.i
  %conv27.i = trunc i32 %val.1.i to i8
  %spec.select50.i = select i1 %cmp23.not.i, i8 %conv27.i, i8 -22
  br label %ti_clk_mux_get_parent.exit

ti_clk_mux_get_parent.exit:                       ; preds = %if.end22.i, %for.inc.i.ti_clk_mux_get_parent.exit_crit_edge, %if.then6.i, %for.cond.preheader.i.ti_clk_mux_get_parent.exit_crit_edge
  %retval.1.i = phi i8 [ %conv7.i, %if.then6.i ], [ %spec.select50.i, %if.end22.i ], [ -22, %for.cond.preheader.i.ti_clk_mux_get_parent.exit_crit_edge ], [ -22, %for.inc.i.ti_clk_mux_get_parent.exit_crit_edge ]
  %saved_parent = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 7
  %16 = ptrtoint ptr %saved_parent to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %retval.1.i, ptr %saved_parent, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_mux_restore_context(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_parent = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %saved_parent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %saved_parent, align 1
  %table.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %5 to i8
  br label %if.end13.i

if.else.i:                                        ; preds = %entry
  %flags.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags.i, align 2
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i = icmp eq i8 %8, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then4.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i8 @llvm.cttz.i8(i8 %1, i1 true) #8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %iszero.i = icmp eq i8 %1, 0
  %.op.i = shl i8 2, %9
  %conv6.i = select i1 %iszero.i, i8 1, i8 %.op.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.else.i.if.end.i_crit_edge
  %index.addr.0.i = phi i8 [ %conv6.i, %if.then4.i ], [ %1, %if.else.i.if.end.i_crit_edge ]
  %10 = and i8 %7, 1
  %spec.select.i = add i8 %index.addr.0.i, %10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i, %if.then.i
  %index.addr.1.i = phi i8 [ %conv.i, %if.then.i ], [ %spec.select.i, %if.end.i ]
  %flags14.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 6
  %11 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags14.i, align 2
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not.i = icmp eq i8 %13, 0
  br i1 %tobool17.not.i, label %if.else21.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %mask.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 3
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift.i, align 4
  %conv19.i = zext i8 %17 to i32
  %add.i = add nuw nsw i32 %conv19.i, 16
  %shl20.i = shl i32 %15, %add.i
  br label %ti_clk_mux_set_parent.exit

if.else21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %18 = load ptr, ptr @ti_clk_ll_ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %reg.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 1
  %call.i = tail call i32 %20(ptr noundef %reg.i) #8
  %mask22.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 3
  %21 = ptrtoint ptr %mask22.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask22.i, align 4
  %shift23.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %shift23.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shift23.i, align 4
  %conv24.i = zext i8 %24 to i32
  %shl25.i = shl i32 %22, %conv24.i
  %neg.i = xor i32 %shl25.i, -1
  %and26.i = and i32 %call.i, %neg.i
  br label %ti_clk_mux_set_parent.exit

ti_clk_mux_set_parent.exit:                       ; preds = %if.else21.i, %if.then18.i
  %val.0.i = phi i32 [ %shl20.i, %if.then18.i ], [ %and26.i, %if.else21.i ]
  %conv28.i = zext i8 %index.addr.1.i to i32
  %shift29.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 4
  %25 = ptrtoint ptr %shift29.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %shift29.i, align 4
  %conv30.i = zext i8 %26 to i32
  %shl31.i = shl i32 %conv28.i, %conv30.i
  %or.i = or i32 %shl31.i, %val.0.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %27 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel.i = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %clk_writel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_writel.i, align 4
  %reg32.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 1
  tail call void %29(i32 noundef %or.i, ptr noundef %reg32.i) #8
  %latch.i = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 5
  %30 = ptrtoint ptr %latch.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %latch.i, align 1
  tail call void @ti_clk_latch(ptr noundef %reg32.i, i8 noundef signext %31) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_clk_mux_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr i32, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %3 to i8
  br label %if.end13

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 2
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.else.if.end_crit_edge, label %if.then4

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i8 @llvm.cttz.i8(i8 %index, i1 true), !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %iszero = icmp eq i8 %index, 0
  %.op = shl i8 2, %7
  %conv6 = select i1 %iszero, i8 1, i8 %.op
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else.if.end_crit_edge
  %index.addr.0 = phi i8 [ %conv6, %if.then4 ], [ %index, %if.else.if.end_crit_edge ]
  %8 = and i8 %5, 1
  %spec.select = add i8 %index.addr.0, %8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %index.addr.1 = phi i8 [ %conv, %if.then ], [ %spec.select, %if.end ]
  %flags14 = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 6
  %9 = ptrtoint ptr %flags14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags14, align 2
  %11 = and i8 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %mask = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %shift = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 4
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 4
  %conv19 = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv19, 16
  %shl20 = shl i32 %13, %add
  br label %if.end27

if.else21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %16 = load ptr, ptr @ti_clk_ll_ops, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %reg = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 1
  %call = tail call i32 %18(ptr noundef %reg) #8
  %mask22 = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 3
  %19 = ptrtoint ptr %mask22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask22, align 4
  %shift23 = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 4
  %21 = ptrtoint ptr %shift23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift23, align 4
  %conv24 = zext i8 %22 to i32
  %shl25 = shl i32 %20, %conv24
  %neg = xor i32 %shl25, -1
  %and26 = and i32 %call, %neg
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.then18
  %val.0 = phi i32 [ %shl20, %if.then18 ], [ %and26, %if.else21 ]
  %conv28 = zext i8 %index.addr.1 to i32
  %shift29 = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %shift29 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shift29, align 4
  %conv30 = zext i8 %24 to i32
  %shl31 = shl i32 %conv28, %conv30
  %or = or i32 %shl31, %val.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %25 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_writel, align 4
  %reg32 = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 1
  tail call void %27(i32 noundef %or, ptr noundef %reg32) #8
  %latch = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 5
  %28 = ptrtoint ptr %latch to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %latch, align 1
  tail call void @ti_clk_latch(ptr noundef %reg32, i8 noundef signext %29) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ti_clk_mux_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %reg = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 1
  %call1 = tail call i32 %2(ptr noundef %reg) #8
  %shift = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shift, align 4
  %conv = zext i8 %4 to i32
  %shr = lshr i32 %call1, %conv
  %mask = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %and = and i32 %shr, %6
  %table = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp58 = icmp sgt i32 %call, 0
  br i1 %cmp58, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup28_crit_edge

for.cond.preheader.cleanup28_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup28

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %8, i32 %i.059
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and)
  %cmp4 = icmp eq i32 %10, %and
  br i1 %cmp4, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = trunc i32 %i.059 to i8
  br label %cleanup28

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.cleanup28_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup28

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end22_crit_edge, label %land.lhs.true

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end8
  %flags = getelementptr inbounds %struct.clk_omap_mux, ptr %hw, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 2
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %land.lhs.true.land.lhs.true16_crit_edge, label %if.end14

land.lhs.true.land.lhs.true16_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true16

if.end14:                                         ; preds = %land.lhs.true
  %14 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true), !range !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.end14.if.end22_crit_edge, label %if.end14.land.lhs.true16_crit_edge

if.end14.land.lhs.true16_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true16

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true16:                                  ; preds = %if.end14.land.lhs.true16_crit_edge, %land.lhs.true.land.lhs.true16_crit_edge
  %val.056 = phi i32 [ %14, %if.end14.land.lhs.true16_crit_edge ], [ %and, %land.lhs.true.land.lhs.true16_crit_edge ]
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 2
  %17 = and i8 %16, 1
  %sext = sub nsw i8 0, %17
  %dec = sext i8 %sext to i32
  %spec.select49 = add i32 %val.056, %dec
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true16, %if.end14.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %val.1 = phi i32 [ 0, %if.end14.if.end22_crit_edge ], [ %spec.select49, %land.lhs.true16 ], [ 0, %if.end8.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.1, i32 %call)
  %cmp23.not = icmp ult i32 %val.1, %call
  %conv27 = trunc i32 %val.1 to i8
  %spec.select50 = select i1 %cmp23.not, i8 %conv27, i8 -22
  br label %cleanup28

cleanup28:                                        ; preds = %if.end22, %for.inc.cleanup28_crit_edge, %if.then6, %for.cond.preheader.cleanup28_crit_edge
  %retval.1 = phi i8 [ %conv7, %if.then6 ], [ %spec.select50, %if.end22 ], [ -22, %for.cond.preheader.cleanup28_crit_edge ], [ -22, %for.inc.cleanup28_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @of_mux_clk_setup(ptr noundef %node) #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %reg = alloca %struct.clk_omap_reg, align 8
  %shift = alloca i32, align 4
  %latch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %reg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #8
  %1 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %shift, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %latch) #8
  %2 = ptrtoint ptr %latch to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -22, ptr %latch, align 4
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp ult i32 %call, 2
  br i1 %cmp, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %node) #11
  br label %cleanup33

if.end8.i.i:                                      ; preds = %entry
  %mul = shl i32 %call, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end4

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end8.i.i
  %call5 = tail call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %call9.i.i, i32 noundef %call) #8
  %call6 = call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %shift, i32 noundef 1, i32 noundef 0) #8
  %call.i.i64 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull %latch, i32 noundef 1, i32 noundef 0) #8
  %call.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %call.i65 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node, align 4
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %7 = ptrtoint ptr %latch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %latch, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %9 = getelementptr inbounds i8, ptr %init.i, i32 12
  %10 = call ptr @memset(ptr %9, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not.i67 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i67, label %_register_mux.exit.thread, label %if.end.i

_register_mux.exit.thread:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %conv27 = trunc i32 %8 to i8
  %conv26 = trunc i32 %6 to i8
  %conv25 = trunc i32 %call to i8
  %tobool.i.not = icmp eq ptr %call.i, null
  %dec = sext i1 %tobool.i.not to i32
  %mask.0 = add i32 %call, %dec
  %12 = call i32 @llvm.ctlz.i32(i32 %mask.0, i1 true) #8, !range !34
  %sub.i = sub nuw nsw i32 32, %12
  %notmask = shl nsw i32 -1, %sub.i
  %sub = xor i32 %notmask, -1
  %tobool.i66.not = icmp eq ptr %call.i65, null
  %flags.0 = select i1 %tobool.i66.not, i32 128, i32 132
  %not.tobool.i.not = xor i1 %tobool.i.not, true
  %spec.select = zext i1 %not.tobool.i.not to i8
  %13 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ti_clk_mux_ops, ptr %ops.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags.0, ptr %flags3.i, align 4
  %parent_names4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %16 = ptrtoint ptr %parent_names4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %parent_names4.i, align 4
  %num_parents5.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %17 = ptrtoint ptr %num_parents5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv25, ptr %num_parents5.i, align 4
  %reg6.i = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %reg, align 8
  %20 = ptrtoint ptr %reg6.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %reg6.i, align 4
  %shift7.i = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %shift7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv26, ptr %shift7.i, align 4
  %mask8.i = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %mask8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %mask8.i, align 8
  %latch9.i = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %latch9.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv27, ptr %latch9.i, align 1
  %flags10.i = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select, ptr %flags10.i, align 2
  %table11.i = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %table11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %table11.i, align 4
  %init12.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %init12.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %init.i, ptr %init12.i, align 8
  %call14.i = call ptr @ti_clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef %4) #8
  %cmp.i.i68 = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i68, label %_register_mux.exit.thread75, label %if.then30

_register_mux.exit.thread75:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  br label %cleanup

if.then30:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  %call31 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call14.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %_register_mux.exit.thread75, %_register_mux.exit.thread, %if.end4.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %retval.1.i.i72 = phi ptr [ %call9.i.i, %if.then30 ], [ %call9.i.i, %if.end4.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %_register_mux.exit.thread ], [ %call9.i.i, %_register_mux.exit.thread75 ]
  call void @kfree(ptr noundef %retval.1.i.i72) #8
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %latch) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ti_clk_build_component_mux(ptr noundef readonly %setup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %setup, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %setup, align 4
  %shift = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %shift, align 4
  %latch = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %latch to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -22, ptr %latch, align 1
  %module = getelementptr inbounds %struct.ti_clk_mux, ptr %setup, i32 0, i32 3
  %5 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %module, align 2
  %index = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %index, align 2
  %reg5 = getelementptr inbounds %struct.ti_clk_mux, ptr %setup, i32 0, i32 2
  %8 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg5, align 4
  %offset = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %offset, align 8
  %flags = getelementptr inbounds %struct.ti_clk_mux, ptr %setup, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 4
  %13 = and i16 %12, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool7.not = icmp eq i16 %13, 0
  br i1 %tobool7.not, label %if.end4.if.end12_crit_edge, label %if.then8

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %flags9 = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %flags9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags9, align 2
  %16 = or i8 %15, 1
  store i8 %16, ptr %flags9, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end4.if.end12_crit_edge
  %num_parents13 = getelementptr inbounds %struct.ti_clk_mux, ptr %setup, i32 0, i32 1
  %17 = ptrtoint ptr %num_parents13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_parents13, align 4
  %sub = add i32 %18, -1
  %mask = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i = icmp eq i32 %sub, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #8, !range !34
  %sub.i = sub nuw nsw i32 32, %19
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub16 = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub16, ptr %mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end12 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_composite_mux_clk_setup(ptr noundef %node) #3 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 1
  %call1 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool6.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %conv = trunc i32 %3 to i8
  %shift = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %shift, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %call.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 2
  %7 = or i8 %6, 1
  store i8 %7, ptr %flags, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %call14 = call i32 @of_clk_get_parent_count(ptr noundef %node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14)
  %cmp = icmp ult i32 %call14, 2
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %node) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %sub = add i32 %call14, -1
  %mask = getelementptr inbounds %struct.clk_omap_mux, ptr %call7.i.i, i32 0, i32 3
  %8 = call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #8, !range !34
  %sub.i = sub nuw nsw i32 32, %8
  %notmask = shl nsw i32 -1, %sub.i
  %sub21 = xor i32 %notmask, -1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub21, ptr %mask, align 8
  %call23 = call i32 @ti_clk_add_component(ptr noundef %node, ptr noundef nonnull %call7.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end18.cleanup27_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.cleanup27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup, %if.end18.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_latch(ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @ti_clk_mux_ops, !1, !"ti_clk_mux_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/mux.c", i32 121, i32 22}
!2 = !{ptr @__of_table_mux_clk, !3, !"__of_table_mux_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/mux.c", i32 226, i32 1}
!4 = !{ptr @__of_table_ti_composite_mux_clk_setup, !5, !"__of_table_ti_composite_mux_clk_setup", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/mux.c", i32 292, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/mux.c", i32 187, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @of_mux_clk_setup._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @of_mux_clk_setup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/mux.c", i32 199, i32 29}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/mux.c", i32 201, i32 29}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/mux.c", i32 203, i32 34}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/mux.c", i32 206, i32 34}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/mux.c", i32 279, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @of_ti_composite_mux_clk_setup._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @of_ti_composite_mux_clk_setup._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i32 0, i32 33}
!35 = !{i8 0, i8 9}
!36 = !{!"auto-init"}
