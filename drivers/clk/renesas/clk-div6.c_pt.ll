; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/clk-div6.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-div6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.div6_clock = type { %struct.clk_hw, ptr, i32, i32, %struct.notifier_block, [0 x i8] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@cpg_div6_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: invalid number of parents for DIV6 clock %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpg_div6_register\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/renesas/clk-div6.c\00", [33 x i8] zeroinitializer }, align 32
@cpg_div6_register._entry_ptr = internal global ptr @cpg_div6_register._entry, section ".printk_index", align 4
@cpg_div6_clock_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cpg_div6_clock_enable, ptr @cpg_div6_clock_disable, ptr @cpg_div6_clock_is_enabled, ptr null, ptr null, ptr null, ptr @cpg_div6_clock_recalc_rate, ptr null, ptr @cpg_div6_clock_determine_rate, ptr @cpg_div6_clock_set_parent, ptr @cpg_div6_clock_get_parent, ptr @cpg_div6_clock_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__of_table_cpg_div6_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,cpg-div6-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpg_div6_clock_init }, section "__clk_of_table", align 4
@cpg_div6_clock_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: %s DIV6 clock set to invalid parent %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpg_div6_clock_get_parent\00", [38 x i8] zeroinitializer }, align 32
@cpg_div6_clock_get_parent._entry_ptr = internal global ptr @cpg_div6_clock_get_parent._entry, section ".printk_index", align 4
@cpg_div6_clock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: no parent found for %pOFn DIV6 clock\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpg_div6_clock_init\00", [44 x i8] zeroinitializer }, align 32
@cpg_div6_clock_init._entry_ptr = internal global ptr @cpg_div6_clock_init._entry, section ".printk_index", align 4
@cpg_div6_clock_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to map %pOFn DIV6 clock register\0A\00", [49 x i8] zeroinitializer }, align 32
@cpg_div6_clock_init._entry_ptr.9 = internal global ptr @cpg_div6_clock_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@cpg_div6_clock_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: failed to register %pOFn DIV6 clock (%ld)\0A\00", [47 x i8] zeroinitializer }, align 32
@cpg_div6_clock_init._entry_ptr.13 = internal global ptr @cpg_div6_clock_init._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 280, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"cpg_div6_clock_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 199, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 181, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 330, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 342, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 348, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [34 x i8] c"../drivers/clk/renesas/clk-div6.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 355, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__of_table_cpg_div6_clk, ptr @cpg_div6_clock_get_parent._entry, ptr @cpg_div6_clock_get_parent._entry_ptr, ptr @cpg_div6_clock_init._entry, ptr @cpg_div6_clock_init._entry.11, ptr @cpg_div6_clock_init._entry.7, ptr @cpg_div6_clock_init._entry_ptr, ptr @cpg_div6_clock_init._entry_ptr.13, ptr @cpg_div6_clock_init._entry_ptr.9, ptr @cpg_div6_register._entry, ptr @cpg_div6_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cpg_div6_clock_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_div6_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_div6_clock_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_div6_clock_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_div6_clock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_div6_clock_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_div6_clock_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpg_div6_register(ptr noundef %name, i32 noundef %num_parents, ptr noundef %parent_names, ptr noundef %reg, ptr noundef %notifiers) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = call ptr @memset(ptr %init, i32 0, i32 28)
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %num_parents, i32 36) #8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg3 = getelementptr inbounds %struct.div6_clock, ptr %call9.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %reg, ptr %reg3, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #8, !srcloc !39
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !40
  %and = and i32 %3, 63
  %add = add nuw nsw i32 %and, 1
  %div = getelementptr inbounds %struct.div6_clock, ptr %call9.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %div, align 16
  %5 = zext i32 %num_parents to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %num_parents, label %do.end [
    i32 1, label %if.end.for.body.preheader_crit_edge
    i32 4, label %sw.bb7
    i32 8, label %sw.bb9
  ]

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %name) #12
  br label %free_clock

