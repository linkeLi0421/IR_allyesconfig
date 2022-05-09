; ModuleID = '/llk/IR_all_yes/scripts/kconfig/symbol.c_pt.bc'
source_filename = "../scripts/kconfig/symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }
%struct.gstr = type { i64, ptr, i32 }
%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.regmatch_t = type { i32, i32 }
%struct.sym_match = type { ptr, i64, i64 }
%struct.dep_stack = type { ptr, ptr, ptr, ptr, ptr }
%struct.file = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [2 x i8] c"y\00", align 1
@symbol_yes = dso_local global %struct.symbol { ptr null, ptr @.str, i32 0, %struct.symbol_value { ptr @.str, i32 2 }, [4 x %struct.symbol_value] zeroinitializer, i32 0, i32 129, ptr null, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@symbol_mod = dso_local global %struct.symbol { ptr null, ptr @.str.1, i32 0, %struct.symbol_value { ptr @.str.1, i32 1 }, [4 x %struct.symbol_value] zeroinitializer, i32 0, i32 129, ptr null, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@symbol_no = dso_local global %struct.symbol { ptr null, ptr @.str.2, i32 0, %struct.symbol_value { ptr @.str.2, i32 0 }, [4 x %struct.symbol_value] zeroinitializer, i32 0, i32 129, ptr null, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer, %struct.expr_value zeroinitializer }, align 8
@modules_val = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"tristate\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@modules_sym = dso_local local_unnamed_addr global ptr null, align 8
@symbol_hash = external local_unnamed_addr global [9973 x ptr], align 16
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"imply\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"\0AWARNING: unmet direct dependencies detected for %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"  Depends on [%c]: \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"  Selected by [y]:\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"  Selected by [m]:\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@check_top = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [39 x i8] c"unexpected recursive dependency error\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"%s:%d:error: recursive dependency detected!\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"%s:%d:\09choice %s contains symbol %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s is part of choice %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"%s:%d:\09symbol %s depends on %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"%s:%d:\09symbol %s is selected by %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"%s:%d:\09symbol %s is implied by %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s:%d:\09symbol %s %s value contains %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"%s:%d:\09symbol %s %s is visible depending on %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [124 x i8] c"For a resolution refer to Documentation/kbuild/kconfig-language.rst\0Asubsection \22Kconfig recursive dependency limitations\22\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"Oops! How to check %d?\0A\00", align 1
@reltable.sym_type_name = private unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.sym_type_name to i64)) to i32)], align 4
@switch.table.sym_toggle_tristate_value = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], align 4
@reltable.sym_get_string_default = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.sym_get_string_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.sym_get_string_default to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.sym_get_string_default to i64)) to i32)], align 4
@switch.table.prop_get_type_name = private unnamed_addr constant [9 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @sym_get_type(ptr nocapture noundef readonly %sym) local_unnamed_addr #0 {
entry:
  %type1 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type1, align 8, !tbaa !5
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %1 = load i32, ptr %flags.i, align 4, !tbaa !13
  %and.i = and i32 %1, 32
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %visible = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %2 = load i32, ptr %visible, align 8, !tbaa !14
  %cmp2 = icmp eq i32 %2, 2
  br i1 %cmp2, label %if.end7, label %if.else

if.else:                                          ; preds = %land.lhs.true, %if.then
  %3 = load i32, ptr @modules_val, align 4, !tbaa !15
  %cmp4 = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp4, i32 1, i32 2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %land.lhs.true, %entry
  %type.0 = phi i32 [ %0, %entry ], [ 1, %land.lhs.true ], [ %spec.select, %if.else ]
  ret i32 %type.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @sym_type_name(i32 noundef %type) local_unnamed_addr #2 {
entry:
  %0 = icmp ult i32 %type, 6
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %type to i64
  %reltable.shift = shl i64 %1, 2
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.sym_type_name, i64 %reltable.shift)
  br label %return

return:                                           ; preds = %switch.lookup, %entry
  %retval.0 = phi ptr [ %reltable.intrinsic, %switch.lookup ], [ @.str.9, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local ptr @sym_get_choice_prop(ptr nocapture noundef readonly %sym) local_unnamed_addr #3 {
entry:
  %prop1 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %prop.0.in = phi ptr [ %prop1, %entry ], [ %prop.0, %for.body ]
  %prop.0 = load ptr, ptr %prop.0.in, align 8, !tbaa !16
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %type = getelementptr inbounds %struct.property, ptr %prop.0, i64 0, i32 1
  %0 = load i32, ptr %type, align 8, !tbaa !17
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond
  ret ptr %prop.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_get_range_prop(ptr nocapture noundef readonly %sym) local_unnamed_addr #4 {
entry:
  %prop1 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.014 = load ptr, ptr %prop1, align 8, !tbaa !16
  %tobool.not15 = icmp eq ptr %prop.014, null
  br i1 %tobool.not15, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %prop.016 = phi ptr [ %prop.0, %for.inc ], [ %prop.014, %entry ]
  %type = getelementptr inbounds %struct.property, ptr %prop.016, i64 0, i32 1
  %0 = load i32, ptr %type, align 8, !tbaa !17
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %visible = getelementptr inbounds %struct.property, ptr %prop.016, i64 0, i32 3
  %1 = load ptr, ptr %visible, align 8, !tbaa !19
  %call = tail call i32 @expr_calc_value(ptr noundef %1) #27
  %tri = getelementptr inbounds %struct.property, ptr %prop.016, i64 0, i32 3, i32 1
  store i32 %call, ptr %tri, align 8, !tbaa !20
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.then, %for.body
  %prop.0 = load ptr, ptr %prop.016, align 8, !tbaa !16
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.then, %entry
  %prop.0.lcssa = phi ptr [ null, %entry ], [ null, %for.inc ], [ %prop.016, %if.then ]
  ret ptr %prop.0.lcssa
}

declare i32 @expr_calc_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_choice_default(ptr nocapture noundef readonly %sym) local_unnamed_addr #4 {
entry:
  %prop1 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.042 = load ptr, ptr %prop1, align 8, !tbaa !16
  %tobool.not43 = icmp eq ptr %prop.042, null
  br i1 %tobool.not43, label %for.cond.i.preheader, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %prop.044 = phi ptr [ %prop.0, %for.inc ], [ %prop.042, %entry ]
  %type = getelementptr inbounds %struct.property, ptr %prop.044, i64 0, i32 1
  %0 = load i32, ptr %type, align 8, !tbaa !17
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %visible = getelementptr inbounds %struct.property, ptr %prop.044, i64 0, i32 3
  %1 = load ptr, ptr %visible, align 8, !tbaa !19
  %call = tail call i32 @expr_calc_value(ptr noundef %1) #27
  %tri = getelementptr inbounds %struct.property, ptr %prop.044, i64 0, i32 3, i32 1
  store i32 %call, ptr %tri, align 8, !tbaa !20
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %for.inc, label %if.end

if.end:                                           ; preds = %if.then
  %expr.i = getelementptr inbounds %struct.property, ptr %prop.044, i64 0, i32 4
  %2 = load ptr, ptr %expr.i, align 8, !tbaa !21, !nonnull !22
  %3 = load i32, ptr %2, align 8, !tbaa !23
  %4 = and i32 %3, -2
  %switch.i = icmp eq i32 %4, 10
  tail call void @llvm.assume(i1 %switch.i)
  %left.i = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %left.i, align 8, !tbaa !15
  %visible8 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 5
  %6 = load i32, ptr %visible8, align 8, !tbaa !14
  %cmp9.not = icmp eq i32 %6, 0
  br i1 %cmp9.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end, %if.then, %for.body
  %prop.0 = load ptr, ptr %prop.044, align 8, !tbaa !16
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.cond.i.preheader, label %for.body

for.cond.i.preheader:                             ; preds = %for.inc, %entry
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.cond.i.preheader
  %prop.0.in.i = phi ptr [ %prop.0.i, %for.body.i ], [ %prop1, %for.cond.i.preheader ]
  %prop.0.i = load ptr, ptr %prop.0.in.i, align 8, !tbaa !16
  %tobool.not.i40 = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i40, label %sym_get_choice_prop.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %type.i = getelementptr inbounds %struct.property, ptr %prop.0.i, i64 0, i32 1
  %7 = load i32, ptr %type.i, align 8, !tbaa !17
  %cmp.i = icmp eq i32 %7, 5
  br i1 %cmp.i, label %sym_get_choice_prop.exit, label %for.cond.i

sym_get_choice_prop.exit:                         ; preds = %for.body.i, %for.cond.i
  %expr14 = getelementptr inbounds %struct.property, ptr %prop.0.i, i64 0, i32 4
  %e.045 = load ptr, ptr %expr14, align 8, !tbaa !15
  %tobool16.not46 = icmp eq ptr %e.045, null
  br i1 %tobool16.not46, label %cleanup, label %land.rhs

for.cond15:                                       ; preds = %for.body18
  %left = getelementptr inbounds %struct.expr, ptr %e.047, i64 0, i32 1
  %e.0 = load ptr, ptr %left, align 8, !tbaa !15
  %tobool16.not = icmp eq ptr %e.0, null
  br i1 %tobool16.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %for.cond15, %sym_get_choice_prop.exit
  %e.047 = phi ptr [ %e.0, %for.cond15 ], [ %e.045, %sym_get_choice_prop.exit ]
  %right = getelementptr inbounds %struct.expr, ptr %e.047, i64 0, i32 2
  %8 = load ptr, ptr %right, align 8, !tbaa !15
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %cleanup, label %for.body18

for.body18:                                       ; preds = %land.rhs
  %visible19 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 5
  %9 = load i32, ptr %visible19, align 8, !tbaa !14
  %cmp20.not = icmp eq i32 %9, 0
  br i1 %cmp20.not, label %for.cond15, label %cleanup

cleanup:                                          ; preds = %for.body18, %land.rhs, %for.cond15, %sym_get_choice_prop.exit, %if.end
  %retval.0 = phi ptr [ null, %sym_get_choice_prop.exit ], [ %8, %for.body18 ], [ null, %for.cond15 ], [ null, %land.rhs ], [ %5, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @prop_get_symbol(ptr nocapture noundef readonly %prop) local_unnamed_addr #0 {
entry:
  %expr = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 4
  %0 = load ptr, ptr %expr, align 8, !tbaa !21
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %0, align 8, !tbaa !23
  %2 = and i32 %1, -2
  %switch = icmp eq i32 %2, 10
  br i1 %switch, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %left = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %left, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true, %entry
  %retval.0 = phi ptr [ %3, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @sym_calc_value(ptr noundef %sym) local_unnamed_addr #4 {
entry:
  %str.i = alloca [64 x i8], align 16
  %gs.i = alloca %struct.gstr, align 8
  %oldval = alloca %struct.symbol_value, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oldval) #27
  %tobool.not = icmp eq ptr %sym, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %0 = load i32, ptr %flags, align 4, !tbaa !13
  %and = and i32 %0, 128
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = and i32 %0, 1048608
  %.not = icmp eq i32 %1, 1048608
  br i1 %.not, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end3
  %and9 = and i32 %0, -1048577
  store i32 %and9, ptr %flags, align 4, !tbaa !13
  %prop1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then7
  %prop.0.in.i = phi ptr [ %prop1.i, %if.then7 ], [ %prop.0.i, %for.body.i ]
  %prop.0.i = load ptr, ptr %prop.0.in.i, align 8, !tbaa !16
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %sym_get_choice_prop.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %type.i = getelementptr inbounds %struct.property, ptr %prop.0.i, i64 0, i32 1
  %2 = load i32, ptr %type.i, align 8, !tbaa !17
  %cmp.i = icmp eq i32 %2, 5
  br i1 %cmp.i, label %sym_get_choice_prop.exit, label %for.cond.i

sym_get_choice_prop.exit:                         ; preds = %for.body.i, %for.cond.i
  %expr.i = getelementptr inbounds %struct.property, ptr %prop.0.i, i64 0, i32 4
  %3 = load ptr, ptr %expr.i, align 8, !tbaa !21
  %tobool.not.i328 = icmp eq ptr %3, null
  br i1 %tobool.not.i328, label %prop_get_symbol.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sym_get_choice_prop.exit
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = and i32 %4, -2
  %switch.i = icmp eq i32 %5, 10
  br i1 %switch.i, label %if.then.i, label %prop_get_symbol.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %left.i = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %left.i, align 8, !tbaa !15
  br label %prop_get_symbol.exit

prop_get_symbol.exit:                             ; preds = %if.then.i, %land.lhs.true.i, %sym_get_choice_prop.exit
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ null, %land.lhs.true.i ], [ null, %sym_get_choice_prop.exit ]
  tail call void @sym_calc_value(ptr noundef %retval.0.i)
  %.pre = load i32, ptr %flags, align 4, !tbaa !13
  br label %if.end12

if.end12:                                         ; preds = %prop_get_symbol.exit, %if.end3
  %7 = phi i32 [ %.pre, %prop_get_symbol.exit ], [ %0, %if.end3 ]
  %or = or i32 %7, 128
  store i32 %or, ptr %flags, align 4, !tbaa !13
  %curr = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %oldval, ptr noundef nonnull align 8 dereferenceable(16) %curr, i64 16, i1 false), !tbaa.struct !25
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %8 = load i32, ptr %type, align 8, !tbaa !5
  switch i32 %8, label %sw.default [
    i32 3, label %sw.epilog
    i32 4, label %sw.epilog
    i32 5, label %sw.epilog
    i32 1, label %sw.bb14
    i32 2, label %sw.bb14
  ]

sw.bb14:                                          ; preds = %if.end12, %if.end12
  %newval.sroa.0.0.copyload240 = load ptr, ptr getelementptr inbounds (%struct.symbol, ptr @symbol_no, i64 0, i32 3), align 8, !tbaa.struct !25
  %newval.sroa.8.0.copyload243 = load i32, ptr getelementptr inbounds (%struct.symbol, ptr @symbol_no, i64 0, i32 3, i32 1), align 8, !tbaa.struct !26
  %newval.sroa.24.0.copyload254 = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.symbol, ptr @symbol_no, i64 0, i32 3), i64 12), align 4, !tbaa.struct !22
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  %name = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 1
  %9 = load ptr, ptr %name, align 8, !tbaa !27
  store ptr %9, ptr %curr, align 8, !tbaa !28
  %tri = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 3, i32 1
  store i32 0, ptr %tri, align 8, !tbaa !29
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %if.end12, %if.end12, %if.end12
  %newval.sroa.0.0 = phi ptr [ %newval.sroa.0.0.copyload240, %sw.bb14 ], [ @.str.10, %if.end12 ], [ @.str.10, %if.end12 ], [ @.str.10, %if.end12 ]
  %newval.sroa.8.0 = phi i32 [ %newval.sroa.8.0.copyload243, %sw.bb14 ], [ 0, %if.end12 ], [ 0, %if.end12 ], [ 0, %if.end12 ]
  %newval.sroa.24.0 = phi i32 [ %newval.sroa.24.0.copyload254, %sw.bb14 ], [ 0, %if.end12 ], [ 0, %if.end12 ], [ 0, %if.end12 ]
  %and18 = and i32 %or, -513
  store i32 %and18, ptr %flags, align 4, !tbaa !13
  tail call fastcc void @sym_calc_visibility(ptr noundef nonnull %sym)
  %visible = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %10 = load i32, ptr %visible, align 8, !tbaa !14
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %sw.epilog
  %11 = load i32, ptr %flags, align 4, !tbaa !13
  %or21 = or i32 %11, 512
  store i32 %or21, ptr %flags, align 4, !tbaa !13
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %sw.epilog
  store ptr %newval.sroa.0.0, ptr %curr, align 8, !tbaa.struct !25
  %newval.sroa.8.0.curr23.sroa_idx = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 3, i32 1
  store i32 %newval.sroa.8.0, ptr %newval.sroa.8.0.curr23.sroa_idx, align 8, !tbaa.struct !26
  %newval.sroa.24.0.curr23.sroa_idx = getelementptr inbounds i8, ptr %curr, i64 12
  store i32 %newval.sroa.24.0, ptr %newval.sroa.24.0.curr23.sroa_idx, align 4, !tbaa.struct !22
  %12 = load i32, ptr %type, align 8, !tbaa !5
  switch i32 %12, label %sw.epilog167 [
    i32 2, label %if.then.i330
    i32 1, label %if.end22.sw.bb25_crit_edge
    i32 3, label %sw.bb142
    i32 5, label %sw.bb142
    i32 4, label %sw.bb142
  ]

if.end22.sw.bb25_crit_edge:                       ; preds = %if.end22
  %.pre549 = load i32, ptr %flags, align 4, !tbaa !13
  %.pre553 = and i32 %.pre549, 32
  br label %sw.bb25

if.then.i330:                                     ; preds = %if.end22
  %13 = load i32, ptr %flags, align 4, !tbaa !13
  %and.i.i = and i32 %13, 32
  %tobool.i.not.i = icmp ne i32 %and.i.i, 0
  %cmp2.i = icmp eq i32 %10, 2
  %or.cond532 = select i1 %tobool.i.not.i, i1 %cmp2.i, i1 false
  br i1 %or.cond532, label %if.then30, label %sw.bb25

sw.bb25:                                          ; preds = %if.then.i330, %if.end22.sw.bb25_crit_edge
  %and.i333.pre-phi = phi i32 [ %.pre553, %if.end22.sw.bb25_crit_edge ], [ %and.i.i, %if.then.i330 ]
  %14 = phi i32 [ %.pre549, %if.end22.sw.bb25_crit_edge ], [ %13, %if.then.i330 ]
  %tobool.i334 = icmp ne i32 %and.i333.pre-phi, 0
  %cmp29 = icmp eq i32 %10, 2
  %or.cond533 = select i1 %tobool.i334, i1 %cmp29, i1 false
  br i1 %or.cond533, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.bb25, %if.then.i330
  %prop1.i335 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i339

for.cond.i339:                                    ; preds = %for.body.i342, %if.then30
  %prop.0.in.i336 = phi ptr [ %prop1.i335, %if.then30 ], [ %prop.0.i337, %for.body.i342 ]
  %prop.0.i337 = load ptr, ptr %prop.0.in.i336, align 8, !tbaa !16
  %tobool.not.i338 = icmp eq ptr %prop.0.i337, null
  br i1 %tobool.not.i338, label %sym_get_choice_prop.exit343, label %for.body.i342

for.body.i342:                                    ; preds = %for.cond.i339
  %type.i340 = getelementptr inbounds %struct.property, ptr %prop.0.i337, i64 0, i32 1
  %15 = load i32, ptr %type.i340, align 8, !tbaa !17
  %cmp.i341 = icmp eq i32 %15, 5
  br i1 %cmp.i341, label %sym_get_choice_prop.exit343, label %for.cond.i339

sym_get_choice_prop.exit343:                      ; preds = %for.body.i342, %for.cond.i339
  %expr.i344 = getelementptr inbounds %struct.property, ptr %prop.0.i337, i64 0, i32 4
  %16 = load ptr, ptr %expr.i344, align 8, !tbaa !21, !nonnull !22
  %17 = load i32, ptr %16, align 8, !tbaa !23
  %18 = and i32 %17, -2
  %switch.i346 = icmp eq i32 %18, 10
  tail call void @llvm.assume(i1 %switch.i346)
  %left.i348 = getelementptr inbounds %struct.expr, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %left.i348, align 8, !tbaa !15
  %curr33 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 3
  %20 = load ptr, ptr %curr33, align 8, !tbaa !28
  %cmp35 = icmp eq ptr %20, %sym
  %cond = select i1 %cmp35, i32 2, i32 0
  br label %sw.epilog167

if.else:                                          ; preds = %sw.bb25
  %cmp.not.not = xor i1 %cmp.not, true
  %and.i353 = and i32 %14, 65536
  %tobool.i354 = icmp ne i32 %and.i353, 0
  %or.cond534 = select i1 %cmp.not.not, i1 %tobool.i354, i1 false
  br i1 %or.cond534, label %if.then41, label %if.end52

if.then41:                                        ; preds = %if.else
  %tri42 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 4, i64 0, i32 1
  %21 = load i32, ptr %tri42, align 8, !tbaa !30
  br label %calc_newval.sink.split

if.end52:                                         ; preds = %if.else
  %tri53 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %22 = load i32, ptr %tri53, align 8, !tbaa !31
  %cmp54.not = icmp eq i32 %22, 0
  br i1 %cmp54.not, label %if.end58, label %if.then55

if.then55:                                        ; preds = %if.end52
  %or57 = or i32 %14, 512
  store i32 %or57, ptr %flags, align 4, !tbaa !13
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52
  %23 = phi i32 [ %or57, %if.then55 ], [ %14, %if.end52 ]
  %and.i356 = and i32 %23, 16
  %tobool.i357.not = icmp eq i32 %and.i356, 0
  br i1 %tobool.i357.not, label %if.then60, label %calc_newval

if.then60:                                        ; preds = %if.end58
  %prop1.i358 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.014.i = load ptr, ptr %prop1.i358, align 8, !tbaa !16
  %tobool.not15.i = icmp eq ptr %prop.014.i, null
  br i1 %tobool.not15.i, label %if.end83, label %for.body.i361

for.body.i361:                                    ; preds = %for.inc.i, %if.then60
  %prop.016.i = phi ptr [ %prop.0.i364, %for.inc.i ], [ %prop.014.i, %if.then60 ]
  %type.i359 = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 1
  %24 = load i32, ptr %type.i359, align 8, !tbaa !17
  %cmp.i360 = icmp eq i32 %24, 4
  br i1 %cmp.i360, label %if.then.i363, label %for.inc.i

if.then.i363:                                     ; preds = %for.body.i361
  %visible.i362 = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 3
  %25 = load ptr, ptr %visible.i362, align 8, !tbaa !19
  %call.i = tail call i32 @expr_calc_value(ptr noundef %25) #27
  %tri.i = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 3, i32 1
  store i32 %call.i, ptr %tri.i, align 8, !tbaa !20
  %cmp5.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.not.i, label %for.inc.i, label %if.then63

for.inc.i:                                        ; preds = %if.then.i363, %for.body.i361
  %prop.0.i364 = load ptr, ptr %prop.016.i, align 8, !tbaa !16
  %tobool.not.i365 = icmp eq ptr %prop.0.i364, null
  br i1 %tobool.not.i365, label %if.end83, label %for.body.i361

if.then63:                                        ; preds = %if.then.i363
  %tri.i.le = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 3, i32 1
  %expr = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 4
  %26 = load ptr, ptr %expr, align 8, !tbaa !21
  %call64 = tail call i32 @expr_calc_value(ptr noundef %26) #27
  %27 = load i32, ptr %tri.i.le, align 8, !tbaa !20
  %cmp67 = icmp ult i32 %call64, %27
  br i1 %cmp67, label %cond.true68, label %cond.end74

cond.true68:                                      ; preds = %if.then63
  %28 = load ptr, ptr %expr, align 8, !tbaa !21
  %call70 = tail call i32 @expr_calc_value(ptr noundef %28) #27
  br label %cond.end74

cond.end74:                                       ; preds = %cond.true68, %if.then63
  %cond75 = phi i32 [ %call70, %cond.true68 ], [ %27, %if.then63 ]
  %cmp78.not = icmp eq i32 %cond75, 0
  br i1 %cmp78.not, label %if.end83, label %if.then79

if.then79:                                        ; preds = %cond.end74
  %29 = load i32, ptr %flags, align 4, !tbaa !13
  %or81 = or i32 %29, 512
  store i32 %or81, ptr %flags, align 4, !tbaa !13
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %cond.end74, %for.inc.i, %if.then60
  %newval.sroa.8.1 = phi i32 [ %cond75, %if.then79 ], [ 0, %cond.end74 ], [ %newval.sroa.8.0, %if.then60 ], [ %newval.sroa.8.0, %for.inc.i ]
  %tri84 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 10, i32 1
  %30 = load i32, ptr %tri84, align 8, !tbaa !32
  %cmp85.not = icmp eq i32 %30, 0
  br i1 %cmp85.not, label %calc_newval, label %if.then86

if.then86:                                        ; preds = %if.end83
  %31 = load i32, ptr %flags, align 4, !tbaa !13
  %or88 = or i32 %31, 512
  store i32 %or88, ptr %flags, align 4, !tbaa !13
  %32 = tail call i32 @llvm.umax.i32(i32 %newval.sroa.8.1, i32 %30)
  %tri102 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 8, i32 1
  %33 = load i32, ptr %tri102, align 8, !tbaa !33
  br label %calc_newval.sink.split

calc_newval.sink.split:                           ; preds = %if.then86, %if.then41
  %.sink560 = phi i32 [ %33, %if.then86 ], [ %10, %if.then41 ]
  %.sink = phi i32 [ %32, %if.then86 ], [ %21, %if.then41 ]
  %34 = tail call i32 @llvm.umin.i32(i32 %.sink, i32 %.sink560)
  br label %calc_newval

calc_newval:                                      ; preds = %calc_newval.sink.split, %if.end83, %if.end58
  %newval.sroa.8.2 = phi i32 [ %newval.sroa.8.0, %if.end58 ], [ %newval.sroa.8.1, %if.end83 ], [ %34, %calc_newval.sink.split ]
  %tri115 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 8, i32 1
  %35 = load i32, ptr %tri115, align 8, !tbaa !33
  %tri117 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %36 = load i32, ptr %tri117, align 8, !tbaa !31
  %cmp118 = icmp ult i32 %35, %36
  br i1 %cmp118, label %if.then119, label %if.end133

if.then119:                                       ; preds = %calc_newval
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gs.i) #27
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %gs.i) #27
  %name.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 1
  %37 = load ptr, ptr %name.i, align 8, !tbaa !27
  call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull %gs.i, ptr noundef nonnull @.str.20, ptr noundef %37) #27
  %dir_dep.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 8
  %38 = load i32, ptr %tri115, align 8, !tbaa !33
  %cmp.i367 = icmp eq i32 %38, 1
  %cond.i = select i1 %cmp.i367, i32 109, i32 110
  call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull %gs.i, ptr noundef nonnull @.str.21, i32 noundef %cond.i) #27
  %39 = load ptr, ptr %dir_dep.i, align 8, !tbaa !34
  call void @expr_gstr_print(ptr noundef %39, ptr noundef nonnull %gs.i) #27
  call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull %gs.i, ptr noundef nonnull @.str.22) #27
  %rev_dep.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9
  %40 = load ptr, ptr %rev_dep.i, align 8, !tbaa !35
  call void @expr_gstr_print_revdep(ptr noundef %40, ptr noundef nonnull %gs.i, i32 noundef 2, ptr noundef nonnull @.str.23) #27
  %41 = load ptr, ptr %rev_dep.i, align 8, !tbaa !35
  call void @expr_gstr_print_revdep(ptr noundef %41, ptr noundef nonnull %gs.i, i32 noundef 1, ptr noundef nonnull @.str.24) #27
  %call.i368 = call ptr @str_get(ptr noundef nonnull %gs.i) #27
  %42 = load ptr, ptr @stderr, align 8, !tbaa !16
  %call5.i = call i32 @fputs(ptr noundef %call.i368, ptr noundef %42) #28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gs.i) #27
  %.pre550 = load i32, ptr %tri117, align 8, !tbaa !31
  br label %if.end133

