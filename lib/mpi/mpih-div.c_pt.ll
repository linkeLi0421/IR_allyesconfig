; ModuleID = '/llk/IR_all_yes/lib/mpi/mpih-div.c_pt.bc'
source_filename = "../lib/mpi/mpih-div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpihelp_mod_1(ptr nocapture noundef readonly %dividend_ptr, i32 noundef %dividend_size, i32 noundef %divisor_limb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend_size)
  %tobool.not = icmp eq i32 %dividend_size, 0
  br i1 %tobool.not, label %entry.cleanup428_crit_edge, label %if.end

entry.cleanup428_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup428

if.end:                                           ; preds = %entry
  %mul = mul i32 %dividend_size, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul)
  %cmp = icmp sgt i32 %mul, 100
  %0 = tail call i32 @llvm.ctlz.i32(i32 %divisor_limb, i1 false) #5, !range !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool2.not = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.else221

if.then1:                                         ; preds = %if.end
  br i1 %tobool2.not, label %if.else114, label %if.then3

if.then3:                                         ; preds = %if.then1
  %shl = shl i32 %divisor_limb, %0
  %shl4.mask = and i32 %shl, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl4.mask)
  %tobool5.not = icmp eq i32 %shl4.mask, 0
  br i1 %tobool5.not, label %if.then3.if.end43_crit_edge, label %do.body

if.then3.if.end43_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.body:                                          ; preds = %if.then3
  %shr = lshr i32 %shl, 16
  %and = and i32 %shl, 65535
  %sub = sub i32 0, %shl
  %sub.frozen = freeze i32 %sub
  %shr.frozen = freeze i32 %shr
  %div = udiv i32 %sub.frozen, %shr.frozen
  %1 = mul i32 %div, %shr.frozen
  %rem.decomposed = sub i32 %sub.frozen, %1
  %mul8 = mul i32 %div, %and
  %mul9 = shl nuw i32 %rem.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9, i32 %mul8)
  %cmp10 = icmp ult i32 %mul9, %mul8
  br i1 %cmp10, label %if.then11, label %do.body.if.end20_crit_edge

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then11:                                        ; preds = %do.body
  %dec = add i32 %div, -1
  %add = add i32 %mul9, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl)
  %cmp12.not = icmp uge i32 %add, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul8)
  %cmp14 = icmp ult i32 %add, %mul8
  %or.cond = select i1 %cmp12.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then15, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %dec16 = add i32 %div, -2
  %add17 = add i32 %add, %shl
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then11.if.end20_crit_edge, %do.body.if.end20_crit_edge
  %__q1.0 = phi i32 [ %dec16, %if.then15 ], [ %dec, %if.then11.if.end20_crit_edge ], [ %div, %do.body.if.end20_crit_edge ]
  %__r1.0 = phi i32 [ %add17, %if.then15 ], [ %add, %if.then11.if.end20_crit_edge ], [ %mul9, %do.body.if.end20_crit_edge ]
  %sub21 = sub i32 %__r1.0, %mul8
  %sub21.frozen = freeze i32 %sub21
  %shr.frozen822 = freeze i32 %shr
  %div23 = udiv i32 %sub21.frozen, %shr.frozen822
  %2 = mul i32 %div23, %shr.frozen822
  %rem22.decomposed = sub i32 %sub21.frozen, %2
  %mul24 = mul i32 %div23, %and
  %mul25 = shl nuw i32 %rem22.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul25, i32 %mul24)
  %cmp27 = icmp ult i32 %mul25, %mul24
  br i1 %cmp27, label %if.then28, label %if.end20.if.end39_crit_edge

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %add30 = add i32 %mul25, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %shl)
  %cmp31.not = icmp uge i32 %add30, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %mul24)
  %cmp33 = icmp ult i32 %add30, %mul24
  %or.cond768 = select i1 %cmp31.not, i1 %cmp33, i1 false
  %spec.select779.v = select i1 %or.cond768, i32 -2, i32 -1
  %spec.select779 = add i32 %spec.select779.v, %div23
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.end20.if.end39_crit_edge
  %__q0.0 = phi i32 [ %div23, %if.end20.if.end39_crit_edge ], [ %spec.select779, %if.then28 ]
  %mul41 = shl i32 %__q1.0, 16
  %or42 = or i32 %__q0.0, %mul41
  br label %if.end43

if.end43:                                         ; preds = %if.end39, %if.then3.if.end43_crit_edge
  %divisor_limb_inverted.0 = phi i32 [ %or42, %if.end39 ], [ -1, %if.then3.if.end43_crit_edge ]
  %sub44 = add i32 %dividend_size, -1
  %arrayidx = getelementptr i32, ptr %dividend_ptr, i32 %sub44
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %sub45 = sub nuw nsw i32 32, %0
  %shr46 = lshr i32 %4, %sub45
  %sub47 = add i32 %dividend_size, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub47)
  %cmp48800 = icmp sgt i32 %sub47, -1
  br i1 %cmp48800, label %if.end43.for.body_crit_edge, label %if.end43.do.body80_crit_edge

if.end43.do.body80_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body80

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %if.end43.for.body_crit_edge
  %i.0803 = phi i32 [ %dec79, %if.end71.for.body_crit_edge ], [ %sub47, %if.end43.for.body_crit_edge ]
  %n1.0802 = phi i32 [ %6, %if.end71.for.body_crit_edge ], [ %4, %if.end43.for.body_crit_edge ]
  %r.0801 = phi i32 [ %spec.select, %if.end71.for.body_crit_edge ], [ %shr46, %if.end43.for.body_crit_edge ]
  %arrayidx49 = getelementptr i32, ptr %dividend_ptr, i32 %i.0803
  %5 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx49, align 4
  %7 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %r.0801, i32 %divisor_limb_inverted.0) #8, !srcloc !10
  %asmresult = extractvalue { i32, i32 } %7, 0
  %add52 = add i32 %asmresult, %r.0801
  %8 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %add52, i32 %shl) #8, !srcloc !11
  %asmresult53 = extractvalue { i32, i32 } %8, 0
  %asmresult54 = extractvalue { i32, i32 } %8, 1
  %shl55 = shl i32 %n1.0802, %0
  %shr57 = lshr i32 %6, %sub45
  %or58 = or i32 %shr57, %shl55
  %9 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %r.0801, i32 %asmresult53, i32 %or58, i32 %asmresult54) #8, !srcloc !12
  %asmresult59 = extractvalue { i32, i32 } %9, 0
  %asmresult60 = extractvalue { i32, i32 } %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult59)
  %tobool61.not = icmp eq i32 %asmresult59, 0
  br i1 %tobool61.not, label %for.body.if.end71_crit_edge, label %if.then62

for.body.if.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then62:                                        ; preds = %for.body
  %10 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult59, i32 0, i32 %asmresult60, i32 %shl) #8, !srcloc !13
  %asmresult63 = extractvalue { i32, i32 } %10, 0
  %asmresult64 = extractvalue { i32, i32 } %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult63)
  %tobool65.not = icmp eq i32 %asmresult63, 0
  br i1 %tobool65.not, label %if.then62.if.end71_crit_edge, label %if.then66

if.then62.if.end71_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult63, i32 0, i32 %asmresult64, i32 %shl) #8, !srcloc !14
  %asmresult68 = extractvalue { i32, i32 } %11, 1
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.then62.if.end71_crit_edge, %for.body.if.end71_crit_edge
  %_r.0 = phi i32 [ %asmresult68, %if.then66 ], [ %asmresult64, %if.then62.if.end71_crit_edge ], [ %asmresult60, %for.body.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %_r.0, i32 %shl)
  %cmp72.not = icmp ult i32 %_r.0, %shl
  %sub74 = select i1 %cmp72.not, i32 0, i32 %shl
  %spec.select = sub i32 %_r.0, %sub74
  %dec79 = add nsw i32 %i.0803, -1
  %cmp48 = icmp sgt i32 %i.0803, 0
  br i1 %cmp48, label %if.end71.for.body_crit_edge, label %if.end71.do.body80_crit_edge

if.end71.do.body80_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body80

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body80:                                        ; preds = %if.end71.do.body80_crit_edge, %if.end43.do.body80_crit_edge
  %r.0.lcssa = phi i32 [ %shr46, %if.end43.do.body80_crit_edge ], [ %spec.select, %if.end71.do.body80_crit_edge ]
  %n1.0.lcssa = phi i32 [ %4, %if.end43.do.body80_crit_edge ], [ %6, %if.end71.do.body80_crit_edge ]
  %12 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %r.0.lcssa, i32 %divisor_limb_inverted.0) #8, !srcloc !15
  %asmresult86 = extractvalue { i32, i32 } %12, 0
  %add88 = add i32 %asmresult86, %r.0.lcssa
  %13 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %add88, i32 %shl) #8, !srcloc !16
  %asmresult89 = extractvalue { i32, i32 } %13, 0
  %asmresult90 = extractvalue { i32, i32 } %13, 1
  %shl91 = shl i32 %n1.0.lcssa, %0
  %14 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %r.0.lcssa, i32 %asmresult89, i32 %shl91, i32 %asmresult90) #8, !srcloc !17
  %asmresult92 = extractvalue { i32, i32 } %14, 0
  %asmresult93 = extractvalue { i32, i32 } %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult92)
  %tobool94.not = icmp eq i32 %asmresult92, 0
  br i1 %tobool94.not, label %do.body80.if.end105_crit_edge, label %if.then95

do.body80.if.end105_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then95:                                        ; preds = %do.body80
  %15 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult92, i32 0, i32 %asmresult93, i32 %shl) #8, !srcloc !18
  %asmresult96 = extractvalue { i32, i32 } %15, 0
  %asmresult97 = extractvalue { i32, i32 } %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult96)
  %tobool99.not = icmp eq i32 %asmresult96, 0
  br i1 %tobool99.not, label %if.then95.if.end105_crit_edge, label %if.then100

if.then95.if.end105_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then100:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  %16 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult96, i32 0, i32 %asmresult97, i32 %shl) #8, !srcloc !19
  %asmresult102 = extractvalue { i32, i32 } %16, 1
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.then95.if.end105_crit_edge, %do.body80.if.end105_crit_edge
  %_r83.0 = phi i32 [ %asmresult102, %if.then100 ], [ %asmresult97, %if.then95.if.end105_crit_edge ], [ %asmresult93, %do.body80.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %_r83.0, i32 %shl)
  %cmp106.not = icmp ult i32 %_r83.0, %shl
  %sub108 = select i1 %cmp106.not, i32 0, i32 %shl
  %spec.select769 = sub i32 %_r83.0, %sub108
  %shr113 = lshr i32 %spec.select769, %0
  br label %cleanup428

if.else114:                                       ; preds = %if.then1
  %shl116.mask = and i32 %divisor_limb, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl116.mask)
  %tobool117.not = icmp eq i32 %shl116.mask, 0
  br i1 %tobool117.not, label %if.else114.if.end174_crit_edge, label %do.body120

if.else114.if.end174_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end174

do.body120:                                       ; preds = %if.else114
  %shr128 = lshr i32 %divisor_limb, 16
  %and129 = and i32 %divisor_limb, 65535
  %sub130 = sub i32 0, %divisor_limb
  %div133 = udiv i32 %sub130, %shr128
  %17 = mul i32 %div133, %shr128
  %rem131.decomposed = sub i32 %sub130, %17
  %mul134 = mul i32 %div133, %and129
  %mul135 = shl nuw i32 %rem131.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul135, i32 %mul134)
  %cmp137 = icmp ult i32 %mul135, %mul134
  br i1 %cmp137, label %if.then138, label %do.body120.if.end149_crit_edge

do.body120.if.end149_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149

if.then138:                                       ; preds = %do.body120
  %dec139 = add i32 %div133, -1
  %add140 = add i32 %mul135, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add140, i32 %divisor_limb)
  %cmp141.not = icmp uge i32 %add140, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add140, i32 %mul134)
  %cmp143 = icmp ult i32 %add140, %mul134
  %or.cond770 = and i1 %cmp141.not, %cmp143
  br i1 %or.cond770, label %if.then144, label %if.then138.if.end149_crit_edge

if.then138.if.end149_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end149

if.then144:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #7
  %dec145 = add i32 %div133, -2
  %add146 = add i32 %add140, %divisor_limb
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %if.then138.if.end149_crit_edge, %do.body120.if.end149_crit_edge
  %__q1123.0 = phi i32 [ %dec145, %if.then144 ], [ %dec139, %if.then138.if.end149_crit_edge ], [ %div133, %do.body120.if.end149_crit_edge ]
  %__r1125.0 = phi i32 [ %add146, %if.then144 ], [ %add140, %if.then138.if.end149_crit_edge ], [ %mul135, %do.body120.if.end149_crit_edge ]
  %sub150 = sub i32 %__r1125.0, %mul134
  %sub150.frozen = freeze i32 %sub150
  %div152 = udiv i32 %sub150.frozen, %shr128
  %18 = mul i32 %div152, %shr128
  %rem151.decomposed = sub i32 %sub150.frozen, %18
  %mul153 = mul i32 %div152, %and129
  %mul154 = shl nuw i32 %rem151.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul154, i32 %mul153)
  %cmp156 = icmp ult i32 %mul154, %mul153
  br i1 %cmp156, label %if.then157, label %if.end149.if.end168_crit_edge

if.end149.if.end168_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end168

if.then157:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #7
  %add159 = add i32 %mul154, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %divisor_limb)
  %cmp160.not = icmp uge i32 %add159, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %mul153)
  %cmp162 = icmp ult i32 %add159, %mul153
  %or.cond771 = select i1 %cmp160.not, i1 %cmp162, i1 false
  %spec.select780.v = select i1 %or.cond771, i32 -2, i32 -1
  %spec.select780 = add i32 %spec.select780.v, %div152
  br label %if.end168

if.end168:                                        ; preds = %if.then157, %if.end149.if.end168_crit_edge
  %__q0124.0 = phi i32 [ %div152, %if.end149.if.end168_crit_edge ], [ %spec.select780, %if.then157 ]
  %mul170 = shl i32 %__q1123.0, 16
  %or171 = or i32 %__q0124.0, %mul170
  br label %if.end174

