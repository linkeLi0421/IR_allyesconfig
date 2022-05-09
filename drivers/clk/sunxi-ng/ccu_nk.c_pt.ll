; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_nk.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_nk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_nk_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_nk_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_nk_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_nk_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_nk_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_nk_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@ccu_nk_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_nk_enable, ptr @ccu_nk_disable, ptr @ccu_nk_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_nk_recalc_rate, ptr @ccu_nk_round_rate, ptr null, ptr null, ptr null, ptr @ccu_nk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_nk_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_nk_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_nk_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_nk_ops to i32), ptr @__kstrtab_ccu_nk_ops, ptr @__kstrtabns_ccu_nk_ops }, section "___ksymtab_gpl+ccu_nk_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"ccu_nk_ops\00", align 1
@___asan_gen_.2 = private constant [33 x i8] c"../drivers/clk/sunxi-ng/ccu_nk.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 151, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_nk_ops, ptr @ccu_nk_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_nk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nk_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %enable = getelementptr i8, ptr %hw, i32 -44
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable, align 4
  %call1 = tail call i32 @ccu_gate_helper_enable(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_nk_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %enable = getelementptr i8, ptr %hw, i32 -44
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %common, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nk_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %enable = getelementptr i8, ptr %hw, i32 -44
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable, align 4
  %call1 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %reg2 = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg2, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %n5 = getelementptr i8, ptr %hw, i32 -36
  %shift = getelementptr i8, ptr %hw, i32 -35
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 1
  %conv6 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv6
  %width = getelementptr i8, ptr %hw, i32 -34
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 2
  %conv8 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv8
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %10 = ptrtoint ptr %n5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n5, align 4
  %conv10 = zext i8 %11 to i32
  %add = add i32 %and, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %add
  %k11 = getelementptr i8, ptr %hw, i32 -31
  %shift12 = getelementptr i8, ptr %hw, i32 -30
  %12 = ptrtoint ptr %shift12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift12, align 1
  %conv13 = zext i8 %13 to i32
  %shr14 = lshr i32 %5, %conv13
  %width16 = getelementptr i8, ptr %hw, i32 -29
  %14 = ptrtoint ptr %width16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width16, align 1
  %conv17 = zext i8 %15 to i32
  %notmask54 = shl nsw i32 -1, %conv17
  %sub19 = xor i32 %notmask54, -1
  %and20 = and i32 %shr14, %sub19
  %16 = ptrtoint ptr %k11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %k11, align 1
  %conv23 = zext i8 %17 to i32
  %add24 = add i32 %and20, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add24)
  %tobool25.not = icmp eq i32 %add24, 0
  %k.0 = select i1 %tobool25.not, i32 1, i32 %add24
  %mul = mul i32 %spec.select, %parent_rate
  %mul29 = mul i32 %mul, %k.0
  %features = getelementptr i8, ptr %hw, i32 -8
  %18 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %features, align 4
  %and31 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %entry.if.end34_crit_edge, label %if.then33

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -24
  %20 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fixed_post_div, align 4
  %div = udiv i32 %mul29, %21
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %entry.if.end34_crit_edge
  %rate.0 = phi i32 [ %div, %if.then33 ], [ %mul29, %entry.if.end34_crit_edge ]
  ret i32 %rate.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -24
  %2 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %3, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %entry.if.end_crit_edge ]
  %min = getelementptr i8, ptr %hw, i32 -33
  %4 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %narrow = select i1 %tobool1.not, i8 1, i8 %5
  %conv. = zext i8 %narrow to i32
  %max = getelementptr i8, ptr %hw, i32 -32
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max, align 4
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %cond.false6, label %if.end.cond.end9_crit_edge

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end9

cond.false6:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %width = getelementptr i8, ptr %hw, i32 -34
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 2
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv8
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false6, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %shl, %cond.false6 ], [ %conv3, %if.end.cond.end9_crit_edge ]
  %min11 = getelementptr i8, ptr %hw, i32 -28
  %10 = ptrtoint ptr %min11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %min11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  %narrow54 = select i1 %tobool13.not, i8 1, i8 %11
  %conv12. = zext i8 %narrow54 to i32
  %max19 = getelementptr i8, ptr %hw, i32 -27
  %12 = ptrtoint ptr %max19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max19, align 1
  %conv20 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %cond.false23, label %cond.end9.cond.end28_crit_edge

