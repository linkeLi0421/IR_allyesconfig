; ModuleID = '/llk/IR_all_yes/scripts/kconfig/menu.c_pt.bc'
source_filename = "../scripts/kconfig/menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.file = type { ptr, ptr, ptr, i32 }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }
%struct.gstr = type { i64, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.jump_key = type { %struct.list_head, i64, ptr, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s:%d:warning: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rootmenu = dso_local global %struct.menu zeroinitializer, align 8
@current_menu = external local_unnamed_addr global ptr, align 8
@current_entry = external local_unnamed_addr global ptr, align 8
@last_entry_ptr = internal unnamed_addr global ptr null, align 8
@current_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"ignoring type redefinition of '%s' from '%s' to '%s'\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"leading whitespace ignored\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"prompt redefined\00", align 1
@symbol_no = external global %struct.symbol, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"choice value must have a prompt\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"defaults for choice values not supported\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"choice value used outside its choice group\00", align 1
@symbol_yes = external global %struct.symbol, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"config symbol defined without type\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"choice must have a prompt\00", align 1
@symbol_mod = external global %struct.symbol, align 8
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"No matches found.\0A\00", align 1
@nohelp_text = internal constant [44 x i8] c"There is no help available for this option.\00", align 16
@.str.13 = private unnamed_addr constant [8 x i8] c"%s%s:\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@file_list = dso_local local_unnamed_addr global ptr null, align 8
@modules_sym = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [55 x i8] c"default for config symbol '%s' must be a single symbol\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"'%s': number is invalid\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"choice default symbol '%s' is not contained in the choice\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"imply\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"config symbol '%s' uses %s, but is not bool or tristate\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"'%s' has wrong type. '%s' only accept arguments of bool and tristate type\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"range is only allowed for int or hex symbols\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"range is invalid\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Symbol: %s [=%s]\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Type  : %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Range : \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"  Depends on: \00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Selects: \00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Selected by [y]:\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Selected by [m]:\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Selected by [n]:\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Implies: \00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Implied by [y]:\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Implied by [m]:\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Implied by [n]:\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Defined at %s:%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"  Prompt: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"  Visible if: \00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"  Location:\0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"%*cMain menu\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"%*c-> %s\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" (%s [=%s])\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @menu_warn(ptr nocapture noundef readonly %menu, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #17
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %file = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 9
  %1 = load ptr, ptr %file, align 8, !tbaa !9
  %name = getelementptr inbounds %struct.file, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %name, align 8, !tbaa !12
  %lineno = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 10
  %3 = load i32, ptr %lineno, align 8, !tbaa !14
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %2, i32 noundef %3) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %4, ptr noundef %fmt, ptr noundef nonnull %ap) #18
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc = call i32 @fputc(i32 10, ptr %5)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @_menu_init() local_unnamed_addr #4 {
entry:
  store ptr @rootmenu, ptr @current_menu, align 8, !tbaa !5
  store ptr @rootmenu, ptr @current_entry, align 8, !tbaa !5
  store ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 2), ptr @last_entry_ptr, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_entry(ptr noundef %sym) local_unnamed_addr #5 {
entry:
  %call = tail call ptr @xmalloc(i64 noundef 96) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %call, i8 0, i64 96, i1 false)
  %sym1 = getelementptr inbounds %struct.menu, ptr %call, i64 0, i32 3
  store ptr %sym, ptr %sym1, align 8, !tbaa !15
  %0 = load ptr, ptr @current_menu, align 8, !tbaa !5
  %parent = getelementptr inbounds %struct.menu, ptr %call, i64 0, i32 1
  store ptr %0, ptr %parent, align 8, !tbaa !16
  %1 = load ptr, ptr @current_file, align 8, !tbaa !5
  %file = getelementptr inbounds %struct.menu, ptr %call, i64 0, i32 9
  store ptr %1, ptr %file, align 8, !tbaa !9
  %call2 = tail call i32 @zconf_lineno() #17
  %lineno = getelementptr inbounds %struct.menu, ptr %call, i64 0, i32 10
  store i32 %call2, ptr %lineno, align 8, !tbaa !14
  %2 = load ptr, ptr @last_entry_ptr, align 8, !tbaa !5
  store ptr %call, ptr %2, align 8, !tbaa !5
  store ptr %call, ptr @last_entry_ptr, align 8, !tbaa !5
  store ptr %call, ptr @current_entry, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %sym, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @expr_alloc_symbol(ptr noundef nonnull %sym) #17
  %call.i.i = tail call ptr @xmalloc(i64 noundef 72) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %call.i.i, i8 0, i64 72, i1 false) #17
  %type1.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 1
  store i32 9, ptr %type1.i.i, align 8, !tbaa !17
  %3 = load ptr, ptr @current_file, align 8, !tbaa !5
  %file.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 6
  store ptr %3, ptr %file.i.i, align 8, !tbaa !20
  %call2.i.i = tail call i32 @zconf_lineno() #17
  %lineno.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 7
  store i32 %call2.i.i, ptr %lineno.i.i, align 8, !tbaa !21
  %4 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %menu.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 5
  store ptr %4, ptr %menu.i.i, align 8, !tbaa !22
  %expr3.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 4
  store ptr %call.i, ptr %expr3.i.i, align 8, !tbaa !23
  %visible.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 3
  store ptr null, ptr %visible.i.i, align 8, !tbaa !24
  %sym.i.i = getelementptr inbounds %struct.menu, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %sym.i.i, align 8, !tbaa !15
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  %prop6.i.i = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i, %if.then.i.i
  %propp.0.i.i = phi ptr [ %prop6.i.i, %if.then.i.i ], [ %6, %for.cond.i.i ]
  %6 = load ptr, ptr %propp.0.i.i, align 8, !tbaa !5
  %tobool7.not.i.i = icmp eq ptr %6, null
  br i1 %tobool7.not.i.i, label %for.end.i.i, label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  store ptr %call.i.i, ptr %propp.0.i.i, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end.i.i, %if.then, %entry
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @zconf_lineno() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_symbol(i32 noundef %type, ptr noundef %sym, ptr noundef %dep) local_unnamed_addr #5 {
entry:
  %call = tail call ptr @expr_alloc_symbol(ptr noundef %sym) #17
  %call.i = tail call ptr @xmalloc(i64 noundef 72) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %call.i, i8 0, i64 72, i1 false) #17
  %type1.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 1
  store i32 %type, ptr %type1.i, align 8, !tbaa !17
  %0 = load ptr, ptr @current_file, align 8, !tbaa !5
  %file.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 6
  store ptr %0, ptr %file.i, align 8, !tbaa !20
  %call2.i = tail call i32 @zconf_lineno() #17
  %lineno.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 7
  store i32 %call2.i, ptr %lineno.i, align 8, !tbaa !21
  %1 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %menu.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 5
  store ptr %1, ptr %menu.i, align 8, !tbaa !22
  %expr3.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 4
  store ptr %call, ptr %expr3.i, align 8, !tbaa !23
  %visible.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 3
  store ptr %dep, ptr %visible.i, align 8, !tbaa !24
  %sym.i = getelementptr inbounds %struct.menu, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %sym.i, align 8, !tbaa !15
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %menu_add_prop.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %prop6.i = getelementptr inbounds %struct.symbol, ptr %2, i64 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %if.then.i
  %propp.0.i = phi ptr [ %prop6.i, %if.then.i ], [ %3, %for.cond.i ]
  %3 = load ptr, ptr %propp.0.i, align 8, !tbaa !5
  %tobool7.not.i = icmp eq ptr %3, null
  br i1 %tobool7.not.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  store ptr %call.i, ptr %propp.0.i, align 8, !tbaa !5
  br label %menu_add_prop.exit

menu_add_prop.exit:                               ; preds = %for.end.i, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local ptr @menu_add_menu() local_unnamed_addr #8 {
entry:
  %0 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %list = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 2
  store ptr %list, ptr @last_entry_ptr, align 8, !tbaa !5
  store ptr %0, ptr @current_menu, align 8, !tbaa !5
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @menu_end_menu() local_unnamed_addr #8 {
entry:
  %0 = load ptr, ptr @current_menu, align 8, !tbaa !5
  store ptr %0, ptr @last_entry_ptr, align 8, !tbaa !5
  %parent = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %parent, align 8, !tbaa !16
  store ptr %1, ptr @current_menu, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_dep(ptr noundef %dep) local_unnamed_addr #5 {
entry:
  %0 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %dep1 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 6
  %1 = load ptr, ptr %dep1, align 8, !tbaa !25
  %call = tail call ptr @expr_alloc_and(ptr noundef %1, ptr noundef %dep) #17
  %2 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %dep2 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 6
  store ptr %call, ptr %dep2, align 8, !tbaa !25
  ret void
}

declare ptr @expr_alloc_and(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_set_type(i32 noundef %type) local_unnamed_addr #5 {
entry:
  %0 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %sym1 = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %sym1, align 8, !tbaa !15
  %type2 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %2 = load i32, ptr %type2, align 8, !tbaa !26
  %cmp = icmp eq i32 %2, %type
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  store i32 %type, ptr %type2, align 8, !tbaa !26
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %name, align 8, !tbaa !29
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.3, ptr %3
  %call = tail call ptr @sym_type_name(i32 noundef %2) #17
  %call10 = tail call ptr @sym_type_name(i32 noundef %type) #17
  tail call void (ptr, ptr, ...) @menu_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %spec.select, ptr noundef %call, ptr noundef %call10)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry
  ret void
}

declare ptr @sym_type_name(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @menu_add_prompt(i32 noundef %type, ptr noundef %prompt, ptr noundef %dep) local_unnamed_addr #5 {
entry:
  %call.i = tail call ptr @xmalloc(i64 noundef 72) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %call.i, i8 0, i64 72, i1 false) #17
  %type1.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 1
  store i32 %type, ptr %type1.i, align 8, !tbaa !17
  %0 = load ptr, ptr @current_file, align 8, !tbaa !5
  %file.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 6
  store ptr %0, ptr %file.i, align 8, !tbaa !20
  %call2.i = tail call i32 @zconf_lineno() #17
  %lineno.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 7
  store i32 %call2.i, ptr %lineno.i, align 8, !tbaa !21
  %1 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %menu.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 5
  store ptr %1, ptr %menu.i, align 8, !tbaa !22
  %expr3.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 4
  store ptr null, ptr %expr3.i, align 8, !tbaa !23
  %visible.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 3
  store ptr %dep, ptr %visible.i, align 8, !tbaa !24
  %sym.i = getelementptr inbounds %struct.menu, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %sym.i, align 8, !tbaa !15
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %menu_add_prop.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %prop6.i = getelementptr inbounds %struct.symbol, ptr %2, i64 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %if.then.i
  %propp.0.i = phi ptr [ %prop6.i, %if.then.i ], [ %3, %for.cond.i ]
  %3 = load ptr, ptr %propp.0.i, align 8, !tbaa !5
  %tobool7.not.i = icmp eq ptr %3, null
  br i1 %tobool7.not.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  store ptr %call.i, ptr %propp.0.i, align 8, !tbaa !5
  br label %menu_add_prop.exit

menu_add_prop.exit:                               ; preds = %for.end.i, %entry
  %call1 = tail call ptr @__ctype_b_loc() #19
  %4 = load ptr, ptr %call1, align 8, !tbaa !5
  %5 = load i8, ptr %prompt, align 1, !tbaa !30
  %idxprom = sext i8 %5 to i64
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %idxprom
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !31
  %7 = and i16 %6, 8192
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %menu_add_prop.exit
  tail call void (ptr, ptr, ...) @prop_warn(ptr noundef %call.i, ptr noundef nonnull @.str.4)
  %8 = load ptr, ptr %call1, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then
  %prompt.addr.0 = phi ptr [ %prompt, %if.then ], [ %incdec.ptr, %while.cond ]
  %9 = load i8, ptr %prompt.addr.0, align 1, !tbaa !30
  %idxprom5 = sext i8 %9 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %8, i64 %idxprom5
  %10 = load i16, ptr %arrayidx6, align 2, !tbaa !31
  %11 = and i16 %10, 8192
  %tobool9.not = icmp eq i16 %11, 0
  %incdec.ptr = getelementptr inbounds i8, ptr %prompt.addr.0, i64 1
  br i1 %tobool9.not, label %if.end, label %while.cond

if.end:                                           ; preds = %while.cond, %menu_add_prop.exit
  %prompt.addr.1 = phi ptr [ %prompt, %menu_add_prop.exit ], [ %prompt.addr.0, %while.cond ]
  %12 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %prompt10 = getelementptr inbounds %struct.menu, ptr %12, i64 0, i32 4
  %13 = load ptr, ptr %prompt10, align 8, !tbaa !33
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  tail call void (ptr, ptr, ...) @prop_warn(ptr noundef %call.i, ptr noundef nonnull @.str.5)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then15, label %if.end29

if.then15:                                        ; preds = %if.end13
  %14 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %parent45 = getelementptr inbounds %struct.menu, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %parent45, align 8, !tbaa !16
  %cmp17.not46 = icmp eq ptr %15, null
  br i1 %cmp17.not46, label %if.end29, label %while.body19

