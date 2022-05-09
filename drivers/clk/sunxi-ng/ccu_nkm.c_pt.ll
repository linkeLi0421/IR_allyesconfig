; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_nkm.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_nkm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_nkm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_nkm_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_nkm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_nkm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_nkm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_nkm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccu_nkm = type { i32, i32, %struct.ccu_mult_internal, %struct.ccu_mult_internal, %struct.ccu_div_internal, %struct.ccu_mux_internal, i32, %struct.ccu_common }
%struct.ccu_mult_internal = type { i8, i8, i8, i8, i8 }
%struct.ccu_div_internal = type { i8, i8, i32, i32, i32, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@ccu_nkm_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_nkm_enable, ptr @ccu_nkm_disable, ptr @ccu_nkm_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_nkm_recalc_rate, ptr null, ptr @ccu_nkm_determine_rate, ptr @ccu_nkm_set_parent, ptr @ccu_nkm_get_parent, ptr @ccu_nkm_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_nkm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_nkm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_nkm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_nkm_ops to i32), ptr @__kstrtab_ccu_nkm_ops, ptr @__kstrtabns_ccu_nkm_ops }, section "___ksymtab_gpl+ccu_nkm_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"ccu_nkm_ops\00", align 1
@___asan_gen_.2 = private constant [34 x i8] c"../drivers/clk/sunxi-ng/ccu_nkm.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 197, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_nkm_ops, ptr @ccu_nkm_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_nkm_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkm_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -88
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_enable(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_nkm_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -88
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %common, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkm_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -88
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %call1 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %common, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkm_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
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
  %n5 = getelementptr i8, ptr %hw, i32 -80
  %shift = getelementptr i8, ptr %hw, i32 -79
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 1
  %conv6 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv6
  %width = getelementptr i8, ptr %hw, i32 -78
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
  %k11 = getelementptr i8, ptr %hw, i32 -75
  %shift12 = getelementptr i8, ptr %hw, i32 -74
  %12 = ptrtoint ptr %shift12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift12, align 1
  %conv13 = zext i8 %13 to i32
  %shr14 = lshr i32 %5, %conv13
  %width16 = getelementptr i8, ptr %hw, i32 -73
  %14 = ptrtoint ptr %width16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width16, align 1
  %conv17 = zext i8 %15 to i32
  %notmask80 = shl nsw i32 -1, %conv17
  %sub19 = xor i32 %notmask80, -1
  %and20 = and i32 %shr14, %sub19
  %16 = ptrtoint ptr %k11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %k11, align 1
  %conv23 = zext i8 %17 to i32
  %add24 = add i32 %and20, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add24)
  %tobool25.not = icmp eq i32 %add24, 0
  %k.0 = select i1 %tobool25.not, i32 1, i32 %add24
  %m29 = getelementptr i8, ptr %hw, i32 -68
  %18 = ptrtoint ptr %m29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %m29, align 4
  %conv31 = zext i8 %19 to i32
  %shr32 = lshr i32 %5, %conv31
  %width34 = getelementptr i8, ptr %hw, i32 -67
  %20 = ptrtoint ptr %width34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %width34, align 1
  %conv35 = zext i8 %21 to i32
  %notmask81 = shl nsw i32 -1, %conv35
  %sub37 = xor i32 %notmask81, -1
  %and38 = and i32 %shr32, %sub37
  %offset40 = getelementptr i8, ptr %hw, i32 -60
  %22 = ptrtoint ptr %offset40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset40, align 4
  %add41 = add i32 %and38, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add41)
  %tobool42.not = icmp eq i32 %add41, 0
  %m.0 = select i1 %tobool42.not, i32 1, i32 %add41
  %mul = mul i32 %spec.select, %parent_rate
  %mul46 = mul i32 %mul, %k.0
  %div = udiv i32 %mul46, %m.0
  %features = getelementptr i8, ptr %hw, i32 -8
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features, align 4
  %and48 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %entry.if.end52_crit_edge, label %if.then50

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div = getelementptr i8, ptr %hw, i32 -24
  %26 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fixed_post_div, align 4
  %div51 = udiv i32 %div, %27
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %entry.if.end52_crit_edge
  %rate.0 = phi i32 [ %div51, %if.then50 ], [ %div, %entry.if.end52_crit_edge ]
  ret i32 %rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkm_determine_rate(ptr noundef %hw, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -88
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -48
  %call1 = tail call i32 @ccu_mux_helper_determine_rate(ptr noundef %common, ptr noundef %mux, ptr noundef %req, ptr noundef nonnull @ccu_nkm_round_rate, ptr noundef %add.ptr.i) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkm_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -48
  %call1 = tail call i32 @ccu_mux_helper_set_parent(ptr noundef %common, ptr noundef %mux, i8 noundef zeroext %index) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ccu_nkm_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -20
  %mux = getelementptr i8, ptr %hw, i32 -48
  %call1 = tail call zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %common, ptr noundef %mux) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkm_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
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
  %min = getelementptr i8, ptr %hw, i32 -77
  %4 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %narrow = select i1 %tobool1.not, i8 1, i8 %5
  %conv. = zext i8 %narrow to i32
  %max = getelementptr i8, ptr %hw, i32 -76
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
  %width = getelementptr i8, ptr %hw, i32 -78
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 2
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv8
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false6, %if.end.cond.end9_crit_edge
  %cond10 = phi i32 [ %shl, %cond.false6 ], [ %conv3, %if.end.cond.end9_crit_edge ]
  %min11 = getelementptr i8, ptr %hw, i32 -72
  %10 = ptrtoint ptr %min11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %min11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  %narrow188 = select i1 %tobool13.not, i8 1, i8 %11
  %conv12. = zext i8 %narrow188 to i32
  %max19 = getelementptr i8, ptr %hw, i32 -71
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
  %width25 = getelementptr i8, ptr %hw, i32 -73
  %14 = ptrtoint ptr %width25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width25, align 1
  %conv26 = zext i8 %15 to i32
  %shl27 = shl nuw i32 1, %conv26
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false23, %cond.end9.cond.end28_crit_edge
  %cond29 = phi i32 [ %shl27, %cond.false23 ], [ %conv20, %cond.end9.cond.end28_crit_edge ]
  %max30 = getelementptr i8, ptr %hw, i32 -64
  %16 = ptrtoint ptr %max30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool31.not = icmp eq i32 %17, 0
  br i1 %tobool31.not, label %cond.false33, label %cond.end28.cond.end38_crit_edge

