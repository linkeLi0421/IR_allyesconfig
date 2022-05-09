; ModuleID = '/llk/IR_all_yes/scripts/kconfig/expr.c_pt.bc'
source_filename = "../scripts/kconfig/expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }
%union.string_value = type { i64 }
%struct.gstr = type { i64, ptr, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"can't copy type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"how to free type %d?\0A\00", align 1
@trans_count = internal unnamed_addr global i32 0, align 4
@symbol_no = external global %struct.symbol, align 8
@symbol_mod = external global %struct.symbol, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"boolean symbol %s tested for 'm'? test forced to 'n'\0A\00", align 1
@symbol_yes = external global %struct.symbol, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"boolean symbol %s tested for 'm'? test forced to 'y'\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"expr_calc_value: %d?\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"expr_calc_value: relation %d?\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"<unknown type %d>\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"../scripts/kconfig/lkc.h\00", align 1
@__PRETTY_FUNCTION__.xfwrite = private unnamed_addr constant [51 x i8] c"void xfwrite(const void *, size_t, size_t, FILE *)\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Error in writing or end of file.\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c" [=%s]\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"  - \00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_symbol(ptr noundef %sym) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call, align 8, !tbaa !5
  %left = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 1
  store ptr %sym, ptr %left, align 8, !tbaa !9
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_one(i32 noundef %type, ptr noundef %ce) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 %type, ptr %call, align 8, !tbaa !5
  %left = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 1
  store ptr %ce, ptr %left, align 8, !tbaa !9
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_two(i32 noundef %type, ptr noundef %e1, ptr noundef %e2) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 %type, ptr %call, align 8, !tbaa !5
  %left = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 1
  store ptr %e1, ptr %left, align 8, !tbaa !9
  %right = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 2
  store ptr %e2, ptr %right, align 8, !tbaa !9
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_comp(i32 noundef %type, ptr noundef %s1, ptr noundef %s2) local_unnamed_addr #0 {
entry:
  %call = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 %type, ptr %call, align 8, !tbaa !5
  %left = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 1
  store ptr %s1, ptr %left, align 8, !tbaa !9
  %right = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 2
  store ptr %s2, ptr %right, align 8, !tbaa !9
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_and(ptr noundef %e1, ptr noundef %e2) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %e1, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %e2, null
  br i1 %tobool1.not, label %return, label %cond.true

cond.true:                                        ; preds = %if.end
  %call.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 2, ptr %call.i, align 8, !tbaa !5
  %left.i = getelementptr inbounds %struct.expr, ptr %call.i, i64 0, i32 1
  store ptr %e1, ptr %left.i, align 8, !tbaa !9
  %right.i = getelementptr inbounds %struct.expr, ptr %call.i, i64 0, i32 2
  store ptr %e2, ptr %right.i, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %cond.true, %if.end, %entry
  %retval.0 = phi ptr [ %e2, %entry ], [ %call.i, %cond.true ], [ %e1, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_alloc_or(ptr noundef %e1, ptr noundef %e2) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %e1, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %e2, null
  br i1 %tobool1.not, label %return, label %cond.true

cond.true:                                        ; preds = %if.end
  %call.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 1, ptr %call.i, align 8, !tbaa !5
  %left.i = getelementptr inbounds %struct.expr, ptr %call.i, i64 0, i32 1
  store ptr %e1, ptr %left.i, align 8, !tbaa !9
  %right.i = getelementptr inbounds %struct.expr, ptr %call.i, i64 0, i32 2
  store ptr %e2, ptr %right.i, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %cond.true, %if.end, %entry
  %retval.0 = phi ptr [ %e2, %entry ], [ %call.i, %cond.true ], [ %e1, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_copy(ptr noundef readonly %org) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %org, null
  br i1 %tobool.not, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call ptr @xmalloc(i64 noundef 24) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %call, ptr noundef nonnull align 8 dereferenceable(24) %org, i64 24, i1 false)
  %0 = load i32, ptr %org, align 8, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 11, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb6
    i32 9, label %sw.bb6
    i32 8, label %sw.bb6
    i32 7, label %sw.bb6
    i32 6, label %sw.bb6
    i32 5, label %sw.bb6
    i32 2, label %sw.bb10
    i32 1, label %sw.bb10
    i32 10, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  %left = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 1
  %left1 = getelementptr inbounds %struct.expr, ptr %org, i64 0, i32 1
  %1 = load i64, ptr %left1, align 8
  store i64 %1, ptr %left, align 8
  br label %common.ret

common.ret:                                       ; preds = %sw.default, %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb, %entry
  %common.ret.op = phi ptr [ %call, %sw.bb2 ], [ %call, %sw.bb10 ], [ null, %entry ], [ null, %sw.default ], [ %call, %sw.bb6 ], [ %call, %sw.bb ]
  ret ptr %common.ret.op

sw.bb2:                                           ; preds = %if.end
  %left3 = getelementptr inbounds %struct.expr, ptr %org, i64 0, i32 1
  %2 = load ptr, ptr %left3, align 8, !tbaa !9
  %call4 = tail call ptr @expr_copy(ptr noundef %2)
  %left5 = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 1
  store ptr %call4, ptr %left5, align 8, !tbaa !9
  br label %common.ret

sw.bb6:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %left7 = getelementptr inbounds %struct.expr, ptr %org, i64 0, i32 1
  %3 = load ptr, ptr %left7, align 8, !tbaa !9
  %left8 = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 1
  store ptr %3, ptr %left8, align 8, !tbaa !9
  %right = getelementptr inbounds %struct.expr, ptr %org, i64 0, i32 2
  %4 = load ptr, ptr %right, align 8, !tbaa !9
  %right9 = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 2
  store ptr %4, ptr %right9, align 8, !tbaa !9
  br label %common.ret

sw.bb10:                                          ; preds = %if.end, %if.end, %if.end
  %left11 = getelementptr inbounds %struct.expr, ptr %org, i64 0, i32 1
  %5 = load ptr, ptr %left11, align 8, !tbaa !9
  %call12 = tail call ptr @expr_copy(ptr noundef %5)
  %left13 = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 1
  store ptr %call12, ptr %left13, align 8, !tbaa !9
  %right14 = getelementptr inbounds %struct.expr, ptr %org, i64 0, i32 2
  %6 = load ptr, ptr %right14, align 8, !tbaa !9
  %call15 = tail call ptr @expr_copy(ptr noundef %6)
  %right16 = getelementptr inbounds %struct.expr, ptr %call, i64 0, i32 2
  store ptr %call15, ptr %right16, align 8, !tbaa !9
  br label %common.ret

sw.default:                                       ; preds = %if.end
  %7 = load ptr, ptr @stderr, align 8, !tbaa !10
  %8 = load i32, ptr %call, align 8, !tbaa !5
  %call18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %8) #15
  tail call void @free(ptr noundef nonnull %call) #14
  br label %common.ret
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @expr_free(ptr noundef %e) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %e, align 8, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 11, label %sw.epilog
    i32 3, label %sw.bb
    i32 4, label %sw.epilog
    i32 9, label %sw.epilog
    i32 8, label %sw.epilog
    i32 7, label %sw.epilog
    i32 6, label %sw.epilog
    i32 5, label %sw.epilog
    i32 1, label %sw.bb2
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  %left = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end, %if.end
  %left3 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %2 = load ptr, ptr %left3, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %2)
  %right = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %3 = load ptr, ptr %right, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %3)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %4 = load ptr, ptr @stderr, align 8, !tbaa !10
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %0) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  tail call void @free(ptr noundef nonnull %e) #14
  br label %return

return:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @expr_eliminate_eq(ptr noundef %ep1, ptr noundef %ep2) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %ep1, align 8, !tbaa !10
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %ep2, align 8, !tbaa !10
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %0, align 8, !tbaa !5
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end
  tail call fastcc void @__expr_eliminate_eq(i32 noundef %2, ptr noundef nonnull %ep1, ptr noundef nonnull %ep2)
  %.pre = load ptr, ptr %ep1, align 8, !tbaa !10
  %.pre30 = load i32, ptr %.pre, align 8, !tbaa !5
  %.pre31 = load ptr, ptr %ep2, align 8, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end
  %3 = phi ptr [ %1, %if.end ], [ %.pre31, %sw.bb ]
  %4 = phi i32 [ %2, %if.end ], [ %.pre30, %sw.bb ]
  %5 = phi ptr [ %0, %if.end ], [ %.pre, %sw.bb ]
  %6 = load i32, ptr %3, align 8, !tbaa !5
  %cmp.not = icmp ne i32 %4, %6
  %.off28 = add i32 %6, -1
  %switch29 = icmp ult i32 %.off28, 2
  %or.cond = and i1 %cmp.not, %switch29
  br i1 %or.cond, label %sw.bb7, label %if.end11

sw.bb7:                                           ; preds = %sw.epilog
  tail call fastcc void @__expr_eliminate_eq(i32 noundef %6, ptr noundef nonnull %ep1, ptr noundef nonnull %ep2)
  %.pre32 = load ptr, ptr %ep1, align 8, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %sw.bb7, %sw.epilog
  %7 = phi ptr [ %.pre32, %sw.bb7 ], [ %5, %sw.epilog ]
  %call = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %7)
  store ptr %7, ptr %ep1, align 8, !tbaa !10
  %8 = load ptr, ptr %ep2, align 8, !tbaa !10
  %call12 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %8)
  store ptr %8, ptr %ep2, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end11, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @__expr_eliminate_eq(i32 noundef %type, ptr noundef %ep1, ptr noundef %ep2) unnamed_addr #0 {
entry:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %if.then, %entry
  %ep1.tr.ph = phi ptr [ %right, %if.then ], [ %ep1, %entry ]
  %ep2.tr.ph = phi ptr [ %ep2.tr.lcssa, %if.then ], [ %ep2, %entry ]
  %0 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  %1 = load i32, ptr %0, align 8, !tbaa !5
  %cmp73 = icmp eq i32 %1, %type
  br i1 %cmp73, label %if.then, label %if.end.preheader

if.end.preheader:                                 ; preds = %tailrecurse.outer
  %2 = load ptr, ptr %ep2.tr.ph, align 8, !tbaa !10
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %cmp3107 = icmp eq i32 %3, %type
  br i1 %cmp3107, label %if.then4, label %if.end7

if.then:                                          ; preds = %if.then4, %tailrecurse.outer
  %ep2.tr.lcssa = phi ptr [ %ep2.tr.ph, %tailrecurse.outer ], [ %right6, %if.then4 ]
  %.lcssa68 = phi ptr [ %0, %tailrecurse.outer ], [ %9, %if.then4 ]
  %left = getelementptr inbounds %struct.expr, ptr %.lcssa68, i64 0, i32 1
  tail call fastcc void @__expr_eliminate_eq(i32 noundef %type, ptr noundef nonnull %left, ptr noundef %ep2.tr.lcssa)
  %4 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  %right = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  br label %tailrecurse.outer

if.end:                                           ; preds = %if.then4
  %5 = load ptr, ptr %right6, align 8, !tbaa !10
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %cmp3 = icmp eq i32 %6, %type
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end, %if.end.preheader
  %7 = phi ptr [ %5, %if.end ], [ %2, %if.end.preheader ]
  %ep2.tr74108 = phi ptr [ %right6, %if.end ], [ %ep2.tr.ph, %if.end.preheader ]
  %left5 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 1
  tail call fastcc void @__expr_eliminate_eq(i32 noundef %type, ptr noundef nonnull %ep1.tr.ph, ptr noundef nonnull %left5)
  %8 = load ptr, ptr %ep2.tr74108, align 8, !tbaa !10
  %right6 = getelementptr inbounds %struct.expr, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %cmp = icmp eq i32 %10, %type
  br i1 %cmp, label %if.then, label %if.end

if.end7:                                          ; preds = %if.end, %if.end.preheader
  %.lcssa104 = phi i32 [ %10, %if.end ], [ %1, %if.end.preheader ]
  %.lcssa102 = phi ptr [ %9, %if.end ], [ %0, %if.end.preheader ]
  %ep2.tr74.lcssa = phi ptr [ %right6, %if.end ], [ %ep2.tr.ph, %if.end.preheader ]
  %.lcssa99 = phi ptr [ %5, %if.end ], [ %2, %if.end.preheader ]
  %.lcssa = phi i32 [ %6, %if.end ], [ %3, %if.end.preheader ]
  %cmp9 = icmp eq i32 %.lcssa104, 11
  %cmp11 = icmp eq i32 %.lcssa, 11
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false
  br i1 %or.cond, label %land.lhs.true12, label %if.end22

land.lhs.true12:                                  ; preds = %if.end7
  %left13 = getelementptr inbounds %struct.expr, ptr %.lcssa102, i64 0, i32 1
  %11 = load ptr, ptr %left13, align 8, !tbaa !9
  %left14 = getelementptr inbounds %struct.expr, ptr %.lcssa99, i64 0, i32 1
  %12 = load ptr, ptr %left14, align 8, !tbaa !9
  %cmp15 = icmp eq ptr %11, %12
  br i1 %cmp15, label %land.lhs.true16, label %if.end22

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %cmp18 = icmp eq ptr %11, @symbol_yes
  %cmp20 = icmp eq ptr %11, @symbol_no
  %or.cond60 = or i1 %cmp18, %cmp20
  br i1 %or.cond60, label %sw.epilog, label %if.end22

if.end22:                                         ; preds = %land.lhs.true16, %land.lhs.true12, %if.end7
  %call = tail call i32 @expr_eq(ptr noundef nonnull %.lcssa102, ptr noundef nonnull %.lcssa99)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog, label %if.end24

if.end24:                                         ; preds = %if.end22
  %13 = load i32, ptr @trans_count, align 4, !tbaa !12
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr @trans_count, align 4, !tbaa !12
  %14 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  tail call void @expr_free(ptr noundef %14)
  %15 = load ptr, ptr %ep2.tr74.lcssa, align 8, !tbaa !10
  tail call void @expr_free(ptr noundef %15)
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.epilog.sink.split
    i32 2, label %sw.bb27
  ]

sw.bb27:                                          ; preds = %if.end24
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb27, %if.end24
  %symbol_no.sink = phi ptr [ @symbol_yes, %sw.bb27 ], [ @symbol_no, %if.end24 ]
  %call.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i, align 8, !tbaa !5
  %left.i = getelementptr inbounds %struct.expr, ptr %call.i, i64 0, i32 1
  store ptr %symbol_no.sink, ptr %left.i, align 8, !tbaa !9
  store ptr %call.i, ptr %ep1.tr.ph, align 8, !tbaa !10
  %call.i61 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i61, align 8, !tbaa !5
  %left.i66 = getelementptr inbounds %struct.expr, ptr %call.i61, i64 0, i32 1
  store ptr %symbol_no.sink, ptr %left.i66, align 8, !tbaa !9
  store ptr %call.i61, ptr %ep2.tr74.lcssa, align 8, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end24, %if.end22, %land.lhs.true16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expr_eliminate_yn(ptr noundef returned %e) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %e, align 8, !tbaa !5
  switch i32 %0, label %cleanup [
    i32 2, label %sw.bb
    i32 1, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.then
  %left = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  %call = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %1)
  store ptr %1, ptr %left, align 8, !tbaa !9
  %right = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %2 = load ptr, ptr %right, align 8, !tbaa !9
  %call2 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %2)
  store ptr %2, ptr %right, align 8, !tbaa !9
  %3 = load ptr, ptr %left, align 8, !tbaa !9
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %cmp = icmp eq i32 %4, 11
  br i1 %cmp, label %if.then6, label %if.end24

if.then6:                                         ; preds = %sw.bb
  %left8 = getelementptr inbounds %struct.expr, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %left8, align 8, !tbaa !9
  %cmp9 = icmp eq ptr %5, @symbol_no
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then6
  tail call void @expr_free(ptr noundef nonnull %3)
  %6 = load ptr, ptr %right, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %6)
  store i32 11, ptr %e, align 8, !tbaa !5
  store ptr @symbol_no, ptr %left, align 8, !tbaa !9
  store ptr null, ptr %right, align 8, !tbaa !9
  br label %cleanup

if.else:                                          ; preds = %if.then6
  %cmp18 = icmp eq ptr %5, @symbol_yes
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.else
  tail call void @free(ptr noundef nonnull %3) #14
  %7 = load ptr, ptr %right, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !14
  tail call void @free(ptr noundef %7) #14
  br label %cleanup