cond.end9.cond.end28_crit_edge:                   ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end28

cond.false23:                                     ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #6
  %width25 = getelementptr i8, ptr %hw, i32 -29
  %14 = ptrtoint ptr %width25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width25, align 1
  %conv26 = zext i8 %15 to i32
  %shl27 = shl nuw i32 1, %conv26
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false23, %cond.end9.cond.end28_crit_edge
  %cond29 = phi i32 [ %shl27, %cond.false23 ], [ %conv20, %cond.end9.cond.end28_crit_edge ]
  %16 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29, i32 %conv12.)
  %cmp.not36.i = icmp ult i32 %cond29, %conv12.
  br i1 %cmp.not36.i, label %cond.end28.ccu_nk_find_best.exit_crit_edge, label %for.body.lr.ph.i

cond.end28.ccu_nk_find_best.exit_crit_edge:       ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nk_find_best.exit

for.body.lr.ph.i:                                 ; preds = %cond.end28
  call void @__sanitizer_cov_trace_cmp4(i32 %cond10, i32 %conv.)
  %cmp2.not28.i = icmp ult i32 %cond10, %conv.
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc10.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %_k.040.i = phi i32 [ %conv12., %for.body.lr.ph.i ], [ %inc11.i, %for.inc10.i.for.body.i_crit_edge ]
  %best_n.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_n.1.lcssa.i, %for.inc10.i.for.body.i_crit_edge ]
  %best_k.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_k.1.lcssa.i, %for.inc10.i.for.body.i_crit_edge ]
  %best_rate.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc10.i.for.body.i_crit_edge ]
  br i1 %cmp2.not28.i, label %for.body.i.for.inc10.i_crit_edge, label %for.body3.lr.ph.i

for.body.i.for.inc10.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc10.i

for.body3.lr.ph.i:                                ; preds = %for.body.i
  %mul.i = mul i32 %_k.040.i, %17
  br label %for.body3.i

