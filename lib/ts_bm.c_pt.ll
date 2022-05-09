; ModuleID = '/llk/IR_all_yes/lib/ts_bm.c_pt.bc'
source_filename = "../lib/ts_bm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ts_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ts_config = type { ptr, i32, ptr, ptr }
%struct.ts_bm = type { ptr, i32, [256 x i32], [0 x i32] }

@bm_ops = internal global { %struct.ts_ops, [60 x i8] } { %struct.ts_ops { ptr @.str, ptr @bm_init, ptr @bm_find, ptr null, ptr @bm_get_pattern, ptr @bm_get_pattern_len, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @bm_ops, i64 28), ptr getelementptr (i8, ptr @bm_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file175 = internal constant [21 x i8] c"ts_bm.file=lib/ts_bm\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [18 x i8] c"ts_bm.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ts_bm__177_202_init_bm6 = internal global ptr @init_bm, section ".initcall6.init", align 4
@__exitcall_exit_bm = internal global ptr @exit_bm, section ".exitcall.exit", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bm\00", [29 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@___asan_gen_.1 = private unnamed_addr constant [7 x i8] c"bm_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 180, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [15 x i8] c"../lib/ts_bm.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 181, i32 13 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_exit_bm, ptr @__initcall__kmod_ts_bm__177_202_init_bm6, ptr @exit_bm, ptr @bm_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_bm() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @textsearch_unregister(ptr noundef nonnull @bm_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @textsearch_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_bm() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @textsearch_register(ptr noundef nonnull @bm_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bm_init(ptr nocapture noundef readonly %pattern, i32 noundef %len, i32 noundef %gfp_mask, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %len, 2
  %or.i.i = or i32 %gfp_mask, 256
  %add = add i32 %len, 1032
  %add1 = add i32 %add, %mul
  %add.i = add i32 %add1, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef %or.i.i) #10
  %cmp.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %alloc_ts_config.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

alloc_ts_config.exit:                             ; preds = %entry
  %cmp.i36 = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %alloc_ts_config.exit.cleanup_crit_edge, label %if.end

alloc_ts_config.exit.cleanup_crit_edge:           ; preds = %alloc_ts_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %alloc_ts_config.exit
  %flags3 = getelementptr inbounds %struct.ts_config, ptr %call9.i.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %flags3, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 16
  %patlen = getelementptr i8, ptr %call9.i.i.i, i32 20
  %1 = ptrtoint ptr %patlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %patlen, align 4
  %good_shift = getelementptr i8, ptr %call9.i.i.i, i32 1048
  %add.ptr = getelementptr i8, ptr %good_shift, i32 %mul
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %add.ptr.i, align 16
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp51.not = icmp eq i32 %len, 0
  br i1 %cmp51.not, label %for.cond.preheader.for.body.i.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.body.i.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %pattern, i32 %i.052
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  %sub.i = add i8 %4, -32
  %spec.select.i37 = select i1 %cmp.not.i, i8 %4, i8 %sub.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 16
  %arrayidx9 = getelementptr i8, ptr %9, i32 %i.052
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select.i37, ptr %arrayidx9, align 1
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.body.i.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.body.i.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %pattern, i32 %len)
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.else, %for.body.for.body.i.preheader_crit_edge, %for.cond.preheader.for.body.i.preheader_crit_edge
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %12 = ptrtoint ptr %patlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %patlen, align 4
  %sub.i38 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i38)
  %cmp3108.not.i = icmp eq i32 %sub.i38, 0
  br i1 %cmp3108.not.i, label %for.cond35.preheader.thread.i, label %for.body4.lr.ph.i

for.cond35.preheader.thread.i:                    ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %good_shift to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %good_shift, align 8
  br label %cleanup

