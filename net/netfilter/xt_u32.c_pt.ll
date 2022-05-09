; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_u32.c_pt.bc'
source_filename = "../net/netfilter/xt_u32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_u32 = type { [11 x %struct.xt_u32_test], i8, i8 }
%struct.xt_u32_test = type { [11 x %struct.xt_u32_location_element], [11 x %struct.xt_u32_value_element], i8, i8 }
%struct.xt_u32_location_element = type { i32, i8 }
%struct.xt_u32_value_element = type { i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@xt_u32_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"u32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @u32_mt, ptr null, ptr null, ptr null, ptr null, i32 1984, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_u32__354_118_u32_mt_init6 = internal global ptr @u32_mt_init, section ".initcall6.init", align 4
@__exitcall_u32_mt_exit = internal global ptr @u32_mt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author355 = internal constant [50 x i8] c"xt_u32.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description356 = internal constant [52 x i8] c"xt_u32.description=Xtables: arbitrary byte matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [33 x i8] c"xt_u32.file=net/netfilter/xt_u32\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [19 x i8] c"xt_u32.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [21 x i8] c"xt_u32.alias=ipt_u32\00", section ".modinfo", align 1
@__UNIQUE_ID_alias360 = internal constant [22 x i8] c"xt_u32.alias=ip6t_u32\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_alias360, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_u32_mt_exit, ptr @__initcall__kmod_xt_u32__354_118_u32_mt_init6, ptr @u32_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @u32_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @xt_u32_mt_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @xt_u32_mt_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @u32_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %n.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #4
  %3 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %n.i, align 4, !annotation !26
  %ntests.i = getelementptr inbounds %struct.xt_u32, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %ntests.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ntests.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp169.not.i = icmp eq i8 %5, 0
  br i1 %cmp169.not.i, label %entry.u32_match_it.exit_crit_edge, label %for.body.lr.ph.i

entry.u32_match_it.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %u32_match_it.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc87.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %testind.0170.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc88.i, %for.inc87.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [11 x %struct.xt_u32_test], ptr %2, i32 0, i32 %testind.0170.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3.i = icmp ult i32 %9, 4
  %sub.i = add i32 %9, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i)
  %cmp6.i = icmp ugt i32 %7, %sub.i
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %cmp6.i
  br i1 %or.cond.i, label %for.body.i.u32_match_it.exit_crit_edge, label %if.end.i

for.body.i.u32_match_it.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %u32_match_it.exit

if.end.i:                                         ; preds = %for.body.i
  %call.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %7, ptr noundef nonnull %n.i, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %do.body.i, label %if.end14.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/xt_u32.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #4, !srcloc !27
  unreachable

if.end14.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n.i, align 4
  %nnums15.i = getelementptr [11 x %struct.xt_u32_test], ptr %2, i32 0, i32 %testind.0170.i, i32 2
  %12 = ptrtoint ptr %nnums15.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nnums15.i, align 4
  %conv16.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp18159.i = icmp ugt i8 %13, 1
  br i1 %cmp18159.i, label %if.end14.i.for.body20.i_crit_edge, label %if.end14.i.for.end.i_crit_edge

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

if.end14.i.for.body20.i_crit_edge:                ; preds = %if.end14.i
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc.i.for.body20.i_crit_edge, %if.end14.i.for.body20.i_crit_edge
  %at.0162.i = phi i32 [ %at.2.ph.i, %for.inc.i.for.body20.i_crit_edge ], [ 0, %if.end14.i.for.body20.i_crit_edge ]
  %val.0161.i = phi i32 [ %val.2.ph.i, %for.inc.i.for.body20.i_crit_edge ], [ %11, %if.end14.i.for.body20.i_crit_edge ]
  %i.0160.i = phi i32 [ %inc.i, %for.inc.i.for.body20.i_crit_edge ], [ 1, %if.end14.i.for.body20.i_crit_edge ]
  %arrayidx23.i = getelementptr [11 x %struct.xt_u32_location_element], ptr %arrayidx.i, i32 0, i32 %i.0160.i
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx23.i, align 4
  %nextop.i = getelementptr [11 x %struct.xt_u32_location_element], ptr %arrayidx.i, i32 0, i32 %i.0160.i, i32 1
  %16 = ptrtoint ptr %nextop.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nextop.i, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %for.body20.i.for.inc.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb28.i
    i8 2, label %sw.bb29.i
    i8 3, label %sw.bb30.i
  ]

for.body20.i.for.inc.i_crit_edge:                 ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = and i32 %15, %val.0161.i
  br label %for.inc.i

sw.bb28.i:                                        ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i = shl i32 %val.0161.i, %15
  br label %for.inc.i