for.body3.i:                                      ; preds = %cleanup.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %_n.032.i = phi i32 [ %conv., %for.body3.lr.ph.i ], [ %inc.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_n.131.i = phi i32 [ %best_n.039.i, %for.body3.lr.ph.i ], [ %best_n.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_k.130.i = phi i32 [ %best_k.038.i, %for.body3.lr.ph.i ], [ %best_k.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_rate.129.i = phi i32 [ %best_rate.037.i, %for.body3.lr.ph.i ], [ %best_rate.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %mul4.i = mul i32 %mul.i, %_n.032.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %mul4.i)
  %cmp5.i = icmp ult i32 %rate.addr.0, %mul4.i
  br i1 %cmp5.i, label %for.body3.i.cleanup.i_crit_edge, label %if.end.i

for.body3.i.cleanup.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 %rate.addr.0, %mul4.i
  %sub6.i = sub i32 %rate.addr.0, %best_rate.129.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub6.i)
  %cmp7.i = icmp ult i32 %sub.i, %sub6.i
  %best_rate.2.i = select i1 %cmp7.i, i32 %mul4.i, i32 %best_rate.129.i
  %best_k.2.i = select i1 %cmp7.i, i32 %_k.040.i, i32 %best_k.130.i
  %best_n.2.i = select i1 %cmp7.i, i32 %_n.032.i, i32 %best_n.131.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body3.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.2.i, %if.end.i ], [ %best_rate.129.i, %for.body3.i.cleanup.i_crit_edge ]
  %best_k.3.i = phi i32 [ %best_k.2.i, %if.end.i ], [ %best_k.130.i, %for.body3.i.cleanup.i_crit_edge ]
  %best_n.3.i = phi i32 [ %best_n.2.i, %if.end.i ], [ %best_n.131.i, %for.body3.i.cleanup.i_crit_edge ]
  %inc.i = add i32 %_n.032.i, 1
  %cmp2.not.i = icmp ugt i32 %inc.i, %cond10
  br i1 %cmp2.not.i, label %cleanup.i.for.inc10.i_crit_edge, label %cleanup.i.for.body3.i_crit_edge

cleanup.i.for.body3.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

cleanup.i.for.inc10.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %cleanup.i.for.inc10.i_crit_edge, %for.body.i.for.inc10.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.037.i, %for.body.i.for.inc10.i_crit_edge ], [ %best_rate.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %best_k.1.lcssa.i = phi i32 [ %best_k.038.i, %for.body.i.for.inc10.i_crit_edge ], [ %best_k.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %best_n.1.lcssa.i = phi i32 [ %best_n.039.i, %for.body.i.for.inc10.i_crit_edge ], [ %best_n.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %inc11.i = add i32 %_k.040.i, 1
  %cmp.not.i = icmp ugt i32 %inc11.i, %cond29
  br i1 %cmp.not.i, label %for.inc10.i.ccu_nk_find_best.exit_crit_edge, label %for.inc10.i.for.body.i_crit_edge

for.inc10.i.for.body.i_crit_edge:                 ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc10.i.ccu_nk_find_best.exit_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nk_find_best.exit

ccu_nk_find_best.exit:                            ; preds = %for.inc10.i.ccu_nk_find_best.exit_crit_edge, %cond.end28.ccu_nk_find_best.exit_crit_edge
  %best_k.0.lcssa.i = phi i32 [ 0, %cond.end28.ccu_nk_find_best.exit_crit_edge ], [ %best_k.1.lcssa.i, %for.inc10.i.ccu_nk_find_best.exit_crit_edge ]
  %best_n.0.lcssa.i = phi i32 [ 0, %cond.end28.ccu_nk_find_best.exit_crit_edge ], [ %best_n.1.lcssa.i, %for.inc10.i.ccu_nk_find_best.exit_crit_edge ]
  %mul31 = mul i32 %best_k.0.lcssa.i, %17
  %mul33 = mul i32 %mul31, %best_n.0.lcssa.i
  br i1 %tobool.not, label %ccu_nk_find_best.exit.if.end40_crit_edge, label %if.then38

ccu_nk_find_best.exit.if.end40_crit_edge:         ; preds = %ccu_nk_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then38:                                        ; preds = %ccu_nk_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div39 = getelementptr i8, ptr %hw, i32 -24
  %18 = ptrtoint ptr %fixed_post_div39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fixed_post_div39, align 4
  %div = udiv i32 %mul33, %19
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %ccu_nk_find_best.exit.if.end40_crit_edge
  %rate.addr.1 = phi i32 [ %div, %if.then38 ], [ %mul33, %ccu_nk_find_best.exit.if.end40_crit_edge ]
  ret i32 %rate.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nk_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -24
  %2 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %3, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %entry.if.end_crit_edge ]
  %min = getelementptr i8, ptr %hw, i32 -33
  %4 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %narrow = select i1 %tobool1.not, i8 1, i8 %5
  %conv. = zext i8 %narrow to i32
  %max = getelementptr i8, ptr %hw, i32 -32
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max, align 4
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %cond.false6, label %if.end.cond.end9_crit_edge

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end9

cond.false6:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %width = getelementptr i8, ptr %hw, i32 -34
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 2
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv8
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false6, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %shl, %cond.false6 ], [ %conv3, %if.end.cond.end9_crit_edge ]
  %min11 = getelementptr i8, ptr %hw, i32 -28
  %10 = ptrtoint ptr %min11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %min11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  %narrow140 = select i1 %tobool13.not, i8 1, i8 %11
  %conv12. = zext i8 %narrow140 to i32
  %max19 = getelementptr i8, ptr %hw, i32 -27
  %12 = ptrtoint ptr %max19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max19, align 1
  %conv20 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %cond.false23, label %cond.end9.cond.end28_crit_edge

cond.end9.cond.end28_crit_edge:                   ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end28

cond.false23:                                     ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #6
  %width25 = getelementptr i8, ptr %hw, i32 -29
  %14 = ptrtoint ptr %width25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width25, align 1
  %conv26 = zext i8 %15 to i32
  %shl27 = shl nuw i32 1, %conv26
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false23, %cond.end9.cond.end28_crit_edge
  %cond29 = phi i32 [ %shl27, %cond.false23 ], [ %conv20, %cond.end9.cond.end28_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29, i32 %conv12.)
  %cmp.not36.i = icmp ult i32 %cond29, %conv12.
  br i1 %cmp.not36.i, label %cond.end28.ccu_nk_find_best.exit_crit_edge, label %for.body.lr.ph.i

cond.end28.ccu_nk_find_best.exit_crit_edge:       ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nk_find_best.exit

for.body.lr.ph.i:                                 ; preds = %cond.end28
  call void @__sanitizer_cov_trace_cmp4(i32 %cond10, i32 %conv.)
  %cmp2.not28.i = icmp ult i32 %cond10, %conv.
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc10.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %_k.040.i = phi i32 [ %conv12., %for.body.lr.ph.i ], [ %inc11.i, %for.inc10.i.for.body.i_crit_edge ]
  %best_n.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_n.1.lcssa.i, %for.inc10.i.for.body.i_crit_edge ]
  %best_k.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_k.1.lcssa.i, %for.inc10.i.for.body.i_crit_edge ]
  %best_rate.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc10.i.for.body.i_crit_edge ]
  br i1 %cmp2.not28.i, label %for.body.i.for.inc10.i_crit_edge, label %for.body3.lr.ph.i