for.body4.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 16
  br label %for.body4.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0107.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %17 = ptrtoint ptr %patlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %patlen, align 4
  %arrayidx.i39 = getelementptr %struct.ts_bm, ptr %add.ptr.i, i32 0, i32 2, i32 %i.0107.i
  %19 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i39, align 4
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.cond1.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body4.i:                                      ; preds = %for.inc19.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %i.1109.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc20.i, %for.inc19.i.for.body4.i_crit_edge ]
  %sub7.i = sub i32 %sub.i38, %i.1109.i
  %arrayidx9.i = getelementptr i8, ptr %16, i32 %i.1109.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9.i, align 1
  %idxprom.i = zext i8 %21 to i32
  %arrayidx10.i = getelementptr %struct.ts_bm, ptr %add.ptr.i, i32 0, i32 2, i32 %idxprom.i
  %22 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub7.i, ptr %arrayidx10.i, align 4
  br i1 %tobool.not, label %for.body4.i.for.inc19.i_crit_edge, label %if.then.i

for.body4.i.for.inc19.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19.i

if.then.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = xor i32 %i.1109.i, -1
  %sub13.i = add i32 %13, %23
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx9.i, align 1
  %conv.i.i = zext i8 %25 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.not.i.i = icmp eq i8 %28, 0
  %sub.i.i = add i8 %25, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %25, i8 %sub.i.i
  %idxprom17.i = zext i8 %spec.select.i.i to i32
  %arrayidx18.i = getelementptr %struct.ts_bm, ptr %add.ptr.i, i32 0, i32 2, i32 %idxprom17.i
  %29 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub13.i, ptr %arrayidx18.i, align 4
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %if.then.i, %for.body4.i.for.inc19.i_crit_edge
  %inc20.i = add nuw i32 %i.1109.i, 1
  %exitcond129.not.i = icmp eq i32 %inc20.i, %sub.i38
  br i1 %exitcond129.not.i, label %for.end21.i, label %for.inc19.i.for.body4.i_crit_edge

for.inc19.i.for.body4.i_crit_edge:                ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i

for.end21.i:                                      ; preds = %for.inc19.i
  %30 = ptrtoint ptr %patlen to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i = load i32, ptr %patlen, align 4
  %31 = ptrtoint ptr %good_shift to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %good_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp25111.i = icmp ugt i32 %.pr.i, 1
  br i1 %cmp25111.i, label %for.end21.i.for.body26.i_crit_edge, label %for.end21.i.for.cond35.preheader.i_crit_edge

for.end21.i.for.cond35.preheader.i_crit_edge:     ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond35.preheader.i

for.end21.i.for.body26.i_crit_edge:               ; preds = %for.end21.i
  br label %for.body26.i

for.cond35.preheader.i:                           ; preds = %for.body26.i.for.cond35.preheader.i_crit_edge, %for.end21.i.for.cond35.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ %.pr.i, %for.end21.i.for.cond35.preheader.i_crit_edge ], [ %35, %for.body26.i.for.cond35.preheader.i_crit_edge ]
  %i.3115.i = add i32 %.lcssa.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3115.i)
  %cmp36116.i = icmp sgt i32 %i.3115.i, 0
  br i1 %cmp36116.i, label %for.cond35.preheader.i.for.body37.i_crit_edge, label %for.cond35.preheader.i.cleanup_crit_edge

for.cond35.preheader.i.cleanup_crit_edge:         ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond35.preheader.i.for.body37.i_crit_edge:    ; preds = %for.cond35.preheader.i
  br label %for.body37.i

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.end21.i.for.body26.i_crit_edge
  %32 = phi i32 [ %35, %for.body26.i.for.body26.i_crit_edge ], [ %.pr.i, %for.end21.i.for.body26.i_crit_edge ]
  %i.2112.i = phi i32 [ %inc31.i, %for.body26.i.for.body26.i_crit_edge ], [ 1, %for.end21.i.for.body26.i_crit_edge ]
  %arrayidx29.i = getelementptr %struct.ts_bm, ptr %add.ptr.i, i32 0, i32 3, i32 %i.2112.i
  %33 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx29.i, align 4
  %inc31.i = add nuw i32 %i.2112.i, 1
  %34 = ptrtoint ptr %patlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %patlen, align 4
  %cmp25.i = icmp ult i32 %inc31.i, %35
  br i1 %cmp25.i, label %for.body26.i.for.body26.i_crit_edge, label %for.body26.i.for.cond35.preheader.i_crit_edge

for.body26.i.for.cond35.preheader.i_crit_edge:    ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond35.preheader.i

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.i