sw.bb29.i:                                        ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = lshr i32 %val.0161.i, %15
  br label %for.inc.i

sw.bb30.i:                                        ; preds = %for.body20.i
  %add.i = add i32 %val.0161.i, %at.0162.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %at.0162.i)
  %cmp31.i = icmp ult i32 %add.i, %at.0162.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %add.i)
  %cmp37.i = icmp ugt i32 %add.i, -5
  %or.cond149.i = or i1 %cmp31.i, %cmp37.i
  br i1 %or.cond149.i, label %sw.bb30.i.u32_match_it.exit_crit_edge, label %lor.lhs.false39.i

sw.bb30.i.u32_match_it.exit_crit_edge:            ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %u32_match_it.exit

lor.lhs.false39.i:                                ; preds = %sw.bb30.i
  %add36.i = add nuw i32 %add.i, 4
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add36.i)
  %cmp42.i = icmp ult i32 %20, %add36.i
  br i1 %cmp42.i, label %lor.lhs.false39.i.u32_match_it.exit_crit_edge, label %lor.lhs.false44.i

lor.lhs.false39.i.u32_match_it.exit_crit_edge:    ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %u32_match_it.exit

lor.lhs.false44.i:                                ; preds = %lor.lhs.false39.i
  %sub46.i = sub nuw i32 -4, %add.i
  %sub47.i = add i32 %sub46.i, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub47.i)
  %cmp48.i = icmp ugt i32 %15, %sub47.i
  br i1 %cmp48.i, label %lor.lhs.false44.i.u32_match_it.exit_crit_edge, label %if.end51.i

lor.lhs.false44.i.u32_match_it.exit_crit_edge:    ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %u32_match_it.exit

if.end51.i:                                       ; preds = %lor.lhs.false44.i
  %add52.i = add i32 %15, %add.i
  %call53.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add52.i, ptr noundef nonnull %n.i, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %do.body57.i, label %if.end63.i

do.body57.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/xt_u32.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #4, !srcloc !28
  unreachable

if.end63.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end63.i, %sw.bb29.i, %sw.bb28.i, %sw.bb.i, %for.body20.i.for.inc.i_crit_edge
  %val.2.ph.i = phi i32 [ %and.i, %sw.bb.i ], [ %shl.i, %sw.bb28.i ], [ %shr.i, %sw.bb29.i ], [ %22, %if.end63.i ], [ %val.0161.i, %for.body20.i.for.inc.i_crit_edge ]
  %at.2.ph.i = phi i32 [ %at.0162.i, %sw.bb.i ], [ %at.0162.i, %sw.bb28.i ], [ %at.0162.i, %sw.bb29.i ], [ %add.i, %if.end63.i ], [ %at.0162.i, %for.body20.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0160.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv16.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body20.i_crit_edge

for.inc.i.for.body20.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body20.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge
  %val.0.lcssa.i = phi i32 [ %11, %if.end14.i.for.end.i_crit_edge ], [ %val.2.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %nvalues.i = getelementptr [11 x %struct.xt_u32_test], ptr %2, i32 0, i32 %testind.0170.i, i32 3
  %23 = ptrtoint ptr %nvalues.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nvalues.i, align 1
  %conv64.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp66163.not.i = icmp eq i8 %24, 0
  br i1 %cmp66163.not.i, label %for.end.i.u32_match_it.exit_crit_edge, label %for.end.i.for.body68.i_crit_edge

for.end.i.for.body68.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body68.i

for.end.i.u32_match_it.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %u32_match_it.exit

for.body68.i:                                     ; preds = %for.inc78.i.for.body68.i_crit_edge, %for.end.i.for.body68.i_crit_edge
  %i.1164.i = phi i32 [ %inc79.i, %for.inc78.i.for.body68.i_crit_edge ], [ 0, %for.end.i.for.body68.i_crit_edge ]
  %arrayidx69.i = getelementptr [11 x %struct.xt_u32_test], ptr %2, i32 0, i32 %testind.0170.i, i32 1, i32 %i.1164.i
  %25 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx69.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %val.0.lcssa.i)
  %cmp70.not.i = icmp ugt i32 %26, %val.0.lcssa.i
  br i1 %cmp70.not.i, label %for.body68.i.for.inc78.i_crit_edge, label %land.lhs.true.i

for.body68.i.for.inc78.i_crit_edge:               ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc78.i

land.lhs.true.i:                                  ; preds = %for.body68.i
  %max.i = getelementptr [11 x %struct.xt_u32_test], ptr %2, i32 0, i32 %testind.0170.i, i32 1, i32 %i.1164.i, i32 1
  %27 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.lcssa.i, i32 %28)
  %cmp74.not.i = icmp ugt i32 %val.0.lcssa.i, %28
  br i1 %cmp74.not.i, label %land.lhs.true.i.for.inc78.i_crit_edge, label %for.inc87.i