cond.end28.cond.end38_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end38

cond.false33:                                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #6
  %width35 = getelementptr i8, ptr %hw, i32 -67
  %18 = ptrtoint ptr %width35 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %width35, align 1
  %conv36 = zext i8 %19 to i32
  %shl37 = shl nuw i32 1, %conv36
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false33, %cond.end28.cond.end38_crit_edge
  %cond39 = phi i32 [ %shl37, %cond.false33 ], [ %17, %cond.end28.cond.end38_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29, i32 %conv12.)
  %cmp.not61.i = icmp ult i32 %cond29, %conv12.
  br i1 %cmp.not61.i, label %cond.end38.ccu_nkm_find_best.exit_crit_edge, label %for.body.lr.ph.i

cond.end38.ccu_nkm_find_best.exit_crit_edge:      ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nkm_find_best.exit

for.body.lr.ph.i:                                 ; preds = %cond.end38
  call void @__sanitizer_cov_trace_cmp4(i32 %cond10, i32 %conv.)
  %cmp2.not50.i = icmp ult i32 %cond10, %conv.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond39)
  %cmp5.not40.i = icmp eq i32 %cond39, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc16.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %_k.066.i = phi i32 [ %conv12., %for.body.lr.ph.i ], [ %inc17.i, %for.inc16.i.for.body.i_crit_edge ]
  %best_m.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_m.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  %best_k.064.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_k.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  %best_n.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_n.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  %best_rate.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  br i1 %cmp2.not50.i, label %for.body.i.for.inc16.i_crit_edge, label %for.body3.lr.ph.i

for.body.i.for.inc16.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc16.i