while.body19:                                     ; preds = %cleanup, %if.then15
  %16 = phi ptr [ %19, %cleanup ], [ %15, %if.then15 ]
  %visibility = getelementptr inbounds %struct.menu, ptr %16, i64 0, i32 5
  %17 = load ptr, ptr %visibility, align 8, !tbaa !34
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %while.body19
  %call24 = tail call ptr @expr_copy(ptr noundef nonnull %17) #17
  %18 = load ptr, ptr %visible.i, align 8, !tbaa !24
  %call25 = tail call ptr @expr_alloc_and(ptr noundef %18, ptr noundef %call24) #17
  store ptr %call25, ptr %visible.i, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %while.body19
  %parent = getelementptr inbounds %struct.menu, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %parent, align 8, !tbaa !16
  %cmp17.not = icmp eq ptr %19, null
  br i1 %cmp17.not, label %if.end29, label %while.body19

if.end29:                                         ; preds = %cleanup, %if.then15, %if.end13
  %20 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %prompt30 = getelementptr inbounds %struct.menu, ptr %20, i64 0, i32 4
  store ptr %call.i, ptr %prompt30, align 8, !tbaa !33
  %text = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 2
  store ptr %prompt.addr.1, ptr %text, align 8, !tbaa !35
  ret ptr %call.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define internal void @prop_warn(ptr nocapture noundef readonly %prop, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #17
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %file = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 6
  %1 = load ptr, ptr %file, align 8, !tbaa !20
  %name = getelementptr inbounds %struct.file, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %name, align 8, !tbaa !12
  %lineno = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 7
  %3 = load i32, ptr %lineno, align 8, !tbaa !21
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %2, i32 noundef %3) #18
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %4, ptr noundef %fmt, ptr noundef nonnull %ap) #18
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc = call i32 @fputc(i32 10, ptr %5)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #17
  ret void
}

declare ptr @expr_copy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_visibility(ptr noundef %expr) local_unnamed_addr #5 {
entry:
  %0 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %visibility = getelementptr inbounds %struct.menu, ptr %0, i64 0, i32 5
  %1 = load ptr, ptr %visibility, align 8, !tbaa !34
  %call = tail call ptr @expr_alloc_and(ptr noundef %1, ptr noundef %expr) #17
  %2 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %visibility1 = getelementptr inbounds %struct.menu, ptr %2, i64 0, i32 5
  store ptr %call, ptr %visibility1, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @menu_add_expr(i32 noundef %type, ptr noundef %expr, ptr noundef %dep) local_unnamed_addr #5 {
entry:
  %call.i = tail call ptr @xmalloc(i64 noundef 72) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %call.i, i8 0, i64 72, i1 false) #17
  %type1.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 1
  store i32 %type, ptr %type1.i, align 8, !tbaa !17
  %0 = load ptr, ptr @current_file, align 8, !tbaa !5
  %file.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 6
  store ptr %0, ptr %file.i, align 8, !tbaa !20
  %call2.i = tail call i32 @zconf_lineno() #17
  %lineno.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 7
  store i32 %call2.i, ptr %lineno.i, align 8, !tbaa !21
  %1 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %menu.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 5
  store ptr %1, ptr %menu.i, align 8, !tbaa !22
  %expr3.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 4
  store ptr %expr, ptr %expr3.i, align 8, !tbaa !23
  %visible.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 3
  store ptr %dep, ptr %visible.i, align 8, !tbaa !24
  %sym.i = getelementptr inbounds %struct.menu, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %sym.i, align 8, !tbaa !15
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %menu_add_prop.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %prop6.i = getelementptr inbounds %struct.symbol, ptr %2, i64 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %if.then.i
  %propp.0.i = phi ptr [ %prop6.i, %if.then.i ], [ %3, %for.cond.i ]
  %3 = load ptr, ptr %propp.0.i, align 8, !tbaa !5
  %tobool7.not.i = icmp eq ptr %3, null
  br i1 %tobool7.not.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  store ptr %call.i, ptr %propp.0.i, align 8, !tbaa !5
  br label %menu_add_prop.exit

menu_add_prop.exit:                               ; preds = %for.end.i, %entry
  ret void
}

declare ptr @expr_alloc_symbol(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_finalize(ptr noundef %parent) local_unnamed_addr #5 {
entry:
  %dep = alloca ptr, align 8
  %dep2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dep) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dep2) #17
  %sym1 = getelementptr inbounds %struct.menu, ptr %parent, i64 0, i32 3
  %0 = load ptr, ptr %sym1, align 8, !tbaa !15
  %list = getelementptr inbounds %struct.menu, ptr %parent, i64 0, i32 2
  %1 = load ptr, ptr %list, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %1, null
  %tobool124.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else123, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool124.not, label %if.end35.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %flags.i = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %2 = load i32, ptr %flags.i, align 4, !tbaa !36
  %and.i = and i32 %2, 16
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end35.thread, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %type, align 8, !tbaa !26
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %for.body.preheader, label %for.body20.preheader

for.body.preheader:                               ; preds = %if.then3
  store ptr %parent, ptr @current_entry, align 8, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %menu.0538 = phi ptr [ %menu.0, %for.inc ], [ %1, %for.body.preheader ]
  %sym7 = getelementptr inbounds %struct.menu, ptr %menu.0538, i64 0, i32 3
  %4 = load ptr, ptr %sym7, align 8, !tbaa !15
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %for.inc, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %for.body
  %type11 = getelementptr inbounds %struct.symbol, ptr %4, i64 0, i32 2
  %5 = load i32, ptr %type11, align 8, !tbaa !26
  %cmp12.not = icmp eq i32 %5, 0
  br i1 %cmp12.not, label %for.inc, label %if.then5.i

if.then5.i:                                       ; preds = %land.lhs.true9
  store i32 %5, ptr %type, align 8, !tbaa !26
  br label %for.body20.preheader

for.inc:                                          ; preds = %land.lhs.true9, %for.body
  %menu.0 = load ptr, ptr %menu.0538, align 8, !tbaa !5
  %tobool6.not = icmp eq ptr %menu.0, null
  br i1 %tobool6.not, label %for.body20.preheader, label %for.body

for.body20.preheader:                             ; preds = %for.inc, %if.then5.i, %if.then3
  br label %for.body20

for.body20:                                       ; preds = %for.inc30, %for.body20.preheader
  %menu.1541 = phi ptr [ %menu.1, %for.inc30 ], [ %1, %for.body20.preheader ]
  store ptr %menu.1541, ptr @current_entry, align 8, !tbaa !5
  %sym21 = getelementptr inbounds %struct.menu, ptr %menu.1541, i64 0, i32 3
  %6 = load ptr, ptr %sym21, align 8, !tbaa !15
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %for.inc30, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %for.body20
  %type25 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 2
  %7 = load i32, ptr %type25, align 8, !tbaa !26
  %cmp26 = icmp eq i32 %7, 0
  br i1 %cmp26, label %if.then27, label %for.inc30

if.then27:                                        ; preds = %land.lhs.true23
  %8 = load i32, ptr %type, align 8, !tbaa !26
  %cmp.i496 = icmp eq i32 %8, 0
  br i1 %cmp.i496, label %for.inc30, label %if.then5.i499

if.then5.i499:                                    ; preds = %if.then27
  store i32 %8, ptr %type25, align 8, !tbaa !26
  br label %for.inc30

for.inc30:                                        ; preds = %if.then5.i499, %if.then27, %land.lhs.true23, %for.body20
  %menu.1 = load ptr, ptr %menu.1541, align 8, !tbaa !5
  %tobool19.not = icmp eq ptr %menu.1, null
  br i1 %tobool19.not, label %if.end35, label %for.body20

if.end35.thread:                                  ; preds = %land.lhs.true, %if.then
  %dep34 = getelementptr inbounds %struct.menu, ptr %parent, i64 0, i32 6
  %9 = load ptr, ptr %dep34, align 8, !tbaa !25
  br label %for.body39.preheader

if.end35:                                         ; preds = %for.inc30
  %call33 = tail call ptr @expr_alloc_symbol(ptr noundef nonnull %0) #17
  %menu.2545.pre = load ptr, ptr %list, align 8, !tbaa !5
  %tobool38.not546 = icmp eq ptr %menu.2545.pre, null
  br i1 %tobool38.not546, label %for.end110, label %for.body39.preheader

for.body39.preheader:                             ; preds = %if.end35, %if.end35.thread
  %parentdep.0573 = phi ptr [ %9, %if.end35.thread ], [ %call33, %if.end35 ]
  %menu.2545572 = phi ptr [ %1, %if.end35.thread ], [ %menu.2545.pre, %if.end35 ]
  br label %for.body39

for.cond37.loopexit:                              ; preds = %for.inc105, %for.body39
  %menu.2 = load ptr, ptr %menu.2547, align 8, !tbaa !5
  %tobool38.not = icmp eq ptr %menu.2, null
  br i1 %tobool38.not, label %for.end110, label %for.body39

for.body39:                                       ; preds = %for.cond37.loopexit, %for.body39.preheader
  %menu.2547 = phi ptr [ %menu.2, %for.cond37.loopexit ], [ %menu.2545572, %for.body39.preheader ]
  %dep40 = getelementptr inbounds %struct.menu, ptr %menu.2547, i64 0, i32 6
  %10 = load ptr, ptr %dep40, align 8, !tbaa !25
  %call41 = tail call fastcc ptr @rewrite_m(ptr noundef %10)
  %call42 = tail call ptr @expr_transform(ptr noundef %call41) #17
  %call43 = tail call ptr @expr_copy(ptr noundef %parentdep.0573) #17
  %call44 = tail call ptr @expr_alloc_and(ptr noundef %call43, ptr noundef %call42) #17
  %call45 = tail call ptr @expr_eliminate_dups(ptr noundef %call44) #17
  store ptr %call45, ptr %dep40, align 8, !tbaa !25
  %sym47 = getelementptr inbounds %struct.menu, ptr %menu.2547, i64 0, i32 3
  %11 = load ptr, ptr %sym47, align 8, !tbaa !15
  %tobool48.not = icmp eq ptr %11, null
  %prop51 = getelementptr inbounds %struct.symbol, ptr %11, i64 0, i32 7
  %prompt = getelementptr inbounds %struct.menu, ptr %menu.2547, i64 0, i32 4
  %prop.0.in = select i1 %tobool48.not, ptr %prompt, ptr %prop51
  %prop.1542 = load ptr, ptr %prop.0.in, align 8, !tbaa !5
  %tobool55.not543 = icmp eq ptr %prop.1542, null
  br i1 %tobool55.not543, label %for.cond37.loopexit, label %for.body56

for.body56:                                       ; preds = %for.inc105, %for.body39
  %prop.1544 = phi ptr [ %prop.1, %for.inc105 ], [ %prop.1542, %for.body39 ]
  %menu57 = getelementptr inbounds %struct.property, ptr %prop.1544, i64 0, i32 5
  %12 = load ptr, ptr %menu57, align 8, !tbaa !22
  %cmp58.not = icmp eq ptr %12, %menu.2547
  br i1 %cmp58.not, label %if.end60, label %for.inc105

if.end60:                                         ; preds = %for.body56
  %visible = getelementptr inbounds %struct.property, ptr %prop.1544, i64 0, i32 3
  %13 = load ptr, ptr %visible, align 8, !tbaa !24
  %call61 = tail call fastcc ptr @rewrite_m(ptr noundef %13)
  %call62 = tail call ptr @expr_transform(ptr noundef %call61) #17
  %call63 = tail call ptr @expr_copy(ptr noundef %call45) #17
  %call64 = tail call ptr @expr_alloc_and(ptr noundef %call63, ptr noundef %call62) #17
  %call65 = tail call ptr @expr_eliminate_dups(ptr noundef %call64) #17
  store ptr %call65, ptr %dep, align 8, !tbaa !5
  %14 = load ptr, ptr %sym47, align 8, !tbaa !15
  %tobool67.not = icmp eq ptr %14, null
  br i1 %tobool67.not, label %if.end74, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end60
  %type70 = getelementptr inbounds %struct.symbol, ptr %14, i64 0, i32 2
  %15 = load i32, ptr %type70, align 8, !tbaa !26
  %cmp71.not = icmp eq i32 %15, 2
  br i1 %cmp71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %land.lhs.true68
  %call73 = tail call ptr @expr_trans_bool(ptr noundef %call65) #17
  store ptr %call73, ptr %dep, align 8, !tbaa !5
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %land.lhs.true68, %if.end60
  %16 = phi ptr [ %call73, %if.then72 ], [ %call65, %land.lhs.true68 ], [ %call65, %if.end60 ]
  store ptr %16, ptr %visible, align 8, !tbaa !24
  %type77 = getelementptr inbounds %struct.property, ptr %prop.1544, i64 0, i32 1
  %17 = load i32, ptr %type77, align 8, !tbaa !17
  switch i32 %17, label %for.inc105 [
    i32 6, label %if.then79
    i32 7, label %if.then92
  ]

if.then79:                                        ; preds = %if.end74
  %call80 = tail call ptr @prop_get_symbol(ptr noundef nonnull %prop.1544) #17
  %rev_dep = getelementptr inbounds %struct.symbol, ptr %call80, i64 0, i32 9
  br label %for.inc105.sink.split

