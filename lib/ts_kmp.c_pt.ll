; ModuleID = '/llk/IR_all_yes/lib/ts_kmp.c_pt.bc'
source_filename = "../lib/ts_kmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ts_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ts_config = type { ptr, i32, ptr, ptr }
%struct.ts_kmp = type { ptr, i32, [0 x i32] }

@kmp_ops = internal global { %struct.ts_ops, [60 x i8] } { %struct.ts_ops { ptr @.str, ptr @kmp_init, ptr @kmp_find, ptr null, ptr @kmp_get_pattern, ptr @kmp_get_pattern_len, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @kmp_ops, i64 28), ptr getelementptr (i8, ptr @kmp_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file173 = internal constant [23 x i8] c"ts_kmp.file=lib/ts_kmp\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [19 x i8] c"ts_kmp.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ts_kmp__175_152_init_kmp6 = internal global ptr @init_kmp, section ".initcall6.init", align 4
@__exitcall_exit_kmp = internal global ptr @exit_kmp, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kmp\00", [28 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"kmp_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 130, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [16 x i8] c"../lib/ts_kmp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 131, i32 13 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_exit_kmp, ptr @__initcall__kmod_ts_kmp__175_152_init_kmp6, ptr @exit_kmp, ptr @kmp_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmp_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_kmp() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @textsearch_unregister(ptr noundef nonnull @kmp_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @textsearch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_kmp() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @textsearch_register(ptr noundef nonnull @kmp_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kmp_init(ptr nocapture noundef readonly %pattern, i32 noundef %len, i32 noundef %gfp_mask, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %len, 2
  %or.i.i = or i32 %gfp_mask, 256
  %add = add i32 %len, 8
  %add1 = add i32 %add, %mul
  %add.i = add i32 %add1, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef %or.i.i) #9
  %cmp.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %alloc_ts_config.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

alloc_ts_config.exit:                             ; preds = %entry
  %cmp.i40 = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %alloc_ts_config.exit.cleanup_crit_edge, label %if.end

alloc_ts_config.exit.cleanup_crit_edge:           ; preds = %alloc_ts_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %alloc_ts_config.exit
  %flags3 = getelementptr inbounds %struct.ts_config, ptr %call9.i.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %flags3, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 16
  %pattern_len = getelementptr i8, ptr %call9.i.i.i, i32 20
  %1 = ptrtoint ptr %pattern_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %pattern_len, align 4
  %prefix_tbl = getelementptr i8, ptr %call9.i.i.i, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp96.i = icmp ugt i32 %len, 1
  %conv101.i = and i32 %flags, 2
  br i1 %cmp96.i, label %while.cond.preheader.lr.ph.i, label %if.end.compute_prefix_tbl.exit_crit_edge

if.end.compute_prefix_tbl.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %compute_prefix_tbl.exit

while.cond.preheader.lr.ph.i:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv101.i)
  %tobool.not.i = icmp eq i32 %conv101.i, 0
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %cond.end42.i.while.cond.preheader.i_crit_edge, %while.cond.preheader.lr.ph.i
  %q.098.i = phi i32 [ 1, %while.cond.preheader.lr.ph.i ], [ %inc47.i, %cond.end42.i.while.cond.preheader.i_crit_edge ]
  %k.097.i = phi i32 [ 0, %while.cond.preheader.lr.ph.i ], [ %spec.select.i41, %cond.end42.i.while.cond.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.097.i)
  %cmp2.not93.i = icmp eq i32 %k.097.i, 0
  br i1 %cmp2.not93.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %land.rhs.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %arrayidx11.i = getelementptr i8, ptr %pattern, i32 %q.098.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %k.194.i = phi i32 [ %k.097.i, %land.rhs.lr.ph.i ], [ %15, %while.body.i.land.rhs.i_crit_edge ]
  %arrayidx6.i = getelementptr i8, ptr %pattern, i32 %k.194.i
  %2 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6.i, align 1
  br i1 %tobool.not.i, label %cond.false14.i, label %cond.true10.i