if.end133:                                        ; preds = %if.then119, %calc_newval
  %43 = phi i32 [ %36, %calc_newval ], [ %.pre550, %if.then119 ]
  %44 = call i32 @llvm.umax.i32(i32 %newval.sroa.8.2, i32 %43)
  %cmp135 = icmp eq i32 %44, 1
  br i1 %cmp135, label %land.lhs.true136, label %sw.epilog167

land.lhs.true136:                                 ; preds = %if.end133
  %45 = load i32, ptr %type, align 8, !tbaa !5
  switch i32 %45, label %sw.epilog167 [
    i32 2, label %if.then.i374
    i32 1, label %sym_get_type.exit382.thread
  ]

if.then.i374:                                     ; preds = %land.lhs.true136
  %46 = load i32, ptr %flags, align 4, !tbaa !13
  %and.i.i372 = and i32 %46, 32
  %tobool.i.not.i373 = icmp eq i32 %and.i.i372, 0
  br i1 %tobool.i.not.i373, label %if.else.i380, label %land.lhs.true.i377

land.lhs.true.i377:                               ; preds = %if.then.i374
  %47 = load i32, ptr %visible, align 8, !tbaa !14
  %cmp2.i376 = icmp eq i32 %47, 2
  %48 = load i32, ptr @modules_val, align 4
  %cmp4.i378 = icmp eq i32 %48, 0
  %or.cond535 = select i1 %cmp2.i376, i1 true, i1 %cmp4.i378
  br i1 %or.cond535, label %sym_get_type.exit382.thread, label %sw.epilog167

if.else.i380:                                     ; preds = %if.then.i374
  %.old = load i32, ptr @modules_val, align 4, !tbaa !15
  %cmp4.i378.old = icmp eq i32 %.old, 0
  br i1 %cmp4.i378.old, label %sym_get_type.exit382.thread, label %sw.epilog167

sym_get_type.exit382.thread:                      ; preds = %if.else.i380, %land.lhs.true.i377, %land.lhs.true136
  br label %sw.epilog167

sw.bb142:                                         ; preds = %if.end22, %if.end22, %if.end22
  br i1 %cmp.not, label %if.end152, label %land.lhs.true145

land.lhs.true145:                                 ; preds = %sw.bb142
  %49 = load i32, ptr %flags, align 4, !tbaa !13
  %and.i384 = and i32 %49, 65536
  %tobool.i385.not = icmp eq i32 %and.i384, 0
  br i1 %tobool.i385.not, label %if.end152, label %if.then147

if.then147:                                       ; preds = %land.lhs.true145
  %def148 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 4
  %50 = load ptr, ptr %def148, align 8, !tbaa !36
  br label %sw.epilog167

if.end152:                                        ; preds = %land.lhs.true145, %sw.bb142
  %prop1.i386 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.014.i387 = load ptr, ptr %prop1.i386, align 8, !tbaa !16
  %tobool.not15.i388 = icmp eq ptr %prop.014.i387, null
  br i1 %tobool.not15.i388, label %sw.epilog167, label %for.body.i392

for.body.i392:                                    ; preds = %for.inc.i400, %if.end152
  %prop.016.i389 = phi ptr [ %prop.0.i398, %for.inc.i400 ], [ %prop.014.i387, %if.end152 ]
  %type.i390 = getelementptr inbounds %struct.property, ptr %prop.016.i389, i64 0, i32 1
  %51 = load i32, ptr %type.i390, align 8, !tbaa !17
  %cmp.i391 = icmp eq i32 %51, 4
  br i1 %cmp.i391, label %if.then.i397, label %for.inc.i400

if.then.i397:                                     ; preds = %for.body.i392
  %visible.i393 = getelementptr inbounds %struct.property, ptr %prop.016.i389, i64 0, i32 3
  %52 = load ptr, ptr %visible.i393, align 8, !tbaa !19
  %call.i394 = tail call i32 @expr_calc_value(ptr noundef %52) #27
  %tri.i395 = getelementptr inbounds %struct.property, ptr %prop.016.i389, i64 0, i32 3, i32 1
  store i32 %call.i394, ptr %tri.i395, align 8, !tbaa !20
  %cmp5.not.i396 = icmp eq i32 %call.i394, 0
  br i1 %cmp5.not.i396, label %for.inc.i400, label %if.then155

for.inc.i400:                                     ; preds = %if.then.i397, %for.body.i392
  %prop.0.i398 = load ptr, ptr %prop.016.i389, align 8, !tbaa !16
  %tobool.not.i399 = icmp eq ptr %prop.0.i398, null
  br i1 %tobool.not.i399, label %sw.epilog167, label %for.body.i392

if.then155:                                       ; preds = %if.then.i397
  %expr.i403 = getelementptr inbounds %struct.property, ptr %prop.016.i389, i64 0, i32 4
  %53 = load ptr, ptr %expr.i403, align 8, !tbaa !21
  %tobool.not.i404 = icmp eq ptr %53, null
  br i1 %tobool.not.i404, label %sw.epilog167, label %land.lhs.true.i406

land.lhs.true.i406:                               ; preds = %if.then155
  %54 = load i32, ptr %53, align 8, !tbaa !23
  %55 = and i32 %54, -2
  %switch.i405 = icmp eq i32 %55, 10
  br i1 %switch.i405, label %prop_get_symbol.exit410, label %sw.epilog167

prop_get_symbol.exit410:                          ; preds = %land.lhs.true.i406
  %left.i407 = getelementptr inbounds %struct.expr, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %left.i407, align 8, !tbaa !15
  %tobool157.not = icmp eq ptr %56, null
  br i1 %tobool157.not, label %sw.epilog167, label %if.then158

if.then158:                                       ; preds = %prop_get_symbol.exit410
  %57 = load i32, ptr %flags, align 4, !tbaa !13
  %or160 = or i32 %57, 512
  store i32 %or160, ptr %flags, align 4, !tbaa !13
  tail call void @sym_calc_value(ptr noundef nonnull %56)
  %curr161 = getelementptr inbounds %struct.symbol, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %curr161, align 8, !tbaa !28
  br label %sw.epilog167

sw.epilog167:                                     ; preds = %if.then158, %prop_get_symbol.exit410, %land.lhs.true.i406, %if.then155, %for.inc.i400, %if.end152, %if.then147, %sym_get_type.exit382.thread, %if.else.i380, %land.lhs.true.i377, %land.lhs.true136, %if.end133, %sym_get_choice_prop.exit343, %if.end22
  %newval.sroa.0.2 = phi ptr [ %50, %if.then147 ], [ %newval.sroa.0.0, %if.end133 ], [ %58, %if.then158 ], [ %newval.sroa.0.0, %prop_get_symbol.exit410 ], [ %newval.sroa.0.0, %sym_get_choice_prop.exit343 ], [ %newval.sroa.0.0, %sym_get_type.exit382.thread ], [ %newval.sroa.0.0, %if.else.i380 ], [ %newval.sroa.0.0, %if.end152 ], [ %newval.sroa.0.0, %land.lhs.true.i406 ], [ %newval.sroa.0.0, %if.then155 ], [ %newval.sroa.0.0, %if.end22 ], [ %newval.sroa.0.0, %land.lhs.true.i377 ], [ %newval.sroa.0.0, %land.lhs.true136 ], [ %newval.sroa.0.0, %for.inc.i400 ]
  %newval.sroa.8.4 = phi i32 [ %newval.sroa.8.0, %if.then147 ], [ %44, %if.end133 ], [ %newval.sroa.8.0, %if.then158 ], [ %newval.sroa.8.0, %prop_get_symbol.exit410 ], [ %cond, %sym_get_choice_prop.exit343 ], [ 2, %sym_get_type.exit382.thread ], [ 1, %if.else.i380 ], [ %newval.sroa.8.0, %if.end152 ], [ %newval.sroa.8.0, %land.lhs.true.i406 ], [ %newval.sroa.8.0, %if.then155 ], [ %newval.sroa.8.0, %if.end22 ], [ 1, %land.lhs.true.i377 ], [ 1, %land.lhs.true136 ], [ %newval.sroa.8.0, %for.inc.i400 ]
  store ptr %newval.sroa.0.2, ptr %curr, align 8, !tbaa.struct !25
  store i32 %newval.sroa.8.4, ptr %newval.sroa.8.0.curr23.sroa_idx, align 8, !tbaa.struct !26
  store i32 %newval.sroa.24.0, ptr %newval.sroa.24.0.curr23.sroa_idx, align 4, !tbaa.struct !22
  %59 = load i32, ptr %flags, align 4, !tbaa !13
  %and.i412 = and i32 %59, 16
  %tobool.i413 = icmp ne i32 %and.i412, 0
  %cmp172 = icmp eq i32 %newval.sroa.8.4, 2
  %or.cond = select i1 %tobool.i413, i1 %cmp172, i1 false
  br i1 %or.cond, label %if.then173, label %if.end177

if.then173:                                       ; preds = %sw.epilog167
  %prop1.i.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %if.then173
  %prop.0.in.i.i = phi ptr [ %prop1.i.i, %if.then173 ], [ %prop.0.i.i, %for.body.i.i ]
  %prop.0.i.i = load ptr, ptr %prop.0.in.i.i, align 8, !tbaa !16
  %tobool.not.i.i = icmp eq ptr %prop.0.i.i, null
  br i1 %tobool.not.i.i, label %sym_get_choice_prop.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %type.i.i = getelementptr inbounds %struct.property, ptr %prop.0.i.i, i64 0, i32 1
  %60 = load i32, ptr %type.i.i, align 8, !tbaa !17
  %cmp.i.i = icmp eq i32 %60, 5
  br i1 %cmp.i.i, label %sym_get_choice_prop.exit.i, label %for.cond.i.i

sym_get_choice_prop.exit.i:                       ; preds = %for.body.i.i, %for.cond.i.i
  %expr.i414 = getelementptr inbounds %struct.property, ptr %prop.0.i.i, i64 0, i32 4
  %e.045.i = load ptr, ptr %expr.i414, align 8, !tbaa !15
  %tobool.not46.i = icmp eq ptr %e.045.i, null
  br i1 %tobool.not46.i, label %for.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i421, %sym_get_choice_prop.exit.i
  %e.048.i = phi ptr [ %e.0.i, %for.inc.i421 ], [ %e.045.i, %sym_get_choice_prop.exit.i ]
  %flags.047.i = phi i32 [ %flags.1.i, %for.inc.i421 ], [ %59, %sym_get_choice_prop.exit.i ]
  %right.i = getelementptr inbounds %struct.expr, ptr %e.048.i, i64 0, i32 2
  %61 = load ptr, ptr %right.i, align 8, !tbaa !15
  %tobool2.not.i = icmp eq ptr %61, null
  br i1 %tobool2.not.i, label %for.end.loopexit.i, label %for.body.i416

for.body.i416:                                    ; preds = %land.rhs.i
  call fastcc void @sym_calc_visibility(ptr noundef nonnull %61) #27
  %visible.i415 = getelementptr inbounds %struct.symbol, ptr %61, i64 0, i32 5
  %62 = load i32, ptr %visible.i415, align 8, !tbaa !14
  %cmp.not.i = icmp eq i32 %62, 0
  br i1 %cmp.not.i, label %for.inc.i421, label %if.then.i418

if.then.i418:                                     ; preds = %for.body.i416
  %flags3.i = getelementptr inbounds %struct.symbol, ptr %61, i64 0, i32 6
  %63 = load i32, ptr %flags3.i, align 4, !tbaa !13
  %and.i417 = and i32 %63, %flags.047.i
  br label %for.inc.i421

for.inc.i421:                                     ; preds = %if.then.i418, %for.body.i416
  %flags.1.i = phi i32 [ %and.i417, %if.then.i418 ], [ %flags.047.i, %for.body.i416 ]
  %left.i419 = getelementptr inbounds %struct.expr, ptr %e.048.i, i64 0, i32 1
  %e.0.i = load ptr, ptr %left.i419, align 8, !tbaa !15
  %tobool.not.i420 = icmp eq ptr %e.0.i, null
  br i1 %tobool.not.i420, label %for.end.loopexit.i, label %land.rhs.i

for.end.loopexit.i:                               ; preds = %for.inc.i421, %land.rhs.i
  %flags.0.lcssa.ph.i = phi i32 [ %flags.047.i, %land.rhs.i ], [ %flags.1.i, %for.inc.i421 ]
  %.pre.i = load i32, ptr %flags, align 4, !tbaa !13
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %sym_get_choice_prop.exit.i
  %64 = phi i32 [ %59, %sym_get_choice_prop.exit.i ], [ %.pre.i, %for.end.loopexit.i ]
  %flags.0.lcssa.i = phi i32 [ %59, %sym_get_choice_prop.exit.i ], [ %flags.0.lcssa.ph.i, %for.end.loopexit.i ]
  %or.i = or i32 %flags.0.lcssa.i, -65537
  %and5.i = and i32 %or.i, %64
  store i32 %and5.i, ptr %flags, align 4, !tbaa !13
  %def.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 4
  %65 = load ptr, ptr %def.i, align 8, !tbaa !36
  %tobool6.not.i = icmp eq ptr %65, null
  br i1 %tobool6.not.i, label %if.end10.i, label %land.lhs.true.i422

land.lhs.true.i422:                               ; preds = %for.end.i
  %visible7.i = getelementptr inbounds %struct.symbol, ptr %65, i64 0, i32 5
  %66 = load i32, ptr %visible7.i, align 8, !tbaa !14
  %cmp8.not.i = icmp eq i32 %66, 0
  br i1 %cmp8.not.i, label %if.end10.i, label %sym_calc_choice.exit

if.end10.i:                                       ; preds = %land.lhs.true.i422, %for.end.i
  %prop.042.i.i = load ptr, ptr %prop1.i.i, align 8, !tbaa !16
  %tobool.not43.i.i = icmp eq ptr %prop.042.i.i, null
  br i1 %tobool.not43.i.i, label %for.cond.i.i.i.preheader, label %for.body.i37.i

for.body.i37.i:                                   ; preds = %for.inc.i.i, %if.end10.i
  %prop.044.i.i = phi ptr [ %prop.0.i38.i, %for.inc.i.i ], [ %prop.042.i.i, %if.end10.i ]
  %type.i35.i = getelementptr inbounds %struct.property, ptr %prop.044.i.i, i64 0, i32 1
  %67 = load i32, ptr %type.i35.i, align 8, !tbaa !17
  %cmp.i36.i = icmp eq i32 %67, 4
  br i1 %cmp.i36.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i37.i
  %visible.i.i = getelementptr inbounds %struct.property, ptr %prop.044.i.i, i64 0, i32 3
  %68 = load ptr, ptr %visible.i.i, align 8, !tbaa !19
  %call.i.i = call i32 @expr_calc_value(ptr noundef %68) #27
  %tri.i.i = getelementptr inbounds %struct.property, ptr %prop.044.i.i, i64 0, i32 3, i32 1
  store i32 %call.i.i, ptr %tri.i.i, align 8, !tbaa !20
  %cmp5.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %expr.i.i.i = getelementptr inbounds %struct.property, ptr %prop.044.i.i, i64 0, i32 4
  %69 = load ptr, ptr %expr.i.i.i, align 8, !tbaa !21, !nonnull !22
  %70 = load i32, ptr %69, align 8, !tbaa !23
  %71 = and i32 %70, -2
  %switch.i.i.i = icmp eq i32 %71, 10
  call void @llvm.assume(i1 %switch.i.i.i) #27
  %left.i.i.i = getelementptr inbounds %struct.expr, ptr %69, i64 0, i32 1
  %72 = load ptr, ptr %left.i.i.i, align 8, !tbaa !15
  %visible8.i.i = getelementptr inbounds %struct.symbol, ptr %72, i64 0, i32 5
  %73 = load i32, ptr %visible8.i.i, align 8, !tbaa !14
  %cmp9.not.i.i = icmp eq i32 %73, 0
  br i1 %cmp9.not.i.i, label %for.inc.i.i, label %sym_calc_choice.exit

for.inc.i.i:                                      ; preds = %if.end.i.i, %if.then.i.i, %for.body.i37.i
  %prop.0.i38.i = load ptr, ptr %prop.044.i.i, align 8, !tbaa !16
  %tobool.not.i39.i = icmp eq ptr %prop.0.i38.i, null
  br i1 %tobool.not.i39.i, label %for.cond.i.i.i.preheader, label %for.body.i37.i

for.cond.i.i.i.preheader:                         ; preds = %for.inc.i.i, %if.end10.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i, %for.cond.i.i.i.preheader
  %prop.0.in.i.i.i = phi ptr [ %prop.0.i.i.i, %for.body.i.i.i ], [ %prop1.i.i, %for.cond.i.i.i.preheader ]
  %prop.0.i.i.i = load ptr, ptr %prop.0.in.i.i.i, align 8, !tbaa !16
  %tobool.not.i40.i.i = icmp eq ptr %prop.0.i.i.i, null
  br i1 %tobool.not.i40.i.i, label %sym_get_choice_prop.exit.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %type.i.i.i = getelementptr inbounds %struct.property, ptr %prop.0.i.i.i, i64 0, i32 1
  %74 = load i32, ptr %type.i.i.i, align 8, !tbaa !17
  %cmp.i.i.i = icmp eq i32 %74, 5
  br i1 %cmp.i.i.i, label %sym_get_choice_prop.exit.i.i, label %for.cond.i.i.i

sym_get_choice_prop.exit.i.i:                     ; preds = %for.body.i.i.i, %for.cond.i.i.i
  %expr14.i.i = getelementptr inbounds %struct.property, ptr %prop.0.i.i.i, i64 0, i32 4
  %e.045.i.i = load ptr, ptr %expr14.i.i, align 8, !tbaa !15
  %tobool16.not46.i.i = icmp eq ptr %e.045.i.i, null
  br i1 %tobool16.not46.i.i, label %if.then13.i, label %land.rhs.i.i

for.cond15.i.i:                                   ; preds = %for.body18.i.i
  %left.i.i = getelementptr inbounds %struct.expr, ptr %e.047.i.i, i64 0, i32 1
  %e.0.i.i = load ptr, ptr %left.i.i, align 8, !tbaa !15
  %tobool16.not.i.i = icmp eq ptr %e.0.i.i, null
  br i1 %tobool16.not.i.i, label %if.then13.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.cond15.i.i, %sym_get_choice_prop.exit.i.i
  %e.047.i.i = phi ptr [ %e.0.i.i, %for.cond15.i.i ], [ %e.045.i.i, %sym_get_choice_prop.exit.i.i ]
  %right.i.i = getelementptr inbounds %struct.expr, ptr %e.047.i.i, i64 0, i32 2
  %75 = load ptr, ptr %right.i.i, align 8, !tbaa !15
  %tobool17.not.i.i = icmp eq ptr %75, null
  br i1 %tobool17.not.i.i, label %if.then13.i, label %for.body18.i.i

for.body18.i.i:                                   ; preds = %land.rhs.i.i
  %visible19.i.i = getelementptr inbounds %struct.symbol, ptr %75, i64 0, i32 5
  %76 = load i32, ptr %visible19.i.i, align 8, !tbaa !14
  %cmp20.not.i.i = icmp eq i32 %76, 0
  br i1 %cmp20.not.i.i, label %for.cond15.i.i, label %sym_calc_choice.exit

if.then13.i:                                      ; preds = %land.rhs.i.i, %for.cond15.i.i, %sym_get_choice_prop.exit.i.i
  store i32 0, ptr %newval.sroa.8.0.curr23.sroa_idx, align 8, !tbaa !29
  br label %sym_calc_choice.exit

sym_calc_choice.exit:                             ; preds = %if.then13.i, %for.body18.i.i, %if.end.i.i, %land.lhs.true.i422
  %retval.0.i424 = phi ptr [ %65, %land.lhs.true.i422 ], [ null, %if.then13.i ], [ %75, %for.body18.i.i ], [ %72, %if.end.i.i ]
  store ptr %retval.0.i424, ptr %curr, align 8, !tbaa !28
  br label %if.end177

if.end177:                                        ; preds = %sym_calc_choice.exit, %sw.epilog167
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str.i) #27
  %77 = load i32, ptr %type, align 8, !tbaa !5
  switch i32 %77, label %sym_validate_range.exit [
    i32 3, label %sw.epilog.i
    i32 4, label %sw.bb1.i
  ]

sw.bb1.i:                                         ; preds = %if.end177
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end177
  %base.0.i = phi i32 [ 16, %sw.bb1.i ], [ 10, %if.end177 ]
  %prop1.i495 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.014.i496 = load ptr, ptr %prop1.i495, align 8, !tbaa !16
  %tobool.not15.i497 = icmp eq ptr %prop.014.i496, null
  br i1 %tobool.not15.i497, label %sym_validate_range.exit, label %for.body.i501

for.body.i501:                                    ; preds = %for.inc.i509, %sw.epilog.i
  %prop.016.i498 = phi ptr [ %prop.0.i507, %for.inc.i509 ], [ %prop.014.i496, %sw.epilog.i ]
  %type.i499 = getelementptr inbounds %struct.property, ptr %prop.016.i498, i64 0, i32 1
  %78 = load i32, ptr %type.i499, align 8, !tbaa !17
  %cmp.i500 = icmp eq i32 %78, 8
  br i1 %cmp.i500, label %if.then.i506, label %for.inc.i509

if.then.i506:                                     ; preds = %for.body.i501
  %visible.i502 = getelementptr inbounds %struct.property, ptr %prop.016.i498, i64 0, i32 3
  %79 = load ptr, ptr %visible.i502, align 8, !tbaa !19
  %call.i503 = call i32 @expr_calc_value(ptr noundef %79) #27
  %tri.i504 = getelementptr inbounds %struct.property, ptr %prop.016.i498, i64 0, i32 3, i32 1
  store i32 %call.i503, ptr %tri.i504, align 8, !tbaa !20
  %cmp5.not.i505 = icmp eq i32 %call.i503, 0
  br i1 %cmp5.not.i505, label %for.inc.i509, label %if.end.i

for.inc.i509:                                     ; preds = %if.then.i506, %for.body.i501
  %prop.0.i507 = load ptr, ptr %prop.016.i498, align 8, !tbaa !16
  %tobool.not.i508 = icmp eq ptr %prop.0.i507, null
  br i1 %tobool.not.i508, label %sym_validate_range.exit, label %for.body.i501

if.end.i:                                         ; preds = %if.then.i506
  %80 = load ptr, ptr %curr, align 8, !tbaa !28
  %call4.i = call i64 @strtoll(ptr nocapture noundef %80, ptr noundef null, i32 noundef %base.0.i) #27
  %expr.i428 = getelementptr inbounds %struct.property, ptr %prop.016.i498, i64 0, i32 4
  %81 = load ptr, ptr %expr.i428, align 8, !tbaa !21
  %left.i429 = getelementptr inbounds %struct.expr, ptr %81, i64 0, i32 1
  %82 = load ptr, ptr %left.i429, align 8, !tbaa !15
  call void @sym_calc_value(ptr noundef %82) #27
  %type.i487 = getelementptr inbounds %struct.symbol, ptr %82, i64 0, i32 2
  %83 = load i32, ptr %type.i487, align 8, !tbaa !5
  switch i32 %83, label %sym_get_range_val.exit494 [
    i32 3, label %sw.bb.i488
    i32 4, label %sw.bb1.i489
  ]

sw.bb.i488:                                       ; preds = %if.end.i
  br label %sym_get_range_val.exit494

sw.bb1.i489:                                      ; preds = %if.end.i
  br label %sym_get_range_val.exit494

sym_get_range_val.exit494:                        ; preds = %sw.bb1.i489, %sw.bb.i488, %if.end.i
  %base.addr.0.i490 = phi i32 [ %base.0.i, %if.end.i ], [ 16, %sw.bb1.i489 ], [ 10, %sw.bb.i488 ]
  %curr.i491 = getelementptr inbounds %struct.symbol, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %curr.i491, align 8, !tbaa !28
  %call.i492 = call i64 @strtoll(ptr nocapture noundef %84, ptr noundef null, i32 noundef %base.addr.0.i490) #27
  %cmp.not.i431 = icmp slt i64 %call4.i, %call.i492
  br i1 %cmp.not.i431, label %if.end12.i, label %if.then6.i

if.then6.i:                                       ; preds = %sym_get_range_val.exit494
  %85 = load ptr, ptr %expr.i428, align 8, !tbaa !21
  %right.i432 = getelementptr inbounds %struct.expr, ptr %85, i64 0, i32 2
  %86 = load ptr, ptr %right.i432, align 8, !tbaa !15
  call void @sym_calc_value(ptr noundef %86) #27
  %type.i482 = getelementptr inbounds %struct.symbol, ptr %86, i64 0, i32 2
  %87 = load i32, ptr %type.i482, align 8, !tbaa !5
  switch i32 %87, label %sym_get_range_val.exit [
    i32 3, label %sw.bb.i
    i32 4, label %sw.bb1.i483
  ]

sw.bb.i:                                          ; preds = %if.then6.i
  br label %sym_get_range_val.exit

sw.bb1.i483:                                      ; preds = %if.then6.i
  br label %sym_get_range_val.exit

sym_get_range_val.exit:                           ; preds = %sw.bb1.i483, %sw.bb.i, %if.then6.i
  %base.addr.0.i = phi i32 [ %base.0.i, %if.then6.i ], [ 16, %sw.bb1.i483 ], [ 10, %sw.bb.i ]
  %curr.i484 = getelementptr inbounds %struct.symbol, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %curr.i484, align 8, !tbaa !28
  %call.i485 = call i64 @strtoll(ptr nocapture noundef %88, ptr noundef null, i32 noundef %base.addr.0.i) #27
  %cmp9.not.i = icmp sgt i64 %call4.i, %call.i485
  br i1 %cmp9.not.i, label %if.end12.i, label %sym_validate_range.exit

if.end12.i:                                       ; preds = %sym_get_range_val.exit, %sym_get_range_val.exit494
  %val2.0.i = phi i64 [ %call.i485, %sym_get_range_val.exit ], [ %call.i492, %sym_get_range_val.exit494 ]
  %89 = load i32, ptr %type, align 8, !tbaa !5
  %cmp14.i = icmp eq i32 %89, 3
  %.str.25..str.26 = select i1 %cmp14.i, ptr @.str.25, ptr @.str.26
  %call18.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull %.str.25..str.26, i64 noundef %val2.0.i) #27
  %call21.i = call ptr @xstrdup(ptr noundef nonnull %str.i) #27
  store ptr %call21.i, ptr %curr, align 8, !tbaa !28
  br label %sym_validate_range.exit

sym_validate_range.exit:                          ; preds = %if.end12.i, %sym_get_range_val.exit, %for.inc.i509, %sw.epilog.i, %if.end177
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str.i) #27
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %oldval, ptr noundef nonnull dereferenceable(16) %curr, i64 16)
  %tobool180.not = icmp eq i32 %bcmp, 0
  br i1 %tobool180.not, label %if.end187, label %if.then181