if.then92:                                        ; preds = %if.end74
  %call94 = tail call ptr @prop_get_symbol(ptr noundef nonnull %prop.1544) #17
  %implied = getelementptr inbounds %struct.symbol, ptr %call94, i64 0, i32 10
  br label %for.inc105.sink.split

for.inc105.sink.split:                            ; preds = %if.then92, %if.then79
  %rev_dep.sink591 = phi ptr [ %rev_dep, %if.then79 ], [ %implied, %if.then92 ]
  %18 = load ptr, ptr %rev_dep.sink591, align 8, !tbaa !5
  %19 = load ptr, ptr %sym47, align 8, !tbaa !15
  %call83 = tail call ptr @expr_alloc_symbol(ptr noundef %19) #17
  %call84 = tail call ptr @expr_copy(ptr noundef %16) #17
  %call85 = tail call ptr @expr_alloc_and(ptr noundef %call83, ptr noundef %call84) #17
  %call86 = tail call ptr @expr_alloc_or(ptr noundef %18, ptr noundef %call85) #17
  store ptr %call86, ptr %rev_dep.sink591, align 8, !tbaa !5
  br label %for.inc105

for.inc105:                                       ; preds = %for.inc105.sink.split, %if.end74, %for.body56
  %prop.1 = load ptr, ptr %prop.1544, align 8, !tbaa !5
  %tobool55.not = icmp eq ptr %prop.1, null
  br i1 %tobool55.not, label %for.cond37.loopexit, label %for.body56

for.end110:                                       ; preds = %for.cond37.loopexit, %if.end35
  %parentdep.0574 = phi ptr [ %call33, %if.end35 ], [ %parentdep.0573, %for.cond37.loopexit ]
  br i1 %tobool124.not, label %if.end115, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %for.end110
  %flags.i507 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %flags.i507, align 4, !tbaa !36
  %and.i508 = and i32 %20, 16
  %tobool.i509.not = icmp eq i32 %and.i508, 0
  br i1 %tobool.i509.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %land.lhs.true112
  tail call void @expr_free(ptr noundef %parentdep.0574) #17
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %land.lhs.true112, %for.end110
  %menu.3548 = load ptr, ptr %list, align 8, !tbaa !5
  %tobool118.not549 = icmp eq ptr %menu.3548, null
  br i1 %tobool118.not549, label %for.end293, label %for.body119

for.body119:                                      ; preds = %for.body119, %if.end115
  %menu.3550 = phi ptr [ %menu.3, %for.body119 ], [ %menu.3548, %if.end115 ]
  tail call void @menu_finalize(ptr noundef nonnull %menu.3550)
  %menu.3 = load ptr, ptr %menu.3550, align 8, !tbaa !5
  %tobool118.not = icmp eq ptr %menu.3, null
  br i1 %tobool118.not, label %if.end182, label %for.body119

if.else123:                                       ; preds = %entry
  br i1 %tobool124.not, label %if.end329, label %if.then125

if.then125:                                       ; preds = %if.else123
  %prompt126 = getelementptr inbounds %struct.menu, ptr %parent, i64 0, i32 4
  %21 = load ptr, ptr %prompt126, align 8, !tbaa !33
  %tobool127.not = icmp eq ptr %21, null
  br i1 %tobool127.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then125
  %visible129 = getelementptr inbounds %struct.property, ptr %21, i64 0, i32 3
  %22 = load ptr, ptr %visible129, align 8, !tbaa !24
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then125
  %cond = phi ptr [ %22, %cond.true ], [ null, %if.then125 ]
  %call131 = tail call ptr @expr_trans_compare(ptr noundef %cond, i32 noundef 5, ptr noundef nonnull @symbol_no) #17
  %call132 = tail call ptr @expr_transform(ptr noundef %call131) #17
  %call133 = tail call ptr @expr_eliminate_dups(ptr noundef %call132) #17
  %menu.4551 = load ptr, ptr %parent, align 8, !tbaa !37
  %tobool136.not552 = icmp eq ptr %menu.4551, null
  br i1 %tobool136.not552, label %for.end167.thread, label %for.body137

for.end167.thread:                                ; preds = %cond.end
  call void @expr_free(ptr noundef %call133) #17
  br label %if.end175

for.body137:                                      ; preds = %next163, %cond.end
  %menu.4554 = phi ptr [ %menu.4, %next163 ], [ %menu.4551, %cond.end ]
  %last_menu.0553 = phi ptr [ %menu.4554, %next163 ], [ null, %cond.end ]
  %prompt138 = getelementptr inbounds %struct.menu, ptr %menu.4554, i64 0, i32 4
  %23 = load ptr, ptr %prompt138, align 8, !tbaa !33
  %tobool139.not = icmp eq ptr %23, null
  %visible142 = getelementptr inbounds %struct.property, ptr %23, i64 0, i32 3
  %dep145 = getelementptr inbounds %struct.menu, ptr %menu.4554, i64 0, i32 6
  %cond147.in = select i1 %tobool139.not, ptr %dep145, ptr %visible142
  %cond147 = load ptr, ptr %cond147.in, align 8, !tbaa !5
  store ptr %cond147, ptr %dep, align 8, !tbaa !5
  %call148 = call i32 @expr_contains_symbol(ptr noundef %cond147, ptr noundef %0) #17
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %for.end167, label %if.end151

if.end151:                                        ; preds = %for.body137
  %24 = load ptr, ptr %dep, align 8, !tbaa !5
  %call152 = call zeroext i1 @expr_depends_symbol(ptr noundef %24, ptr noundef %0) #17
  br i1 %call152, label %next163, label %if.end154

if.end154:                                        ; preds = %if.end151
  %25 = load ptr, ptr %dep, align 8, !tbaa !5
  %call155 = call ptr @expr_trans_compare(ptr noundef %25, i32 noundef 5, ptr noundef nonnull @symbol_no) #17
  store ptr %call155, ptr %dep, align 8, !tbaa !5
  %call156 = call ptr @expr_transform(ptr noundef %call155) #17
  %call157 = call ptr @expr_eliminate_dups(ptr noundef %call156) #17
  store ptr %call157, ptr %dep, align 8, !tbaa !5
  %call158 = call ptr @expr_copy(ptr noundef %call133) #17
  store ptr %call158, ptr %dep2, align 8, !tbaa !5
  call void @expr_eliminate_eq(ptr noundef nonnull %dep, ptr noundef nonnull %dep2) #17
  %26 = load ptr, ptr %dep, align 8, !tbaa !5
  call void @expr_free(ptr noundef %26) #17
  %27 = load ptr, ptr %dep2, align 8, !tbaa !5
  %tobool.not.i510 = icmp eq ptr %27, null
  br i1 %tobool.not.i510, label %if.end162, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.end154
  %28 = load i32, ptr %27, align 8, !tbaa !38
  %cmp.i511 = icmp eq i32 %28, 11
  br i1 %cmp.i511, label %expr_is_yes.exit, label %if.then161

expr_is_yes.exit:                                 ; preds = %lor.rhs.i
  %left.i = getelementptr inbounds %struct.expr, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %left.i, align 8, !tbaa !30
  %cmp1.i.not = icmp eq ptr %29, @symbol_yes
  br i1 %cmp1.i.not, label %if.end162, label %if.then161

if.then161:                                       ; preds = %expr_is_yes.exit, %lor.rhs.i
  call void @expr_free(ptr noundef nonnull %27) #17
  br label %for.end167

if.end162:                                        ; preds = %expr_is_yes.exit, %if.end154
  call void @expr_free(ptr noundef %27) #17
  br label %next163

next163:                                          ; preds = %if.end162, %if.end151
  call void @menu_finalize(ptr noundef nonnull %menu.4554)
  %parent164 = getelementptr inbounds %struct.menu, ptr %menu.4554, i64 0, i32 1
  store ptr %parent, ptr %parent164, align 8, !tbaa !16
  %menu.4 = load ptr, ptr %menu.4554, align 8, !tbaa !37
  %tobool136.not = icmp eq ptr %menu.4, null
  br i1 %tobool136.not, label %for.end167.thread577, label %for.body137

for.end167.thread577:                             ; preds = %next163
  call void @expr_free(ptr noundef %call133) #17
  br label %if.then169

for.end167:                                       ; preds = %if.then161, %for.body137
  call void @expr_free(ptr noundef %call133) #17
  %tobool168.not = icmp eq ptr %last_menu.0553, null
  br i1 %tobool168.not, label %if.end175, label %if.then169

if.then169:                                       ; preds = %for.end167, %for.end167.thread577
  %last_menu.0534580 = phi ptr [ %menu.4554, %for.end167.thread577 ], [ %last_menu.0553, %for.end167 ]
  %30 = load ptr, ptr %parent, align 8, !tbaa !37
  store ptr %30, ptr %list, align 8, !tbaa !40
  %31 = load ptr, ptr %last_menu.0534580, align 8, !tbaa !37
  store ptr %31, ptr %parent, align 8, !tbaa !37
  store ptr null, ptr %last_menu.0534580, align 8, !tbaa !37
  br label %if.end175

if.end175:                                        ; preds = %if.then169, %for.end167, %for.end167.thread
  %dir_dep = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %dir_dep, align 8, !tbaa !41
  %dep177 = getelementptr inbounds %struct.menu, ptr %parent, i64 0, i32 6
  %33 = load ptr, ptr %dep177, align 8, !tbaa !25
  %call178 = call ptr @expr_alloc_or(ptr noundef %32, ptr noundef %33) #17
  store ptr %call178, ptr %dir_dep, align 8, !tbaa !41
  br label %if.end182

if.end182:                                        ; preds = %if.end175, %for.body119
  %menu.5562.pr = load ptr, ptr %list, align 8, !tbaa !5
  %tobool185.not563 = icmp eq ptr %menu.5562.pr, null
  br i1 %tobool185.not563, label %for.end293, label %for.body186.lr.ph

for.body186.lr.ph:                                ; preds = %if.end182
  %tobool187.not = icmp eq ptr %0, null
  %flags.i512 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %type227 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  br label %for.body186

for.body186:                                      ; preds = %for.inc291, %for.body186.lr.ph
  %menu.5564 = phi ptr [ %menu.5562.pr, %for.body186.lr.ph ], [ %menu.5, %for.inc291 ]
  br i1 %tobool187.not, label %if.end266, label %land.lhs.true188

land.lhs.true188:                                 ; preds = %for.body186
  %34 = load i32, ptr %flags.i512, align 4, !tbaa !36
  %and.i513 = and i32 %34, 16
  %tobool.i514.not = icmp eq i32 %and.i513, 0
  br i1 %tobool.i514.not, label %if.end266, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %land.lhs.true188
  %sym191 = getelementptr inbounds %struct.menu, ptr %menu.5564, i64 0, i32 3
  %35 = load ptr, ptr %sym191, align 8, !tbaa !15
  %tobool192.not = icmp eq ptr %35, null
  br i1 %tobool192.not, label %if.end266, label %land.lhs.true193

land.lhs.true193:                                 ; preds = %land.lhs.true190
  %flags.i515 = getelementptr inbounds %struct.symbol, ptr %35, i64 0, i32 6
  %36 = load i32, ptr %flags.i515, align 4, !tbaa !36
  %and.i516 = and i32 %36, 32
  %tobool.i517.not = icmp eq i32 %and.i516, 0
  br i1 %tobool.i517.not, label %if.then196, label %if.end266

if.then196:                                       ; preds = %land.lhs.true193
  store ptr %menu.5564, ptr @current_entry, align 8, !tbaa !5
  %or = or i32 %36, 32
  store i32 %or, ptr %flags.i515, align 4, !tbaa !36
  %prompt198 = getelementptr inbounds %struct.menu, ptr %menu.5564, i64 0, i32 4
  %37 = load ptr, ptr %prompt198, align 8, !tbaa !33
  %tobool199.not = icmp eq ptr %37, null
  br i1 %tobool199.not, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.then196
  call void (ptr, ptr, ...) @menu_warn(ptr noundef nonnull %menu.5564, ptr noundef nonnull @.str.6)
  %.pre = load ptr, ptr %sym191, align 8, !tbaa !15
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.then196
  %38 = phi ptr [ %.pre, %if.then200 ], [ %35, %if.then196 ]
  %prop203 = getelementptr inbounds %struct.symbol, ptr %38, i64 0, i32 7
  %prop.2556 = load ptr, ptr %prop203, align 8, !tbaa !5
  %tobool205.not557 = icmp eq ptr %prop.2556, null
  br i1 %tobool205.not557, label %for.end226, label %for.body206

for.body206:                                      ; preds = %for.inc224, %if.end201
  %prop.2558 = phi ptr [ %prop.2, %for.inc224 ], [ %prop.2556, %if.end201 ]
  %type207 = getelementptr inbounds %struct.property, ptr %prop.2558, i64 0, i32 1
  %39 = load i32, ptr %type207, align 8, !tbaa !17
  %cmp208 = icmp eq i32 %39, 4
  br i1 %cmp208, label %if.then209, label %if.end210

if.then209:                                       ; preds = %for.body206
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.2558, ptr noundef nonnull @.str.7)
  br label %if.end210

if.end210:                                        ; preds = %if.then209, %for.body206
  %menu211 = getelementptr inbounds %struct.property, ptr %prop.2558, i64 0, i32 5
  %40 = load ptr, ptr %menu211, align 8, !tbaa !22
  %cmp212 = icmp eq ptr %40, %menu.5564
  br i1 %cmp212, label %for.inc224, label %if.end214