if.end174:                                        ; preds = %if.end168, %if.else114.if.end174_crit_edge
  %divisor_limb_inverted115.0 = phi i32 [ %or171, %if.end168 ], [ -1, %if.else114.if.end174_crit_edge ]
  %sub175 = add i32 %dividend_size, -1
  %arrayidx176 = getelementptr i32, ptr %dividend_ptr, i32 %sub175
  %19 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx176, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %divisor_limb)
  %cmp177.not = icmp ult i32 %20, %divisor_limb
  %dec180 = add i32 %dividend_size, -2
  %r.1 = select i1 %cmp177.not, i32 %20, i32 0
  %i.1 = select i1 %cmp177.not, i32 %dec180, i32 %sub175
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp183806 = icmp sgt i32 %i.1, -1
  br i1 %cmp183806, label %if.end174.for.body184_crit_edge, label %if.end174.cleanup428_crit_edge

if.end174.cleanup428_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup428

if.end174.for.body184_crit_edge:                  ; preds = %if.end174
  br label %for.body184

for.body184:                                      ; preds = %if.end210.for.body184_crit_edge, %if.end174.for.body184_crit_edge
  %i.2808 = phi i32 [ %dec219, %if.end210.for.body184_crit_edge ], [ %i.1, %if.end174.for.body184_crit_edge ]
  %r.2807 = phi i32 [ %spec.select772, %if.end210.for.body184_crit_edge ], [ %r.1, %if.end174.for.body184_crit_edge ]
  %arrayidx185 = getelementptr i32, ptr %dividend_ptr, i32 %i.2808
  %21 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx185, align 4
  %23 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %r.2807, i32 %divisor_limb_inverted115.0) #8, !srcloc !20
  %asmresult192 = extractvalue { i32, i32 } %23, 0
  %add194 = add i32 %asmresult192, %r.2807
  %24 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %add194, i32 %divisor_limb) #8, !srcloc !21
  %asmresult195 = extractvalue { i32, i32 } %24, 0
  %asmresult196 = extractvalue { i32, i32 } %24, 1
  %25 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %r.2807, i32 %asmresult195, i32 %22, i32 %asmresult196) #8, !srcloc !22
  %asmresult197 = extractvalue { i32, i32 } %25, 0
  %asmresult198 = extractvalue { i32, i32 } %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult197)
  %tobool199.not = icmp eq i32 %asmresult197, 0
  br i1 %tobool199.not, label %for.body184.if.end210_crit_edge, label %if.then200

for.body184.if.end210_crit_edge:                  ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

if.then200:                                       ; preds = %for.body184
  %26 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult197, i32 0, i32 %asmresult198, i32 %divisor_limb) #8, !srcloc !23
  %asmresult201 = extractvalue { i32, i32 } %26, 0
  %asmresult202 = extractvalue { i32, i32 } %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult201)
  %tobool204.not = icmp eq i32 %asmresult201, 0
  br i1 %tobool204.not, label %if.then200.if.end210_crit_edge, label %if.then205

if.then200.if.end210_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

if.then205:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #7
  %27 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult201, i32 0, i32 %asmresult202, i32 %divisor_limb) #8, !srcloc !24
  %asmresult207 = extractvalue { i32, i32 } %27, 1
  br label %if.end210

if.end210:                                        ; preds = %if.then205, %if.then200.if.end210_crit_edge, %for.body184.if.end210_crit_edge
  %_r189.0 = phi i32 [ %asmresult207, %if.then205 ], [ %asmresult202, %if.then200.if.end210_crit_edge ], [ %asmresult198, %for.body184.if.end210_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %_r189.0, i32 %divisor_limb)
  %cmp211.not = icmp ult i32 %_r189.0, %divisor_limb
  %sub213 = select i1 %cmp211.not, i32 0, i32 %divisor_limb
  %spec.select772 = sub i32 %_r189.0, %sub213
  %dec219 = add nsw i32 %i.2808, -1
  %cmp183 = icmp sgt i32 %i.2808, 0
  br i1 %cmp183, label %if.end210.for.body184_crit_edge, label %if.end210.cleanup428_crit_edge

if.end210.cleanup428_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup428

if.end210.for.body184_crit_edge:                  ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body184

if.else221:                                       ; preds = %if.end
  br i1 %tobool2.not, label %cleanup.cont, label %if.then225

if.then225:                                       ; preds = %if.else221
  %shl226 = shl i32 %divisor_limb, %0
  %sub227 = add i32 %dividend_size, -1
  %arrayidx228 = getelementptr i32, ptr %dividend_ptr, i32 %sub227
  %28 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx228, align 4
  %sub229 = sub nuw nsw i32 32, %0
  %shr230 = lshr i32 %29, %sub229
  %sub231 = add i32 %dividend_size, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub231)
  %cmp233791 = icmp sgt i32 %sub231, -1
  %shr244 = lshr i32 %shl226, 16
  %and245 = and i32 %shl226, 65535
  br i1 %cmp233791, label %if.then225.for.body234_crit_edge, label %if.then225.do.body301_crit_edge

if.then225.do.body301_crit_edge:                  ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body301

if.then225.for.body234_crit_edge:                 ; preds = %if.then225
  br label %for.body234

for.body234:                                      ; preds = %if.end292.for.body234_crit_edge, %if.then225.for.body234_crit_edge
  %i.3794 = phi i32 [ %dec299, %if.end292.for.body234_crit_edge ], [ %sub231, %if.then225.for.body234_crit_edge ]
  %n1.1793 = phi i32 [ %31, %if.end292.for.body234_crit_edge ], [ %29, %if.then225.for.body234_crit_edge ]
  %r.3792 = phi i32 [ %sub293, %if.end292.for.body234_crit_edge ], [ %shr230, %if.then225.for.body234_crit_edge ]
  %arrayidx235 = getelementptr i32, ptr %dividend_ptr, i32 %i.3794
  %30 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx235, align 4
  %r.3792.frozen = freeze i32 %r.3792
  %shr244.frozen = freeze i32 %shr244
  %div247 = udiv i32 %r.3792.frozen, %shr244.frozen
  %32 = mul i32 %div247, %shr244.frozen
  %rem246.decomposed = sub i32 %r.3792.frozen, %32
  %mul248 = mul i32 %div247, %and245
  %shl250 = shl i32 %n1.1793, %0
  %shr252 = lshr i32 %31, %sub229
  %or253 = or i32 %shr252, %shl250
  %or255 = tail call i32 @llvm.fshl.i32(i32 %rem246.decomposed, i32 %or253, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or255, i32 %mul248)
  %cmp256 = icmp ult i32 %or255, %mul248
  br i1 %cmp256, label %if.then257, label %for.body234.if.end268_crit_edge

for.body234.if.end268_crit_edge:                  ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end268

if.then257:                                       ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #7
  %add259 = add i32 %or255, %shl226
  call void @__sanitizer_cov_trace_cmp4(i32 %add259, i32 %shl226)
  %cmp260.not = icmp uge i32 %add259, %shl226
  call void @__sanitizer_cov_trace_cmp4(i32 %add259, i32 %mul248)
  %cmp262 = icmp ult i32 %add259, %mul248
  %or.cond773 = select i1 %cmp260.not, i1 %cmp262, i1 false
  %add265 = select i1 %or.cond773, i32 %shl226, i32 0
  %spec.select781 = add i32 %add265, %add259
  br label %if.end268

if.end268:                                        ; preds = %if.then257, %for.body234.if.end268_crit_edge
  %__r1241.0 = phi i32 [ %or255, %for.body234.if.end268_crit_edge ], [ %spec.select781, %if.then257 ]
  %sub269 = sub i32 %__r1241.0, %mul248
  %sub269.frozen = freeze i32 %sub269
  %shr244.frozen823 = freeze i32 %shr244
  %div271 = udiv i32 %sub269.frozen, %shr244.frozen823
  %33 = mul i32 %div271, %shr244.frozen823
  %rem270.decomposed = sub i32 %sub269.frozen, %33
  %mul272 = mul i32 %div271, %and245
  %mul273 = shl nuw i32 %rem270.decomposed, 16
  %and278 = and i32 %or253, 65535
  %or279 = or i32 %mul273, %and278
  call void @__sanitizer_cov_trace_cmp4(i32 %or279, i32 %mul272)
  %cmp280 = icmp ult i32 %or279, %mul272
  br i1 %cmp280, label %if.then281, label %if.end268.if.end292_crit_edge

if.end268.if.end292_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end292

if.then281:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  %add283 = add i32 %or279, %shl226
  call void @__sanitizer_cov_trace_cmp4(i32 %add283, i32 %shl226)
  %cmp284.not = icmp uge i32 %add283, %shl226
  call void @__sanitizer_cov_trace_cmp4(i32 %add283, i32 %mul272)
  %cmp286 = icmp ult i32 %add283, %mul272
  %or.cond774 = select i1 %cmp284.not, i1 %cmp286, i1 false
  %add289 = select i1 %or.cond774, i32 %shl226, i32 0
  %spec.select782 = add i32 %add289, %add283
  br label %if.end292

if.end292:                                        ; preds = %if.then281, %if.end268.if.end292_crit_edge
  %__r0242.0 = phi i32 [ %or279, %if.end268.if.end292_crit_edge ], [ %spec.select782, %if.then281 ]
  %sub293 = sub i32 %__r0242.0, %mul272
  %dec299 = add nsw i32 %i.3794, -1
  %cmp233 = icmp sgt i32 %i.3794, 0
  br i1 %cmp233, label %if.end292.for.body234_crit_edge, label %if.end292.do.body301_crit_edge

if.end292.do.body301_crit_edge:                   ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body301

if.end292.for.body234_crit_edge:                  ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body234

do.body301:                                       ; preds = %if.end292.do.body301_crit_edge, %if.then225.do.body301_crit_edge
  %r.3.lcssa = phi i32 [ %shr230, %if.then225.do.body301_crit_edge ], [ %sub293, %if.end292.do.body301_crit_edge ]
  %n1.1.lcssa = phi i32 [ %29, %if.then225.do.body301_crit_edge ], [ %31, %if.end292.do.body301_crit_edge ]
  %r.3.lcssa.frozen = freeze i32 %r.3.lcssa
  %shr244.frozen824 = freeze i32 %shr244
  %div312 = udiv i32 %r.3.lcssa.frozen, %shr244.frozen824
  %34 = mul i32 %div312, %shr244.frozen824
  %rem311.decomposed = sub i32 %r.3.lcssa.frozen, %34
  %mul313 = mul i32 %div312, %and245
  %shl315 = shl i32 %n1.1.lcssa, %0
  %or317 = tail call i32 @llvm.fshl.i32(i32 %rem311.decomposed, i32 %shl315, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or317, i32 %mul313)
  %cmp318 = icmp ult i32 %or317, %mul313
  br i1 %cmp318, label %if.then319, label %do.body301.if.end330_crit_edge

do.body301.if.end330_crit_edge:                   ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

if.then319:                                       ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  %add321 = add i32 %or317, %shl226
  call void @__sanitizer_cov_trace_cmp4(i32 %add321, i32 %shl226)
  %cmp322.not = icmp uge i32 %add321, %shl226
  call void @__sanitizer_cov_trace_cmp4(i32 %add321, i32 %mul313)
  %cmp324 = icmp ult i32 %add321, %mul313
  %or.cond775 = select i1 %cmp322.not, i1 %cmp324, i1 false
  %add327 = select i1 %or.cond775, i32 %shl226, i32 0
  %spec.select783 = add i32 %add327, %add321
  br label %if.end330

if.end330:                                        ; preds = %if.then319, %do.body301.if.end330_crit_edge
  %__r1306.0 = phi i32 [ %or317, %do.body301.if.end330_crit_edge ], [ %spec.select783, %if.then319 ]
  %sub331 = sub i32 %__r1306.0, %mul313
  %sub331.frozen = freeze i32 %sub331
  %shr244.frozen825 = freeze i32 %shr244
  %div333 = udiv i32 %sub331.frozen, %shr244.frozen825
  %35 = mul i32 %div333, %shr244.frozen825
  %rem332.decomposed = sub i32 %sub331.frozen, %35
  %mul334 = mul i32 %div333, %and245
  %mul335 = shl nuw i32 %rem332.decomposed, 16
  %and337 = and i32 %shl315, 65535
  %or338 = or i32 %mul335, %and337
  call void @__sanitizer_cov_trace_cmp4(i32 %or338, i32 %mul334)
  %cmp339 = icmp ult i32 %or338, %mul334
  br i1 %cmp339, label %if.then340, label %if.end330.cleanup359_crit_edge

if.end330.cleanup359_crit_edge:                   ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup359

if.then340:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #7
  %add342 = add i32 %or338, %shl226
  call void @__sanitizer_cov_trace_cmp4(i32 %add342, i32 %shl226)
  %cmp343.not = icmp uge i32 %add342, %shl226
  call void @__sanitizer_cov_trace_cmp4(i32 %add342, i32 %mul334)
  %cmp345 = icmp ult i32 %add342, %mul334
  %or.cond776 = select i1 %cmp343.not, i1 %cmp345, i1 false
  %add348 = select i1 %or.cond776, i32 %shl226, i32 0
  %spec.select784 = add i32 %add348, %add342
  br label %cleanup359

cleanup359:                                       ; preds = %if.then340, %if.end330.cleanup359_crit_edge
  %__r0307.0 = phi i32 [ %or338, %if.end330.cleanup359_crit_edge ], [ %spec.select784, %if.then340 ]
  %sub352 = sub i32 %__r0307.0, %mul334
  %shr357 = lshr i32 %sub352, %0
  br label %cleanup428

cleanup.cont:                                     ; preds = %if.else221
  %.pre = add i32 %dividend_size, -1
  %.pre812 = add i32 %dividend_size, -2
  %arrayidx361 = getelementptr i32, ptr %dividend_ptr, i32 %.pre
  %36 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx361, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %divisor_limb)
  %cmp362.not = icmp ult i32 %37, %divisor_limb
  %r.4 = select i1 %cmp362.not, i32 %37, i32 0
  %i.4 = select i1 %cmp362.not, i32 %.pre812, i32 %.pre
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.4)
  %cmp368796 = icmp sgt i32 %i.4, -1
  br i1 %cmp368796, label %for.body369.lr.ph, label %cleanup.cont.cleanup428_crit_edge

cleanup.cont.cleanup428_crit_edge:                ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup428

for.body369.lr.ph:                                ; preds = %cleanup.cont
  %shr379 = lshr i32 %divisor_limb, 16
  %and380 = and i32 %divisor_limb, 65535
  br label %for.body369