if.then181:                                       ; preds = %sym_validate_range.exit
  %90 = load i32, ptr %flags, align 4, !tbaa !13
  %or.i435 = or i32 %90, 1024
  store i32 %or.i435, ptr %flags, align 4, !tbaa !13
  %prop1.i436 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.010.i = load ptr, ptr %prop1.i436, align 8, !tbaa !16
  %tobool.not11.i = icmp eq ptr %prop.010.i, null
  br i1 %tobool.not11.i, label %sym_set_changed.exit, label %for.body.i438

for.body.i438:                                    ; preds = %for.inc.i442, %if.then181
  %prop.012.i = phi ptr [ %prop.0.i440, %for.inc.i442 ], [ %prop.010.i, %if.then181 ]
  %menu.i = getelementptr inbounds %struct.property, ptr %prop.012.i, i64 0, i32 5
  %91 = load ptr, ptr %menu.i, align 8, !tbaa !37
  %tobool2.not.i437 = icmp eq ptr %91, null
  br i1 %tobool2.not.i437, label %for.inc.i442, label %if.then.i439

if.then.i439:                                     ; preds = %for.body.i438
  %flags4.i = getelementptr inbounds %struct.menu, ptr %91, i64 0, i32 7
  %92 = load i32, ptr %flags4.i, align 8, !tbaa !38
  %or5.i = or i32 %92, 1
  store i32 %or5.i, ptr %flags4.i, align 8, !tbaa !38
  br label %for.inc.i442

for.inc.i442:                                     ; preds = %if.then.i439, %for.body.i438
  %prop.0.i440 = load ptr, ptr %prop.012.i, align 8, !tbaa !16
  %tobool.not.i441 = icmp eq ptr %prop.0.i440, null
  br i1 %tobool.not.i441, label %sym_set_changed.exit, label %for.body.i438

sym_set_changed.exit:                             ; preds = %for.inc.i442, %if.then181
  %93 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  %cmp182 = icmp eq ptr %93, %sym
  br i1 %cmp182, label %for.body.i444, label %if.end187

for.body.i444:                                    ; preds = %for.inc3.i, %sym_set_changed.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc3.i ], [ 0, %sym_set_changed.exit ]
  %arrayidx.i = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.i
  %sym.09.i = load ptr, ptr %arrayidx.i, align 8, !tbaa !16
  %tobool.not10.i = icmp eq ptr %sym.09.i, null
  br i1 %tobool.not10.i, label %for.inc3.i, label %for.body2.i

for.body2.i:                                      ; preds = %sym_set_changed.exit.i, %for.body.i444
  %sym.011.i = phi ptr [ %sym.0.i, %sym_set_changed.exit.i ], [ %sym.09.i, %for.body.i444 ]
  %flags.i.i445 = getelementptr inbounds %struct.symbol, ptr %sym.011.i, i64 0, i32 6
  %94 = load i32, ptr %flags.i.i445, align 4, !tbaa !13
  %or.i.i = or i32 %94, 1024
  store i32 %or.i.i, ptr %flags.i.i445, align 4, !tbaa !13
  %prop1.i.i446 = getelementptr inbounds %struct.symbol, ptr %sym.011.i, i64 0, i32 7
  %prop.010.i.i = load ptr, ptr %prop1.i.i446, align 8, !tbaa !16
  %tobool.not11.i.i = icmp eq ptr %prop.010.i.i, null
  br i1 %tobool.not11.i.i, label %sym_set_changed.exit.i, label %for.body.i.i447

for.body.i.i447:                                  ; preds = %for.inc.i.i451, %for.body2.i
  %prop.012.i.i = phi ptr [ %prop.0.i.i449, %for.inc.i.i451 ], [ %prop.010.i.i, %for.body2.i ]
  %menu.i.i = getelementptr inbounds %struct.property, ptr %prop.012.i.i, i64 0, i32 5
  %95 = load ptr, ptr %menu.i.i, align 8, !tbaa !37
  %tobool2.not.i.i = icmp eq ptr %95, null
  br i1 %tobool2.not.i.i, label %for.inc.i.i451, label %if.then.i.i448

if.then.i.i448:                                   ; preds = %for.body.i.i447
  %flags4.i.i = getelementptr inbounds %struct.menu, ptr %95, i64 0, i32 7
  %96 = load i32, ptr %flags4.i.i, align 8, !tbaa !38
  %or5.i.i = or i32 %96, 1
  store i32 %or5.i.i, ptr %flags4.i.i, align 8, !tbaa !38
  br label %for.inc.i.i451

for.inc.i.i451:                                   ; preds = %if.then.i.i448, %for.body.i.i447
  %prop.0.i.i449 = load ptr, ptr %prop.012.i.i, align 8, !tbaa !16
  %tobool.not.i.i450 = icmp eq ptr %prop.0.i.i449, null
  br i1 %tobool.not.i.i450, label %sym_set_changed.exit.i, label %for.body.i.i447

sym_set_changed.exit.i:                           ; preds = %for.inc.i.i451, %for.body2.i
  %sym.0.i = load ptr, ptr %sym.011.i, align 8, !tbaa !16
  %tobool.not.i452 = icmp eq ptr %sym.0.i, null
  br i1 %tobool.not.i452, label %for.inc3.i, label %for.body2.i

for.inc3.i:                                       ; preds = %sym_set_changed.exit.i, %for.body.i444
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 9973
  br i1 %exitcond.not.i, label %sym_set_all_changed.exit, label %for.body.i444

sym_set_all_changed.exit:                         ; preds = %for.inc3.i
  %97 = load i32, ptr %newval.sroa.8.0.curr23.sroa_idx, align 8, !tbaa !29
  store i32 %97, ptr @modules_val, align 4, !tbaa !15
  br label %if.end187

if.end187:                                        ; preds = %sym_set_all_changed.exit, %sym_set_changed.exit, %sym_validate_range.exit
  %98 = load i32, ptr %flags, align 4, !tbaa !13
  %and.i454 = and i32 %98, 16
  %tobool.i455.not = icmp eq i32 %and.i454, 0
  br i1 %tobool.i455.not, label %if.end209, label %if.then189

if.then189:                                       ; preds = %if.end187
  %prop1.i456 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i460

for.cond.i460:                                    ; preds = %for.body.i463, %if.then189
  %prop.0.in.i457 = phi ptr [ %prop1.i456, %if.then189 ], [ %prop.0.i458, %for.body.i463 ]
  %prop.0.i458 = load ptr, ptr %prop.0.in.i457, align 8, !tbaa !16
  %tobool.not.i459 = icmp eq ptr %prop.0.i458, null
  br i1 %tobool.not.i459, label %sym_get_choice_prop.exit464, label %for.body.i463

for.body.i463:                                    ; preds = %for.cond.i460
  %type.i461 = getelementptr inbounds %struct.property, ptr %prop.0.i458, i64 0, i32 1
  %99 = load i32, ptr %type.i461, align 8, !tbaa !17
  %cmp.i462 = icmp eq i32 %99, 5
  br i1 %cmp.i462, label %sym_get_choice_prop.exit464, label %for.cond.i460

sym_get_choice_prop.exit464:                      ; preds = %for.body.i463, %for.cond.i460
  %expr191 = getelementptr inbounds %struct.property, ptr %prop.0.i458, i64 0, i32 4
  %e.0541 = load ptr, ptr %expr191, align 8, !tbaa !15
  %tobool192.not542 = icmp eq ptr %e.0541, null
  br i1 %tobool192.not542, label %if.end209, label %land.rhs

land.rhs:                                         ; preds = %for.inc, %sym_get_choice_prop.exit464
  %e.0543 = phi ptr [ %e.0, %for.inc ], [ %e.0541, %sym_get_choice_prop.exit464 ]
  %right = getelementptr inbounds %struct.expr, ptr %e.0543, i64 0, i32 2
  %100 = load ptr, ptr %right, align 8, !tbaa !15
  %tobool193.not = icmp eq ptr %100, null
  br i1 %tobool193.not, label %if.end209.loopexit, label %for.body

for.body:                                         ; preds = %land.rhs
  %101 = load i32, ptr %flags, align 4, !tbaa !13
  %and195 = and i32 %101, 512
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end203, label %land.lhs.true197

land.lhs.true197:                                 ; preds = %for.body
  %visible198 = getelementptr inbounds %struct.symbol, ptr %100, i64 0, i32 5
  %102 = load i32, ptr %visible198, align 8, !tbaa !14
  %cmp199.not = icmp eq i32 %102, 0
  br i1 %cmp199.not, label %if.end203, label %if.then200

if.then200:                                       ; preds = %land.lhs.true197
  %flags201 = getelementptr inbounds %struct.symbol, ptr %100, i64 0, i32 6
  %103 = load i32, ptr %flags201, align 4, !tbaa !13
  %or202 = or i32 %103, 512
  store i32 %or202, ptr %flags201, align 4, !tbaa !13
  %.pre551 = load i32, ptr %flags, align 4, !tbaa !13
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %land.lhs.true197, %for.body
  %104 = phi i32 [ %.pre551, %if.then200 ], [ %101, %land.lhs.true197 ], [ %101, %for.body ]
  %and205 = and i32 %104, 1024
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %for.inc, label %if.then207

if.then207:                                       ; preds = %if.end203
  %flags.i465 = getelementptr inbounds %struct.symbol, ptr %100, i64 0, i32 6
  %105 = load i32, ptr %flags.i465, align 4, !tbaa !13
  %or.i466 = or i32 %105, 1024
  store i32 %or.i466, ptr %flags.i465, align 4, !tbaa !13
  %prop1.i467 = getelementptr inbounds %struct.symbol, ptr %100, i64 0, i32 7
  %prop.010.i468 = load ptr, ptr %prop1.i467, align 8, !tbaa !16
  %tobool.not11.i469 = icmp eq ptr %prop.010.i468, null
  br i1 %tobool.not11.i469, label %for.inc, label %for.body.i473

for.body.i473:                                    ; preds = %for.inc.i479, %if.then207
  %prop.012.i470 = phi ptr [ %prop.0.i477, %for.inc.i479 ], [ %prop.010.i468, %if.then207 ]
  %menu.i471 = getelementptr inbounds %struct.property, ptr %prop.012.i470, i64 0, i32 5
  %106 = load ptr, ptr %menu.i471, align 8, !tbaa !37
  %tobool2.not.i472 = icmp eq ptr %106, null
  br i1 %tobool2.not.i472, label %for.inc.i479, label %if.then.i476

if.then.i476:                                     ; preds = %for.body.i473
  %flags4.i474 = getelementptr inbounds %struct.menu, ptr %106, i64 0, i32 7
  %107 = load i32, ptr %flags4.i474, align 8, !tbaa !38
  %or5.i475 = or i32 %107, 1
  store i32 %or5.i475, ptr %flags4.i474, align 8, !tbaa !38
  br label %for.inc.i479

for.inc.i479:                                     ; preds = %if.then.i476, %for.body.i473
  %prop.0.i477 = load ptr, ptr %prop.012.i470, align 8, !tbaa !16
  %tobool.not.i478 = icmp eq ptr %prop.0.i477, null
  br i1 %tobool.not.i478, label %for.inc, label %for.body.i473

for.inc:                                          ; preds = %for.inc.i479, %if.then207, %if.end203
  %left = getelementptr inbounds %struct.expr, ptr %e.0543, i64 0, i32 1
  %e.0 = load ptr, ptr %left, align 8, !tbaa !15
  %tobool192.not = icmp eq ptr %e.0, null
  br i1 %tobool192.not, label %if.end209.loopexit, label %land.rhs

if.end209.loopexit:                               ; preds = %for.inc, %land.rhs
  %.pre552 = load i32, ptr %flags, align 4, !tbaa !13
  br label %if.end209

if.end209:                                        ; preds = %if.end209.loopexit, %sym_get_choice_prop.exit464, %if.end187
  %108 = phi i32 [ %.pre552, %if.end209.loopexit ], [ %98, %sym_get_choice_prop.exit464 ], [ %98, %if.end187 ]
  %and211 = and i32 %108, 4096
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end216, label %if.then213

if.then213:                                       ; preds = %if.end209
  %and215 = and i32 %108, -513
  store i32 %and215, ptr %flags, align 4, !tbaa !13
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %if.end209
  %109 = phi i32 [ %and215, %if.then213 ], [ %108, %if.end209 ]
  %and218 = and i32 %109, 1048576
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %cleanup, label %if.then220

if.then220:                                       ; preds = %if.end216
  call void @set_all_choice_values(ptr noundef nonnull %sym) #27
  br label %cleanup

cleanup:                                          ; preds = %if.then220, %if.end216, %sw.default, %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oldval) #27
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @sym_calc_visibility(ptr noundef %sym) unnamed_addr #4 {
entry:
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %0 = load i32, ptr %flags.i, align 4, !tbaa !13
  %and.i = and i32 %0, 32
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %prop1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then
  %prop.0.in.i = phi ptr [ %prop1.i, %if.then ], [ %prop.0.i, %for.body.i ]
  %prop.0.i = load ptr, ptr %prop.0.in.i, align 8, !tbaa !16
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %sym_get_choice_prop.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %type.i = getelementptr inbounds %struct.property, ptr %prop.0.i, i64 0, i32 1
  %1 = load i32, ptr %type.i, align 8, !tbaa !17
  %cmp.i = icmp eq i32 %1, 5
  br i1 %cmp.i, label %sym_get_choice_prop.exit, label %for.cond.i

sym_get_choice_prop.exit:                         ; preds = %for.body.i, %for.cond.i
  %expr.i = getelementptr inbounds %struct.property, ptr %prop.0.i, i64 0, i32 4
  %2 = load ptr, ptr %expr.i, align 8, !tbaa !21
  %tobool.not.i159 = icmp eq ptr %2, null
  br i1 %tobool.not.i159, label %if.end, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sym_get_choice_prop.exit
  %3 = load i32, ptr %2, align 8, !tbaa !23
  %4 = and i32 %3, -2
  %switch.i = icmp eq i32 %4, 10
  br i1 %switch.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  %left.i = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %left.i, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i, %sym_get_choice_prop.exit, %entry
  %choice_sym.0 = phi ptr [ null, %entry ], [ %5, %if.then.i ], [ null, %land.lhs.true.i ], [ null, %sym_get_choice_prop.exit ]
  %prop3 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.0276 = load ptr, ptr %prop3, align 8, !tbaa !16
  %tobool.not277 = icmp eq ptr %prop.0276, null
  br i1 %tobool.not277, label %if.end33, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %tobool9.not = icmp eq ptr %choice_sym.0, null
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %tri15 = getelementptr inbounds %struct.symbol, ptr %choice_sym.0, i64 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.0279 = phi ptr [ %prop.0276, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %tri.0278 = phi i32 [ 0, %for.body.lr.ph ], [ %tri.1, %for.inc ]
  %text = getelementptr inbounds %struct.property, ptr %prop.0279, i64 0, i32 2
  %6 = load ptr, ptr %text, align 8, !tbaa !40
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %visible = getelementptr inbounds %struct.property, ptr %prop.0279, i64 0, i32 3
  %7 = load ptr, ptr %visible, align 8, !tbaa !19
  %call6 = tail call i32 @expr_calc_value(ptr noundef %7) #27
  %tri8 = getelementptr inbounds %struct.property, ptr %prop.0279, i64 0, i32 3, i32 1
  store i32 %call6, ptr %tri8, align 8, !tbaa !20
  br i1 %tobool9.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i32, ptr %type, align 8, !tbaa !5
  %cmp = icmp eq i32 %8, 2
  %cmp13 = icmp eq i32 %call6, 1
  %or.cond155 = select i1 %cmp, i1 %cmp13, i1 false
  br i1 %or.cond155, label %land.lhs.true14, label %if.end20

land.lhs.true14:                                  ; preds = %land.lhs.true
  %9 = load i32, ptr %tri15, align 8, !tbaa !29
  %cmp16 = icmp eq i32 %9, 2
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %land.lhs.true14
  store i32 0, ptr %tri8, align 8, !tbaa !20
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true14, %land.lhs.true, %if.then5
  %10 = phi i32 [ 0, %if.then17 ], [ 1, %land.lhs.true14 ], [ %call6, %land.lhs.true ], [ %call6, %if.then5 ]
  %11 = tail call i32 @llvm.umax.i32(i32 %tri.0278, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %for.body
  %tri.1 = phi i32 [ %11, %if.end20 ], [ %tri.0278, %for.body ]
  %prop.0 = load ptr, ptr %prop.0279, align 8, !tbaa !16
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp27 = icmp eq i32 %tri.1, 1
  br i1 %cmp27, label %land.lhs.true28, label %if.end33

land.lhs.true28:                                  ; preds = %for.end
  %type29 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %12 = load i32, ptr %type29, align 8, !tbaa !5
  %cmp30 = icmp ne i32 %12, 2
  %13 = load i32, ptr @modules_val, align 4
  %cmp31 = icmp eq i32 %13, 0
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp31
  %spec.select = select i1 %or.cond, i32 2, i32 1
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true28, %for.end, %if.end
  %tri.2 = phi i32 [ %tri.1, %for.end ], [ %spec.select, %land.lhs.true28 ], [ 0, %if.end ]
  %visible34 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %14 = load i32, ptr %visible34, align 8, !tbaa !14
  %cmp35.not = icmp eq i32 %14, %tri.2
  br i1 %cmp35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  %.pre = load i32, ptr %flags.i, align 4, !tbaa !13
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  store i32 %tri.2, ptr %visible34, align 8, !tbaa !14
  %15 = load i32, ptr %flags.i, align 4, !tbaa !13
  %or.i = or i32 %15, 1024
  store i32 %or.i, ptr %flags.i, align 4, !tbaa !13
  %prop.010.i = load ptr, ptr %prop3, align 8, !tbaa !16
  %tobool.not11.i = icmp eq ptr %prop.010.i, null
  br i1 %tobool.not11.i, label %if.end38, label %for.body.i162

for.body.i162:                                    ; preds = %for.inc.i, %if.then36
  %prop.012.i = phi ptr [ %prop.0.i164, %for.inc.i ], [ %prop.010.i, %if.then36 ]
  %menu.i = getelementptr inbounds %struct.property, ptr %prop.012.i, i64 0, i32 5
  %16 = load ptr, ptr %menu.i, align 8, !tbaa !37
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %for.inc.i, label %if.then.i163

if.then.i163:                                     ; preds = %for.body.i162
  %flags4.i = getelementptr inbounds %struct.menu, ptr %16, i64 0, i32 7
  %17 = load i32, ptr %flags4.i, align 8, !tbaa !38
  %or5.i = or i32 %17, 1
  store i32 %or5.i, ptr %flags4.i, align 8, !tbaa !38
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i163, %for.body.i162
  %prop.0.i164 = load ptr, ptr %prop.012.i, align 8, !tbaa !16
  %tobool.not.i165 = icmp eq ptr %prop.0.i164, null
  br i1 %tobool.not.i165, label %if.end38, label %for.body.i162

if.end38:                                         ; preds = %for.inc.i, %if.then36, %if.end33.if.end38_crit_edge
  %18 = phi i32 [ %.pre, %if.end33.if.end38_crit_edge ], [ %or.i, %if.then36 ], [ %or.i, %for.inc.i ]
  %and.i167 = and i32 %18, 32
  %tobool.i168.not = icmp eq i32 %and.i167, 0
  br i1 %tobool.i168.not, label %if.end41, label %cleanup

if.end41:                                         ; preds = %if.end38
  %dir_dep = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 8
  %19 = load ptr, ptr %dir_dep, align 8, !tbaa !34
  %tobool43.not = icmp eq ptr %19, null
  br i1 %tobool43.not, label %if.end54, label %if.end48

if.end48:                                         ; preds = %if.end41
  %call47 = tail call i32 @expr_calc_value(ptr noundef nonnull %19) #27
  %cmp49 = icmp eq i32 %call47, 1
  br i1 %cmp49, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %if.end48
  %type1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %20 = load i32, ptr %type1.i, align 8, !tbaa !5
  switch i32 %20, label %if.end54 [
    i32 2, label %if.then.i170
    i32 1, label %sym_get_type.exit.thread
  ]

if.then.i170:                                     ; preds = %land.lhs.true50
  %21 = load i32, ptr %flags.i, align 4, !tbaa !13
  %and.i.i = and i32 %21, 32
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %land.lhs.true.i171

land.lhs.true.i171:                               ; preds = %if.then.i170
  %22 = load i32, ptr %visible34, align 8, !tbaa !14
  %cmp2.i = icmp eq i32 %22, 2
  %23 = load i32, ptr @modules_val, align 4
  %cmp4.i = icmp eq i32 %23, 0
  %or.cond271 = select i1 %cmp2.i, i1 true, i1 %cmp4.i
  br i1 %or.cond271, label %sym_get_type.exit.thread, label %if.end54

if.else.i:                                        ; preds = %if.then.i170
  %.old = load i32, ptr @modules_val, align 4, !tbaa !15
  %cmp4.i.old = icmp eq i32 %.old, 0
  br i1 %cmp4.i.old, label %sym_get_type.exit.thread, label %if.end54

sym_get_type.exit.thread:                         ; preds = %if.else.i, %land.lhs.true.i171, %land.lhs.true50
  br label %if.end54

if.end54:                                         ; preds = %sym_get_type.exit.thread, %if.else.i, %land.lhs.true.i171, %land.lhs.true50, %if.end48, %if.end41
  %tri.4 = phi i32 [ %call47, %if.end48 ], [ 2, %sym_get_type.exit.thread ], [ 2, %if.end41 ], [ 1, %if.else.i ], [ 1, %land.lhs.true.i171 ], [ 1, %land.lhs.true50 ]
  %tri56 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 8, i32 1
  %24 = load i32, ptr %tri56, align 8, !tbaa !33
  %cmp57.not = icmp eq i32 %24, %tri.4
  br i1 %cmp57.not, label %if.end61, label %if.then58

if.then58:                                        ; preds = %if.end54
  store i32 %tri.4, ptr %tri56, align 8, !tbaa !33
  %25 = load i32, ptr %flags.i, align 4, !tbaa !13
  %or.i173 = or i32 %25, 1024
  store i32 %or.i173, ptr %flags.i, align 4, !tbaa !13
  %prop.010.i175 = load ptr, ptr %prop3, align 8, !tbaa !16
  %tobool.not11.i176 = icmp eq ptr %prop.010.i175, null
  br i1 %tobool.not11.i176, label %if.end61, label %for.body.i180

for.body.i180:                                    ; preds = %for.inc.i186, %if.then58
  %prop.012.i177 = phi ptr [ %prop.0.i184, %for.inc.i186 ], [ %prop.010.i175, %if.then58 ]
  %menu.i178 = getelementptr inbounds %struct.property, ptr %prop.012.i177, i64 0, i32 5
  %26 = load ptr, ptr %menu.i178, align 8, !tbaa !37
  %tobool2.not.i179 = icmp eq ptr %26, null
  br i1 %tobool2.not.i179, label %for.inc.i186, label %if.then.i183

if.then.i183:                                     ; preds = %for.body.i180
  %flags4.i181 = getelementptr inbounds %struct.menu, ptr %26, i64 0, i32 7
  %27 = load i32, ptr %flags4.i181, align 8, !tbaa !38
  %or5.i182 = or i32 %27, 1
  store i32 %or5.i182, ptr %flags4.i181, align 8, !tbaa !38
  br label %for.inc.i186

for.inc.i186:                                     ; preds = %if.then.i183, %for.body.i180
  %prop.0.i184 = load ptr, ptr %prop.012.i177, align 8, !tbaa !16
  %tobool.not.i185 = icmp eq ptr %prop.0.i184, null
  br i1 %tobool.not.i185, label %if.end61, label %for.body.i180

if.end61:                                         ; preds = %for.inc.i186, %if.then58, %if.end54
  %rev_dep = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9
  %28 = load ptr, ptr %rev_dep, align 8, !tbaa !35
  %tobool63.not = icmp eq ptr %28, null
  br i1 %tobool63.not, label %if.end74, label %if.end68

if.end68:                                         ; preds = %if.end61
  %call67 = tail call i32 @expr_calc_value(ptr noundef nonnull %28) #27
  %cmp69 = icmp eq i32 %call67, 1
  br i1 %cmp69, label %land.lhs.true70, label %if.end74

land.lhs.true70:                                  ; preds = %if.end68
  %type1.i188 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %29 = load i32, ptr %type1.i188, align 8, !tbaa !5
  switch i32 %29, label %if.end74 [
    i32 2, label %if.then.i193
    i32 1, label %sym_get_type.exit201.thread
  ]

if.then.i193:                                     ; preds = %land.lhs.true70
  %30 = load i32, ptr %flags.i, align 4, !tbaa !13
  %and.i.i191 = and i32 %30, 32
  %tobool.i.not.i192 = icmp eq i32 %and.i.i191, 0
  br i1 %tobool.i.not.i192, label %if.else.i199, label %land.lhs.true.i196

land.lhs.true.i196:                               ; preds = %if.then.i193
  %31 = load i32, ptr %visible34, align 8, !tbaa !14
  %cmp2.i195 = icmp eq i32 %31, 2
  %32 = load i32, ptr @modules_val, align 4
  %cmp4.i197 = icmp eq i32 %32, 0
  %or.cond273 = select i1 %cmp2.i195, i1 true, i1 %cmp4.i197
  br i1 %or.cond273, label %sym_get_type.exit201.thread, label %if.end74

if.else.i199:                                     ; preds = %if.then.i193
  %.old272 = load i32, ptr @modules_val, align 4, !tbaa !15
  %cmp4.i197.old = icmp eq i32 %.old272, 0
  br i1 %cmp4.i197.old, label %sym_get_type.exit201.thread, label %if.end74

sym_get_type.exit201.thread:                      ; preds = %if.else.i199, %land.lhs.true.i196, %land.lhs.true70
  br label %if.end74

if.end74:                                         ; preds = %sym_get_type.exit201.thread, %if.else.i199, %land.lhs.true.i196, %land.lhs.true70, %if.end68, %if.end61
  %tri.6 = phi i32 [ %call67, %if.end68 ], [ 2, %sym_get_type.exit201.thread ], [ 0, %if.end61 ], [ 1, %if.else.i199 ], [ 1, %land.lhs.true.i196 ], [ 1, %land.lhs.true70 ]
  %tri76 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %33 = load i32, ptr %tri76, align 8, !tbaa !31
  %cmp77.not = icmp eq i32 %33, %tri.6
  br i1 %cmp77.not, label %if.end81, label %if.then78

if.then78:                                        ; preds = %if.end74
  store i32 %tri.6, ptr %tri76, align 8, !tbaa !31
  %34 = load i32, ptr %flags.i, align 4, !tbaa !13
  %or.i203 = or i32 %34, 1024
  store i32 %or.i203, ptr %flags.i, align 4, !tbaa !13
  %prop.010.i205 = load ptr, ptr %prop3, align 8, !tbaa !16
  %tobool.not11.i206 = icmp eq ptr %prop.010.i205, null
  br i1 %tobool.not11.i206, label %if.end81, label %for.body.i210

for.body.i210:                                    ; preds = %for.inc.i216, %if.then78
  %prop.012.i207 = phi ptr [ %prop.0.i214, %for.inc.i216 ], [ %prop.010.i205, %if.then78 ]
  %menu.i208 = getelementptr inbounds %struct.property, ptr %prop.012.i207, i64 0, i32 5
  %35 = load ptr, ptr %menu.i208, align 8, !tbaa !37
  %tobool2.not.i209 = icmp eq ptr %35, null
  br i1 %tobool2.not.i209, label %for.inc.i216, label %if.then.i213

if.then.i213:                                     ; preds = %for.body.i210
  %flags4.i211 = getelementptr inbounds %struct.menu, ptr %35, i64 0, i32 7
  %36 = load i32, ptr %flags4.i211, align 8, !tbaa !38
  %or5.i212 = or i32 %36, 1
  store i32 %or5.i212, ptr %flags4.i211, align 8, !tbaa !38
  br label %for.inc.i216

for.inc.i216:                                     ; preds = %if.then.i213, %for.body.i210
  %prop.0.i214 = load ptr, ptr %prop.012.i207, align 8, !tbaa !16
  %tobool.not.i215 = icmp eq ptr %prop.0.i214, null
  br i1 %tobool.not.i215, label %if.end81, label %for.body.i210

if.end81:                                         ; preds = %for.inc.i216, %if.then78, %if.end74
  %implied = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 10
  %37 = load ptr, ptr %implied, align 8, !tbaa !41
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %if.end94, label %if.end88

if.end88:                                         ; preds = %if.end81
  %call87 = tail call i32 @expr_calc_value(ptr noundef nonnull %37) #27
  %cmp89 = icmp eq i32 %call87, 1
  br i1 %cmp89, label %land.lhs.true90, label %if.end94

land.lhs.true90:                                  ; preds = %if.end88
  %type1.i218 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %38 = load i32, ptr %type1.i218, align 8, !tbaa !5
  switch i32 %38, label %if.end94 [
    i32 2, label %if.then.i223
    i32 1, label %sym_get_type.exit231.thread
  ]

if.then.i223:                                     ; preds = %land.lhs.true90
  %39 = load i32, ptr %flags.i, align 4, !tbaa !13
  %and.i.i221 = and i32 %39, 32
  %tobool.i.not.i222 = icmp eq i32 %and.i.i221, 0
  br i1 %tobool.i.not.i222, label %if.else.i229, label %land.lhs.true.i226

land.lhs.true.i226:                               ; preds = %if.then.i223
  %40 = load i32, ptr %visible34, align 8, !tbaa !14
  %cmp2.i225 = icmp eq i32 %40, 2
  %41 = load i32, ptr @modules_val, align 4
  %cmp4.i227 = icmp eq i32 %41, 0
  %or.cond275 = select i1 %cmp2.i225, i1 true, i1 %cmp4.i227
  br i1 %or.cond275, label %sym_get_type.exit231.thread, label %if.end94

if.else.i229:                                     ; preds = %if.then.i223
  %.old274 = load i32, ptr @modules_val, align 4, !tbaa !15
  %cmp4.i227.old = icmp eq i32 %.old274, 0
  br i1 %cmp4.i227.old, label %sym_get_type.exit231.thread, label %if.end94

sym_get_type.exit231.thread:                      ; preds = %if.else.i229, %land.lhs.true.i226, %land.lhs.true90
  br label %if.end94

if.end94:                                         ; preds = %sym_get_type.exit231.thread, %if.else.i229, %land.lhs.true.i226, %land.lhs.true90, %if.end88, %if.end81
  %tri.8 = phi i32 [ %call87, %if.end88 ], [ 2, %sym_get_type.exit231.thread ], [ 0, %if.end81 ], [ 1, %if.else.i229 ], [ 1, %land.lhs.true.i226 ], [ 1, %land.lhs.true90 ]
  %tri96 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 10, i32 1
  %42 = load i32, ptr %tri96, align 8, !tbaa !32
  %cmp97.not = icmp eq i32 %42, %tri.8
  br i1 %cmp97.not, label %cleanup, label %if.then98

if.then98:                                        ; preds = %if.end94
  store i32 %tri.8, ptr %tri96, align 8, !tbaa !32
  %43 = load i32, ptr %flags.i, align 4, !tbaa !13
  %or.i233 = or i32 %43, 1024
  store i32 %or.i233, ptr %flags.i, align 4, !tbaa !13
  %prop.010.i235 = load ptr, ptr %prop3, align 8, !tbaa !16
  %tobool.not11.i236 = icmp eq ptr %prop.010.i235, null
  br i1 %tobool.not11.i236, label %cleanup, label %for.body.i240

for.body.i240:                                    ; preds = %for.inc.i246, %if.then98
  %prop.012.i237 = phi ptr [ %prop.0.i244, %for.inc.i246 ], [ %prop.010.i235, %if.then98 ]
  %menu.i238 = getelementptr inbounds %struct.property, ptr %prop.012.i237, i64 0, i32 5
  %44 = load ptr, ptr %menu.i238, align 8, !tbaa !37
  %tobool2.not.i239 = icmp eq ptr %44, null
  br i1 %tobool2.not.i239, label %for.inc.i246, label %if.then.i243

if.then.i243:                                     ; preds = %for.body.i240
  %flags4.i241 = getelementptr inbounds %struct.menu, ptr %44, i64 0, i32 7
  %45 = load i32, ptr %flags4.i241, align 8, !tbaa !38
  %or5.i242 = or i32 %45, 1
  store i32 %or5.i242, ptr %flags4.i241, align 8, !tbaa !38
  br label %for.inc.i246

for.inc.i246:                                     ; preds = %if.then.i243, %for.body.i240
  %prop.0.i244 = load ptr, ptr %prop.012.i237, align 8, !tbaa !16
  %tobool.not.i245 = icmp eq ptr %prop.0.i244, null
  br i1 %tobool.not.i245, label %cleanup, label %for.body.i240

cleanup:                                          ; preds = %for.inc.i246, %if.then98, %if.end94, %if.end38
  ret void
}

declare void @set_all_choice_values(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @sym_clear_all_valid() local_unnamed_addr #4 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc3.1, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.1, %for.inc3.1 ]
  %arrayidx = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv
  %sym.09 = load ptr, ptr %arrayidx, align 16, !tbaa !16
  %tobool.not10 = icmp eq ptr %sym.09, null
  br i1 %tobool.not10, label %for.inc3, label %for.body2

for.body2:                                        ; preds = %for.body2, %for.body
  %sym.011 = phi ptr [ %sym.0, %for.body2 ], [ %sym.09, %for.body ]
  %flags = getelementptr inbounds %struct.symbol, ptr %sym.011, i64 0, i32 6
  %0 = load i32, ptr %flags, align 4, !tbaa !13
  %and = and i32 %0, -129
  store i32 %and, ptr %flags, align 4, !tbaa !13
  %sym.0 = load ptr, ptr %sym.011, align 8, !tbaa !16
  %tobool.not = icmp eq ptr %sym.0, null
  br i1 %tobool.not, label %for.inc3, label %for.body2

for.inc3:                                         ; preds = %for.body2, %for.body
  %indvars.iv.next = or i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9973
  br i1 %exitcond.not, label %for.end4, label %for.body.1

for.body.1:                                       ; preds = %for.inc3
  %arrayidx.1 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.next
  %sym.09.1 = load ptr, ptr %arrayidx.1, align 8, !tbaa !16
  %tobool.not10.1 = icmp eq ptr %sym.09.1, null
  br i1 %tobool.not10.1, label %for.inc3.1, label %for.body2.1

for.body2.1:                                      ; preds = %for.body2.1, %for.body.1
  %sym.011.1 = phi ptr [ %sym.0.1, %for.body2.1 ], [ %sym.09.1, %for.body.1 ]
  %flags.1 = getelementptr inbounds %struct.symbol, ptr %sym.011.1, i64 0, i32 6
  %1 = load i32, ptr %flags.1, align 4, !tbaa !13
  %and.1 = and i32 %1, -129
  store i32 %and.1, ptr %flags.1, align 4, !tbaa !13
  %sym.0.1 = load ptr, ptr %sym.011.1, align 8, !tbaa !16
  %tobool.not.1 = icmp eq ptr %sym.0.1, null
  br i1 %tobool.not.1, label %for.inc3.1, label %for.body2.1

for.inc3.1:                                       ; preds = %for.body2.1, %for.body.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %for.body

for.end4:                                         ; preds = %for.inc3
  tail call void @conf_set_changed(i1 noundef zeroext true) #27
  %2 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %2)
  ret void
}

