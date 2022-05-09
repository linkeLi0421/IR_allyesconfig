; ModuleID = '/llk/IR_all_yes/lib/packing.c_pt.bc'
source_filename = "../lib/packing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+packing\22, \22a\22\09"
module asm "\09.weak\09__crc_packing\09\09\09\09"
module asm "\09.long\09__crc_packing\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_packing:\09\09\09\09\09"
module asm "\09.asciz \09\22packing\22\09\09\09\09\09"
module asm "__kstrtabns_packing:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_packing = external dso_local constant [0 x i8], align 1
@__kstrtabns_packing = external dso_local constant [0 x i8], align 1
@__ksymtab_packing = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @packing to i32), ptr @__kstrtab_packing, ptr @__kstrtabns_packing }, section "___ksymtab+packing", align 4
@__UNIQUE_ID_file106 = internal constant [25 x i8] c"packing.file=lib/packing\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [23 x i8] c"packing.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [59 x i8] c"packing.description=Generic bitfield packing and unpacking\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_packing], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @packing(ptr nocapture noundef %pbuf, ptr nocapture noundef %uval, i32 noundef %startbit, i32 noundef %endbit, i32 noundef %pbuflen, i32 noundef %op, i8 noundef zeroext %quirks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  call void @__sanitizer_cov_trace_cmp4(i32 %startbit, i32 %endbit)
  %cmp = icmp slt i32 %startbit, %endbit
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %startbit, %endbit
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp1 = icmp ugt i32 %add, 64
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp5 = icmp eq i32 %op, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp7 = icmp ne i32 %add, 64
  %or.cond = and i1 %cmp5, %cmp7
  br i1 %or.cond, label %land.lhs.true9, label %if.end13

land.lhs.true9:                                   ; preds = %if.end4
  %0 = ptrtoint ptr %uval to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %uval, align 8
  %conv146 = zext i32 %add to i64
  %.highbits = lshr i64 %1, %conv146
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.highbits)
  %cmp10.not = icmp eq i64 %.highbits, 0
  br i1 %cmp10.not, label %land.lhs.true9.if.end17_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end17

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp14 = icmp eq i32 %op, 1
  br i1 %cmp14, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #2
  %2 = ptrtoint ptr %uval to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %uval, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge, %land.lhs.true9.if.end17_crit_edge
  %cmp14197 = phi i1 [ true, %if.then16 ], [ false, %if.end13.if.end17_crit_edge ], [ false, %land.lhs.true9.if.end17_crit_edge ]
  %div = sdiv i32 %startbit, 8
  %div18 = sdiv i32 %endbit, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div18)
  %cmp19.not198 = icmp slt i32 %div, %div18
  br i1 %cmp19.not198, label %if.end17.cleanup_crit_edge, label %for.body.lr.ph

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end17
  %3 = mul i32 %div, 8
  %rem.decomposed = sub i32 %startbit, %3
  %4 = mul i32 %div18, 8
  %rem28.decomposed = sub i32 %endbit, %4
  %add31.neg = add i32 %endbit, 63
  %conv54 = zext i8 %quirks to i32
  %and55 = and i32 %conv54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool.not = icmp eq i32 %and55, 0
  %and59 = and i32 %conv54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %and87 = and i32 %conv54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br label %for.body