if.end24:                                         ; preds = %if.else, %sw.bb
  %8 = load i32, ptr %2, align 8, !tbaa !5
  %cmp27 = icmp eq i32 %8, 11
  br i1 %cmp27, label %if.then28, label %cleanup

if.then28:                                        ; preds = %if.end24
  %left30 = getelementptr inbounds %struct.expr, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %left30, align 8, !tbaa !9
  %cmp31 = icmp eq ptr %9, @symbol_no
  br i1 %cmp31, label %if.then32, label %if.else38

if.then32:                                        ; preds = %if.then28
  tail call void @expr_free(ptr noundef nonnull %3)
  %10 = load ptr, ptr %right, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %10)
  store i32 11, ptr %e, align 8, !tbaa !5
  store ptr @symbol_no, ptr %left, align 8, !tbaa !9
  store ptr null, ptr %right, align 8, !tbaa !9
  br label %cleanup

if.else38:                                        ; preds = %if.then28
  %cmp41 = icmp eq ptr %9, @symbol_yes
  br i1 %cmp41, label %if.then42, label %cleanup

if.then42:                                        ; preds = %if.else38
  tail call void @free(ptr noundef nonnull %2) #14
  %11 = load ptr, ptr %left, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %e, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !14
  tail call void @free(ptr noundef %11) #14
  br label %cleanup

sw.bb49:                                          ; preds = %if.then
  %left50 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %12 = load ptr, ptr %left50, align 8, !tbaa !9
  %call51 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %12)
  store ptr %12, ptr %left50, align 8, !tbaa !9
  %right53 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %13 = load ptr, ptr %right53, align 8, !tbaa !9
  %call54 = tail call fastcc ptr @expr_eliminate_yn(ptr noundef %13)
  store ptr %13, ptr %right53, align 8, !tbaa !9
  %14 = load ptr, ptr %left50, align 8, !tbaa !9
  %15 = load i32, ptr %14, align 8, !tbaa !5
  %cmp58 = icmp eq i32 %15, 11
  br i1 %cmp58, label %if.then59, label %if.end79

if.then59:                                        ; preds = %sw.bb49
  %left61 = getelementptr inbounds %struct.expr, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %left61, align 8, !tbaa !9
  %cmp62 = icmp eq ptr %16, @symbol_no
  br i1 %cmp62, label %if.then63, label %if.else67

if.then63:                                        ; preds = %if.then59
  tail call void @free(ptr noundef nonnull %14) #14
  %17 = load ptr, ptr %right53, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %e, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !14
  tail call void @free(ptr noundef %17) #14
  br label %cleanup

if.else67:                                        ; preds = %if.then59
  %cmp70 = icmp eq ptr %16, @symbol_yes
  br i1 %cmp70, label %if.then71, label %if.end79

if.then71:                                        ; preds = %if.else67
  tail call void @expr_free(ptr noundef nonnull %14)
  %18 = load ptr, ptr %right53, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %18)
  store i32 11, ptr %e, align 8, !tbaa !5
  store ptr @symbol_yes, ptr %left50, align 8, !tbaa !9
  store ptr null, ptr %right53, align 8, !tbaa !9
  br label %cleanup

if.end79:                                         ; preds = %if.else67, %sw.bb49
  %19 = load i32, ptr %13, align 8, !tbaa !5
  %cmp82 = icmp eq i32 %19, 11
  br i1 %cmp82, label %if.then83, label %cleanup

if.then83:                                        ; preds = %if.end79
  %left85 = getelementptr inbounds %struct.expr, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %left85, align 8, !tbaa !9
  %cmp86 = icmp eq ptr %20, @symbol_no
  br i1 %cmp86, label %if.then87, label %if.else91

if.then87:                                        ; preds = %if.then83
  tail call void @free(ptr noundef nonnull %13) #14
  %21 = load ptr, ptr %left50, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %e, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !14
  tail call void @free(ptr noundef %21) #14
  br label %cleanup

if.else91:                                        ; preds = %if.then83
  %cmp94 = icmp eq ptr %20, @symbol_yes
  br i1 %cmp94, label %if.then95, label %cleanup

if.then95:                                        ; preds = %if.else91
  tail call void @expr_free(ptr noundef nonnull %14)
  %22 = load ptr, ptr %right53, align 8, !tbaa !9
  tail call void @expr_free(ptr noundef %22)
  store i32 11, ptr %e, align 8, !tbaa !5
  store ptr @symbol_yes, ptr %left50, align 8, !tbaa !9
  store ptr null, ptr %right53, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.else91, %if.then87, %if.end79, %if.then71, %if.then63, %if.then42, %if.else38, %if.then32, %if.end24, %if.then19, %if.then10, %if.then, %entry
  ret ptr %e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @expr_eq(ptr noundef %e1, ptr noundef %e2) local_unnamed_addr #0 {
entry:
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %tobool75 = icmp ne ptr %e1, null
  %tobool176 = icmp ne ptr %e2, null
  %or.cond77 = and i1 %tobool75, %tobool176
  br i1 %or.cond77, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb20, %entry
  %e2.tr.lcssa70 = phi ptr [ %e2, %entry ], [ %13, %sw.bb20 ]
  %e1.tr.lcssa65 = phi ptr [ %e1, %entry ], [ %12, %sw.bb20 ]
  store ptr %e1.tr.lcssa65, ptr %e1.addr, align 8, !tbaa !10
  store ptr %e2.tr.lcssa70, ptr %e2.addr, align 8, !tbaa !10
  %tobool.not.i = icmp eq ptr %e1.tr.lcssa65, null
  br i1 %tobool.not.i, label %land.rhs, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.then
  %0 = load i32, ptr %e1.tr.lcssa65, align 8, !tbaa !5
  %cmp.i = icmp eq i32 %0, 11
  br i1 %cmp.i, label %expr_is_yes.exit, label %cleanup

expr_is_yes.exit:                                 ; preds = %lor.rhs.i
  %left.i = getelementptr inbounds %struct.expr, ptr %e1.tr.lcssa65, i64 0, i32 1
  %1 = load ptr, ptr %left.i, align 8, !tbaa !9
  %cmp1.i.not = icmp eq ptr %1, @symbol_yes
  br i1 %cmp1.i.not, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %expr_is_yes.exit, %if.then
  %tobool.not.i45 = icmp eq ptr %e2.tr.lcssa70, null
  br i1 %tobool.not.i45, label %cleanup, label %lor.rhs.i47

lor.rhs.i47:                                      ; preds = %land.rhs
  %2 = load i32, ptr %e2.tr.lcssa70, align 8, !tbaa !5
  %cmp.i46 = icmp eq i32 %2, 11
  br i1 %cmp.i46, label %land.rhs.i51, label %cleanup

land.rhs.i51:                                     ; preds = %lor.rhs.i47
  %left.i48 = getelementptr inbounds %struct.expr, ptr %e2.tr.lcssa70, i64 0, i32 1
  %3 = load ptr, ptr %left.i48, align 8, !tbaa !9
  %cmp1.i49 = icmp eq ptr %3, @symbol_yes
  %phi.cast56 = zext i1 %cmp1.i49 to i32
  br label %cleanup

if.end:                                           ; preds = %sw.bb20, %entry
  %e2.tr79 = phi ptr [ %13, %sw.bb20 ], [ %e2, %entry ]
  %e1.tr78 = phi ptr [ %12, %sw.bb20 ], [ %e1, %entry ]
  %4 = load i32, ptr %e1.tr78, align 8, !tbaa !5
  %5 = load i32, ptr %e2.tr79, align 8, !tbaa !5
  %cmp.not = icmp eq i32 %4, %5
  br i1 %cmp.not, label %if.end7, label %cleanup.loopexit