declare void @conf_set_changed(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @sym_tristate_within_range(ptr nocapture noundef readonly %sym, i32 noundef %val) local_unnamed_addr #0 {
entry:
  %type1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type1.i, align 8, !tbaa !5
  %cmp.i = icmp eq i32 %0, 2
  br i1 %cmp.i, label %if.then.i, label %sym_get_type.exit

if.then.i:                                        ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %1 = load i32, ptr %flags.i.i, align 4, !tbaa !13
  %and.i.i = and i32 %1, 32
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %visible.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %2 = load i32, ptr %visible.i, align 8, !tbaa !14
  %cmp2.i = icmp eq i32 %2, 2
  br i1 %cmp2.i, label %sym_get_type.exit, label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then.i
  %3 = load i32, ptr @modules_val, align 4, !tbaa !15
  %cmp4.i = icmp eq i32 %3, 0
  %spec.select.i = select i1 %cmp4.i, i32 1, i32 2
  br label %sym_get_type.exit

sym_get_type.exit:                                ; preds = %if.else.i, %land.lhs.true.i, %entry
  %type.0.i = phi i32 [ %0, %entry ], [ 1, %land.lhs.true.i ], [ %spec.select.i, %if.else.i ]
  %visible = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %4 = load i32, ptr %visible, align 8, !tbaa !14
  %cmp = icmp eq i32 %4, 0
  %5 = add i32 %type.0.i, -3
  %6 = icmp ult i32 %5, -2
  %or.cond = select i1 %cmp, i1 true, i1 %6
  br i1 %or.cond, label %cleanup, label %if.end4

if.end4:                                          ; preds = %sym_get_type.exit
  %cmp5 = icmp eq i32 %type.0.i, 1
  %cmp7 = icmp eq i32 %val, 1
  %or.cond26 = and i1 %cmp7, %cmp5
  br i1 %or.cond26, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  %tri = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %7 = load i32, ptr %tri, align 8, !tbaa !31
  %cmp11.not = icmp ugt i32 %4, %7
  br i1 %cmp11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end9
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %8 = load i32, ptr %flags.i, align 4, !tbaa !13
  %and.i = and i32 %8, 32
  %tobool.i = icmp ne i32 %and.i, 0
  %cmp17 = icmp eq i32 %4, 2
  %or.cond40 = select i1 %tobool.i, i1 %cmp17, i1 false
  br i1 %or.cond40, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  %cmp19 = icmp eq i32 %val, 2
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %cmp23.not = icmp ule i32 %7, %val
  %cmp25 = icmp uge i32 %4, %val
  %spec.select = select i1 %cmp23.not, i1 %cmp25, i1 false
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.end9, %if.end4, %sym_get_type.exit
  %retval.0 = phi i1 [ %cmp19, %if.then18 ], [ false, %sym_get_type.exit ], [ false, %if.end4 ], [ false, %if.end9 ], [ %spec.select, %if.end20 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @sym_set_tristate_value(ptr noundef %sym, i32 noundef %val) local_unnamed_addr #4 {
entry:
  %tri.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 3, i32 1
  %0 = load i32, ptr %tri.i, align 8, !tbaa !29
  %cmp.not = icmp eq i32 %0, %val
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  %flags.phi.trans.insert = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %.pre = load i32, ptr %flags.phi.trans.insert, align 4, !tbaa !13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type1.i.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %1 = load i32, ptr %type1.i.i, align 8, !tbaa !5
  %cmp.i.i = icmp eq i32 %1, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %sym_get_type.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true
  %flags.i.i.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %2 = load i32, ptr %flags.i.i.i, align 4, !tbaa !13
  %and.i.i.i = and i32 %2, 32
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %visible.i.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %3 = load i32, ptr %visible.i.i, align 8, !tbaa !14
  %cmp2.i.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.i, label %sym_get_type.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i, %if.then.i.i
  %4 = load i32, ptr @modules_val, align 4, !tbaa !15
  %cmp4.i.i = icmp eq i32 %4, 0
  %spec.select.i.i = select i1 %cmp4.i.i, i32 1, i32 2
  br label %sym_get_type.exit.i

sym_get_type.exit.i:                              ; preds = %if.else.i.i, %land.lhs.true.i.i, %land.lhs.true
  %type.0.i.i = phi i32 [ %1, %land.lhs.true ], [ 1, %land.lhs.true.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %visible.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %5 = load i32, ptr %visible.i, align 8, !tbaa !14
  %cmp.i = icmp eq i32 %5, 0
  %6 = add i32 %type.0.i.i, -3
  %7 = icmp ult i32 %6, -2
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %7
  br i1 %or.cond.i, label %cleanup, label %if.end4.i

if.end4.i:                                        ; preds = %sym_get_type.exit.i
  %cmp5.i = icmp eq i32 %type.0.i.i, 1
  %cmp7.i = icmp eq i32 %val, 1
  %or.cond26.i = and i1 %cmp7.i, %cmp5.i
  br i1 %or.cond26.i, label %cleanup, label %if.end9.i

if.end9.i:                                        ; preds = %if.end4.i
  %tri.i46 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %8 = load i32, ptr %tri.i46, align 8, !tbaa !31
  %cmp11.not.i = icmp ugt i32 %5, %8
  br i1 %cmp11.not.i, label %if.end13.i, label %cleanup

if.end13.i:                                       ; preds = %if.end9.i
  %flags.i.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %9 = load i32, ptr %flags.i.i, align 4, !tbaa !13
  %and.i.i = and i32 %9, 32
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %cmp17.i = icmp eq i32 %5, 2
  %or.cond40.i = select i1 %tobool.i.i, i1 %cmp17.i, i1 false
  br i1 %or.cond40.i, label %if.then18.i, label %sym_tristate_within_range.exit

if.then18.i:                                      ; preds = %if.end13.i
  %cmp19.i = icmp eq i32 %val, 2
  br i1 %cmp19.i, label %if.end, label %cleanup

sym_tristate_within_range.exit:                   ; preds = %if.end13.i
  %cmp23.not.i = icmp ule i32 %8, %val
  %cmp25.i = icmp uge i32 %5, %val
  %spec.select.i = select i1 %cmp23.not.i, i1 %cmp25.i, i1 false
  br i1 %spec.select.i, label %if.end, label %cleanup

if.end:                                           ; preds = %sym_tristate_within_range.exit, %if.then18.i, %entry.if.end_crit_edge
  %10 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %9, %if.then18.i ], [ %9, %sym_tristate_within_range.exit ]
  %and = and i32 %10, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %or.i = or i32 %10, 66560
  store i32 %or.i, ptr %flags, align 4, !tbaa !13
  %prop1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.010.i = load ptr, ptr %prop1.i, align 8, !tbaa !16
  %tobool.not11.i = icmp eq ptr %prop.010.i, null
  br i1 %tobool.not11.i, label %if.end4, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.then2
  %prop.012.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.010.i, %if.then2 ]
  %menu.i = getelementptr inbounds %struct.property, ptr %prop.012.i, i64 0, i32 5
  %11 = load ptr, ptr %menu.i, align 8, !tbaa !37
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %flags4.i = getelementptr inbounds %struct.menu, ptr %11, i64 0, i32 7
  %12 = load i32, ptr %flags4.i, align 8, !tbaa !38
  %or5.i = or i32 %12, 1
  store i32 %or5.i, ptr %flags4.i, align 8, !tbaa !38
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %prop.0.i = load ptr, ptr %prop.012.i, align 8, !tbaa !16
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %if.end4, label %for.body.i

if.end4:                                          ; preds = %for.inc.i, %if.then2, %if.end
  %13 = phi i32 [ %or.i, %if.then2 ], [ %10, %if.end ], [ %or.i, %for.inc.i ]
  %and.i = and i32 %13, 32
  %tobool.i = icmp ne i32 %and.i, 0
  %cmp7 = icmp eq i32 %val, 2
  %or.cond = and i1 %cmp7, %tobool.i
  br i1 %or.cond, label %if.then8, label %if.end22

if.then8:                                         ; preds = %if.end4
  %prop1.i48 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i52, %if.then8
  %prop.0.in.i = phi ptr [ %prop1.i48, %if.then8 ], [ %prop.0.i49, %for.body.i52 ]
  %prop.0.i49 = load ptr, ptr %prop.0.in.i, align 8, !tbaa !16
  %tobool.not.i50 = icmp eq ptr %prop.0.i49, null
  br i1 %tobool.not.i50, label %sym_get_choice_prop.exit, label %for.body.i52

for.body.i52:                                     ; preds = %for.cond.i
  %type.i = getelementptr inbounds %struct.property, ptr %prop.0.i49, i64 0, i32 1
  %14 = load i32, ptr %type.i, align 8, !tbaa !17
  %cmp.i51 = icmp eq i32 %14, 5
  br i1 %cmp.i51, label %sym_get_choice_prop.exit, label %for.cond.i

sym_get_choice_prop.exit:                         ; preds = %for.body.i52, %for.cond.i
  %expr.i = getelementptr inbounds %struct.property, ptr %prop.0.i49, i64 0, i32 4
  %15 = load ptr, ptr %expr.i, align 8, !tbaa !21
  %tobool.not.i53 = icmp eq ptr %15, null
  br i1 %tobool.not.i53, label %prop_get_symbol.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sym_get_choice_prop.exit
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = and i32 %16, -2
  %switch.i = icmp eq i32 %17, 10
  br i1 %switch.i, label %if.then.i54, label %prop_get_symbol.exit

if.then.i54:                                      ; preds = %land.lhs.true.i
  %left.i = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %left.i, align 8, !tbaa !15
  br label %prop_get_symbol.exit

prop_get_symbol.exit:                             ; preds = %if.then.i54, %land.lhs.true.i, %sym_get_choice_prop.exit
  %retval.0.i55 = phi ptr [ %18, %if.then.i54 ], [ null, %land.lhs.true.i ], [ null, %sym_get_choice_prop.exit ]
  %def = getelementptr inbounds %struct.symbol, ptr %retval.0.i55, i64 0, i32 4
  store ptr %sym, ptr %def, align 8, !tbaa !36
  %flags12 = getelementptr inbounds %struct.symbol, ptr %retval.0.i55, i64 0, i32 6
  %19 = load i32, ptr %flags12, align 4, !tbaa !13
  %or13 = or i32 %19, 65536
  store i32 %or13, ptr %flags12, align 4, !tbaa !13
  %prop1.i56 = getelementptr inbounds %struct.symbol, ptr %retval.0.i55, i64 0, i32 7
  br label %for.cond.i60

for.cond.i60:                                     ; preds = %for.body.i63, %prop_get_symbol.exit
  %prop.0.in.i57 = phi ptr [ %prop1.i56, %prop_get_symbol.exit ], [ %prop.0.i58, %for.body.i63 ]
  %prop.0.i58 = load ptr, ptr %prop.0.in.i57, align 8, !tbaa !16
  %tobool.not.i59 = icmp eq ptr %prop.0.i58, null
  br i1 %tobool.not.i59, label %sym_get_choice_prop.exit64, label %for.body.i63

for.body.i63:                                     ; preds = %for.cond.i60
  %type.i61 = getelementptr inbounds %struct.property, ptr %prop.0.i58, i64 0, i32 1
  %20 = load i32, ptr %type.i61, align 8, !tbaa !17
  %cmp.i62 = icmp eq i32 %20, 5
  br i1 %cmp.i62, label %sym_get_choice_prop.exit64, label %for.cond.i60

sym_get_choice_prop.exit64:                       ; preds = %for.body.i63, %for.cond.i60
  %expr = getelementptr inbounds %struct.property, ptr %prop.0.i58, i64 0, i32 4
  %e.070 = load ptr, ptr %expr, align 8, !tbaa !15
  %tobool15.not71 = icmp eq ptr %e.070, null
  br i1 %tobool15.not71, label %if.end22, label %for.body

for.body:                                         ; preds = %for.inc, %sym_get_choice_prop.exit64
  %e.072 = phi ptr [ %e.0, %for.inc ], [ %e.070, %sym_get_choice_prop.exit64 ]
  %right = getelementptr inbounds %struct.expr, ptr %e.072, i64 0, i32 2
  %21 = load ptr, ptr %right, align 8, !tbaa !15
  %visible = getelementptr inbounds %struct.symbol, ptr %21, i64 0, i32 5
  %22 = load i32, ptr %visible, align 8, !tbaa !14
  %cmp16.not = icmp eq i32 %22, 0
  br i1 %cmp16.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %for.body
  %flags19 = getelementptr inbounds %struct.symbol, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %flags19, align 4, !tbaa !13
  %or20 = or i32 %23, 65536
  store i32 %or20, ptr %flags19, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body
  %left = getelementptr inbounds %struct.expr, ptr %e.072, i64 0, i32 1
  %e.0 = load ptr, ptr %left, align 8, !tbaa !15
  %tobool15.not = icmp eq ptr %e.0, null
  br i1 %tobool15.not, label %if.end22, label %for.body

if.end22:                                         ; preds = %for.inc, %sym_get_choice_prop.exit64, %if.end4
  %tri = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 4, i64 0, i32 1
  store i32 %val, ptr %tri, align 8, !tbaa !30
  br i1 %cmp.not, label %cleanup, label %for.body.i65

for.body.i65:                                     ; preds = %for.inc3.i.1, %if.end22
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %for.inc3.i.1 ], [ 0, %if.end22 ]
  %arrayidx.i = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.i
  %sym.09.i = load ptr, ptr %arrayidx.i, align 16, !tbaa !16
  %tobool.not10.i = icmp eq ptr %sym.09.i, null
  br i1 %tobool.not10.i, label %for.inc3.i, label %for.body2.i

for.body2.i:                                      ; preds = %for.body2.i, %for.body.i65
  %sym.011.i = phi ptr [ %sym.0.i, %for.body2.i ], [ %sym.09.i, %for.body.i65 ]
  %flags.i66 = getelementptr inbounds %struct.symbol, ptr %sym.011.i, i64 0, i32 6
  %24 = load i32, ptr %flags.i66, align 4, !tbaa !13
  %and.i67 = and i32 %24, -129
  store i32 %and.i67, ptr %flags.i66, align 4, !tbaa !13
  %sym.0.i = load ptr, ptr %sym.011.i, align 8, !tbaa !16
  %tobool.not.i68 = icmp eq ptr %sym.0.i, null
  br i1 %tobool.not.i68, label %for.inc3.i, label %for.body2.i

for.inc3.i:                                       ; preds = %for.body2.i, %for.body.i65
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 9973
  br i1 %exitcond.not.i, label %sym_clear_all_valid.exit, label %for.body.i65.1

for.body.i65.1:                                   ; preds = %for.inc3.i
  %arrayidx.i.1 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.next.i
  %sym.09.i.1 = load ptr, ptr %arrayidx.i.1, align 8, !tbaa !16
  %tobool.not10.i.1 = icmp eq ptr %sym.09.i.1, null
  br i1 %tobool.not10.i.1, label %for.inc3.i.1, label %for.body2.i.1

for.body2.i.1:                                    ; preds = %for.body2.i.1, %for.body.i65.1
  %sym.011.i.1 = phi ptr [ %sym.0.i.1, %for.body2.i.1 ], [ %sym.09.i.1, %for.body.i65.1 ]
  %flags.i66.1 = getelementptr inbounds %struct.symbol, ptr %sym.011.i.1, i64 0, i32 6
  %25 = load i32, ptr %flags.i66.1, align 4, !tbaa !13
  %and.i67.1 = and i32 %25, -129
  store i32 %and.i67.1, ptr %flags.i66.1, align 4, !tbaa !13
  %sym.0.i.1 = load ptr, ptr %sym.011.i.1, align 8, !tbaa !16
  %tobool.not.i68.1 = icmp eq ptr %sym.0.i.1, null
  br i1 %tobool.not.i68.1, label %for.inc3.i.1, label %for.body2.i.1

for.inc3.i.1:                                     ; preds = %for.body2.i.1, %for.body.i65.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %for.body.i65

sym_clear_all_valid.exit:                         ; preds = %for.inc3.i
  tail call void @conf_set_changed(i1 noundef zeroext true) #27
  %26 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %26) #27
  br label %cleanup

cleanup:                                          ; preds = %sym_clear_all_valid.exit, %if.end22, %sym_tristate_within_range.exit, %if.then18.i, %if.end9.i, %if.end4.i, %sym_get_type.exit.i
  %retval.0 = phi i1 [ false, %sym_tristate_within_range.exit ], [ true, %sym_clear_all_valid.exit ], [ true, %if.end22 ], [ false, %if.then18.i ], [ false, %sym_get_type.exit.i ], [ false, %if.end4.i ], [ false, %if.end9.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sym_toggle_tristate_value(ptr noundef %sym) local_unnamed_addr #4 {
entry:
  %tri.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 3, i32 1
  %0 = load i32, ptr %tri.i, align 8, !tbaa !29
  br label %do.body

do.body:                                          ; preds = %sw.epilog, %entry
  %newval.0 = phi i32 [ %0, %entry ], [ %newval.1, %sw.epilog ]
  %1 = icmp ult i32 %newval.0, 3
  br i1 %1, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %do.body
  %2 = sext i32 %newval.0 to i64
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sym_toggle_tristate_value, i64 0, i64 %2
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.body
  %newval.1 = phi i32 [ %newval.0, %do.body ], [ %switch.load, %switch.lookup ]
  %call3 = tail call zeroext i1 @sym_set_tristate_value(ptr noundef %sym, i32 noundef %newval.1)
  %cmp.not = icmp eq i32 %0, %newval.1
  %or.cond = select i1 %call3, i1 true, i1 %cmp.not
  br i1 %or.cond, label %do.end, label %do.body

do.end:                                           ; preds = %sw.epilog
  ret i32 %newval.1
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local zeroext i1 @sym_string_valid(ptr nocapture noundef readonly %sym, ptr nocapture noundef readonly %str) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type, align 8, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 5, label %cleanup
    i32 3, label %sw.bb1
    i32 4, label %sw.bb27
    i32 1, label %sw.bb55
    i32 2, label %sw.bb55
  ]

sw.bb1:                                           ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, ptr %str, i64 1
  %1 = load i8, ptr %str, align 1, !tbaa !15
  %cmp = icmp eq i8 %1, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  %incdec.ptr3 = getelementptr inbounds i8, ptr %str, i64 2
  %2 = load i8, ptr %incdec.ptr, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  %str.addr.0 = phi ptr [ %incdec.ptr3, %if.then ], [ %incdec.ptr, %sw.bb1 ]
  %ch.0 = phi i8 [ %2, %if.then ], [ %1, %sw.bb1 ]
  %call = tail call ptr @__ctype_b_loc() #29
  %3 = load ptr, ptr %call, align 8, !tbaa !16
  %idxprom = sext i8 %ch.0 to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !42
  %5 = and i16 %4, 2048
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %cmp9 = icmp eq i8 %ch.0, 48
  br i1 %cmp9, label %land.lhs.true, label %while.cond.preheader