for.body:                                         ; preds = %if.end103.for.body_crit_edge, %for.body.lr.ph
  %box.0199 = phi i32 [ %div, %for.body.lr.ph ], [ %dec, %if.end103.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %box.0199, i32 %div)
  %cmp21 = icmp eq i32 %box.0199, %div
  %storemerge = select i1 %cmp21, i32 %rem.decomposed, i32 7
  call void @__sanitizer_cov_trace_cmp4(i32 %box.0199, i32 %div18)
  %cmp25 = icmp eq i32 %box.0199, %div18
  %storemerge144 = select i1 %cmp25, i32 %rem28.decomposed, i32 0
  %mul = shl i32 %box.0199, 3
  %add34 = sub i32 %mul, %endbit
  %sub35 = add i32 %add34, %storemerge144
  %sh_prom = zext i32 %sub35 to i64
  %shl36.neg = shl nsw i64 -1, %sh_prom
  %5 = add i32 %mul, %storemerge
  %sub39 = sub i32 %add31.neg, %5
  %sh_prom40 = zext i32 %sub39 to i64
  %shr = lshr i64 -1, %sh_prom40
  %and = and i64 %shl36.neg, %shr
  %sh_prom42 = zext i32 %storemerge144 to i64
  %shl43.neg = shl nsw i64 -1, %sh_prom42
  %sub46 = sub nsw i32 63, %storemerge
  %sh_prom47 = zext i32 %sub46 to i64
  %shr48 = lshr i64 -1, %sh_prom47
  %and49 = and i64 %shr48, %shl43.neg
  %conv51 = trunc i64 %and49 to i8
  %6 = xor i32 %box.0199, -1
  %sub53 = add i32 %6, %pbuflen
  %div.i = sdiv i32 %sub53, 4
  %factor.i = shl i32 %div.i, 3
  %sub1.i = sub i32 3, %sub53
  %add.i = add i32 %sub1.i, %factor.i
  %box_addr.0 = select i1 %tobool.not, i32 %sub53, i32 %add.i
  br i1 %tobool60.not, label %for.body.if.end63_crit_edge, label %if.then61

for.body.if.end63_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end63

if.then61:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #2
  %div.i147 = sdiv i32 %box_addr.0, 4
  %mul.neg.i = mul i32 %div.i147, -4
  %sub.i = add i32 %mul.neg.i, %box_addr.0
  %7 = xor i32 %div.i147, -1
  %sub310.i = shl nsw i32 %7, 2
  %div1911.i = add i32 %sub310.i, %pbuflen
  %mul4.i = and i32 %div1911.i, -4
  %add.i148 = add i32 %sub.i, %mul4.i
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %for.body.if.end63_crit_edge
  %box_addr.1 = phi i32 [ %add.i148, %if.then61 ], [ %box_addr.0, %for.body.if.end63_crit_edge ]
  br i1 %cmp14197, label %if.then66, label %if.else81

if.then66:                                        ; preds = %if.end63
  %arrayidx = getelementptr i8, ptr %pbuf, i32 %box_addr.1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %and69145 = and i8 %9, %conv51
  %10 = zext i8 %and69145 to i64
  br i1 %tobool88.not, label %if.then66.if.end75_crit_edge, label %if.then74

if.then66.if.end75_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end75

if.then74:                                        ; preds = %if.then66
  %sub.i149 = sub nsw i32 %storemerge, %storemerge144
  %shr.i = lshr i64 %10, %sh_prom42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i149)
  %cmp11.not.i.i = icmp eq i32 %sub.i149, -1
  br i1 %cmp11.not.i.i, label %if.then74.adjust_for_msb_right_quirk.exit_crit_edge, label %if.then74.for.body.i.i_crit_edge

if.then74.for.body.i.i_crit_edge:                 ; preds = %if.then74
  br label %for.body.i.i

if.then74.adjust_for_msb_right_quirk.exit_crit_edge: ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #2
  br label %adjust_for_msb_right_quirk.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then74.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then74.for.body.i.i_crit_edge ]
  %new_val.012.i.i = phi i64 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then74.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.013.i.i
  %conv.i.i = sext i32 %shl.i.i to i64
  %and.i.i = and i64 %shr.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp1.i.i = icmp ne i64 %and.i.i, 0
  %conv2.i.i = zext i1 %cmp1.i.i to i32
  %sub3.i.i = sub i32 %sub.i149, %i.013.i.i
  %shl4.i.i = shl nuw i32 %conv2.i.i, %sub3.i.i
  %conv5.i.i = zext i32 %shl4.i.i to i64
  %or.i.i = or i64 %new_val.012.i.i, %conv5.i.i
  %inc.i.i = add nuw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %sub.i149, %i.013.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.adjust_for_msb_right_quirk.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.body.i.i

for.body.i.i.adjust_for_msb_right_quirk.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %adjust_for_msb_right_quirk.exit

