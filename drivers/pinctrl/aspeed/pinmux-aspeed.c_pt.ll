; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/aspeed/pinmux-aspeed.c_pt.bc'
source_filename = "../drivers/pinctrl/aspeed/pinmux-aspeed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.aspeed_sig_desc = type { i32, i32, i32, i32, i32 }
%struct.aspeed_pinmux_data = type { ptr, [3 x ptr], ptr, ptr, i32, ptr, i32 }
%struct.aspeed_sig_expr = type { ptr, ptr, i32, ptr }

@aspeed_sig_desc_print_val.__UNIQUE_ID_ddebug135 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 5, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinmux_aspeed\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aspeed_sig_desc_print_val\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pinctrl/aspeed/pinmux-aspeed.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Want %s%X[0x%08X]=0x%X, got 0x%X from 0x%08X\0A\00", [50 x i8] zeroinitializer }, align 32
@aspeed_pinmux_ips = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SCU\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GFX\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LPC\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 17, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"aspeed_pinmux_ips\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 8, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 9, i32 20 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 10, i32 20 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [42 x i8] c"../drivers/pinctrl/aspeed/pinmux-aspeed.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 11, i32 20 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @aspeed_pinmux_ips, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_pinmux_ips to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_sig_desc_eval(ptr nocapture noundef readonly %desc, i1 noundef zeroext %enabled, ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  %raw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw) #4
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %raw, align 4, !annotation !23
  %tobool.not = icmp eq ptr %map, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.aspeed_sig_desc, ptr %desc, i32 0, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %call = call i32 @regmap_read(ptr noundef nonnull %map, i32 noundef %2, ptr noundef nonnull %raw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %raw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sig_desc_print_val.__UNIQUE_ID_ddebug135, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_sig_desc_eval, %aspeed_sig_desc_print_val.exit)) #4
          to label %if.then.i [label %aspeed_sig_desc_print_val.exit], !srcloc !24

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc, align 4
  %arrayidx.i = getelementptr [3 x ptr], ptr @aspeed_pinmux_ips, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %mask.i = getelementptr inbounds %struct.aspeed_sig_desc, ptr %desc, i32 0, i32 2
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask.i, align 4
  %enable6.i = getelementptr inbounds %struct.aspeed_sig_desc, ptr %desc, i32 0, i32 3
  %disable.i = getelementptr inbounds %struct.aspeed_sig_desc, ptr %desc, i32 0, i32 4
  %cond.in.i = select i1 %enabled, ptr %enable6.i, ptr %disable.i
  %13 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %and.i = and i32 %12, %4
  %14 = call i32 @llvm.cttz.i32(i32 %12, i1 false) #4, !range !25
  %shr.i = lshr i32 %and.i, %14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_sig_desc_print_val.__UNIQUE_ID_ddebug135, ptr noundef nonnull @.str.3, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %cond.i, i32 noundef %shr.i, i32 noundef %4) #4
  br label %aspeed_sig_desc_print_val.exit

aspeed_sig_desc_print_val.exit:                   ; preds = %if.then.i, %if.end3
  %enable = getelementptr inbounds %struct.aspeed_sig_desc, ptr %desc, i32 0, i32 3
  %disable = getelementptr inbounds %struct.aspeed_sig_desc, ptr %desc, i32 0, i32 4
  %cond.in = select i1 %enabled, ptr %enable, ptr %disable
  %15 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond = load i32, ptr %cond.in, align 4
  %16 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raw, align 4
  %mask = getelementptr inbounds %struct.aspeed_sig_desc, ptr %desc, i32 0, i32 2
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  %and = and i32 %19, %17
  %20 = call i32 @llvm.cttz.i32(i32 %19, i1 false) #4, !range !25
  %shr = lshr i32 %and, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %cond)
  %cmp = icmp eq i32 %shr, %cond
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %aspeed_sig_desc_print_val.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %aspeed_sig_desc_print_val.exit ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aspeed_sig_expr_eval(ptr noundef %ctx, ptr noundef %expr, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  %raw.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.aspeed_pinmux_data, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %ndescs = getelementptr inbounds %struct.aspeed_sig_expr, ptr %expr, i32 0, i32 2
  %4 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndescs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25 = icmp sgt i32 %5, 0
  br i1 %cmp25, label %for.body.lr.ph, label %for.cond.preheader.cleanup10_crit_edge

for.cond.preheader.cleanup10_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %descs = getelementptr inbounds %struct.aspeed_sig_expr, ptr %expr, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef %ctx, ptr noundef %expr, i1 noundef zeroext %enabled) #4
  br label %cleanup10

for.cond:                                         ; preds = %aspeed_sig_desc_eval.exit
  %inc = add nuw nsw i32 %i.026, 1
  %6 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndescs, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup10_crit_edge

for.cond.cleanup10_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %descs, align 4
  %arrayidx = getelementptr %struct.aspeed_sig_desc, ptr %9, i32 %i.026
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.aspeed_pinmux_data, ptr %ctx, i32 0, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw.i) #4
  %14 = ptrtoint ptr %raw.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %raw.i, align 4, !annotation !23
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %aspeed_sig_desc_eval.exit.thread, label %if.end.i