cond.true10.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %3 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not.i.i = icmp eq i8 %6, 0
  %sub.i.i = add i8 %3, -32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %3, i8 %sub.i.i
  %7 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11.i, align 1
  %conv.i72.i = zext i8 %8 to i32
  %arrayidx.i73.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i72.i
  %9 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i73.i, align 1
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not.i74.i = icmp eq i8 %11, 0
  %sub.i75.i = add i8 %8, -32
  %spec.select.i76.i = select i1 %cmp.not.i74.i, i8 %8, i8 %sub.i75.i
  br label %cond.end17.i

cond.false14.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11.i, align 1
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.false14.i, %cond.true10.i
  %cond.in88.i = phi i8 [ %spec.select.i.i, %cond.true10.i ], [ %3, %cond.false14.i ]
  %cond18.in.i = phi i8 [ %spec.select.i76.i, %cond.true10.i ], [ %13, %cond.false14.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %cond.in88.i, i8 %cond18.in.i)
  %cmp19.not.i = icmp eq i8 %cond.in88.i, %cond18.in.i
  br i1 %cmp19.not.i, label %cond.end17.i.while.end.i_crit_edge, label %while.body.i

cond.end17.i.while.end.i_crit_edge:               ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %cond.end17.i
  %sub.i = add i32 %k.194.i, -1
  %arrayidx21.i = getelementptr i32, ptr %prefix_tbl, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21.i, align 4
  %cmp2.not.i = icmp eq i32 %15, 0
  br i1 %cmp2.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %cond.end17.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %k.1.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %k.194.i, %cond.end17.i.while.end.i_crit_edge ], [ 0, %while.body.i.while.end.i_crit_edge ]
  %arrayidx29.i = getelementptr i8, ptr %pattern, i32 %k.1.lcssa.i
  %16 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx29.i, align 1
  br i1 %tobool.not.i, label %cond.false39.i, label %cond.true35.i

cond.true35.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i77.i = zext i8 %17 to i32
  %arrayidx.i78.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i77.i
  %18 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i78.i, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.not.i79.i = icmp eq i8 %20, 0
  %sub.i80.i = add i8 %17, -32
  %spec.select.i81.i = select i1 %cmp.not.i79.i, i8 %17, i8 %sub.i80.i
  %arrayidx36.i = getelementptr i8, ptr %pattern, i32 %q.098.i
  %21 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx36.i, align 1
  %conv.i82.i = zext i8 %22 to i32
  %arrayidx.i83.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i82.i
  %23 = ptrtoint ptr %arrayidx.i83.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i83.i, align 1
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.not.i84.i = icmp eq i8 %25, 0
  %sub.i85.i = add i8 %22, -32
  %spec.select.i86.i = select i1 %cmp.not.i84.i, i8 %22, i8 %sub.i85.i
  br label %cond.end42.i

cond.false39.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx40.i = getelementptr i8, ptr %pattern, i32 %q.098.i
  %26 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx40.i, align 1
  br label %cond.end42.i

cond.end42.i:                                     ; preds = %cond.false39.i, %cond.true35.i
  %cond32.in91.i = phi i8 [ %spec.select.i81.i, %cond.true35.i ], [ %17, %cond.false39.i ]
  %cond43.in.i = phi i8 [ %spec.select.i86.i, %cond.true35.i ], [ %27, %cond.false39.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %cond32.in91.i, i8 %cond43.in.i)
  %cmp44.i = icmp eq i8 %cond32.in91.i, %cond43.in.i
  %inc.i = zext i1 %cmp44.i to i32
  %spec.select.i41 = add i32 %k.1.lcssa.i, %inc.i
  %arrayidx46.i = getelementptr i32, ptr %prefix_tbl, i32 %q.098.i
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select.i41, ptr %arrayidx46.i, align 4
  %inc47.i = add nuw i32 %q.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc47.i, %len
  br i1 %exitcond.not.i, label %cond.end42.i.compute_prefix_tbl.exit_crit_edge, label %cond.end42.i.while.cond.preheader.i_crit_edge

cond.end42.i.while.cond.preheader.i_crit_edge:    ; preds = %cond.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader.i

cond.end42.i.compute_prefix_tbl.exit_crit_edge:   ; preds = %cond.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %compute_prefix_tbl.exit