land.lhs.true:                                    ; preds = %if.end7
  %6 = load i8, ptr %str.addr.0, align 1, !tbaa !15
  %cmp12.not = icmp eq i8 %6, 0
  br i1 %cmp12.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %land.lhs.true, %if.end7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %while.cond.preheader
  %str.addr.1 = phi ptr [ %incdec.ptr16, %while.body ], [ %str.addr.0, %while.cond.preheader ]
  %7 = load i8, ptr %str.addr.1, align 1, !tbaa !15
  %tobool17.not = icmp eq i8 %7, 0
  br i1 %tobool17.not, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr16 = getelementptr inbounds i8, ptr %str.addr.1, i64 1
  %idxprom20 = sext i8 %7 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %3, i64 %idxprom20
  %8 = load i16, ptr %arrayidx21, align 2, !tbaa !42
  %9 = and i16 %8, 2048
  %tobool24.not = icmp eq i16 %9, 0
  br i1 %tobool24.not, label %cleanup, label %while.cond

sw.bb27:                                          ; preds = %entry
  %10 = load i8, ptr %str, align 1, !tbaa !15
  %cmp30 = icmp eq i8 %10, 48
  br i1 %cmp30, label %land.lhs.true32, label %if.end42

land.lhs.true32:                                  ; preds = %sw.bb27
  %arrayidx33 = getelementptr inbounds i8, ptr %str, i64 1
  %11 = load i8, ptr %arrayidx33, align 1, !tbaa !15
  switch i8 %11, label %if.end42 [
    i8 120, label %if.then41
    i8 88, label %if.then41
  ]

if.then41:                                        ; preds = %land.lhs.true32, %land.lhs.true32
  %add.ptr = getelementptr inbounds i8, ptr %str, i64 2
  %.pre = load i8, ptr %add.ptr, align 1, !tbaa !15
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %land.lhs.true32, %sw.bb27
  %12 = phi i8 [ %.pre, %if.then41 ], [ %10, %sw.bb27 ], [ 48, %land.lhs.true32 ]
  %str.addr.2 = phi ptr [ %add.ptr, %if.then41 ], [ %str, %sw.bb27 ], [ %str, %land.lhs.true32 ]
  %call44 = tail call ptr @__ctype_b_loc() #29
  %13 = load ptr, ptr %call44, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end42
  %str.addr.2.pn = phi ptr [ %str.addr.2, %if.end42 ], [ %str.addr.3, %do.cond ]
  %ch.1 = phi i8 [ %12, %if.end42 ], [ %16, %do.cond ]
  %idxprom46 = sext i8 %ch.1 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %13, i64 %idxprom46
  %14 = load i16, ptr %arrayidx47, align 2, !tbaa !42
  %15 = and i16 %14, 4096
  %tobool50.not = icmp eq i16 %15, 0
  br i1 %tobool50.not, label %cleanup.loopexit76, label %do.cond

do.cond:                                          ; preds = %do.body
  %str.addr.3 = getelementptr inbounds i8, ptr %str.addr.2.pn, i64 1
  %16 = load i8, ptr %str.addr.3, align 1, !tbaa !15
  %tobool54.not = icmp eq i8 %16, 0
  br i1 %tobool54.not, label %cleanup.loopexit76, label %do.body

sw.bb55:                                          ; preds = %entry, %entry
  %17 = load i8, ptr %str, align 1, !tbaa !15
  %conv57 = sext i8 %17 to i32
  %switch.tableidx = add nsw i32 %conv57, -77
  %18 = icmp ult i32 %switch.tableidx, 45
  br i1 %18, label %switch.lookup, label %cleanup

sw.default:                                       ; preds = %entry
  br label %cleanup

cleanup.loopexit76:                               ; preds = %do.cond, %do.body
  %19 = xor i1 %tobool50.not, true
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb55
  %switch.cast = zext i32 %switch.tableidx to i45
  %switch.downshift = lshr i45 -17579301138429, %switch.cast
  %20 = and i45 %switch.downshift, 1
  %switch.masked = icmp ne i45 %20, 0
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %cleanup.loopexit76, %sw.default, %sw.bb55, %while.body, %while.cond, %land.lhs.true, %if.end, %entry
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry ], [ false, %if.end ], [ false, %land.lhs.true ], [ %19, %cleanup.loopexit76 ], [ %switch.masked, %switch.lookup ], [ false, %sw.bb55 ], [ %tobool17.not, %while.body ], [ %tobool17.not, %while.cond ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @sym_string_within_range(ptr noundef readonly %sym, ptr nocapture noundef readonly %str) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type, align 8, !tbaa !5
  switch i32 %0, label %cleanup [
    i32 5, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb11
    i32 1, label %sw.bb30
    i32 2, label %sw.bb30
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %sym, ptr noundef %str)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %sym, ptr noundef %str)
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb1
  %prop1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.014.i = load ptr, ptr %prop1.i, align 8, !tbaa !16
  %tobool.not15.i = icmp eq ptr %prop.014.i, null
  br i1 %tobool.not15.i, label %cleanup, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.end
  %prop.016.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.014.i, %if.end ]
  %type.i = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 1
  %1 = load i32, ptr %type.i, align 8, !tbaa !17
  %cmp.i = icmp eq i32 %1, 8
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %visible.i = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 3
  %2 = load ptr, ptr %visible.i, align 8, !tbaa !19
  %call.i = tail call i32 @expr_calc_value(ptr noundef %2) #27
  %tri.i = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 3, i32 1
  store i32 %call.i, ptr %tri.i, align 8, !tbaa !20
  %cmp5.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.not.i, label %for.inc.i, label %if.end5

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %prop.0.i = load ptr, ptr %prop.016.i, align 8, !tbaa !16
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %cleanup, label %for.body.i

if.end5:                                          ; preds = %if.then.i
  %call6 = tail call i64 @strtoll(ptr nocapture noundef %str, ptr noundef null, i32 noundef 10) #27
  %expr = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 4
  %3 = load ptr, ptr %expr, align 8, !tbaa !21
  %left = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %left, align 8, !tbaa !15
  tail call void @sym_calc_value(ptr noundef %4) #27
  %type.i59 = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %type.i59, align 8, !tbaa !5
  %cond181 = icmp eq i32 %5, 4
  %spec.select = select i1 %cond181, i32 16, i32 10
  %curr.i = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %curr.i, align 8, !tbaa !28
  %call.i60 = tail call i64 @strtoll(ptr nocapture noundef %6, ptr noundef null, i32 noundef %spec.select) #27
  %cmp.not = icmp slt i64 %call6, %call.i60
  br i1 %cmp.not, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %if.end5
  %7 = load ptr, ptr %expr, align 8, !tbaa !21
  %right = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %right, align 8, !tbaa !15
  tail call void @sym_calc_value(ptr noundef %8) #27
  %type.i61 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %type.i61, align 8, !tbaa !5
  %cond182 = icmp eq i32 %9, 4
  %spec.select183 = select i1 %cond182, i32 16, i32 10
  %curr.i65 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %curr.i65, align 8, !tbaa !28
  %call.i66 = tail call i64 @strtoll(ptr nocapture noundef %10, ptr noundef null, i32 noundef %spec.select183) #27
  %cmp10 = icmp sle i64 %call6, %call.i66
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %call12 = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %sym, ptr noundef %str)
  br i1 %call12, label %if.end14, label %cleanup

if.end14:                                         ; preds = %sw.bb11
  %prop1.i68 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.014.i69 = load ptr, ptr %prop1.i68, align 8, !tbaa !16
  %tobool.not15.i70 = icmp eq ptr %prop.014.i69, null
  br i1 %tobool.not15.i70, label %cleanup, label %for.body.i74

for.body.i74:                                     ; preds = %for.inc.i82, %if.end14
  %prop.016.i71 = phi ptr [ %prop.0.i80, %for.inc.i82 ], [ %prop.014.i69, %if.end14 ]
  %type.i72 = getelementptr inbounds %struct.property, ptr %prop.016.i71, i64 0, i32 1
  %11 = load i32, ptr %type.i72, align 8, !tbaa !17
  %cmp.i73 = icmp eq i32 %11, 8
  br i1 %cmp.i73, label %if.then.i79, label %for.inc.i82

if.then.i79:                                      ; preds = %for.body.i74
  %visible.i75 = getelementptr inbounds %struct.property, ptr %prop.016.i71, i64 0, i32 3
  %12 = load ptr, ptr %visible.i75, align 8, !tbaa !19
  %call.i76 = tail call i32 @expr_calc_value(ptr noundef %12) #27
  %tri.i77 = getelementptr inbounds %struct.property, ptr %prop.016.i71, i64 0, i32 3, i32 1
  store i32 %call.i76, ptr %tri.i77, align 8, !tbaa !20
  %cmp5.not.i78 = icmp eq i32 %call.i76, 0
  br i1 %cmp5.not.i78, label %for.inc.i82, label %if.end18

for.inc.i82:                                      ; preds = %if.then.i79, %for.body.i74
  %prop.0.i80 = load ptr, ptr %prop.016.i71, align 8, !tbaa !16
  %tobool.not.i81 = icmp eq ptr %prop.0.i80, null
  br i1 %tobool.not.i81, label %cleanup, label %for.body.i74

if.end18:                                         ; preds = %if.then.i79
  %call19 = tail call i64 @strtoll(ptr nocapture noundef %str, ptr noundef null, i32 noundef 16) #27
  %expr20 = getelementptr inbounds %struct.property, ptr %prop.016.i71, i64 0, i32 4
  %13 = load ptr, ptr %expr20, align 8, !tbaa !21
  %left21 = getelementptr inbounds %struct.expr, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %left21, align 8, !tbaa !15
  tail call void @sym_calc_value(ptr noundef %14) #27
  %type.i85 = getelementptr inbounds %struct.symbol, ptr %14, i64 0, i32 2
  %15 = load i32, ptr %type.i85, align 8, !tbaa !5
  %cond = icmp eq i32 %15, 3
  %spec.select184 = select i1 %cond, i32 10, i32 16
  %curr.i89 = getelementptr inbounds %struct.symbol, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %curr.i89, align 8, !tbaa !28
  %call.i90 = tail call i64 @strtoll(ptr nocapture noundef %16, ptr noundef null, i32 noundef %spec.select184) #27
  %cmp23.not = icmp slt i64 %call19, %call.i90
  br i1 %cmp23.not, label %cleanup, label %land.rhs24

land.rhs24:                                       ; preds = %if.end18
  %17 = load ptr, ptr %expr20, align 8, !tbaa !21
  %right26 = getelementptr inbounds %struct.expr, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %right26, align 8, !tbaa !15
  tail call void @sym_calc_value(ptr noundef %18) #27
  %type.i92 = getelementptr inbounds %struct.symbol, ptr %18, i64 0, i32 2
  %19 = load i32, ptr %type.i92, align 8, !tbaa !5
  %cond180 = icmp eq i32 %19, 3
  %spec.select185 = select i1 %cond180, i32 10, i32 16
  %curr.i96 = getelementptr inbounds %struct.symbol, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %curr.i96, align 8, !tbaa !28
  %call.i97 = tail call i64 @strtoll(ptr nocapture noundef %20, ptr noundef null, i32 noundef %spec.select185) #27
  %cmp28 = icmp sle i64 %call19, %call.i97
  br label %cleanup

sw.bb30:                                          ; preds = %entry, %entry
  %21 = load i8, ptr %str, align 1, !tbaa !15
  %conv = sext i8 %21 to i32
  switch i32 %conv, label %cleanup [
    i32 121, label %sw.bb31
    i32 89, label %sw.bb31
    i32 109, label %sw.bb33
    i32 77, label %sw.bb33
    i32 110, label %sw.bb35
    i32 78, label %sw.bb35
  ]

sw.bb31:                                          ; preds = %sw.bb30, %sw.bb30
  %visible.i99 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %22 = load i32, ptr %visible.i99, align 8, !tbaa !14
  %cmp.i100 = icmp eq i32 %22, 0
  br i1 %cmp.i100, label %cleanup, label %if.end4.i

if.end4.i:                                        ; preds = %sw.bb31
  %tri.i101 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %23 = load i32, ptr %tri.i101, align 8, !tbaa !31
  %cmp11.not.i = icmp ugt i32 %22, %23
  br i1 %cmp11.not.i, label %if.end13.i, label %cleanup

if.end13.i:                                       ; preds = %if.end4.i
  %flags.i.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %24 = load i32, ptr %flags.i.i, align 4, !tbaa !13
  %and.i.i = and i32 %24, 32
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %cmp17.i = icmp eq i32 %22, 2
  %or.cond40.i = select i1 %tobool.i.i, i1 %cmp17.i, i1 false
  br i1 %or.cond40.i, label %cleanup, label %if.end20.i

if.end20.i:                                       ; preds = %if.end13.i
  %cmp23.not.i = icmp ult i32 %23, 3
  %cmp25.i = icmp ugt i32 %22, 1
  %spec.select.i = select i1 %cmp23.not.i, i1 %cmp25.i, i1 false
  br label %cleanup

sw.bb33:                                          ; preds = %sw.bb30, %sw.bb30
  %cmp.i.i103 = icmp eq i32 %0, 2
  br i1 %cmp.i.i103, label %if.then.i.i107, label %cleanup

if.then.i.i107:                                   ; preds = %sw.bb33
  %flags.i.i.i104 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %25 = load i32, ptr %flags.i.i.i104, align 4, !tbaa !13
  %and.i.i.i105 = and i32 %25, 32
  %tobool.i.not.i.i106 = icmp eq i32 %and.i.i.i105, 0
  br i1 %tobool.i.not.i.i106, label %sym_get_type.exit.i118, label %land.lhs.true.i.i110

land.lhs.true.i.i110:                             ; preds = %if.then.i.i107
  %visible.i.i108 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %26 = load i32, ptr %visible.i.i108, align 8, !tbaa !14
  %cmp2.i.i109 = icmp eq i32 %26, 2
  br i1 %cmp2.i.i109, label %cleanup, label %sym_get_type.exit.i118

sym_get_type.exit.i118:                           ; preds = %land.lhs.true.i.i110, %if.then.i.i107
  %27 = load i32, ptr @modules_val, align 4, !tbaa !15
  %cmp4.i.i111 = icmp eq i32 %27, 0
  %visible.i115 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %28 = load i32, ptr %visible.i115, align 8, !tbaa !14
  %cmp.i116 = icmp eq i32 %28, 0
  %or.cond = select i1 %cmp.i116, i1 true, i1 %cmp4.i.i111
  br i1 %or.cond, label %cleanup, label %if.end9.i

if.end9.i:                                        ; preds = %sym_get_type.exit.i118
  %tri.i121 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %29 = load i32, ptr %tri.i121, align 8, !tbaa !31
  %cmp11.not.i122 = icmp ugt i32 %28, %29
  br i1 %cmp11.not.i122, label %if.end13.i128, label %cleanup

if.end13.i128:                                    ; preds = %if.end9.i
  %flags.i.i123 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %30 = load i32, ptr %flags.i.i123, align 4, !tbaa !13
  %and.i.i124 = and i32 %30, 32
  %tobool.i.i125 = icmp eq i32 %and.i.i124, 0
  %cmp17.i126 = icmp ne i32 %28, 2
  %or.cond40.i127 = select i1 %tobool.i.i125, i1 true, i1 %cmp17.i126
  %cmp23.not.i130 = icmp ult i32 %29, 2
  %spec.select187 = select i1 %or.cond40.i127, i1 %cmp23.not.i130, i1 false
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb30, %sw.bb30
  %visible.i149 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %31 = load i32, ptr %visible.i149, align 8, !tbaa !14
  %cmp.i150 = icmp eq i32 %31, 0
  br i1 %cmp.i150, label %cleanup, label %if.end4.i154

if.end4.i154:                                     ; preds = %sw.bb35
  %tri.i155 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %32 = load i32, ptr %tri.i155, align 8, !tbaa !31
  %cmp11.not.i156 = icmp ugt i32 %31, %32
  br i1 %cmp11.not.i156, label %if.end13.i163, label %cleanup

if.end13.i163:                                    ; preds = %if.end4.i154
  %flags.i.i158 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %33 = load i32, ptr %flags.i.i158, align 4, !tbaa !13
  %and.i.i159 = and i32 %33, 32
  %tobool.i.i160 = icmp eq i32 %and.i.i159, 0
  %cmp17.i161 = icmp ne i32 %31, 2
  %or.cond40.i162 = select i1 %tobool.i.i160, i1 true, i1 %cmp17.i161
  %cmp23.not.i165 = icmp eq i32 %32, 0
  %spec.select186 = select i1 %or.cond40.i162, i1 %cmp23.not.i165, i1 false
  br label %cleanup

cleanup:                                          ; preds = %if.end13.i163, %if.end4.i154, %sw.bb35, %if.end13.i128, %if.end9.i, %sym_get_type.exit.i118, %land.lhs.true.i.i110, %sw.bb33, %if.end20.i, %if.end13.i, %if.end4.i, %sw.bb31, %sw.bb30, %land.rhs24, %if.end18, %for.inc.i82, %if.end14, %sw.bb11, %land.rhs, %if.end5, %for.inc.i, %if.end, %sw.bb1, %sw.bb, %entry
  %retval.0 = phi i1 [ %call, %sw.bb ], [ false, %sw.bb1 ], [ false, %if.end5 ], [ %cmp10, %land.rhs ], [ false, %sw.bb11 ], [ false, %if.end18 ], [ %cmp28, %land.rhs24 ], [ false, %sw.bb30 ], [ false, %entry ], [ false, %sw.bb31 ], [ false, %if.end4.i ], [ %spec.select.i, %if.end20.i ], [ true, %if.end13.i ], [ false, %sym_get_type.exit.i118 ], [ false, %if.end9.i ], [ false, %sw.bb35 ], [ false, %if.end4.i154 ], [ true, %if.end ], [ true, %if.end14 ], [ false, %land.lhs.true.i.i110 ], [ %spec.select186, %if.end13.i163 ], [ %spec.select187, %if.end13.i128 ], [ false, %sw.bb33 ], [ true, %for.inc.i ], [ true, %for.inc.i82 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @sym_set_string_value(ptr noundef %sym, ptr nocapture noundef readonly %newval) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type, align 8, !tbaa !5
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.epilog6

sw.bb:                                            ; preds = %entry
  %1 = load i8, ptr %newval, align 1, !tbaa !15
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %cleanup [
    i32 121, label %sw.bb1
    i32 89, label %sw.bb1
    i32 109, label %sw.bb2
    i32 77, label %sw.bb2
    i32 110, label %sw.bb4
    i32 78, label %sw.bb4
  ]

sw.bb1:                                           ; preds = %sw.bb, %sw.bb
  %call = tail call zeroext i1 @sym_set_tristate_value(ptr noundef nonnull %sym, i32 noundef 2)
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb, %sw.bb
  %call3 = tail call zeroext i1 @sym_set_tristate_value(ptr noundef nonnull %sym, i32 noundef 1)
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb, %sw.bb
  %call5 = tail call zeroext i1 @sym_set_tristate_value(ptr noundef nonnull %sym, i32 noundef 0)
  br label %cleanup

sw.epilog6:                                       ; preds = %entry
  %call7 = tail call zeroext i1 @sym_string_within_range(ptr noundef nonnull %sym, ptr noundef %newval)
  br i1 %call7, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.epilog6
  %flags = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %2 = load i32, ptr %flags, align 4, !tbaa !13
  %and = and i32 %2, 65536
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %or.i = or i32 %2, 66560
  store i32 %or.i, ptr %flags, align 4, !tbaa !13
  %prop1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.010.i = load ptr, ptr %prop1.i, align 8, !tbaa !16
  %tobool.not11.i = icmp eq ptr %prop.010.i, null
  br i1 %tobool.not11.i, label %if.end10, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.then8
  %prop.012.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.010.i, %if.then8 ]
  %menu.i = getelementptr inbounds %struct.property, ptr %prop.012.i, i64 0, i32 5
  %3 = load ptr, ptr %menu.i, align 8, !tbaa !37
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %flags4.i = getelementptr inbounds %struct.menu, ptr %3, i64 0, i32 7
  %4 = load i32, ptr %flags4.i, align 8, !tbaa !38
  %or5.i = or i32 %4, 1
  store i32 %or5.i, ptr %flags4.i, align 8, !tbaa !38
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %prop.0.i = load ptr, ptr %prop.012.i, align 8, !tbaa !16
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %if.end10, label %for.body.i

if.end10:                                         ; preds = %for.inc.i, %if.then8, %if.end
  %def = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 4
  %5 = load ptr, ptr %def, align 8, !tbaa !36
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %newval) #30
  %6 = load i32, ptr %type, align 8, !tbaa !5
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end10
  %7 = load i8, ptr %newval, align 1, !tbaa !15
  %cmp19.not = icmp eq i8 %7, 48
  br i1 %cmp19.not, label %lor.lhs.false, label %if.then30

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx21 = getelementptr inbounds i8, ptr %newval, i64 1
  %8 = load i8, ptr %arrayidx21, align 1, !tbaa !15
  switch i8 %8, label %if.then30 [
    i8 120, label %if.else
    i8 88, label %if.else
  ]

if.then30:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %add31 = shl i64 %call13, 32
  %sext = add i64 %add31, 12884901888
  %conv32 = ashr exact i64 %sext, 32
  %call33 = tail call ptr @xmalloc(i64 noundef %conv32) #27
  store ptr %call33, ptr %def, align 8, !tbaa !36
  %incdec.ptr = getelementptr inbounds i8, ptr %call33, i64 1
  store i8 48, ptr %call33, align 1, !tbaa !15
  %incdec.ptr37 = getelementptr inbounds i8, ptr %call33, i64 2
  store i8 120, ptr %incdec.ptr, align 1, !tbaa !15
  br label %if.end50

if.else:                                          ; preds = %lor.lhs.false, %lor.lhs.false, %if.end10
  %tobool38.not = icmp eq ptr %5, null
  br i1 %tobool38.not, label %if.then42, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.else
  %call40 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(1) %newval) #30
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %if.then42

if.then42:                                        ; preds = %lor.lhs.false39, %if.else
  %conv14 = shl i64 %call13, 32
  %sext78 = add i64 %conv14, 4294967296
  %conv43 = ashr exact i64 %sext78, 32
  %call44 = tail call ptr @xmalloc(i64 noundef %conv43) #27
  store ptr %call44, ptr %def, align 8, !tbaa !36
  br label %if.end50

if.end50:                                         ; preds = %if.then42, %if.then30
  %val.0 = phi ptr [ %incdec.ptr37, %if.then30 ], [ %call44, %if.then42 ]
  %call51 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %val.0, ptr noundef nonnull dereferenceable(1) %newval) #27
  tail call void @free(ptr noundef %5) #27
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.inc3.i.1, %if.end50
  %indvars.iv.i = phi i64 [ 0, %if.end50 ], [ %indvars.iv.next.i.1, %for.inc3.i.1 ]
  %arrayidx.i = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.i
  %sym.09.i = load ptr, ptr %arrayidx.i, align 16, !tbaa !16
  %tobool.not10.i = icmp eq ptr %sym.09.i, null
  br i1 %tobool.not10.i, label %for.inc3.i, label %for.body2.i

for.body2.i:                                      ; preds = %for.body2.i, %for.body.i79
  %sym.011.i = phi ptr [ %sym.0.i, %for.body2.i ], [ %sym.09.i, %for.body.i79 ]
  %flags.i80 = getelementptr inbounds %struct.symbol, ptr %sym.011.i, i64 0, i32 6
  %9 = load i32, ptr %flags.i80, align 4, !tbaa !13
  %and.i = and i32 %9, -129
  store i32 %and.i, ptr %flags.i80, align 4, !tbaa !13
  %sym.0.i = load ptr, ptr %sym.011.i, align 8, !tbaa !16
  %tobool.not.i81 = icmp eq ptr %sym.0.i, null
  br i1 %tobool.not.i81, label %for.inc3.i, label %for.body2.i

for.inc3.i:                                       ; preds = %for.body2.i, %for.body.i79
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 9973
  br i1 %exitcond.not.i, label %sym_clear_all_valid.exit, label %for.body.i79.1

for.body.i79.1:                                   ; preds = %for.inc3.i
  %arrayidx.i.1 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.next.i
  %sym.09.i.1 = load ptr, ptr %arrayidx.i.1, align 8, !tbaa !16
  %tobool.not10.i.1 = icmp eq ptr %sym.09.i.1, null
  br i1 %tobool.not10.i.1, label %for.inc3.i.1, label %for.body2.i.1

for.body2.i.1:                                    ; preds = %for.body2.i.1, %for.body.i79.1
  %sym.011.i.1 = phi ptr [ %sym.0.i.1, %for.body2.i.1 ], [ %sym.09.i.1, %for.body.i79.1 ]
  %flags.i80.1 = getelementptr inbounds %struct.symbol, ptr %sym.011.i.1, i64 0, i32 6
  %10 = load i32, ptr %flags.i80.1, align 4, !tbaa !13
  %and.i.1 = and i32 %10, -129
  store i32 %and.i.1, ptr %flags.i80.1, align 4, !tbaa !13
  %sym.0.i.1 = load ptr, ptr %sym.011.i.1, align 8, !tbaa !16
  %tobool.not.i81.1 = icmp eq ptr %sym.0.i.1, null
  br i1 %tobool.not.i81.1, label %for.inc3.i.1, label %for.body2.i.1

for.inc3.i.1:                                     ; preds = %for.body2.i.1, %for.body.i79.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %for.body.i79

sym_clear_all_valid.exit:                         ; preds = %for.inc3.i
  tail call void @conf_set_changed(i1 noundef zeroext true) #27
  %11 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %11) #27
  br label %cleanup

cleanup:                                          ; preds = %sym_clear_all_valid.exit, %lor.lhs.false39, %sw.epilog6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i1 [ true, %sym_clear_all_valid.exit ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb1 ], [ false, %sw.bb ], [ false, %sw.epilog6 ], [ true, %lor.lhs.false39 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_get_string_default(ptr noundef %sym) local_unnamed_addr #4 {
entry:
  tail call fastcc void @sym_calc_visibility(ptr noundef %sym)
  %0 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %0)
  %1 = load i32, ptr getelementptr inbounds (%struct.symbol, ptr @symbol_no, i64 0, i32 3, i32 1), align 8, !tbaa !29
  %prop1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.014.i = load ptr, ptr %prop1.i, align 8, !tbaa !16
  %tobool.not15.i = icmp eq ptr %prop.014.i, null
  br i1 %tobool.not15.i, label %if.end11, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %prop.016.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.014.i, %entry ]
  %type.i = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 1
  %2 = load i32, ptr %type.i, align 8, !tbaa !17
  %cmp.i = icmp eq i32 %2, 4
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %visible.i = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 3
  %3 = load ptr, ptr %visible.i, align 8, !tbaa !19
  %call.i = tail call i32 @expr_calc_value(ptr noundef %3) #27
  %tri.i = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 3, i32 1
  store i32 %call.i, ptr %tri.i, align 8, !tbaa !20
  %cmp5.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.not.i, label %for.inc.i, label %if.then

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %prop.0.i = load ptr, ptr %prop.016.i, align 8, !tbaa !16
  %tobool.not.i = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i, label %if.end11, label %for.body.i