if.end214:                                        ; preds = %if.end210
  %41 = load i32, ptr %type207, align 8, !tbaa !17
  %cmp216 = icmp eq i32 %41, 1
  br i1 %cmp216, label %land.lhs.true217, label %for.inc224

land.lhs.true217:                                 ; preds = %if.end214
  %parent219 = getelementptr inbounds %struct.menu, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %parent219, align 8, !tbaa !16
  %sym220 = getelementptr inbounds %struct.menu, ptr %42, i64 0, i32 3
  %43 = load ptr, ptr %sym220, align 8, !tbaa !15
  %cmp221.not = icmp eq ptr %43, %0
  br i1 %cmp221.not, label %for.inc224, label %if.then222

if.then222:                                       ; preds = %land.lhs.true217
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.2558, ptr noundef nonnull @.str.8)
  br label %for.inc224

for.inc224:                                       ; preds = %if.then222, %land.lhs.true217, %if.end214, %if.end210
  %prop.2 = load ptr, ptr %prop.2558, align 8, !tbaa !5
  %tobool205.not = icmp eq ptr %prop.2, null
  br i1 %tobool205.not, label %for.end226, label %for.body206

for.end226:                                       ; preds = %for.inc224, %if.end201
  %44 = load i32, ptr %type227, align 8, !tbaa !26
  %cmp228 = icmp eq i32 %44, 2
  br i1 %cmp228, label %land.lhs.true229, label %if.end256

land.lhs.true229:                                 ; preds = %for.end226
  %45 = load ptr, ptr %sym191, align 8, !tbaa !15
  %type231 = getelementptr inbounds %struct.symbol, ptr %45, i64 0, i32 2
  %46 = load i32, ptr %type231, align 8, !tbaa !26
  %cmp232.not = icmp eq i32 %46, 2
  br i1 %cmp232.not, label %if.end256, label %if.then233

if.then233:                                       ; preds = %land.lhs.true229
  %call234 = call ptr @expr_alloc_comp(i32 noundef 4, ptr noundef nonnull %0, ptr noundef nonnull @symbol_yes) #17
  %dep235 = getelementptr inbounds %struct.menu, ptr %menu.5564, i64 0, i32 6
  %47 = load ptr, ptr %dep235, align 8, !tbaa !25
  %call236 = call ptr @expr_alloc_and(ptr noundef %call234, ptr noundef %47) #17
  store ptr %call236, ptr %dep235, align 8, !tbaa !25
  %48 = load ptr, ptr %sym191, align 8, !tbaa !15
  %prop239 = getelementptr inbounds %struct.symbol, ptr %48, i64 0, i32 7
  %prop.3559 = load ptr, ptr %prop239, align 8, !tbaa !5
  %tobool241.not560 = icmp eq ptr %prop.3559, null
  br i1 %tobool241.not560, label %if.end256, label %for.body242

for.body242:                                      ; preds = %for.inc253, %if.then233
  %prop.3561 = phi ptr [ %prop.3, %for.inc253 ], [ %prop.3559, %if.then233 ]
  %menu243 = getelementptr inbounds %struct.property, ptr %prop.3561, i64 0, i32 5
  %49 = load ptr, ptr %menu243, align 8, !tbaa !22
  %cmp244.not = icmp eq ptr %49, %menu.5564
  br i1 %cmp244.not, label %if.end246, label %for.inc253

if.end246:                                        ; preds = %for.body242
  %call247 = call ptr @expr_copy(ptr noundef %call234) #17
  %visible248 = getelementptr inbounds %struct.property, ptr %prop.3561, i64 0, i32 3
  %50 = load ptr, ptr %visible248, align 8, !tbaa !24
  %call250 = call ptr @expr_alloc_and(ptr noundef %call247, ptr noundef %50) #17
  store ptr %call250, ptr %visible248, align 8, !tbaa !24
  br label %for.inc253

for.inc253:                                       ; preds = %if.end246, %for.body242
  %prop.3 = load ptr, ptr %prop.3561, align 8, !tbaa !5
  %tobool241.not = icmp eq ptr %prop.3, null
  br i1 %tobool241.not, label %if.end256, label %for.body242

if.end256:                                        ; preds = %for.inc253, %if.then233, %land.lhs.true229, %for.end226
  %call.i518 = call ptr @expr_alloc_symbol(ptr noundef %0) #17
  %call.i.i = call ptr @xmalloc(i64 noundef 72) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %call.i.i, i8 0, i64 72, i1 false) #17
  %type1.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 1
  store i32 5, ptr %type1.i.i, align 8, !tbaa !17
  %51 = load ptr, ptr @current_file, align 8, !tbaa !5
  %file.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 6
  store ptr %51, ptr %file.i.i, align 8, !tbaa !20
  %call2.i.i = call i32 @zconf_lineno() #17
  %lineno.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 7
  store i32 %call2.i.i, ptr %lineno.i.i, align 8, !tbaa !21
  %52 = load ptr, ptr @current_entry, align 8, !tbaa !5
  %menu.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 5
  store ptr %52, ptr %menu.i.i, align 8, !tbaa !22
  %expr3.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 4
  store ptr %call.i518, ptr %expr3.i.i, align 8, !tbaa !23
  %visible.i.i = getelementptr inbounds %struct.property, ptr %call.i.i, i64 0, i32 3
  store ptr null, ptr %visible.i.i, align 8, !tbaa !24
  %sym.i.i = getelementptr inbounds %struct.menu, ptr %52, i64 0, i32 3
  %53 = load ptr, ptr %sym.i.i, align 8, !tbaa !15
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %menu_add_symbol.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end256
  %prop6.i.i = getelementptr inbounds %struct.symbol, ptr %53, i64 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i, %if.then.i.i
  %propp.0.i.i = phi ptr [ %prop6.i.i, %if.then.i.i ], [ %54, %for.cond.i.i ]
  %54 = load ptr, ptr %propp.0.i.i, align 8, !tbaa !5
  %tobool7.not.i.i = icmp eq ptr %54, null
  br i1 %tobool7.not.i.i, label %for.end.i.i, label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  store ptr %call.i.i, ptr %propp.0.i.i, align 8, !tbaa !5
  br label %menu_add_symbol.exit

menu_add_symbol.exit:                             ; preds = %for.end.i.i, %if.end256
  %call257 = call ptr @sym_get_choice_prop(ptr noundef %0) #17
  %expr258 = getelementptr inbounds %struct.property, ptr %call257, i64 0, i32 4
  br label %for.cond259

for.cond259:                                      ; preds = %for.cond259, %menu_add_symbol.exit
  %ep.0 = phi ptr [ %expr258, %menu_add_symbol.exit ], [ %left, %for.cond259 ]
  %55 = load ptr, ptr %ep.0, align 8, !tbaa !5
  %tobool260.not = icmp eq ptr %55, null
  %left = getelementptr inbounds %struct.expr, ptr %55, i64 0, i32 1
  br i1 %tobool260.not, label %for.end263, label %for.cond259

for.end263:                                       ; preds = %for.cond259
  %call264 = call ptr @expr_alloc_one(i32 noundef 10, ptr noundef null) #17
  store ptr %call264, ptr %ep.0, align 8, !tbaa !5
  %56 = load ptr, ptr %sym191, align 8, !tbaa !15
  %right = getelementptr inbounds %struct.expr, ptr %call264, i64 0, i32 2
  store ptr %56, ptr %right, align 8, !tbaa !30
  br label %if.end266

if.end266:                                        ; preds = %for.end263, %land.lhs.true193, %land.lhs.true190, %land.lhs.true188, %for.body186
  %list267 = getelementptr inbounds %struct.menu, ptr %menu.5564, i64 0, i32 2
  %57 = load ptr, ptr %list267, align 8, !tbaa !40
  %tobool268.not = icmp eq ptr %57, null
  br i1 %tobool268.not, label %for.inc291thread-pre-split, label %land.lhs.true269

land.lhs.true269:                                 ; preds = %if.end266
  %prompt270 = getelementptr inbounds %struct.menu, ptr %menu.5564, i64 0, i32 4
  %58 = load ptr, ptr %prompt270, align 8, !tbaa !33
  %tobool271.not = icmp eq ptr %58, null
  br i1 %tobool271.not, label %for.cond276.preheader, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true269
  %text = getelementptr inbounds %struct.property, ptr %58, i64 0, i32 2
  %59 = load ptr, ptr %text, align 8, !tbaa !35
  %tobool273.not = icmp eq ptr %59, null
  br i1 %tobool273.not, label %for.cond276.preheader, label %for.inc291thread-pre-split

for.cond276.preheader:                            ; preds = %lor.lhs.false, %land.lhs.true269
  br label %for.cond276

for.cond276:                                      ; preds = %for.cond276, %for.cond276.preheader
  %last_menu.1 = phi ptr [ %60, %for.cond276 ], [ %57, %for.cond276.preheader ]
  %parent277 = getelementptr inbounds %struct.menu, ptr %last_menu.1, i64 0, i32 1
  store ptr %parent, ptr %parent277, align 8, !tbaa !16
  %60 = load ptr, ptr %last_menu.1, align 8, !tbaa !37
  %tobool279.not = icmp eq ptr %60, null
  br i1 %tobool279.not, label %for.end284, label %for.cond276

for.end284:                                       ; preds = %for.cond276
  %61 = load ptr, ptr %menu.5564, align 8, !tbaa !37
  store ptr %61, ptr %last_menu.1, align 8, !tbaa !37
  store ptr %57, ptr %menu.5564, align 8, !tbaa !37
  store ptr null, ptr %list267, align 8, !tbaa !40
  br label %for.inc291

for.inc291thread-pre-split:                       ; preds = %lor.lhs.false, %if.end266
  %menu.5.pr = load ptr, ptr %menu.5564, align 8, !tbaa !5
  br label %for.inc291

for.inc291:                                       ; preds = %for.inc291thread-pre-split, %for.end284
  %menu.5 = phi ptr [ %menu.5.pr, %for.inc291thread-pre-split ], [ %57, %for.end284 ]
  %tobool185.not = icmp eq ptr %menu.5, null
  br i1 %tobool185.not, label %for.end293, label %for.body186

for.end293:                                       ; preds = %for.inc291, %if.end182, %if.end115
  %tobool294.not = icmp eq ptr %0, null
  br i1 %tobool294.not, label %if.end329, label %land.lhs.true295

land.lhs.true295:                                 ; preds = %for.end293
  %flags296 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %62 = load i32, ptr %flags296, align 4, !tbaa !36
  %and = and i32 %62, 32768
  %tobool297.not = icmp eq i32 %and, 0
  br i1 %tobool297.not, label %if.then298, label %land.lhs.true313

if.then298:                                       ; preds = %land.lhs.true295
  %type299 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %63 = load i32, ptr %type299, align 8, !tbaa !26
  %cmp300 = icmp eq i32 %63, 0
  br i1 %cmp300, label %if.then301, label %if.end302

if.then301:                                       ; preds = %if.then298
  call void (ptr, ptr, ...) @menu_warn(ptr noundef %parent, ptr noundef nonnull @.str.9)
  %.pre568 = load i32, ptr %flags296, align 4, !tbaa !36
  br label %if.end302

if.end302:                                        ; preds = %if.then301, %if.then298
  %64 = phi i32 [ %.pre568, %if.then301 ], [ %62, %if.then298 ]
  %and.i520 = and i32 %64, 16
  %tobool.i521.not = icmp eq i32 %and.i520, 0
  br i1 %tobool.i521.not, label %if.end308, label %land.lhs.true304

land.lhs.true304:                                 ; preds = %if.end302
  %prompt305 = getelementptr inbounds %struct.menu, ptr %parent, i64 0, i32 4
  %65 = load ptr, ptr %prompt305, align 8, !tbaa !33
  %tobool306.not = icmp eq ptr %65, null
  br i1 %tobool306.not, label %if.then307, label %if.end308

if.then307:                                       ; preds = %land.lhs.true304
  call void (ptr, ptr, ...) @menu_warn(ptr noundef nonnull %parent, ptr noundef nonnull @.str.10)
  br label %if.end308

if.end308:                                        ; preds = %if.then307, %land.lhs.true304, %if.end302
  %prop1.i = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 7
  %prop.0153.i = load ptr, ptr %prop1.i, align 8, !tbaa !5
  %tobool.not154.i = icmp eq ptr %prop.0153.i, null
  br i1 %tobool.not154.i, label %sym_check_prop.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end308
  %name48.i = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %prop.0155.i = phi ptr [ %prop.0153.i, %for.body.lr.ph.i ], [ %prop.0.i, %for.inc.i ]
  %type.i = getelementptr inbounds %struct.property, ptr %prop.0155.i, i64 0, i32 1
  %66 = load i32, ptr %type.i, align 8, !tbaa !17
  switch i32 %66, label %for.inc.i [
    i32 4, label %sw.bb.i
    i32 6, label %sw.bb38.i
    i32 7, label %sw.bb38.i
    i32 8, label %sw.bb61.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  %67 = load i32, ptr %type299, align 8, !tbaa !26
  %.off.i = add i32 %67, -3
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %land.lhs.true.i, label %if.end.i522

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %expr.i = getelementptr inbounds %struct.property, ptr %prop.0155.i, i64 0, i32 4
  %68 = load ptr, ptr %expr.i, align 8, !tbaa !23
  %69 = load i32, ptr %68, align 8, !tbaa !38
  %cmp9.not.i = icmp eq i32 %69, 11
  br i1 %cmp9.not.i, label %if.end.i522, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %70 = load ptr, ptr %name48.i, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.0155.i, ptr noundef nonnull @.str.15, ptr noundef %70) #17
  br label %if.end.i522