for.body369:                                      ; preds = %if.end419.for.body369_crit_edge, %for.body369.lr.ph
  %i.5798 = phi i32 [ %i.4, %for.body369.lr.ph ], [ %dec426, %if.end419.for.body369_crit_edge ]
  %r.5797 = phi i32 [ %r.4, %for.body369.lr.ph ], [ %sub420, %if.end419.for.body369_crit_edge ]
  %arrayidx370 = getelementptr i32, ptr %dividend_ptr, i32 %i.5798
  %38 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx370, align 4
  %r.5797.frozen = freeze i32 %r.5797
  %div382 = udiv i32 %r.5797.frozen, %shr379
  %40 = mul i32 %div382, %shr379
  %rem381.decomposed = sub i32 %r.5797.frozen, %40
  %mul383 = mul i32 %div382, %and380
  %or386 = tail call i32 @llvm.fshl.i32(i32 %rem381.decomposed, i32 %39, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or386, i32 %mul383)
  %cmp387 = icmp ult i32 %or386, %mul383
  br i1 %cmp387, label %if.then388, label %for.body369.if.end399_crit_edge

for.body369.if.end399_crit_edge:                  ; preds = %for.body369
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end399

if.then388:                                       ; preds = %for.body369
  call void @__sanitizer_cov_trace_pc() #7
  %add390 = add i32 %or386, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add390, i32 %divisor_limb)
  %cmp391.not = icmp uge i32 %add390, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add390, i32 %mul383)
  %cmp393 = icmp ult i32 %add390, %mul383
  %or.cond777 = select i1 %cmp391.not, i1 %cmp393, i1 false
  %add396 = select i1 %or.cond777, i32 %divisor_limb, i32 0
  %spec.select785 = add i32 %add396, %add390
  br label %if.end399

if.end399:                                        ; preds = %if.then388, %for.body369.if.end399_crit_edge
  %__r1376.0 = phi i32 [ %or386, %for.body369.if.end399_crit_edge ], [ %spec.select785, %if.then388 ]
  %sub400 = sub i32 %__r1376.0, %mul383
  %sub400.frozen = freeze i32 %sub400
  %div402 = udiv i32 %sub400.frozen, %shr379
  %41 = mul i32 %div402, %shr379
  %rem401.decomposed = sub i32 %sub400.frozen, %41
  %mul403 = mul i32 %div402, %and380
  %mul404 = shl nuw i32 %rem401.decomposed, 16
  %and405 = and i32 %39, 65535
  %or406 = or i32 %mul404, %and405
  call void @__sanitizer_cov_trace_cmp4(i32 %or406, i32 %mul403)
  %cmp407 = icmp ult i32 %or406, %mul403
  br i1 %cmp407, label %if.then408, label %if.end399.if.end419_crit_edge

if.end399.if.end419_crit_edge:                    ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end419

if.then408:                                       ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #7
  %add410 = add i32 %or406, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add410, i32 %divisor_limb)
  %cmp411.not = icmp uge i32 %add410, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add410, i32 %mul403)
  %cmp413 = icmp ult i32 %add410, %mul403
  %or.cond778 = select i1 %cmp411.not, i1 %cmp413, i1 false
  %add416 = select i1 %or.cond778, i32 %divisor_limb, i32 0
  %spec.select786 = add i32 %add416, %add410
  br label %if.end419

if.end419:                                        ; preds = %if.then408, %if.end399.if.end419_crit_edge
  %__r0377.0 = phi i32 [ %or406, %if.end399.if.end419_crit_edge ], [ %spec.select786, %if.then408 ]
  %sub420 = sub i32 %__r0377.0, %mul403
  %dec426 = add nsw i32 %i.5798, -1
  %cmp368 = icmp sgt i32 %i.5798, 0
  br i1 %cmp368, label %if.end419.for.body369_crit_edge, label %if.end419.cleanup428_crit_edge

if.end419.cleanup428_crit_edge:                   ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup428

if.end419.for.body369_crit_edge:                  ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body369

cleanup428:                                       ; preds = %if.end419.cleanup428_crit_edge, %cleanup.cont.cleanup428_crit_edge, %cleanup359, %if.end210.cleanup428_crit_edge, %if.end174.cleanup428_crit_edge, %if.end105, %entry.cleanup428_crit_edge
  %retval.2 = phi i32 [ %shr357, %cleanup359 ], [ 0, %entry.cleanup428_crit_edge ], [ %shr113, %if.end105 ], [ %r.1, %if.end174.cleanup428_crit_edge ], [ %r.4, %cleanup.cont.cleanup428_crit_edge ], [ %spec.select772, %if.end210.cleanup428_crit_edge ], [ %sub420, %if.end419.cleanup428_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpihelp_divrem(ptr nocapture noundef writeonly %qp, i32 noundef %qextra_limbs, ptr noundef %np, i32 noundef %nsize, ptr noundef %dp, i32 noundef %dsize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %dsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dsize, label %sw.default [
    i32 0, label %entry.cleanup376_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb109
  ]

entry.cleanup376_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup376

sw.bb1:                                           ; preds = %entry
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dp, align 4
  %sub = add i32 %nsize, -1
  %arrayidx2 = getelementptr i32, ptr %np, i32 %sub
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not = icmp ult i32 %4, %2
  %not.cmp.not = xor i1 %cmp.not, true
  %spec.select = zext i1 %not.cmp.not to i32
  %sub3 = select i1 %cmp.not, i32 0, i32 %2
  %spec.select705 = sub i32 %4, %sub3
  %add.ptr = getelementptr i32, ptr %qp, i32 %qextra_limbs
  %sub4 = add i32 %nsize, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4)
  %cmp5731 = icmp sgt i32 %sub4, -1
  br i1 %cmp5731, label %do.body.lr.ph, label %sw.bb1.for.cond49.preheader_crit_edge

sw.bb1.for.cond49.preheader_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond49.preheader

do.body.lr.ph:                                    ; preds = %sw.bb1
  %shr = lshr i32 %2, 16
  %and = and i32 %2, 65535
  br label %do.body

for.cond49.preheader:                             ; preds = %if.end41.for.cond49.preheader_crit_edge, %sw.bb1.for.cond49.preheader_crit_edge
  %n1.1.lcssa = phi i32 [ %spec.select705, %sw.bb1.for.cond49.preheader_crit_edge ], [ %sub42, %if.end41.for.cond49.preheader_crit_edge ]
  %i.1735 = add i32 %qextra_limbs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1735)
  %cmp50736 = icmp sgt i32 %i.1735, -1
  br i1 %cmp50736, label %do.body52.lr.ph, label %for.cond49.preheader.for.end107_crit_edge

for.cond49.preheader.for.end107_crit_edge:        ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end107

do.body52.lr.ph:                                  ; preds = %for.cond49.preheader
  %shr60 = lshr i32 %2, 16
  %and61 = and i32 %2, 65535
  br label %do.body52

do.body:                                          ; preds = %if.end41.do.body_crit_edge, %do.body.lr.ph
  %n1.1733 = phi i32 [ %spec.select705, %do.body.lr.ph ], [ %sub42, %if.end41.do.body_crit_edge ]
  %i.0732 = phi i32 [ %sub4, %do.body.lr.ph ], [ %dec46, %if.end41.do.body_crit_edge ]
  %n1.1733.frozen = freeze i32 %n1.1733
  %shr.frozen = freeze i32 %shr
  %div6 = udiv i32 %n1.1733.frozen, %shr.frozen
  %5 = mul i32 %div6, %shr.frozen
  %rem.decomposed = sub i32 %n1.1733.frozen, %5
  %mul = mul i32 %div6, %and
  %arrayidx8 = getelementptr i32, ptr %np, i32 %i.0732
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  %or = tail call i32 @llvm.fshl.i32(i32 %rem.decomposed, i32 %7, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %mul)
  %cmp10 = icmp ult i32 %or, %mul
  br i1 %cmp10, label %if.then11, label %do.body.if.end20_crit_edge

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then11:                                        ; preds = %do.body
  %dec = add i32 %div6, -1
  %add = add i32 %or, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp12.not = icmp uge i32 %add, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp14 = icmp ult i32 %add, %mul
  %or.cond = select i1 %cmp12.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then15, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %dec16 = add i32 %div6, -2
  %add17 = add i32 %add, %2
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then11.if.end20_crit_edge, %do.body.if.end20_crit_edge
  %__q1.0 = phi i32 [ %dec16, %if.then15 ], [ %dec, %if.then11.if.end20_crit_edge ], [ %div6, %do.body.if.end20_crit_edge ]
  %__r1.0 = phi i32 [ %add17, %if.then15 ], [ %add, %if.then11.if.end20_crit_edge ], [ %or, %do.body.if.end20_crit_edge ]
  %sub21 = sub i32 %__r1.0, %mul
  %sub21.frozen = freeze i32 %sub21
  %shr.frozen769 = freeze i32 %shr
  %div23 = udiv i32 %sub21.frozen, %shr.frozen769
  %8 = mul i32 %div23, %shr.frozen769
  %rem22.decomposed = sub i32 %sub21.frozen, %8
  %mul24 = mul i32 %div23, %and
  %mul25 = shl nuw i32 %rem22.decomposed, 16
  %and27 = and i32 %7, 65535
  %or28 = or i32 %mul25, %and27
  call void @__sanitizer_cov_trace_cmp4(i32 %or28, i32 %mul24)
  %cmp29 = icmp ult i32 %or28, %mul24
  br i1 %cmp29, label %if.then30, label %if.end20.if.end41_crit_edge

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then30:                                        ; preds = %if.end20
  %dec31 = add i32 %div23, -1
  %add32 = add i32 %or28, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %2)
  %cmp33.not = icmp uge i32 %add32, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %mul24)
  %cmp35 = icmp ult i32 %add32, %mul24
  %or.cond706 = select i1 %cmp33.not, i1 %cmp35, i1 false
  br i1 %or.cond706, label %if.then36, label %if.then30.if.end41_crit_edge

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %dec37 = add i32 %div23, -2
  %add38 = add i32 %add32, %2
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.then30.if.end41_crit_edge, %if.end20.if.end41_crit_edge
  %__q0.0 = phi i32 [ %dec37, %if.then36 ], [ %dec31, %if.then30.if.end41_crit_edge ], [ %div23, %if.end20.if.end41_crit_edge ]
  %__r0.0 = phi i32 [ %add38, %if.then36 ], [ %add32, %if.then30.if.end41_crit_edge ], [ %or28, %if.end20.if.end41_crit_edge ]
  %sub42 = sub i32 %__r0.0, %mul24
  %mul43 = shl i32 %__q1.0, 16
  %or44 = or i32 %__q0.0, %mul43
  %arrayidx45 = getelementptr i32, ptr %add.ptr, i32 %i.0732
  %9 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or44, ptr %arrayidx45, align 4
  %dec46 = add nsw i32 %i.0732, -1
  %cmp5 = icmp sgt i32 %i.0732, 0
  br i1 %cmp5, label %if.end41.do.body_crit_edge, label %if.end41.for.cond49.preheader_crit_edge

if.end41.for.cond49.preheader_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond49.preheader

if.end41.do.body_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body52:                                        ; preds = %if.end98.do.body52_crit_edge, %do.body52.lr.ph
  %i.1738 = phi i32 [ %i.1735, %do.body52.lr.ph ], [ %i.1, %if.end98.do.body52_crit_edge ]
  %n1.2737 = phi i32 [ %n1.1.lcssa, %do.body52.lr.ph ], [ %sub99, %if.end98.do.body52_crit_edge ]
  %n1.2737.frozen = freeze i32 %n1.2737
  %shr60.frozen = freeze i32 %shr60
  %div63 = udiv i32 %n1.2737.frozen, %shr60.frozen
  %10 = mul i32 %div63, %shr60.frozen
  %rem62.decomposed = sub i32 %n1.2737.frozen, %10
  %mul64 = mul i32 %div63, %and61
  %mul65 = shl nuw i32 %rem62.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul65, i32 %mul64)
  %cmp67 = icmp ult i32 %mul65, %mul64
  br i1 %cmp67, label %if.then68, label %do.body52.if.end79_crit_edge

do.body52.if.end79_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then68:                                        ; preds = %do.body52
  %dec69 = add i32 %div63, -1
  %add70 = add i32 %mul65, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add70, i32 %2)
  %cmp71.not = icmp uge i32 %add70, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add70, i32 %mul64)
  %cmp73 = icmp ult i32 %add70, %mul64
  %or.cond707 = select i1 %cmp71.not, i1 %cmp73, i1 false
  br i1 %or.cond707, label %if.then74, label %if.then68.if.end79_crit_edge

if.then68.if.end79_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then74:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  %dec75 = add i32 %div63, -2
  %add76 = add i32 %add70, %2
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.then68.if.end79_crit_edge, %do.body52.if.end79_crit_edge
  %__q155.0 = phi i32 [ %dec75, %if.then74 ], [ %dec69, %if.then68.if.end79_crit_edge ], [ %div63, %do.body52.if.end79_crit_edge ]
  %__r157.0 = phi i32 [ %add76, %if.then74 ], [ %add70, %if.then68.if.end79_crit_edge ], [ %mul65, %do.body52.if.end79_crit_edge ]
  %sub80 = sub i32 %__r157.0, %mul64
  %sub80.frozen = freeze i32 %sub80
  %shr60.frozen770 = freeze i32 %shr60
  %div82 = udiv i32 %sub80.frozen, %shr60.frozen770
  %11 = mul i32 %div82, %shr60.frozen770
  %rem81.decomposed = sub i32 %sub80.frozen, %11
  %mul83 = mul i32 %div82, %and61
  %mul84 = shl nuw i32 %rem81.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul84, i32 %mul83)
  %cmp86 = icmp ult i32 %mul84, %mul83
  br i1 %cmp86, label %if.then87, label %if.end79.if.end98_crit_edge

if.end79.if.end98_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then87:                                        ; preds = %if.end79
  %dec88 = add i32 %div82, -1
  %add89 = add i32 %mul84, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add89, i32 %2)
  %cmp90.not = icmp uge i32 %add89, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add89, i32 %mul83)
  %cmp92 = icmp ult i32 %add89, %mul83
  %or.cond708 = select i1 %cmp90.not, i1 %cmp92, i1 false
  br i1 %or.cond708, label %if.then93, label %if.then87.if.end98_crit_edge