aspeed_sig_desc_eval.exit.thread:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw.i) #4
  br label %cleanup10

if.end.i:                                         ; preds = %for.body
  %reg.i = getelementptr %struct.aspeed_sig_desc, ptr %9, i32 %i.026, i32 1
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef nonnull %13, i32 noundef %16, ptr noundef nonnull %raw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.aspeed_sig_desc_eval.exit_crit_edge

if.end.i.aspeed_sig_desc_eval.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %aspeed_sig_desc_eval.exit

if.end3.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %raw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %raw.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_sig_desc_print_val.__UNIQUE_ID_ddebug135, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_sig_expr_eval, %aspeed_sig_desc_print_val.exit.i)) #4
          to label %if.then.i.i [label %aspeed_sig_desc_print_val.exit.i], !srcloc !24

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr [3 x ptr], ptr @aspeed_pinmux_ips, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg.i, align 4
  %mask.i.i = getelementptr %struct.aspeed_sig_desc, ptr %9, i32 %i.026, i32 2
  %25 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask.i.i, align 4
  %enable6.i.i = getelementptr %struct.aspeed_sig_desc, ptr %9, i32 %i.026, i32 3
  %disable.i.i = getelementptr %struct.aspeed_sig_desc, ptr %9, i32 %i.026, i32 4
  %cond.in.i.i = select i1 %enabled, ptr %enable6.i.i, ptr %disable.i.i
  %27 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %and.i.i = and i32 %26, %18
  %28 = call i32 @llvm.cttz.i32(i32 %26, i1 false) #4, !range !25
  %shr.i.i = lshr i32 %and.i.i, %28
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aspeed_sig_desc_print_val.__UNIQUE_ID_ddebug135, ptr noundef nonnull @.str.3, ptr noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %cond.i.i, i32 noundef %shr.i.i, i32 noundef %18) #4
  br label %aspeed_sig_desc_print_val.exit.i

aspeed_sig_desc_print_val.exit.i:                 ; preds = %if.then.i.i, %if.end3.i
  %enable.i = getelementptr %struct.aspeed_sig_desc, ptr %9, i32 %i.026, i32 3
  %disable.i = getelementptr %struct.aspeed_sig_desc, ptr %9, i32 %i.026, i32 4
  %cond.in.i = select i1 %enabled, ptr %enable.i, ptr %disable.i
  %29 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %30 = ptrtoint ptr %raw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %raw.i, align 4
  %mask.i = getelementptr %struct.aspeed_sig_desc, ptr %9, i32 %i.026, i32 2
  %32 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %33, %31
  %34 = call i32 @llvm.cttz.i32(i32 %33, i1 false) #4, !range !25
  %shr.i = lshr i32 %and.i, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %cond.i)
  %cmp.i = icmp eq i32 %shr.i, %cond.i
  %conv.i = zext i1 %cmp.i to i32
  br label %aspeed_sig_desc_eval.exit

aspeed_sig_desc_eval.exit:                        ; preds = %aspeed_sig_desc_print_val.exit.i, %if.end.i.aspeed_sig_desc_eval.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %aspeed_sig_desc_print_val.exit.i ], [ %call.i, %if.end.i.aspeed_sig_desc_eval.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 1
  br i1 %cmp7, label %aspeed_sig_desc_eval.exit.cleanup10_crit_edge, label %for.cond

aspeed_sig_desc_eval.exit.cleanup10_crit_edge:    ; preds = %aspeed_sig_desc_eval.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

cleanup10:                                        ; preds = %aspeed_sig_desc_eval.exit.cleanup10_crit_edge, %aspeed_sig_desc_eval.exit.thread, %for.cond.cleanup10_crit_edge, %if.then, %for.cond.preheader.cleanup10_crit_edge
  %retval.2 = phi i32 [ %call, %if.then ], [ -19, %aspeed_sig_desc_eval.exit.thread ], [ 1, %for.cond.preheader.cleanup10_crit_edge ], [ %retval.0.i, %aspeed_sig_desc_eval.exit.cleanup10_crit_edge ], [ 1, %for.cond.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/aspeed/pinmux-aspeed.c", i32 17, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @aspeed_sig_desc_print_val.__UNIQUE_ID_ddebug135, !1, !"__UNIQUE_ID_ddebug135", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/aspeed/pinmux-aspeed.c", i32 9, i32 20}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/aspeed/pinmux-aspeed.c", i32 10, i32 20}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/aspeed/pinmux-aspeed.c", i32 11, i32 20}
!12 = !{ptr @aspeed_pinmux_ips, !13, !"aspeed_pinmux_ips", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/aspeed/pinmux-aspeed.c", i32 8, i32 26}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i64 2148893146, i64 2148893151, i64 2148893164, i64 2148893208, i64 2148893242, i64 2148893263}
!25 = !{i32 0, i32 33}