if.end7:                                          ; preds = %if.end
  switch i32 %4, label %cleanup.loopexit [
    i32 4, label %sw.bb
    i32 9, label %sw.bb
    i32 8, label %sw.bb
    i32 7, label %sw.bb
    i32 6, label %sw.bb
    i32 5, label %sw.bb
    i32 11, label %sw.bb16
    i32 3, label %sw.bb20
    i32 2, label %sw.bb24
    i32 1, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end7, %if.end7, %if.end7, %if.end7, %if.end7, %if.end7
  store ptr %e1.tr78, ptr %e1.addr, align 8, !tbaa !10
  store ptr %e2.tr79, ptr %e2.addr, align 8, !tbaa !10
  %left = getelementptr inbounds %struct.expr, ptr %e1.tr78, i64 0, i32 1
  %6 = load ptr, ptr %left, align 8, !tbaa !9
  %left9 = getelementptr inbounds %struct.expr, ptr %e2.tr79, i64 0, i32 1
  %7 = load ptr, ptr %left9, align 8, !tbaa !9
  %cmp10 = icmp eq ptr %6, %7
  br i1 %cmp10, label %land.rhs11, label %cleanup

land.rhs11:                                       ; preds = %sw.bb
  %right = getelementptr inbounds %struct.expr, ptr %e1.tr78, i64 0, i32 2
  %8 = load ptr, ptr %right, align 8, !tbaa !9
  %right12 = getelementptr inbounds %struct.expr, ptr %e2.tr79, i64 0, i32 2
  %9 = load ptr, ptr %right12, align 8, !tbaa !9
  %cmp13 = icmp eq ptr %8, %9
  %phi.cast44 = zext i1 %cmp13 to i32
  br label %cleanup

sw.bb16:                                          ; preds = %if.end7
  store ptr %e1.tr78, ptr %e1.addr, align 8, !tbaa !10
  store ptr %e2.tr79, ptr %e2.addr, align 8, !tbaa !10
  %left17 = getelementptr inbounds %struct.expr, ptr %e1.tr78, i64 0, i32 1
  %10 = load ptr, ptr %left17, align 8, !tbaa !9
  %left18 = getelementptr inbounds %struct.expr, ptr %e2.tr79, i64 0, i32 1
  %11 = load ptr, ptr %left18, align 8, !tbaa !9
  %cmp19 = icmp eq ptr %10, %11
  %conv = zext i1 %cmp19 to i32
  br label %cleanup

sw.bb20:                                          ; preds = %if.end7
  %left21 = getelementptr inbounds %struct.expr, ptr %e1.tr78, i64 0, i32 1
  %12 = load ptr, ptr %left21, align 8, !tbaa !9
  %left22 = getelementptr inbounds %struct.expr, ptr %e2.tr79, i64 0, i32 1
  %13 = load ptr, ptr %left22, align 8, !tbaa !9
  %tobool = icmp ne ptr %12, null
  %tobool1 = icmp ne ptr %13, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

sw.bb24:                                          ; preds = %if.end7, %if.end7
  %call25 = tail call ptr @expr_copy(ptr noundef nonnull %e1.tr78)
  store ptr %call25, ptr %e1.addr, align 8, !tbaa !10
  %call26 = tail call ptr @expr_copy(ptr noundef nonnull %e2.tr79)
  store ptr %call26, ptr %e2.addr, align 8, !tbaa !10
  %14 = load i32, ptr @trans_count, align 4, !tbaa !12
  call void @expr_eliminate_eq(ptr noundef nonnull %e1.addr, ptr noundef nonnull %e2.addr)
  %15 = load ptr, ptr %e1.addr, align 8, !tbaa !10
  %16 = load i32, ptr %15, align 8, !tbaa !5
  %cmp28 = icmp eq i32 %16, 11
  br i1 %cmp28, label %land.lhs.true, label %land.end38

land.lhs.true:                                    ; preds = %sw.bb24
  %17 = load ptr, ptr %e2.addr, align 8, !tbaa !10
  %18 = load i32, ptr %17, align 8, !tbaa !5
  %cmp31 = icmp eq i32 %18, 11
  br i1 %cmp31, label %land.rhs33, label %land.end38

land.rhs33:                                       ; preds = %land.lhs.true
  %left34 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %left34, align 8, !tbaa !9
  %left35 = getelementptr inbounds %struct.expr, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %left35, align 8, !tbaa !9
  %cmp36 = icmp eq ptr %19, %20
  %phi.cast43 = zext i1 %cmp36 to i32
  br label %land.end38

land.end38:                                       ; preds = %land.rhs33, %land.lhs.true, %sw.bb24
  %21 = phi i32 [ 0, %land.lhs.true ], [ 0, %sw.bb24 ], [ %phi.cast43, %land.rhs33 ]
  call void @expr_free(ptr noundef nonnull %15)
  %22 = load ptr, ptr %e2.addr, align 8, !tbaa !10
  call void @expr_free(ptr noundef %22)
  store i32 %14, ptr @trans_count, align 4, !tbaa !12
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.end7, %if.end
  store ptr %e1.tr78, ptr %e1.addr, align 8, !tbaa !10
  store ptr %e2.tr79, ptr %e2.addr, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %land.end38, %sw.bb16, %land.rhs11, %sw.bb, %land.rhs.i51, %lor.rhs.i47, %land.rhs, %expr_is_yes.exit, %lor.rhs.i
  %retval.0 = phi i32 [ %21, %land.end38 ], [ %conv, %sw.bb16 ], [ 0, %expr_is_yes.exit ], [ 0, %sw.bb ], [ %phi.cast44, %land.rhs11 ], [ 0, %lor.rhs.i ], [ 1, %land.rhs ], [ 0, %lor.rhs.i47 ], [ %phi.cast56, %land.rhs.i51 ], [ 0, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local ptr @expr_trans_bool(ptr noundef %e) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %e, align 8, !tbaa !5
  switch i32 %0, label %common.ret [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb4
  ]

common.ret:                                       ; preds = %if.then10, %if.then7, %sw.bb4, %sw.bb, %if.end, %entry
  ret ptr %e

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %left = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  %call = tail call ptr @expr_trans_bool(ptr noundef %1)
  store ptr %call, ptr %left, align 8, !tbaa !9
  %right = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %2 = load ptr, ptr %right, align 8, !tbaa !9
  %call2 = tail call ptr @expr_trans_bool(ptr noundef %2)
  store ptr %call2, ptr %right, align 8, !tbaa !9
  br label %common.ret

sw.bb4:                                           ; preds = %if.end
  %left5 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %3 = load ptr, ptr %left5, align 8, !tbaa !9
  %type6 = getelementptr inbounds %struct.symbol, ptr %3, i64 0, i32 2
  %4 = load i32, ptr %type6, align 8, !tbaa !15
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then7, label %common.ret

if.then7:                                         ; preds = %sw.bb4
  %right8 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %5 = load ptr, ptr %right8, align 8, !tbaa !9
  %cmp9 = icmp eq ptr %5, @symbol_no
  br i1 %cmp9, label %if.then10, label %common.ret

if.then10:                                        ; preds = %if.then7
  store i32 11, ptr %e, align 8, !tbaa !5
  store ptr null, ptr %right8, align 8, !tbaa !9
  br label %common.ret
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_eliminate_dups(ptr noundef %e) local_unnamed_addr #0 {
entry:
  %e.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8, !tbaa !10
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @trans_count, align 4, !tbaa !12
  store i32 0, ptr @trans_count, align 4, !tbaa !12
  %1 = load i32, ptr %e, align 8, !tbaa !5
  %.off6 = add i32 %1, -1
  %switch7 = icmp ult i32 %.off6, 2
  br i1 %switch7, label %sw.epilog, label %while.end

sw.epilog:                                        ; preds = %if.end4, %if.end
  %2 = phi i32 [ %3, %if.end4 ], [ %1, %if.end ]
  call fastcc void @expr_eliminate_dups1(i32 noundef %2, ptr noundef nonnull %e.addr, ptr noundef nonnull %e.addr)
  %.pr = load i32, ptr @trans_count, align 4, !tbaa !12
  %tobool2.not = icmp eq i32 %.pr, 0
  %.pre.pre = load ptr, ptr %e.addr, align 8, !tbaa !10
  br i1 %tobool2.not, label %while.end, label %if.end4

if.end4:                                          ; preds = %sw.epilog
  %call = call fastcc ptr @expr_eliminate_yn(ptr noundef %.pre.pre)
  store ptr %.pre.pre, ptr %e.addr, align 8, !tbaa !10
  store i32 0, ptr @trans_count, align 4, !tbaa !12
  %3 = load i32, ptr %.pre.pre, align 8, !tbaa !5
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %while.end

while.end:                                        ; preds = %if.end4, %sw.epilog, %if.end
  %4 = phi ptr [ %e, %if.end ], [ %.pre.pre, %sw.epilog ], [ %.pre.pre, %if.end4 ]
  store i32 %0, ptr @trans_count, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry
  %retval.0 = phi ptr [ %4, %while.end ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expr_eliminate_dups1(i32 noundef %type, ptr noundef %ep1, ptr noundef %ep2) unnamed_addr #0 {
entry:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %if.then, %entry
  %ep1.tr.ph = phi ptr [ %right, %if.then ], [ %ep1, %entry ]
  %ep2.tr.ph = phi ptr [ %ep2.tr.lcssa, %if.then ], [ %ep2, %entry ]
  %0 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  %1 = load i32, ptr %0, align 8, !tbaa !5
  %cmp122 = icmp eq i32 %1, %type
  br i1 %cmp122, label %if.then, label %if.end.preheader

if.end.preheader:                                 ; preds = %tailrecurse.outer
  %2 = load ptr, ptr %ep2.tr.ph, align 8, !tbaa !10
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %cmp3149 = icmp eq i32 %3, %type
  br i1 %cmp3149, label %if.then4, label %if.end7

if.then:                                          ; preds = %if.then4, %tailrecurse.outer
  %ep2.tr.lcssa = phi ptr [ %ep2.tr.ph, %tailrecurse.outer ], [ %right6, %if.then4 ]
  %.lcssa118 = phi ptr [ %0, %tailrecurse.outer ], [ %9, %if.then4 ]
  %left = getelementptr inbounds %struct.expr, ptr %.lcssa118, i64 0, i32 1
  tail call fastcc void @expr_eliminate_dups1(i32 noundef %type, ptr noundef nonnull %left, ptr noundef %ep2.tr.lcssa)
  %4 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  %right = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  br label %tailrecurse.outer

if.end:                                           ; preds = %if.then4
  %5 = load ptr, ptr %right6, align 8, !tbaa !10
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %cmp3 = icmp eq i32 %6, %type
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end, %if.end.preheader
  %7 = phi ptr [ %5, %if.end ], [ %2, %if.end.preheader ]
  %ep2.tr123150 = phi ptr [ %right6, %if.end ], [ %ep2.tr.ph, %if.end.preheader ]
  %left5 = getelementptr inbounds %struct.expr, ptr %7, i64 0, i32 1
  tail call fastcc void @expr_eliminate_dups1(i32 noundef %type, ptr noundef nonnull %ep1.tr.ph, ptr noundef nonnull %left5)
  %8 = load ptr, ptr %ep2.tr123150, align 8, !tbaa !10
  %right6 = getelementptr inbounds %struct.expr, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %cmp = icmp eq i32 %10, %type
  br i1 %cmp, label %if.then, label %if.end

if.end7:                                          ; preds = %if.end, %if.end.preheader
  %.lcssa146 = phi i32 [ %10, %if.end ], [ %1, %if.end.preheader ]
  %.lcssa144 = phi ptr [ %9, %if.end ], [ %0, %if.end.preheader ]
  %ep2.tr123.lcssa = phi ptr [ %right6, %if.end ], [ %ep2.tr.ph, %if.end.preheader ]
  %.lcssa = phi ptr [ %5, %if.end ], [ %2, %if.end.preheader ]
  %cmp8 = icmp eq ptr %.lcssa144, %.lcssa
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end7
  %.off = add i32 %.lcssa146, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  tail call fastcc void @expr_eliminate_dups1(i32 noundef %.lcssa146, ptr noundef nonnull %ep1.tr.ph, ptr noundef nonnull %ep1.tr.ph)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end10
  switch i32 %type, label %cleanup [
    i32 1, label %sw.bb13
    i32 2, label %sw.bb17
  ]

sw.bb13:                                          ; preds = %sw.epilog
  %11 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  %12 = load ptr, ptr %ep2.tr123.lcssa, align 8, !tbaa !10
  %call.i = tail call i32 @expr_eq(ptr noundef %11, ptr noundef %12) #14
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %expr_join_or.exit

if.end.i:                                         ; preds = %sw.bb13
  %13 = load i32, ptr %11, align 8, !tbaa !5
  switch i32 %13, label %cleanup [
    i32 4, label %if.end11.i
    i32 5, label %if.end11.i
    i32 11, label %if.end11.i
    i32 3, label %if.end11.i
  ]

if.end11.i:                                       ; preds = %if.end.i, %if.end.i, %if.end.i, %if.end.i
  %14 = load i32, ptr %12, align 8, !tbaa !5
  switch i32 %14, label %cleanup [
    i32 4, label %if.end24.i
    i32 5, label %if.end24.i
    i32 11, label %if.end24.i
    i32 3, label %if.end24.i
  ]

if.end24.i:                                       ; preds = %if.end11.i, %if.end11.i, %if.end11.i, %if.end11.i
  %cmp26.i = icmp eq i32 %13, 3
  br i1 %cmp26.i, label %if.then27.i, label %if.end40.i

if.then27.i:                                      ; preds = %if.end24.i
  %left.i = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %left.i, align 8, !tbaa !9
  %16 = load i32, ptr %15, align 8, !tbaa !5
  switch i32 %16, label %cleanup [
    i32 4, label %if.end40.i
    i32 5, label %if.end40.i
    i32 11, label %if.end40.i
  ]

if.end40.i:                                       ; preds = %if.then27.i, %if.then27.i, %if.then27.i, %if.end24.i
  %.pn211.i = phi ptr [ %15, %if.then27.i ], [ %15, %if.then27.i ], [ %15, %if.then27.i ], [ %11, %if.end24.i ]
  %sym1.0.in.i = getelementptr inbounds %struct.expr, ptr %.pn211.i, i64 0, i32 1
  %sym1.0.i = load ptr, ptr %sym1.0.in.i, align 8, !tbaa !9
  %cmp42.i = icmp eq i32 %14, 3
  br i1 %cmp42.i, label %if.then43.i, label %if.end53.i

if.then43.i:                                      ; preds = %if.end40.i
  %left44.i = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %left44.i, align 8, !tbaa !9
  %18 = load i32, ptr %17, align 8, !tbaa !5
  %cmp46.not.i = icmp eq i32 %18, 11
  br i1 %cmp46.not.i, label %if.end53.i, label %cleanup

if.end53.i:                                       ; preds = %if.then43.i, %if.end40.i
  %.pn.i = phi ptr [ %17, %if.then43.i ], [ %12, %if.end40.i ]
  %sym2.0.in.i = getelementptr inbounds %struct.expr, ptr %.pn.i, i64 0, i32 1
  %sym2.0.i = load ptr, ptr %sym2.0.in.i, align 8, !tbaa !9
  %cmp54.not.i = icmp eq ptr %sym1.0.i, %sym2.0.i
  br i1 %cmp54.not.i, label %if.end56.i, label %cleanup

if.end56.i:                                       ; preds = %if.end53.i
  %type57.i = getelementptr inbounds %struct.symbol, ptr %sym1.0.i, i64 0, i32 2
  %19 = load i32, ptr %type57.i, align 8, !tbaa !15
  %.off.i = add i32 %19, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end63.i, label %cleanup

if.end63.i:                                       ; preds = %if.end56.i
  %cmp65.i = icmp eq i32 %19, 2
  br i1 %cmp65.i, label %if.then66.i, label %if.then130.i

if.then66.i:                                      ; preds = %if.end63.i
  %cmp68.i = icmp eq i32 %13, 4
  %cmp71.i = icmp eq i32 %14, 4
  %or.cond227.i = select i1 %cmp68.i, i1 %cmp71.i, i1 false
  br i1 %or.cond227.i, label %land.lhs.true72.i, label %cleanup

land.lhs.true72.i:                                ; preds = %if.then66.i
  %right.i = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %right.i, align 8, !tbaa !9
  %cmp73.i = icmp eq ptr %20, @symbol_yes
  br i1 %cmp73.i, label %land.lhs.true74.i, label %lor.lhs.false.i

land.lhs.true74.i:                                ; preds = %land.lhs.true72.i
  %right75.i = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %right75.i, align 8, !tbaa !9
  %cmp76.i = icmp eq ptr %21, @symbol_mod
  br i1 %cmp76.i, label %if.then82.i, label %land.lhs.true93.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true72.i
  %cmp78.i = icmp eq ptr %20, @symbol_mod
  br i1 %cmp78.i, label %land.lhs.true79.i, label %lor.lhs.false96.i

land.lhs.true79.i:                                ; preds = %lor.lhs.false.i
  %right80.i = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 2
  %22 = load ptr, ptr %right80.i, align 8, !tbaa !9
  %cmp81.i = icmp eq ptr %22, @symbol_yes
  br i1 %cmp81.i, label %if.then82.i, label %land.lhs.true113.i

if.then82.i:                                      ; preds = %land.lhs.true79.i, %land.lhs.true74.i
  %call.i.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 5, ptr %call.i.i, align 8, !tbaa !5
  %left.i.i = getelementptr inbounds %struct.expr, ptr %call.i.i, i64 0, i32 1
  store ptr %sym1.0.i, ptr %left.i.i, align 8, !tbaa !9
  %right.i.i = getelementptr inbounds %struct.expr, ptr %call.i.i, i64 0, i32 2
  store ptr @symbol_no, ptr %right.i.i, align 8, !tbaa !9
  br label %cleanup.sink.split

land.lhs.true93.i:                                ; preds = %land.lhs.true74.i
  %cmp95.i = icmp eq ptr %21, @symbol_no
  br i1 %cmp95.i, label %if.then102.i, label %cleanup

lor.lhs.false96.i:                                ; preds = %lor.lhs.false.i
  %cmp98.i = icmp eq ptr %20, @symbol_no
  br i1 %cmp98.i, label %land.lhs.true99.i, label %cleanup

land.lhs.true99.i:                                ; preds = %lor.lhs.false96.i
  %right100.i = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %right100.i, align 8, !tbaa !9
  %cmp101.i = icmp eq ptr %23, @symbol_yes
  br i1 %cmp101.i, label %if.then102.i, label %land.lhs.true119.i

if.then102.i:                                     ; preds = %land.lhs.true99.i, %land.lhs.true93.i
  %call.i212.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 5, ptr %call.i212.i, align 8, !tbaa !5
  %left.i213.i = getelementptr inbounds %struct.expr, ptr %call.i212.i, i64 0, i32 1
  store ptr %sym1.0.i, ptr %left.i213.i, align 8, !tbaa !9
  %right.i214.i = getelementptr inbounds %struct.expr, ptr %call.i212.i, i64 0, i32 2
  store ptr @symbol_mod, ptr %right.i214.i, align 8, !tbaa !9
  br label %cleanup.sink.split

land.lhs.true113.i:                               ; preds = %land.lhs.true79.i
  %cmp115.i = icmp eq ptr %22, @symbol_no
  br i1 %cmp115.i, label %if.then122.i, label %cleanup

land.lhs.true119.i:                               ; preds = %land.lhs.true99.i
  %cmp121.i = icmp eq ptr %23, @symbol_mod
  br i1 %cmp121.i, label %if.then122.i, label %cleanup

if.then122.i:                                     ; preds = %land.lhs.true119.i, %land.lhs.true113.i
  %call.i215.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 5, ptr %call.i215.i, align 8, !tbaa !5
  %left.i216.i = getelementptr inbounds %struct.expr, ptr %call.i215.i, i64 0, i32 1
  store ptr %sym1.0.i, ptr %left.i216.i, align 8, !tbaa !9
  %right.i217.i = getelementptr inbounds %struct.expr, ptr %call.i215.i, i64 0, i32 2
  store ptr @symbol_yes, ptr %right.i217.i, align 8, !tbaa !9
  br label %cleanup.sink.split

if.then130.i:                                     ; preds = %if.end63.i
  br i1 %cmp26.i, label %land.lhs.true133.i, label %lor.lhs.false140.i

land.lhs.true133.i:                               ; preds = %if.then130.i
  %left134.i = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 1
  %24 = load ptr, ptr %left134.i, align 8, !tbaa !9
  %25 = load i32, ptr %24, align 8, !tbaa !5
  %cmp136.i = icmp eq i32 %25, 11
  %cmp139.i = icmp eq i32 %14, 11
  %or.cond.i = select i1 %cmp136.i, i1 %cmp139.i, i1 false
  br i1 %or.cond.i, label %if.then150.i, label %lor.lhs.false140.i

lor.lhs.false140.i:                               ; preds = %land.lhs.true133.i, %if.then130.i
  br i1 %cmp42.i, label %land.lhs.true143.i, label %cleanup

land.lhs.true143.i:                               ; preds = %lor.lhs.false140.i
  %left144.i = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 1
  %26 = load ptr, ptr %left144.i, align 8, !tbaa !9
  %27 = load i32, ptr %26, align 8, !tbaa !5
  %cmp146.i = icmp eq i32 %27, 11
  %cmp149.i = icmp eq i32 %13, 11
  %or.cond226.i = select i1 %cmp146.i, i1 %cmp149.i, i1 false
  br i1 %or.cond226.i, label %if.then150.i, label %cleanup

if.then150.i:                                     ; preds = %land.lhs.true143.i, %land.lhs.true133.i
  %call.i218.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i218.i, align 8, !tbaa !5
  %left.i219.i = getelementptr inbounds %struct.expr, ptr %call.i218.i, i64 0, i32 1
  store ptr @symbol_yes, ptr %left.i219.i, align 8, !tbaa !9
  br label %cleanup.sink.split

expr_join_or.exit:                                ; preds = %sw.bb13
  %call1.i = tail call ptr @expr_copy(ptr noundef %11) #14
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %cleanup, label %cleanup.sink.split

sw.bb17:                                          ; preds = %sw.epilog
  %28 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  %29 = load ptr, ptr %ep2.tr123.lcssa, align 8, !tbaa !10
  %call.i63 = tail call i32 @expr_eq(ptr noundef %28, ptr noundef %29) #14
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i67, label %expr_join_and.exit

if.end.i67:                                       ; preds = %sw.bb17
  %30 = load i32, ptr %28, align 8, !tbaa !5
  switch i32 %30, label %cleanup [
    i32 4, label %if.end11.i68
    i32 5, label %if.end11.i68
    i32 11, label %if.end11.i68
    i32 3, label %if.end11.i68
  ]

if.end11.i68:                                     ; preds = %if.end.i67, %if.end.i67, %if.end.i67, %if.end.i67
  %31 = load i32, ptr %29, align 8, !tbaa !5
  switch i32 %31, label %cleanup [
    i32 4, label %if.end24.i70
    i32 5, label %if.end24.i70
    i32 11, label %if.end24.i70
    i32 3, label %if.end24.i70
  ]

if.end24.i70:                                     ; preds = %if.end11.i68, %if.end11.i68, %if.end11.i68, %if.end11.i68
  %cmp26.i69 = icmp eq i32 %30, 3
  br i1 %cmp26.i69, label %if.then27.i72, label %if.end40.i76

if.then27.i72:                                    ; preds = %if.end24.i70
  %left.i71 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %left.i71, align 8, !tbaa !9
  %33 = load i32, ptr %32, align 8, !tbaa !5
  switch i32 %33, label %cleanup [
    i32 4, label %if.end40.i76
    i32 5, label %if.end40.i76
    i32 11, label %if.end40.i76
  ]

if.end40.i76:                                     ; preds = %if.then27.i72, %if.then27.i72, %if.then27.i72, %if.end24.i70
  %.pn370.i = phi ptr [ %32, %if.then27.i72 ], [ %32, %if.then27.i72 ], [ %32, %if.then27.i72 ], [ %28, %if.end24.i70 ]
  %sym1.0.in.i73 = getelementptr inbounds %struct.expr, ptr %.pn370.i, i64 0, i32 1
  %sym1.0.i74 = load ptr, ptr %sym1.0.in.i73, align 8, !tbaa !9
  %cmp42.i75 = icmp eq i32 %31, 3
  br i1 %cmp42.i75, label %if.then43.i79, label %if.end53.i84

if.then43.i79:                                    ; preds = %if.end40.i76
  %left44.i77 = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %left44.i77, align 8, !tbaa !9
  %35 = load i32, ptr %34, align 8, !tbaa !5
  %cmp46.not.i78 = icmp eq i32 %35, 11
  br i1 %cmp46.not.i78, label %if.end53.i84, label %cleanup

if.end53.i84:                                     ; preds = %if.then43.i79, %if.end40.i76
  %.pn.i80 = phi ptr [ %34, %if.then43.i79 ], [ %29, %if.end40.i76 ]
  %sym2.0.in.i81 = getelementptr inbounds %struct.expr, ptr %.pn.i80, i64 0, i32 1
  %sym2.0.i82 = load ptr, ptr %sym2.0.in.i81, align 8, !tbaa !9
  %cmp54.not.i83 = icmp eq ptr %sym1.0.i74, %sym2.0.i82
  br i1 %cmp54.not.i83, label %if.end56.i88, label %cleanup

if.end56.i88:                                     ; preds = %if.end53.i84
  %type57.i85 = getelementptr inbounds %struct.symbol, ptr %sym1.0.i74, i64 0, i32 2
  %36 = load i32, ptr %type57.i85, align 8, !tbaa !15
  %.off.i86 = add i32 %36, -1
  %switch.i87 = icmp ult i32 %.off.i86, 2
  br i1 %switch.i87, label %if.end63.i90, label %cleanup

if.end63.i90:                                     ; preds = %if.end56.i88
  %cmp65.i89 = icmp eq i32 %30, 11
  br i1 %cmp65.i89, label %land.lhs.true66.i, label %lor.lhs.false.i92

land.lhs.true66.i:                                ; preds = %if.end63.i90
  switch i32 %31, label %if.end121.i [
    i32 4, label %land.lhs.true69.i
    i32 5, label %land.lhs.true87.i
  ]

land.lhs.true69.i:                                ; preds = %land.lhs.true66.i
  %right.i91 = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %37 = load ptr, ptr %right.i91, align 8, !tbaa !9
  %cmp70.i = icmp eq ptr %37, @symbol_yes
  br i1 %cmp70.i, label %if.then79.i, label %if.end121.i

lor.lhs.false.i92:                                ; preds = %if.end63.i90
  %cmp72.i = icmp eq i32 %31, 11
  br i1 %cmp72.i, label %land.lhs.true73.i, label %if.end121.i

land.lhs.true73.i:                                ; preds = %lor.lhs.false.i92
  switch i32 %30, label %if.end121.i [
    i32 4, label %land.lhs.true76.i
    i32 5, label %land.lhs.true96.i
  ]

land.lhs.true76.i:                                ; preds = %land.lhs.true73.i
  %right77.i = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %38 = load ptr, ptr %right77.i, align 8, !tbaa !9
  %cmp78.i93 = icmp eq ptr %38, @symbol_yes
  br i1 %cmp78.i93, label %if.then79.i, label %cleanup

if.then79.i:                                      ; preds = %land.lhs.true76.i, %land.lhs.true69.i
  %call.i.i94 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %call.i.i94, align 8, !tbaa !5
  %left.i.i95 = getelementptr inbounds %struct.expr, ptr %call.i.i94, i64 0, i32 1
  store ptr %sym1.0.i74, ptr %left.i.i95, align 8, !tbaa !9
  %right.i.i96 = getelementptr inbounds %struct.expr, ptr %call.i.i94, i64 0, i32 2
  store ptr @symbol_yes, ptr %right.i.i96, align 8, !tbaa !9
  br label %cleanup.sink.split

land.lhs.true87.i:                                ; preds = %land.lhs.true66.i
  %right88.i = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %39 = load ptr, ptr %right88.i, align 8, !tbaa !9
  %cmp89.i = icmp eq ptr %39, @symbol_no
  br i1 %cmp89.i, label %if.then99.i, label %land.lhs.true107.i

land.lhs.true96.i:                                ; preds = %land.lhs.true73.i
  %right97.i = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %right97.i, align 8, !tbaa !9
  %cmp98.i97 = icmp eq ptr %40, @symbol_no
  br i1 %cmp98.i97, label %if.then99.i, label %land.lhs.true116.i

if.then99.i:                                      ; preds = %land.lhs.true96.i, %land.lhs.true87.i
  %call.i371.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i371.i, align 8, !tbaa !5
  %left.i372.i = getelementptr inbounds %struct.expr, ptr %call.i371.i, i64 0, i32 1
  store ptr %sym1.0.i74, ptr %left.i372.i, align 8, !tbaa !9
  br label %cleanup.sink.split

land.lhs.true107.i:                               ; preds = %land.lhs.true87.i
  %cmp109.i = icmp eq ptr %39, @symbol_mod
  br i1 %cmp109.i, label %if.then119.i, label %if.end121.i

land.lhs.true116.i:                               ; preds = %land.lhs.true96.i
  %cmp118.i = icmp eq ptr %40, @symbol_mod
  br i1 %cmp118.i, label %if.then119.i, label %if.end121.i

if.then119.i:                                     ; preds = %land.lhs.true116.i, %land.lhs.true107.i
  %call.i373.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %call.i373.i, align 8, !tbaa !5
  %left.i374.i = getelementptr inbounds %struct.expr, ptr %call.i373.i, i64 0, i32 1
  store ptr %sym1.0.i74, ptr %left.i374.i, align 8, !tbaa !9
  %right.i375.i = getelementptr inbounds %struct.expr, ptr %call.i373.i, i64 0, i32 2
  store ptr @symbol_yes, ptr %right.i375.i, align 8, !tbaa !9
  br label %cleanup.sink.split

if.end121.i:                                      ; preds = %land.lhs.true116.i, %land.lhs.true107.i, %land.lhs.true73.i, %lor.lhs.false.i92, %land.lhs.true69.i, %land.lhs.true66.i
  %cmp123.i = icmp eq i32 %36, 2
  br i1 %cmp123.i, label %if.then124.i, label %cleanup

if.then124.i:                                     ; preds = %if.end121.i
  switch i32 %30, label %cleanup [
    i32 4, label %land.lhs.true127.i
    i32 5, label %land.lhs.true147.i
  ]

land.lhs.true127.i:                               ; preds = %if.then124.i
  %cmp129.i = icmp eq i32 %31, 5
  br i1 %cmp129.i, label %if.then130.i98, label %cleanup

if.then130.i98:                                   ; preds = %land.lhs.true127.i
  %right131.i = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %41 = load ptr, ptr %right131.i, align 8, !tbaa !9
  %right132.i = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %42 = load ptr, ptr %right132.i, align 8, !tbaa !9
  %flags.i = getelementptr inbounds %struct.symbol, ptr %42, i64 0, i32 6
  %43 = load i32, ptr %flags.i, align 4, !tbaa !19
  %and.i = and i32 %43, 1
  %tobool133.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool133.not.i, label %cleanup, label %land.lhs.true134.i

land.lhs.true134.i:                               ; preds = %if.then130.i98
  %flags135.i = getelementptr inbounds %struct.symbol, ptr %41, i64 0, i32 6
  %44 = load i32, ptr %flags135.i, align 4, !tbaa !19
  %and136.i = and i32 %44, 1
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %cleanup, label %if.then138.i

if.then138.i:                                     ; preds = %land.lhs.true134.i
  %cmp140.not.i = icmp eq ptr %41, %42
  %call.i379.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  br i1 %cmp140.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then138.i
  store i32 4, ptr %call.i379.i, align 8, !tbaa !5
  %left.i377.i = getelementptr inbounds %struct.expr, ptr %call.i379.i, i64 0, i32 1
  store ptr %sym1.0.i74, ptr %left.i377.i, align 8, !tbaa !9
  %right.i378.i = getelementptr inbounds %struct.expr, ptr %call.i379.i, i64 0, i32 2
  store ptr %41, ptr %right.i378.i, align 8, !tbaa !9
  br label %cleanup.sink.split

cond.false.i:                                     ; preds = %if.then138.i
  store i32 11, ptr %call.i379.i, align 8, !tbaa !5
  %left.i380.i = getelementptr inbounds %struct.expr, ptr %call.i379.i, i64 0, i32 1
  store ptr @symbol_no, ptr %left.i380.i, align 8, !tbaa !9
  br label %cleanup.sink.split

land.lhs.true147.i:                               ; preds = %if.then124.i
  switch i32 %31, label %cleanup [
    i32 4, label %if.then150.i99
    i32 5, label %land.lhs.true176.i
  ]

if.then150.i99:                                   ; preds = %land.lhs.true147.i
  %right151.i = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %45 = load ptr, ptr %right151.i, align 8, !tbaa !9
  %right152.i = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %46 = load ptr, ptr %right152.i, align 8, !tbaa !9
  %flags153.i = getelementptr inbounds %struct.symbol, ptr %46, i64 0, i32 6
  %47 = load i32, ptr %flags153.i, align 4, !tbaa !19
  %and154.i = and i32 %47, 1
  %tobool155.not.i = icmp eq i32 %and154.i, 0
  br i1 %tobool155.not.i, label %cleanup, label %land.lhs.true156.i

land.lhs.true156.i:                               ; preds = %if.then150.i99
  %flags157.i = getelementptr inbounds %struct.symbol, ptr %45, i64 0, i32 6
  %48 = load i32, ptr %flags157.i, align 4, !tbaa !19
  %and158.i = and i32 %48, 1
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  br i1 %tobool159.not.i, label %cleanup, label %if.then160.i

if.then160.i:                                     ; preds = %land.lhs.true156.i
  %cmp162.not.i = icmp eq ptr %45, %46
  %call.i384.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  br i1 %cmp162.not.i, label %cond.false165.i, label %cond.true163.i

cond.true163.i:                                   ; preds = %if.then160.i
  store i32 4, ptr %call.i384.i, align 8, !tbaa !5
  %left.i382.i = getelementptr inbounds %struct.expr, ptr %call.i384.i, i64 0, i32 1
  store ptr %sym1.0.i74, ptr %left.i382.i, align 8, !tbaa !9
  %right.i383.i = getelementptr inbounds %struct.expr, ptr %call.i384.i, i64 0, i32 2
  store ptr %45, ptr %right.i383.i, align 8, !tbaa !9
  br label %cleanup.sink.split

cond.false165.i:                                  ; preds = %if.then160.i
  store i32 11, ptr %call.i384.i, align 8, !tbaa !5
  %left.i385.i = getelementptr inbounds %struct.expr, ptr %call.i384.i, i64 0, i32 1
  store ptr @symbol_no, ptr %left.i385.i, align 8, !tbaa !9
  br label %cleanup.sink.split

land.lhs.true176.i:                               ; preds = %land.lhs.true147.i
  %right177.i = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %49 = load ptr, ptr %right177.i, align 8, !tbaa !9
  %cmp178.i = icmp eq ptr %49, @symbol_yes
  br i1 %cmp178.i, label %land.lhs.true179.i, label %lor.lhs.false182.i

land.lhs.true179.i:                               ; preds = %land.lhs.true176.i
  %right180.i = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %50 = load ptr, ptr %right180.i, align 8, !tbaa !9
  %cmp181.i = icmp eq ptr %50, @symbol_no
  br i1 %cmp181.i, label %if.then188.i, label %land.lhs.true199.i

lor.lhs.false182.i:                               ; preds = %land.lhs.true176.i
  %cmp184.i = icmp eq ptr %49, @symbol_no
  br i1 %cmp184.i, label %land.lhs.true185.i, label %lor.lhs.false202.i

land.lhs.true185.i:                               ; preds = %lor.lhs.false182.i
  %right186.i = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %51 = load ptr, ptr %right186.i, align 8, !tbaa !9
  %cmp187.i = icmp eq ptr %51, @symbol_yes
  br i1 %cmp187.i, label %if.then188.i, label %land.lhs.true225.i

if.then188.i:                                     ; preds = %land.lhs.true185.i, %land.lhs.true179.i
  %call.i386.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %call.i386.i, align 8, !tbaa !5
  %left.i387.i = getelementptr inbounds %struct.expr, ptr %call.i386.i, i64 0, i32 1
  store ptr %sym1.0.i74, ptr %left.i387.i, align 8, !tbaa !9
  %right.i388.i = getelementptr inbounds %struct.expr, ptr %call.i386.i, i64 0, i32 2
  store ptr @symbol_mod, ptr %right.i388.i, align 8, !tbaa !9
  br label %cleanup.sink.split

land.lhs.true199.i:                               ; preds = %land.lhs.true179.i
  %cmp201.i = icmp eq ptr %50, @symbol_mod
  br i1 %cmp201.i, label %if.then208.i, label %cleanup

lor.lhs.false202.i:                               ; preds = %lor.lhs.false182.i
  %cmp204.i = icmp eq ptr %49, @symbol_mod
  br i1 %cmp204.i, label %land.lhs.true205.i, label %cleanup

land.lhs.true205.i:                               ; preds = %lor.lhs.false202.i
  %right206.i = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %52 = load ptr, ptr %right206.i, align 8, !tbaa !9
  %cmp207.i = icmp eq ptr %52, @symbol_yes
  br i1 %cmp207.i, label %if.then208.i, label %land.lhs.true219.i

if.then208.i:                                     ; preds = %land.lhs.true205.i, %land.lhs.true199.i
  %call.i389.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %call.i389.i, align 8, !tbaa !5
  %left.i390.i = getelementptr inbounds %struct.expr, ptr %call.i389.i, i64 0, i32 1
  store ptr %sym1.0.i74, ptr %left.i390.i, align 8, !tbaa !9
  %right.i391.i = getelementptr inbounds %struct.expr, ptr %call.i389.i, i64 0, i32 2
  store ptr @symbol_no, ptr %right.i391.i, align 8, !tbaa !9
  br label %cleanup.sink.split

land.lhs.true219.i:                               ; preds = %land.lhs.true205.i
  %cmp221.i = icmp eq ptr %52, @symbol_no
  br i1 %cmp221.i, label %if.then228.i, label %cleanup

land.lhs.true225.i:                               ; preds = %land.lhs.true185.i
  %cmp227.i = icmp eq ptr %51, @symbol_mod
  br i1 %cmp227.i, label %if.then228.i, label %cleanup

if.then228.i:                                     ; preds = %land.lhs.true225.i, %land.lhs.true219.i
  %call.i392.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 4, ptr %call.i392.i, align 8, !tbaa !5
  %left.i393.i = getelementptr inbounds %struct.expr, ptr %call.i392.i, i64 0, i32 1
  store ptr %sym1.0.i74, ptr %left.i393.i, align 8, !tbaa !9
  %right.i394.i = getelementptr inbounds %struct.expr, ptr %call.i392.i, i64 0, i32 2
  store ptr @symbol_yes, ptr %right.i394.i, align 8, !tbaa !9
  br label %cleanup.sink.split

expr_join_and.exit:                               ; preds = %sw.bb17
  %call1.i65 = tail call ptr @expr_copy(ptr noundef %28) #14
  %tobool19.not = icmp eq ptr %call1.i65, null
  br i1 %tobool19.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %expr_join_and.exit, %if.then228.i, %if.then208.i, %if.then188.i, %cond.false165.i, %cond.true163.i, %cond.false.i, %cond.true.i, %if.then119.i, %if.then99.i, %if.then79.i, %expr_join_or.exit, %if.then150.i, %if.then122.i, %if.then102.i, %if.then82.i
  %symbol_no.sink = phi ptr [ @symbol_no, %if.then150.i ], [ @symbol_no, %if.then122.i ], [ @symbol_no, %if.then102.i ], [ @symbol_no, %if.then82.i ], [ @symbol_no, %expr_join_or.exit ], [ @symbol_yes, %cond.false165.i ], [ @symbol_yes, %cond.true163.i ], [ @symbol_yes, %cond.false.i ], [ @symbol_yes, %cond.true.i ], [ @symbol_yes, %if.then228.i ], [ @symbol_yes, %if.then208.i ], [ @symbol_yes, %if.then188.i ], [ @symbol_yes, %if.then119.i ], [ @symbol_yes, %if.then99.i ], [ @symbol_yes, %if.then79.i ], [ @symbol_yes, %expr_join_and.exit ]
  %retval.0.i109.sink = phi ptr [ %call.i218.i, %if.then150.i ], [ %call.i215.i, %if.then122.i ], [ %call.i212.i, %if.then102.i ], [ %call.i.i, %if.then82.i ], [ %call1.i, %expr_join_or.exit ], [ %call.i384.i, %cond.false165.i ], [ %call.i384.i, %cond.true163.i ], [ %call.i379.i, %cond.false.i ], [ %call.i379.i, %cond.true.i ], [ %call.i392.i, %if.then228.i ], [ %call.i389.i, %if.then208.i ], [ %call.i386.i, %if.then188.i ], [ %call.i373.i, %if.then119.i ], [ %call.i371.i, %if.then99.i ], [ %call.i.i94, %if.then79.i ], [ %call1.i65, %expr_join_and.exit ]
  %53 = load ptr, ptr %ep1.tr.ph, align 8, !tbaa !10
  tail call void @expr_free(ptr noundef %53)
  %54 = load ptr, ptr %ep2.tr123.lcssa, align 8, !tbaa !10
  tail call void @expr_free(ptr noundef %54)
  %call.i101 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i101, align 8, !tbaa !5
  %left.i62 = getelementptr inbounds %struct.expr, ptr %call.i101, i64 0, i32 1
  store ptr %symbol_no.sink, ptr %left.i62, align 8, !tbaa !9
  store ptr %call.i101, ptr %ep1.tr.ph, align 8, !tbaa !10
  store ptr %retval.0.i109.sink, ptr %ep2.tr123.lcssa, align 8, !tbaa !10
  %55 = load i32, ptr @trans_count, align 4, !tbaa !12
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr @trans_count, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %expr_join_and.exit, %land.lhs.true225.i, %land.lhs.true219.i, %lor.lhs.false202.i, %land.lhs.true199.i, %land.lhs.true156.i, %if.then150.i99, %land.lhs.true147.i, %land.lhs.true134.i, %if.then130.i98, %land.lhs.true127.i, %if.then124.i, %if.end121.i, %land.lhs.true76.i, %if.end56.i88, %if.end53.i84, %if.then43.i79, %if.then27.i72, %if.end11.i68, %if.end.i67, %expr_join_or.exit, %land.lhs.true143.i, %lor.lhs.false140.i, %land.lhs.true119.i, %land.lhs.true113.i, %lor.lhs.false96.i, %land.lhs.true93.i, %if.then66.i, %if.end56.i, %if.end53.i, %if.then43.i, %if.then27.i, %if.end11.i, %if.end.i, %sw.epilog, %if.end7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_transform(ptr noundef %e) local_unnamed_addr #0 {
entry:
  %tobool.not245 = icmp eq ptr %e, null
  br i1 %tobool.not245, label %cleanup, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %sw.bb68, %entry
  %e.tr.ph246 = phi ptr [ %14, %sw.bb68 ], [ %e, %entry ]
  %left = getelementptr inbounds %struct.expr, ptr %e.tr.ph246, i64 0, i32 1
  %right = getelementptr inbounds %struct.expr, ptr %e.tr.ph246, i64 0, i32 2
  br label %if.end

if.end:                                           ; preds = %tailrecurse.backedge, %if.end.lr.ph
  %0 = load i32, ptr %e.tr.ph246, align 8, !tbaa !5
  %.off = add i32 %0, -4
  %switch = icmp ult i32 %.off, 8
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  %call = tail call ptr @expr_transform(ptr noundef %1)
  store ptr %call, ptr %left, align 8, !tbaa !9
  %2 = load ptr, ptr %right, align 8, !tbaa !9
  %call2 = tail call ptr @expr_transform(ptr noundef %2)
  store ptr %call2, ptr %right, align 8, !tbaa !9
  %.pr = load i32, ptr %e.tr.ph246, align 8, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %3 = phi i32 [ %0, %if.end ], [ %.pr, %sw.default ]
  switch i32 %3, label %cleanup [
    i32 4, label %sw.bb5
    i32 5, label %sw.bb34
    i32 3, label %sw.bb65
  ]

sw.bb5:                                           ; preds = %sw.epilog
  %4 = load ptr, ptr %left, align 8, !tbaa !9
  %type7 = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %type7, align 8, !tbaa !15
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %sw.bb5
  %6 = load ptr, ptr %right, align 8, !tbaa !9
  %cmp11 = icmp eq ptr %6, @symbol_no
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end9
  store i32 3, ptr %e.tr.ph246, align 8, !tbaa !5
  %call.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i, align 8, !tbaa !5
  %left.i = getelementptr inbounds %struct.expr, ptr %call.i, i64 0, i32 1
  store ptr %4, ptr %left.i, align 8, !tbaa !9
  store ptr %call.i, ptr %left, align 8, !tbaa !9
  store ptr null, ptr %right, align 8, !tbaa !9
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %cmp20 = icmp eq ptr %6, @symbol_mod
  br i1 %cmp20, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.end18
  %name = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %name, align 8, !tbaa !20
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, ptr noundef %7)
  store i32 11, ptr %e.tr.ph246, align 8, !tbaa !5
  store ptr @symbol_no, ptr %left, align 8, !tbaa !9
  store ptr null, ptr %right, align 8, !tbaa !9
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %cmp29 = icmp eq ptr %6, @symbol_yes
  br i1 %cmp29, label %if.then30, label %cleanup

if.then30:                                        ; preds = %if.end27
  store i32 11, ptr %e.tr.ph246, align 8, !tbaa !5
  store ptr null, ptr %right, align 8, !tbaa !9
  br label %cleanup

sw.bb34:                                          ; preds = %sw.epilog
  %8 = load ptr, ptr %left, align 8, !tbaa !9
  %type36 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %type36, align 8, !tbaa !15
  %cmp37.not = icmp eq i32 %9, 1
  br i1 %cmp37.not, label %if.end39, label %cleanup

if.end39:                                         ; preds = %sw.bb34
  %10 = load ptr, ptr %right, align 8, !tbaa !9
  %cmp41 = icmp eq ptr %10, @symbol_no
  br i1 %cmp41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end39
  store i32 11, ptr %e.tr.ph246, align 8, !tbaa !5
  store ptr null, ptr %right, align 8, !tbaa !9
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %cmp47 = icmp eq ptr %10, @symbol_mod
  br i1 %cmp47, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end45
  %name50 = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %name50, align 8, !tbaa !20
  %call51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, ptr noundef %11)
  store i32 11, ptr %e.tr.ph246, align 8, !tbaa !5
  store ptr @symbol_yes, ptr %left, align 8, !tbaa !9
  store ptr null, ptr %right, align 8, !tbaa !9
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %cmp57 = icmp eq ptr %10, @symbol_yes
  br i1 %cmp57, label %if.then58, label %cleanup

if.then58:                                        ; preds = %if.end55
  store i32 3, ptr %e.tr.ph246, align 8, !tbaa !5
  %call.i226 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i226, align 8, !tbaa !5
  %left.i227 = getelementptr inbounds %struct.expr, ptr %call.i226, i64 0, i32 1
  store ptr %8, ptr %left.i227, align 8, !tbaa !9
  store ptr %call.i226, ptr %left, align 8, !tbaa !9
  store ptr null, ptr %right, align 8, !tbaa !9
  br label %cleanup

sw.bb65:                                          ; preds = %sw.epilog
  %12 = load ptr, ptr %left, align 8, !tbaa !9
  %13 = load i32, ptr %12, align 8, !tbaa !5
  switch i32 %13, label %cleanup [
    i32 3, label %sw.bb68
    i32 4, label %sw.bb73
    i32 5, label %sw.bb73
    i32 7, label %sw.bb78
    i32 9, label %sw.bb78
    i32 6, label %sw.bb84
    i32 8, label %sw.bb84
    i32 1, label %sw.bb90
    i32 2, label %tailrecurse.backedge
    i32 11, label %sw.bb108
  ]

sw.bb68:                                          ; preds = %sw.bb65
  %left70 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %left70, align 8, !tbaa !9
  tail call void @free(ptr noundef nonnull %12) #14
  tail call void @free(ptr noundef nonnull %e.tr.ph246) #14
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %cleanup, label %if.end.lr.ph

sw.bb73:                                          ; preds = %sw.bb65, %sw.bb65
  tail call void @free(ptr noundef nonnull %e.tr.ph246) #14
  %15 = load i32, ptr %12, align 8, !tbaa !5
  %cmp76 = icmp eq i32 %15, 4
  %cond = select i1 %cmp76, i32 5, i32 4
  store i32 %cond, ptr %12, align 8, !tbaa !5
  br label %cleanup

sw.bb78:                                          ; preds = %sw.bb65, %sw.bb65
  tail call void @free(ptr noundef nonnull %e.tr.ph246) #14
  %16 = load i32, ptr %12, align 8, !tbaa !5
  %cmp81 = icmp eq i32 %16, 7
  %cond82 = select i1 %cmp81, i32 8, i32 6
  store i32 %cond82, ptr %12, align 8, !tbaa !5
  br label %cleanup

sw.bb84:                                          ; preds = %sw.bb65, %sw.bb65
  tail call void @free(ptr noundef nonnull %e.tr.ph246) #14
  %17 = load i32, ptr %12, align 8, !tbaa !5
  %cmp87 = icmp eq i32 %17, 6
  %cond88 = select i1 %cmp87, i32 9, i32 7
  store i32 %cond88, ptr %12, align 8, !tbaa !5
  br label %cleanup

sw.bb90:                                          ; preds = %sw.bb65
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %sw.bb90, %sw.bb65
  %.sink = phi i32 [ 2, %sw.bb90 ], [ 1, %sw.bb65 ]
  store i32 %.sink, ptr %e.tr.ph246, align 8, !tbaa !5
  %right93 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %right93, align 8, !tbaa !9
  %call.i228 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %call.i228, align 8, !tbaa !5
  %left.i229 = getelementptr inbounds %struct.expr, ptr %call.i228, i64 0, i32 1
  store ptr %18, ptr %left.i229, align 8, !tbaa !9
  store ptr %call.i228, ptr %right, align 8, !tbaa !9
  store i32 3, ptr %12, align 8, !tbaa !5
  store ptr null, ptr %right93, align 8, !tbaa !9
  br label %if.end

sw.bb108:                                         ; preds = %sw.bb65
  %left110 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 1
  %19 = load ptr, ptr %left110, align 8, !tbaa !9
  %cmp111 = icmp eq ptr %19, @symbol_yes
  br i1 %cmp111, label %if.then112, label %if.end116

if.then112:                                       ; preds = %sw.bb108
  tail call void @free(ptr noundef nonnull %e.tr.ph246) #14
  store i32 11, ptr %12, align 8, !tbaa !5
  store ptr @symbol_no, ptr %left110, align 8, !tbaa !9
  br label %cleanup

if.end116:                                        ; preds = %sw.bb108
  %cmp119 = icmp eq ptr %19, @symbol_mod
  br i1 %cmp119, label %if.then120, label %if.end124

if.then120:                                       ; preds = %if.end116
  tail call void @free(ptr noundef nonnull %e.tr.ph246) #14
  store i32 11, ptr %12, align 8, !tbaa !5
  store ptr @symbol_mod, ptr %left110, align 8, !tbaa !9
  br label %cleanup

if.end124:                                        ; preds = %if.end116
  %cmp127 = icmp eq ptr %19, @symbol_no
  br i1 %cmp127, label %if.then128, label %cleanup

if.then128:                                       ; preds = %if.end124
  tail call void @free(ptr noundef nonnull %e.tr.ph246) #14
  store i32 11, ptr %12, align 8, !tbaa !5
  store ptr @symbol_yes, ptr %left110, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %if.end124, %if.then120, %if.then112, %sw.bb84, %sw.bb78, %sw.bb73, %sw.bb68, %sw.bb65, %if.then58, %if.end55, %if.then48, %if.then42, %sw.bb34, %if.then30, %if.end27, %if.then21, %if.then12, %sw.bb5, %sw.epilog, %entry
  %retval.0 = phi ptr [ %12, %if.then112 ], [ %12, %if.then120 ], [ %12, %if.then128 ], [ %e.tr.ph246, %if.end124 ], [ %12, %sw.bb84 ], [ %12, %sw.bb78 ], [ %12, %sw.bb73 ], [ %e.tr.ph246, %sw.bb34 ], [ %e.tr.ph246, %if.then42 ], [ %e.tr.ph246, %if.then48 ], [ %e.tr.ph246, %if.then58 ], [ %e.tr.ph246, %if.end55 ], [ %e.tr.ph246, %sw.bb5 ], [ %e.tr.ph246, %if.then12 ], [ %e.tr.ph246, %if.then21 ], [ %e.tr.ph246, %if.then30 ], [ %e.tr.ph246, %if.end27 ], [ null, %entry ], [ %e.tr.ph246, %sw.bb65 ], [ %e.tr.ph246, %sw.epilog ], [ null, %sw.bb68 ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind readonly uwtable
define dso_local i32 @expr_contains_symbol(ptr noundef readonly %dep, ptr noundef readnone %sym) local_unnamed_addr #7 {
entry:
  %tobool.not35 = icmp eq ptr %dep, null
  br i1 %tobool.not35, label %common.ret, label %if.end

if.end:                                           ; preds = %sw.bb16, %entry
  %dep.tr36 = phi ptr [ %6, %sw.bb16 ], [ %dep, %entry ]
  %0 = load i32, ptr %dep.tr36, align 8, !tbaa !5
  switch i32 %0, label %common.ret [
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 11, label %sw.bb4
    i32 4, label %sw.bb6
    i32 9, label %sw.bb6
    i32 8, label %sw.bb6
    i32 7, label %sw.bb6
    i32 6, label %sw.bb6
    i32 5, label %sw.bb6
    i32 3, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %left = getelementptr inbounds %struct.expr, ptr %dep.tr36, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  %call = tail call i32 @expr_contains_symbol(ptr noundef %1, ptr noundef %sym)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %lor.rhs, label %common.ret

common.ret:                                       ; preds = %sw.bb16, %lor.rhs10, %sw.bb6, %sw.bb4, %lor.rhs, %sw.bb, %if.end, %entry
  %common.ret.op.shrunk = phi i1 [ %tobool3, %lor.rhs ], [ %cmp, %sw.bb4 ], [ true, %sw.bb ], [ true, %sw.bb6 ], [ %cmp12, %lor.rhs10 ], [ false, %entry ], [ false, %sw.bb16 ], [ false, %if.end ]
  %common.ret.op = zext i1 %common.ret.op.shrunk to i32
  ret i32 %common.ret.op

lor.rhs:                                          ; preds = %sw.bb
  %right = getelementptr inbounds %struct.expr, ptr %dep.tr36, i64 0, i32 2
  %2 = load ptr, ptr %right, align 8, !tbaa !9
  %call2 = tail call i32 @expr_contains_symbol(ptr noundef %2, ptr noundef %sym)
  %tobool3 = icmp ne i32 %call2, 0
  br label %common.ret

sw.bb4:                                           ; preds = %if.end
  %left5 = getelementptr inbounds %struct.expr, ptr %dep.tr36, i64 0, i32 1
  %3 = load ptr, ptr %left5, align 8, !tbaa !9
  %cmp = icmp eq ptr %3, %sym
  br label %common.ret

sw.bb6:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %left7 = getelementptr inbounds %struct.expr, ptr %dep.tr36, i64 0, i32 1
  %4 = load ptr, ptr %left7, align 8, !tbaa !9
  %cmp8 = icmp eq ptr %4, %sym
  br i1 %cmp8, label %common.ret, label %lor.rhs10

lor.rhs10:                                        ; preds = %sw.bb6
  %right11 = getelementptr inbounds %struct.expr, ptr %dep.tr36, i64 0, i32 2
  %5 = load ptr, ptr %right11, align 8, !tbaa !9
  %cmp12 = icmp eq ptr %5, %sym
  br label %common.ret

sw.bb16:                                          ; preds = %if.end
  %left17 = getelementptr inbounds %struct.expr, ptr %dep.tr36, i64 0, i32 1
  %6 = load ptr, ptr %left17, align 8, !tbaa !9
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %common.ret, label %if.end
}

; Function Attrs: argmemonly nofree nosync nounwind readonly uwtable
define dso_local zeroext i1 @expr_depends_symbol(ptr noundef readonly %dep, ptr noundef %sym) local_unnamed_addr #7 {
entry:
  %tobool.not41 = icmp eq ptr %dep, null
  br i1 %tobool.not41, label %return, label %if.end

if.end:                                           ; preds = %lor.rhs, %entry
  %dep.tr42 = phi ptr [ %2, %lor.rhs ], [ %dep, %entry ]
  %0 = load i32, ptr %dep.tr42, align 8, !tbaa !5
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 11, label %sw.bb2
    i32 4, label %sw.bb4
    i32 5, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  %left = getelementptr inbounds %struct.expr, ptr %dep.tr42, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  %call = tail call zeroext i1 @expr_depends_symbol(ptr noundef %1, ptr noundef %sym)
  br i1 %call, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb
  %right = getelementptr inbounds %struct.expr, ptr %dep.tr42, i64 0, i32 2
  %2 = load ptr, ptr %right, align 8, !tbaa !9
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %return, label %if.end

sw.bb2:                                           ; preds = %if.end
  %left3 = getelementptr inbounds %struct.expr, ptr %dep.tr42, i64 0, i32 1
  %3 = load ptr, ptr %left3, align 8, !tbaa !9
  %cmp = icmp eq ptr %3, %sym
  br label %return

sw.bb4:                                           ; preds = %if.end
  %left5 = getelementptr inbounds %struct.expr, ptr %dep.tr42, i64 0, i32 1
  %4 = load ptr, ptr %left5, align 8, !tbaa !9
  %cmp6 = icmp eq ptr %4, %sym
  br i1 %cmp6, label %if.then7, label %sw.epilog

if.then7:                                         ; preds = %sw.bb4
  %right8 = getelementptr inbounds %struct.expr, ptr %dep.tr42, i64 0, i32 2
  %5 = load ptr, ptr %right8, align 8, !tbaa !9
  %cmp9 = icmp eq ptr %5, @symbol_yes
  %cmp11 = icmp eq ptr %5, @symbol_mod
  %or.cond = or i1 %cmp9, %cmp11
  br i1 %or.cond, label %return, label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %left16 = getelementptr inbounds %struct.expr, ptr %dep.tr42, i64 0, i32 1
  %6 = load ptr, ptr %left16, align 8, !tbaa !9
  %cmp17 = icmp eq ptr %6, %sym
  br i1 %cmp17, label %if.then18, label %sw.epilog

if.then18:                                        ; preds = %sw.bb15
  %right19 = getelementptr inbounds %struct.expr, ptr %dep.tr42, i64 0, i32 2
  %7 = load ptr, ptr %right19, align 8, !tbaa !9
  %cmp20 = icmp eq ptr %7, @symbol_no
  br i1 %cmp20, label %return, label %sw.epilog

sw.epilog:                                        ; preds = %if.then18, %sw.bb15, %if.then7, %sw.bb4, %if.end
  br label %return

return:                                           ; preds = %sw.epilog, %if.then18, %if.then7, %sw.bb2, %lor.rhs, %sw.bb, %entry
  %retval.0 = phi i1 [ false, %sw.epilog ], [ %cmp, %sw.bb2 ], [ true, %if.then7 ], [ true, %if.then18 ], [ false, %entry ], [ %call, %sw.bb ], [ %call, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expr_trans_compare(ptr noundef %e, i32 noundef %type, ptr noundef %sym) local_unnamed_addr #0 {
entry:
  %tobool.not161 = icmp eq ptr %e, null
  br i1 %tobool.not161, label %if.then, label %if.end3

if.then:                                          ; preds = %sw.bb36, %entry
  %type.tr.lcssa = phi i32 [ %type, %entry ], [ %cond, %sw.bb36 ]
  %call.i = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i, align 8, !tbaa !5
  %left.i = getelementptr inbounds %struct.expr, ptr %call.i, i64 0, i32 1
  store ptr %sym, ptr %left.i, align 8, !tbaa !9
  %cmp = icmp eq i32 %type.tr.lcssa, 5
  br i1 %cmp, label %if.then1, label %cleanup

if.then1:                                         ; preds = %if.then
  %call.i119 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %call.i119, align 8, !tbaa !5
  %left.i120 = getelementptr inbounds %struct.expr, ptr %call.i119, i64 0, i32 1
  store ptr %call.i, ptr %left.i120, align 8, !tbaa !9
  br label %cleanup

if.end3:                                          ; preds = %sw.bb36, %entry
  %type.tr163 = phi i32 [ %cond, %sw.bb36 ], [ %type, %entry ]
  %e.tr162 = phi ptr [ %5, %sw.bb36 ], [ %e, %entry ]
  %0 = load i32, ptr %e.tr162, align 8, !tbaa !5
  switch i32 %0, label %cleanup [
    i32 2, label %sw.bb
    i32 1, label %sw.bb19
    i32 3, label %sw.bb36
    i32 5, label %sw.bb40
    i32 6, label %sw.bb40
    i32 7, label %sw.bb40
    i32 8, label %sw.bb40
    i32 9, label %sw.bb40
    i32 4, label %sw.bb40
    i32 11, label %sw.bb70
  ]

sw.bb:                                            ; preds = %if.end3
  %left = getelementptr inbounds %struct.expr, ptr %e.tr162, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  %call5 = tail call ptr @expr_trans_compare(ptr noundef %1, i32 noundef 4, ptr noundef %sym)
  %right = getelementptr inbounds %struct.expr, ptr %e.tr162, i64 0, i32 2
  %2 = load ptr, ptr %right, align 8, !tbaa !9
  %call6 = tail call ptr @expr_trans_compare(ptr noundef %2, i32 noundef 4, ptr noundef %sym)
  %cmp7 = icmp eq ptr %sym, @symbol_yes
  br i1 %cmp7, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %sw.bb
  %call.i121 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 2, ptr %call.i121, align 8, !tbaa !5
  br label %if.end14.sink.split

if.end10:                                         ; preds = %sw.bb
  %cmp11 = icmp eq ptr %sym, @symbol_no
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %call.i123 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 1, ptr %call.i123, align 8, !tbaa !5
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then12, %if.end10.thread
  %call.i121.sink184 = phi ptr [ %call.i121, %if.end10.thread ], [ %call.i123, %if.then12 ]
  %left.i122 = getelementptr inbounds %struct.expr, ptr %call.i121.sink184, i64 0, i32 1
  store ptr %call5, ptr %left.i122, align 8, !tbaa !9
  %right.i = getelementptr inbounds %struct.expr, ptr %call.i121.sink184, i64 0, i32 2
  store ptr %call6, ptr %right.i, align 8, !tbaa !9
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.end10
  %e.addr.2 = phi ptr [ %e.tr162, %if.end10 ], [ %call.i121.sink184, %if.end14.sink.split ]
  %cmp15 = icmp eq i32 %type.tr163, 5
  br i1 %cmp15, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end14
  %call.i126 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %call.i126, align 8, !tbaa !5
  %left.i127 = getelementptr inbounds %struct.expr, ptr %call.i126, i64 0, i32 1
  store ptr %e.addr.2, ptr %left.i127, align 8, !tbaa !9
  br label %cleanup

sw.bb19:                                          ; preds = %if.end3
  %left20 = getelementptr inbounds %struct.expr, ptr %e.tr162, i64 0, i32 1
  %3 = load ptr, ptr %left20, align 8, !tbaa !9
  %call21 = tail call ptr @expr_trans_compare(ptr noundef %3, i32 noundef 4, ptr noundef %sym)
  %right22 = getelementptr inbounds %struct.expr, ptr %e.tr162, i64 0, i32 2
  %4 = load ptr, ptr %right22, align 8, !tbaa !9
  %call23 = tail call ptr @expr_trans_compare(ptr noundef %4, i32 noundef 4, ptr noundef %sym)
  %cmp24 = icmp eq ptr %sym, @symbol_yes
  br i1 %cmp24, label %if.end27.thread, label %if.end27

if.end27.thread:                                  ; preds = %sw.bb19
  %call.i128 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 1, ptr %call.i128, align 8, !tbaa !5
  br label %if.end31.sink.split

if.end27:                                         ; preds = %sw.bb19
  %cmp28 = icmp eq ptr %sym, @symbol_no
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end27
  %call.i131 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 2, ptr %call.i131, align 8, !tbaa !5
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.then29, %if.end27.thread
  %call.i128.sink185 = phi ptr [ %call.i128, %if.end27.thread ], [ %call.i131, %if.then29 ]
  %left.i129 = getelementptr inbounds %struct.expr, ptr %call.i128.sink185, i64 0, i32 1
  store ptr %call21, ptr %left.i129, align 8, !tbaa !9
  %right.i130 = getelementptr inbounds %struct.expr, ptr %call.i128.sink185, i64 0, i32 2
  store ptr %call23, ptr %right.i130, align 8, !tbaa !9
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end27
  %e.addr.5 = phi ptr [ %e.tr162, %if.end27 ], [ %call.i128.sink185, %if.end31.sink.split ]
  %cmp32 = icmp eq i32 %type.tr163, 5
  br i1 %cmp32, label %if.then33, label %cleanup

if.then33:                                        ; preds = %if.end31
  %call.i134 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %call.i134, align 8, !tbaa !5
  %left.i135 = getelementptr inbounds %struct.expr, ptr %call.i134, i64 0, i32 1
  store ptr %e.addr.5, ptr %left.i135, align 8, !tbaa !9
  br label %cleanup

sw.bb36:                                          ; preds = %if.end3
  %left37 = getelementptr inbounds %struct.expr, ptr %e.tr162, i64 0, i32 1
  %5 = load ptr, ptr %left37, align 8, !tbaa !9
  %cmp38 = icmp eq i32 %type.tr163, 4
  %cond = select i1 %cmp38, i32 5, i32 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end3

sw.bb40:                                          ; preds = %if.end3, %if.end3, %if.end3, %if.end3, %if.end3, %if.end3
  %cmp41 = icmp eq i32 %type.tr163, 4
  %cmp43 = icmp eq ptr %sym, @symbol_yes
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %sw.bb40
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then42
  %call45 = tail call ptr @expr_copy(ptr noundef nonnull %e.tr162)
  br label %cleanup

if.end46:                                         ; preds = %if.then42
  %cmp47 = icmp eq ptr %sym, @symbol_mod
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end46
  %call.i136 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i136, align 8, !tbaa !5
  %left.i137 = getelementptr inbounds %struct.expr, ptr %call.i136, i64 0, i32 1
  store ptr @symbol_no, ptr %left.i137, align 8, !tbaa !9
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %cmp51 = icmp eq ptr %sym, @symbol_no
  br i1 %cmp51, label %if.then52, label %cleanup

if.then52:                                        ; preds = %if.end50
  %call53 = tail call ptr @expr_copy(ptr noundef nonnull %e.tr162)
  %call.i138 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %call.i138, align 8, !tbaa !5
  %left.i139 = getelementptr inbounds %struct.expr, ptr %call.i138, i64 0, i32 1
  store ptr %call53, ptr %left.i139, align 8, !tbaa !9
  br label %cleanup

if.else:                                          ; preds = %sw.bb40
  br i1 %cmp43, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.else
  %call58 = tail call ptr @expr_copy(ptr noundef nonnull %e.tr162)
  %call.i140 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 3, ptr %call.i140, align 8, !tbaa !5
  %left.i141 = getelementptr inbounds %struct.expr, ptr %call.i140, i64 0, i32 1
  store ptr %call58, ptr %left.i141, align 8, !tbaa !9
  br label %cleanup

if.end60:                                         ; preds = %if.else
  %cmp61 = icmp eq ptr %sym, @symbol_mod
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end60
  %call.i142 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 11, ptr %call.i142, align 8, !tbaa !5
  %left.i143 = getelementptr inbounds %struct.expr, ptr %call.i142, i64 0, i32 1
  store ptr @symbol_yes, ptr %left.i143, align 8, !tbaa !9
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %cmp65 = icmp eq ptr %sym, @symbol_no
  br i1 %cmp65, label %if.then66, label %cleanup

if.then66:                                        ; preds = %if.end64
  %call67 = tail call ptr @expr_copy(ptr noundef nonnull %e.tr162)
  br label %cleanup

sw.bb70:                                          ; preds = %if.end3
  %left71 = getelementptr inbounds %struct.expr, ptr %e.tr162, i64 0, i32 1
  %6 = load ptr, ptr %left71, align 8, !tbaa !9
  %call.i144 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #14
  store i32 %type.tr163, ptr %call.i144, align 8, !tbaa !5
  %left.i145 = getelementptr inbounds %struct.expr, ptr %call.i144, i64 0, i32 1
  store ptr %6, ptr %left.i145, align 8, !tbaa !9
  %right.i146 = getelementptr inbounds %struct.expr, ptr %call.i144, i64 0, i32 2
  store ptr %sym, ptr %right.i146, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb70, %if.then66, %if.end64, %if.then62, %if.then57, %if.then52, %if.end50, %if.then48, %if.then44, %if.then33, %if.end31, %if.then16, %if.end14, %if.end3, %if.then1, %if.then
  %retval.0 = phi ptr [ %call.i144, %sw.bb70 ], [ %call45, %if.then44 ], [ %call.i136, %if.then48 ], [ %call.i138, %if.then52 ], [ %call.i140, %if.then57 ], [ %call.i142, %if.then62 ], [ %call67, %if.then66 ], [ %call.i119, %if.then1 ], [ %call.i, %if.then ], [ %call.i126, %if.then16 ], [ %e.addr.2, %if.end14 ], [ %call.i134, %if.then33 ], [ %e.addr.5, %if.end31 ], [ null, %if.end50 ], [ null, %if.end64 ], [ null, %if.end3 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @expr_calc_value(ptr noundef readonly %e) local_unnamed_addr #0 {
entry:
  %lval = alloca %union.string_value, align 8
  %rval = alloca %union.string_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lval) #14
  store i64 0, ptr %lval, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rval) #14
  store i64 0, ptr %rval, align 8
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %e, align 8, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 11, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb5
    i32 3, label %sw.bb15
    i32 4, label %sw.epilog
    i32 9, label %sw.epilog
    i32 8, label %sw.epilog
    i32 7, label %sw.epilog
    i32 6, label %sw.epilog
    i32 5, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end
  %left = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  tail call void @sym_calc_value(ptr noundef %1) #14
  %2 = load ptr, ptr %left, align 8, !tbaa !9
  %tri = getelementptr inbounds %struct.symbol, ptr %2, i64 0, i32 3, i32 1
  %3 = load i32, ptr %tri, align 8, !tbaa !21
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %left3 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %4 = load ptr, ptr %left3, align 8, !tbaa !9
  %call = tail call i32 @expr_calc_value(ptr noundef %4)
  %right = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %5 = load ptr, ptr %right, align 8, !tbaa !9
  %call4 = tail call i32 @expr_calc_value(ptr noundef %5)
  %6 = tail call i32 @llvm.umin.i32(i32 %call, i32 %call4)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %left6 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %7 = load ptr, ptr %left6, align 8, !tbaa !9
  %call7 = tail call i32 @expr_calc_value(ptr noundef %7)
  %right8 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %8 = load ptr, ptr %right8, align 8, !tbaa !9
  %call9 = tail call i32 @expr_calc_value(ptr noundef %8)
  %9 = tail call i32 @llvm.umax.i32(i32 %call7, i32 %call9)
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %left16 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %10 = load ptr, ptr %left16, align 8, !tbaa !9
  %call17 = tail call i32 @expr_calc_value(ptr noundef %10)
  %sub = sub i32 2, %call17
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %0)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %left21 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %11 = load ptr, ptr %left21, align 8, !tbaa !9
  tail call void @sym_calc_value(ptr noundef %11) #14
  %right22 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %12 = load ptr, ptr %right22, align 8, !tbaa !9
  tail call void @sym_calc_value(ptr noundef %12) #14
  %13 = load ptr, ptr %left21, align 8, !tbaa !9
  %call24 = tail call ptr @sym_get_string_value(ptr noundef %13) #14
  %14 = load ptr, ptr %right22, align 8, !tbaa !9
  %call26 = tail call ptr @sym_get_string_value(ptr noundef %14) #14
  %15 = load ptr, ptr %left21, align 8, !tbaa !9
  %type28 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 2
  %16 = load i32, ptr %type28, align 8, !tbaa !15
  %cmp29.not = icmp eq i32 %16, 5
  br i1 %cmp29.not, label %lor.lhs.false, label %if.end40

lor.lhs.false:                                    ; preds = %sw.epilog
  %17 = load ptr, ptr %right22, align 8, !tbaa !9
  %type31 = getelementptr inbounds %struct.symbol, ptr %17, i64 0, i32 2
  %18 = load i32, ptr %type31, align 8, !tbaa !15
  %cmp32.not = icmp eq i32 %18, 5
  br i1 %cmp32.not, label %if.then44, label %if.end40

if.end40:                                         ; preds = %lor.lhs.false, %sw.epilog
  %call36 = call fastcc i32 @expr_parse_string(ptr noundef %call24, i32 noundef %16, ptr noundef nonnull %lval)
  %19 = load ptr, ptr %right22, align 8, !tbaa !9
  %type38 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 2
  %20 = load i32, ptr %type38, align 8, !tbaa !15
  %call39 = call fastcc i32 @expr_parse_string(ptr noundef %call26, i32 noundef %20, ptr noundef nonnull %rval)
  %cmp41 = icmp eq i32 %call36, 0
  %cmp43 = icmp eq i32 %call39, 0
  %or.cond = select i1 %cmp41, i1 true, i1 %cmp43
  br i1 %or.cond, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end40, %lor.lhs.false
  %call45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call24, ptr noundef nonnull dereferenceable(1) %call26) #16
  br label %if.end61