compute_prefix_tbl.exit:                          ; preds = %cond.end42.i.compute_prefix_tbl.exit_crit_edge, %if.end.compute_prefix_tbl.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %prefix_tbl, i32 %mul
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %add.ptr.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv101.i)
  %tobool.not = icmp eq i32 %conv101.i, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %compute_prefix_tbl.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp51.not = icmp eq i32 %len, 0
  br i1 %cmp51.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %pattern, i32 %i.052
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %31 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.not.i = icmp eq i8 %34, 0
  %sub.i42 = add i8 %31, -32
  %spec.select.i43 = select i1 %cmp.not.i, i8 %31, i8 %sub.i42
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 16
  %arrayidx11 = getelementptr i8, ptr %36, i32 %i.052
  %37 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.select.i43, ptr %arrayidx11, align 1
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %compute_prefix_tbl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %38 = call ptr @memcpy(ptr %add.ptr, ptr %pattern, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %alloc_ts_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i46 = phi ptr [ %call9.i.i.i, %if.else ], [ %call9.i.i.i, %alloc_ts_config.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call9.i.i.i, %for.cond.preheader.cleanup_crit_edge ], [ %call9.i.i.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0.i46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kmp_find(ptr noundef %conf, ptr noundef %state) #2 align 64 {
entry:
  %text = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %conf, i32 16
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %text) #8
  %2 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %text, align 4, !annotation !19
  %flags = getelementptr inbounds %struct.ts_config, ptr %conf, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %get_next_block = getelementptr inbounds %struct.ts_config, ptr %conf, i32 0, i32 2
  %5 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_next_block, align 4
  %call197 = call i32 %6(i32 noundef %1, ptr noundef nonnull %text, ptr noundef %conf, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %cmp98 = icmp eq i32 %call197, 0
  br i1 %cmp98, label %entry.cleanup_crit_edge, label %for.cond3.preheader.lr.ph, !prof !20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %pattern_len = getelementptr i8, ptr %conf, i32 20
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.for.end_crit_edge.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %call1101 = phi i32 [ %call197, %for.cond3.preheader.lr.ph ], [ %call1, %for.cond3.for.end_crit_edge.for.cond3.preheader_crit_edge ]
  %consumed.0100 = phi i32 [ %1, %for.cond3.preheader.lr.ph ], [ %add48, %for.cond3.for.end_crit_edge.for.cond3.preheader_crit_edge ]
  %q.099 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %spec.select, %for.cond3.for.end_crit_edge.for.cond3.preheader_crit_edge ]
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %9 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pattern_len, align 4
  %11 = ptrtoint ptr %text to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %text, align 4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %for.cond3.preheader
  %q.195 = phi i32 [ %q.099, %for.cond3.preheader ], [ %spec.select, %for.inc.while.cond.preheader_crit_edge ]
  %i.094 = phi i32 [ 0, %for.cond3.preheader ], [ %add, %for.inc.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %q.195)
  %cmp5.not90 = icmp eq i32 %q.195, 0
  br i1 %cmp5.not90, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %text to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %text, align 4
  %arrayidx10 = getelementptr i8, ptr %16, i32 %i.094
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1
  %conv.i = zext i8 %18 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %sub.i = add i8 %18, -32
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %q.291 = phi i32 [ %q.195, %land.rhs.lr.ph ], [ %25, %while.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %14, i32 %q.291
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  br i1 %tobool18.not, label %land.rhs.cond.end_crit_edge, label %cond.true

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.not.i = icmp eq i8 %23, 0
  %spec.select.i = select i1 %cmp.not.i, i8 %18, i8 %sub.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs.cond.end_crit_edge
  %cond.in = phi i8 [ %spec.select.i, %cond.true ], [ %18, %land.rhs.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %cond.in)
  %cmp12.not = icmp eq i8 %20, %cond.in
  br i1 %cmp12.not, label %cond.end.while.end_crit_edge, label %while.body

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %cond.end
  %sub = add i32 %q.291, -1
  %arrayidx14 = getelementptr %struct.ts_kmp, ptr %add.ptr.i, i32 0, i32 2, i32 %sub
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14, align 4
  %cmp5.not = icmp eq i32 %25, 0
  br i1 %cmp5.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %cond.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %q.2.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %q.291, %cond.end.while.end_crit_edge ]
  %arrayidx16 = getelementptr i8, ptr %8, i32 %q.2.lcssa
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx16, align 1
  %arrayidx24 = getelementptr i8, ptr %12, i32 %i.094
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx24, align 1
  br i1 %tobool18.not, label %while.end.cond.end26_crit_edge, label %cond.true19

while.end.cond.end26_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end26

cond.true19:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i82 = zext i8 %29 to i32
  %arrayidx.i83 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i82
  %30 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i83, align 1
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.not.i84 = icmp eq i8 %32, 0
  %sub.i85 = add i8 %29, -32
  %spec.select.i86 = select i1 %cmp.not.i84, i8 %29, i8 %sub.i85
  br label %cond.end26

cond.end26:                                       ; preds = %cond.true19, %while.end.cond.end26_crit_edge
  %cond27.in = phi i8 [ %spec.select.i86, %cond.true19 ], [ %29, %while.end.cond.end26_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %cond27.in)
  %cmp28 = icmp eq i8 %27, %cond27.in
  %inc = zext i1 %cmp28 to i32
  %spec.select = add i32 %q.2.lcssa, %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %10)
  %cmp32 = icmp eq i32 %spec.select, %10
  %add = add i32 %i.094, 1
  br i1 %cmp32, label %if.then40, label %for.inc, !prof !20