for.body3.lr.ph.i:                                ; preds = %for.body.i
  %mul.i = mul i32 %_k.066.i, %parent_rate
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc13.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %_n.055.i = phi i32 [ %conv., %for.body3.lr.ph.i ], [ %inc14.i, %for.inc13.i.for.body3.i_crit_edge ]
  %best_m.154.i = phi i32 [ %best_m.065.i, %for.body3.lr.ph.i ], [ %best_m.2.lcssa.i, %for.inc13.i.for.body3.i_crit_edge ]
  %best_k.153.i = phi i32 [ %best_k.064.i, %for.body3.lr.ph.i ], [ %best_k.2.lcssa.i, %for.inc13.i.for.body3.i_crit_edge ]
  %best_n.152.i = phi i32 [ %best_n.063.i, %for.body3.lr.ph.i ], [ %best_n.2.lcssa.i, %for.inc13.i.for.body3.i_crit_edge ]
  %best_rate.151.i = phi i32 [ %best_rate.062.i, %for.body3.lr.ph.i ], [ %best_rate.2.lcssa.i, %for.inc13.i.for.body3.i_crit_edge ]
  br i1 %cmp5.not40.i, label %for.body3.i.for.inc13.i_crit_edge, label %for.body6.lr.ph.i

for.body3.i.for.inc13.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13.i

for.body6.lr.ph.i:                                ; preds = %for.body3.i
  %mul7.i = mul i32 %mul.i, %_n.055.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %cleanup.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %_m.045.i = phi i32 [ 1, %for.body6.lr.ph.i ], [ %inc.i, %cleanup.i.for.body6.i_crit_edge ]
  %best_m.244.i = phi i32 [ %best_m.154.i, %for.body6.lr.ph.i ], [ %best_m.4.i, %cleanup.i.for.body6.i_crit_edge ]
  %best_k.243.i = phi i32 [ %best_k.153.i, %for.body6.lr.ph.i ], [ %best_k.4.i, %cleanup.i.for.body6.i_crit_edge ]
  %best_n.242.i = phi i32 [ %best_n.152.i, %for.body6.lr.ph.i ], [ %best_n.4.i, %cleanup.i.for.body6.i_crit_edge ]
  %best_rate.241.i = phi i32 [ %best_rate.151.i, %for.body6.lr.ph.i ], [ %best_rate.4.i, %cleanup.i.for.body6.i_crit_edge ]
  %div.i = udiv i32 %mul7.i, %_m.045.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %div.i)
  %cmp8.i = icmp ult i32 %rate.addr.0, %div.i
  br i1 %cmp8.i, label %for.body6.i.cleanup.i_crit_edge, label %if.end.i

for.body6.i.cleanup.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body6.i
  %sub.i = sub i32 %rate.addr.0, %div.i
  %sub9.i = sub i32 %rate.addr.0, %best_rate.241.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub9.i)
  %cmp10.i = icmp ult i32 %sub.i, %sub9.i
  br i1 %cmp10.i, label %if.then11.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then11.i, %if.end.i.cleanup.i_crit_edge, %for.body6.i.cleanup.i_crit_edge
  %best_rate.4.i = phi i32 [ %best_rate.241.i, %for.body6.i.cleanup.i_crit_edge ], [ %div.i, %if.then11.i ], [ %best_rate.241.i, %if.end.i.cleanup.i_crit_edge ]
  %best_n.4.i = phi i32 [ %best_n.242.i, %for.body6.i.cleanup.i_crit_edge ], [ %_n.055.i, %if.then11.i ], [ %best_n.242.i, %if.end.i.cleanup.i_crit_edge ]
  %best_k.4.i = phi i32 [ %best_k.243.i, %for.body6.i.cleanup.i_crit_edge ], [ %_k.066.i, %if.then11.i ], [ %best_k.243.i, %if.end.i.cleanup.i_crit_edge ]
  %best_m.4.i = phi i32 [ %best_m.244.i, %for.body6.i.cleanup.i_crit_edge ], [ %_m.045.i, %if.then11.i ], [ %best_m.244.i, %if.end.i.cleanup.i_crit_edge ]
  %inc.i = add i32 %_m.045.i, 1
  %cmp5.not.i = icmp ugt i32 %inc.i, %cond39
  br i1 %cmp5.not.i, label %cleanup.i.for.inc13.i_crit_edge, label %cleanup.i.for.body6.i_crit_edge

cleanup.i.for.body6.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.i