for.body.preheader:                               ; preds = %sw.bb9, %sw.bb7, %if.end.for.body.preheader_crit_edge
  %.sink = phi i32 [ 192, %sw.bb7 ], [ 28672, %sw.bb9 ], [ 0, %if.end.for.body.preheader_crit_edge ]
  %src_mask = getelementptr inbounds %struct.div6_clock, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %src_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %src_mask, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %valid_parents.071 = phi i32 [ %valid_parents.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.069 = phi i32 [ %inc20, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %parent_names, i32 %i.069
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.then15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17 = getelementptr ptr, ptr %parent_names, i32 %valid_parents.071
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx17, align 4
  %conv = trunc i32 %i.069 to i8
  %arrayidx18 = getelementptr %struct.div6_clock, ptr %call9.i.i, i32 0, i32 5, i32 %valid_parents.071
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx18, align 1
  %inc = add i32 %valid_parents.071, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body.for.inc_crit_edge
  %valid_parents.1 = phi i32 [ %inc, %if.then15 ], [ %valid_parents.071, %for.body.for.inc_crit_edge ]
  %inc20 = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc20, %num_parents
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cpg_div6_clock_ops, ptr %ops, align 4
  %parent_names22 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %13 = ptrtoint ptr %parent_names22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %parent_names, ptr %parent_names22, align 4
  %conv23 = trunc i32 %valid_parents.1 to i8
  %num_parents24 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %14 = ptrtoint ptr %num_parents24 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv23, ptr %num_parents24, align 4
  %init25 = getelementptr inbounds %struct.clk_hw, ptr %call9.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %init25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init25, align 8
  %call27 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call9.i.i) #8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end.free_clock_crit_edge, label %if.end30

for.end.free_clock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_clock

if.end30:                                         ; preds = %for.end
  %tobool31.not = icmp eq ptr %notifiers, null
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.then32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %nb = getelementptr inbounds %struct.div6_clock, ptr %call9.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cpg_div6_clock_notifier_call, ptr %nb, align 8
  %call34 = call i32 @raw_notifier_chain_register(ptr noundef nonnull %notifiers, ptr noundef %nb) #8
  br label %cleanup

free_clock:                                       ; preds = %for.end.free_clock_crit_edge, %do.end
  %clk.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call27, %for.end.free_clock_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_clock, %if.then32, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %clk.0, %free_clock ], [ %call27, %if.then32 ], [ %call27, %if.end30.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_notifier_call(ptr nocapture noundef readonly %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %action)
  %cond = icmp eq i32 %action, 16
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %clk = getelementptr i8, ptr %nb, i32 -20
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @__clk_get_enable_count(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %reg.i6 = getelementptr i8, ptr %nb, i32 -12
  %2 = ptrtoint ptr %reg.i6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i6, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i32 %4, -1057030145
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %div.i = getelementptr i8, ptr %nb, i32 -8
  %7 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %div.i, align 4
  %sub.i = add i32 %8, 63
  %and3.i = and i32 %sub.i, 63
  %or.i = or i32 %and3.i, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %10 = ptrtoint ptr %reg.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !42
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %12 = or i32 %4, 65536
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %and.i = and i32 %13, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or3.i = or i32 %13, 63
  %spec.select.i = select i1 %tobool.not.i, i32 %or3.i, i32 %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %15 = ptrtoint ptr %reg.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else ], [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpg_div6_clock_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %np) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !44

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end4

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i
  %call5 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %error.thread, label %for.body.preheader

error.thread:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %np) #12
  br label %if.end30