if.then87.if.end98_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then93:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %dec94 = add i32 %div82, -2
  %add95 = add i32 %add89, %2
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.then87.if.end98_crit_edge, %if.end79.if.end98_crit_edge
  %__q056.0 = phi i32 [ %dec94, %if.then93 ], [ %dec88, %if.then87.if.end98_crit_edge ], [ %div82, %if.end79.if.end98_crit_edge ]
  %__r058.0 = phi i32 [ %add95, %if.then93 ], [ %add89, %if.then87.if.end98_crit_edge ], [ %mul84, %if.end79.if.end98_crit_edge ]
  %sub99 = sub i32 %__r058.0, %mul83
  %mul100 = shl i32 %__q155.0, 16
  %or101 = or i32 %__q056.0, %mul100
  %arrayidx102 = getelementptr i32, ptr %qp, i32 %i.1738
  %12 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or101, ptr %arrayidx102, align 4
  %i.1 = add i32 %i.1738, -1
  %cmp50 = icmp sgt i32 %i.1, -1
  br i1 %cmp50, label %if.end98.do.body52_crit_edge, label %if.end98.for.end107_crit_edge

if.end98.for.end107_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end107

if.end98.do.body52_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52

for.end107:                                       ; preds = %if.end98.for.end107_crit_edge, %for.cond49.preheader.for.end107_crit_edge
  %n1.2.lcssa = phi i32 [ %n1.1.lcssa, %for.cond49.preheader.for.end107_crit_edge ], [ %sub99, %if.end98.for.end107_crit_edge ]
  %13 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %n1.2.lcssa, ptr %np, align 4
  br label %cleanup376

sw.bb109:                                         ; preds = %entry
  %sub112 = add i32 %nsize, -2
  %add.ptr113 = getelementptr i32, ptr %np, i32 %sub112
  %arrayidx114 = getelementptr i32, ptr %dp, i32 1
  %14 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx114, align 4
  %16 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp, align 4
  %arrayidx116 = getelementptr i32, ptr %add.ptr113, i32 1
  %18 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx116, align 4
  %20 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %15)
  %cmp118.not = icmp ult i32 %19, %15
  br i1 %cmp118.not, label %sw.bb109.if.end123_crit_edge, label %land.lhs.true

sw.bb109.if.end123_crit_edge:                     ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

land.lhs.true:                                    ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %15)
  %cmp119 = icmp ule i32 %19, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %17)
  %cmp120.not = icmp ult i32 %21, %17
  %or.cond709 = select i1 %cmp119, i1 %cmp120.not, i1 false
  br i1 %or.cond709, label %land.lhs.true.if.end123_crit_edge, label %if.then121

land.lhs.true.if.end123_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

if.then121:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %19, i32 %15, i32 %21, i32 %17) #8, !srcloc !25
  %asmresult = extractvalue { i32, i32 } %22, 0
  %asmresult122 = extractvalue { i32, i32 } %22, 1
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %land.lhs.true.if.end123_crit_edge, %sw.bb109.if.end123_crit_edge
  %most_significant_q_limb.1 = phi i32 [ 1, %if.then121 ], [ 0, %sw.bb109.if.end123_crit_edge ], [ 0, %land.lhs.true.if.end123_crit_edge ]
  %n1111.0 = phi i32 [ %asmresult, %if.then121 ], [ %19, %sw.bb109.if.end123_crit_edge ], [ %19, %land.lhs.true.if.end123_crit_edge ]
  %n0.0 = phi i32 [ %asmresult122, %if.then121 ], [ %21, %sw.bb109.if.end123_crit_edge ], [ %21, %land.lhs.true.if.end123_crit_edge ]
  %add124 = add i32 %nsize, %qextra_limbs
  %sub126 = add i32 %add124, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub126)
  %cmp128721 = icmp sgt i32 %sub126, -1
  br i1 %cmp128721, label %for.body129.lr.ph, label %if.end123.for.end227_crit_edge

if.end123.for.end227_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end227

for.body129.lr.ph:                                ; preds = %if.end123
  %shr157 = lshr i32 %15, 16
  %and158 = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp145.not = icmp ne i32 %17, 0
  %cond.neg = sext i1 %cmp145.not to i32
  %sub146 = add i32 %17, %cond.neg
  %sub147 = sub i32 0, %17
  br label %for.body129

for.body129:                                      ; preds = %cleanup.for.body129_crit_edge, %for.body129.lr.ph
  %n0.1727 = phi i32 [ %n0.0, %for.body129.lr.ph ], [ %n0.5, %cleanup.for.body129_crit_edge ]
  %n1111.1726 = phi i32 [ %n1111.0, %for.body129.lr.ph ], [ %n1111.5, %cleanup.for.body129_crit_edge ]
  %i110.0723 = phi i32 [ %sub126, %for.body129.lr.ph ], [ %dec226, %cleanup.for.body129_crit_edge ]
  %np.addr.0722 = phi ptr [ %add.ptr113, %for.body129.lr.ph ], [ %np.addr.1, %cleanup.for.body129_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i110.0723, i32 %qextra_limbs)
  %cmp130.not = icmp slt i32 %i110.0723, %qextra_limbs
  br i1 %cmp130.not, label %if.else, label %if.then131

if.then131:                                       ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i32, ptr %np.addr.0722, i32 -1
  br label %if.end133

if.else:                                          ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %np.addr.0722 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %np.addr.0722, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.else, %if.then131
  %np.addr.1 = phi ptr [ %incdec.ptr, %if.then131 ], [ %np.addr.0722, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n1111.1726, i32 %15)
  %cmp134 = icmp eq i32 %n1111.1726, %15
  br i1 %cmp134, label %if.then135, label %do.body149

if.then135:                                       ; preds = %if.end133
  %add136 = add i32 %n0.1727, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add136, i32 %15)
  %cmp137 = icmp ult i32 %add136, %15
  br i1 %cmp137, label %if.then138, label %if.then135.if.end205_crit_edge

if.then135.if.end205_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end205

if.then138:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #7
  %sub139 = sub i32 %add136, %17
  %24 = ptrtoint ptr %np.addr.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %np.addr.1, align 4
  %26 = tail call { i32, i32 } asm "adds $1, $4, $5\0Aadc  $0, $2, $3", "=r,=&r,%r,rI,%r,rI"(i32 %sub139, i32 0, i32 %25, i32 %17) #8, !srcloc !26
  %arrayidx143 = getelementptr i32, ptr %qp, i32 %i110.0723
  %27 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %arrayidx143, align 4
  br label %cleanup

do.body149:                                       ; preds = %if.end133
  %n1111.1726.frozen = freeze i32 %n1111.1726
  %shr157.frozen = freeze i32 %shr157
  %div160 = udiv i32 %n1111.1726.frozen, %shr157.frozen
  %28 = mul i32 %div160, %shr157.frozen
  %rem159.decomposed = sub i32 %n1111.1726.frozen, %28
  %mul161 = mul i32 %div160, %and158
  %or164 = tail call i32 @llvm.fshl.i32(i32 %rem159.decomposed, i32 %n0.1727, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or164, i32 %mul161)
  %cmp165 = icmp ult i32 %or164, %mul161
  br i1 %cmp165, label %if.then166, label %do.body149.if.end177_crit_edge

do.body149.if.end177_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

if.then166:                                       ; preds = %do.body149
  %dec167 = add i32 %div160, -1
  %add168 = add i32 %or164, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add168, i32 %15)
  %cmp169.not = icmp uge i32 %add168, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add168, i32 %mul161)
  %cmp171 = icmp ult i32 %add168, %mul161
  %or.cond710 = select i1 %cmp169.not, i1 %cmp171, i1 false
  br i1 %or.cond710, label %if.then172, label %if.then166.if.end177_crit_edge

if.then166.if.end177_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

if.then172:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  %dec173 = add i32 %div160, -2
  %add174 = add i32 %add168, %15
  br label %if.end177

if.end177:                                        ; preds = %if.then172, %if.then166.if.end177_crit_edge, %do.body149.if.end177_crit_edge
  %__q1152.0 = phi i32 [ %dec173, %if.then172 ], [ %dec167, %if.then166.if.end177_crit_edge ], [ %div160, %do.body149.if.end177_crit_edge ]
  %__r1154.0 = phi i32 [ %add174, %if.then172 ], [ %add168, %if.then166.if.end177_crit_edge ], [ %or164, %do.body149.if.end177_crit_edge ]
  %sub178 = sub i32 %__r1154.0, %mul161
  %sub178.frozen = freeze i32 %sub178
  %shr157.frozen771 = freeze i32 %shr157
  %div180 = udiv i32 %sub178.frozen, %shr157.frozen771
  %29 = mul i32 %div180, %shr157.frozen771
  %rem179.decomposed = sub i32 %sub178.frozen, %29
  %mul181 = mul i32 %div180, %and158
  %mul182 = shl nuw i32 %rem179.decomposed, 16
  %and183 = and i32 %n0.1727, 65535
  %or184 = or i32 %mul182, %and183
  call void @__sanitizer_cov_trace_cmp4(i32 %or184, i32 %mul181)
  %cmp185 = icmp ult i32 %or184, %mul181
  br i1 %cmp185, label %if.then186, label %if.end177.if.end197_crit_edge

if.end177.if.end197_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then186:                                       ; preds = %if.end177
  %dec187 = add i32 %div180, -1
  %add188 = add i32 %or184, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add188, i32 %15)
  %cmp189.not = icmp uge i32 %add188, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add188, i32 %mul181)
  %cmp191 = icmp ult i32 %add188, %mul181
  %or.cond711 = select i1 %cmp189.not, i1 %cmp191, i1 false
  br i1 %or.cond711, label %if.then192, label %if.then186.if.end197_crit_edge

if.then186.if.end197_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then192:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #7
  %dec193 = add i32 %div180, -2
  %add194 = add i32 %add188, %15
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %if.then186.if.end197_crit_edge, %if.end177.if.end197_crit_edge
  %__q0153.0 = phi i32 [ %dec193, %if.then192 ], [ %dec187, %if.then186.if.end197_crit_edge ], [ %div180, %if.end177.if.end197_crit_edge ]
  %__r0155.0 = phi i32 [ %add194, %if.then192 ], [ %add188, %if.then186.if.end197_crit_edge ], [ %or184, %if.end177.if.end197_crit_edge ]
  %sub198 = sub i32 %__r0155.0, %mul181
  %mul199 = shl i32 %__q1152.0, 16
  %or200 = or i32 %__q0153.0, %mul199
  %30 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %17, i32 %or200) #8, !srcloc !27
  %asmresult203 = extractvalue { i32, i32 } %30, 0
  %asmresult204 = extractvalue { i32, i32 } %30, 1
  br label %if.end205

if.end205:                                        ; preds = %if.end197, %if.then135.if.end205_crit_edge
  %n1111.2 = phi i32 [ %asmresult203, %if.end197 ], [ %sub146, %if.then135.if.end205_crit_edge ]
  %n0.2 = phi i32 [ %asmresult204, %if.end197 ], [ %sub147, %if.then135.if.end205_crit_edge ]
  %q.0 = phi i32 [ %or200, %if.end197 ], [ -1, %if.then135.if.end205_crit_edge ]
  %r.0 = phi i32 [ %sub198, %if.end197 ], [ %add136, %if.then135.if.end205_crit_edge ]
  %31 = ptrtoint ptr %np.addr.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %np.addr.1, align 4
  br label %q_test

q_test:                                           ; preds = %if.then212.q_test_crit_edge, %if.end205
  %n1111.3 = phi i32 [ %n1111.2, %if.end205 ], [ %asmresult214, %if.then212.q_test_crit_edge ]
  %n0.3 = phi i32 [ %n0.2, %if.end205 ], [ %asmresult215, %if.then212.q_test_crit_edge ]
  %q.1 = phi i32 [ %q.0, %if.end205 ], [ %dec213, %if.then212.q_test_crit_edge ]
  %r.1 = phi i32 [ %r.0, %if.end205 ], [ %add216, %if.then212.q_test_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n1111.3, i32 %r.1)
  %cmp207 = icmp ugt i32 %n1111.3, %r.1
  br i1 %cmp207, label %q_test.if.then212_crit_edge, label %lor.lhs.false208

q_test.if.then212_crit_edge:                      ; preds = %q_test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then212

lor.lhs.false208:                                 ; preds = %q_test
  call void @__sanitizer_cov_trace_cmp4(i32 %n1111.3, i32 %r.1)
  %cmp209 = icmp eq i32 %n1111.3, %r.1
  call void @__sanitizer_cov_trace_cmp4(i32 %n0.3, i32 %32)
  %cmp211 = icmp ugt i32 %n0.3, %32
  %or.cond712 = select i1 %cmp209, i1 %cmp211, i1 false
  br i1 %or.cond712, label %lor.lhs.false208.if.then212_crit_edge, label %lor.lhs.false208.if.end220_crit_edge

lor.lhs.false208.if.end220_crit_edge:             ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end220

lor.lhs.false208.if.then212_crit_edge:            ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then212

if.then212:                                       ; preds = %lor.lhs.false208.if.then212_crit_edge, %q_test.if.then212_crit_edge
  %dec213 = add i32 %q.1, -1
  %33 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %n1111.3, i32 0, i32 %n0.3, i32 %17) #8, !srcloc !28
  %asmresult214 = extractvalue { i32, i32 } %33, 0
  %asmresult215 = extractvalue { i32, i32 } %33, 1
  %add216 = add i32 %r.1, %15
  %cmp217.not = icmp ult i32 %add216, %15
  br i1 %cmp217.not, label %if.end220.split.loop.exit750, label %if.then212.q_test_crit_edge

if.then212.q_test_crit_edge:                      ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #7
  br label %q_test

if.end220.split.loop.exit750:                     ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #7
  %asmresult214.le = extractvalue { i32, i32 } %33, 0
  %asmresult215.le = extractvalue { i32, i32 } %33, 1
  br label %if.end220

if.end220:                                        ; preds = %if.end220.split.loop.exit750, %lor.lhs.false208.if.end220_crit_edge
  %n1111.4 = phi i32 [ %asmresult214.le, %if.end220.split.loop.exit750 ], [ %n1111.3, %lor.lhs.false208.if.end220_crit_edge ]
  %n0.4 = phi i32 [ %asmresult215.le, %if.end220.split.loop.exit750 ], [ %n0.3, %lor.lhs.false208.if.end220_crit_edge ]
  %q.2 = phi i32 [ %dec213, %if.end220.split.loop.exit750 ], [ %q.1, %lor.lhs.false208.if.end220_crit_edge ]
  %r.2 = phi i32 [ %add216, %if.end220.split.loop.exit750 ], [ %r.1, %lor.lhs.false208.if.end220_crit_edge ]
  %arrayidx221 = getelementptr i32, ptr %qp, i32 %i110.0723
  %34 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %q.2, ptr %arrayidx221, align 4
  %35 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %r.2, i32 %n1111.4, i32 %32, i32 %n0.4) #8, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %if.end220, %if.then138
  %.pn = phi { i32, i32 } [ %26, %if.then138 ], [ %35, %if.end220 ]
  %n0.5 = extractvalue { i32, i32 } %.pn, 1
  %n1111.5 = extractvalue { i32, i32 } %.pn, 0
  %dec226 = add i32 %i110.0723, -1
  %cmp128 = icmp sgt i32 %dec226, -1
  br i1 %cmp128, label %cleanup.for.body129_crit_edge, label %for.end227.loopexit

