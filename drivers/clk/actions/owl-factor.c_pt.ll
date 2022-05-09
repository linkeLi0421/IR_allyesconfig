; ModuleID = '/llk/IR_all_yes/drivers/clk/actions/owl-factor.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-factor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.owl_factor_hw = type { i32, i8, i8, i8, ptr }
%struct.owl_clk_common = type { ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_factor_table = type { i32, i32, i32 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/actions/owl-factor.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", [43 x i8] zeroinitializer }, align 32
@owl_factor_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_factor_recalc_rate, ptr @owl_factor_round_rate, ptr null, ptr null, ptr null, ptr @owl_factor_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@owl_clk_val_best.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_owl\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"owl_clk_val_best\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: [%d %d %d] found try_parent_rate %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 161, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"owl_factor_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 216, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [36 x i8] c"../drivers/clk/actions/owl-factor.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 88, i32 4 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @owl_factor_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_factor_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_factor_helper_round_rate(ptr noundef %common, ptr nocapture noundef readonly %factor_hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 4
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %hw = getelementptr inbounds %struct.owl_clk_common, ptr %common, i32 0, i32 1
  %call = tail call fastcc i32 @owl_clk_val_best(ptr noundef %factor_hw, ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate)
  %div13.i = getelementptr inbounds %struct.clk_factor_table, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %div13.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not4.i = icmp eq i32 %3, 0
  br i1 %tobool.not4.i, label %entry._get_table_div_mul.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry._get_table_div_mul.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_get_table_div_mul.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %clkt.05.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %clkt.05.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clkt.05.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call)
  %cmp.i = icmp eq i32 %5, %call
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %div1.le.i = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.05.i, i32 0, i32 2
  %mul3.i = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.05.i, i32 0, i32 1
  %6 = ptrtoint ptr %mul3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mul3.i, align 4
  %8 = ptrtoint ptr %div1.le.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div1.le.i, align 4
  br label %_get_table_div_mul.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.clk_factor_table, ptr %clkt.05.i, i32 1
  %div1.i = getelementptr %struct.clk_factor_table, ptr %clkt.05.i, i32 1, i32 2
  %10 = ptrtoint ptr %div1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div1.i, align 4
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.inc.i._get_table_div_mul.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i._get_table_div_mul.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_get_table_div_mul.exit

_get_table_div_mul.exit:                          ; preds = %for.inc.i._get_table_div_mul.exit_crit_edge, %if.then.i, %entry._get_table_div_mul.exit_crit_edge
  %mul.0 = phi i32 [ 0, %entry._get_table_div_mul.exit_crit_edge ], [ %7, %if.then.i ], [ 0, %for.inc.i._get_table_div_mul.exit_crit_edge ]
  %div.0 = phi i32 [ 1, %entry._get_table_div_mul.exit_crit_edge ], [ %9, %if.then.i ], [ 1, %for.inc.i._get_table_div_mul.exit_crit_edge ]
  %12 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parent_rate, align 4
  %mul2 = mul i32 %13, %mul.0
  %div3 = udiv i32 %mul2, %div.0
  ret i32 %div3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_clk_val_best(ptr nocapture noundef readonly %factor_hw, ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %best_parent_rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 4
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %2 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %best_parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %rate
  %call = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #4
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  %4 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %best_parent_rate, align 4
  %div313.i = getelementptr inbounds %struct.clk_factor_table, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %div313.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %div313.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not314.i = icmp eq i32 %7, 0
  br i1 %tobool.not314.i, label %if.then2.cleanup_crit_edge, label %if.then2.if.end185.i_crit_edge

if.then2.if.end185.i_crit_edge:                   ; preds = %if.then2
  br label %if.end185.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end185.i:                                      ; preds = %for.inc.i.if.end185.i_crit_edge, %if.then2.if.end185.i_crit_edge
  %8 = phi i32 [ %12, %for.inc.i.if.end185.i_crit_edge ], [ %7, %if.then2.if.end185.i_crit_edge ]
  %clkt.0315.i = phi ptr [ %incdec.ptr.i, %for.inc.i.if.end185.i_crit_edge ], [ %1, %if.then2.if.end185.i_crit_edge ]
  %mul.i = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.0315.i, i32 0, i32 1
  %9 = ptrtoint ptr %mul.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mul.i, align 4
  %mul1.i = mul i32 %10, %5
  %div179.i = udiv i32 %mul1.i, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %div179.i, i32 %spec.store.select)
  %cmp188.not.i = icmp ugt i32 %div179.i, %spec.store.select
  br i1 %cmp188.not.i, label %for.inc.i, label %for.end.i

for.inc.i:                                        ; preds = %if.end185.i
  %incdec.ptr.i = getelementptr %struct.clk_factor_table, ptr %clkt.0315.i, i32 1
  %div.i = getelementptr %struct.clk_factor_table, ptr %clkt.0315.i, i32 1, i32 2
  %11 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %div.i, align 4
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %for.inc.i.for.body.i.i.preheader_crit_edge, label %for.inc.i.if.end185.i_crit_edge

for.inc.i.if.end185.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end185.i

for.inc.i.for.body.i.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.preheader

for.end.i:                                        ; preds = %if.end185.i
  %13 = ptrtoint ptr %clkt.0315.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clkt.0315.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp193.i = icmp eq i32 %14, -1
  br i1 %cmp193.i, label %for.end.i.for.body.i.i.preheader_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.i.for.body.i.i.preheader_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %for.end.i.for.body.i.i.preheader_crit_edge, %for.inc.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %clkt.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %1, %for.body.i.i.preheader ]
  %maxval.08.i.i = phi i32 [ %17, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %15 = ptrtoint ptr %clkt.09.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clkt.09.i.i, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %maxval.08.i.i) #4
  %incdec.ptr.i.i = getelementptr %struct.clk_factor_table, ptr %clkt.09.i.i, i32 1
  %div.i.i = getelementptr %struct.clk_factor_table, ptr %clkt.09.i.i, i32 1, i32 2
  %18 = ptrtoint ptr %div.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %entry
  %20 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %table, align 4
  %div88 = getelementptr inbounds %struct.clk_factor_table, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %div88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %div88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not89 = icmp eq i32 %23, 0
  br i1 %tobool6.not89, label %if.end4._get_table_maxval.exit_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4._get_table_maxval.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %_get_table_maxval.exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %24 = phi i32 [ %44, %for.inc.for.body_crit_edge ], [ %23, %if.end4.for.body_crit_edge ]
  %div94 = phi ptr [ %div, %for.inc.for.body_crit_edge ], [ %div88, %if.end4.for.body_crit_edge ]
  %bestval.093 = phi i32 [ %bestval.1, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %best.092 = phi i32 [ %best.1, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %clkt.090 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %21, %if.end4.for.body_crit_edge ]
  %mul = mul i32 %24, %spec.store.select
  %mul8 = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.090, i32 0, i32 1
  %25 = ptrtoint ptr %mul8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mul8, align 4
  %div9 = udiv i32 %mul, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %div9, i32 %3)
  %cmp = icmp eq i32 %div9, %3
  br i1 %cmp, label %do.body, label %if.end20

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @owl_clk_val_best.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@owl_clk_val_best, %if.then15)) #4
          to label %do.end [label %if.then15], !srcloc !19

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %clkt.090 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clkt.090, align 4
  %29 = ptrtoint ptr %mul8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mul8, align 4
  %31 = ptrtoint ptr %div94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %div94, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @owl_clk_val_best.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %33 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %3, ptr %best_parent_rate, align 4
  %34 = ptrtoint ptr %clkt.090 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clkt.090, align 4
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %call21 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #4
  %call22 = tail call i32 @clk_hw_round_rate(ptr noundef %call21, i32 noundef %div9) #4
  %36 = ptrtoint ptr %div94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %div94, align 4
  %add = add i32 %call22, -1
  %sub = add i32 %add, %37
  %div25 = udiv i32 %sub, %37
  %38 = ptrtoint ptr %mul8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mul8, align 4
  %mul27 = mul i32 %39, %div25
  call void @__sanitizer_cov_trace_cmp4(i32 %mul27, i32 %spec.store.select)
  %cmp28.not = icmp ule i32 %mul27, %spec.store.select
  call void @__sanitizer_cov_trace_cmp4(i32 %mul27, i32 %best.092)
  %cmp29 = icmp ugt i32 %mul27, %best.092
  %or.cond = select i1 %cmp28.not, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.then30, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %clkt.090 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %clkt.090, align 4
  %42 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call22, ptr %best_parent_rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.end20.for.inc_crit_edge
  %best.1 = phi i32 [ %mul27, %if.then30 ], [ %best.092, %if.end20.for.inc_crit_edge ]
  %bestval.1 = phi i32 [ %41, %if.then30 ], [ %bestval.093, %if.end20.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.clk_factor_table, ptr %clkt.090, i32 1
  %div = getelementptr %struct.clk_factor_table, ptr %clkt.090, i32 1, i32 2
  %43 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %div, align 4
  %tobool6.not = icmp eq i32 %44, 0
  br i1 %tobool6.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bestval.1)
  %tobool33.not = icmp eq i32 %bestval.1, 0
  br i1 %tobool33.not, label %for.end._get_table_maxval.exit_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end._get_table_maxval.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %_get_table_maxval.exit