for.body.preheader:                               ; preds = %if.end4
  %call14 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef nonnull %clk_name) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.069 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call16 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %i.069) #8
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %i.069
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %7 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_name, align 4
  %call17 = call ptr @cpg_div6_register(ptr noundef %8, i32 noundef %call, ptr noundef nonnull %call8.i, ptr noundef nonnull %call5, ptr noundef null) #13
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end26

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call17) #8
  call void @kfree(ptr noundef nonnull %call8.i) #8
  br label %cleanup

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call17 to i32
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, ptr noundef %np, i32 noundef %9) #12
  call void @iounmap(ptr noundef nonnull %call5) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %error.thread
  call void @kfree(ptr noundef nonnull %call8.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_enable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %3 = and i32 %2, -1057030145
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %div = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div, align 4
  %sub = add i32 %6, 63
  %and3 = and i32 %sub, 63
  %or = or i32 %and3, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpg_div6_clock_disable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %3 = or i32 %2, 65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = and i32 %4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or3 = or i32 %4, 63
  %spec.select = select i1 %tobool.not, i32 %or3, i32 %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  %3 = lshr i32 %2, 16
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpg_div6_clock_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %div, align 4
  %div1 = udiv i32 %parent_rate, %1
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp105.not = icmp eq i32 %call, 0
  br i1 %cmp105.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %min_diff.0110 = phi i32 [ -1, %for.body.lr.ph ], [ %min_diff.1, %for.inc.for.body_crit_edge ]
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_parent.0108 = phi ptr [ null, %for.body.lr.ph ], [ %best_parent.1, %for.inc.for.body_crit_edge ]
  %best_prate.0107 = phi i32 [ -1, %for.body.lr.ph ], [ %best_prate.1, %for.inc.for.body_crit_edge ]
  %best_rate.0106 = phi i32 [ -1, %for.body.lr.ph ], [ %best_rate.1, %for.inc.for.body_crit_edge ]
  %call1 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.0109) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call2 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rate, align 4
  %add = add i32 %call2, -1
  %sub = add i32 %add, %1
  %div7 = udiv i32 %sub, %1
  %2 = tail call i32 @llvm.umax.i32(i32 %div7, i32 1)
  %3 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %min_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %if.end5.cond.end20_crit_edge, label %cond.true10

if.end5.cond.end20_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.true10:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %div12 = udiv i32 %call2, %4
  %5 = tail call i32 @llvm.umin.i32(i32 %div12, i32 64)
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true10, %if.end5.cond.end20_crit_edge
  %cond21 = phi i32 [ %5, %cond.true10 ], [ 64, %if.end5.cond.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond21, i32 %2)
  %cmp22 = icmp ult i32 %cond21, %2
  br i1 %cmp22, label %cond.end20.for.inc_crit_edge, label %if.end24