cleanup.for.body129_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body129

for.end227.loopexit:                              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %n0.5.le = extractvalue { i32, i32 } %.pn, 1
  %n1111.5.le = extractvalue { i32, i32 } %.pn, 0
  br label %for.end227

for.end227:                                       ; preds = %for.end227.loopexit, %if.end123.for.end227_crit_edge
  %np.addr.0.lcssa = phi ptr [ %add.ptr113, %if.end123.for.end227_crit_edge ], [ %np.addr.1, %for.end227.loopexit ]
  %n1111.1.lcssa = phi i32 [ %n1111.0, %if.end123.for.end227_crit_edge ], [ %n1111.5.le, %for.end227.loopexit ]
  %n0.1.lcssa = phi i32 [ %n0.0, %if.end123.for.end227_crit_edge ], [ %n0.5.le, %for.end227.loopexit ]
  %arrayidx228 = getelementptr i32, ptr %np.addr.0.lcssa, i32 1
  %36 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %n1111.1.lcssa, ptr %arrayidx228, align 4
  %37 = ptrtoint ptr %np.addr.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %n0.1.lcssa, ptr %np.addr.0.lcssa, align 4
  br label %cleanup376

sw.default:                                       ; preds = %entry
  %sub233 = sub i32 %nsize, %dsize
  %add.ptr234 = getelementptr i32, ptr %np, i32 %sub233
  %sub235 = add i32 %dsize, -1
  %arrayidx236 = getelementptr i32, ptr %dp, i32 %sub235
  %38 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx236, align 4
  %sub237 = add i32 %dsize, -2
  %arrayidx238 = getelementptr i32, ptr %dp, i32 %sub237
  %40 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx238, align 4
  %arrayidx240 = getelementptr i32, ptr %add.ptr234, i32 %sub235
  %42 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx240, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp241.not = icmp ult i32 %43, %39
  br i1 %cmp241.not, label %sw.default.if.end252_crit_edge, label %if.then242

sw.default.if.end252_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end252

if.then242:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp243 = icmp ugt i32 %43, %39
  br i1 %cmp243, label %if.then242.if.then247_crit_edge, label %lor.lhs.false244

if.then242.if.then247_crit_edge:                  ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then247

lor.lhs.false244:                                 ; preds = %if.then242
  %call = tail call i32 @mpihelp_cmp(ptr noundef %add.ptr234, ptr noundef %dp, i32 noundef %sub235) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp246 = icmp sgt i32 %call, -1
  br i1 %cmp246, label %lor.lhs.false244.if.then247_crit_edge, label %lor.lhs.false244.if.end252_crit_edge

lor.lhs.false244.if.end252_crit_edge:             ; preds = %lor.lhs.false244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end252

lor.lhs.false244.if.then247_crit_edge:            ; preds = %lor.lhs.false244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then247

if.then247:                                       ; preds = %lor.lhs.false244.if.then247_crit_edge, %if.then242.if.then247_crit_edge
  %call248 = tail call i32 @mpihelp_sub_n(ptr noundef %add.ptr234, ptr noundef %add.ptr234, ptr noundef %dp, i32 noundef %dsize) #5
  %44 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx240, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then247, %lor.lhs.false244.if.end252_crit_edge, %sw.default.if.end252_crit_edge
  %most_significant_q_limb.2 = phi i32 [ 1, %if.then247 ], [ 0, %lor.lhs.false244.if.end252_crit_edge ], [ 0, %sw.default.if.end252_crit_edge ]
  %n0232.0 = phi i32 [ %45, %if.then247 ], [ %43, %lor.lhs.false244.if.end252_crit_edge ], [ %43, %sw.default.if.end252_crit_edge ]
  %add253 = add i32 %nsize, %qextra_limbs
  %46 = xor i32 %dsize, -1
  %sub255 = add i32 %add253, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub255)
  %cmp257742 = icmp sgt i32 %sub255, -1
  br i1 %cmp257742, label %for.body258.lr.ph, label %if.end252.cleanup376_crit_edge

if.end252.cleanup376_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup376

for.body258.lr.ph:                                ; preds = %if.end252
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub237)
  %cmp273740 = icmp sgt i32 %sub237, -1
  %shr297 = lshr i32 %39, 16
  %and298 = and i32 %39, 65535
  %47 = shl i32 %dsize, 2
  %48 = add i32 %47, -4
  br label %for.body258

for.body258:                                      ; preds = %if.end369.for.body258_crit_edge, %for.body258.lr.ph
  %n0232.1745 = phi i32 [ %n0232.0, %for.body258.lr.ph ], [ %64, %if.end369.for.body258_crit_edge ]
  %i230.0744 = phi i32 [ %sub255, %for.body258.lr.ph ], [ %dec374, %if.end369.for.body258_crit_edge ]
  %np.addr.2743 = phi ptr [ %add.ptr234, %for.body258.lr.ph ], [ %np.addr.3, %if.end369.for.body258_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i230.0744, i32 %qextra_limbs)
  %cmp262.not = icmp slt i32 %i230.0744, %qextra_limbs
  br i1 %cmp262.not, label %if.else266, label %if.then263

if.then263:                                       ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr264 = getelementptr i32, ptr %np.addr.2743, i32 -1
  %arrayidx265 = getelementptr i32, ptr %incdec.ptr264, i32 %dsize
  %49 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx265, align 4
  br label %if.end284

if.else266:                                       ; preds = %for.body258
  %arrayidx268 = getelementptr i32, ptr %np.addr.2743, i32 %sub235
  %51 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx268, align 4
  br i1 %cmp273740, label %for.body274.lr.ph, label %if.else266.for.end280_crit_edge

if.else266.for.end280_crit_edge:                  ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end280

for.body274.lr.ph:                                ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr276 = getelementptr i32, ptr %np.addr.2743, i32 1
  %53 = call ptr @memmove(ptr %add.ptr276, ptr %np.addr.2743, i32 %48)
  br label %for.end280

for.end280:                                       ; preds = %for.body274.lr.ph, %if.else266.for.end280_crit_edge
  %54 = ptrtoint ptr %np.addr.2743 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %np.addr.2743, align 4
  br label %if.end284

if.end284:                                        ; preds = %for.end280, %if.then263
  %np.addr.3 = phi ptr [ %incdec.ptr264, %if.then263 ], [ %np.addr.2743, %for.end280 ]
  %n2261.0 = phi i32 [ %50, %if.then263 ], [ %52, %for.end280 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n0232.1745, i32 %39)
  %cmp285 = icmp eq i32 %n0232.1745, %39
  br i1 %cmp285, label %if.end284.if.end362_crit_edge, label %if.else287

if.end284.if.end362_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end362

if.else287:                                       ; preds = %if.end284
  %n0232.1745.frozen = freeze i32 %n0232.1745
  %shr297.frozen = freeze i32 %shr297
  %div300 = udiv i32 %n0232.1745.frozen, %shr297.frozen
  %55 = mul i32 %div300, %shr297.frozen
  %rem299.decomposed = sub i32 %n0232.1745.frozen, %55
  %mul301 = mul i32 %div300, %and298
  %arrayidx304 = getelementptr i32, ptr %np.addr.3, i32 %sub235
  %56 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx304, align 4
  %or306 = tail call i32 @llvm.fshl.i32(i32 %rem299.decomposed, i32 %57, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or306, i32 %mul301)
  %cmp307 = icmp ult i32 %or306, %mul301
  br i1 %cmp307, label %if.then308, label %if.else287.if.end319_crit_edge

if.else287.if.end319_crit_edge:                   ; preds = %if.else287
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

if.then308:                                       ; preds = %if.else287
  %dec309 = add i32 %div300, -1
  %add310 = add i32 %or306, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %add310, i32 %39)
  %cmp311.not = icmp uge i32 %add310, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %add310, i32 %mul301)
  %cmp313 = icmp ult i32 %add310, %mul301
  %or.cond713 = select i1 %cmp311.not, i1 %cmp313, i1 false
  br i1 %or.cond713, label %if.then314, label %if.then308.if.end319_crit_edge

if.then308.if.end319_crit_edge:                   ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

if.then314:                                       ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #7
  %dec315 = add i32 %div300, -2
  %add316 = add i32 %add310, %39
  br label %if.end319

if.end319:                                        ; preds = %if.then314, %if.then308.if.end319_crit_edge, %if.else287.if.end319_crit_edge
  %__q1292.0 = phi i32 [ %dec315, %if.then314 ], [ %dec309, %if.then308.if.end319_crit_edge ], [ %div300, %if.else287.if.end319_crit_edge ]
  %__r1294.0 = phi i32 [ %add316, %if.then314 ], [ %add310, %if.then308.if.end319_crit_edge ], [ %or306, %if.else287.if.end319_crit_edge ]
  %sub320 = sub i32 %__r1294.0, %mul301
  %sub320.frozen = freeze i32 %sub320
  %shr297.frozen772 = freeze i32 %shr297
  %div322 = udiv i32 %sub320.frozen, %shr297.frozen772
  %58 = mul i32 %div322, %shr297.frozen772
  %rem321.decomposed = sub i32 %sub320.frozen, %58
  %mul323 = mul i32 %div322, %and298
  %mul324 = shl nuw i32 %rem321.decomposed, 16
  %and327 = and i32 %57, 65535
  %or328 = or i32 %mul324, %and327
  call void @__sanitizer_cov_trace_cmp4(i32 %or328, i32 %mul323)
  %cmp329 = icmp ult i32 %or328, %mul323
  br i1 %cmp329, label %if.then330, label %if.end319.if.end341_crit_edge

if.end319.if.end341_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end341

if.then330:                                       ; preds = %if.end319
  %dec331 = add i32 %div322, -1
  %add332 = add i32 %or328, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %add332, i32 %39)
  %cmp333.not = icmp uge i32 %add332, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %add332, i32 %mul323)
  %cmp335 = icmp ult i32 %add332, %mul323
  %or.cond714 = select i1 %cmp333.not, i1 %cmp335, i1 false
  br i1 %or.cond714, label %if.then336, label %if.then330.if.end341_crit_edge

if.then330.if.end341_crit_edge:                   ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end341

if.then336:                                       ; preds = %if.then330
  call void @__sanitizer_cov_trace_pc() #7
  %dec337 = add i32 %div322, -2
  %add338 = add i32 %add332, %39
  br label %if.end341

if.end341:                                        ; preds = %if.then336, %if.then330.if.end341_crit_edge, %if.end319.if.end341_crit_edge
  %__q0293.0 = phi i32 [ %dec337, %if.then336 ], [ %dec331, %if.then330.if.end341_crit_edge ], [ %div322, %if.end319.if.end341_crit_edge ]
  %__r0295.0 = phi i32 [ %add338, %if.then336 ], [ %add332, %if.then330.if.end341_crit_edge ], [ %or328, %if.end319.if.end341_crit_edge ]
  %sub342 = sub i32 %__r0295.0, %mul323
  %mul343 = shl i32 %__q1292.0, 16
  %or344 = or i32 %__q0293.0, %mul343
  %59 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %41, i32 %or344) #8, !srcloc !30
  %asmresult347 = extractvalue { i32, i32 } %59, 0
  %asmresult348 = extractvalue { i32, i32 } %59, 1
  %arrayidx352 = getelementptr i32, ptr %np.addr.3, i32 %sub237
  br label %while.cond

while.cond:                                       ; preds = %if.end358, %if.end341
  %n0232.2 = phi i32 [ %asmresult348, %if.end341 ], [ %sub361, %if.end358 ]
  %q259.0 = phi i32 [ %or344, %if.end341 ], [ %dec354, %if.end358 ]
  %n1260.0 = phi i32 [ %asmresult347, %if.end341 ], [ %sub360, %if.end358 ]
  %r288.0 = phi i32 [ %sub342, %if.end341 ], [ %add355, %if.end358 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n1260.0, i32 %r288.0)
  %cmp349 = icmp ugt i32 %n1260.0, %r288.0
  br i1 %cmp349, label %while.cond.while.body_crit_edge, label %lor.rhs

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %n1260.0, i32 %r288.0)
  %cmp350 = icmp eq i32 %n1260.0, %r288.0
  br i1 %cmp350, label %land.rhs, label %lor.rhs.if.end362_crit_edge

lor.rhs.if.end362_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end362

land.rhs:                                         ; preds = %lor.rhs
  %60 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx352, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n0232.2, i32 %61)
  %cmp353 = icmp ugt i32 %n0232.2, %61
  br i1 %cmp353, label %land.rhs.while.body_crit_edge, label %land.rhs.if.end362_crit_edge

land.rhs.if.end362_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end362

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %dec354 = add i32 %q259.0, -1
  %add355 = add i32 %r288.0, %39
  %cmp356 = icmp ult i32 %add355, %39
  br i1 %cmp356, label %while.body.if.end362_crit_edge, label %if.end358

while.body.if.end362_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end362

if.end358:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %n0232.2, i32 %41)
  %cmp359 = icmp ult i32 %n0232.2, %41
  %conv.neg = sext i1 %cmp359 to i32
  %sub360 = add i32 %n1260.0, %conv.neg
  %sub361 = sub i32 %n0232.2, %41
  br label %while.cond

if.end362:                                        ; preds = %while.body.if.end362_crit_edge, %land.rhs.if.end362_crit_edge, %lor.rhs.if.end362_crit_edge, %if.end284.if.end362_crit_edge
  %q259.2 = phi i32 [ -1, %if.end284.if.end362_crit_edge ], [ %q259.0, %lor.rhs.if.end362_crit_edge ], [ %q259.0, %land.rhs.if.end362_crit_edge ], [ %dec354, %while.body.if.end362_crit_edge ]
  %call363 = tail call i32 @mpihelp_submul_1(ptr noundef %np.addr.3, ptr noundef %dp, i32 noundef %dsize, i32 noundef %q259.2) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %n2261.0, i32 %call363)
  %cmp364.not = icmp eq i32 %n2261.0, %call363
  br i1 %cmp364.not, label %if.end362.if.end369_crit_edge, label %if.then366

if.end362.if.end369_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end369

if.then366:                                       ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #7
  %call367 = tail call i32 @mpihelp_add_n(ptr noundef %np.addr.3, ptr noundef %np.addr.3, ptr noundef %dp, i32 noundef %dsize) #5
  %dec368 = add i32 %q259.2, -1
  br label %if.end369