if.end.i522:                                      ; preds = %if.then.i, %land.lhs.true.i, %sw.bb.i
  %expr10.i = getelementptr inbounds %struct.property, ptr %prop.0155.i, i64 0, i32 4
  %71 = load ptr, ptr %expr10.i, align 8, !tbaa !23
  %72 = load i32, ptr %71, align 8, !tbaa !38
  %cmp12.not.i = icmp eq i32 %72, 11
  br i1 %cmp12.not.i, label %if.end14.i, label %for.inc.i

if.end14.i:                                       ; preds = %if.end.i522
  %call.i523 = call ptr @prop_get_symbol(ptr noundef nonnull %prop.0155.i) #17
  %73 = load i32, ptr %type299, align 8, !tbaa !26
  %.off123.i = add i32 %73, -3
  %switch124.i = icmp ult i32 %.off123.i, 2
  br i1 %switch124.i, label %if.then20.i, label %if.end26.i

if.then20.i:                                      ; preds = %if.end14.i
  %type.i.i = getelementptr inbounds %struct.symbol, ptr %call.i523, i64 0, i32 2
  %74 = load i32, ptr %type.i.i, align 8, !tbaa !26
  switch i32 %74, label %if.then23.i [
    i32 3, label %if.end26.i
    i32 4, label %if.end26.i
    i32 0, label %menu_validate_number.exit.i
  ]

menu_validate_number.exit.i:                      ; preds = %if.then20.i
  %name.i.i = getelementptr inbounds %struct.symbol, ptr %call.i523, i64 0, i32 1
  %75 = load ptr, ptr %name.i.i, align 8, !tbaa !29
  %call.i.i524 = call zeroext i1 @sym_string_valid(ptr noundef nonnull %0, ptr noundef %75) #17
  br i1 %call.i.i524, label %if.end26.i, label %if.then23.i

if.then23.i:                                      ; preds = %menu_validate_number.exit.i, %if.then20.i
  %76 = load ptr, ptr %name48.i, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.0155.i, ptr noundef nonnull @.str.16, ptr noundef %76) #17
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %menu_validate_number.exit.i, %if.then20.i, %if.then20.i, %if.end14.i
  %77 = load i32, ptr %flags296, align 4, !tbaa !36
  %and.i.i = and i32 %77, 16
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.inc.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end26.i
  %call29.i = call ptr @sym_get_choice_prop(ptr noundef %call.i523) #17
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.then34.i, label %lor.lhs.false31.i

lor.lhs.false31.i:                                ; preds = %if.then28.i
  %call32.i = call ptr @prop_get_symbol(ptr noundef nonnull %call29.i) #17
  %cmp33.not.i = icmp eq ptr %call32.i, %0
  br i1 %cmp33.not.i, label %for.inc.i, label %if.then34.i

if.then34.i:                                      ; preds = %lor.lhs.false31.i, %if.then28.i
  %name35.i = getelementptr inbounds %struct.symbol, ptr %call.i523, i64 0, i32 1
  %78 = load ptr, ptr %name35.i, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.0155.i, ptr noundef nonnull @.str.17, ptr noundef %78) #17
  br label %for.inc.i

sw.bb38.i:                                        ; preds = %for.body.i, %for.body.i
  %cmp40.i = icmp eq i32 %66, 6
  %cond.i = select i1 %cmp40.i, ptr @.str.18, ptr @.str.19
  %call41.i = call ptr @prop_get_symbol(ptr noundef nonnull %prop.0155.i) #17
  %79 = load i32, ptr %type299, align 8, !tbaa !26
  %.off125.i = add i32 %79, -1
  %switch126.i = icmp ult i32 %.off125.i, 2
  br i1 %switch126.i, label %if.else.i, label %if.then47.i

if.then47.i:                                      ; preds = %sw.bb38.i
  %80 = load ptr, ptr %name48.i, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.0155.i, ptr noundef nonnull @.str.20, ptr noundef %80, ptr noundef nonnull %cond.i) #17
  br label %for.inc.i

if.else.i:                                        ; preds = %sw.bb38.i
  %type49.i = getelementptr inbounds %struct.symbol, ptr %call41.i, i64 0, i32 2
  %81 = load i32, ptr %type49.i, align 8, !tbaa !26
  %switch127.i = icmp ult i32 %81, 3
  br i1 %switch127.i, label %for.inc.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.else.i
  %name58.i = getelementptr inbounds %struct.symbol, ptr %call41.i, i64 0, i32 1
  %82 = load ptr, ptr %name58.i, align 8, !tbaa !29
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.0155.i, ptr noundef nonnull @.str.21, ptr noundef %82, ptr noundef nonnull %cond.i) #17
  br label %for.inc.i

sw.bb61.i:                                        ; preds = %for.body.i
  %83 = load i32, ptr %type299, align 8, !tbaa !26
  %.off128.i = add i32 %83, -3
  %switch129.i = icmp ult i32 %.off128.i, 2
  br i1 %switch129.i, label %if.end68.i, label %if.then67.i

if.then67.i:                                      ; preds = %sw.bb61.i
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.0155.i, ptr noundef nonnull @.str.22) #17
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then67.i, %sw.bb61.i
  %expr69.i = getelementptr inbounds %struct.property, ptr %prop.0155.i, i64 0, i32 4
  %84 = load ptr, ptr %expr69.i, align 8, !tbaa !23
  %left.i525 = getelementptr inbounds %struct.expr, ptr %84, i64 0, i32 1
  %85 = load ptr, ptr %left.i525, align 8, !tbaa !30
  %type.i130.i = getelementptr inbounds %struct.symbol, ptr %85, i64 0, i32 2
  %86 = load i32, ptr %type.i130.i, align 8, !tbaa !26
  switch i32 %86, label %if.then76.i [
    i32 3, label %lor.lhs.false72.i
    i32 4, label %lor.lhs.false72.i
    i32 0, label %menu_validate_number.exit136.i
  ]

menu_validate_number.exit136.i:                   ; preds = %if.end68.i
  %name.i131.i = getelementptr inbounds %struct.symbol, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %name.i131.i, align 8, !tbaa !29
  %call.i132.i = call zeroext i1 @sym_string_valid(ptr noundef nonnull %0, ptr noundef %87) #17
  br i1 %call.i132.i, label %menu_validate_number.exit136.lor.lhs.false72_crit_edge.i, label %if.then76.i

menu_validate_number.exit136.lor.lhs.false72_crit_edge.i: ; preds = %menu_validate_number.exit136.i
  %.pre.i = load ptr, ptr %expr69.i, align 8, !tbaa !23
  br label %lor.lhs.false72.i

lor.lhs.false72.i:                                ; preds = %menu_validate_number.exit136.lor.lhs.false72_crit_edge.i, %if.end68.i, %if.end68.i
  %88 = phi ptr [ %.pre.i, %menu_validate_number.exit136.lor.lhs.false72_crit_edge.i ], [ %84, %if.end68.i ], [ %84, %if.end68.i ]
  %right.i = getelementptr inbounds %struct.expr, ptr %88, i64 0, i32 2
  %89 = load ptr, ptr %right.i, align 8, !tbaa !30
  %type.i137.i = getelementptr inbounds %struct.symbol, ptr %89, i64 0, i32 2
  %90 = load i32, ptr %type.i137.i, align 8, !tbaa !26
  switch i32 %90, label %if.then76.i [
    i32 3, label %for.inc.i
    i32 4, label %for.inc.i
    i32 0, label %menu_validate_number.exit143.i
  ]

menu_validate_number.exit143.i:                   ; preds = %lor.lhs.false72.i
  %name.i138.i = getelementptr inbounds %struct.symbol, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %name.i138.i, align 8, !tbaa !29
  %call.i139.i = call zeroext i1 @sym_string_valid(ptr noundef nonnull %0, ptr noundef %91) #17
  br i1 %call.i139.i, label %for.inc.i, label %if.then76.i

if.then76.i:                                      ; preds = %menu_validate_number.exit143.i, %lor.lhs.false72.i, %menu_validate_number.exit136.i, %if.end68.i
  call void (ptr, ptr, ...) @prop_warn(ptr noundef nonnull %prop.0155.i, ptr noundef nonnull @.str.23) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then76.i, %menu_validate_number.exit143.i, %lor.lhs.false72.i, %lor.lhs.false72.i, %if.then57.i, %if.else.i, %if.then47.i, %if.then34.i, %lor.lhs.false31.i, %if.end26.i, %if.end.i522, %for.body.i
  %prop.0.i = load ptr, ptr %prop.0155.i, align 8, !tbaa !5
  %tobool.not.i526 = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i526, label %sym_check_prop.exit, label %for.body.i

sym_check_prop.exit:                              ; preds = %for.inc.i, %if.end308
  %92 = load i32, ptr %flags296, align 4, !tbaa !36
  %or310 = or i32 %92, 32768
  store i32 %or310, ptr %flags296, align 4, !tbaa !36
  br label %land.lhs.true313

land.lhs.true313:                                 ; preds = %sym_check_prop.exit, %land.lhs.true295
  %93 = phi i32 [ %62, %land.lhs.true295 ], [ %or310, %sym_check_prop.exit ]
  %and.i528 = and i32 %93, 256
  %tobool.i529.not = icmp eq i32 %and.i528, 0
  br i1 %tobool.i529.not, label %land.lhs.true315, label %if.end329

land.lhs.true315:                                 ; preds = %land.lhs.true313
  %prompt316 = getelementptr inbounds %struct.menu, ptr %parent, i64 0, i32 4
  %94 = load ptr, ptr %prompt316, align 8, !tbaa !33
  %tobool317.not = icmp eq ptr %94, null
  br i1 %tobool317.not, label %if.end329, label %if.then318

if.then318:                                       ; preds = %land.lhs.true315
  %rev_dep319 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 9
  %95 = load ptr, ptr %rev_dep319, align 8, !tbaa !42
  %visible322 = getelementptr inbounds %struct.property, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %visible322, align 8, !tbaa !24
  %call324 = call ptr @expr_alloc_symbol(ptr noundef nonnull @symbol_mod) #17
  %call325 = call ptr @expr_alloc_and(ptr noundef %96, ptr noundef %call324) #17
  %call326 = call ptr @expr_alloc_or(ptr noundef %95, ptr noundef %call325) #17
  store ptr %call326, ptr %rev_dep319, align 8, !tbaa !42
  br label %if.end329

if.end329:                                        ; preds = %if.then318, %land.lhs.true315, %land.lhs.true313, %for.end293, %if.else123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dep2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dep) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rewrite_m(ptr noundef %e) unnamed_addr #5 {
entry:
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %e, align 8, !tbaa !38
  switch i32 %0, label %common.ret [
    i32 3, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb2
    i32 11, label %sw.bb8
  ]

common.ret:                                       ; preds = %if.then10, %sw.bb8, %sw.bb2, %sw.bb, %if.end, %entry
  %common.ret.op = phi ptr [ %e, %sw.bb ], [ %e, %sw.bb2 ], [ %call12, %if.then10 ], [ null, %entry ], [ %e, %if.end ], [ %e, %sw.bb8 ]
  ret ptr %common.ret.op

sw.bb:                                            ; preds = %if.end
  %left = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %1 = load ptr, ptr %left, align 8, !tbaa !30
  %call = tail call fastcc ptr @rewrite_m(ptr noundef %1)
  store ptr %call, ptr %left, align 8, !tbaa !30
  br label %common.ret

sw.bb2:                                           ; preds = %if.end, %if.end
  %left3 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %2 = load ptr, ptr %left3, align 8, !tbaa !30
  %call4 = tail call fastcc ptr @rewrite_m(ptr noundef %2)
  store ptr %call4, ptr %left3, align 8, !tbaa !30
  %right = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 2
  %3 = load ptr, ptr %right, align 8, !tbaa !30
  %call6 = tail call fastcc ptr @rewrite_m(ptr noundef %3)
  store ptr %call6, ptr %right, align 8, !tbaa !30
  br label %common.ret

sw.bb8:                                           ; preds = %if.end
  %left9 = getelementptr inbounds %struct.expr, ptr %e, i64 0, i32 1
  %4 = load ptr, ptr %left9, align 8, !tbaa !30
  %cmp = icmp eq ptr %4, @symbol_mod
  br i1 %cmp, label %if.then10, label %common.ret

if.then10:                                        ; preds = %sw.bb8
  %5 = load ptr, ptr @modules_sym, align 8, !tbaa !5
  %call11 = tail call ptr @expr_alloc_symbol(ptr noundef %5) #17
  %call12 = tail call ptr @expr_alloc_and(ptr noundef nonnull %e, ptr noundef %call11) #17
  br label %common.ret
}

declare ptr @expr_transform(ptr noundef) local_unnamed_addr #6