if.then:                                          ; preds = %if.then.i
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %4 = load i32, ptr %type, align 8, !tbaa !5
  %.off = add i32 %4, -1
  %switch = icmp ult i32 %.off, 2
  %expr = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 4
  %5 = load ptr, ptr %expr, align 8, !tbaa !21
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then
  %tri.i.le = getelementptr inbounds %struct.property, ptr %prop.016.i, i64 0, i32 3, i32 1
  %call1 = tail call i32 @expr_calc_value(ptr noundef %5) #27
  %6 = load i32, ptr %tri.i.le, align 8, !tbaa !20
  %cmp2 = icmp ult i32 %call1, %6
  br i1 %cmp2, label %cond.true, label %if.end11

cond.true:                                        ; preds = %sw.bb
  %7 = load ptr, ptr %expr, align 8, !tbaa !21
  %call4 = tail call i32 @expr_calc_value(ptr noundef %7) #27
  br label %if.end11

sw.default:                                       ; preds = %if.then
  %tobool.not.i78 = icmp eq ptr %5, null
  br i1 %tobool.not.i78, label %if.end11, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.default
  %8 = load i32, ptr %5, align 8, !tbaa !23
  %9 = and i32 %8, -2
  %switch.i = icmp eq i32 %9, 10
  br i1 %switch.i, label %prop_get_symbol.exit, label %if.end11

prop_get_symbol.exit:                             ; preds = %land.lhs.true.i
  %left.i = getelementptr inbounds %struct.expr, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %left.i, align 8, !tbaa !15
  %cmp8.not = icmp eq ptr %10, null
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %prop_get_symbol.exit
  tail call void @sym_calc_value(ptr noundef nonnull %10)
  %curr = getelementptr inbounds %struct.symbol, ptr %10, i64 0, i32 3
  %11 = load ptr, ptr %curr, align 8, !tbaa !28
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %prop_get_symbol.exit, %land.lhs.true.i, %sw.default, %cond.true, %sw.bb, %for.inc.i, %entry
  %str.0 = phi ptr [ %11, %if.then9 ], [ @.str.10, %prop_get_symbol.exit ], [ @.str.10, %sw.bb ], [ @.str.10, %cond.true ], [ @.str.10, %entry ], [ @.str.10, %land.lhs.true.i ], [ @.str.10, %sw.default ], [ @.str.10, %for.inc.i ]
  %val.0 = phi i32 [ %1, %if.then9 ], [ %1, %prop_get_symbol.exit ], [ %6, %sw.bb ], [ %call4, %cond.true ], [ %1, %entry ], [ %1, %land.lhs.true.i ], [ %1, %sw.default ], [ %1, %for.inc.i ]
  %tri12 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %12 = load i32, ptr %tri12, align 8, !tbaa !31
  %13 = tail call i32 @llvm.umax.i32(i32 %val.0, i32 %12)
  %cmp20 = icmp eq i32 %13, 1
  br i1 %cmp20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end11
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %14 = load i32, ptr %flags.i, align 4, !tbaa !13
  %and.i = and i32 %14, 32
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.then21
  %15 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  %tri24 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 3, i32 1
  %16 = load i32, ptr %tri24, align 8, !tbaa !29
  %cmp25 = icmp eq i32 %16, 0
  %spec.select = select i1 %cmp25, i32 2, i32 1
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %if.then21, %if.end11
  %val.1 = phi i32 [ 1, %if.then21 ], [ %13, %if.end11 ], [ %spec.select, %land.lhs.true ]
  %type29 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %17 = load i32, ptr %type29, align 8, !tbaa !5
  switch i32 %17, label %sw.epilog49 [
    i32 1, label %sw.bb42
    i32 2, label %sw.bb42
    i32 3, label %cleanup
    i32 4, label %cleanup
    i32 5, label %cleanup
  ]

sw.bb42:                                          ; preds = %if.end28, %if.end28
  %tri35 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 10, i32 1
  %18 = load i32, ptr %tri35, align 8, !tbaa !32
  %cmp30 = icmp eq i32 %17, 1
  %cmp32 = icmp eq i32 %val.1, 1
  %or.cond = select i1 %cmp30, i1 %cmp32, i1 false
  %spec.store.select = select i1 %or.cond, i32 2, i32 %val.1
  %19 = tail call i32 @llvm.umax.i32(i32 %spec.store.select, i32 %18)
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %switch.lookup, label %cleanup

sw.epilog49:                                      ; preds = %if.end28
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb42
  %21 = sext i32 %19 to i64
  %reltable.shift = shl i64 %21, 2
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.sym_get_string_default, i64 %reltable.shift)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.epilog49, %sw.bb42, %if.end28, %if.end28, %if.end28
  %retval.0 = phi ptr [ @.str.10, %sw.epilog49 ], [ %str.0, %if.end28 ], [ %reltable.intrinsic, %switch.lookup ], [ %str.0, %sw.bb42 ], [ %str.0, %if.end28 ], [ %str.0, %if.end28 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_get_string_value(ptr nocapture noundef readonly %sym) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type, align 8, !tbaa !5
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.epilog4

sw.bb:                                            ; preds = %entry
  %tri.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 3, i32 1
  %1 = load i32, ptr %tri.i, align 8, !tbaa !29
  switch i32 %1, label %sw.epilog4 [
    i32 0, label %cleanup
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb2:                                           ; preds = %sw.bb
  %2 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  tail call void @sym_calc_value(ptr noundef %2)
  %3 = load ptr, ptr @modules_sym, align 8, !tbaa !16
  %tri = getelementptr inbounds %struct.symbol, ptr %3, i64 0, i32 3, i32 1
  %4 = load i32, ptr %tri, align 8, !tbaa !29
  %cmp = icmp eq i32 %4, 0
  %cond = select i1 %cmp, ptr @.str.2, ptr @.str.1
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  br label %cleanup

sw.epilog4:                                       ; preds = %sw.bb, %entry
  %curr5 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 3
  %5 = load ptr, ptr %curr5, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog4, %sw.bb3, %sw.bb2, %sw.bb
  %retval.0 = phi ptr [ %5, %sw.epilog4 ], [ @.str, %sw.bb3 ], [ %cond, %sw.bb2 ], [ @.str.2, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @sym_is_changeable(ptr nocapture noundef readonly %sym) local_unnamed_addr #13 {
entry:
  %visible = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 5
  %0 = load i32, ptr %visible, align 8, !tbaa !14
  %tri = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9, i32 1
  %1 = load i32, ptr %tri, align 8, !tbaa !31
  %cmp = icmp ugt i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sym_lookup(ptr noundef %name, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.end27, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %name, align 1, !tbaa !15
  %conv = sext i8 %0 to i32
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %strhash.exit, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %arrayidx2 = getelementptr inbounds i8, ptr %name, i64 1
  %1 = load i8, ptr %arrayidx2, align 1, !tbaa !15
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  switch i32 %conv, label %if.end [
    i32 121, label %cleanup
    i32 109, label %sw.bb7
    i32 110, label %sw.bb8
  ]

sw.bb7:                                           ; preds = %if.then4
  br label %cleanup

sw.bb8:                                           ; preds = %if.then4
  br label %cleanup

if.end:                                           ; preds = %if.then4, %land.lhs.true
  %conv.i68 = sext i8 %0 to i32
  %xor.i69 = xor i32 %conv.i68, -2128831035
  %mul.i70 = mul i32 %xor.i69, 16777619
  %tobool.not.i71 = icmp eq i8 %1, 0
  br i1 %tobool.not.i71, label %strhash.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %mul.i73 = phi i32 [ %mul.i, %for.body.i.for.body.i_crit_edge ], [ %mul.i70, %if.end ]
  %s.addr.05.i72 = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %name, %if.end ]
  %2 = phi i8 [ %.pre, %for.body.i.for.body.i_crit_edge ], [ %1, %if.end ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %s.addr.05.i72, i64 1
  %incdec.ptr.i.phi.trans.insert = getelementptr inbounds i8, ptr %s.addr.05.i72, i64 2
  %.pre = load i8, ptr %incdec.ptr.i.phi.trans.insert, align 1, !tbaa !15
  %conv.i = sext i8 %2 to i32
  %xor.i = xor i32 %mul.i73, %conv.i
  %mul.i = mul i32 %xor.i, 16777619
  %tobool.not.i = icmp eq i8 %.pre, 0
  br i1 %tobool.not.i, label %strhash.exit.loopexit, label %for.body.i.for.body.i_crit_edge

strhash.exit.loopexit:                            ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %mul.i.lcssa = phi i32 [ %mul.i70, %if.end ], [ %mul.i, %for.body.i.for.body.i_crit_edge ]
  %phi.bo = urem i32 %mul.i.lcssa, 9973
  %phi.cast = zext i32 %phi.bo to i64
  br label %strhash.exit

strhash.exit:                                     ; preds = %strhash.exit.loopexit, %if.then
  %hash.0.lcssa.i = phi i64 [ 661, %if.then ], [ %phi.cast, %strhash.exit.loopexit ]
  %arrayidx9 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %hash.0.lcssa.i
  %symbol.062 = load ptr, ptr %arrayidx9, align 8, !tbaa !16
  %tobool10.not63 = icmp eq ptr %symbol.062, null
  br i1 %tobool10.not63, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %strhash.exit
  %tobool18.not = icmp eq i32 %flags, 0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %symbol.064 = phi ptr [ %symbol.062, %for.body.lr.ph ], [ %symbol.0, %for.inc ]
  %name11 = getelementptr inbounds %struct.symbol, ptr %symbol.064, i64 0, i32 1
  %3 = load ptr, ptr %name11, align 8, !tbaa !27
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %for.inc, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %for.body
  %call15 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull %name) #30
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %flags21 = getelementptr inbounds %struct.symbol, ptr %symbol.064, i64 0, i32 6
  %4 = load i32, ptr %flags21, align 4, !tbaa !13
  br i1 %tobool18.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true17
  %and = and i32 %4, %flags
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %for.inc, label %cleanup

cond.false:                                       ; preds = %land.lhs.true17
  %and22 = and i32 %4, 17
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true, %land.lhs.true13, %for.body
  %symbol.0 = load ptr, ptr %symbol.064, align 8, !tbaa !16
  %tobool10.not = icmp eq ptr %symbol.0, null
  br i1 %tobool10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %strhash.exit
  %call26 = tail call ptr @xstrdup(ptr noundef nonnull %name) #27
  br label %if.end27

if.end27:                                         ; preds = %for.end, %entry
  %new_name.0 = phi ptr [ %call26, %for.end ], [ null, %entry ]
  %hash.0 = phi i64 [ %hash.0.lcssa.i, %for.end ], [ 0, %entry ]
  %call28 = tail call ptr @xmalloc(i64 noundef 168) #27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %call28, i8 0, i64 168, i1 false)
  %name29 = getelementptr inbounds %struct.symbol, ptr %call28, i64 0, i32 1
  store ptr %new_name.0, ptr %name29, align 8, !tbaa !27
  %flags30 = getelementptr inbounds %struct.symbol, ptr %call28, i64 0, i32 6
  store i32 %flags, ptr %flags30, align 4, !tbaa !13
  %arrayidx32 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %hash.0
  %5 = load ptr, ptr %arrayidx32, align 8, !tbaa !16
  store ptr %5, ptr %call28, align 8, !tbaa !44
  store ptr %call28, ptr %arrayidx32, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %cond.false, %cond.true, %sw.bb8, %sw.bb7, %if.then4
  %retval.0 = phi ptr [ %call28, %if.end27 ], [ @symbol_no, %sw.bb8 ], [ @symbol_mod, %sw.bb7 ], [ @symbol_yes, %if.then4 ], [ %symbol.064, %cond.false ], [ %symbol.064, %cond.true ]
  ret ptr %retval.0
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @sym_find(ptr noundef readonly %name) local_unnamed_addr #15 {
entry:
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %name, align 1, !tbaa !15
  %conv = sext i8 %0 to i32
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %strhash.exit, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %arrayidx2 = getelementptr inbounds i8, ptr %name, i64 1
  %1 = load i8, ptr %arrayidx2, align 1, !tbaa !15
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  switch i32 %conv, label %if.end9 [
    i32 121, label %cleanup
    i32 109, label %sw.bb7
    i32 110, label %sw.bb8
  ]

sw.bb7:                                           ; preds = %if.then4
  br label %cleanup

sw.bb8:                                           ; preds = %if.then4
  br label %cleanup

if.end9:                                          ; preds = %if.then4, %land.lhs.true
  %conv.i37 = sext i8 %0 to i32
  %xor.i38 = xor i32 %conv.i37, -2128831035
  %mul.i39 = mul i32 %xor.i38, 16777619
  %tobool.not.i40 = icmp eq i8 %1, 0
  br i1 %tobool.not.i40, label %strhash.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i.for.body.i_crit_edge, %if.end9
  %mul.i42 = phi i32 [ %mul.i, %for.body.i.for.body.i_crit_edge ], [ %mul.i39, %if.end9 ]
  %s.addr.05.i41 = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %name, %if.end9 ]
  %2 = phi i8 [ %.pre, %for.body.i.for.body.i_crit_edge ], [ %1, %if.end9 ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %s.addr.05.i41, i64 1
  %incdec.ptr.i.phi.trans.insert = getelementptr inbounds i8, ptr %s.addr.05.i41, i64 2
  %.pre = load i8, ptr %incdec.ptr.i.phi.trans.insert, align 1, !tbaa !15
  %conv.i = sext i8 %2 to i32
  %xor.i = xor i32 %mul.i42, %conv.i
  %mul.i = mul i32 %xor.i, 16777619
  %tobool.not.i = icmp eq i8 %.pre, 0
  br i1 %tobool.not.i, label %strhash.exit.loopexit, label %for.body.i.for.body.i_crit_edge

strhash.exit.loopexit:                            ; preds = %for.body.i.for.body.i_crit_edge, %if.end9
  %mul.i.lcssa = phi i32 [ %mul.i39, %if.end9 ], [ %mul.i, %for.body.i.for.body.i_crit_edge ]
  %phi.bo = urem i32 %mul.i.lcssa, 9973
  %phi.cast = zext i32 %phi.bo to i64
  br label %strhash.exit

strhash.exit:                                     ; preds = %strhash.exit.loopexit, %if.end
  %hash.0.lcssa.i = phi i64 [ 661, %if.end ], [ %phi.cast, %strhash.exit.loopexit ]
  %arrayidx10 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %hash.0.lcssa.i
  %symbol.033 = load ptr, ptr %arrayidx10, align 8, !tbaa !16
  %tobool11.not34 = icmp eq ptr %symbol.033, null
  br i1 %tobool11.not34, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %strhash.exit
  %symbol.035 = phi ptr [ %symbol.0, %for.inc ], [ %symbol.033, %strhash.exit ]
  %name12 = getelementptr inbounds %struct.symbol, ptr %symbol.035, i64 0, i32 1
  %3 = load ptr, ptr %name12, align 8, !tbaa !27
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %for.inc, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %for.body
  %call16 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull %name) #30
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %flags = getelementptr inbounds %struct.symbol, ptr %symbol.035, i64 0, i32 6
  %4 = load i32, ptr %flags, align 4, !tbaa !13
  %and = and i32 %4, 1
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %land.lhs.true18, %land.lhs.true14, %for.body
  %symbol.0 = load ptr, ptr %symbol.035, align 8, !tbaa !16
  %tobool11.not = icmp eq ptr %symbol.0, null
  br i1 %tobool11.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %land.lhs.true18, %strhash.exit, %sw.bb8, %sw.bb7, %if.then4, %entry
  %retval.0 = phi ptr [ @symbol_no, %sw.bb8 ], [ @symbol_mod, %sw.bb7 ], [ null, %entry ], [ @symbol_yes, %if.then4 ], [ null, %strhash.exit ], [ %symbol.035, %land.lhs.true18 ], [ null, %for.inc ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @sym_re_search(ptr noundef %pattern) local_unnamed_addr #4 {
entry:
  %re = alloca %struct.re_pattern_buffer, align 8
  %match = alloca [1 x %struct.regmatch_t], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %re) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #27
  %char0 = load i8, ptr %pattern, align 1
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %cleanup63, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @regcomp(ptr noundef nonnull %re, ptr noundef nonnull %pattern, i32 noundef 3) #27
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup63

for.cond.preheader:                               ; preds = %if.end
  %rm_eo = getelementptr inbounds %struct.regmatch_t, ptr %match, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc35, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc35 ]
  %size.0120 = phi i32 [ 0, %for.cond.preheader ], [ %size.1.lcssa, %for.inc35 ]
  %cnt.0119 = phi i32 [ 0, %for.cond.preheader ], [ %cnt.1.lcssa, %for.inc35 ]
  %sym_match_arr.0117 = phi ptr [ null, %for.cond.preheader ], [ %sym_match_arr.1.lcssa, %for.inc35 ]
  %arrayidx = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv
  %sym.0109 = load ptr, ptr %arrayidx, align 8, !tbaa !16
  %tobool6.not110 = icmp eq ptr %sym.0109, null
  br i1 %tobool6.not110, label %for.inc35, label %for.body7

for.body7:                                        ; preds = %for.inc, %for.body
  %sym.0114 = phi ptr [ %sym.0, %for.inc ], [ %sym.0109, %for.body ]
  %size.1113 = phi i32 [ %size.3, %for.inc ], [ %size.0120, %for.body ]
  %cnt.1112 = phi i32 [ %cnt.2, %for.inc ], [ %cnt.0119, %for.body ]
  %sym_match_arr.1111 = phi ptr [ %sym_match_arr.4, %for.inc ], [ %sym_match_arr.0117, %for.body ]
  %flags = getelementptr inbounds %struct.symbol, ptr %sym.0114, i64 0, i32 6
  %0 = load i32, ptr %flags, align 4, !tbaa !13
  %and = and i32 %0, 1
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %for.inc

lor.lhs.false:                                    ; preds = %for.body7
  %name = getelementptr inbounds %struct.symbol, ptr %sym.0114, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !27
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %for.inc, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false
  %call13 = call i32 @regexec(ptr noundef nonnull %re, ptr noundef nonnull %1, i64 noundef 1, ptr noundef nonnull %match, i32 noundef 0) #27
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %if.end11
  %cmp17.not = icmp slt i32 %cnt.1112, %size.1113
  br i1 %cmp17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end16
  %add = add nsw i32 %size.1113, 16
  %conv = sext i32 %add to i64
  %mul = mul nsw i64 %conv, 24
  %call19 = call ptr @realloc(ptr noundef %sym_match_arr.1111, i64 noundef %mul) #31
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %sym_re_search_free, label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end16
  %sym_match_arr.3 = phi ptr [ %call19, %if.then18 ], [ %sym_match_arr.1111, %if.end16 ]
  %size.2 = phi i32 [ %add, %if.then18 ], [ %size.1113, %if.end16 ]
  call void @sym_calc_value(ptr noundef nonnull %sym.0114)
  %2 = load i32, ptr %match, align 4, !tbaa !45
  %conv25 = sext i32 %2 to i64
  %idxprom26 = sext i32 %cnt.1112 to i64
  %arrayidx27 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.3, i64 %idxprom26
  %so = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.3, i64 %idxprom26, i32 1
  store i64 %conv25, ptr %so, align 8, !tbaa !47
  %3 = load i32, ptr %rm_eo, align 4, !tbaa !50
  %conv29 = sext i32 %3 to i64
  %eo = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.3, i64 %idxprom26, i32 2
  store i64 %conv29, ptr %eo, align 8, !tbaa !51
  %inc = add nsw i32 %cnt.1112, 1
  store ptr %sym.0114, ptr %arrayidx27, align 8, !tbaa !52
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %if.end11, %lor.lhs.false, %for.body7
  %sym_match_arr.4 = phi ptr [ %sym_match_arr.1111, %for.body7 ], [ %sym_match_arr.1111, %if.end11 ], [ %sym_match_arr.3, %if.end23 ], [ %sym_match_arr.1111, %lor.lhs.false ]
  %cnt.2 = phi i32 [ %cnt.1112, %for.body7 ], [ %cnt.1112, %if.end11 ], [ %inc, %if.end23 ], [ %cnt.1112, %lor.lhs.false ]
  %size.3 = phi i32 [ %size.1113, %for.body7 ], [ %size.1113, %if.end11 ], [ %size.2, %if.end23 ], [ %size.1113, %lor.lhs.false ]
  %sym.0 = load ptr, ptr %sym.0114, align 8, !tbaa !16
  %tobool6.not = icmp eq ptr %sym.0, null
  br i1 %tobool6.not, label %for.inc35, label %for.body7

for.inc35:                                        ; preds = %for.inc, %for.body
  %sym_match_arr.1.lcssa = phi ptr [ %sym_match_arr.0117, %for.body ], [ %sym_match_arr.4, %for.inc ]
  %cnt.1.lcssa = phi i32 [ %cnt.0119, %for.body ], [ %cnt.2, %for.inc ]
  %size.1.lcssa = phi i32 [ %size.0120, %for.body ], [ %size.3, %for.inc ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9973
  br i1 %exitcond.not, label %for.end37, label %for.body

for.end37:                                        ; preds = %for.inc35
  %tobool38.not = icmp eq ptr %sym_match_arr.1.lcssa, null
  br i1 %tobool38.not, label %sym_re_search_free, label %if.then39

if.then39:                                        ; preds = %for.end37
  %conv40 = sext i32 %cnt.1.lcssa to i64
  call void @qsort(ptr noundef nonnull %sym_match_arr.1.lcssa, i64 noundef %conv40, i64 noundef 24, ptr noundef nonnull @sym_rel_comp) #27
  %add41 = add nsw i32 %cnt.1.lcssa, 1
  %conv42 = sext i32 %add41 to i64
  %mul43 = shl nsw i64 %conv42, 3
  %call44 = call noalias ptr @malloc(i64 noundef %mul43) #32
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %sym_re_search_free, label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %if.then39
  %cmp49121 = icmp sgt i32 %cnt.1.lcssa, 0
  br i1 %cmp49121, label %for.body51.preheader, label %for.end59

for.body51.preheader:                             ; preds = %for.cond48.preheader
  %wide.trip.count = zext i32 %cnt.1.lcssa to i64
  %min.iters.check = icmp ult i32 %cnt.1.lcssa, 5
  br i1 %min.iters.check, label %for.body51.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body51.preheader
  %4 = shl nuw nsw i64 %wide.trip.count, 3
  %uglygep = getelementptr i8, ptr %call44, i64 %4
  %5 = mul nuw nsw i64 %wide.trip.count, 24
  %6 = add nsw i64 %5, -16
  %uglygep131 = getelementptr i8, ptr %sym_match_arr.1.lcssa, i64 %6
  %bound0 = icmp ult ptr %call44, %uglygep131
  %bound1 = icmp ult ptr %sym_match_arr.1.lcssa, %uglygep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body51.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count, 3
  %7 = icmp eq i64 %n.mod.vf, 0
  %8 = select i1 %7, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %9 = or i64 %index, 1
  %10 = or i64 %index, 2
  %11 = or i64 %index, 3
  %12 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %index
  %13 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %9
  %14 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %10
  %15 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %11
  %16 = load ptr, ptr %12, align 8, !tbaa !52, !alias.scope !53
  %17 = load ptr, ptr %13, align 8, !tbaa !52, !alias.scope !53
  %18 = insertelement <2 x ptr> poison, ptr %16, i64 0
  %19 = insertelement <2 x ptr> %18, ptr %17, i64 1
  %20 = load ptr, ptr %14, align 8, !tbaa !52, !alias.scope !53
  %21 = load ptr, ptr %15, align 8, !tbaa !52, !alias.scope !53
  %22 = insertelement <2 x ptr> poison, ptr %20, i64 0
  %23 = insertelement <2 x ptr> %22, ptr %21, i64 1
  %24 = getelementptr inbounds ptr, ptr %call44, i64 %index
  store <2 x ptr> %19, ptr %24, align 8, !tbaa !16, !alias.scope !56, !noalias !53
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  store <2 x ptr> %23, ptr %25, align 8, !tbaa !16, !alias.scope !56, !noalias !53
  %index.next = add nuw i64 %index, 4
  %26 = icmp eq i64 %index.next, %n.vec
  br i1 %26, label %for.body51.preheader132, label %vector.body, !llvm.loop !58

for.body51.preheader132:                          ; preds = %vector.body, %vector.memcheck, %for.body51.preheader
  %indvars.iv125.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body51.preheader ], [ %n.vec, %vector.body ]
  %27 = sub nsw i64 %wide.trip.count, %indvars.iv125.ph
  %28 = xor i64 %indvars.iv125.ph, -1
  %29 = add nsw i64 %28, %wide.trip.count
  %xtraiter = and i64 %27, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body51.prol.loopexit, label %for.body51.prol

for.body51.prol:                                  ; preds = %for.body51.prol, %for.body51.preheader132
  %indvars.iv125.prol = phi i64 [ %indvars.iv.next126.prol, %for.body51.prol ], [ %indvars.iv125.ph, %for.body51.preheader132 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body51.prol ], [ 0, %for.body51.preheader132 ]
  %arrayidx53.prol = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %indvars.iv125.prol
  %30 = load ptr, ptr %arrayidx53.prol, align 8, !tbaa !52
  %arrayidx56.prol = getelementptr inbounds ptr, ptr %call44, i64 %indvars.iv125.prol
  store ptr %30, ptr %arrayidx56.prol, align 8, !tbaa !16
  %indvars.iv.next126.prol = add nuw nsw i64 %indvars.iv125.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body51.prol.loopexit, label %for.body51.prol, !llvm.loop !60

for.body51.prol.loopexit:                         ; preds = %for.body51.prol, %for.body51.preheader132
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %for.body51.preheader132 ], [ %indvars.iv.next126.prol, %for.body51.prol ]
  %31 = icmp ult i64 %29, 3
  br i1 %31, label %for.end59, label %for.body51

for.body51:                                       ; preds = %for.body51, %for.body51.prol.loopexit
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.3, %for.body51 ], [ %indvars.iv125.unr, %for.body51.prol.loopexit ]
  %arrayidx53 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %indvars.iv125
  %32 = load ptr, ptr %arrayidx53, align 8, !tbaa !52
  %arrayidx56 = getelementptr inbounds ptr, ptr %call44, i64 %indvars.iv125
  store ptr %32, ptr %arrayidx56, align 8, !tbaa !16
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %arrayidx53.1 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %indvars.iv.next126
  %33 = load ptr, ptr %arrayidx53.1, align 8, !tbaa !52
  %arrayidx56.1 = getelementptr inbounds ptr, ptr %call44, i64 %indvars.iv.next126
  store ptr %33, ptr %arrayidx56.1, align 8, !tbaa !16
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2
  %arrayidx53.2 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %indvars.iv.next126.1
  %34 = load ptr, ptr %arrayidx53.2, align 8, !tbaa !52
  %arrayidx56.2 = getelementptr inbounds ptr, ptr %call44, i64 %indvars.iv.next126.1
  store ptr %34, ptr %arrayidx56.2, align 8, !tbaa !16
  %indvars.iv.next126.2 = add nuw nsw i64 %indvars.iv125, 3
  %arrayidx53.3 = getelementptr inbounds %struct.sym_match, ptr %sym_match_arr.1.lcssa, i64 %indvars.iv.next126.2
  %35 = load ptr, ptr %arrayidx53.3, align 8, !tbaa !52
  %arrayidx56.3 = getelementptr inbounds ptr, ptr %call44, i64 %indvars.iv.next126.2
  store ptr %35, ptr %arrayidx56.3, align 8, !tbaa !16
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4
  %exitcond128.not.3 = icmp eq i64 %indvars.iv.next126.3, %wide.trip.count
  br i1 %exitcond128.not.3, label %for.end59, label %for.body51, !llvm.loop !62