_get_table_maxval.exit:                           ; preds = %for.end._get_table_maxval.exit_crit_edge, %if.end4._get_table_maxval.exit_crit_edge
  %call36 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #4
  %call37 = tail call i32 @clk_hw_round_rate(ptr noundef %call36, i32 noundef 1) #4
  %45 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call37, ptr %best_parent_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %_get_table_maxval.exit, %for.end.cleanup_crit_edge, %do.end, %for.body.i.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %do.end ], [ %bestval.1, %for.end.cleanup_crit_edge ], [ 0, %_get_table_maxval.exit ], [ %14, %for.end.i.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ %17, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_factor_helper_recalc_rate(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %factor_hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 4
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !20
  %3 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common, align 4
  %5 = ptrtoint ptr %factor_hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %factor_hw, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg) #4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 1
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift, align 4
  %conv = zext i8 %10 to i32
  %shr = lshr i32 %8, %conv
  %width = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width, align 1
  %conv2 = zext i8 %12 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %div13.i = getelementptr inbounds %struct.clk_factor_table, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %div13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %div13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not4.i = icmp eq i32 %14, 0
  br i1 %tobool.not4.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %clkt.05.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %clkt.05.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clkt.05.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %and)
  %cmp.i = icmp eq i32 %16, %and
  br i1 %cmp.i, label %_get_table_div_mul.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.clk_factor_table, ptr %clkt.05.i, i32 1
  %div1.i = getelementptr %struct.clk_factor_table, ptr %clkt.05.i, i32 1, i32 2
  %17 = ptrtoint ptr %div1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %div1.i, align 4
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