if.else:                                          ; preds = %if.end40
  %cmp46 = icmp eq i32 %call36, 2
  %cmp48 = icmp eq i32 %call39, 2
  %or.cond96 = select i1 %cmp46, i1 true, i1 %cmp48
  %21 = load i64, ptr %lval, align 8, !tbaa !9
  %22 = load i64, ptr %rval, align 8, !tbaa !9
  br i1 %or.cond96, label %if.then49, label %if.else54

if.then49:                                        ; preds = %if.else
  %cmp50 = icmp ugt i64 %21, %22
  %conv = zext i1 %cmp50 to i32
  %cmp51 = icmp ult i64 %21, %22
  %conv52.neg = sext i1 %cmp51 to i32
  %sub53 = add nsw i32 %conv52.neg, %conv
  br label %if.end61

if.else54:                                        ; preds = %if.else
  %cmp55 = icmp sgt i64 %21, %22
  %conv56 = zext i1 %cmp55 to i32
  %cmp57 = icmp slt i64 %21, %22
  %conv58.neg = sext i1 %cmp57 to i32
  %sub59 = add nsw i32 %conv58.neg, %conv56
  br label %if.end61

if.end61:                                         ; preds = %if.else54, %if.then49, %if.then44
  %res.0 = phi i32 [ %call45, %if.then44 ], [ %sub53, %if.then49 ], [ %sub59, %if.else54 ]
  %23 = load i32, ptr %e, align 8, !tbaa !5
  switch i32 %23, label %sw.default85 [
    i32 4, label %sw.bb63
    i32 9, label %sw.bb66
    i32 8, label %sw.bb70
    i32 7, label %sw.bb74
    i32 6, label %sw.bb78
    i32 5, label %sw.bb82
  ]