for.end59:                                        ; preds = %for.body51, %for.body51.prol.loopexit, %for.cond48.preheader
  %arrayidx61 = getelementptr inbounds ptr, ptr %call44, i64 %conv40
  store ptr null, ptr %arrayidx61, align 8, !tbaa !16
  br label %sym_re_search_free

sym_re_search_free:                               ; preds = %for.end59, %if.then39, %for.end37, %if.then18
  %sym_arr.0 = phi ptr [ %call44, %for.end59 ], [ null, %if.then39 ], [ null, %for.end37 ], [ null, %if.then18 ]
  %sym_match_arr.5 = phi ptr [ %sym_match_arr.1.lcssa, %for.end59 ], [ %sym_match_arr.1.lcssa, %if.then39 ], [ null, %for.end37 ], [ %sym_match_arr.1111, %if.then18 ]
  call void @free(ptr noundef %sym_match_arr.5) #27
  call void @regfree(ptr noundef nonnull %re) #27
  br label %cleanup63

cleanup63:                                        ; preds = %sym_re_search_free, %if.end, %entry
  %retval.0 = phi ptr [ %sym_arr.0, %sym_re_search_free ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %re) #27
  ret ptr %retval.0
}

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @sym_rel_comp(ptr nocapture noundef readonly %sym1, ptr nocapture noundef readonly %sym2) #18 {
entry:
  %eo = getelementptr inbounds %struct.sym_match, ptr %sym1, i64 0, i32 2
  %0 = load i64, ptr %eo, align 8, !tbaa !51
  %so = getelementptr inbounds %struct.sym_match, ptr %sym1, i64 0, i32 1
  %1 = load i64, ptr %so, align 8, !tbaa !47
  %sub = sub nsw i64 %0, %1
  %2 = load ptr, ptr %sym1, align 8, !tbaa !52
  %name = getelementptr inbounds %struct.symbol, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %name, align 8, !tbaa !27
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #30
  %cmp = icmp ne i64 %sub, %call
  %eo1 = getelementptr inbounds %struct.sym_match, ptr %sym2, i64 0, i32 2
  %4 = load i64, ptr %eo1, align 8, !tbaa !51
  %so2 = getelementptr inbounds %struct.sym_match, ptr %sym2, i64 0, i32 1
  %5 = load i64, ptr %so2, align 8, !tbaa !47
  %sub3 = sub nsw i64 %4, %5
  %6 = load ptr, ptr %sym2, align 8, !tbaa !52
  %name5 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %name5, align 8, !tbaa !27
  %call6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #30
  %cmp7 = icmp eq i64 %sub3, %call6
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %or.cond23 = select i1 %cmp, i1 %cmp7, i1 false
  br i1 %or.cond23, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end
  %call19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %7) #30
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end, %entry
  %retval.0 = phi i32 [ %call19, %if.end14 ], [ -1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

declare void @regfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @sym_check_deps(ptr noundef %sym) local_unnamed_addr #20 {
entry:
  %stack.i = alloca %struct.dep_stack, align 8
  %cv_stack.i = alloca %struct.dep_stack, align 8
  %stack = alloca %struct.dep_stack, align 8
  %flags = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %0 = load i32, ptr %flags, align 4, !tbaa !13
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cv_stack.i) #27
  %and.i.i = and i32 %0, 32
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %1 = getelementptr inbounds i8, ptr %cv_stack.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 32, i1 false) #27
  %2 = load ptr, ptr @check_top, align 8, !tbaa !16
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %dep_stack_insert.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %next.i.i = getelementptr inbounds %struct.dep_stack, ptr %2, i64 0, i32 1
  store ptr %cv_stack.i, ptr %next.i.i, align 8, !tbaa !63
  br label %dep_stack_insert.exit.i

dep_stack_insert.exit.i:                          ; preds = %if.then.i.i, %if.then.i
  store ptr %2, ptr %cv_stack.i, align 8, !tbaa !65
  %sym1.i.i = getelementptr inbounds %struct.dep_stack, ptr %cv_stack.i, i64 0, i32 2
  store ptr %sym, ptr %sym1.i.i, align 8, !tbaa !66
  store ptr %cv_stack.i, ptr @check_top, align 8, !tbaa !16
  %prop1.i.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %dep_stack_insert.exit.i
  %prop.0.in.i.i = phi ptr [ %prop1.i.i, %dep_stack_insert.exit.i ], [ %prop.0.i.i, %for.body.i.i ]
  %prop.0.i.i = load ptr, ptr %prop.0.in.i.i, align 8, !tbaa !16
  %tobool.not.i312.i = icmp eq ptr %prop.0.i.i, null
  br i1 %tobool.not.i312.i, label %sym_get_choice_prop.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %type.i.i = getelementptr inbounds %struct.property, ptr %prop.0.i.i, i64 0, i32 1
  %3 = load i32, ptr %type.i.i, align 8, !tbaa !17
  %cmp.i.i = icmp eq i32 %3, 5
  br i1 %cmp.i.i, label %sym_get_choice_prop.exit.i, label %for.cond.i.i

sym_get_choice_prop.exit.i:                       ; preds = %for.body.i.i, %for.cond.i.i
  %expr.i.i = getelementptr inbounds %struct.property, ptr %prop.0.i.i, i64 0, i32 4
  %4 = load ptr, ptr %expr.i.i, align 8, !tbaa !21
  %tobool.not.i313.i = icmp eq ptr %4, null
  br i1 %tobool.not.i313.i, label %if.end.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %sym_get_choice_prop.exit.i
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = and i32 %5, -2
  %switch.i.i = icmp eq i32 %6, 10
  br i1 %switch.i.i, label %if.then.i314.i, label %if.end.i

if.then.i314.i:                                   ; preds = %land.lhs.true.i.i
  %left.i.i = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %left.i.i, align 8, !tbaa !15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i314.i, %land.lhs.true.i.i, %sym_get_choice_prop.exit.i, %if.then
  %last_sym.addr.0.i = phi ptr [ %sym, %if.then ], [ %7, %if.then.i314.i ], [ null, %land.lhs.true.i.i ], [ null, %sym_get_choice_prop.exit.i ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.end.i
  %stack.0.in.i = phi ptr [ @check_top, %if.end.i ], [ %stack.0.i, %for.body.i ]
  %stack.0.i = load ptr, ptr %stack.0.in.i, align 8, !tbaa !16
  %cmp.not.i = icmp eq ptr %stack.0.i, null
  br i1 %cmp.not.i, label %if.then7.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %sym3.i = getelementptr inbounds %struct.dep_stack, ptr %stack.0.i, i64 0, i32 2
  %8 = load ptr, ptr %sym3.i, align 8, !tbaa !66
  %cmp4.i = icmp eq ptr %8, %last_sym.addr.0.i
  br i1 %cmp4.i, label %for.body12.i, label %for.cond.i

if.then7.critedge.i:                              ; preds = %for.cond.i
  %9 = load ptr, ptr @stderr, align 8, !tbaa !16
  %10 = call i64 @fwrite(ptr nonnull @.str.27, i64 38, i64 1, ptr %9) #28
  br label %sym_check_print_recursive.exit

for.body12.i:                                     ; preds = %for.inc202.for.body12_crit_edge.i, %for.body.i
  %11 = phi ptr [ %.pre.i, %for.inc202.for.body12_crit_edge.i ], [ %last_sym.addr.0.i, %for.body.i ]
  %menu.0350.i = phi ptr [ %menu.2.i, %for.inc202.for.body12_crit_edge.i ], [ null, %for.body.i ]
  %stack.1349.i = phi ptr [ %66, %for.inc202.for.body12_crit_edge.i ], [ %stack.0.i, %for.body.i ]
  %next.i = getelementptr inbounds %struct.dep_stack, ptr %stack.1349.i, i64 0, i32 1
  %12 = load ptr, ptr %next.i, align 8, !tbaa !63
  %tobool14.not.i = icmp eq ptr %12, null
  br i1 %tobool14.not.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.body12.i
  %sym16.i = getelementptr inbounds %struct.dep_stack, ptr %12, i64 0, i32 2
  %13 = load ptr, ptr %sym16.i, align 8, !tbaa !66
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body12.i
  %cond.i = phi ptr [ %13, %cond.true.i ], [ %last_sym.addr.0.i, %for.body12.i ]
  %prop17.i = getelementptr inbounds %struct.dep_stack, ptr %stack.1349.i, i64 0, i32 3
  %14 = load ptr, ptr %prop17.i, align 8, !tbaa !67
  %cmp18.i = icmp eq ptr %14, null
  br i1 %cmp18.i, label %if.then19.i, label %if.end22.i

if.then19.i:                                      ; preds = %cond.end.i
  %prop21.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 7
  %15 = load ptr, ptr %prop21.i, align 8, !tbaa !68
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %cond.end.i
  %prop.0.i = phi ptr [ %15, %if.then19.i ], [ %14, %cond.end.i ]
  %flags.i315.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 6
  %16 = load i32, ptr %flags.i315.i, align 4, !tbaa !13
  %17 = and i32 %16, 48
  %.not.i = icmp eq i32 %17, 0
  br i1 %.not.i, label %if.end38.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end22.i
  %prop26.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 7
  %prop.1343.i = load ptr, ptr %prop26.i, align 8, !tbaa !16
  %tobool28.not344.i = icmp eq ptr %prop.1343.i, null
  br i1 %tobool28.not344.i, label %if.end38.i, label %for.body29.i

for.cond27.i:                                     ; preds = %for.body29.i
  %prop.1.i = load ptr, ptr %prop.1345.i, align 8, !tbaa !16
  %tobool28.not.i = icmp eq ptr %prop.1.i, null
  br i1 %tobool28.not.i, label %if.end38.i, label %for.body29.i

for.body29.i:                                     ; preds = %for.cond27.i, %if.then25.i
  %prop.1345.i = phi ptr [ %prop.1.i, %for.cond27.i ], [ %prop.1343.i, %if.then25.i ]
  %menu30.i = getelementptr inbounds %struct.property, ptr %prop.1345.i, i64 0, i32 5
  %18 = load ptr, ptr %menu30.i, align 8, !tbaa !37
  %tobool32.not.i = icmp eq ptr %18, null
  br i1 %tobool32.not.i, label %for.cond27.i, label %if.end38.i

if.end38.i:                                       ; preds = %for.body29.i, %for.cond27.i, %if.then25.i, %if.end22.i
  %menu.2.i = phi ptr [ %menu.0350.i, %if.end22.i ], [ %menu.0350.i, %if.then25.i ], [ %18, %for.body29.i ], [ null, %for.cond27.i ]
  %prop.2.i = phi ptr [ %prop.0.i, %if.end22.i ], [ null, %if.then25.i ], [ %prop.1345.i, %for.body29.i ], [ null, %for.cond27.i ]
  %cmp40.i = icmp eq ptr %11, %last_sym.addr.0.i
  br i1 %cmp40.i, label %if.then41.i, label %if.end43.i

if.then41.i:                                      ; preds = %if.end38.i
  %19 = load ptr, ptr @stderr, align 8, !tbaa !16
  %file.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 6
  %20 = load ptr, ptr %file.i, align 8, !tbaa !69
  %name.i = getelementptr inbounds %struct.file, ptr %20, i64 0, i32 2
  %21 = load ptr, ptr %name.i, align 8, !tbaa !70
  %lineno.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 7
  %22 = load i32, ptr %lineno.i, align 8, !tbaa !72
  %call42.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.28, ptr noundef %21, i32 noundef %22) #28
  %.pre352.i = load i32, ptr %flags.i315.i, align 4, !tbaa !13
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.end38.i
  %23 = phi i32 [ %.pre352.i, %if.then41.i ], [ %16, %if.end38.i ]
  %and.i322.i = and i32 %23, 16
  %tobool.i323.not.i = icmp eq i32 %and.i322.i, 0
  br i1 %tobool.i323.not.i, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end43.i
  %24 = load ptr, ptr @stderr, align 8, !tbaa !16
  %file46.i = getelementptr inbounds %struct.menu, ptr %menu.2.i, i64 0, i32 9
  %25 = load ptr, ptr %file46.i, align 8, !tbaa !73
  %name47.i = getelementptr inbounds %struct.file, ptr %25, i64 0, i32 2
  %26 = load ptr, ptr %name47.i, align 8, !tbaa !70
  %lineno48.i = getelementptr inbounds %struct.menu, ptr %menu.2.i, i64 0, i32 10
  %27 = load i32, ptr %lineno48.i, align 8, !tbaa !74
  %name49.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 1
  %28 = load ptr, ptr %name49.i, align 8, !tbaa !27
  %tobool50.not.i = icmp eq ptr %28, null
  %spec.select.i = select i1 %tobool50.not.i, ptr @.str.30, ptr %28
  %name56.i = getelementptr inbounds %struct.symbol, ptr %cond.i, i64 0, i32 1
  %29 = load ptr, ptr %name56.i, align 8, !tbaa !27
  %tobool57.not.i = icmp eq ptr %29, null
  %cond62.i = select i1 %tobool57.not.i, ptr @.str.30, ptr %29
  %call63.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef %26, i32 noundef %27, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %cond62.i) #28
  br label %for.inc202.i

if.else.i:                                        ; preds = %if.end43.i
  %and.i325.i = and i32 %23, 32
  %tobool.i326.not.i = icmp eq i32 %and.i325.i, 0
  br i1 %tobool.i326.not.i, label %if.else84.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.else.i
  %30 = load ptr, ptr @stderr, align 8, !tbaa !16
  %file66.i = getelementptr inbounds %struct.menu, ptr %menu.2.i, i64 0, i32 9
  %31 = load ptr, ptr %file66.i, align 8, !tbaa !73
  %name67.i = getelementptr inbounds %struct.file, ptr %31, i64 0, i32 2
  %32 = load ptr, ptr %name67.i, align 8, !tbaa !70
  %lineno68.i = getelementptr inbounds %struct.menu, ptr %menu.2.i, i64 0, i32 10
  %33 = load i32, ptr %lineno68.i, align 8, !tbaa !74
  %name69.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 1
  %34 = load ptr, ptr %name69.i, align 8, !tbaa !27
  %tobool70.not.i = icmp eq ptr %34, null
  %spec.select306.i = select i1 %tobool70.not.i, ptr @.str.30, ptr %34
  %name76.i = getelementptr inbounds %struct.symbol, ptr %cond.i, i64 0, i32 1
  %35 = load ptr, ptr %name76.i, align 8, !tbaa !27
  %tobool77.not.i = icmp eq ptr %35, null
  %cond82.i = select i1 %tobool77.not.i, ptr @.str.30, ptr %35
  %call83.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.31, ptr noundef %32, i32 noundef %33, ptr noundef nonnull %spec.select306.i, ptr noundef nonnull %cond82.i) #28
  br label %for.inc202.i

if.else84.i:                                      ; preds = %if.else.i
  %expr.i = getelementptr inbounds %struct.dep_stack, ptr %stack.1349.i, i64 0, i32 4
  %36 = load ptr, ptr %expr.i, align 8, !tbaa !75
  %dir_dep.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 8
  %cmp86.i = icmp eq ptr %36, %dir_dep.i
  br i1 %cmp86.i, label %if.then87.i, label %if.else106.i

if.then87.i:                                      ; preds = %if.else84.i
  %37 = load ptr, ptr @stderr, align 8, !tbaa !16
  %file88.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 6
  %38 = load ptr, ptr %file88.i, align 8, !tbaa !69
  %name89.i = getelementptr inbounds %struct.file, ptr %38, i64 0, i32 2
  %39 = load ptr, ptr %name89.i, align 8, !tbaa !70
  %lineno90.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 7
  %40 = load i32, ptr %lineno90.i, align 8, !tbaa !72
  %name91.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 1
  %41 = load ptr, ptr %name91.i, align 8, !tbaa !27
  %tobool92.not.i = icmp eq ptr %41, null
  %spec.select307.i = select i1 %tobool92.not.i, ptr @.str.30, ptr %41
  %name98.i = getelementptr inbounds %struct.symbol, ptr %cond.i, i64 0, i32 1
  %42 = load ptr, ptr %name98.i, align 8, !tbaa !27
  %tobool99.not.i = icmp eq ptr %42, null
  %cond104.i = select i1 %tobool99.not.i, ptr @.str.30, ptr %42
  %call105.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.32, ptr noundef %39, i32 noundef %40, ptr noundef nonnull %spec.select307.i, ptr noundef nonnull %cond104.i) #28
  br label %for.inc202.i

if.else106.i:                                     ; preds = %if.else84.i
  %rev_dep.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 9
  %cmp109.i = icmp eq ptr %36, %rev_dep.i
  br i1 %cmp109.i, label %if.then110.i, label %if.else129.i

if.then110.i:                                     ; preds = %if.else106.i
  %43 = load ptr, ptr @stderr, align 8, !tbaa !16
  %file111.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 6
  %44 = load ptr, ptr %file111.i, align 8, !tbaa !69
  %name112.i = getelementptr inbounds %struct.file, ptr %44, i64 0, i32 2
  %45 = load ptr, ptr %name112.i, align 8, !tbaa !70
  %lineno113.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 7
  %46 = load i32, ptr %lineno113.i, align 8, !tbaa !72
  %name114.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 1
  %47 = load ptr, ptr %name114.i, align 8, !tbaa !27
  %tobool115.not.i = icmp eq ptr %47, null
  %spec.select308.i = select i1 %tobool115.not.i, ptr @.str.30, ptr %47
  %name121.i = getelementptr inbounds %struct.symbol, ptr %cond.i, i64 0, i32 1
  %48 = load ptr, ptr %name121.i, align 8, !tbaa !27
  %tobool122.not.i = icmp eq ptr %48, null
  %cond127.i = select i1 %tobool122.not.i, ptr @.str.30, ptr %48
  %call128.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.33, ptr noundef %45, i32 noundef %46, ptr noundef nonnull %spec.select308.i, ptr noundef nonnull %cond127.i) #28
  br label %for.inc202.i

if.else129.i:                                     ; preds = %if.else106.i
  %implied.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 10
  %cmp132.i = icmp eq ptr %36, %implied.i
  br i1 %cmp132.i, label %if.then133.i, label %if.else152.i

if.then133.i:                                     ; preds = %if.else129.i
  %49 = load ptr, ptr @stderr, align 8, !tbaa !16
  %file134.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 6
  %50 = load ptr, ptr %file134.i, align 8, !tbaa !69
  %name135.i = getelementptr inbounds %struct.file, ptr %50, i64 0, i32 2
  %51 = load ptr, ptr %name135.i, align 8, !tbaa !70
  %lineno136.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 7
  %52 = load i32, ptr %lineno136.i, align 8, !tbaa !72
  %name137.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 1
  %53 = load ptr, ptr %name137.i, align 8, !tbaa !27
  %tobool138.not.i = icmp eq ptr %53, null
  %spec.select309.i = select i1 %tobool138.not.i, ptr @.str.30, ptr %53
  %name144.i = getelementptr inbounds %struct.symbol, ptr %cond.i, i64 0, i32 1
  %54 = load ptr, ptr %name144.i, align 8, !tbaa !27
  %tobool145.not.i = icmp eq ptr %54, null
  %cond150.i = select i1 %tobool145.not.i, ptr @.str.30, ptr %54
  %call151.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.34, ptr noundef %51, i32 noundef %52, ptr noundef nonnull %spec.select309.i, ptr noundef nonnull %cond150.i) #28
  br label %for.inc202.i

if.else152.i:                                     ; preds = %if.else129.i
  %tobool154.not.i = icmp eq ptr %36, null
  %55 = load ptr, ptr @stderr, align 8, !tbaa !16
  %file176.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 6
  %56 = load ptr, ptr %file176.i, align 8, !tbaa !69
  %name177.i = getelementptr inbounds %struct.file, ptr %56, i64 0, i32 2
  %57 = load ptr, ptr %name177.i, align 8, !tbaa !70
  %lineno178.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 7
  %58 = load i32, ptr %lineno178.i, align 8, !tbaa !72
  %name179.i = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 1
  %59 = load ptr, ptr %name179.i, align 8, !tbaa !27
  %tobool180.not.i = icmp eq ptr %59, null
  %spec.select311.i = select i1 %tobool180.not.i, ptr @.str.30, ptr %59
  %type186.i = getelementptr inbounds %struct.property, ptr %prop.2.i, i64 0, i32 1
  %60 = load i32, ptr %type186.i, align 8, !tbaa !17
  %switch.tableidx125 = add i32 %60, -1
  %61 = icmp ult i32 %switch.tableidx125, 9
  br i1 %tobool154.not.i, label %if.else175.i, label %if.then155.i

if.then155.i:                                     ; preds = %if.else152.i
  br i1 %61, label %switch.lookup, label %prop_get_type_name.exit.i

switch.lookup:                                    ; preds = %if.then155.i
  %62 = sext i32 %switch.tableidx125 to i64
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.prop_get_type_name, i64 0, i64 %62
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %prop_get_type_name.exit.i

prop_get_type_name.exit.i:                        ; preds = %switch.lookup, %if.then155.i
  %retval.0.i327.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.8, %if.then155.i ]
  %name167.i = getelementptr inbounds %struct.symbol, ptr %cond.i, i64 0, i32 1
  %63 = load ptr, ptr %name167.i, align 8, !tbaa !27
  %tobool168.not.i = icmp eq ptr %63, null
  %cond173.i = select i1 %tobool168.not.i, ptr @.str.30, ptr %63
  %call174.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.35, ptr noundef %57, i32 noundef %58, ptr noundef nonnull %spec.select311.i, ptr noundef nonnull %retval.0.i327.i, ptr noundef nonnull %cond173.i) #28
  br label %for.inc202.i

if.else175.i:                                     ; preds = %if.else152.i
  br i1 %61, label %switch.lookup124, label %prop_get_type_name.exit338.i

switch.lookup124:                                 ; preds = %if.else175.i
  %64 = sext i32 %switch.tableidx125 to i64
  %switch.gep126 = getelementptr inbounds [9 x ptr], ptr @switch.table.prop_get_type_name, i64 0, i64 %64
  %switch.load127 = load ptr, ptr %switch.gep126, align 8
  br label %prop_get_type_name.exit338.i

prop_get_type_name.exit338.i:                     ; preds = %switch.lookup124, %if.else175.i
  %retval.0.i337.i = phi ptr [ %switch.load127, %switch.lookup124 ], [ @.str.8, %if.else175.i ]
  %name188.i = getelementptr inbounds %struct.symbol, ptr %cond.i, i64 0, i32 1
  %65 = load ptr, ptr %name188.i, align 8, !tbaa !27
  %tobool189.not.i = icmp eq ptr %65, null
  %cond194.i = select i1 %tobool189.not.i, ptr @.str.30, ptr %65
  %call195.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.36, ptr noundef %57, i32 noundef %58, ptr noundef nonnull %spec.select311.i, ptr noundef nonnull %retval.0.i337.i, ptr noundef nonnull %cond194.i) #28
  br label %for.inc202.i

for.inc202.i:                                     ; preds = %prop_get_type_name.exit338.i, %prop_get_type_name.exit.i, %if.then133.i, %if.then110.i, %if.then87.i, %if.then65.i, %if.then45.i
  %66 = load ptr, ptr %next.i, align 8, !tbaa !63
  %tobool11.not.i = icmp eq ptr %66, null
  br i1 %tobool11.not.i, label %for.end204.i, label %for.inc202.for.body12_crit_edge.i

for.inc202.for.body12_crit_edge.i:                ; preds = %for.inc202.i
  %sym13.phi.trans.insert.i = getelementptr inbounds %struct.dep_stack, ptr %66, i64 0, i32 2
  %.pre.i = load ptr, ptr %sym13.phi.trans.insert.i, align 8, !tbaa !66
  br label %for.body12.i

for.end204.i:                                     ; preds = %for.inc202.i
  %67 = load ptr, ptr @stderr, align 8, !tbaa !16
  %68 = call i64 @fwrite(ptr nonnull @.str.37, i64 123, i64 1, ptr %67) #28
  %69 = load ptr, ptr @check_top, align 8, !tbaa !16
  %cmp206.i = icmp eq ptr %69, %cv_stack.i
  br i1 %cmp206.i, label %if.then207.i, label %sym_check_print_recursive.exit

if.then207.i:                                     ; preds = %for.end204.i
  %70 = load ptr, ptr %cv_stack.i, align 8, !tbaa !65
  store ptr %70, ptr @check_top, align 8, !tbaa !16
  %tobool.not.i339.i = icmp eq ptr %70, null
  br i1 %tobool.not.i339.i, label %sym_check_print_recursive.exit, label %if.then.i341.i

if.then.i341.i:                                   ; preds = %if.then207.i
  %next.i340.i = getelementptr inbounds %struct.dep_stack, ptr %70, i64 0, i32 1
  store ptr null, ptr %next.i340.i, align 8, !tbaa !63
  br label %sym_check_print_recursive.exit

sym_check_print_recursive.exit:                   ; preds = %if.then.i341.i, %if.then207.i, %for.end204.i, %if.then7.critedge.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cv_stack.i) #27
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %0, 8192
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %and.i = and i32 %0, 32
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stack) #27
  %71 = getelementptr inbounds i8, ptr %stack, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %71, i8 0, i64 32, i1 false) #27
  %72 = load ptr, ptr @check_top, align 8, !tbaa !16
  %tobool.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i, label %dep_stack_insert.exit, label %if.then.i33

if.then.i33:                                      ; preds = %if.then6
  %next.i32 = getelementptr inbounds %struct.dep_stack, ptr %72, i64 0, i32 1
  store ptr %stack, ptr %next.i32, align 8, !tbaa !63
  br label %dep_stack_insert.exit

dep_stack_insert.exit:                            ; preds = %if.then.i33, %if.then6
  store ptr %72, ptr %stack, align 8, !tbaa !65
  %sym1.i = getelementptr inbounds %struct.dep_stack, ptr %stack, i64 0, i32 2
  store ptr %sym, ptr %sym1.i, align 8, !tbaa !66
  store ptr %stack, ptr @check_top, align 8, !tbaa !16
  %prop1.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i37

for.cond.i37:                                     ; preds = %for.body.i38, %dep_stack_insert.exit
  %prop.0.in.i = phi ptr [ %prop1.i, %dep_stack_insert.exit ], [ %prop.0.i35, %for.body.i38 ]
  %prop.0.i35 = load ptr, ptr %prop.0.in.i, align 8, !tbaa !16
  %tobool.not.i36 = icmp eq ptr %prop.0.i35, null
  br i1 %tobool.not.i36, label %sym_get_choice_prop.exit, label %for.body.i38

for.body.i38:                                     ; preds = %for.cond.i37
  %type.i = getelementptr inbounds %struct.property, ptr %prop.0.i35, i64 0, i32 1
  %73 = load i32, ptr %type.i, align 8, !tbaa !17
  %cmp.i = icmp eq i32 %73, 5
  br i1 %cmp.i, label %sym_get_choice_prop.exit, label %for.cond.i37