_get_table_div_mul.exit:                          ; preds = %for.body.i
  %div1.le.i = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.05.i, i32 0, i32 2
  %19 = ptrtoint ptr %div1.le.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %div1.le.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %_get_table_div_mul.exit.if.then_crit_edge, label %if.end29

_get_table_div_mul.exit.if.then_crit_edge:        ; preds = %_get_table_div_mul.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %_get_table_div_mul.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %fct_flags = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 3
  %21 = ptrtoint ptr %fct_flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fct_flags, align 2
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool6.not = icmp eq i8 %23, 0
  br i1 %tobool6.not, label %do.end, label %if.then.cleanup_crit_edge, !prof !21

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %clk = getelementptr inbounds %struct.owl_clk_common, ptr %common, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %call17 = call ptr @__clk_get_name(ptr noundef %25) #4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call17) #4
  br label %cleanup

if.end29:                                         ; preds = %_get_table_div_mul.exit
  %mul3.i = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.05.i, i32 0, i32 1
  %26 = ptrtoint ptr %mul3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mul3.i, align 4
  %conv30 = zext i32 %parent_rate to i64
  %conv31 = zext i32 %27 to i64
  %mul32 = mul nuw i64 %conv31, %conv30
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul32)
  %cmp209 = icmp ult i64 %mul32, 4294967296
  br i1 %cmp209, label %if.then217, label %if.else223, !prof !22

if.then217:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %conv218 = trunc i64 %mul32 to i32
  %div221 = udiv i32 %conv218, %20
  br label %cleanup