cleanup.i.for.inc13.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %cleanup.i.for.inc13.i_crit_edge, %for.body3.i.for.inc13.i_crit_edge
  %best_rate.2.lcssa.i = phi i32 [ %best_rate.151.i, %for.body3.i.for.inc13.i_crit_edge ], [ %best_rate.4.i, %cleanup.i.for.inc13.i_crit_edge ]
  %best_n.2.lcssa.i = phi i32 [ %best_n.152.i, %for.body3.i.for.inc13.i_crit_edge ], [ %best_n.4.i, %cleanup.i.for.inc13.i_crit_edge ]
  %best_k.2.lcssa.i = phi i32 [ %best_k.153.i, %for.body3.i.for.inc13.i_crit_edge ], [ %best_k.4.i, %cleanup.i.for.inc13.i_crit_edge ]
  %best_m.2.lcssa.i = phi i32 [ %best_m.154.i, %for.body3.i.for.inc13.i_crit_edge ], [ %best_m.4.i, %cleanup.i.for.inc13.i_crit_edge ]
  %inc14.i = add i32 %_n.055.i, 1
  %cmp2.not.i = icmp ugt i32 %inc14.i, %cond10
  br i1 %cmp2.not.i, label %for.inc13.i.for.inc16.i_crit_edge, label %for.inc13.i.for.body3.i_crit_edge

for.inc13.i.for.body3.i_crit_edge:                ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

for.inc13.i.for.inc16.i_crit_edge:                ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %for.inc13.i.for.inc16.i_crit_edge, %for.body.i.for.inc16.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.062.i, %for.body.i.for.inc16.i_crit_edge ], [ %best_rate.2.lcssa.i, %for.inc13.i.for.inc16.i_crit_edge ]
  %best_n.1.lcssa.i = phi i32 [ %best_n.063.i, %for.body.i.for.inc16.i_crit_edge ], [ %best_n.2.lcssa.i, %for.inc13.i.for.inc16.i_crit_edge ]
  %best_k.1.lcssa.i = phi i32 [ %best_k.064.i, %for.body.i.for.inc16.i_crit_edge ], [ %best_k.2.lcssa.i, %for.inc13.i.for.inc16.i_crit_edge ]
  %best_m.1.lcssa.i = phi i32 [ %best_m.065.i, %for.body.i.for.inc16.i_crit_edge ], [ %best_m.2.lcssa.i, %for.inc13.i.for.inc16.i_crit_edge ]
  %inc17.i = add i32 %_k.066.i, 1
  %cmp.not.i = icmp ugt i32 %inc17.i, %cond29
  br i1 %cmp.not.i, label %for.inc16.i.ccu_nkm_find_best.exit_crit_edge, label %for.inc16.i.for.body.i_crit_edge

for.inc16.i.for.body.i_crit_edge:                 ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc16.i.ccu_nkm_find_best.exit_crit_edge:     ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nkm_find_best.exit