sw.bb63:                                          ; preds = %if.end61
  %tobool64.not = icmp eq i32 %res.0, 0
  %cond65 = select i1 %tobool64.not, i32 2, i32 0
  br label %cleanup

sw.bb66:                                          ; preds = %if.end61
  %24 = lshr i32 %res.0, 30
  %25 = and i32 %24, 2
  %26 = xor i32 %25, 2
  br label %cleanup

sw.bb70:                                          ; preds = %if.end61
  %cmp71 = icmp sgt i32 %res.0, 0
  %cond73 = select i1 %cmp71, i32 2, i32 0
  br label %cleanup

sw.bb74:                                          ; preds = %if.end61
  %cmp75.inv = icmp sgt i32 %res.0, 0
  %cond77 = select i1 %cmp75.inv, i32 0, i32 2
  br label %cleanup

sw.bb78:                                          ; preds = %if.end61
  %27 = lshr i32 %res.0, 30
  %28 = and i32 %27, 2
  br label %cleanup

sw.bb82:                                          ; preds = %if.end61
  %tobool83.not = icmp eq i32 %res.0, 0
  %cond84 = select i1 %tobool83.not, i32 0, i32 2
  br label %cleanup

sw.default85:                                     ; preds = %if.end61
  %call87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i32 noundef %23)
  br label %cleanup