declare ptr @expr_eliminate_dups(ptr noundef) local_unnamed_addr #6

declare ptr @expr_trans_bool(ptr noundef) local_unnamed_addr #6

declare ptr @prop_get_symbol(ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_or(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @expr_free(ptr noundef) local_unnamed_addr #6

declare ptr @expr_trans_compare(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @expr_contains_symbol(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @expr_depends_symbol(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @expr_eliminate_eq(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_comp(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sym_get_choice_prop(ptr noundef) local_unnamed_addr #6

declare ptr @expr_alloc_one(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @menu_has_prompt(ptr nocapture noundef readonly %menu) local_unnamed_addr #10 {
entry:
  %prompt = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 4
  %0 = load ptr, ptr %prompt, align 8, !tbaa !33
  %tobool.not = icmp ne ptr %0, null
  ret i1 %tobool.not
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @menu_is_empty(ptr nocapture noundef readonly %menu) local_unnamed_addr #5 {
entry:
  %list = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %child.0.in = phi ptr [ %list, %entry ], [ %child.0, %for.body ]
  %child.0 = load ptr, ptr %child.0.in, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %call = tail call zeroext i1 @menu_is_visible(ptr noundef nonnull %child.0)
  br i1 %call, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond
  ret i1 %tobool.not
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @menu_is_visible(ptr nocapture noundef readonly %menu) local_unnamed_addr #5 {
entry:
  %prompt = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 4
  %0 = load ptr, ptr %prompt, align 8, !tbaa !33
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %visibility = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 5
  %1 = load ptr, ptr %visibility, align 8, !tbaa !34
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @expr_calc_value(ptr noundef nonnull %1) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %sym7 = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 3
  %2 = load ptr, ptr %sym7, align 8, !tbaa !15
  %tobool8.not = icmp eq ptr %2, null
  br i1 %tobool8.not, label %if.end18.thread, label %if.end18

if.end18.thread:                                  ; preds = %if.end6
  %3 = load ptr, ptr %prompt, align 8, !tbaa !33
  %visible13 = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %visible13, align 8, !tbaa !24
  %call14 = tail call i32 @expr_calc_value(ptr noundef %4) #17
  %5 = load ptr, ptr %prompt, align 8, !tbaa !33
  %tri17 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 3, i32 1
  store i32 %call14, ptr %tri17, align 8, !tbaa !43
  %cmp19.not53 = icmp ne i32 %call14, 0
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  tail call void @sym_calc_value(ptr noundef nonnull %2) #17
  %6 = load ptr, ptr %prompt, align 8, !tbaa !33
  %tri = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 3, i32 1
  %7 = load i32, ptr %tri, align 8, !tbaa !43
  %cmp19.not.not = icmp eq i32 %7, 0
  br i1 %cmp19.not.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end18
  %8 = load ptr, ptr %sym7, align 8, !tbaa !15
  %tri.i = getelementptr inbounds %struct.symbol, ptr %8, i64 0, i32 3, i32 1
  %9 = load i32, ptr %tri.i, align 8, !tbaa !44
  %cmp25 = icmp eq i32 %9, 0
  br i1 %cmp25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false
  %list = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end27
  %child.0.in = phi ptr [ %list, %if.end27 ], [ %child.0, %for.body ]
  %child.0 = load ptr, ptr %child.0.in, align 8, !tbaa !5
  %tobool28.not = icmp eq ptr %child.0, null
  br i1 %tobool28.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %call29 = tail call zeroext i1 @menu_is_visible(ptr noundef nonnull %child.0)
  br i1 %call29, label %if.then32, label %for.cond

if.then32:                                        ; preds = %for.body
  %flags = getelementptr inbounds %struct.symbol, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %flags, align 4, !tbaa !36
  %or = or i32 %10, 65536
  store i32 %or, ptr %flags, align 4, !tbaa !36
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %for.cond, %lor.lhs.false, %if.end18, %if.end18.thread, %if.then2, %entry
  %retval.0 = phi i1 [ true, %if.then32 ], [ false, %entry ], [ false, %if.then2 ], [ true, %if.end18 ], [ false, %lor.lhs.false ], [ %cmp19.not53, %if.end18.thread ], [ false, %for.cond ]
  ret i1 %retval.0
}

declare i32 @expr_calc_value(ptr noundef) local_unnamed_addr #6

declare void @sym_calc_value(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @menu_get_prompt(ptr nocapture noundef readonly %menu) local_unnamed_addr #11 {
entry:
  %prompt = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 4
  %0 = load ptr, ptr %prompt, align 8, !tbaa !33
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %text = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 2
  br label %return.sink.split

if.else:                                          ; preds = %entry
  %sym = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 3
  %1 = load ptr, ptr %sym, align 8, !tbaa !15
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.else
  %name = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then3, %if.then
  %name.sink = phi ptr [ %name, %if.then3 ], [ %text, %if.then ]
  %2 = load ptr, ptr %name.sink, align 8, !tbaa !5
  br label %return

return:                                           ; preds = %return.sink.split, %if.else
  %retval.0 = phi ptr [ null, %if.else ], [ %2, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @menu_get_root_menu(ptr nocapture noundef readnone %menu) local_unnamed_addr #12 {
entry:
  ret ptr @rootmenu
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local ptr @menu_get_parent_menu(ptr noundef readonly %menu) local_unnamed_addr #13 {
entry:
  %cmp.not10 = icmp eq ptr %menu, @rootmenu
  br i1 %cmp.not10, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %menu.addr.011 = phi ptr [ %2, %for.inc ], [ %menu, %entry ]
  %prompt = getelementptr inbounds %struct.menu, ptr %menu.addr.011, i64 0, i32 4
  %0 = load ptr, ptr %prompt, align 8, !tbaa !33
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %for.inc, label %cond.end

cond.end:                                         ; preds = %for.body
  %type2 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %type2, align 8, !tbaa !17
  %cmp3 = icmp eq i32 %1, 3
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %cond.end, %for.body
  %parent = getelementptr inbounds %struct.menu, ptr %menu.addr.011, i64 0, i32 1
  %2 = load ptr, ptr %parent, align 8, !tbaa !16
  %cmp.not = icmp eq ptr %2, @rootmenu
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %cond.end, %entry
  %menu.addr.0.lcssa = phi ptr [ @rootmenu, %entry ], [ %menu.addr.011, %cond.end ], [ @rootmenu, %for.inc ]
  ret ptr %menu.addr.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @menu_has_help(ptr nocapture noundef readonly %menu) local_unnamed_addr #10 {
entry:
  %help = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 8
  %0 = load ptr, ptr %help, align 8, !tbaa !45
  %cmp = icmp ne ptr %0, null
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @menu_get_help(ptr nocapture noundef readonly %menu) local_unnamed_addr #10 {
entry:
  %help = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 8
  %0 = load ptr, ptr %help, align 8, !tbaa !45
  %tobool.not = icmp eq ptr %0, null
  %.str.11. = select i1 %tobool.not, ptr @.str.11, ptr %0
  ret ptr %.str.11.
}

; Function Attrs: nounwind uwtable
define dso_local void @get_relations_str(ptr noalias sret(%struct.gstr) align 8 %agg.result, ptr noundef readonly %sym_arr, ptr noundef %head) local_unnamed_addr #5 {
entry:
  tail call void @str_new(ptr sret(%struct.gstr) align 8 %agg.result) #17
  %tobool.not = icmp eq ptr %sym_arr, null
  br i1 %tobool.not, label %if.then, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %0 = load ptr, ptr %sym_arr, align 8, !tbaa !5
  %tobool1.not10 = icmp eq ptr %0, null
  br i1 %tobool1.not10, label %if.then, label %for.body

for.body:                                         ; preds = %for.body, %land.rhs.preheader
  %1 = phi ptr [ %2, %for.body ], [ %0, %land.rhs.preheader ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %land.rhs.preheader ]
  tail call fastcc void @get_symbol_str(ptr noundef %agg.result, ptr noundef nonnull %1, ptr noundef %head)
  %indvars.iv.next = add nuw i64 %indvars.iv11, 1
  %arrayidx = getelementptr inbounds ptr, ptr %sym_arr, i64 %indvars.iv.next
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %for.body
  %phi.cast = trunc i64 %indvars.iv.next to i32
  %phi.cmp12 = icmp eq i32 %phi.cast, 0
  br i1 %phi.cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.rhs.for.end_crit_edge, %land.rhs.preheader, %entry
  tail call void @str_append(ptr noundef %agg.result, ptr noundef nonnull @.str.12) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.for.end_crit_edge
  ret void
}

declare void @str_new(ptr sret(%struct.gstr) align 8) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @get_symbol_str(ptr noundef %r, ptr noundef %sym, ptr noundef %head) unnamed_addr #5 {
entry:
  %submenu.i = alloca [8 x ptr], align 16
  %tobool.not = icmp eq ptr %sym, null
  br i1 %tobool.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !29
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end12, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call ptr @sym_get_string_value(ptr noundef nonnull %sym) #17
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.24, ptr noundef nonnull %0, ptr noundef %call) #17
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %1 = load i32, ptr %type, align 8, !tbaa !26
  %call3 = tail call ptr @sym_type_name(i32 noundef %1) #17
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.25, ptr noundef %call3) #17
  %2 = load i32, ptr %type, align 8, !tbaa !26
  %.off = add i32 %2, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.then
  %call8 = tail call ptr @sym_get_range_prop(ptr noundef nonnull %sym) #17
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then7
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.26) #17
  %expr = getelementptr inbounds %struct.property, ptr %call8, i64 0, i32 4
  %3 = load ptr, ptr %expr, align 8, !tbaa !23
  tail call void @expr_gstr_print(ptr noundef %3, ptr noundef %r) #17
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.1) #17
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7, %if.then, %land.lhs.true, %entry
  %prop13 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 7
  %prop.0151 = load ptr, ptr %prop13, align 8, !tbaa !5
  %tobool14.not152 = icmp eq ptr %prop.0151, null
  br i1 %tobool14.not152, label %get_symbol_props_str.exit, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end12
  %tobool14.i = icmp ne ptr %head, null
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i64 0, i32 1
  %s.i = getelementptr inbounds %struct.gstr, ptr %r, i64 0, i32 1
  br label %for.body

for.cond26.preheader:                             ; preds = %for.inc
  %prop.1154.pre = load ptr, ptr %prop13, align 8, !tbaa !5
  %tobool27.not155 = icmp eq ptr %prop.1154.pre, null
  br i1 %tobool27.not155, label %get_symbol_props_str.exit, label %for.body28

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.0153 = phi ptr [ %prop.0151, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %type15 = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 1
  %4 = load i32, ptr %type15, align 8, !tbaa !17
  %cmp16 = icmp eq i32 %4, 9
  br i1 %cmp16, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  %menu = getelementptr inbounds %struct.property, ptr %prop.0153, i64 0, i32 5
  %5 = load ptr, ptr %menu, align 8, !tbaa !22
  %prompt = getelementptr inbounds %struct.menu, ptr %5, i64 0, i32 4
  %6 = load ptr, ptr %prompt, align 8, !tbaa !33
  %tobool18.not = icmp eq ptr %6, null
  br i1 %tobool18.not, label %for.inc, label %if.then19

if.then19:                                        ; preds = %if.then17
  %file.i = getelementptr inbounds %struct.menu, ptr %5, i64 0, i32 9
  %7 = load ptr, ptr %file.i, align 8, !tbaa !9
  %name.i = getelementptr inbounds %struct.file, ptr %7, i64 0, i32 2
  %8 = load ptr, ptr %name.i, align 8, !tbaa !12
  %lineno.i = getelementptr inbounds %struct.menu, ptr %5, i64 0, i32 10
  %9 = load i32, ptr %lineno.i, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.37, ptr noundef %8, i32 noundef %9) #17
  %10 = load ptr, ptr %menu, align 8, !tbaa !22
  %prompt22 = getelementptr inbounds %struct.menu, ptr %10, i64 0, i32 4
  %11 = load ptr, ptr %prompt22, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %submenu.i) #17
  %text.i = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 2
  %12 = load ptr, ptr %text.i, align 8, !tbaa !35
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.38, ptr noundef %12) #17
  %menu1.i = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %menu1.i, align 8, !tbaa !22
  %dep.i = getelementptr inbounds %struct.menu, ptr %13, i64 0, i32 6
  %14 = load ptr, ptr %dep.i, align 8, !tbaa !25
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %get_dep_str.exit.i, label %lor.rhs.i.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then19
  %15 = load i32, ptr %14, align 8, !tbaa !38
  %cmp.i.i.i = icmp eq i32 %15, 11
  br i1 %cmp.i.i.i, label %expr_is_yes.exit.i.i, label %if.then.i.i

expr_is_yes.exit.i.i:                             ; preds = %lor.rhs.i.i.i
  %left.i.i.i = getelementptr inbounds %struct.expr, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %left.i.i.i, align 8, !tbaa !30
  %cmp1.i.not.i.i = icmp eq ptr %16, @symbol_yes
  br i1 %cmp1.i.not.i.i, label %get_dep_str.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %expr_is_yes.exit.i.i, %lor.rhs.i.i.i
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.27) #17
  tail call void @expr_gstr_print(ptr noundef nonnull %14, ptr noundef %r) #17
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.1) #17
  %.pre.i = load ptr, ptr %menu1.i, align 8, !tbaa !22
  %dep3.phi.trans.insert.i = getelementptr inbounds %struct.menu, ptr %.pre.i, i64 0, i32 6
  %.pre134.i = load ptr, ptr %dep3.phi.trans.insert.i, align 8, !tbaa !25
  br label %get_dep_str.exit.i