ccu_nkm_find_best.exit:                           ; preds = %for.inc16.i.ccu_nkm_find_best.exit_crit_edge, %cond.end38.ccu_nkm_find_best.exit_crit_edge
  %best_n.0.lcssa.i = phi i32 [ 0, %cond.end38.ccu_nkm_find_best.exit_crit_edge ], [ %best_n.1.lcssa.i, %for.inc16.i.ccu_nkm_find_best.exit_crit_edge ]
  %best_k.0.lcssa.i = phi i32 [ 0, %cond.end38.ccu_nkm_find_best.exit_crit_edge ], [ %best_k.1.lcssa.i, %for.inc16.i.ccu_nkm_find_best.exit_crit_edge ]
  %best_m.0.lcssa.i = phi i32 [ 0, %cond.end38.ccu_nkm_find_best.exit_crit_edge ], [ %best_m.1.lcssa.i, %for.inc16.i.ccu_nkm_find_best.exit_crit_edge ]
  %common = getelementptr i8, ptr %hw, i32 -20
  %n = getelementptr i8, ptr %hw, i32 -80
  %k = getelementptr i8, ptr %hw, i32 -75
  %m = getelementptr i8, ptr %hw, i32 -68
  %lock = getelementptr i8, ptr %hw, i32 -4
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock, align 4
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #4
  %22 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %common, align 4
  %reg49 = getelementptr i8, ptr %hw, i32 -16
  %24 = ptrtoint ptr %reg49 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %reg49, align 4
  %conv50 = zext i16 %25 to i32
  %add.ptr = getelementptr i8, ptr %23, i32 %conv50
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !13
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %shift = getelementptr i8, ptr %hw, i32 -79
  %28 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %shift, align 1
  %conv55 = zext i8 %29 to i32
  %shl56.neg = shl nsw i32 -1, %conv55
  %width58 = getelementptr i8, ptr %hw, i32 -78
  %30 = ptrtoint ptr %width58 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %width58, align 2
  %conv59 = zext i8 %31 to i32
  %32 = add nuw nsw i32 %conv55, %conv59
  %sub65 = sub nsw i32 32, %32
  %shr = lshr i32 -1, %sub65
  %and66 = and i32 %shr, %shl56.neg
  %shift70 = getelementptr i8, ptr %hw, i32 -74
  %33 = ptrtoint ptr %shift70 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %shift70, align 1
  %conv71 = zext i8 %34 to i32
  %shl72.neg = shl nsw i32 -1, %conv71
  %width76 = getelementptr i8, ptr %hw, i32 -73
  %35 = ptrtoint ptr %width76 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %width76, align 1
  %conv77 = zext i8 %36 to i32
  %37 = add nuw nsw i32 %conv71, %conv77
  %sub83 = sub nsw i32 32, %37
  %shr84 = lshr i32 -1, %sub83
  %and85 = and i32 %shr84, %shl72.neg
  %38 = or i32 %and85, %and66
  %39 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %m, align 4
  %conv91 = zext i8 %40 to i32
  %shl92.neg = shl nsw i32 -1, %conv91
  %width96 = getelementptr i8, ptr %hw, i32 -67
  %41 = ptrtoint ptr %width96 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %width96, align 1
  %conv97 = zext i8 %42 to i32
  %43 = add nuw nsw i32 %conv91, %conv97
  %sub103 = sub nsw i32 32, %43
  %shr104 = lshr i32 -1, %sub103
  %and105 = and i32 %shr104, %shl92.neg
  %44 = or i32 %38, %and105
  %45 = xor i32 %44, -1
  %and108 = and i32 %27, %45
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %n, align 4
  %conv111 = zext i8 %47 to i32
  %sub112 = sub i32 %best_n.0.lcssa.i, %conv111
  %shl116 = shl i32 %sub112, %conv55
  %48 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %k, align 1
  %conv120 = zext i8 %49 to i32
  %sub121 = sub i32 %best_k.0.lcssa.i, %conv120
  %shl125 = shl i32 %sub121, %conv71
  %offset129 = getelementptr i8, ptr %hw, i32 -60
  %50 = ptrtoint ptr %offset129 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset129, align 4
  %sub130 = sub i32 %best_m.0.lcssa.i, %51
  %shl134 = shl i32 %sub130, %conv91
  %or = or i32 %shl125, %shl116
  %or126 = or i32 %or, %shl134
  %or135 = or i32 %or126, %and108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %52 = tail call i32 @llvm.bswap.i32(i32 %or135)
  %53 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %common, align 4
  %55 = ptrtoint ptr %reg49 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %reg49, align 4
  %conv143 = zext i16 %56 to i32
  %add.ptr144 = getelementptr i8, ptr %54, i32 %conv143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %52) #4, !srcloc !17
  %57 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %call44) #4
  %lock148 = getelementptr i8, ptr %hw, i32 -84
  %59 = ptrtoint ptr %lock148 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lock148, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %common, i32 noundef %60) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_nkm_round_rate(ptr nocapture noundef readnone %mux, ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %parent_rate, i32 noundef %rate, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %min = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %min, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %narrow = select i1 %tobool.not, i8 1, i8 %1
  %conv. = zext i8 %narrow to i32
  %max = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max, align 4
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %cond.false5, label %entry.cond.end8_crit_edge

entry.cond.end8_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end8

cond.false5:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %width = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %width, align 2
  %conv7 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv7
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false5, %entry.cond.end8_crit_edge
  %cond9 = phi i32 [ %shl, %cond.false5 ], [ %conv2, %entry.cond.end8_crit_edge ]
  %min10 = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %min10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %min10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  %narrow68 = select i1 %tobool12.not, i8 1, i8 %7
  %conv11. = zext i8 %narrow68 to i32
  %max18 = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %max18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max18, align 1
  %conv19 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not = icmp eq i8 %9, 0
  br i1 %tobool20.not, label %cond.false22, label %cond.end8.cond.end27_crit_edge

cond.end8.cond.end27_crit_edge:                   ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end27

cond.false22:                                     ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #6
  %width24 = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %width24 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width24, align 1
  %conv25 = zext i8 %11 to i32
  %shl26 = shl nuw i32 1, %conv25
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false22, %cond.end8.cond.end27_crit_edge
  %cond28 = phi i32 [ %shl26, %cond.false22 ], [ %conv19, %cond.end8.cond.end27_crit_edge ]
  %max29 = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %max29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool30.not = icmp eq i32 %13, 0
  br i1 %tobool30.not, label %cond.false32, label %cond.end27.cond.end37_crit_edge

cond.end27.cond.end37_crit_edge:                  ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end37

cond.false32:                                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #6
  %width34 = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %width34 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width34, align 1
  %conv35 = zext i8 %15 to i32
  %shl36 = shl nuw i32 1, %conv35
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false32, %cond.end27.cond.end37_crit_edge
  %cond38 = phi i32 [ %shl36, %cond.false32 ], [ %13, %cond.end27.cond.end37_crit_edge ]
  %features = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %cond.end37.if.end_crit_edge, label %if.then

cond.end37.if.end_crit_edge:                      ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 6
  %18 = ptrtoint ptr %fixed_post_div to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fixed_post_div, align 4
  %mul = mul i32 %19, %rate
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end37.if.end_crit_edge
  %rate.addr.0 = phi i32 [ %mul, %if.then ], [ %rate, %cond.end37.if.end_crit_edge ]
  %20 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond28, i32 %conv11.)
  %cmp.not61.i = icmp ult i32 %cond28, %conv11.
  br i1 %cmp.not61.i, label %if.end.ccu_nkm_find_best.exit_crit_edge, label %for.body.lr.ph.i