sym_get_choice_prop.exit:                         ; preds = %for.body.i38, %for.cond.i37
  %expr.i39 = getelementptr inbounds %struct.property, ptr %prop.0.i35, i64 0, i32 4
  %74 = load ptr, ptr %expr.i39, align 8, !tbaa !21
  %tobool.not.i40 = icmp eq ptr %74, null
  br i1 %tobool.not.i40, label %prop_get_symbol.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sym_get_choice_prop.exit
  %75 = load i32, ptr %74, align 8, !tbaa !23
  %76 = and i32 %75, -2
  %switch.i = icmp eq i32 %76, 10
  br i1 %switch.i, label %if.then.i41, label %prop_get_symbol.exit

if.then.i41:                                      ; preds = %land.lhs.true.i
  %left.i = getelementptr inbounds %struct.expr, ptr %74, i64 0, i32 1
  %77 = load ptr, ptr %left.i, align 8, !tbaa !15
  br label %prop_get_symbol.exit

prop_get_symbol.exit:                             ; preds = %if.then.i41, %land.lhs.true.i, %sym_get_choice_prop.exit
  %retval.0.i = phi ptr [ %77, %if.then.i41 ], [ null, %land.lhs.true.i ], [ null, %sym_get_choice_prop.exit ]
  %call9 = call ptr @sym_check_deps(ptr noundef %retval.0.i)
  %78 = load ptr, ptr @check_top, align 8, !tbaa !16
  %79 = load ptr, ptr %78, align 8, !tbaa !65
  store ptr %79, ptr @check_top, align 8, !tbaa !16
  %tobool.not.i42 = icmp eq ptr %79, null
  br i1 %tobool.not.i42, label %dep_stack_remove.exit, label %if.then.i44

if.then.i44:                                      ; preds = %prop_get_symbol.exit
  %next.i43 = getelementptr inbounds %struct.dep_stack, ptr %79, i64 0, i32 1
  store ptr null, ptr %next.i43, align 8, !tbaa !63
  br label %dep_stack_remove.exit

dep_stack_remove.exit:                            ; preds = %if.then.i44, %prop_get_symbol.exit
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stack) #27
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %and.i47 = and i32 %0, 16
  %tobool.i48.not = icmp eq i32 %and.i47, 0
  br i1 %tobool.i48.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stack.i) #27
  %80 = getelementptr inbounds i8, ptr %stack.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %80, i8 0, i64 32, i1 false) #27
  %81 = load ptr, ptr @check_top, align 8, !tbaa !16
  %tobool.not.i94 = icmp eq ptr %81, null
  br i1 %tobool.not.i94, label %dep_stack_insert.exit99, label %if.then.i96

if.then.i96:                                      ; preds = %if.then11
  %next.i95 = getelementptr inbounds %struct.dep_stack, ptr %81, i64 0, i32 1
  store ptr %stack.i, ptr %next.i95, align 8, !tbaa !63
  br label %dep_stack_insert.exit99

dep_stack_insert.exit99:                          ; preds = %if.then.i96, %if.then11
  store ptr %81, ptr %stack.i, align 8, !tbaa !65
  %sym1.i97 = getelementptr inbounds %struct.dep_stack, ptr %stack.i, i64 0, i32 2
  store ptr %sym, ptr %sym1.i97, align 8, !tbaa !66
  store ptr %stack.i, ptr @check_top, align 8, !tbaa !16
  %prop1.i85 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  br label %for.cond.i89

for.cond.i89:                                     ; preds = %for.body.i92, %dep_stack_insert.exit99
  %prop.0.in.i86 = phi ptr [ %prop1.i85, %dep_stack_insert.exit99 ], [ %prop.0.i87, %for.body.i92 ]
  %prop.0.i87 = load ptr, ptr %prop.0.in.i86, align 8, !tbaa !16
  %tobool.not.i88 = icmp eq ptr %prop.0.i87, null
  br i1 %tobool.not.i88, label %sym_get_choice_prop.exit93, label %for.body.i92

for.body.i92:                                     ; preds = %for.cond.i89
  %type.i90 = getelementptr inbounds %struct.property, ptr %prop.0.i87, i64 0, i32 1
  %82 = load i32, ptr %type.i90, align 8, !tbaa !17
  %cmp.i91 = icmp eq i32 %82, 5
  br i1 %cmp.i91, label %sym_get_choice_prop.exit93, label %for.cond.i89

sym_get_choice_prop.exit93:                       ; preds = %for.body.i92, %for.cond.i89
  %expr.i49 = getelementptr inbounds %struct.property, ptr %prop.0.i87, i64 0, i32 4
  %e.0.i101 = load ptr, ptr %expr.i49, align 8, !tbaa !15
  %tobool.not.i50102 = icmp eq ptr %e.0.i101, null
  br i1 %tobool.not.i50102, label %for.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i54, %sym_get_choice_prop.exit93
  %e.0.i103 = phi ptr [ %e.0.i, %for.body.i54 ], [ %e.0.i101, %sym_get_choice_prop.exit93 ]
  %right.i = getelementptr inbounds %struct.expr, ptr %e.0.i103, i64 0, i32 2
  %83 = load ptr, ptr %right.i, align 8, !tbaa !15
  %tobool1.not.i = icmp eq ptr %83, null
  br i1 %tobool1.not.i, label %for.end.i.loopexit, label %for.body.i54

for.body.i54:                                     ; preds = %land.rhs.i
  %flags.i52 = getelementptr inbounds %struct.symbol, ptr %83, i64 0, i32 6
  %84 = load i32, ptr %flags.i52, align 4, !tbaa !13
  %or.i = or i32 %84, 8200
  store i32 %or.i, ptr %flags.i52, align 4, !tbaa !13
  %left.i53 = getelementptr inbounds %struct.expr, ptr %e.0.i103, i64 0, i32 1
  %e.0.i = load ptr, ptr %left.i53, align 8, !tbaa !15
  %tobool.not.i50 = icmp eq ptr %e.0.i, null
  br i1 %tobool.not.i50, label %for.end.i.loopexit, label %land.rhs.i

for.end.i.loopexit:                               ; preds = %for.body.i54, %land.rhs.i
  %.pre = load i32, ptr %flags, align 4, !tbaa !13
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %sym_get_choice_prop.exit93
  %85 = phi i32 [ %.pre, %for.end.i.loopexit ], [ %0, %sym_get_choice_prop.exit93 ]
  %or3.i = or i32 %85, 8200
  store i32 %or3.i, ptr %flags, align 4, !tbaa !13
  %call4.i = call fastcc ptr @sym_check_sym_deps(ptr noundef %sym) #27
  %86 = load i32, ptr %flags, align 4, !tbaa !13
  %and.i55 = and i32 %86, -9
  store i32 %and.i55, ptr %flags, align 4, !tbaa !13
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %for.cond8.i.preheader, label %out.i

for.cond8.i.preheader:                            ; preds = %for.end.i
  %e.1.i104 = load ptr, ptr %expr.i49, align 8, !tbaa !15
  %tobool9.not.i105 = icmp eq ptr %e.1.i104, null
  br i1 %tobool9.not.i105, label %sym_check_choice_deps.exit, label %land.rhs10.i

for.cond8.i:                                      ; preds = %for.body14.i
  %left20.i = getelementptr inbounds %struct.expr, ptr %e.1.i106, i64 0, i32 1
  %e.1.i = load ptr, ptr %left20.i, align 8, !tbaa !15
  %tobool9.not.i = icmp eq ptr %e.1.i, null
  br i1 %tobool9.not.i, label %out.i, label %land.rhs10.i

land.rhs10.i:                                     ; preds = %for.cond8.i, %for.cond8.i.preheader
  %e.1.i106 = phi ptr [ %e.1.i, %for.cond8.i ], [ %e.1.i104, %for.cond8.i.preheader ]
  %right11.i = getelementptr inbounds %struct.expr, ptr %e.1.i106, i64 0, i32 2
  %87 = load ptr, ptr %right11.i, align 8, !tbaa !15
  %tobool12.not.i = icmp eq ptr %87, null
  br i1 %tobool12.not.i, label %out.i, label %for.body14.i

for.body14.i:                                     ; preds = %land.rhs10.i
  %call15.i = call fastcc ptr @sym_check_sym_deps(ptr noundef nonnull %87) #27
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %for.cond8.i, label %out.i

out.i:                                            ; preds = %for.body14.i, %land.rhs10.i, %for.cond8.i, %for.end.i
  %sym2.1.i.ph = phi ptr [ %call4.i, %for.end.i ], [ null, %for.cond8.i ], [ null, %land.rhs10.i ], [ %call15.i, %for.body14.i ]
  %e.2.i109.pr = load ptr, ptr %expr.i49, align 8, !tbaa !15
  %tobool24.not.i110 = icmp eq ptr %e.2.i109.pr, null
  br i1 %tobool24.not.i110, label %for.end34.i, label %land.rhs25.i

land.rhs25.i:                                     ; preds = %for.body29.i56, %out.i
  %e.2.i111 = phi ptr [ %e.2.i, %for.body29.i56 ], [ %e.2.i109.pr, %out.i ]
  %right26.i = getelementptr inbounds %struct.expr, ptr %e.2.i111, i64 0, i32 2
  %88 = load ptr, ptr %right26.i, align 8, !tbaa !15
  %tobool27.not.i = icmp eq ptr %88, null
  br i1 %tobool27.not.i, label %for.end34.i, label %for.body29.i56

for.body29.i56:                                   ; preds = %land.rhs25.i
  %flags30.i = getelementptr inbounds %struct.symbol, ptr %88, i64 0, i32 6
  %89 = load i32, ptr %flags30.i, align 4, !tbaa !13
  %and31.i = and i32 %89, -9
  store i32 %and31.i, ptr %flags30.i, align 4, !tbaa !13
  %left33.i = getelementptr inbounds %struct.expr, ptr %e.2.i111, i64 0, i32 1
  %e.2.i = load ptr, ptr %left33.i, align 8, !tbaa !15
  %tobool24.not.i = icmp eq ptr %e.2.i, null
  br i1 %tobool24.not.i, label %for.end34.i, label %land.rhs25.i

for.end34.i:                                      ; preds = %for.body29.i56, %land.rhs25.i, %out.i
  %tobool35.not.i = icmp eq ptr %sym2.1.i.ph, null
  br i1 %tobool35.not.i, label %sym_check_choice_deps.exit, label %land.lhs.true.i57

land.lhs.true.i57:                                ; preds = %for.end34.i
  %flags.i82 = getelementptr inbounds %struct.symbol, ptr %sym2.1.i.ph, i64 0, i32 6
  %90 = load i32, ptr %flags.i82, align 4, !tbaa !13
  %and.i83 = and i32 %90, 32
  %tobool.i84.not = icmp eq i32 %and.i83, 0
  br i1 %tobool.i84.not, label %sym_check_choice_deps.exit, label %land.lhs.true37.i

land.lhs.true37.i:                                ; preds = %land.lhs.true.i57
  %prop1.i73 = getelementptr inbounds %struct.symbol, ptr %sym2.1.i.ph, i64 0, i32 7
  br label %for.cond.i77

for.cond.i77:                                     ; preds = %for.body.i80, %land.lhs.true37.i
  %prop.0.in.i74 = phi ptr [ %prop1.i73, %land.lhs.true37.i ], [ %prop.0.i75, %for.body.i80 ]
  %prop.0.i75 = load ptr, ptr %prop.0.in.i74, align 8, !tbaa !16
  %tobool.not.i76 = icmp eq ptr %prop.0.i75, null
  br i1 %tobool.not.i76, label %sym_get_choice_prop.exit81, label %for.body.i80

for.body.i80:                                     ; preds = %for.cond.i77
  %type.i78 = getelementptr inbounds %struct.property, ptr %prop.0.i75, i64 0, i32 1
  %91 = load i32, ptr %type.i78, align 8, !tbaa !17
  %cmp.i79 = icmp eq i32 %91, 5
  br i1 %cmp.i79, label %sym_get_choice_prop.exit81, label %for.cond.i77

sym_get_choice_prop.exit81:                       ; preds = %for.body.i80, %for.cond.i77
  %expr.i65 = getelementptr inbounds %struct.property, ptr %prop.0.i75, i64 0, i32 4
  %92 = load ptr, ptr %expr.i65, align 8, !tbaa !21
  %tobool.not.i66 = icmp eq ptr %92, null
  br i1 %tobool.not.i66, label %prop_get_symbol.exit72, label %land.lhs.true.i68

land.lhs.true.i68:                                ; preds = %sym_get_choice_prop.exit81
  %93 = load i32, ptr %92, align 8, !tbaa !23
  %94 = and i32 %93, -2
  %switch.i67 = icmp eq i32 %94, 10
  br i1 %switch.i67, label %if.then.i70, label %prop_get_symbol.exit72

if.then.i70:                                      ; preds = %land.lhs.true.i68
  %left.i69 = getelementptr inbounds %struct.expr, ptr %92, i64 0, i32 1
  %95 = load ptr, ptr %left.i69, align 8, !tbaa !15
  br label %prop_get_symbol.exit72

prop_get_symbol.exit72:                           ; preds = %if.then.i70, %land.lhs.true.i68, %sym_get_choice_prop.exit81
  %retval.0.i71 = phi ptr [ %95, %if.then.i70 ], [ null, %land.lhs.true.i68 ], [ null, %sym_get_choice_prop.exit81 ]
  %cmp.i58 = icmp eq ptr %retval.0.i71, %sym
  %spec.select.i59 = select i1 %cmp.i58, ptr %sym, ptr %sym2.1.i.ph
  br label %sym_check_choice_deps.exit

sym_check_choice_deps.exit:                       ; preds = %prop_get_symbol.exit72, %land.lhs.true.i57, %for.end34.i, %for.cond8.i.preheader
  %sym2.2.i = phi ptr [ %sym2.1.i.ph, %land.lhs.true.i57 ], [ null, %for.end34.i ], [ %spec.select.i59, %prop_get_symbol.exit72 ], [ null, %for.cond8.i.preheader ]
  %96 = load ptr, ptr @check_top, align 8, !tbaa !16
  %97 = load ptr, ptr %96, align 8, !tbaa !65
  store ptr %97, ptr @check_top, align 8, !tbaa !16
  %tobool.not.i60 = icmp eq ptr %97, null
  br i1 %tobool.not.i60, label %dep_stack_remove.exit64, label %if.then.i62

if.then.i62:                                      ; preds = %sym_check_choice_deps.exit
  %next.i61 = getelementptr inbounds %struct.dep_stack, ptr %97, i64 0, i32 1
  store ptr null, ptr %next.i61, align 8, !tbaa !63
  br label %dep_stack_remove.exit64

dep_stack_remove.exit64:                          ; preds = %if.then.i62, %sym_check_choice_deps.exit
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stack.i) #27
  br label %cleanup

if.else13:                                        ; preds = %if.else
  %or = or i32 %0, 8200
  store i32 %or, ptr %flags, align 4, !tbaa !13
  %call15 = tail call fastcc ptr @sym_check_sym_deps(ptr noundef nonnull %sym)
  %98 = load i32, ptr %flags, align 4, !tbaa !13
  %and17 = and i32 %98, -9
  store i32 %and17, ptr %flags, align 4, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %dep_stack_remove.exit64, %dep_stack_remove.exit, %if.end, %sym_check_print_recursive.exit
  %retval.0 = phi ptr [ %sym, %sym_check_print_recursive.exit ], [ null, %if.end ], [ %call9, %dep_stack_remove.exit ], [ %sym2.2.i, %dep_stack_remove.exit64 ], [ %call15, %if.else13 ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc ptr @sym_check_sym_deps(ptr noundef %sym) unnamed_addr #20 {
entry:
  %stack = alloca %struct.dep_stack, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stack) #27
  %0 = getelementptr inbounds i8, ptr %stack, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false) #27
  %1 = load ptr, ptr @check_top, align 8, !tbaa !16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %dep_stack_insert.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %next.i = getelementptr inbounds %struct.dep_stack, ptr %1, i64 0, i32 1
  store ptr %stack, ptr %next.i, align 8, !tbaa !63
  br label %dep_stack_insert.exit

dep_stack_insert.exit:                            ; preds = %if.then.i, %entry
  store ptr %1, ptr %stack, align 8, !tbaa !65
  %sym1.i = getelementptr inbounds %struct.dep_stack, ptr %stack, i64 0, i32 2
  store ptr %sym, ptr %sym1.i, align 8, !tbaa !66
  store ptr %stack, ptr @check_top, align 8, !tbaa !16
  %dir_dep = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 8
  %expr1 = getelementptr inbounds %struct.dep_stack, ptr %stack, i64 0, i32 4
  store ptr %dir_dep, ptr %expr1, align 8, !tbaa !75
  %2 = load ptr, ptr %dir_dep, align 8, !tbaa !34
  %call = call fastcc ptr @sym_check_expr_deps(ptr noundef %2)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %dep_stack_insert.exit
  %rev_dep = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9
  store ptr %rev_dep, ptr %expr1, align 8, !tbaa !75
  %3 = load ptr, ptr %rev_dep, align 8, !tbaa !35
  %call8 = call fastcc ptr @sym_check_expr_deps(ptr noundef %3)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end11, label %out

if.end11:                                         ; preds = %if.end
  %implied = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 10
  store ptr %implied, ptr %expr1, align 8, !tbaa !75
  %4 = load ptr, ptr %implied, align 8, !tbaa !41
  %call16 = call fastcc ptr @sym_check_expr_deps(ptr noundef %4)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end19, label %out

if.end19:                                         ; preds = %if.end11
  store ptr null, ptr %expr1, align 8, !tbaa !75
  %prop21 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop30 = getelementptr inbounds %struct.dep_stack, ptr %stack, i64 0, i32 3
  %prop.075 = load ptr, ptr %prop21, align 8, !tbaa !16
  %tobool22.not76 = icmp eq ptr %prop.075, null
  br i1 %tobool22.not76, label %out, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end19
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.077 = phi ptr [ %prop.075, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %type = getelementptr inbounds %struct.property, ptr %prop.077, i64 0, i32 1
  %5 = load i32, ptr %type, align 8, !tbaa !17
  %.off = add i32 %5, -5
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %for.inc, label %if.end29

if.end29:                                         ; preds = %for.body
  store ptr %prop.077, ptr %prop30, align 8, !tbaa !67
  %visible = getelementptr inbounds %struct.property, ptr %prop.077, i64 0, i32 3
  %6 = load ptr, ptr %visible, align 8, !tbaa !19
  %call32 = call fastcc ptr @sym_check_expr_deps(ptr noundef %6)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end35, label %out

if.end35:                                         ; preds = %if.end29
  %7 = load i32, ptr %type, align 8, !tbaa !17
  %cmp37.not = icmp eq i32 %7, 4
  br i1 %cmp37.not, label %lor.lhs.false38, label %for.inc

lor.lhs.false38:                                  ; preds = %if.end35
  %8 = load i32, ptr %flags.i, align 4, !tbaa !13
  %and.i = and i32 %8, 16
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end41, label %for.inc

if.end41:                                         ; preds = %lor.lhs.false38
  %expr42 = getelementptr inbounds %struct.property, ptr %prop.077, i64 0, i32 4
  store ptr %expr42, ptr %expr1, align 8, !tbaa !75
  %9 = load ptr, ptr %expr42, align 8, !tbaa !21
  %call45 = call fastcc ptr @sym_check_expr_deps(ptr noundef %9)
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end48, label %out

if.end48:                                         ; preds = %if.end41
  store ptr null, ptr %expr1, align 8, !tbaa !75
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %lor.lhs.false38, %if.end35, %for.body
  %prop.0 = load ptr, ptr %prop.077, align 8, !tbaa !16
  %tobool22.not = icmp eq ptr %prop.0, null
  br i1 %tobool22.not, label %out, label %for.body

out:                                              ; preds = %for.inc, %if.end41, %if.end29, %if.end19, %if.end11, %if.end, %dep_stack_insert.exit
  %sym2.2 = phi ptr [ %call, %dep_stack_insert.exit ], [ %call8, %if.end ], [ %call16, %if.end11 ], [ null, %if.end19 ], [ null, %for.inc ], [ %call32, %if.end29 ], [ %call45, %if.end41 ]
  %10 = load ptr, ptr @check_top, align 8, !tbaa !16
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  store ptr %11, ptr @check_top, align 8, !tbaa !16
  %tobool.not.i72 = icmp eq ptr %11, null
  br i1 %tobool.not.i72, label %dep_stack_remove.exit, label %if.then.i74

if.then.i74:                                      ; preds = %out
  %next.i73 = getelementptr inbounds %struct.dep_stack, ptr %11, i64 0, i32 1
  store ptr null, ptr %next.i73, align 8, !tbaa !63
  br label %dep_stack_remove.exit

dep_stack_remove.exit:                            ; preds = %if.then.i74, %out
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stack) #27
  ret ptr %sym2.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @prop_get_type_name(i32 noundef %type) local_unnamed_addr #2 {
entry:
  %switch.tableidx = add i32 %type, -1
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.prop_get_type_name, i64 0, i64 %1
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %return

return:                                           ; preds = %switch.lookup, %entry
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.8, %entry ]
  ret ptr %retval.0
}

declare void @str_new(ptr sret(%struct.gstr) align 8) local_unnamed_addr #5

declare void @str_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @expr_gstr_print(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @expr_gstr_print_revdep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #21

declare ptr @str_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind uwtable
define internal fastcc ptr @sym_check_expr_deps(ptr noundef readonly %e) unnamed_addr #20 {
entry:
  %tobool.not37 = icmp eq ptr %e, null
  br i1 %tobool.not37, label %cleanup, label %if.end

if.end:                                           ; preds = %tailrecurse.backedge, %entry
  %e.tr38 = phi ptr [ %e.tr.be, %tailrecurse.backedge ], [ %e, %entry ]
  %0 = load i32, ptr %e.tr38, align 8, !tbaa !23
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb5
    i32 4, label %sw.bb8
    i32 9, label %sw.bb8
    i32 8, label %sw.bb8
    i32 7, label %sw.bb8
    i32 6, label %sw.bb8
    i32 5, label %sw.bb8
    i32 11, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %left = getelementptr inbounds %struct.expr, ptr %e.tr38, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !15
  %call = tail call fastcc ptr @sym_check_expr_deps(ptr noundef %1)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %sw.bb
  %right = getelementptr inbounds %struct.expr, ptr %e.tr38, i64 0, i32 2
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %sw.bb5, %if.end3
  %e.tr.be.in = phi ptr [ %right, %if.end3 ], [ %left6, %sw.bb5 ]
  %e.tr.be = load ptr, ptr %e.tr.be.in, align 8, !tbaa !15
  %tobool.not = icmp eq ptr %e.tr.be, null
  br i1 %tobool.not, label %cleanup, label %if.end

sw.bb5:                                           ; preds = %if.end
  %left6 = getelementptr inbounds %struct.expr, ptr %e.tr38, i64 0, i32 1
  br label %tailrecurse.backedge

sw.bb8:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %left9 = getelementptr inbounds %struct.expr, ptr %e.tr38, i64 0, i32 1
  %2 = load ptr, ptr %left9, align 8, !tbaa !15
  %call10 = tail call ptr @sym_check_deps(ptr noundef %2)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %sw.bb8
  %right14 = getelementptr inbounds %struct.expr, ptr %e.tr38, i64 0, i32 2
  %3 = load ptr, ptr %right14, align 8, !tbaa !15
  %call15 = tail call ptr @sym_check_deps(ptr noundef %3)
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  %left17 = getelementptr inbounds %struct.expr, ptr %e.tr38, i64 0, i32 1
  %4 = load ptr, ptr %left17, align 8, !tbaa !15
  %call18 = tail call ptr @sym_check_deps(ptr noundef %4)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !16
  %call20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %0) #33
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb16, %if.end13, %sw.bb8, %tailrecurse.backedge, %sw.bb, %entry
  %retval.0 = phi ptr [ null, %sw.epilog ], [ %call18, %sw.bb16 ], [ %call15, %if.end13 ], [ %call10, %sw.bb8 ], [ null, %entry ], [ %call, %sw.bb ], [ null, %tailrecurse.backedge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare ptr @llvm.load.relative.i64(ptr, i64) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { argmemonly nofree nounwind readonly willreturn }
attributes #23 = { nofree nounwind }
attributes #24 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #25 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #26 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #27 = { nounwind }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !8, i64 16}
!6 = !{!"symbol", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 24, !8, i64 40, !8, i64 104, !11, i64 108, !7, i64 112, !12, i64 120, !12, i64 136, !12, i64 152}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"symbol_value", !7, i64 0, !8, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"expr_value", !7, i64 0, !8, i64 8}
!13 = !{!6, !11, i64 108}
!14 = !{!6, !8, i64 104}
!15 = !{!8, !8, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !8, i64 8}
!18 = !{!"property", !7, i64 0, !8, i64 8, !7, i64 16, !12, i64 24, !7, i64 40, !7, i64 48, !7, i64 56, !11, i64 64}
!19 = !{!18, !7, i64 24}
!20 = !{!18, !8, i64 32}
!21 = !{!18, !7, i64 40}
!22 = !{}
!23 = !{!24, !8, i64 0}
!24 = !{!"expr", !8, i64 0, !8, i64 8, !8, i64 16}
!25 = !{i64 0, i64 8, !16, i64 8, i64 4, !15}
!26 = !{i64 0, i64 4, !15}
!27 = !{!6, !7, i64 8}
!28 = !{!6, !7, i64 24}
!29 = !{!6, !8, i64 32}
!30 = !{!10, !8, i64 8}
!31 = !{!6, !8, i64 144}
!32 = !{!6, !8, i64 160}
!33 = !{!6, !8, i64 128}
!34 = !{!6, !7, i64 120}
!35 = !{!6, !7, i64 136}
!36 = !{!10, !7, i64 0}
!37 = !{!18, !7, i64 48}
!38 = !{!39, !11, i64 56}
!39 = !{!"menu", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !11, i64 56, !7, i64 64, !7, i64 72, !11, i64 80, !7, i64 88}
!40 = !{!18, !7, i64 16}
!41 = !{!6, !7, i64 152}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !8, i64 0}
!44 = !{!6, !7, i64 0}
!45 = !{!46, !11, i64 0}
!46 = !{!"", !11, i64 0, !11, i64 4}
!47 = !{!48, !49, i64 8}
!48 = !{!"sym_match", !7, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"long", !8, i64 0}
!50 = !{!46, !11, i64 4}
!51 = !{!48, !49, i64 16}
!52 = !{!48, !7, i64 0}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !59}
!63 = !{!64, !7, i64 8}
!64 = !{!"dep_stack", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!65 = !{!64, !7, i64 0}
!66 = !{!64, !7, i64 16}
!67 = !{!64, !7, i64 24}
!68 = !{!6, !7, i64 112}
!69 = !{!18, !7, i64 56}
!70 = !{!71, !7, i64 16}
!71 = !{!"file", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24}
!72 = !{!18, !11, i64 64}
!73 = !{!39, !7, i64 72}
!74 = !{!39, !11, i64 80}
!75 = !{!64, !7, i64 32}