get_dep_str.exit.i:                               ; preds = %if.then.i.i, %expr_is_yes.exit.i.i, %if.then19
  %17 = phi ptr [ null, %if.then19 ], [ %14, %expr_is_yes.exit.i.i ], [ %.pre134.i, %if.then.i.i ]
  %visible.i = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %visible.i, align 8, !tbaa !24
  %call.i = tail call i32 @expr_eq(ptr noundef %17, ptr noundef %18) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %get_dep_str.exit.i
  %19 = load ptr, ptr %visible.i, align 8, !tbaa !24
  %tobool.not.i.i108.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i108.i, label %if.end.i, label %lor.rhs.i.i110.i

lor.rhs.i.i110.i:                                 ; preds = %if.then.i
  %20 = load i32, ptr %19, align 8, !tbaa !38
  %cmp.i.i109.i = icmp eq i32 %20, 11
  br i1 %cmp.i.i109.i, label %expr_is_yes.exit.i113.i, label %if.then.i114.i

expr_is_yes.exit.i113.i:                          ; preds = %lor.rhs.i.i110.i
  %left.i.i111.i = getelementptr inbounds %struct.expr, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %left.i.i111.i, align 8, !tbaa !30
  %cmp1.i.not.i112.i = icmp eq ptr %21, @symbol_yes
  br i1 %cmp1.i.not.i112.i, label %if.end.i, label %if.then.i114.i

if.then.i114.i:                                   ; preds = %expr_is_yes.exit.i113.i, %lor.rhs.i.i110.i
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.39) #17
  tail call void @expr_gstr_print(ptr noundef nonnull %19, ptr noundef %r) #17
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.1) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i114.i, %expr_is_yes.exit.i113.i, %if.then.i, %get_dep_str.exit.i
  %22 = load ptr, ptr %menu1.i, align 8, !tbaa !22
  %menu.0.in118.i = getelementptr inbounds %struct.menu, ptr %22, i64 0, i32 1
  %menu.0119.i = load ptr, ptr %menu.0.in118.i, align 8, !tbaa !16
  %tobool7120.not.i = icmp eq ptr %menu.0119.i, null
  br i1 %tobool7120.not.i, label %if.end32.i, label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.end.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end.i ]
  %menu.0123.i = phi ptr [ %menu.0.i, %for.body.i ], [ %menu.0119.i, %if.end.i ]
  %location.0121.i = phi ptr [ %location.1.i, %for.body.i ], [ null, %if.end.i ]
  %call8.i = tail call zeroext i1 @menu_is_visible(ptr noundef nonnull %menu.0123.i) #17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds [8 x ptr], ptr %submenu.i, i64 0, i64 %indvars.iv.i
  store ptr %menu.0123.i, ptr %arrayidx.i, align 8, !tbaa !5
  %cmp9.i = icmp eq ptr %location.0121.i, null
  %spec.select.i = select i1 %call8.i, ptr %menu.0123.i, ptr null
  %location.1.i = select i1 %cmp9.i, ptr %spec.select.i, ptr %location.0121.i
  %menu.0.in.i = getelementptr inbounds %struct.menu, ptr %menu.0123.i, i64 0, i32 1
  %menu.0.i = load ptr, ptr %menu.0.in.i, align 8, !tbaa !16
  %tobool7.i = icmp ne ptr %menu.0.i, null
  %cmp.i = icmp ult i64 %indvars.iv.i, 7
  %23 = select i1 %tobool7.i, i1 %cmp.i, i1 false
  br i1 %23, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i
  %tobool16.i = icmp ne ptr %location.1.i, null
  %or.cond.i = select i1 %tobool14.i, i1 %tobool16.i, i1 false
  br i1 %or.cond.i, label %if.then17.i, label %for.body35.lr.ph.i

if.then17.i:                                      ; preds = %for.end.i
  %call18.i = tail call ptr @xmalloc(i64 noundef 40) #17
  %24 = load ptr, ptr %menu1.i, align 8, !tbaa !22
  %call20.i = tail call zeroext i1 @menu_is_visible(ptr noundef %24) #17
  br i1 %call20.i, label %if.then21.i, label %if.end24.i

if.then21.i:                                      ; preds = %if.then17.i
  %25 = load ptr, ptr %menu1.i, align 8, !tbaa !22
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.then17.i
  %location.0.lcssa.sink.i = phi ptr [ %25, %if.then21.i ], [ %location.1.i, %if.then17.i ]
  %26 = getelementptr inbounds %struct.jump_key, ptr %call18.i, i64 0, i32 2
  store ptr %location.0.lcssa.sink.i, ptr %26, align 8
  %27 = load ptr, ptr %head, align 8, !tbaa !46
  %cmp.i.not.i = icmp eq ptr %27, %head
  br i1 %cmp.i.not.i, label %if.end31.i, label %if.else28.i

if.else28.i:                                      ; preds = %if.end24.i
  %28 = load ptr, ptr %prev.i, align 8, !tbaa !48
  %index29.i = getelementptr inbounds %struct.jump_key, ptr %28, i64 0, i32 3
  %29 = load i32, ptr %index29.i, align 8, !tbaa !49
  %add.i = add nsw i32 %29, 1
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else28.i, %if.end24.i
  %add.sink.i = phi i32 [ %add.i, %if.else28.i ], [ 0, %if.end24.i ]
  %30 = getelementptr inbounds %struct.jump_key, ptr %call18.i, i64 0, i32 3
  store i32 %add.sink.i, ptr %30, align 8
  %31 = load ptr, ptr %prev.i, align 8, !tbaa !48
  store ptr %call18.i, ptr %prev.i, align 8, !tbaa !48
  store ptr %head, ptr %call18.i, align 8, !tbaa !46
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call18.i, i64 0, i32 1
  store ptr %31, ptr %prev3.i.i.i, align 8, !tbaa !48
  store ptr %call18.i, ptr %31, align 8, !tbaa !46
  br label %for.body35.lr.ph.i

if.end32.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.40) #17
  br label %get_prompt_str.exit

for.body35.lr.ph.i:                               ; preds = %if.end31.i, %for.end.i
  %jump.0.ph.i = phi ptr [ null, %for.end.i ], [ %call18.i, %if.end31.i ]
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.40) #17
  %tobool38.not.i = icmp ne ptr %jump.0.ph.i, null
  %offset.i = getelementptr inbounds %struct.jump_key, ptr %jump.0.ph.i, i64 0, i32 1
  br label %for.body35.i

for.body35.i:                                     ; preds = %if.end57.i, %for.body35.lr.ph.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next.i, %for.body35.lr.ph.i ], [ %indvars.iv.next132.i, %if.end57.i ]
  %j.0127.i = phi i32 [ 4, %for.body35.lr.ph.i ], [ %add59.i, %if.end57.i ]
  %indvars.iv.next132.i = add nsw i64 %indvars.iv131.i, -1
  %arrayidx37.i = getelementptr inbounds [8 x ptr], ptr %submenu.i, i64 0, i64 %indvars.iv.next132.i
  %32 = load ptr, ptr %arrayidx37.i, align 8, !tbaa !5
  %cmp40.i = icmp eq ptr %32, %location.1.i
  %or.cond106.i = select i1 %tobool38.not.i, i1 %cmp40.i, i1 false
  br i1 %or.cond106.i, label %if.then41.i, label %if.end43.i

if.then41.i:                                      ; preds = %for.body35.i
  %33 = load ptr, ptr %s.i, align 8, !tbaa !52
  %call42.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #20
  store i64 %call42.i, ptr %offset.i, align 8, !tbaa !54
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %for.body35.i
  %cmp44.i = icmp eq ptr %32, @rootmenu
  br i1 %cmp44.i, label %if.then45.i, label %if.else46.i

if.then45.i:                                      ; preds = %if.end43.i
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.41, i32 noundef %j.0127.i, i32 noundef 32) #17
  br label %if.end48.i

if.else46.i:                                      ; preds = %if.end43.i
  %prompt.i.i = getelementptr inbounds %struct.menu, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %prompt.i.i, align 8, !tbaa !33
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i116.i

if.then.i116.i:                                   ; preds = %if.else46.i
  %text.i.i = getelementptr inbounds %struct.property, ptr %34, i64 0, i32 2
  br label %return.sink.split.i.i

if.else.i.i:                                      ; preds = %if.else46.i
  %sym.i.i = getelementptr inbounds %struct.menu, ptr %32, i64 0, i32 3
  %35 = load ptr, ptr %sym.i.i, align 8, !tbaa !15
  %tobool2.not.i.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i.i, label %menu_get_prompt.exit.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  %name.i.i = getelementptr inbounds %struct.symbol, ptr %35, i64 0, i32 1
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.then3.i.i, %if.then.i116.i
  %name.sink.i.i = phi ptr [ %name.i.i, %if.then3.i.i ], [ %text.i.i, %if.then.i116.i ]
  %36 = load ptr, ptr %name.sink.i.i, align 8, !tbaa !5
  br label %menu_get_prompt.exit.i

menu_get_prompt.exit.i:                           ; preds = %return.sink.split.i.i, %if.else.i.i
  %retval.0.i.i = phi ptr [ null, %if.else.i.i ], [ %36, %return.sink.split.i.i ]
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.42, i32 noundef %j.0127.i, i32 noundef 32, ptr noundef %retval.0.i.i) #17
  br label %if.end48.i

if.end48.i:                                       ; preds = %menu_get_prompt.exit.i, %if.then45.i
  %sym.i = getelementptr inbounds %struct.menu, ptr %32, i64 0, i32 3
  %37 = load ptr, ptr %sym.i, align 8, !tbaa !15
  %tobool49.not.i = icmp eq ptr %37, null
  br i1 %tobool49.not.i, label %if.end57.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end48.i
  %name.i115 = getelementptr inbounds %struct.symbol, ptr %37, i64 0, i32 1
  %38 = load ptr, ptr %name.i115, align 8, !tbaa !29
  %tobool52.not.i = icmp eq ptr %38, null
  %spec.select107.i = select i1 %tobool52.not.i, ptr @.str.3, ptr %38
  %call56.i = tail call ptr @sym_get_string_value(ptr noundef nonnull %37) #17
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.43, ptr noundef nonnull %spec.select107.i, ptr noundef %call56.i) #17
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then50.i, %if.end48.i
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.1) #17
  %cmp34.i = icmp ugt i64 %indvars.iv131.i, 1
  %add59.i = add nuw nsw i32 %j.0127.i, 2
  br i1 %cmp34.i, label %for.body35.i, label %get_prompt_str.exit

get_prompt_str.exit:                              ; preds = %if.end57.i, %if.end32.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %submenu.i) #17
  br label %for.inc

for.inc:                                          ; preds = %get_prompt_str.exit, %if.then17, %for.body
  %prop.0 = load ptr, ptr %prop.0153, align 8, !tbaa !5
  %tobool14.not = icmp eq ptr %prop.0, null
  br i1 %tobool14.not, label %for.cond26.preheader, label %for.body

for.body28:                                       ; preds = %for.inc40, %for.cond26.preheader
  %prop.1156 = phi ptr [ %prop.1, %for.inc40 ], [ %prop.1154.pre, %for.cond26.preheader ]
  %type29 = getelementptr inbounds %struct.property, ptr %prop.1156, i64 0, i32 1
  %39 = load i32, ptr %type29, align 8, !tbaa !17
  %cmp30 = icmp eq i32 %39, 9
  br i1 %cmp30, label %if.then31, label %for.inc40

if.then31:                                        ; preds = %for.body28
  %menu32 = getelementptr inbounds %struct.property, ptr %prop.1156, i64 0, i32 5
  %40 = load ptr, ptr %menu32, align 8, !tbaa !22
  %prompt33 = getelementptr inbounds %struct.menu, ptr %40, i64 0, i32 4
  %41 = load ptr, ptr %prompt33, align 8, !tbaa !33
  %tobool34.not = icmp eq ptr %41, null
  br i1 %tobool34.not, label %if.then35, label %for.inc40

if.then35:                                        ; preds = %if.then31
  %file.i116 = getelementptr inbounds %struct.menu, ptr %40, i64 0, i32 9
  %42 = load ptr, ptr %file.i116, align 8, !tbaa !9
  %name.i117 = getelementptr inbounds %struct.file, ptr %42, i64 0, i32 2
  %43 = load ptr, ptr %name.i117, align 8, !tbaa !12
  %lineno.i118 = getelementptr inbounds %struct.menu, ptr %40, i64 0, i32 10
  %44 = load i32, ptr %lineno.i118, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.37, ptr noundef %43, i32 noundef %44) #17
  %45 = load ptr, ptr %menu32, align 8, !tbaa !22
  %dep = getelementptr inbounds %struct.menu, ptr %45, i64 0, i32 6
  %46 = load ptr, ptr %dep, align 8, !tbaa !25
  %tobool.not.i.i119 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i119, label %for.inc40, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %if.then35
  %47 = load i32, ptr %46, align 8, !tbaa !38
  %cmp.i.i = icmp eq i32 %47, 11
  br i1 %cmp.i.i, label %expr_is_yes.exit.i, label %if.then.i120