cleanup:                                          ; preds = %sw.default85, %sw.bb82, %sw.bb78, %sw.bb74, %sw.bb70, %sw.bb66, %sw.bb63, %sw.default, %sw.bb15, %sw.bb5, %sw.bb2, %sw.bb, %entry
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %sw.default85 ], [ %cond84, %sw.bb82 ], [ %28, %sw.bb78 ], [ %cond77, %sw.bb74 ], [ %cond73, %sw.bb70 ], [ %26, %sw.bb66 ], [ %cond65, %sw.bb63 ], [ %sub, %sw.bb15 ], [ %9, %sw.bb5 ], [ %6, %sw.bb2 ], [ %3, %sw.bb ], [ 2, %entry ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rval) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lval) #14
  ret i32 %retval.0
}

declare void @sym_calc_value(ptr noundef) local_unnamed_addr #2

declare ptr @sym_get_string_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal fastcc i32 @expr_parse_string(ptr noundef %str, i32 noundef %type, ptr nocapture noundef writeonly %val) unnamed_addr #8 {
entry:
  %tail = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tail) #14
  %call = tail call ptr @__errno_location() #17
  store i32 0, ptr %call, align 4, !tbaa !12
  switch i32 %type, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb11
    i32 4, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry, %entry
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(2) @.str.24) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end9, label %cond.false