land.lhs.true.i.for.inc78.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc78.i

for.inc78.i:                                      ; preds = %land.lhs.true.i.for.inc78.i_crit_edge, %for.body68.i.for.inc78.i_crit_edge
  %inc79.i = add nuw nsw i32 %i.1164.i, 1
  %exitcond180.not.i = icmp eq i32 %inc79.i, %conv64.i
  br i1 %exitcond180.not.i, label %for.inc78.i.u32_match_it.exit_crit_edge, label %for.inc78.i.for.body68.i_crit_edge

for.inc78.i.for.body68.i_crit_edge:               ; preds = %for.inc78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body68.i

for.inc78.i.u32_match_it.exit_crit_edge:          ; preds = %for.inc78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %u32_match_it.exit

for.inc87.i:                                      ; preds = %land.lhs.true.i
  %inc88.i = add nuw nsw i32 %testind.0170.i, 1
  %29 = ptrtoint ptr %ntests.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ntests.i, align 4
  %conv.i = zext i8 %30 to i32
  %cmp.i = icmp ult i32 %inc88.i, %conv.i
  br i1 %cmp.i, label %for.inc87.i.for.body.i_crit_edge, label %for.inc87.i.u32_match_it.exit_crit_edge

for.inc87.i.u32_match_it.exit_crit_edge:          ; preds = %for.inc87.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %u32_match_it.exit

for.inc87.i.for.body.i_crit_edge:                 ; preds = %for.inc87.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

u32_match_it.exit:                                ; preds = %for.inc87.i.u32_match_it.exit_crit_edge, %for.inc78.i.u32_match_it.exit_crit_edge, %for.end.i.u32_match_it.exit_crit_edge, %lor.lhs.false44.i.u32_match_it.exit_crit_edge, %lor.lhs.false39.i.u32_match_it.exit_crit_edge, %sw.bb30.i.u32_match_it.exit_crit_edge, %for.body.i.u32_match_it.exit_crit_edge, %entry.u32_match_it.exit_crit_edge
  %cmp158.i = phi i1 [ true, %entry.u32_match_it.exit_crit_edge ], [ false, %for.inc78.i.u32_match_it.exit_crit_edge ], [ false, %lor.lhs.false44.i.u32_match_it.exit_crit_edge ], [ false, %lor.lhs.false39.i.u32_match_it.exit_crit_edge ], [ false, %sw.bb30.i.u32_match_it.exit_crit_edge ], [ true, %for.inc87.i.u32_match_it.exit_crit_edge ], [ false, %for.body.i.u32_match_it.exit_crit_edge ], [ false, %for.end.i.u32_match_it.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #4
  %invert = getelementptr inbounds %struct.xt_u32, ptr %2, i32 0, i32 2
  %31 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %invert, align 1
  %33 = zext i1 %cmp158.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %33)
  %tobool2 = icmp ne i8 %32, %33
  ret i1 %tobool2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_xt_u32__354_118_u32_mt_init6, !1, !"__initcall__kmod_xt_u32__354_118_u32_mt_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_u32.c", i32 118, i32 1}
!2 = !{ptr @__exitcall_u32_mt_exit, !3, !"__exitcall_u32_mt_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_u32.c", i32 119, i32 1}
!4 = !{ptr @__UNIQUE_ID_author355, !5, !"__UNIQUE_ID_author355", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_u32.c", i32 120, i32 1}
!6 = !{ptr @__UNIQUE_ID_description356, !7, !"__UNIQUE_ID_description356", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_u32.c", i32 121, i32 1}
!8 = !{ptr @__UNIQUE_ID_file357, !9, !"__UNIQUE_ID_file357", i1 false, i1 false}
!9 = !{!"../net/netfilter/xt_u32.c", i32 122, i32 1}
!10 = !{ptr @__UNIQUE_ID_license358, !9, !"__UNIQUE_ID_license358", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias359, !12, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_u32.c", i32 123, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias360, !14, !"__UNIQUE_ID_alias360", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_u32.c", i32 124, i32 1}
!15 = !{ptr @xt_u32_mt_reg, !16, !"xt_u32_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_u32.c", i32 99, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
!27 = !{i64 2155991953, i64 2155992439, i64 2155991990, i64 2155992046, i64 2155992080, i64 2155992104, i64 2155992145, i64 2155992166, i64 2155992194, i64 2155992228}
!28 = !{i64 2155993501, i64 2155993987, i64 2155993538, i64 2155993594, i64 2155993628, i64 2155993652, i64 2155993693, i64 2155993714, i64 2155993742, i64 2155993776}