expr_is_yes.exit.i:                               ; preds = %lor.rhs.i.i
  %left.i.i = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %left.i.i, align 8, !tbaa !30
  %cmp1.i.not.i = icmp eq ptr %48, @symbol_yes
  br i1 %cmp1.i.not.i, label %for.inc40, label %if.then.i120

if.then.i120:                                     ; preds = %expr_is_yes.exit.i, %lor.rhs.i.i
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.27) #17
  tail call void @expr_gstr_print(ptr noundef nonnull %46, ptr noundef %r) #17
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.1) #17
  br label %for.inc40

for.inc40:                                        ; preds = %if.then.i120, %expr_is_yes.exit.i, %if.then35, %if.then31, %for.body28
  %prop.1 = load ptr, ptr %prop.1156, align 8, !tbaa !5
  %tobool27.not = icmp eq ptr %prop.1, null
  br i1 %tobool27.not, label %for.end42, label %for.body28

for.end42:                                        ; preds = %for.inc40
  %prop.015.i.pre = load ptr, ptr %prop13, align 8, !tbaa !5
  %tobool.not16.i = icmp eq ptr %prop.015.i.pre, null
  br i1 %tobool.not16.i, label %get_symbol_props_str.exit, label %for.body.i123

for.body.i123:                                    ; preds = %for.inc.i, %for.end42
  %prop.018.i = phi ptr [ %prop.0.i, %for.inc.i ], [ %prop.015.i.pre, %for.end42 ]
  %hit.017.i = phi i8 [ %hit.2.i, %for.inc.i ], [ 0, %for.end42 ]
  %type.i = getelementptr inbounds %struct.property, ptr %prop.018.i, i64 0, i32 1
  %49 = load i32, ptr %type.i, align 8, !tbaa !17
  %cmp.i122 = icmp eq i32 %49, 6
  br i1 %cmp.i122, label %if.then.i124, label %for.inc.i

if.then.i124:                                     ; preds = %for.body.i123
  %50 = and i8 %hit.017.i, 1
  %tobool2.not.i = icmp eq i8 %50, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i124
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.28) #17
  br label %if.end.i125

if.else.i:                                        ; preds = %if.then.i124
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.44) #17
  br label %if.end.i125

if.end.i125:                                      ; preds = %if.else.i, %if.then3.i
  %hit.1.i = phi i8 [ %hit.017.i, %if.else.i ], [ 1, %if.then3.i ]
  %expr.i = getelementptr inbounds %struct.property, ptr %prop.018.i, i64 0, i32 4
  %51 = load ptr, ptr %expr.i, align 8, !tbaa !23
  tail call void @expr_gstr_print(ptr noundef %51, ptr noundef %r) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i125, %for.body.i123
  %hit.2.i = phi i8 [ %hit.1.i, %if.end.i125 ], [ %hit.017.i, %for.body.i123 ]
  %prop.0.i = load ptr, ptr %prop.018.i, align 8, !tbaa !5
  %tobool.not.i126 = icmp eq ptr %prop.0.i, null
  br i1 %tobool.not.i126, label %for.end.i127, label %for.body.i123

for.end.i127:                                     ; preds = %for.inc.i
  %52 = and i8 %hit.2.i, 1
  %tobool5.not.i = icmp eq i8 %52, 0
  br i1 %tobool5.not.i, label %get_symbol_props_str.exit, label %if.then6.i

if.then6.i:                                       ; preds = %for.end.i127
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.1) #17
  br label %get_symbol_props_str.exit

get_symbol_props_str.exit:                        ; preds = %if.then6.i, %for.end.i127, %for.end42, %for.cond26.preheader, %if.end12
  %rev_dep = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 9
  %53 = load ptr, ptr %rev_dep, align 8, !tbaa !42
  %tobool44.not = icmp eq ptr %53, null
  br i1 %tobool44.not, label %if.end52, label %if.then45

if.then45:                                        ; preds = %get_symbol_props_str.exit
  tail call void @expr_gstr_print_revdep(ptr noundef nonnull %53, ptr noundef %r, i32 noundef 2, ptr noundef nonnull @.str.29) #17
  %54 = load ptr, ptr %rev_dep, align 8, !tbaa !42
  tail call void @expr_gstr_print_revdep(ptr noundef %54, ptr noundef %r, i32 noundef 1, ptr noundef nonnull @.str.30) #17
  %55 = load ptr, ptr %rev_dep, align 8, !tbaa !42
  tail call void @expr_gstr_print_revdep(ptr noundef %55, ptr noundef %r, i32 noundef 0, ptr noundef nonnull @.str.31) #17
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %get_symbol_props_str.exit
  %prop.015.i129 = load ptr, ptr %prop13, align 8, !tbaa !5
  %tobool.not16.i130 = icmp eq ptr %prop.015.i129, null
  br i1 %tobool.not16.i130, label %get_symbol_props_str.exit150, label %for.body.i135

for.body.i135:                                    ; preds = %for.inc.i146, %if.end52
  %prop.018.i131 = phi ptr [ %prop.0.i144, %for.inc.i146 ], [ %prop.015.i129, %if.end52 ]
  %hit.017.i132 = phi i8 [ %hit.2.i143, %for.inc.i146 ], [ 0, %if.end52 ]
  %type.i133 = getelementptr inbounds %struct.property, ptr %prop.018.i131, i64 0, i32 1
  %56 = load i32, ptr %type.i133, align 8, !tbaa !17
  %cmp.i134 = icmp eq i32 %56, 7
  br i1 %cmp.i134, label %if.then.i137, label %for.inc.i146

if.then.i137:                                     ; preds = %for.body.i135
  %57 = and i8 %hit.017.i132, 1
  %tobool2.not.i136 = icmp eq i8 %57, 0
  br i1 %tobool2.not.i136, label %if.then3.i138, label %if.else.i139

if.then3.i138:                                    ; preds = %if.then.i137
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.32) #17
  br label %if.end.i142

if.else.i139:                                     ; preds = %if.then.i137
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %r, ptr noundef nonnull @.str.44) #17
  br label %if.end.i142

if.end.i142:                                      ; preds = %if.else.i139, %if.then3.i138
  %hit.1.i140 = phi i8 [ %hit.017.i132, %if.else.i139 ], [ 1, %if.then3.i138 ]
  %expr.i141 = getelementptr inbounds %struct.property, ptr %prop.018.i131, i64 0, i32 4
  %58 = load ptr, ptr %expr.i141, align 8, !tbaa !23
  tail call void @expr_gstr_print(ptr noundef %58, ptr noundef %r) #17
  br label %for.inc.i146

for.inc.i146:                                     ; preds = %if.end.i142, %for.body.i135
  %hit.2.i143 = phi i8 [ %hit.1.i140, %if.end.i142 ], [ %hit.017.i132, %for.body.i135 ]
  %prop.0.i144 = load ptr, ptr %prop.018.i131, align 8, !tbaa !5
  %tobool.not.i145 = icmp eq ptr %prop.0.i144, null
  br i1 %tobool.not.i145, label %for.end.i148, label %for.body.i135

for.end.i148:                                     ; preds = %for.inc.i146
  %59 = and i8 %hit.2.i143, 1
  %tobool5.not.i147 = icmp eq i8 %59, 0
  br i1 %tobool5.not.i147, label %get_symbol_props_str.exit150, label %if.then6.i149

if.then6.i149:                                    ; preds = %for.end.i148
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.1) #17
  br label %get_symbol_props_str.exit150

get_symbol_props_str.exit150:                     ; preds = %if.then6.i149, %for.end.i148, %if.end52
  %implied = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 10
  %60 = load ptr, ptr %implied, align 8, !tbaa !55
  %tobool54.not = icmp eq ptr %60, null
  br i1 %tobool54.not, label %if.end62, label %if.then55

if.then55:                                        ; preds = %get_symbol_props_str.exit150
  tail call void @expr_gstr_print_revdep(ptr noundef nonnull %60, ptr noundef %r, i32 noundef 2, ptr noundef nonnull @.str.33) #17
  %61 = load ptr, ptr %implied, align 8, !tbaa !55
  tail call void @expr_gstr_print_revdep(ptr noundef %61, ptr noundef %r, i32 noundef 1, ptr noundef nonnull @.str.34) #17
  %62 = load ptr, ptr %implied, align 8, !tbaa !55
  tail call void @expr_gstr_print_revdep(ptr noundef %62, ptr noundef %r, i32 noundef 0, ptr noundef nonnull @.str.35) #17
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %get_symbol_props_str.exit150
  tail call void @str_append(ptr noundef %r, ptr noundef nonnull @.str.36) #17
  ret void
}

declare void @str_append(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @menu_get_ext_help(ptr nocapture noundef readonly %menu, ptr noundef %help) local_unnamed_addr #5 {
entry:
  %sym1 = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 3
  %0 = load ptr, ptr %sym1, align 8, !tbaa !15
  %help.i = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 8
  %1 = load ptr, ptr %help.i, align 8, !tbaa !45
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !29
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end6.thread, label %if.then2

if.then2:                                         ; preds = %if.then
  %call.i = tail call ptr @getenv(ptr noundef nonnull @.str.45) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  %call..str.45.i = select i1 %tobool.not.i, ptr @.str.45, ptr %call.i
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %help, ptr noundef nonnull @.str.13, ptr noundef %call..str.45.i, ptr noundef nonnull %2) #17
  %.pre = load ptr, ptr %help.i, align 8, !tbaa !45
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %if.then2, %if.then
  %3 = phi ptr [ %1, %if.then ], [ %.pre, %if.then2 ]
  %tobool.not.i18 = icmp eq ptr %3, null
  %.str.11..i = select i1 %tobool.not.i18, ptr @.str.11, ptr %3
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %help, ptr noundef nonnull @.str.14, ptr noundef %.str.11..i) #17
  br label %if.then8

if.end6:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @str_printf(ptr noundef %help, ptr noundef nonnull @.str.14, ptr noundef nonnull @nohelp_text) #17
  %tobool7.not = icmp eq ptr %0, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6, %if.end6.thread
  tail call fastcc void @get_symbol_str(ptr noundef %help, ptr noundef nonnull %0, ptr noundef null)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

declare void @str_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare zeroext i1 @sym_string_valid(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @sym_get_string_value(ptr noundef) local_unnamed_addr #6

declare ptr @sym_get_range_prop(ptr noundef) local_unnamed_addr #6

declare void @expr_gstr_print(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @expr_gstr_print_revdep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @expr_eq(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 72}
!10 = !{!"menu", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !11, i64 56, !6, i64 64, !6, i64 72, !11, i64 80, !6, i64 88}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !6, i64 16}
!13 = !{!"file", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24}
!14 = !{!10, !11, i64 80}
!15 = !{!10, !6, i64 24}
!16 = !{!10, !6, i64 8}
!17 = !{!18, !7, i64 8}
!18 = !{!"property", !6, i64 0, !7, i64 8, !6, i64 16, !19, i64 24, !6, i64 40, !6, i64 48, !6, i64 56, !11, i64 64}
!19 = !{!"expr_value", !6, i64 0, !7, i64 8}
!20 = !{!18, !6, i64 56}
!21 = !{!18, !11, i64 64}
!22 = !{!18, !6, i64 48}
!23 = !{!18, !6, i64 40}
!24 = !{!18, !6, i64 24}
!25 = !{!10, !6, i64 48}
!26 = !{!27, !7, i64 16}
!27 = !{!"symbol", !6, i64 0, !6, i64 8, !7, i64 16, !28, i64 24, !7, i64 40, !7, i64 104, !11, i64 108, !6, i64 112, !19, i64 120, !19, i64 136, !19, i64 152}
!28 = !{!"symbol_value", !6, i64 0, !7, i64 8}
!29 = !{!27, !6, i64 8}
!30 = !{!7, !7, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !7, i64 0}
!33 = !{!10, !6, i64 32}
!34 = !{!10, !6, i64 40}
!35 = !{!18, !6, i64 16}
!36 = !{!27, !11, i64 108}
!37 = !{!10, !6, i64 0}
!38 = !{!39, !7, i64 0}
!39 = !{!"expr", !7, i64 0, !7, i64 8, !7, i64 16}
!40 = !{!10, !6, i64 16}
!41 = !{!27, !6, i64 120}
!42 = !{!27, !6, i64 136}
!43 = !{!18, !7, i64 32}
!44 = !{!27, !7, i64 32}
!45 = !{!10, !6, i64 64}
!46 = !{!47, !6, i64 0}
!47 = !{!"list_head", !6, i64 0, !6, i64 8}
!48 = !{!47, !6, i64 8}
!49 = !{!50, !11, i64 32}
!50 = !{!"jump_key", !47, i64 0, !51, i64 16, !6, i64 24, !11, i64 32}
!51 = !{!"long", !7, i64 0}
!52 = !{!53, !6, i64 8}
!53 = !{!"gstr", !51, i64 0, !6, i64 8, !11, i64 16}
!54 = !{!50, !51, i64 16}
!55 = !{!27, !6, i64 152}