if.end.ccu_nkm_find_best.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nkm_find_best.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %cond9, i32 %conv.)
  %cmp2.not50.i = icmp ult i32 %cond9, %conv.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond38)
  %cmp5.not40.i = icmp eq i32 %cond38, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc16.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %_k.066.i = phi i32 [ %conv11., %for.body.lr.ph.i ], [ %inc17.i, %for.inc16.i.for.body.i_crit_edge ]
  %best_m.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_m.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  %best_k.064.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_k.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  %best_n.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_n.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  %best_rate.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_rate.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  br i1 %cmp2.not50.i, label %for.body.i.for.inc16.i_crit_edge, label %for.body3.lr.ph.i

for.body.i.for.inc16.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc16.i

for.body3.lr.ph.i:                                ; preds = %for.body.i
  %mul.i = mul i32 %_k.066.i, %21
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc13.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %_n.055.i = phi i32 [ %conv., %for.body3.lr.ph.i ], [ %inc14.i, %for.inc13.i.for.body3.i_crit_edge ]
  %best_m.154.i = phi i32 [ %best_m.065.i, %for.body3.lr.ph.i ], [ %best_m.2.lcssa.i, %for.inc13.i.for.body3.i_crit_edge ]
  %best_k.153.i = phi i32 [ %best_k.064.i, %for.body3.lr.ph.i ], [ %best_k.2.lcssa.i, %for.inc13.i.for.body3.i_crit_edge ]
  %best_n.152.i = phi i32 [ %best_n.063.i, %for.body3.lr.ph.i ], [ %best_n.2.lcssa.i, %for.inc13.i.for.body3.i_crit_edge ]
  %best_rate.151.i = phi i32 [ %best_rate.062.i, %for.body3.lr.ph.i ], [ %best_rate.2.lcssa.i, %for.inc13.i.for.body3.i_crit_edge ]
  br i1 %cmp5.not40.i, label %for.body3.i.for.inc13.i_crit_edge, label %for.body6.lr.ph.i

for.body3.i.for.inc13.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13.i