for.body37.i:                                     ; preds = %for.inc55.i.for.body37.i_crit_edge, %for.cond35.preheader.i.for.body37.i_crit_edge
  %i.3121.i = phi i32 [ %i.3.i, %for.inc55.i.for.body37.i_crit_edge ], [ %i.3115.i, %for.cond35.preheader.i.for.body37.i_crit_edge ]
  %g.0118.i = phi i32 [ %inc56.i, %for.inc55.i.for.body37.i_crit_edge ], [ 1, %for.cond35.preheader.i.for.body37.i_crit_edge ]
  %i.3.in117.i = phi i32 [ %i.3121.i, %for.inc55.i.for.body37.i_crit_edge ], [ %.lcssa.i, %for.cond35.preheader.i.for.body37.i_crit_edge ]
  %sub38.i = add i32 %i.3.in117.i, -2
  %sub40.i = sub nsw i32 1, %g.0118.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.i, i32 %sub40.i)
  %cmp41.not113.i = icmp slt i32 %sub38.i, %sub40.i
  br i1 %cmp41.not113.i, label %for.body37.i.for.inc55.i_crit_edge, label %for.body42.lr.ph.i

for.body37.i.for.inc55.i_crit_edge:               ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc55.i

for.body42.lr.ph.i:                               ; preds = %for.body37.i
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 16
  %arrayidx14.i.i = getelementptr i8, ptr %37, i32 %sub38.i
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.inc53.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %j.0114.i = phi i32 [ %sub38.i, %for.body42.lr.ph.i ], [ %add1.i.i, %for.inc53.i.for.body42.i_crit_edge ]
  %add1.i.i = add i32 %j.0114.i, -1
  %sub2.i.i = add i32 %add1.i.i, %g.0118.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %for.body42.i
  %g.addr.0.i.i = phi i32 [ %g.0118.i, %for.body42.i ], [ %dec9.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %x.0.in.i.i = phi i32 [ %.lcssa.i, %for.body42.i ], [ %x.0.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %y.0.i.i = phi i32 [ %sub2.i.i, %for.body42.i ], [ %dec3.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %x.0.i.i = add i32 %x.0.in.i.i, -1
  %arrayidx.i97.i = getelementptr i8, ptr %37, i32 %x.0.i.i
  %38 = ptrtoint ptr %arrayidx.i97.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i97.i, align 1
  %dec3.i.i = add i32 %y.0.i.i, -1
  %arrayidx4.i.i = getelementptr i8, ptr %37, i32 %y.0.i.i
  %40 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp.i.i = icmp eq i8 %39, %41
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.for.inc53.i_crit_edge

while.cond.i.i.for.inc53.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec3.i.i)
  %cmp7.i.i = icmp slt i32 %dec3.i.i, 0
  br i1 %cmp7.i.i, label %while.body.i.i.if.then46.i_crit_edge, label %if.end.i.i

while.body.i.i.if.then46.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %dec9.i.i = add nsw i32 %g.addr.0.i.i, -1
  %cmp10.i.i = icmp eq i32 %dec9.i.i, 0
  br i1 %cmp10.i.i, label %subpattern.exit.i, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

subpattern.exit.i:                                ; preds = %if.end.i.i
  %42 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx14.i.i, align 1
  %arrayidx17.i.i = getelementptr i8, ptr %37, i32 %add1.i.i
  %44 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx17.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp19.i.not.i = icmp eq i8 %43, %45
  br i1 %cmp19.i.not.i, label %subpattern.exit.i.for.inc53.i_crit_edge, label %subpattern.exit.i.if.then46.i_crit_edge

subpattern.exit.i.if.then46.i_crit_edge:          ; preds = %subpattern.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i

subpattern.exit.i.for.inc53.i_crit_edge:          ; preds = %subpattern.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53.i

if.then46.i:                                      ; preds = %subpattern.exit.i.if.then46.i_crit_edge, %while.body.i.i.if.then46.i_crit_edge
  %46 = ptrtoint ptr %patlen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %patlen, align 4
  %48 = add i32 %j.0114.i, %g.0118.i
  %sub49.i = sub i32 %47, %48
  %arrayidx51.i = getelementptr %struct.ts_bm, ptr %add.ptr.i, i32 0, i32 3, i32 %g.0118.i
  %49 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub49.i, ptr %arrayidx51.i, align 4
  br label %for.inc55.i

for.inc53.i:                                      ; preds = %subpattern.exit.i.for.inc53.i_crit_edge, %while.cond.i.i.for.inc53.i_crit_edge
  %cmp41.not.i = icmp slt i32 %add1.i.i, %sub40.i
  br i1 %cmp41.not.i, label %for.inc53.i.for.inc55.i_crit_edge, label %for.inc53.i.for.body42.i_crit_edge

for.inc53.i.for.body42.i_crit_edge:               ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42.i

for.inc53.i.for.inc55.i_crit_edge:                ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc55.i

for.inc55.i:                                      ; preds = %for.inc53.i.for.inc55.i_crit_edge, %if.then46.i, %for.body37.i.for.inc55.i_crit_edge
  %inc56.i = add nuw i32 %g.0118.i, 1
  %i.3.i = add i32 %i.3121.i, -1
  %exitcond130.not.i = icmp eq i32 %inc56.i, %.lcssa.i
  br i1 %exitcond130.not.i, label %for.inc55.i.cleanup_crit_edge, label %for.inc55.i.for.body37.i_crit_edge

for.inc55.i.for.body37.i_crit_edge:               ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37.i

for.inc55.i.cleanup_crit_edge:                    ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc55.i.cleanup_crit_edge, %for.cond35.preheader.i.cleanup_crit_edge, %for.cond35.preheader.thread.i, %alloc_ts_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i42 = phi ptr [ %call9.i.i.i, %alloc_ts_config.exit.cleanup_crit_edge ], [ %call9.i.i.i, %for.cond35.preheader.thread.i ], [ %call9.i.i.i, %for.cond35.preheader.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call9.i.i.i, %for.inc55.i.cleanup_crit_edge ]
  ret ptr %retval.0.i42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm_find(ptr noundef %conf, ptr noundef %state) #2 align 64 {
entry:
  %text = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %conf, i32 16
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %text) #9
  %2 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %text, align 4, !annotation !19
  %patlen = getelementptr i8, ptr %conf, i32 20
  %3 = ptrtoint ptr %patlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %patlen, align 4
  %flags = getelementptr inbounds %struct.ts_config, ptr %conf, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %get_next_block = getelementptr inbounds %struct.ts_config, ptr %conf, i32 0, i32 2
  %7 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_next_block, align 4
  %call195 = call i32 %8(i32 noundef %1, ptr noundef nonnull %text, ptr noundef %conf, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %cmp96 = icmp eq i32 %call195, 0
  br i1 %cmp96, label %entry.cleanup_crit_edge, label %while.cond.preheader.lr.ph, !prof !20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader.lr.ph:                       ; preds = %entry
  %conv = and i32 %6, 2
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool11.not = icmp eq i32 %conv, 0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %call1100 = phi i32 [ %call195, %while.cond.preheader.lr.ph ], [ %call1, %while.end.while.cond.preheader_crit_edge ]
  %shift.099 = phi i32 [ %sub, %while.cond.preheader.lr.ph ], [ %shift.1.lcssa, %while.end.while.cond.preheader_crit_edge ]
  %consumed.097 = phi i32 [ %1, %while.cond.preheader.lr.ph ], [ %add43, %while.end.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.099, i32 %call1100)
  %cmp492 = icmp ult i32 %shift.099, %call1100
  br i1 %cmp492, label %for.cond6.preheader.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.cond6.preheader.lr.ph:                        ; preds = %while.cond.preheader
  %9 = ptrtoint ptr %patlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %patlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp885.not = icmp eq i32 %10, 0
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %next.for.cond6.preheader_crit_edge, %for.cond6.preheader.lr.ph
  %shift.193 = phi i32 [ %shift.099, %for.cond6.preheader.lr.ph ], [ %31, %next.for.cond6.preheader_crit_edge ]
  br i1 %cmp885.not, label %for.cond6.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond6.preheader.for.end_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond6.preheader
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %text to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %text, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sub15 = sub i32 %shift.193, %i.086
  %arrayidx16 = getelementptr i8, ptr %14, i32 %sub15
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16, align 1
  br i1 %tobool11.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 0
  %sub.i = add i8 %16, -32
  %spec.select.i = select i1 %cmp.not.i, i8 %16, i8 %sub.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond.in = phi i8 [ %spec.select.i, %cond.true ], [ %16, %for.body.cond.end_crit_edge ]
  %20 = xor i32 %i.086, -1
  %sub20 = add i32 %10, %20
  %arrayidx21 = getelementptr i8, ptr %12, i32 %sub20
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %cond.in, i8 %22)
  %cmp23.not = icmp eq i8 %cond.in, %22
  br i1 %cmp23.not, label %for.inc, label %next

for.inc:                                          ; preds = %cond.end
  %inc = add nuw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond6.preheader.for.end_crit_edge
  %shift.193105 = phi i32 [ %shift.193, %for.inc.for.end_crit_edge ], [ %shift.099, %for.cond6.preheader.for.end_crit_edge ]
  %sub28.neg = add i32 %consumed.097, 1
  %sub29 = add i32 %sub28.neg, %shift.193105
  %add = sub i32 %sub29, %10
  br label %cleanup

next:                                             ; preds = %cond.end
  %23 = ptrtoint ptr %text to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %text, align 4
  %sub30 = sub i32 %shift.193, %i.086
  %arrayidx31 = getelementptr i8, ptr %24, i32 %sub30
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx31, align 1
  %idxprom = zext i8 %26 to i32
  %arrayidx32 = getelementptr %struct.ts_bm, ptr %add.ptr.i, i32 0, i32 2, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx32, align 4
  %add34 = add i32 %28, %sub30
  %arrayidx35 = getelementptr %struct.ts_bm, ptr %add.ptr.i, i32 0, i32 3, i32 %i.086
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %30, %shift.193
  %31 = call i32 @llvm.smax.i32(i32 %add34, i32 %add36)
  %cmp4 = icmp ult i32 %31, %call1100
  br i1 %cmp4, label %next.for.cond6.preheader_crit_edge, label %next.while.end_crit_edge

next.while.end_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

next.for.cond6.preheader_crit_edge:               ; preds = %next
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6.preheader

while.end:                                        ; preds = %next.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %shift.1.lcssa = phi i32 [ %shift.099, %while.cond.preheader.while.end_crit_edge ], [ %31, %next.while.end_crit_edge ]
  %add43 = add i32 %call1100, %consumed.097
  %32 = ptrtoint ptr %get_next_block to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_next_block, align 4
  %call1 = call i32 %33(i32 noundef %add43, ptr noundef nonnull %text, ptr noundef %conf, ptr noundef %state) #9
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %while.end.cleanup_crit_edge, label %while.end.while.cond.preheader_crit_edge, !prof !20

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %for.end ], [ -1, %entry.cleanup_crit_edge ], [ -1, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %text) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @bm_get_pattern(ptr nocapture noundef readonly %conf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %conf, i32 16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bm_get_pattern_len(ptr nocapture noundef readonly %conf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %patlen = getelementptr i8, ptr %conf, i32 20
  %0 = ptrtoint ptr %patlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %patlen, align 4
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__UNIQUE_ID_file175, !1, !"__UNIQUE_ID_file175", i1 false, i1 false}
!1 = !{!"../lib/ts_bm.c", i32 200, i32 1}
!2 = !{ptr @__UNIQUE_ID_license176, !1, !"__UNIQUE_ID_license176", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_ts_bm__177_202_init_bm6, !4, !"__initcall__kmod_ts_bm__177_202_init_bm6", i1 false, i1 false}
!4 = !{!"../lib/ts_bm.c", i32 202, i32 1}
!5 = !{ptr @__exitcall_exit_bm, !6, !"__exitcall_exit_bm", i1 false, i1 false}
!6 = !{!"../lib/ts_bm.c", i32 203, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/ts_bm.c", i32 181, i32 13}
!9 = !{ptr @bm_ops, !10, !"bm_ops", i1 false, i1 false}
!10 = !{!"../lib/ts_bm.c", i32 180, i32 22}
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