if.else223:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %28 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %mul32) #7, !srcloc !23
  %asmresult1.i = extractvalue { i64, i64 } %28, 1
  %extract.t352 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else223, %if.then217, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %do.end ], [ %parent_rate, %if.then.cleanup_crit_edge ], [ %div221, %if.then217 ], [ %extract.t352, %if.else223 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_factor_helper_set_rate(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %factor_hw, i32 noundef %rate, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !20
  %table = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 4
  %1 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %table, align 4
  %div313.i = getelementptr inbounds %struct.clk_factor_table, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %div313.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %div313.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not314.i = icmp eq i32 %4, 0
  br i1 %tobool.not314.i, label %entry._get_table_val.exit_crit_edge, label %entry.if.end185.i_crit_edge

entry.if.end185.i_crit_edge:                      ; preds = %entry
  br label %if.end185.i

entry._get_table_val.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %_get_table_val.exit

if.end185.i:                                      ; preds = %for.inc.i.if.end185.i_crit_edge, %entry.if.end185.i_crit_edge
  %5 = phi i32 [ %9, %for.inc.i.if.end185.i_crit_edge ], [ %4, %entry.if.end185.i_crit_edge ]
  %clkt.0315.i = phi ptr [ %incdec.ptr.i, %for.inc.i.if.end185.i_crit_edge ], [ %2, %entry.if.end185.i_crit_edge ]
  %mul.i = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.0315.i, i32 0, i32 1
  %6 = ptrtoint ptr %mul.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mul.i, align 4
  %mul1.i = mul i32 %7, %parent_rate
  %div179.i = udiv i32 %mul1.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %div179.i, i32 %rate)
  %cmp188.not.i = icmp ugt i32 %div179.i, %rate
  br i1 %cmp188.not.i, label %for.inc.i, label %for.end.i

for.inc.i:                                        ; preds = %if.end185.i
  %incdec.ptr.i = getelementptr %struct.clk_factor_table, ptr %clkt.0315.i, i32 1
  %div.i = getelementptr %struct.clk_factor_table, ptr %clkt.0315.i, i32 1, i32 2
  %8 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div.i, align 4
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.inc.i.for.body.i.i.preheader_crit_edge, label %for.inc.i.if.end185.i_crit_edge

for.inc.i.if.end185.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end185.i

for.inc.i.for.body.i.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.preheader

for.end.i:                                        ; preds = %if.end185.i
  %10 = ptrtoint ptr %clkt.0315.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clkt.0315.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp193.i = icmp eq i32 %11, -1
  br i1 %cmp193.i, label %for.end.i.for.body.i.i.preheader_crit_edge, label %for.end.i._get_table_val.exit_crit_edge

for.end.i._get_table_val.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_get_table_val.exit

for.end.i.for.body.i.i.preheader_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %for.end.i.for.body.i.i.preheader_crit_edge, %for.inc.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %clkt.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %2, %for.body.i.i.preheader ]
  %maxval.08.i.i = phi i32 [ %14, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %12 = ptrtoint ptr %clkt.09.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clkt.09.i.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %maxval.08.i.i) #4
  %incdec.ptr.i.i = getelementptr %struct.clk_factor_table, ptr %clkt.09.i.i, i32 1
  %div.i.i = getelementptr %struct.clk_factor_table, ptr %clkt.09.i.i, i32 1, i32 2
  %15 = ptrtoint ptr %div.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %div.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %for.body.i.i._get_table_val.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i._get_table_val.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_get_table_val.exit