adjust_for_msb_right_quirk.exit:                  ; preds = %for.body.i.i.adjust_for_msb_right_quirk.exit_crit_edge, %if.then74.adjust_for_msb_right_quirk.exit_crit_edge
  %new_val.0.lcssa.i.i = phi i64 [ 0, %if.then74.adjust_for_msb_right_quirk.exit_crit_edge ], [ %or.i.i, %for.body.i.i.adjust_for_msb_right_quirk.exit_crit_edge ]
  %shl.i = shl i64 %new_val.0.lcssa.i.i, %sh_prom42
  %sub3.i = sub nsw i32 0, %storemerge144
  %.pre = zext i32 %sub3.i to i64
  br label %if.end75

if.end75:                                         ; preds = %adjust_for_msb_right_quirk.exit, %if.then66.if.end75_crit_edge
  %sh_prom76.pre-phi = phi i64 [ %.pre, %adjust_for_msb_right_quirk.exit ], [ %sh_prom42, %if.then66.if.end75_crit_edge ]
  %pval.0 = phi i64 [ %shl.i, %adjust_for_msb_right_quirk.exit ], [ %10, %if.then66.if.end75_crit_edge ]
  %shr77 = lshr i64 %pval.0, %sh_prom76.pre-phi
  %shl79 = shl i64 %shr77, %sh_prom
  %neg = xor i64 %and, -1
  %11 = ptrtoint ptr %uval to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %uval, align 8
  %and80 = and i64 %12, %neg
  %or = or i64 %and80, %shl79
  store i64 %or, ptr %uval, align 8
  br label %if.end103

if.else81:                                        ; preds = %if.end63
  %13 = ptrtoint ptr %uval to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %uval, align 8
  %and83 = and i64 %14, %and
  %shr85 = lshr i64 %and83, %sh_prom
  br i1 %tobool88.not, label %if.else81.if.end90_crit_edge, label %if.then89

if.else81.if.end90_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end90

if.then89:                                        ; preds = %if.else81
  %sub.i150 = sub nsw i32 %storemerge, %storemerge144
  %shr.i152 = lshr i64 %shr85, %sh_prom42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i150)
  %cmp11.not.i.i153 = icmp eq i32 %sub.i150, -1
  br i1 %cmp11.not.i.i153, label %if.then89.adjust_for_msb_right_quirk.exit180_crit_edge, label %if.then89.for.body.i.i167_crit_edge

if.then89.for.body.i.i167_crit_edge:              ; preds = %if.then89
  br label %for.body.i.i167

if.then89.adjust_for_msb_right_quirk.exit180_crit_edge: ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #2
  br label %adjust_for_msb_right_quirk.exit180

for.body.i.i167:                                  ; preds = %for.body.i.i167.for.body.i.i167_crit_edge, %if.then89.for.body.i.i167_crit_edge
  %i.013.i.i154 = phi i32 [ %inc.i.i165, %for.body.i.i167.for.body.i.i167_crit_edge ], [ 0, %if.then89.for.body.i.i167_crit_edge ]
  %new_val.012.i.i155 = phi i64 [ %or.i.i164, %for.body.i.i167.for.body.i.i167_crit_edge ], [ 0, %if.then89.for.body.i.i167_crit_edge ]
  %shl.i.i156 = shl nuw i32 1, %i.013.i.i154
  %conv.i.i157 = sext i32 %shl.i.i156 to i64
  %and.i.i158 = and i64 %shr.i152, %conv.i.i157
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i158)
  %cmp1.i.i159 = icmp ne i64 %and.i.i158, 0
  %conv2.i.i160 = zext i1 %cmp1.i.i159 to i32
  %sub3.i.i161 = sub i32 %sub.i150, %i.013.i.i154
  %shl4.i.i162 = shl nuw i32 %conv2.i.i160, %sub3.i.i161
  %conv5.i.i163 = zext i32 %shl4.i.i162 to i64
  %or.i.i164 = or i64 %new_val.012.i.i155, %conv5.i.i163
  %inc.i.i165 = add nuw i32 %i.013.i.i154, 1
  %exitcond.not.i.i166 = icmp eq i32 %sub.i150, %i.013.i.i154
  br i1 %exitcond.not.i.i166, label %for.body.i.i167.adjust_for_msb_right_quirk.exit180_crit_edge, label %for.body.i.i167.for.body.i.i167_crit_edge