for.body6.lr.ph.i:                                ; preds = %for.body3.i
  %mul7.i = mul i32 %mul.i, %_n.055.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %cleanup.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %_m.045.i = phi i32 [ 1, %for.body6.lr.ph.i ], [ %inc.i, %cleanup.i.for.body6.i_crit_edge ]
  %best_m.244.i = phi i32 [ %best_m.154.i, %for.body6.lr.ph.i ], [ %best_m.4.i, %cleanup.i.for.body6.i_crit_edge ]
  %best_k.243.i = phi i32 [ %best_k.153.i, %for.body6.lr.ph.i ], [ %best_k.4.i, %cleanup.i.for.body6.i_crit_edge ]
  %best_n.242.i = phi i32 [ %best_n.152.i, %for.body6.lr.ph.i ], [ %best_n.4.i, %cleanup.i.for.body6.i_crit_edge ]
  %best_rate.241.i = phi i32 [ %best_rate.151.i, %for.body6.lr.ph.i ], [ %best_rate.4.i, %cleanup.i.for.body6.i_crit_edge ]
  %div.i = udiv i32 %mul7.i, %_m.045.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %div.i)
  %cmp8.i = icmp ult i32 %rate.addr.0, %div.i
  br i1 %cmp8.i, label %for.body6.i.cleanup.i_crit_edge, label %if.end.i

for.body6.i.cleanup.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body6.i
  %sub.i = sub i32 %rate.addr.0, %div.i
  %sub9.i = sub i32 %rate.addr.0, %best_rate.241.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub9.i)
  %cmp10.i = icmp ult i32 %sub.i, %sub9.i
  br i1 %cmp10.i, label %if.then11.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then11.i, %if.end.i.cleanup.i_crit_edge, %for.body6.i.cleanup.i_crit_edge
  %best_rate.4.i = phi i32 [ %best_rate.241.i, %for.body6.i.cleanup.i_crit_edge ], [ %div.i, %if.then11.i ], [ %best_rate.241.i, %if.end.i.cleanup.i_crit_edge ]
  %best_n.4.i = phi i32 [ %best_n.242.i, %for.body6.i.cleanup.i_crit_edge ], [ %_n.055.i, %if.then11.i ], [ %best_n.242.i, %if.end.i.cleanup.i_crit_edge ]
  %best_k.4.i = phi i32 [ %best_k.243.i, %for.body6.i.cleanup.i_crit_edge ], [ %_k.066.i, %if.then11.i ], [ %best_k.243.i, %if.end.i.cleanup.i_crit_edge ]
  %best_m.4.i = phi i32 [ %best_m.244.i, %for.body6.i.cleanup.i_crit_edge ], [ %_m.045.i, %if.then11.i ], [ %best_m.244.i, %if.end.i.cleanup.i_crit_edge ]
  %inc.i = add i32 %_m.045.i, 1
  %cmp5.not.i = icmp ugt i32 %inc.i, %cond38
  br i1 %cmp5.not.i, label %cleanup.i.for.inc13.i_crit_edge, label %cleanup.i.for.body6.i_crit_edge

cleanup.i.for.body6.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.i

cleanup.i.for.inc13.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %cleanup.i.for.inc13.i_crit_edge, %for.body3.i.for.inc13.i_crit_edge
  %best_rate.2.lcssa.i = phi i32 [ %best_rate.151.i, %for.body3.i.for.inc13.i_crit_edge ], [ %best_rate.4.i, %cleanup.i.for.inc13.i_crit_edge ]
  %best_n.2.lcssa.i = phi i32 [ %best_n.152.i, %for.body3.i.for.inc13.i_crit_edge ], [ %best_n.4.i, %cleanup.i.for.inc13.i_crit_edge ]
  %best_k.2.lcssa.i = phi i32 [ %best_k.153.i, %for.body3.i.for.inc13.i_crit_edge ], [ %best_k.4.i, %cleanup.i.for.inc13.i_crit_edge ]
  %best_m.2.lcssa.i = phi i32 [ %best_m.154.i, %for.body3.i.for.inc13.i_crit_edge ], [ %best_m.4.i, %cleanup.i.for.inc13.i_crit_edge ]
  %inc14.i = add i32 %_n.055.i, 1
  %cmp2.not.i = icmp ugt i32 %inc14.i, %cond9
  br i1 %cmp2.not.i, label %for.inc13.i.for.inc16.i_crit_edge, label %for.inc13.i.for.body3.i_crit_edge