if.end369:                                        ; preds = %if.then366, %if.end362.if.end369_crit_edge
  %q259.3 = phi i32 [ %dec368, %if.then366 ], [ %q259.2, %if.end362.if.end369_crit_edge ]
  %arrayidx370 = getelementptr i32, ptr %qp, i32 %i230.0744
  %62 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %q259.3, ptr %arrayidx370, align 4
  %arrayidx372 = getelementptr i32, ptr %np.addr.3, i32 %sub235
  %63 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx372, align 4
  %dec374 = add i32 %i230.0744, -1
  %cmp257 = icmp sgt i32 %dec374, -1
  br i1 %cmp257, label %if.end369.for.body258_crit_edge, label %if.end369.cleanup376_crit_edge

if.end369.cleanup376_crit_edge:                   ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup376

if.end369.for.body258_crit_edge:                  ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body258

cleanup376:                                       ; preds = %if.end369.cleanup376_crit_edge, %if.end252.cleanup376_crit_edge, %for.end227, %for.end107, %entry.cleanup376_crit_edge
  %retval.0 = phi i32 [ poison, %entry.cleanup376_crit_edge ], [ %most_significant_q_limb.1, %for.end227 ], [ %spec.select, %for.end107 ], [ %most_significant_q_limb.2, %if.end252.cleanup376_crit_edge ], [ %most_significant_q_limb.2, %if.end369.cleanup376_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_submul_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpihelp_divmod_1(ptr nocapture noundef writeonly %quot_ptr, ptr nocapture noundef readonly %dividend_ptr, i32 noundef %dividend_size, i32 noundef %divisor_limb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend_size)
  %tobool.not = icmp eq i32 %dividend_size, 0
  br i1 %tobool.not, label %entry.cleanup438_crit_edge, label %if.end

entry.cleanup438_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup438

if.end:                                           ; preds = %entry
  %mul = mul i32 %dividend_size, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul)
  %cmp = icmp sgt i32 %mul, 100
  %0 = tail call i32 @llvm.ctlz.i32(i32 %divisor_limb, i1 false) #5, !range !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool2.not = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.else226

if.then1:                                         ; preds = %if.end
  br i1 %tobool2.not, label %if.else117, label %if.then3

if.then3:                                         ; preds = %if.then1
  %shl = shl i32 %divisor_limb, %0
  %shl4.mask = and i32 %shl, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl4.mask)
  %tobool5.not = icmp eq i32 %shl4.mask, 0
  br i1 %tobool5.not, label %if.then3.if.end43_crit_edge, label %do.body

if.then3.if.end43_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.body:                                          ; preds = %if.then3
  %shr = lshr i32 %shl, 16
  %and = and i32 %shl, 65535
  %sub = sub i32 0, %shl
  %sub.frozen = freeze i32 %sub
  %shr.frozen = freeze i32 %shr
  %div = udiv i32 %sub.frozen, %shr.frozen
  %1 = mul i32 %div, %shr.frozen
  %rem.decomposed = sub i32 %sub.frozen, %1
  %mul8 = mul i32 %div, %and
  %mul9 = shl nuw i32 %rem.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9, i32 %mul8)
  %cmp10 = icmp ult i32 %mul9, %mul8
  br i1 %cmp10, label %if.then11, label %do.body.if.end20_crit_edge

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then11:                                        ; preds = %do.body
  %dec = add i32 %div, -1
  %add = add i32 %mul9, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl)
  %cmp12.not = icmp uge i32 %add, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul8)
  %cmp14 = icmp ult i32 %add, %mul8
  %or.cond = select i1 %cmp12.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then15, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %dec16 = add i32 %div, -2
  %add17 = add i32 %add, %shl
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then11.if.end20_crit_edge, %do.body.if.end20_crit_edge
  %__q1.0 = phi i32 [ %dec16, %if.then15 ], [ %dec, %if.then11.if.end20_crit_edge ], [ %div, %do.body.if.end20_crit_edge ]
  %__r1.0 = phi i32 [ %add17, %if.then15 ], [ %add, %if.then11.if.end20_crit_edge ], [ %mul9, %do.body.if.end20_crit_edge ]
  %sub21 = sub i32 %__r1.0, %mul8
  %sub21.frozen = freeze i32 %sub21
  %shr.frozen833 = freeze i32 %shr
  %div23 = udiv i32 %sub21.frozen, %shr.frozen833
  %2 = mul i32 %div23, %shr.frozen833
  %rem22.decomposed = sub i32 %sub21.frozen, %2
  %mul24 = mul i32 %div23, %and
  %mul25 = shl nuw i32 %rem22.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul25, i32 %mul24)
  %cmp27 = icmp ult i32 %mul25, %mul24
  br i1 %cmp27, label %if.then28, label %if.end20.if.end39_crit_edge

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %add30 = add i32 %mul25, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %shl)
  %cmp31.not = icmp uge i32 %add30, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %mul24)
  %cmp33 = icmp ult i32 %add30, %mul24
  %or.cond789 = select i1 %cmp31.not, i1 %cmp33, i1 false
  %spec.select.v = select i1 %or.cond789, i32 -2, i32 -1
  %spec.select = add i32 %spec.select.v, %div23
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.end20.if.end39_crit_edge
  %__q0.0 = phi i32 [ %div23, %if.end20.if.end39_crit_edge ], [ %spec.select, %if.then28 ]
  %mul41 = shl i32 %__q1.0, 16
  %or42 = or i32 %__q0.0, %mul41
  br label %if.end43

if.end43:                                         ; preds = %if.end39, %if.then3.if.end43_crit_edge
  %divisor_limb_inverted.0 = phi i32 [ %or42, %if.end39 ], [ -1, %if.then3.if.end43_crit_edge ]
  %sub44 = add i32 %dividend_size, -1
  %arrayidx = getelementptr i32, ptr %dividend_ptr, i32 %sub44
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %sub45 = sub nuw nsw i32 32, %0
  %shr46 = lshr i32 %4, %sub45
  %sub47 = add i32 %dividend_size, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub47)
  %cmp48812 = icmp sgt i32 %sub47, -1
  br i1 %cmp48812, label %if.end43.for.body_crit_edge, label %if.end43.do.body82_crit_edge

if.end43.do.body82_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body82

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %if.end43.for.body_crit_edge
  %i.0815 = phi i32 [ %dec81, %if.end71.for.body_crit_edge ], [ %sub47, %if.end43.for.body_crit_edge ]
  %n1.0814 = phi i32 [ %6, %if.end71.for.body_crit_edge ], [ %4, %if.end43.for.body_crit_edge ]
  %r.0813 = phi i32 [ %_r.1, %if.end71.for.body_crit_edge ], [ %shr46, %if.end43.for.body_crit_edge ]
  %arrayidx49 = getelementptr i32, ptr %dividend_ptr, i32 %i.0815
  %5 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx49, align 4
  %7 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %r.0813, i32 %divisor_limb_inverted.0) #8, !srcloc !31
  %asmresult = extractvalue { i32, i32 } %7, 0
  %add52 = add i32 %asmresult, %r.0813
  %8 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %add52, i32 %shl) #8, !srcloc !32
  %asmresult53 = extractvalue { i32, i32 } %8, 0
  %asmresult54 = extractvalue { i32, i32 } %8, 1
  %shl55 = shl i32 %n1.0814, %0
  %shr57 = lshr i32 %6, %sub45
  %or58 = or i32 %shr57, %shl55
  %9 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %r.0813, i32 %asmresult53, i32 %or58, i32 %asmresult54) #8, !srcloc !33
  %asmresult59 = extractvalue { i32, i32 } %9, 0
  %asmresult60 = extractvalue { i32, i32 } %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult59)
  %tobool61.not = icmp eq i32 %asmresult59, 0
  br i1 %tobool61.not, label %for.body.if.end71_crit_edge, label %if.then62

for.body.if.end71_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then62:                                        ; preds = %for.body
  %10 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult59, i32 0, i32 %asmresult60, i32 %shl) #8, !srcloc !34
  %asmresult63 = extractvalue { i32, i32 } %10, 0
  %asmresult64 = extractvalue { i32, i32 } %10, 1
  %inc = add i32 %add52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult63)
  %tobool65.not = icmp eq i32 %asmresult63, 0
  br i1 %tobool65.not, label %if.then62.if.end71_crit_edge, label %if.then66

if.then62.if.end71_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult63, i32 0, i32 %asmresult64, i32 %shl) #8, !srcloc !35
  %asmresult68 = extractvalue { i32, i32 } %11, 1
  %inc69 = add i32 %add52, 2
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.then62.if.end71_crit_edge, %for.body.if.end71_crit_edge
  %_q.0 = phi i32 [ %inc69, %if.then66 ], [ %inc, %if.then62.if.end71_crit_edge ], [ %add52, %for.body.if.end71_crit_edge ]
  %_r.0 = phi i32 [ %asmresult68, %if.then66 ], [ %asmresult64, %if.then62.if.end71_crit_edge ], [ %asmresult60, %for.body.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %_r.0, i32 %shl)
  %cmp72.not = icmp ult i32 %_r.0, %shl
  %not.cmp72.not = xor i1 %cmp72.not, true
  %inc75 = zext i1 %not.cmp72.not to i32
  %_q.1 = add i32 %_q.0, %inc75
  %sub74 = select i1 %cmp72.not, i32 0, i32 %shl
  %_r.1 = sub i32 %_r.0, %sub74
  %add77 = add nuw i32 %i.0815, 1
  %arrayidx78 = getelementptr i32, ptr %quot_ptr, i32 %add77
  %12 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %_q.1, ptr %arrayidx78, align 4
  %dec81 = add nsw i32 %i.0815, -1
  %cmp48 = icmp sgt i32 %i.0815, 0
  br i1 %cmp48, label %if.end71.for.body_crit_edge, label %if.end71.do.body82_crit_edge

if.end71.do.body82_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body82

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body82:                                        ; preds = %if.end71.do.body82_crit_edge, %if.end43.do.body82_crit_edge
  %r.0.lcssa = phi i32 [ %shr46, %if.end43.do.body82_crit_edge ], [ %_r.1, %if.end71.do.body82_crit_edge ]
  %n1.0.lcssa = phi i32 [ %4, %if.end43.do.body82_crit_edge ], [ %6, %if.end71.do.body82_crit_edge ]
  %13 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %r.0.lcssa, i32 %divisor_limb_inverted.0) #8, !srcloc !36
  %asmresult88 = extractvalue { i32, i32 } %13, 0
  %add90 = add i32 %asmresult88, %r.0.lcssa
  %14 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %add90, i32 %shl) #8, !srcloc !37
  %asmresult91 = extractvalue { i32, i32 } %14, 0
  %asmresult92 = extractvalue { i32, i32 } %14, 1
  %shl93 = shl i32 %n1.0.lcssa, %0
  %15 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %r.0.lcssa, i32 %asmresult91, i32 %shl93, i32 %asmresult92) #8, !srcloc !38
  %asmresult94 = extractvalue { i32, i32 } %15, 0
  %asmresult95 = extractvalue { i32, i32 } %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult94)
  %tobool96.not = icmp eq i32 %asmresult94, 0
  br i1 %tobool96.not, label %do.body82.if.end107_crit_edge, label %if.then97

do.body82.if.end107_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.then97:                                        ; preds = %do.body82
  %16 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult94, i32 0, i32 %asmresult95, i32 %shl) #8, !srcloc !39
  %asmresult98 = extractvalue { i32, i32 } %16, 0
  %asmresult99 = extractvalue { i32, i32 } %16, 1
  %inc100 = add i32 %add90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult98)
  %tobool101.not = icmp eq i32 %asmresult98, 0
  br i1 %tobool101.not, label %if.then97.if.end107_crit_edge, label %if.then102

if.then97.if.end107_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.then102:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #7
  %17 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult98, i32 0, i32 %asmresult99, i32 %shl) #8, !srcloc !40
  %asmresult104 = extractvalue { i32, i32 } %17, 1
  %inc105 = add i32 %add90, 2
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.then97.if.end107_crit_edge, %do.body82.if.end107_crit_edge
  %_q84.0 = phi i32 [ %inc105, %if.then102 ], [ %inc100, %if.then97.if.end107_crit_edge ], [ %add90, %do.body82.if.end107_crit_edge ]
  %_r85.0 = phi i32 [ %asmresult104, %if.then102 ], [ %asmresult99, %if.then97.if.end107_crit_edge ], [ %asmresult95, %do.body82.if.end107_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %_r85.0, i32 %shl)
  %cmp108.not = icmp ult i32 %_r85.0, %shl
  %not.cmp108.not = xor i1 %cmp108.not, true
  %inc111 = zext i1 %not.cmp108.not to i32
  %_q84.1 = add i32 %_q84.0, %inc111
  %sub110 = select i1 %cmp108.not, i32 0, i32 %shl
  %_r85.1 = sub i32 %_r85.0, %sub110
  br label %cleanup438.sink.split

if.else117:                                       ; preds = %if.then1
  %shl119.mask = and i32 %divisor_limb, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl119.mask)
  %tobool120.not = icmp eq i32 %shl119.mask, 0
  br i1 %tobool120.not, label %if.else117.if.end177_crit_edge, label %do.body123

if.else117.if.end177_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.body123:                                       ; preds = %if.else117
  %shr131 = lshr i32 %divisor_limb, 16
  %and132 = and i32 %divisor_limb, 65535
  %sub133 = sub i32 0, %divisor_limb
  %div136 = udiv i32 %sub133, %shr131
  %18 = mul i32 %div136, %shr131
  %rem134.decomposed = sub i32 %sub133, %18
  %mul137 = mul i32 %div136, %and132
  %mul138 = shl nuw i32 %rem134.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul138, i32 %mul137)
  %cmp140 = icmp ult i32 %mul138, %mul137
  br i1 %cmp140, label %if.then141, label %do.body123.if.end152_crit_edge

do.body123.if.end152_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152

if.then141:                                       ; preds = %do.body123
  %dec142 = add i32 %div136, -1
  %add143 = add i32 %mul138, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add143, i32 %divisor_limb)
  %cmp144.not = icmp uge i32 %add143, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add143, i32 %mul137)
  %cmp146 = icmp ult i32 %add143, %mul137
  %or.cond790 = and i1 %cmp144.not, %cmp146
  br i1 %or.cond790, label %if.then147, label %if.then141.if.end152_crit_edge

if.then141.if.end152_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152