cond.end20.for.inc_crit_edge:                     ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end24:                                         ; preds = %cond.end20
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 1, i32 %7
  %div116.i = lshr i32 %spec.store.select.i, 1
  %add.i = add i32 %div116.i, %call2
  %div2.i = udiv i32 %add.i, %spec.store.select.i
  %8 = tail call i32 @llvm.umax.i32(i32 %div2.i, i32 1) #8
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 64) #8
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %2)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %cond21)
  %div38 = udiv i32 %call2, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %div38, i32 %7)
  %cmp40 = icmp ugt i32 %div38, %7
  %sub43 = sub i32 %div38, %7
  %sub46 = sub i32 %7, %div38
  %cond48 = select i1 %cmp40, i32 %sub43, i32 %sub46
  call void @__sanitizer_cov_trace_cmp4(i32 %cond48, i32 %min_diff.0110)
  %cmp49 = icmp ult i32 %cond48, %min_diff.0110
  br i1 %cmp49, label %if.then50, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then50:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then50, %if.end24.for.inc_crit_edge, %cond.end20.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_rate.1 = phi i32 [ %best_rate.0106, %cond.end20.for.inc_crit_edge ], [ %div38, %if.then50 ], [ %best_rate.0106, %if.end24.for.inc_crit_edge ], [ %best_rate.0106, %if.end.for.inc_crit_edge ], [ %best_rate.0106, %for.body.for.inc_crit_edge ]
  %best_prate.1 = phi i32 [ %best_prate.0107, %cond.end20.for.inc_crit_edge ], [ %call2, %if.then50 ], [ %best_prate.0107, %if.end24.for.inc_crit_edge ], [ %best_prate.0107, %if.end.for.inc_crit_edge ], [ %best_prate.0107, %for.body.for.inc_crit_edge ]
  %best_parent.1 = phi ptr [ %best_parent.0108, %cond.end20.for.inc_crit_edge ], [ %call1, %if.then50 ], [ %best_parent.0108, %if.end24.for.inc_crit_edge ], [ %best_parent.0108, %if.end.for.inc_crit_edge ], [ %best_parent.0108, %for.body.for.inc_crit_edge ]
  %min_diff.1 = phi i32 [ %min_diff.0110, %cond.end20.for.inc_crit_edge ], [ %cond48, %if.then50 ], [ %min_diff.0110, %if.end24.for.inc_crit_edge ], [ %min_diff.0110, %if.end.for.inc_crit_edge ], [ %min_diff.0110, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool52.not = icmp eq ptr %best_parent.1, null
  br i1 %tobool52.not, label %for.end.cleanup_crit_edge, label %if.end54

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %best_prate.1, ptr %best_parent_rate, align 4
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %13 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %best_parent.1, ptr %best_parent_hw, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %best_rate.1, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %index to i32
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp.not = icmp ugt i32 %call, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.div6_clock, ptr %hw, i32 0, i32 5, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %1 to i32
  %src_mask = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_mask, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #8, !range !48
  %shl = shl i32 %conv2, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %reg = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !39
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %9 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_mask, align 4
  %neg = xor i32 %10, -1
  %and = and i32 %8, %neg
  %or = or i32 %and, %shl
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cpg_div6_clock_get_parent(ptr noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src_mask = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !39
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %6 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_mask, align 4
  %and = and i32 %7, %5
  %8 = tail call i32 @llvm.cttz.i32(i32 %7, i1 false) #8, !range !48
  %shr = lshr i32 %and, %8
  %call633 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call633)
  %cmp734.not = icmp eq i32 %call633, 0
  br i1 %cmp734.not, label %if.end.do.end_crit_edge, label %for.body.lr.ph

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end
  %9 = trunc i32 %shr to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.div6_clock, ptr %hw, i32 0, i32 5, i32 %i.035
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %9)
  %cmp11 = icmp eq i8 %11, %9
  br i1 %cmp11, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv14 = trunc i32 %i.035 to i8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.035, 1
  %call6 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  %cmp7 = icmp ult i32 %inc, %call6
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end.do.end_crit_edge
  %call17 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %conv18 = and i32 %shr, 255
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call17, i32 noundef %conv18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv14, %if.then13 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_div6_clock_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i = icmp eq i32 %rate, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 1, i32 %rate
  %div116.i = lshr i32 %spec.store.select.i, 1
  %add.i = add i32 %div116.i, %parent_rate
  %div2.i = udiv i32 %add.i, %spec.store.select.i
  %0 = tail call i32 @llvm.umax.i32(i32 %div2.i, i32 1) #8
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 64) #8
  %div1 = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %div1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %div1, align 4
  %reg = getelementptr inbounds %struct.div6_clock, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  %6 = and i32 %5, -1056964609
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and5 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div1, align 4
  %sub = add i32 %9, 63
  %and7 = and i32 %sub, 63
  %or = or i32 %and7, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_get_enable_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/clk-div6.c", i32 280, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cpg_div6_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cpg_div6_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__of_table_cpg_div6_clk, !7, !"__of_table_cpg_div6_clk", i1 false, i1 false}
!7 = !{!"../drivers/clk/renesas/clk-div6.c", i32 370, i32 1}
!8 = !{ptr @cpg_div6_clock_ops, !9, !"cpg_div6_clock_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/renesas/clk-div6.c", i32 199, i32 29}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/renesas/clk-div6.c", i32 181, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cpg_div6_clock_get_parent._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @cpg_div6_clock_get_parent._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/renesas/clk-div6.c", i32 330, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cpg_div6_clock_init._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @cpg_div6_clock_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/renesas/clk-div6.c", i32 342, i32 3}
!22 = !{ptr @cpg_div6_clock_init._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cpg_div6_clock_init._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/renesas/clk-div6.c", i32 348, i32 30}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/renesas/clk-div6.c", i32 355, i32 3}
!28 = !{ptr @cpg_div6_clock_init._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cpg_div6_clock_init._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 4034398}
!40 = !{i64 2152605644}
!41 = !{i64 2152566951}
!42 = !{i64 4033980}
!43 = !{i64 2152569039}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2152566629}
!46 = !{i64 2152568740}
!47 = !{i64 2152570828}
!48 = !{i32 0, i32 33}
!49 = !{i64 2152602222}
!50 = !{i64 2152603147}
!51 = !{i64 2152598329}
!52 = !{i64 2152596098}
!53 = !{i64 2152596450}