for.body.i.for.inc10.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc10.i

for.body3.lr.ph.i:                                ; preds = %for.body.i
  %mul.i = mul i32 %_k.040.i, %parent_rate
  br label %for.body3.i

for.body3.i:                                      ; preds = %cleanup.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %_n.032.i = phi i32 [ %conv., %for.body3.lr.ph.i ], [ %inc.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_n.131.i = phi i32 [ %best_n.039.i, %for.body3.lr.ph.i ], [ %best_n.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_k.130.i = phi i32 [ %best_k.038.i, %for.body3.lr.ph.i ], [ %best_k.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %best_rate.129.i = phi i32 [ %best_rate.037.i, %for.body3.lr.ph.i ], [ %best_rate.3.i, %cleanup.i.for.body3.i_crit_edge ]
  %mul4.i = mul i32 %mul.i, %_n.032.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %mul4.i)
  %cmp5.i = icmp ult i32 %rate.addr.0, %mul4.i
  br i1 %cmp5.i, label %for.body3.i.cleanup.i_crit_edge, label %if.end.i

for.body3.i.cleanup.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 %rate.addr.0, %mul4.i
  %sub6.i = sub i32 %rate.addr.0, %best_rate.129.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub6.i)
  %cmp7.i = icmp ult i32 %sub.i, %sub6.i
  %best_rate.2.i = select i1 %cmp7.i, i32 %mul4.i, i32 %best_rate.129.i
  %best_k.2.i = select i1 %cmp7.i, i32 %_k.040.i, i32 %best_k.130.i
  %best_n.2.i = select i1 %cmp7.i, i32 %_n.032.i, i32 %best_n.131.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body3.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.2.i, %if.end.i ], [ %best_rate.129.i, %for.body3.i.cleanup.i_crit_edge ]
  %best_k.3.i = phi i32 [ %best_k.2.i, %if.end.i ], [ %best_k.130.i, %for.body3.i.cleanup.i_crit_edge ]
  %best_n.3.i = phi i32 [ %best_n.2.i, %if.end.i ], [ %best_n.131.i, %for.body3.i.cleanup.i_crit_edge ]
  %inc.i = add i32 %_n.032.i, 1
  %cmp2.not.i = icmp ugt i32 %inc.i, %cond10
  br i1 %cmp2.not.i, label %cleanup.i.for.inc10.i_crit_edge, label %cleanup.i.for.body3.i_crit_edge

cleanup.i.for.body3.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