for.inc13.i.for.body3.i_crit_edge:                ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

for.inc13.i.for.inc16.i_crit_edge:                ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %for.inc13.i.for.inc16.i_crit_edge, %for.body.i.for.inc16.i_crit_edge
  %best_rate.1.lcssa.i = phi i32 [ %best_rate.062.i, %for.body.i.for.inc16.i_crit_edge ], [ %best_rate.2.lcssa.i, %for.inc13.i.for.inc16.i_crit_edge ]
  %best_n.1.lcssa.i = phi i32 [ %best_n.063.i, %for.body.i.for.inc16.i_crit_edge ], [ %best_n.2.lcssa.i, %for.inc13.i.for.inc16.i_crit_edge ]
  %best_k.1.lcssa.i = phi i32 [ %best_k.064.i, %for.body.i.for.inc16.i_crit_edge ], [ %best_k.2.lcssa.i, %for.inc13.i.for.inc16.i_crit_edge ]
  %best_m.1.lcssa.i = phi i32 [ %best_m.065.i, %for.body.i.for.inc16.i_crit_edge ], [ %best_m.2.lcssa.i, %for.inc13.i.for.inc16.i_crit_edge ]
  %inc17.i = add i32 %_k.066.i, 1
  %cmp.not.i = icmp ugt i32 %inc17.i, %cond28
  br i1 %cmp.not.i, label %for.inc16.i.ccu_nkm_find_best.exit_crit_edge, label %for.inc16.i.for.body.i_crit_edge

for.inc16.i.for.body.i_crit_edge:                 ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc16.i.ccu_nkm_find_best.exit_crit_edge:     ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ccu_nkm_find_best.exit

ccu_nkm_find_best.exit:                           ; preds = %for.inc16.i.ccu_nkm_find_best.exit_crit_edge, %if.end.ccu_nkm_find_best.exit_crit_edge
  %best_n.0.lcssa.i = phi i32 [ 0, %if.end.ccu_nkm_find_best.exit_crit_edge ], [ %best_n.1.lcssa.i, %for.inc16.i.ccu_nkm_find_best.exit_crit_edge ]
  %best_k.0.lcssa.i = phi i32 [ 0, %if.end.ccu_nkm_find_best.exit_crit_edge ], [ %best_k.1.lcssa.i, %for.inc16.i.ccu_nkm_find_best.exit_crit_edge ]
  %best_m.0.lcssa.i = phi i32 [ 0, %if.end.ccu_nkm_find_best.exit_crit_edge ], [ %best_m.1.lcssa.i, %for.inc16.i.ccu_nkm_find_best.exit_crit_edge ]
  %mul41 = mul i32 %best_n.0.lcssa.i, %21
  %mul43 = mul i32 %mul41, %best_k.0.lcssa.i
  %div = udiv i32 %mul43, %best_m.0.lcssa.i
  br i1 %tobool39.not, label %ccu_nkm_find_best.exit.if.end52_crit_edge, label %if.then49

ccu_nkm_find_best.exit.if.end52_crit_edge:        ; preds = %ccu_nkm_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then49:                                        ; preds = %ccu_nkm_find_best.exit
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_post_div50 = getelementptr inbounds %struct.ccu_nkm, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %fixed_post_div50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fixed_post_div50, align 4
  %div51 = udiv i32 %div, %23
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %ccu_nkm_find_best.exit.if.end52_crit_edge
  %rate.addr.1 = phi i32 [ %div51, %if.then49 ], [ %div, %ccu_nkm_find_best.exit.if.end52_crit_edge ]
  ret i32 %rate.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ccu_nkm_ops, !1, !"ccu_nkm_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_nkm.c", i32 197, i32 22}
!2 = !{ptr @__ksymtab_ccu_nkm_ops, !3, !"__ksymtab_ccu_nkm_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_nkm.c", i32 209, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4030064}
!14 = !{i64 2151618130}
!15 = !{i64 2151619376}
!16 = !{i64 2151622571}
!17 = !{i64 4029646}