for.body.i.i167.for.body.i.i167_crit_edge:        ; preds = %for.body.i.i167
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.body.i.i167

for.body.i.i167.adjust_for_msb_right_quirk.exit180_crit_edge: ; preds = %for.body.i.i167
  call void @__sanitizer_cov_trace_pc() #2
  br label %adjust_for_msb_right_quirk.exit180

adjust_for_msb_right_quirk.exit180:               ; preds = %for.body.i.i167.adjust_for_msb_right_quirk.exit180_crit_edge, %if.then89.adjust_for_msb_right_quirk.exit180_crit_edge
  %new_val.0.lcssa.i.i168 = phi i64 [ 0, %if.then89.adjust_for_msb_right_quirk.exit180_crit_edge ], [ %or.i.i164, %for.body.i.i167.adjust_for_msb_right_quirk.exit180_crit_edge ]
  %shl.i170 = shl i64 %new_val.0.lcssa.i.i168, %sh_prom42
  %sub3.i171 = sub nsw i32 0, %storemerge144
  %sh_prom6.i173 = zext i32 %sub3.i171 to i64
  %shl7.neg.i174 = shl nsw i64 -1, %sh_prom6.i173
  %sub5.i172.neg = add nsw i32 %storemerge144, 63
  %sub10.i175 = sub nsw i32 %sub5.i172.neg, %sub.i150
  %sh_prom11.i176 = zext i32 %sub10.i175 to i64
  %shr12.i177 = lshr i64 -1, %sh_prom11.i176
  %and.i178 = and i64 %shr12.i177, %shl7.neg.i174
  %conv.i179 = trunc i64 %and.i178 to i8
  br label %if.end90

if.end90:                                         ; preds = %adjust_for_msb_right_quirk.exit180, %if.else81.if.end90_crit_edge
  %sh_prom91.pre-phi = phi i64 [ %sh_prom6.i173, %adjust_for_msb_right_quirk.exit180 ], [ %sh_prom42, %if.else81.if.end90_crit_edge ]
  %box_mask.0 = phi i8 [ %conv.i179, %adjust_for_msb_right_quirk.exit180 ], [ %conv51, %if.else81.if.end90_crit_edge ]
  %pval82.0 = phi i64 [ %shl.i170, %adjust_for_msb_right_quirk.exit180 ], [ %shr85, %if.else81.if.end90_crit_edge ]
  %shl92 = shl i64 %pval82.0, %sh_prom91.pre-phi
  %neg94 = xor i8 %box_mask.0, -1
  %arrayidx95 = getelementptr i8, ptr %pbuf, i32 %box_addr.1
  %15 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx95, align 1
  %and97 = and i8 %16, %neg94
  %17 = trunc i64 %shl92 to i8
  %conv102 = or i8 %and97, %17
  store i8 %conv102, ptr %arrayidx95, align 1
  br label %if.end103

if.end103:                                        ; preds = %if.end90, %if.end75
  %dec = add nsw i32 %box.0199, -1
  %cmp19.not.not = icmp sgt i32 %box.0199, %div18
  br i1 %cmp19.not.not, label %if.end103.for.body_crit_edge, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup

if.end103.for.body_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.body

cleanup:                                          ; preds = %if.end103.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ -34, %land.lhs.true9.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end103.cleanup_crit_edge ]
  ret i32 %retval.0
}

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_packing, !1, !"__ksymtab_packing", i1 false, i1 false}
!1 = !{!"../lib/packing.c", i32 211, i32 1}
!2 = !{ptr @__UNIQUE_ID_file106, !3, !"__UNIQUE_ID_file106", i1 false, i1 false}
!3 = !{!"../lib/packing.c", i32 213, i32 1}
!4 = !{ptr @__UNIQUE_ID_license107, !3, !"__UNIQUE_ID_license107", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description108, !6, !"__UNIQUE_ID_description108", i1 false, i1 false}
!6 = !{!"../lib/packing.c", i32 214, i32 1}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