cleanup.i.for.inc10.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %cleanup.i.for.inc10.i_crit_edge, %for.body.i.for.inc10.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.037.i, %for.body.i.for.inc10.i_crit_edge ], [ %best_rate.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %best_k.1.lcssa.i = phi i32 [ %best_k.038.i, %for.body.i.for.inc10.i_crit_edge ], [ %best_k.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %best_n.1.lcssa.i = phi i32 [ %best_n.039.i, %for.body.i.for.inc10.i_crit_edge ], [ %best_n.3.i, %cleanup.i.for.inc10.i_crit_edge ]
  %inc11.i = add i32 %_k.040.i, 1
  %cmp.not.i = icmp ugt i32 %inc11.i, %cond29
  br i1 %cmp.not.i, label %for.inc10.i.ccu_nk_find_best.exit_crit_edge, label %for.inc10.i.for.body.i_crit_edge

for.inc10.i.for.body.i_crit_edge:                 ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc10.i.ccu_nk_find_best.exit_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nk_find_best.exit

ccu_nk_find_best.exit:                            ; preds = %for.inc10.i.ccu_nk_find_best.exit_crit_edge, %cond.end28.ccu_nk_find_best.exit_crit_edge
  %best_k.0.lcssa.i = phi i32 [ 0, %cond.end28.ccu_nk_find_best.exit_crit_edge ], [ %best_k.1.lcssa.i, %for.inc10.i.ccu_nk_find_best.exit_crit_edge ]
  %best_n.0.lcssa.i = phi i32 [ 0, %cond.end28.ccu_nk_find_best.exit_crit_edge ], [ %best_n.1.lcssa.i, %for.inc10.i.ccu_nk_find_best.exit_crit_edge ]
  %common = getelementptr i8, ptr %hw, i32 -20
  %n = getelementptr i8, ptr %hw, i32 -36
  %k = getelementptr i8, ptr %hw, i32 -31
  %lock = getelementptr i8, ptr %hw, i32 -4
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #4
  %18 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common, align 4
  %reg39 = getelementptr i8, ptr %hw, i32 -16
  %20 = ptrtoint ptr %reg39 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reg39, align 4
  %conv40 = zext i16 %21 to i32
  %add.ptr = getelementptr i8, ptr %19, i32 %conv40
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %shift = getelementptr i8, ptr %hw, i32 -35
  %24 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shift, align 1
  %conv45 = zext i8 %25 to i32
  %shl46.neg = shl nsw i32 -1, %conv45
  %width48 = getelementptr i8, ptr %hw, i32 -34
  %26 = ptrtoint ptr %width48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %width48, align 2
  %conv49 = zext i8 %27 to i32
  %28 = add nuw nsw i32 %conv45, %conv49
  %sub55 = sub nsw i32 32, %28
  %shr = lshr i32 -1, %sub55
  %and56 = and i32 %shr, %shl46.neg
  %shift60 = getelementptr i8, ptr %hw, i32 -30
  %29 = ptrtoint ptr %shift60 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %shift60, align 1
  %conv61 = zext i8 %30 to i32
  %shl62.neg = shl nsw i32 -1, %conv61
  %width66 = getelementptr i8, ptr %hw, i32 -29
  %31 = ptrtoint ptr %width66 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %width66, align 1
  %conv67 = zext i8 %32 to i32
  %33 = add nuw nsw i32 %conv61, %conv67
  %sub73 = sub nsw i32 32, %33
  %shr74 = lshr i32 -1, %sub73
  %and75 = and i32 %shr74, %shl62.neg
  %34 = or i32 %and75, %and56
  %35 = xor i32 %34, -1
  %and78 = and i32 %23, %35
  %36 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %k, align 1
  %conv81 = zext i8 %37 to i32
  %sub82 = sub i32 %best_k.0.lcssa.i, %conv81
  %shl86 = shl i32 %sub82, %conv61
  %38 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %n, align 4
  %conv90 = zext i8 %39 to i32
  %sub91 = sub i32 %best_n.0.lcssa.i, %conv90
  %shl95 = shl i32 %sub91, %conv45
  %or = or i32 %shl95, %shl86
  %or96 = or i32 %or, %and78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %40 = tail call i32 @llvm.bswap.i32(i32 %or96)
  %41 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %common, align 4
  %43 = ptrtoint ptr %reg39 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %reg39, align 4
  %conv104 = zext i16 %44 to i32
  %add.ptr105 = getelementptr i8, ptr %42, i32 %conv104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %40) #4, !srcloc !17
  %45 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %call34) #4
  %lock109 = getelementptr i8, ptr %hw, i32 -40
  %47 = ptrtoint ptr %lock109 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lock109, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %common, i32 noundef %48) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ccu_nk_ops, !1, !"ccu_nk_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_nk.c", i32 151, i32 22}
!2 = !{ptr @__ksymtab_ccu_nk_ops, !3, !"__ksymtab_ccu_nk_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_nk.c", i32 160, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4028734}
!14 = !{i64 2151616086}
!15 = !{i64 2151617322}
!16 = !{i64 2151619479}
!17 = !{i64 4028316}