_get_table_val.exit:                              ; preds = %for.body.i.i._get_table_val.exit_crit_edge, %for.end.i._get_table_val.exit_crit_edge, %entry._get_table_val.exit_crit_edge
  %val.1.i = phi i32 [ %11, %for.end.i._get_table_val.exit_crit_edge ], [ 0, %entry._get_table_val.exit_crit_edge ], [ %14, %for.body.i.i._get_table_val.exit_crit_edge ]
  %width = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 2
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %width, align 1
  %conv = zext i8 %18 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %19 = tail call i32 @llvm.umin.i32(i32 %val.1.i, i32 %sub)
  %20 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common, align 4
  %22 = ptrtoint ptr %factor_hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %factor_hw, align 4
  %call7 = call i32 @regmap_read(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %reg) #4
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %width, align 1
  %conv9 = zext i8 %25 to i32
  %notmask29 = shl nsw i32 -1, %conv9
  %sub11 = xor i32 %notmask29, -1
  %shift = getelementptr inbounds %struct.owl_factor_hw, ptr %factor_hw, i32 0, i32 1
  %26 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %shift, align 4
  %conv12 = zext i8 %27 to i32
  %shl13 = shl i32 %sub11, %conv12
  %neg = xor i32 %shl13, -1
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg, align 4
  %and = and i32 %29, %neg
  %shl16 = shl i32 %19, %conv12
  %or = or i32 %and, %shl16
  store i32 %or, ptr %reg, align 4
  %30 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %common, align 4
  %32 = ptrtoint ptr %factor_hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %factor_hw, align 4
  %call19 = call i32 @regmap_write(ptr noundef %31, i32 noundef %33, i32 noundef %or) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_factor_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %common2 = getelementptr i8, ptr %hw, i32 -4
  %call3 = tail call i32 @owl_factor_helper_recalc_rate(ptr noundef %common2, ptr noundef %add.ptr.i, i32 noundef %parent_rate)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_factor_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %table.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table.i, align 4
  %call.i = tail call fastcc i32 @owl_clk_val_best(ptr noundef %add.ptr.i, ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate) #4
  %div13.i.i = getelementptr inbounds %struct.clk_factor_table, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %div13.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not4.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not4.i.i, label %entry.owl_factor_helper_round_rate.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.owl_factor_helper_round_rate.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %owl_factor_helper_round_rate.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %clkt.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %1, %entry.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %clkt.05.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clkt.05.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call.i)
  %cmp.i.i = icmp eq i32 %5, %call.i
  br i1 %cmp.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %div1.le.i.i = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.05.i.i, i32 0, i32 2
  %mul3.i.i = getelementptr inbounds %struct.clk_factor_table, ptr %clkt.05.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %mul3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mul3.i.i, align 4
  %8 = ptrtoint ptr %div1.le.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div1.le.i.i, align 4
  br label %owl_factor_helper_round_rate.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.clk_factor_table, ptr %clkt.05.i.i, i32 1
  %div1.i.i = getelementptr %struct.clk_factor_table, ptr %clkt.05.i.i, i32 1, i32 2
  %10 = ptrtoint ptr %div1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div1.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.owl_factor_helper_round_rate.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.owl_factor_helper_round_rate.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %owl_factor_helper_round_rate.exit

owl_factor_helper_round_rate.exit:                ; preds = %for.inc.i.i.owl_factor_helper_round_rate.exit_crit_edge, %if.then.i.i, %entry.owl_factor_helper_round_rate.exit_crit_edge
  %mul.0.i = phi i32 [ 0, %entry.owl_factor_helper_round_rate.exit_crit_edge ], [ %7, %if.then.i.i ], [ 0, %for.inc.i.i.owl_factor_helper_round_rate.exit_crit_edge ]
  %div.0.i = phi i32 [ 1, %entry.owl_factor_helper_round_rate.exit_crit_edge ], [ %9, %if.then.i.i ], [ 1, %for.inc.i.i.owl_factor_helper_round_rate.exit_crit_edge ]
  %12 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parent_rate, align 4
  %mul2.i = mul i32 %13, %mul.0.i
  %div3.i = udiv i32 %mul2.i, %div.0.i
  ret i32 %div3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_factor_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %common2 = getelementptr i8, ptr %hw, i32 -4
  %call3 = tail call i32 @owl_factor_helper_set_rate(ptr noundef %common2, ptr noundef %add.ptr.i, i32 noundef %rate, i32 noundef %parent_rate)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/actions/owl-factor.c", i32 161, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @owl_factor_ops, !4, !"owl_factor_ops", i1 false, i1 false}
!4 = !{!"../drivers/clk/actions/owl-factor.c", i32 216, i32 22}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/clk/actions/owl-factor.c", i32 88, i32 4}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @owl_clk_val_best.__UNIQUE_ID_ddebug170, !6, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2148920489, i64 2148920494, i64 2148920507, i64 2148920551, i64 2148920585, i64 2148920606}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148945676, i64 2148945956, i64 2148946290, i64 2148946624}