if.then147:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #7
  %dec148 = add i32 %div136, -2
  %add149 = add i32 %add143, %divisor_limb
  br label %if.end152

if.end152:                                        ; preds = %if.then147, %if.then141.if.end152_crit_edge, %do.body123.if.end152_crit_edge
  %__q1126.0 = phi i32 [ %dec148, %if.then147 ], [ %dec142, %if.then141.if.end152_crit_edge ], [ %div136, %do.body123.if.end152_crit_edge ]
  %__r1128.0 = phi i32 [ %add149, %if.then147 ], [ %add143, %if.then141.if.end152_crit_edge ], [ %mul138, %do.body123.if.end152_crit_edge ]
  %sub153 = sub i32 %__r1128.0, %mul137
  %sub153.frozen = freeze i32 %sub153
  %div155 = udiv i32 %sub153.frozen, %shr131
  %19 = mul i32 %div155, %shr131
  %rem154.decomposed = sub i32 %sub153.frozen, %19
  %mul156 = mul i32 %div155, %and132
  %mul157 = shl nuw i32 %rem154.decomposed, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mul157, i32 %mul156)
  %cmp159 = icmp ult i32 %mul157, %mul156
  br i1 %cmp159, label %if.then160, label %if.end152.if.end171_crit_edge

if.end152.if.end171_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end171

if.then160:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  %add162 = add i32 %mul157, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add162, i32 %divisor_limb)
  %cmp163.not = icmp uge i32 %add162, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add162, i32 %mul156)
  %cmp165 = icmp ult i32 %add162, %mul156
  %or.cond791 = select i1 %cmp163.not, i1 %cmp165, i1 false
  %spec.select798.v = select i1 %or.cond791, i32 -2, i32 -1
  %spec.select798 = add i32 %spec.select798.v, %div155
  br label %if.end171

if.end171:                                        ; preds = %if.then160, %if.end152.if.end171_crit_edge
  %__q0127.0 = phi i32 [ %div155, %if.end152.if.end171_crit_edge ], [ %spec.select798, %if.then160 ]
  %mul173 = shl i32 %__q1126.0, 16
  %or174 = or i32 %__q0127.0, %mul173
  br label %if.end177

if.end177:                                        ; preds = %if.end171, %if.else117.if.end177_crit_edge
  %divisor_limb_inverted118.0 = phi i32 [ %or174, %if.end171 ], [ -1, %if.else117.if.end177_crit_edge ]
  %sub178 = add i32 %dividend_size, -1
  %arrayidx179 = getelementptr i32, ptr %dividend_ptr, i32 %sub178
  %20 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx179, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %divisor_limb)
  %cmp180.not = icmp ult i32 %21, %divisor_limb
  br i1 %cmp180.not, label %if.else182, label %if.end177.if.end185_crit_edge

if.end177.if.end185_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end185

if.else182:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  %dec183 = add i32 %dividend_size, -2
  %arrayidx184 = getelementptr i32, ptr %quot_ptr, i32 %sub178
  %22 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx184, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.else182, %if.end177.if.end185_crit_edge
  %r.1 = phi i32 [ %21, %if.else182 ], [ 0, %if.end177.if.end185_crit_edge ]
  %i.1 = phi i32 [ %dec183, %if.else182 ], [ %sub178, %if.end177.if.end185_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp187818 = icmp sgt i32 %i.1, -1
  br i1 %cmp187818, label %if.end185.for.body188_crit_edge, label %if.end185.cleanup438_crit_edge

if.end185.cleanup438_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup438

if.end185.for.body188_crit_edge:                  ; preds = %if.end185
  br label %for.body188

for.body188:                                      ; preds = %if.end214.for.body188_crit_edge, %if.end185.for.body188_crit_edge
  %i.2820 = phi i32 [ %dec224, %if.end214.for.body188_crit_edge ], [ %i.1, %if.end185.for.body188_crit_edge ]
  %r.2819 = phi i32 [ %_r193.1, %if.end214.for.body188_crit_edge ], [ %r.1, %if.end185.for.body188_crit_edge ]
  %arrayidx189 = getelementptr i32, ptr %dividend_ptr, i32 %i.2820
  %23 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx189, align 4
  %25 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %r.2819, i32 %divisor_limb_inverted118.0) #8, !srcloc !41
  %asmresult196 = extractvalue { i32, i32 } %25, 0
  %add198 = add i32 %asmresult196, %r.2819
  %26 = tail call { i32, i32 } asm "@ Inlined umul_ppmm\0Aumull $1, $0, $2, $3", "=&r,=&r,r,r,~{r0},~{r1}"(i32 %add198, i32 %divisor_limb) #8, !srcloc !42
  %asmresult199 = extractvalue { i32, i32 } %26, 0
  %asmresult200 = extractvalue { i32, i32 } %26, 1
  %27 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %r.2819, i32 %asmresult199, i32 %24, i32 %asmresult200) #8, !srcloc !43
  %asmresult201 = extractvalue { i32, i32 } %27, 0
  %asmresult202 = extractvalue { i32, i32 } %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult201)
  %tobool203.not = icmp eq i32 %asmresult201, 0
  br i1 %tobool203.not, label %for.body188.if.end214_crit_edge, label %if.then204

for.body188.if.end214_crit_edge:                  ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then204:                                       ; preds = %for.body188
  %28 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult201, i32 0, i32 %asmresult202, i32 %divisor_limb) #8, !srcloc !44
  %asmresult205 = extractvalue { i32, i32 } %28, 0
  %asmresult206 = extractvalue { i32, i32 } %28, 1
  %inc207 = add i32 %add198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult205)
  %tobool208.not = icmp eq i32 %asmresult205, 0
  br i1 %tobool208.not, label %if.then204.if.end214_crit_edge, label %if.then209

if.then204.if.end214_crit_edge:                   ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then209:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #7
  %29 = tail call { i32, i32 } asm "subs $1, $4, $5\0Asbc  $0, $2, $3", "=r,=&r,r,rI,r,rI"(i32 %asmresult205, i32 0, i32 %asmresult206, i32 %divisor_limb) #8, !srcloc !45
  %asmresult211 = extractvalue { i32, i32 } %29, 1
  %inc212 = add i32 %add198, 2
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %if.then204.if.end214_crit_edge, %for.body188.if.end214_crit_edge
  %_q192.0 = phi i32 [ %inc212, %if.then209 ], [ %inc207, %if.then204.if.end214_crit_edge ], [ %add198, %for.body188.if.end214_crit_edge ]
  %_r193.0 = phi i32 [ %asmresult211, %if.then209 ], [ %asmresult206, %if.then204.if.end214_crit_edge ], [ %asmresult202, %for.body188.if.end214_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %_r193.0, i32 %divisor_limb)
  %cmp215.not = icmp ult i32 %_r193.0, %divisor_limb
  %not.cmp215.not = xor i1 %cmp215.not, true
  %inc218 = zext i1 %not.cmp215.not to i32
  %_q192.1 = add i32 %_q192.0, %inc218
  %sub217 = select i1 %cmp215.not, i32 0, i32 %divisor_limb
  %_r193.1 = sub i32 %_r193.0, %sub217
  %arrayidx220 = getelementptr i32, ptr %quot_ptr, i32 %i.2820
  %30 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %_q192.1, ptr %arrayidx220, align 4
  %dec224 = add nsw i32 %i.2820, -1
  %cmp187 = icmp sgt i32 %i.2820, 0
  br i1 %cmp187, label %if.end214.for.body188_crit_edge, label %if.end214.cleanup438_crit_edge

if.end214.cleanup438_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup438

if.end214.for.body188_crit_edge:                  ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body188

if.else226:                                       ; preds = %if.end
  br i1 %tobool2.not, label %cleanup.cont, label %if.then230

if.then230:                                       ; preds = %if.else226
  %shl231 = shl i32 %divisor_limb, %0
  %sub232 = add i32 %dividend_size, -1
  %arrayidx233 = getelementptr i32, ptr %dividend_ptr, i32 %sub232
  %31 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx233, align 4
  %sub234 = sub nuw nsw i32 32, %0
  %shr235 = lshr i32 %32, %sub234
  %sub236 = add i32 %dividend_size, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub236)
  %cmp238803 = icmp sgt i32 %sub236, -1
  %shr249 = lshr i32 %shl231, 16
  %and250 = and i32 %shl231, 65535
  br i1 %cmp238803, label %if.then230.for.body239_crit_edge, label %if.then230.do.body308_crit_edge

if.then230.do.body308_crit_edge:                  ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body308

if.then230.for.body239_crit_edge:                 ; preds = %if.then230
  br label %for.body239

for.body239:                                      ; preds = %if.end297.for.body239_crit_edge, %if.then230.for.body239_crit_edge
  %i.3806 = phi i32 [ %dec306, %if.end297.for.body239_crit_edge ], [ %sub236, %if.then230.for.body239_crit_edge ]
  %n1.1805 = phi i32 [ %34, %if.end297.for.body239_crit_edge ], [ %32, %if.then230.for.body239_crit_edge ]
  %r.3804 = phi i32 [ %sub298, %if.end297.for.body239_crit_edge ], [ %shr235, %if.then230.for.body239_crit_edge ]
  %arrayidx240 = getelementptr i32, ptr %dividend_ptr, i32 %i.3806
  %33 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx240, align 4
  %r.3804.frozen = freeze i32 %r.3804
  %shr249.frozen = freeze i32 %shr249
  %div252 = udiv i32 %r.3804.frozen, %shr249.frozen
  %35 = mul i32 %div252, %shr249.frozen
  %rem251.decomposed = sub i32 %r.3804.frozen, %35
  %mul253 = mul i32 %div252, %and250
  %shl255 = shl i32 %n1.1805, %0
  %shr257 = lshr i32 %34, %sub234
  %or258 = or i32 %shr257, %shl255
  %or260 = tail call i32 @llvm.fshl.i32(i32 %rem251.decomposed, i32 %or258, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or260, i32 %mul253)
  %cmp261 = icmp ult i32 %or260, %mul253
  br i1 %cmp261, label %if.then262, label %for.body239.if.end273_crit_edge

for.body239.if.end273_crit_edge:                  ; preds = %for.body239
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end273

if.then262:                                       ; preds = %for.body239
  %dec263 = add i32 %div252, -1
  %add264 = add i32 %or260, %shl231
  call void @__sanitizer_cov_trace_cmp4(i32 %add264, i32 %shl231)
  %cmp265.not = icmp uge i32 %add264, %shl231
  call void @__sanitizer_cov_trace_cmp4(i32 %add264, i32 %mul253)
  %cmp267 = icmp ult i32 %add264, %mul253
  %or.cond792 = select i1 %cmp265.not, i1 %cmp267, i1 false
  br i1 %or.cond792, label %if.then268, label %if.then262.if.end273_crit_edge

if.then262.if.end273_crit_edge:                   ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end273

if.then268:                                       ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #7
  %dec269 = add i32 %div252, -2
  %add270 = add i32 %add264, %shl231
  br label %if.end273

if.end273:                                        ; preds = %if.then268, %if.then262.if.end273_crit_edge, %for.body239.if.end273_crit_edge
  %__q1244.0 = phi i32 [ %dec269, %if.then268 ], [ %dec263, %if.then262.if.end273_crit_edge ], [ %div252, %for.body239.if.end273_crit_edge ]
  %__r1246.0 = phi i32 [ %add270, %if.then268 ], [ %add264, %if.then262.if.end273_crit_edge ], [ %or260, %for.body239.if.end273_crit_edge ]
  %sub274 = sub i32 %__r1246.0, %mul253
  %sub274.frozen = freeze i32 %sub274
  %shr249.frozen834 = freeze i32 %shr249
  %div276 = udiv i32 %sub274.frozen, %shr249.frozen834
  %36 = mul i32 %div276, %shr249.frozen834
  %rem275.decomposed = sub i32 %sub274.frozen, %36
  %mul277 = mul i32 %div276, %and250
  %mul278 = shl nuw i32 %rem275.decomposed, 16
  %and283 = and i32 %or258, 65535
  %or284 = or i32 %mul278, %and283
  call void @__sanitizer_cov_trace_cmp4(i32 %or284, i32 %mul277)
  %cmp285 = icmp ult i32 %or284, %mul277
  br i1 %cmp285, label %if.then286, label %if.end273.if.end297_crit_edge

if.end273.if.end297_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end297

if.then286:                                       ; preds = %if.end273
  %dec287 = add i32 %div276, -1
  %add288 = add i32 %or284, %shl231
  call void @__sanitizer_cov_trace_cmp4(i32 %add288, i32 %shl231)
  %cmp289.not = icmp uge i32 %add288, %shl231
  call void @__sanitizer_cov_trace_cmp4(i32 %add288, i32 %mul277)
  %cmp291 = icmp ult i32 %add288, %mul277
  %or.cond793 = select i1 %cmp289.not, i1 %cmp291, i1 false
  br i1 %or.cond793, label %if.then292, label %if.then286.if.end297_crit_edge

if.then286.if.end297_crit_edge:                   ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end297

if.then292:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #7
  %dec293 = add i32 %div276, -2
  %add294 = add i32 %add288, %shl231
  br label %if.end297

if.end297:                                        ; preds = %if.then292, %if.then286.if.end297_crit_edge, %if.end273.if.end297_crit_edge
  %__q0245.0 = phi i32 [ %dec293, %if.then292 ], [ %dec287, %if.then286.if.end297_crit_edge ], [ %div276, %if.end273.if.end297_crit_edge ]
  %__r0247.0 = phi i32 [ %add294, %if.then292 ], [ %add288, %if.then286.if.end297_crit_edge ], [ %or284, %if.end273.if.end297_crit_edge ]
  %sub298 = sub i32 %__r0247.0, %mul277
  %mul299 = shl i32 %__q1244.0, 16
  %or300 = or i32 %__q0245.0, %mul299
  %add301 = add nuw i32 %i.3806, 1
  %arrayidx302 = getelementptr i32, ptr %quot_ptr, i32 %add301
  %37 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or300, ptr %arrayidx302, align 4
  %dec306 = add nsw i32 %i.3806, -1
  %cmp238 = icmp sgt i32 %i.3806, 0
  br i1 %cmp238, label %if.end297.for.body239_crit_edge, label %if.end297.do.body308_crit_edge

if.end297.do.body308_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body308

if.end297.for.body239_crit_edge:                  ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body239