cond.false:                                       ; preds = %sw.bb
  %call2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(2) @.str.25) #16
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cond.end9, label %cond.false5

cond.false5:                                      ; preds = %cond.false
  %call6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(2) @.str.6) #16
  %tobool7.not = icmp eq i32 %call6, 0
  %phi.cast = select i1 %tobool7.not, i64 2, i64 -1
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false5, %cond.false, %sw.bb
  %cond10 = phi i64 [ 0, %sw.bb ], [ %phi.cast, %cond.false5 ], [ 1, %cond.false ]
  store i64 %cond10, ptr %val, align 8, !tbaa !9
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %call12 = call i64 @strtoll(ptr noundef %str, ptr noundef nonnull %tail, i32 noundef 10) #14
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %call14 = call i64 @strtoull(ptr noundef %str, ptr noundef nonnull %tail, i32 noundef 16) #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call15 = call i64 @strtoll(ptr noundef %str, ptr noundef nonnull %tail, i32 noundef 0) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb11
  %call15.sink = phi i64 [ %call15, %sw.default ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ]
  %kind.0 = phi i32 [ 1, %sw.default ], [ 2, %sw.bb13 ], [ 1, %sw.bb11 ]
  store i64 %call15.sink, ptr %val, align 8, !tbaa !9
  %0 = load i32, ptr %call, align 4, !tbaa !12
  %tobool17.not = icmp eq i32 %0, 0
  br i1 %tobool17.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %1 = load ptr, ptr %tail, align 8, !tbaa !10
  %2 = load i8, ptr %1, align 1, !tbaa !9
  %tobool18.not = icmp eq i8 %2, 0
  %cmp = icmp ugt ptr %1, %str
  %or.cond = and i1 %cmp, %tobool18.not
  br i1 %or.cond, label %land.lhs.true21, label %cleanup

land.lhs.true21:                                  ; preds = %land.lhs.true
  %call22 = tail call ptr @__ctype_b_loc() #17
  %3 = load ptr, ptr %call22, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 -1
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %idxprom = sext i8 %4 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %5 = load i16, ptr %arrayidx24, align 2, !tbaa !22
  %6 = and i16 %5, 4096
  %tobool26.not = icmp eq i16 %6, 0
  %spec.select = select i1 %tobool26.not, i32 0, i32 %kind.0
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true21, %land.lhs.true, %sw.epilog, %cond.end9
  %retval.0 = phi i32 [ 1, %cond.end9 ], [ 0, %land.lhs.true ], [ 0, %sw.epilog ], [ %spec.select, %land.lhs.true21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tail) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @expr_print(ptr noundef readonly %e, ptr noundef %fn, ptr noundef %data, i32 noundef %prevtoken) local_unnamed_addr #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.6) #14
  br label %if.end97

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %e, align 8, !tbaa !5
  %cmp.i = icmp eq i32 %0, %prevtoken
  br i1 %cmp.i, label %if.end2, label %if.end.i

if.end.i:                                         ; preds = %if.end
  switch i32 %prevtoken, label %if.end2 [
    i32 7, label %sw.bb.i
    i32 6, label %sw.bb.i
    i32 9, label %sw.bb.i
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb5.i
    i32 5, label %sw.bb5.i
    i32 3, label %sw.bb9.i
    i32 2, label %sw.bb13.i
    i32 1, label %sw.bb17.i
    i32 10, label %sw.bb21.i
  ]

sw.bb.i:                                          ; preds = %if.end.i, %if.end.i, %if.end.i, %if.end.i
  %1 = and i32 %0, -2
  %2 = icmp eq i32 %1, 4
  br i1 %2, label %if.then1, label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb.i, %if.end.i, %if.end.i
  switch i32 %0, label %if.end2 [
    i32 3, label %if.then1
    i32 2, label %if.then1
    i32 1, label %if.then1
    i32 10, label %if.then1
    i32 0, label %if.then1
  ]

sw.bb9.i:                                         ; preds = %if.end.i
  switch i32 %0, label %if.end2 [
    i32 2, label %if.then1
    i32 1, label %if.then1
    i32 10, label %if.then1
    i32 0, label %if.then1
  ]

sw.bb13.i:                                        ; preds = %if.end.i
  switch i32 %0, label %if.end2 [
    i32 1, label %if.then1
    i32 10, label %if.then1
    i32 0, label %if.then1
  ]

sw.bb17.i:                                        ; preds = %if.end.i
  switch i32 %0, label %if.end2 [
    i32 10, label %if.then1
    i32 0, label %if.then1
  ]

sw.bb21.i:                                        ; preds = %if.end.i
  %cmp22.i = icmp eq i32 %0, 0
  br i1 %cmp22.i, label %if.then1, label %if.end2

if.then1:                                         ; preds = %sw.bb21.i, %sw.bb17.i, %sw.bb17.i, %sw.bb13.i, %sw.bb13.i, %sw.bb13.i, %sw.bb9.i, %sw.bb9.i, %sw.bb9.i, %sw.bb9.i, %sw.bb5.i, %sw.bb5.i, %sw.bb5.i, %sw.bb5.i, %sw.bb5.i, %sw.bb.i
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.7) #14
  %.pr.pre = load i32, ptr %e, align 8, !tbaa !5
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %sw.bb21.i, %sw.bb17.i, %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %if.end.i, %if.end
  %3 = phi i32 [ %prevtoken, %if.end ], [ %0, %sw.bb17.i ], [ %0, %if.end.i ], [ %0, %sw.bb5.i ], [ %0, %sw.bb9.i ], [ %0, %sw.bb13.i ], [ %0, %sw.bb21.i ], [ %.pr.pre, %if.then1 ]
  switch i32 %3, label %sw.default [
    i32 11, label %sw.bb
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
    i32 7, label %sw.bb24
    i32 6, label %sw.bb24
    i32 9, label %sw.bb39
    i32 8, label %sw.bb39
    i32 5, label %sw.bb55
    i32 1, label %sw.bb68
    i32 2, label %sw.bb71
    i32 10, label %sw.bb74
    i32 12, label %sw.bb83
  ]

sw.bb:                                            ; preds = %if.end2
  %left = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %4 = load ptr, ptr %left, align 8, !tbaa !9
  %name = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %name, align 8, !tbaa !20
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %sw.bb
  tail call void %fn(ptr noundef %data, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end2
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.9) #14
  %left11 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %6 = load ptr, ptr %left11, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %6, ptr noundef %fn, ptr noundef %data, i32 noundef 3)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end2
  %left13 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %7 = load ptr, ptr %left13, align 8, !tbaa !9
  %name14 = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %name14, align 8, !tbaa !20
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %if.else20, label %if.then16

if.then16:                                        ; preds = %sw.bb12
  tail call void %fn(ptr noundef %data, ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  br label %if.end21

if.else20:                                        ; preds = %sw.bb12
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then16
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.10) #14
  %right = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %9 = load ptr, ptr %right, align 8, !tbaa !9
  %name23 = getelementptr inbounds %struct.symbol, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %name23, align 8, !tbaa !20
  tail call void %fn(ptr noundef %data, ptr noundef %9, ptr noundef %10) #14
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end2, %if.end2
  %left25 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %11 = load ptr, ptr %left25, align 8, !tbaa !9
  %name26 = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %name26, align 8, !tbaa !20
  %tobool27.not = icmp eq ptr %12, null
  br i1 %tobool27.not, label %if.else32, label %if.then28

if.then28:                                        ; preds = %sw.bb24
  tail call void %fn(ptr noundef %data, ptr noundef nonnull %11, ptr noundef nonnull %12) #14
  br label %if.end33

if.else32:                                        ; preds = %sw.bb24
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then28
  %13 = load i32, ptr %e, align 8, !tbaa !5
  %cmp35 = icmp eq i32 %13, 7
  %cond = select i1 %cmp35, ptr @.str.11, ptr @.str.12
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull %cond) #14
  %right36 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %14 = load ptr, ptr %right36, align 8, !tbaa !9
  %name38 = getelementptr inbounds %struct.symbol, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %name38, align 8, !tbaa !20
  tail call void %fn(ptr noundef %data, ptr noundef %14, ptr noundef %15) #14
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end2, %if.end2
  %left40 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %16 = load ptr, ptr %left40, align 8, !tbaa !9
  %name41 = getelementptr inbounds %struct.symbol, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %name41, align 8, !tbaa !20
  %tobool42.not = icmp eq ptr %17, null
  br i1 %tobool42.not, label %if.else47, label %if.then43

if.then43:                                        ; preds = %sw.bb39
  tail call void %fn(ptr noundef %data, ptr noundef nonnull %16, ptr noundef nonnull %17) #14
  br label %if.end48

if.else47:                                        ; preds = %sw.bb39
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then43
  %18 = load i32, ptr %e, align 8, !tbaa !5
  %cmp50 = icmp eq i32 %18, 9
  %cond51 = select i1 %cmp50, ptr @.str.13, ptr @.str.14
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull %cond51) #14
  %right52 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %19 = load ptr, ptr %right52, align 8, !tbaa !9
  %name54 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %name54, align 8, !tbaa !20
  tail call void %fn(ptr noundef %data, ptr noundef %19, ptr noundef %20) #14
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end2
  %left56 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %21 = load ptr, ptr %left56, align 8, !tbaa !9
  %name57 = getelementptr inbounds %struct.symbol, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %name57, align 8, !tbaa !20
  %tobool58.not = icmp eq ptr %22, null
  br i1 %tobool58.not, label %if.else63, label %if.then59

if.then59:                                        ; preds = %sw.bb55
  tail call void %fn(ptr noundef %data, ptr noundef nonnull %21, ptr noundef nonnull %22) #14
  br label %if.end64

if.else63:                                        ; preds = %sw.bb55
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.8) #14
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.then59
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.15) #14
  %right65 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %23 = load ptr, ptr %right65, align 8, !tbaa !9
  %name67 = getelementptr inbounds %struct.symbol, ptr %23, i64 0, i32 1
  %24 = load ptr, ptr %name67, align 8, !tbaa !20
  tail call void %fn(ptr noundef %data, ptr noundef %23, ptr noundef %24) #14
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end2
  %left69 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %25 = load ptr, ptr %left69, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %25, ptr noundef %fn, ptr noundef %data, i32 noundef 1)
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.16) #14
  %right70 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %26 = load ptr, ptr %right70, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %26, ptr noundef %fn, ptr noundef %data, i32 noundef 1)
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end2
  %left72 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %27 = load ptr, ptr %left72, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %27, ptr noundef %fn, ptr noundef %data, i32 noundef 2)
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.17) #14
  %right73 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %28 = load ptr, ptr %right73, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %28, ptr noundef %fn, ptr noundef %data, i32 noundef 2)
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end2
  %right75 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %29 = load ptr, ptr %right75, align 8, !tbaa !9
  %name77 = getelementptr inbounds %struct.symbol, ptr %29, i64 0, i32 1
  %30 = load ptr, ptr %name77, align 8, !tbaa !20
  tail call void %fn(ptr noundef %data, ptr noundef %29, ptr noundef %30) #14
  %left78 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %31 = load ptr, ptr %left78, align 8, !tbaa !9
  %tobool79.not = icmp eq ptr %31, null
  br i1 %tobool79.not, label %sw.epilog, label %if.then80