if.then40:                                        ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #7
  %add41 = add i32 %add, %consumed.0100
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add41, ptr %state, align 4
  %34 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pattern_len, align 4
  %sub45 = sub i32 %add41, %35
  br label %cleanup

for.inc:                                          ; preds = %cond.end26
  %exitcond.not = icmp eq i32 %add, %call1101
  br i1 %exitcond.not, label %for.cond3.for.end_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

for.cond3.for.end_crit_edge:                      ; preds = %for.inc
  %add48 = add i32 %call1101, %consumed.0100
  %36 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_next_block, align 4
  %call1 = call i32 %37(i32 noundef %add48, ptr noundef nonnull %text, ptr noundef %conf, ptr noundef %state) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %for.cond3.for.end_crit_edge.cleanup_crit_edge, label %for.cond3.for.end_crit_edge.for.cond3.preheader_crit_edge, !prof !20

for.cond3.for.end_crit_edge.for.cond3.preheader_crit_edge: ; preds = %for.cond3.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond3.preheader

for.cond3.for.end_crit_edge.cleanup_crit_edge:    ; preds = %for.cond3.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond3.for.end_crit_edge.cleanup_crit_edge, %if.then40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub45, %if.then40 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %for.cond3.for.end_crit_edge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %text) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @kmp_get_pattern(ptr nocapture noundef readonly %conf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %conf, i32 16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kmp_get_pattern_len(ptr nocapture noundef readonly %conf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %pattern_len = getelementptr i8, ptr %conf, i32 20
  %0 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pattern_len, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @textsearch_register(ptr noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__UNIQUE_ID_file173, !1, !"__UNIQUE_ID_file173", i1 false, i1 false}
!1 = !{!"../lib/ts_kmp.c", i32 150, i32 1}
!2 = !{ptr @__UNIQUE_ID_license174, !1, !"__UNIQUE_ID_license174", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_ts_kmp__175_152_init_kmp6, !4, !"__initcall__kmod_ts_kmp__175_152_init_kmp6", i1 false, i1 false}
!4 = !{!"../lib/ts_kmp.c", i32 152, i32 1}
!5 = !{ptr @__exitcall_exit_kmp, !6, !"__exitcall_exit_kmp", i1 false, i1 false}
!6 = !{!"../lib/ts_kmp.c", i32 153, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/ts_kmp.c", i32 131, i32 13}
!9 = !{ptr @kmp_ops, !10, !"kmp_ops", i1 false, i1 false}
!10 = !{!"../lib/ts_kmp.c", i32 130, i32 22}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 1, i32 2000}