do.body308:                                       ; preds = %if.end297.do.body308_crit_edge, %if.then230.do.body308_crit_edge
  %r.3.lcssa = phi i32 [ %shr235, %if.then230.do.body308_crit_edge ], [ %sub298, %if.end297.do.body308_crit_edge ]
  %n1.1.lcssa = phi i32 [ %32, %if.then230.do.body308_crit_edge ], [ %34, %if.end297.do.body308_crit_edge ]
  %r.3.lcssa.frozen = freeze i32 %r.3.lcssa
  %shr249.frozen835 = freeze i32 %shr249
  %div319 = udiv i32 %r.3.lcssa.frozen, %shr249.frozen835
  %38 = mul i32 %div319, %shr249.frozen835
  %rem318.decomposed = sub i32 %r.3.lcssa.frozen, %38
  %mul320 = mul i32 %div319, %and250
  %shl322 = shl i32 %n1.1.lcssa, %0
  %or324 = tail call i32 @llvm.fshl.i32(i32 %rem318.decomposed, i32 %shl322, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or324, i32 %mul320)
  %cmp325 = icmp ult i32 %or324, %mul320
  br i1 %cmp325, label %if.then326, label %do.body308.if.end337_crit_edge

do.body308.if.end337_crit_edge:                   ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end337

if.then326:                                       ; preds = %do.body308
  %dec327 = add i32 %div319, -1
  %add328 = add i32 %or324, %shl231
  call void @__sanitizer_cov_trace_cmp4(i32 %add328, i32 %shl231)
  %cmp329.not = icmp uge i32 %add328, %shl231
  call void @__sanitizer_cov_trace_cmp4(i32 %add328, i32 %mul320)
  %cmp331 = icmp ult i32 %add328, %mul320
  %or.cond794 = select i1 %cmp329.not, i1 %cmp331, i1 false
  br i1 %or.cond794, label %if.then332, label %if.then326.if.end337_crit_edge

if.then326.if.end337_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end337

if.then332:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #7
  %dec333 = add i32 %div319, -2
  %add334 = add i32 %add328, %shl231
  br label %if.end337

if.end337:                                        ; preds = %if.then332, %if.then326.if.end337_crit_edge, %do.body308.if.end337_crit_edge
  %__q1311.0 = phi i32 [ %dec333, %if.then332 ], [ %dec327, %if.then326.if.end337_crit_edge ], [ %div319, %do.body308.if.end337_crit_edge ]
  %__r1313.0 = phi i32 [ %add334, %if.then332 ], [ %add328, %if.then326.if.end337_crit_edge ], [ %or324, %do.body308.if.end337_crit_edge ]
  %sub338 = sub i32 %__r1313.0, %mul320
  %sub338.frozen = freeze i32 %sub338
  %shr249.frozen836 = freeze i32 %shr249
  %div340 = udiv i32 %sub338.frozen, %shr249.frozen836
  %39 = mul i32 %div340, %shr249.frozen836
  %rem339.decomposed = sub i32 %sub338.frozen, %39
  %mul341 = mul i32 %div340, %and250
  %mul342 = shl nuw i32 %rem339.decomposed, 16
  %and344 = and i32 %shl322, 65535
  %or345 = or i32 %mul342, %and344
  call void @__sanitizer_cov_trace_cmp4(i32 %or345, i32 %mul341)
  %cmp346 = icmp ult i32 %or345, %mul341
  br i1 %cmp346, label %if.then347, label %if.end337.cleanup367_crit_edge

if.end337.cleanup367_crit_edge:                   ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup367

if.then347:                                       ; preds = %if.end337
  %dec348 = add i32 %div340, -1
  %add349 = add i32 %or345, %shl231
  call void @__sanitizer_cov_trace_cmp4(i32 %add349, i32 %shl231)
  %cmp350.not = icmp uge i32 %add349, %shl231
  call void @__sanitizer_cov_trace_cmp4(i32 %add349, i32 %mul341)
  %cmp352 = icmp ult i32 %add349, %mul341
  %or.cond795 = select i1 %cmp350.not, i1 %cmp352, i1 false
  br i1 %or.cond795, label %if.then353, label %if.then347.cleanup367_crit_edge

if.then347.cleanup367_crit_edge:                  ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup367

if.then353:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #7
  %dec354 = add i32 %div340, -2
  %add355 = add i32 %add349, %shl231
  br label %cleanup367

cleanup367:                                       ; preds = %if.then353, %if.then347.cleanup367_crit_edge, %if.end337.cleanup367_crit_edge
  %__q0312.0 = phi i32 [ %dec354, %if.then353 ], [ %dec348, %if.then347.cleanup367_crit_edge ], [ %div340, %if.end337.cleanup367_crit_edge ]
  %__r0314.0 = phi i32 [ %add355, %if.then353 ], [ %add349, %if.then347.cleanup367_crit_edge ], [ %or345, %if.end337.cleanup367_crit_edge ]
  %sub359 = sub i32 %__r0314.0, %mul341
  %mul360 = shl i32 %__q1311.0, 16
  %or361 = or i32 %__q0312.0, %mul360
  br label %cleanup438.sink.split

cleanup.cont:                                     ; preds = %if.else226
  %.pre = add i32 %dividend_size, -1
  %arrayidx369 = getelementptr i32, ptr %dividend_ptr, i32 %.pre
  %40 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx369, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %divisor_limb)
  %cmp370.not = icmp ult i32 %41, %divisor_limb
  br i1 %cmp370.not, label %if.else372, label %cleanup.cont.if.end375_crit_edge

cleanup.cont.if.end375_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end375

if.else372:                                       ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  %dec373 = add i32 %dividend_size, -2
  %arrayidx374 = getelementptr i32, ptr %quot_ptr, i32 %.pre
  %42 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx374, align 4
  br label %if.end375

if.end375:                                        ; preds = %if.else372, %cleanup.cont.if.end375_crit_edge
  %r.4 = phi i32 [ %41, %if.else372 ], [ 0, %cleanup.cont.if.end375_crit_edge ]
  %i.4 = phi i32 [ %dec373, %if.else372 ], [ %.pre, %cleanup.cont.if.end375_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.4)
  %cmp377808 = icmp sgt i32 %i.4, -1
  br i1 %cmp377808, label %for.body378.lr.ph, label %if.end375.cleanup438_crit_edge

if.end375.cleanup438_crit_edge:                   ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup438

for.body378.lr.ph:                                ; preds = %if.end375
  %shr388 = lshr i32 %divisor_limb, 16
  %and389 = and i32 %divisor_limb, 65535
  br label %for.body378

for.body378:                                      ; preds = %if.end428.for.body378_crit_edge, %for.body378.lr.ph
  %i.5810 = phi i32 [ %i.4, %for.body378.lr.ph ], [ %dec436, %if.end428.for.body378_crit_edge ]
  %r.5809 = phi i32 [ %r.4, %for.body378.lr.ph ], [ %sub429, %if.end428.for.body378_crit_edge ]
  %arrayidx379 = getelementptr i32, ptr %dividend_ptr, i32 %i.5810
  %43 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx379, align 4
  %r.5809.frozen = freeze i32 %r.5809
  %div391 = udiv i32 %r.5809.frozen, %shr388
  %45 = mul i32 %div391, %shr388
  %rem390.decomposed = sub i32 %r.5809.frozen, %45
  %mul392 = mul i32 %div391, %and389
  %or395 = tail call i32 @llvm.fshl.i32(i32 %rem390.decomposed, i32 %44, i32 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %or395, i32 %mul392)
  %cmp396 = icmp ult i32 %or395, %mul392
  br i1 %cmp396, label %if.then397, label %for.body378.if.end408_crit_edge

for.body378.if.end408_crit_edge:                  ; preds = %for.body378
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end408

if.then397:                                       ; preds = %for.body378
  %dec398 = add i32 %div391, -1
  %add399 = add i32 %or395, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add399, i32 %divisor_limb)
  %cmp400.not = icmp uge i32 %add399, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add399, i32 %mul392)
  %cmp402 = icmp ult i32 %add399, %mul392
  %or.cond796 = select i1 %cmp400.not, i1 %cmp402, i1 false
  br i1 %or.cond796, label %if.then403, label %if.then397.if.end408_crit_edge

if.then397.if.end408_crit_edge:                   ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end408

if.then403:                                       ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #7
  %dec404 = add i32 %div391, -2
  %add405 = add i32 %add399, %divisor_limb
  br label %if.end408

if.end408:                                        ; preds = %if.then403, %if.then397.if.end408_crit_edge, %for.body378.if.end408_crit_edge
  %__q1383.0 = phi i32 [ %dec404, %if.then403 ], [ %dec398, %if.then397.if.end408_crit_edge ], [ %div391, %for.body378.if.end408_crit_edge ]
  %__r1385.0 = phi i32 [ %add405, %if.then403 ], [ %add399, %if.then397.if.end408_crit_edge ], [ %or395, %for.body378.if.end408_crit_edge ]
  %sub409 = sub i32 %__r1385.0, %mul392
  %sub409.frozen = freeze i32 %sub409
  %div411 = udiv i32 %sub409.frozen, %shr388
  %46 = mul i32 %div411, %shr388
  %rem410.decomposed = sub i32 %sub409.frozen, %46
  %mul412 = mul i32 %div411, %and389
  %mul413 = shl nuw i32 %rem410.decomposed, 16
  %and414 = and i32 %44, 65535
  %or415 = or i32 %mul413, %and414
  call void @__sanitizer_cov_trace_cmp4(i32 %or415, i32 %mul412)
  %cmp416 = icmp ult i32 %or415, %mul412
  br i1 %cmp416, label %if.then417, label %if.end408.if.end428_crit_edge

if.end408.if.end428_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end428

if.then417:                                       ; preds = %if.end408
  %dec418 = add i32 %div411, -1
  %add419 = add i32 %or415, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add419, i32 %divisor_limb)
  %cmp420.not = icmp uge i32 %add419, %divisor_limb
  call void @__sanitizer_cov_trace_cmp4(i32 %add419, i32 %mul412)
  %cmp422 = icmp ult i32 %add419, %mul412
  %or.cond797 = select i1 %cmp420.not, i1 %cmp422, i1 false
  br i1 %or.cond797, label %if.then423, label %if.then417.if.end428_crit_edge

if.then417.if.end428_crit_edge:                   ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end428

if.then423:                                       ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #7
  %dec424 = add i32 %div411, -2
  %add425 = add i32 %add419, %divisor_limb
  br label %if.end428

if.end428:                                        ; preds = %if.then423, %if.then417.if.end428_crit_edge, %if.end408.if.end428_crit_edge
  %__q0384.0 = phi i32 [ %dec424, %if.then423 ], [ %dec418, %if.then417.if.end428_crit_edge ], [ %div411, %if.end408.if.end428_crit_edge ]
  %__r0386.0 = phi i32 [ %add425, %if.then423 ], [ %add419, %if.then417.if.end428_crit_edge ], [ %or415, %if.end408.if.end428_crit_edge ]
  %sub429 = sub i32 %__r0386.0, %mul412
  %mul430 = shl i32 %__q1383.0, 16
  %or431 = or i32 %__q0384.0, %mul430
  %arrayidx432 = getelementptr i32, ptr %quot_ptr, i32 %i.5810
  %47 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or431, ptr %arrayidx432, align 4
  %dec436 = add nsw i32 %i.5810, -1
  %cmp377 = icmp sgt i32 %i.5810, 0
  br i1 %cmp377, label %if.end428.for.body378_crit_edge, label %if.end428.cleanup438_crit_edge

if.end428.cleanup438_crit_edge:                   ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup438

if.end428.for.body378_crit_edge:                  ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body378

cleanup438.sink.split:                            ; preds = %cleanup367, %if.end107
  %or361.sink = phi i32 [ %or361, %cleanup367 ], [ %_q84.1, %if.end107 ]
  %sub359.sink = phi i32 [ %sub359, %cleanup367 ], [ %_r85.1, %if.end107 ]
  %48 = ptrtoint ptr %quot_ptr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or361.sink, ptr %quot_ptr, align 4
  %shr365 = lshr i32 %sub359.sink, %0
  br label %cleanup438

cleanup438:                                       ; preds = %cleanup438.sink.split, %if.end428.cleanup438_crit_edge, %if.end375.cleanup438_crit_edge, %if.end214.cleanup438_crit_edge, %if.end185.cleanup438_crit_edge, %entry.cleanup438_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup438_crit_edge ], [ %r.1, %if.end185.cleanup438_crit_edge ], [ %r.4, %if.end375.cleanup438_crit_edge ], [ %shr365, %cleanup438.sink.split ], [ %_r193.1, %if.end214.cleanup438_crit_edge ], [ %sub429, %if.end428.cleanup438_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i32 0, i32 33}
!10 = !{i64 2153676475, i64 2153676504}
!11 = !{i64 2153676671, i64 2153676700}
!12 = !{i64 2153676856, i64 2153676881}
!13 = !{i64 2153677141, i64 2153677166}
!14 = !{i64 2153677359, i64 2153677384}
!15 = !{i64 2153678331, i64 2153678360}
!16 = !{i64 2153678527, i64 2153678556}
!17 = !{i64 2153678712, i64 2153678737}
!18 = !{i64 2153678948, i64 2153678973}
!19 = !{i64 2153679166, i64 2153679191}
!20 = !{i64 2153681626, i64 2153681655}
!21 = !{i64 2153681822, i64 2153681851}
!22 = !{i64 2153682007, i64 2153682032}
!23 = !{i64 2153682220, i64 2153682245}
!24 = !{i64 2153682438, i64 2153682463}
!25 = !{i64 2153690221, i64 2153690246}
!26 = !{i64 2153690424, i64 2153690449}
!27 = !{i64 2153692004, i64 2153692033}
!28 = !{i64 2153692172, i64 2153692197}
!29 = !{i64 2153692374, i64 2153692399}
!30 = !{i64 2153694114, i64 2153694143}
!31 = !{i64 2153696686, i64 2153696715}
!32 = !{i64 2153696882, i64 2153696911}
!33 = !{i64 2153697067, i64 2153697092}
!34 = !{i64 2153697352, i64 2153697377}
!35 = !{i64 2153697570, i64 2153697595}
!36 = !{i64 2153698548, i64 2153698577}
!37 = !{i64 2153698744, i64 2153698773}
!38 = !{i64 2153698929, i64 2153698954}
!39 = !{i64 2153699165, i64 2153699190}
!40 = !{i64 2153699383, i64 2153699408}
!41 = !{i64 2153701849, i64 2153701878}
!42 = !{i64 2153702045, i64 2153702074}
!43 = !{i64 2153702230, i64 2153702255}
!44 = !{i64 2153702443, i64 2153702468}
!45 = !{i64 2153702661, i64 2153702686}