if.then80:                                        ; preds = %sw.bb74
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.18) #14
  %32 = load ptr, ptr %left78, align 8, !tbaa !9
  tail call void @expr_print(ptr noundef %32, ptr noundef %fn, ptr noundef %data, i32 noundef 10)
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end2
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.19) #14
  %left84 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %33 = load ptr, ptr %left84, align 8, !tbaa !9
  %name86 = getelementptr inbounds %struct.symbol, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %name86, align 8, !tbaa !20
  tail call void %fn(ptr noundef %data, ptr noundef %33, ptr noundef %34) #14
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.20) #14
  %right87 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %35 = load ptr, ptr %right87, align 8, !tbaa !9
  %name89 = getelementptr inbounds %struct.symbol, ptr %35, i64 0, i32 1
  %36 = load ptr, ptr %name89, align 8, !tbaa !20
  tail call void %fn(ptr noundef %data, ptr noundef %35, ptr noundef %36) #14
  tail call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.21) #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #14
  %call91 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.22, i32 noundef %3) #14
  call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb83, %if.then80, %sw.bb74, %sw.bb71, %sw.bb68, %if.end64, %if.end48, %if.end33, %if.end21, %sw.bb10, %if.else, %if.then5
  %37 = load i32, ptr %e, align 8, !tbaa !5
  %cmp.i219 = icmp eq i32 %37, %prevtoken
  br i1 %cmp.i219, label %if.end97, label %if.end.i220

if.end.i220:                                      ; preds = %sw.epilog
  switch i32 %prevtoken, label %if.end97 [
    i32 7, label %sw.bb.i221
    i32 6, label %sw.bb.i221
    i32 9, label %sw.bb.i221
    i32 8, label %sw.bb.i221
    i32 4, label %sw.bb5.i222
    i32 5, label %sw.bb5.i222
    i32 3, label %sw.bb9.i223
    i32 2, label %sw.bb13.i224
    i32 1, label %sw.bb17.i228
    i32 10, label %sw.bb21.i230
  ]

sw.bb.i221:                                       ; preds = %if.end.i220, %if.end.i220, %if.end.i220, %if.end.i220
  %38 = and i32 %37, -2
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %if.then96, label %sw.bb5.i222

sw.bb5.i222:                                      ; preds = %sw.bb.i221, %if.end.i220, %if.end.i220
  switch i32 %37, label %if.end97 [
    i32 3, label %if.then96
    i32 2, label %if.then96
    i32 1, label %if.then96
    i32 10, label %if.then96
    i32 0, label %if.then96
  ]

sw.bb9.i223:                                      ; preds = %if.end.i220
  switch i32 %37, label %if.end97 [
    i32 2, label %if.then96
    i32 1, label %if.then96
    i32 10, label %if.then96
    i32 0, label %if.then96
  ]

sw.bb13.i224:                                     ; preds = %if.end.i220
  switch i32 %37, label %if.end97 [
    i32 1, label %if.then96
    i32 10, label %if.then96
    i32 0, label %if.then96
  ]

sw.bb17.i228:                                     ; preds = %if.end.i220
  switch i32 %37, label %if.end97 [
    i32 10, label %if.then96
    i32 0, label %if.then96
  ]

sw.bb21.i230:                                     ; preds = %if.end.i220
  %cmp22.i229 = icmp eq i32 %37, 0
  br i1 %cmp22.i229, label %if.then96, label %if.end97

if.then96:                                        ; preds = %sw.bb21.i230, %sw.bb17.i228, %sw.bb17.i228, %sw.bb13.i224, %sw.bb13.i224, %sw.bb13.i224, %sw.bb9.i223, %sw.bb9.i223, %sw.bb9.i223, %sw.bb9.i223, %sw.bb5.i222, %sw.bb5.i222, %sw.bb5.i222, %sw.bb5.i222, %sw.bb5.i222, %sw.bb.i221
  call void %fn(ptr noundef %data, ptr noundef null, ptr noundef nonnull @.str.23) #14
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %sw.bb21.i230, %sw.bb17.i228, %sw.bb13.i224, %sw.bb9.i223, %sw.bb5.i222, %if.end.i220, %sw.epilog, %if.then
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @expr_fprint(ptr noundef %e, ptr noundef %out) local_unnamed_addr #0 {
entry:
  tail call void @expr_print(ptr noundef %e, ptr noundef nonnull @expr_print_file_helper, ptr noundef %out, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @expr_print_file_helper(ptr nocapture noundef %data, ptr nocapture noundef readnone %sym, ptr nocapture noundef %str) #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #16
  %cmp.not.i = icmp eq i64 %call, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.end.i

if.else.i:                                        ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 49, ptr noundef nonnull @__PRETTY_FUNCTION__.xfwrite) #18
  unreachable

if.end.i:                                         ; preds = %entry
  %call.i = tail call i64 @fwrite(ptr noundef %str, i64 noundef %call, i64 noundef 1, ptr noundef %data) #14
  %cmp1.not.i = icmp eq i64 %call.i, 1
  br i1 %cmp1.not.i, label %xfwrite.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %0 = load ptr, ptr @stderr, align 8, !tbaa !10
  %1 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 33, i64 1, ptr %0) #19
  br label %xfwrite.exit

xfwrite.exit:                                     ; preds = %if.then2.i, %if.end.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @expr_gstr_print(ptr noundef %e, ptr noundef %gs) local_unnamed_addr #0 {
entry:
  tail call void @expr_print(ptr noundef %e, ptr noundef nonnull @expr_print_gstr_helper, ptr noundef %gs, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @expr_print_gstr_helper(ptr noundef %data, ptr noundef %sym, ptr noundef %str) #0 {
entry:
  %tobool.not = icmp eq ptr %sym, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @sym_get_string_value(ptr noundef nonnull %sym) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sym_str.0 = phi ptr [ %call, %if.then ], [ null, %entry ]
  %max_width = getelementptr inbounds %struct.gstr, ptr %data, i64 0, i32 2
  %0 = load i32, ptr %max_width, align 8, !tbaa !24
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end25, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #16
  %s = getelementptr inbounds %struct.gstr, ptr %data, i64 0, i32 1
  %1 = load ptr, ptr %s, align 8, !tbaa !27
  %call4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 10) #16
  %tobool5.not = icmp eq ptr %sym_str.0, null
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.then2
  %call7 = tail call i64 @strlen(ptr noundef nonnull %sym_str.0) #16
  %add = add i64 %call3, 4
  %add9 = add i64 %add, %call7
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then2
  %extra_length.0.in = phi i64 [ %add9, %if.then6 ], [ %call3, %if.then2 ]
  %extra_length.0 = trunc i64 %extra_length.0.in to i32
  %tobool12.not = icmp eq ptr %call4, null
  %spec.select = select i1 %tobool12.not, ptr %1, ptr %call4
  %call17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub.neg, %call17
  %conv19 = trunc i64 %sub to i32
  %add20 = add i32 %conv19, %extra_length.0
  %cmp = icmp ugt i32 %add20, %0
  br i1 %cmp, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end11
  tail call void @str_append(ptr noundef nonnull %data, ptr noundef nonnull @.str.29) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end11, %if.end
  tail call void @str_append(ptr noundef nonnull %data, ptr noundef %str) #14
  br i1 %tobool.not, label %if.end30, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end25
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %2 = load i32, ptr %type, align 8, !tbaa !15
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %land.lhs.true
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef nonnull %data, ptr noundef nonnull @.str.30, ptr noundef %sym_str.0) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true, %if.end25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @expr_gstr_print_revdep(ptr noundef %e, ptr noundef %gs, i32 noundef %pr_type, ptr noundef %title) local_unnamed_addr #0 {
entry:
  %title.addr = alloca ptr, align 8
  store ptr %title, ptr %title.addr, align 8, !tbaa !10
  call fastcc void @expr_print_revdep(ptr noundef %e, ptr noundef %gs, i32 noundef %pr_type, ptr noundef nonnull %title.addr)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expr_print_revdep(ptr noundef %e, ptr noundef %data, i32 noundef %pr_type, ptr noundef %title) unnamed_addr #0 {
entry:
  %0 = load i32, ptr %e, align 8, !tbaa !5
  %cmp39 = icmp eq i32 %0, 1
  br i1 %cmp39, label %if.then, label %if.else

if.then:                                          ; preds = %if.then, %entry
  %e.tr40 = phi ptr [ %2, %if.then ], [ %e, %entry ]
  %left = getelementptr inbounds %struct.expr, ptr %e.tr40, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !9
  tail call fastcc void @expr_print_revdep(ptr noundef %1, ptr noundef %data, i32 noundef %pr_type, ptr noundef %title)
  %right = getelementptr inbounds %struct.expr, ptr %e.tr40, i64 0, i32 2
  %2 = load ptr, ptr %right, align 8, !tbaa !9
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.else:                                          ; preds = %if.then, %entry
  %e.tr.lcssa = phi ptr [ %e, %entry ], [ %2, %if.then ]
  %call = tail call i32 @expr_calc_value(ptr noundef nonnull %e.tr.lcssa)
  %cmp1 = icmp eq i32 %call, %pr_type
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.else
  %4 = load ptr, ptr %title, align 8, !tbaa !10
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then2
  %max_width.i = getelementptr inbounds %struct.gstr, ptr %data, i64 0, i32 2
  %5 = load i32, ptr %max_width.i, align 8, !tbaa !24
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %expr_print_gstr_helper.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.then3
  %call3.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %s.i = getelementptr inbounds %struct.gstr, ptr %data, i64 0, i32 1
  %6 = load ptr, ptr %s.i, align 8, !tbaa !27
  %call4.i = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 10) #16
  %extra_length.0.i = trunc i64 %call3.i to i32
  %tobool12.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool12.not.i, ptr %6, ptr %call4.i
  %call17.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %spec.select.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i64
  %sub.ptr.sub.neg.i = add i64 %call17.i, %sub.ptr.rhs.cast.i
  %sub.i = sub i64 %sub.ptr.sub.neg.i, %sub.ptr.lhs.cast.i
  %conv19.i = trunc i64 %sub.i to i32
  %add20.i = add i32 %conv19.i, %extra_length.0.i
  %cmp.i = icmp ugt i32 %add20.i, %5
  br i1 %cmp.i, label %if.then23.i, label %expr_print_gstr_helper.exit

if.then23.i:                                      ; preds = %if.then2.i
  tail call void @str_append(ptr noundef nonnull %data, ptr noundef nonnull @.str.29) #14
  br label %expr_print_gstr_helper.exit

expr_print_gstr_helper.exit:                      ; preds = %if.then23.i, %if.then2.i, %if.then3
  tail call void @str_append(ptr noundef nonnull %data, ptr noundef nonnull %4) #14
  store ptr null, ptr %title, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %expr_print_gstr_helper.exit, %if.then2
  %max_width.i1 = getelementptr inbounds %struct.gstr, ptr %data, i64 0, i32 2
  %7 = load i32, ptr %max_width.i1, align 8, !tbaa !24
  %tobool1.not.i2 = icmp eq i32 %7, 0
  br i1 %tobool1.not.i2, label %expr_print_gstr_helper.exit19, label %if.then2.i6

if.then2.i6:                                      ; preds = %if.end
  %s.i4 = getelementptr inbounds %struct.gstr, ptr %data, i64 0, i32 1
  %8 = load ptr, ptr %s.i4, align 8, !tbaa !27
  %call4.i5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 10) #16
  %tobool12.not.i8 = icmp eq ptr %call4.i5, null
  %spec.select.i9 = select i1 %tobool12.not.i8, ptr %8, ptr %call4.i5
  %call17.i10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #16
  %sub.ptr.lhs.cast.i11 = ptrtoint ptr %spec.select.i9 to i64
  %sub.ptr.rhs.cast.i12 = ptrtoint ptr %8 to i64
  %sub.ptr.sub.neg.i13 = add i64 %call17.i10, %sub.ptr.rhs.cast.i12
  %sub.i14 = sub i64 %sub.ptr.sub.neg.i13, %sub.ptr.lhs.cast.i11
  %conv19.i15 = trunc i64 %sub.i14 to i32
  %add20.i16 = add i32 %conv19.i15, 4
  %cmp.i17 = icmp ugt i32 %add20.i16, %7
  br i1 %cmp.i17, label %if.then23.i18, label %expr_print_gstr_helper.exit19

if.then23.i18:                                    ; preds = %if.then2.i6
  tail call void @str_append(ptr noundef nonnull %data, ptr noundef nonnull @.str.29) #14
  br label %expr_print_gstr_helper.exit19

expr_print_gstr_helper.exit19:                    ; preds = %if.then23.i18, %if.then2.i6, %if.end
  tail call void @str_append(ptr noundef nonnull %data, ptr noundef nonnull @.str.31) #14
  tail call void @expr_print(ptr noundef nonnull %e.tr.lcssa, ptr noundef nonnull @expr_print_gstr_helper, ptr noundef nonnull %data, i32 noundef 0)
  %9 = load i32, ptr %max_width.i1, align 8, !tbaa !24
  %tobool1.not.i21 = icmp eq i32 %9, 0
  br i1 %tobool1.not.i21, label %expr_print_gstr_helper.exit38, label %if.then2.i25

if.then2.i25:                                     ; preds = %expr_print_gstr_helper.exit19
  %s.i23 = getelementptr inbounds %struct.gstr, ptr %data, i64 0, i32 1
  %10 = load ptr, ptr %s.i23, align 8, !tbaa !27
  %call4.i24 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %10, i32 noundef 10) #16
  %tobool12.not.i27 = icmp eq ptr %call4.i24, null
  %spec.select.i28 = select i1 %tobool12.not.i27, ptr %10, ptr %call4.i24
  %call17.i29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #16
  %sub.ptr.lhs.cast.i30 = ptrtoint ptr %spec.select.i28 to i64
  %sub.ptr.rhs.cast.i31 = ptrtoint ptr %10 to i64
  %sub.ptr.sub.neg.i32 = add i64 %call17.i29, %sub.ptr.rhs.cast.i31
  %sub.i33 = sub i64 %sub.ptr.sub.neg.i32, %sub.ptr.lhs.cast.i30
  %conv19.i34 = trunc i64 %sub.i33 to i32
  %add20.i35 = add i32 %conv19.i34, 1
  %cmp.i36 = icmp ugt i32 %add20.i35, %9
  br i1 %cmp.i36, label %if.then23.i37, label %expr_print_gstr_helper.exit38

if.then23.i37:                                    ; preds = %if.then2.i25
  tail call void @str_append(ptr noundef nonnull %data, ptr noundef nonnull @.str.29) #14
  br label %expr_print_gstr_helper.exit38

expr_print_gstr_helper.exit38:                    ; preds = %if.then23.i37, %if.then2.i25, %expr_print_gstr_helper.exit19
  tail call void @str_append(ptr noundef nonnull %data, ptr noundef nonnull @.str.32) #14
  br label %if.end5

if.end5:                                          ; preds = %expr_print_gstr_helper.exit38, %if.else
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoull(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @str_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @str_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind readnone willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"expr", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{i64 0, i64 4, !9, i64 8, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 16, i64 8, !10}
!15 = !{!16, !7, i64 16}
!16 = !{!"symbol", !11, i64 0, !11, i64 8, !7, i64 16, !17, i64 24, !7, i64 40, !7, i64 104, !13, i64 108, !11, i64 112, !18, i64 120, !18, i64 136, !18, i64 152}
!17 = !{!"symbol_value", !11, i64 0, !7, i64 8}
!18 = !{!"expr_value", !11, i64 0, !7, i64 8}
!19 = !{!16, !13, i64 108}
!20 = !{!16, !11, i64 8}
!21 = !{!16, !7, i64 32}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !7, i64 0}
!24 = !{!25, !13, i64 16}
!25 = !{!"gstr", !26, i64 0, !11, i64 8, !13, i64 16}
!26 = !{!"long", !7, i64 0}
!27 = !{!25, !11, i64 8}
