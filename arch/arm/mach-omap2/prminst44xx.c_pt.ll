; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/prminst44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prminst44xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@_prm_bases = internal global { [6 x %struct.omap_domain_base], [56 x i8] } zeroinitializer, align 32
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@prcm_mpu_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@prm_dev_inst = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"_prm_bases\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 29, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"prm_dev_inst\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../arch/arm/mach-omap2/prminst44xx.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 31, i32 12 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @_prm_bases, ptr @prm_dev_inst], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_prm_bases to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_dev_inst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap_prm_base_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 1), ptr @prm_base, i32 12)
  %1 = call ptr @memcpy(ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 5), ptr @prcm_mpu_base, i32 12)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap4_prmst_get_prm_dev_inst() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @prm_dev_inst, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap4_prminst_set_prm_dev_inst(i32 noundef %dev_inst) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %dev_inst, ptr @prm_dev_inst, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  br i1 %1, label %entry.do.body8_crit_edge, label %lor.rhs, !prof !13

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

lor.rhs:                                          ; preds = %entry
  %conv = zext i8 %part to i32
  %va = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %conv, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.rhs.do.body8_crit_edge, label %do.end11, !prof !14

lor.rhs.do.body8_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

do.body8:                                         ; preds = %lor.rhs.do.body8_crit_edge, %entry.do.body8_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

do.end11:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %conv15 = sext i16 %inst to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv15
  %conv16 = zext i16 %idx to i32
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %conv16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !16
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4_prminst_write_inst_reg(i32 noundef %val, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  br i1 %1, label %entry.do.body8_crit_edge, label %lor.rhs, !prof !13

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

lor.rhs:                                          ; preds = %entry
  %conv = zext i8 %part to i32
  %va = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %conv, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.rhs.do.body8_crit_edge, label %do.end11, !prof !14

lor.rhs.do.body8_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

do.body8:                                         ; preds = %lor.rhs.do.body8_crit_edge, %entry.do.body8_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

do.end11:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %val)
  %conv15 = sext i16 %inst to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv15
  %conv16 = zext i16 %idx to i32
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %conv16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %4) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef %mask, i32 noundef %bits, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  br i1 %1, label %entry.do.body8.i_crit_edge, label %lor.rhs.i, !prof !13

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

lor.rhs.i:                                        ; preds = %entry
  %conv.i = zext i8 %part to i32
  %va.i = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %conv.i, i32 1
  %2 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.rhs.i.do.body8.i_crit_edge, label %lor.rhs.i10, !prof !14

lor.rhs.i.do.body8.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

do.body8.i:                                       ; preds = %lor.rhs.i.do.body8.i_crit_edge, %entry.do.body8.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

lor.rhs.i10:                                      ; preds = %lor.rhs.i
  %conv15.i = sext i16 %inst to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv15.i
  %conv16.i = zext i16 %idx to i32
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 %conv16.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !16
  %5 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va.i, align 4
  %tobool.not.i9 = icmp eq ptr %6, null
  br i1 %tobool.not.i9, label %do.body8.i11, label %omap4_prminst_write_inst_reg.exit, !prof !14

do.body8.i11:                                     ; preds = %lor.rhs.i10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

omap4_prminst_write_inst_reg.exit:                ; preds = %lor.rhs.i10
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %neg = xor i32 %mask, -1
  %and = and i32 %7, %neg
  %or = or i32 %and, %bits
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i13 = getelementptr i8, ptr %6, i32 %conv15.i
  %add.ptr17.i15 = getelementptr i8, ptr %add.ptr.i13, i32 %conv16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i15, i32 %8) #5, !srcloc !18
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_is_hardreset_asserted(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %rstctrl_offs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  br i1 %1, label %entry.do.body8.i_crit_edge, label %lor.rhs.i, !prof !13

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

lor.rhs.i:                                        ; preds = %entry
  %conv.i = zext i8 %part to i32
  %va.i = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %conv.i, i32 1
  %2 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.rhs.i.do.body8.i_crit_edge, label %omap4_prminst_read_inst_reg.exit, !prof !14

lor.rhs.i.do.body8.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

do.body8.i:                                       ; preds = %lor.rhs.i.do.body8.i_crit_edge, %entry.do.body8.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

omap4_prminst_read_inst_reg.exit:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv15.i = sext i16 %inst to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv15.i
  %conv16.i = zext i16 %rstctrl_offs to i32
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 %conv16.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !16
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %conv = zext i8 %shift to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %5, %shl
  %shr = lshr i32 %and, %conv
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_assert_hardreset(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %rstctrl_offs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  br i1 %1, label %entry.do.body8.i.i_crit_edge, label %lor.rhs.i.i, !prof !13

entry.do.body8.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i

lor.rhs.i.i:                                      ; preds = %entry
  %conv.i.i = zext i8 %part to i32
  %va.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %conv.i.i, i32 1
  %2 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i.do.body8.i.i_crit_edge, label %lor.rhs.i10.i, !prof !14

lor.rhs.i.i.do.body8.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i

do.body8.i.i:                                     ; preds = %lor.rhs.i.i.do.body8.i.i_crit_edge, %entry.do.body8.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

lor.rhs.i10.i:                                    ; preds = %lor.rhs.i.i
  %conv15.i.i = sext i16 %inst to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv15.i.i
  %conv16.i.i = zext i16 %rstctrl_offs to i32
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv16.i.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #5, !srcloc !16
  %5 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i9.i = icmp eq ptr %6, null
  br i1 %tobool.not.i9.i, label %do.body8.i11.i, label %omap4_prminst_rmw_inst_reg_bits.exit, !prof !14

do.body8.i11.i:                                   ; preds = %lor.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

omap4_prminst_rmw_inst_reg_bits.exit:             ; preds = %lor.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %shift to i32
  %shl = shl nuw i32 1, %conv
  %7 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %or.i = or i32 %7, %shl
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %add.ptr.i13.i = getelementptr i8, ptr %6, i32 %conv15.i.i
  %add.ptr17.i15.i = getelementptr i8, ptr %add.ptr.i13.i, i32 %conv16.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i15.i, i32 %8) #5, !srcloc !18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_prminst_deassert_hardreset(i8 noundef zeroext %shift, i8 noundef zeroext %st_shift, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %rstctrl_offs, i16 noundef zeroext %rstst_offs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  br i1 %1, label %entry.do.body8.i.i_crit_edge, label %lor.rhs.i.i, !prof !13

entry.do.body8.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i

lor.rhs.i.i:                                      ; preds = %entry
  %conv.i.i = zext i8 %part to i32
  %va.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 %conv.i.i, i32 1
  %2 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i.do.body8.i.i_crit_edge, label %omap4_prminst_is_hardreset_asserted.exit, !prof !14

lor.rhs.i.i.do.body8.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i

do.body8.i.i:                                     ; preds = %lor.rhs.i.i.do.body8.i.i_crit_edge, %entry.do.body8.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

omap4_prminst_is_hardreset_asserted.exit:         ; preds = %lor.rhs.i.i
  %conv15.i.i = sext i16 %inst to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv15.i.i
  %conv16.i.i = zext i16 %rstctrl_offs to i32
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv16.i.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #5, !srcloc !16
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %conv.i = zext i8 %shift to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %5, %shl.i
  %shr.i = lshr i32 %and.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp = icmp eq i32 %shr.i, 0
  br i1 %cmp, label %omap4_prminst_is_hardreset_asserted.exit.cleanup_crit_edge, label %lor.rhs.i.i30

omap4_prminst_is_hardreset_asserted.exit.cleanup_crit_edge: ; preds = %omap4_prminst_is_hardreset_asserted.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs.i.i30:                                    ; preds = %omap4_prminst_is_hardreset_asserted.exit
  %conv1 = zext i8 %st_shift to i32
  %shl2 = shl nuw i32 1, %conv1
  %6 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i.i29 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i29, label %do.body8.i.i31, label %lor.rhs.i10.i, !prof !14

do.body8.i.i31:                                   ; preds = %lor.rhs.i.i30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

lor.rhs.i10.i:                                    ; preds = %lor.rhs.i.i30
  %add.ptr.i.i33 = getelementptr i8, ptr %7, i32 %conv15.i.i
  %conv16.i.i34 = zext i16 %rstst_offs to i32
  %add.ptr17.i.i35 = getelementptr i8, ptr %add.ptr.i.i33, i32 %conv16.i.i34
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i35) #5, !srcloc !16
  %9 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i9.i = icmp eq ptr %10, null
  br i1 %tobool.not.i9.i, label %do.body8.i11.i, label %lor.rhs.i.i39, !prof !14

do.body8.i11.i:                                   ; preds = %lor.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

lor.rhs.i.i39:                                    ; preds = %lor.rhs.i10.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl2) #5
  %add.ptr.i13.i = getelementptr i8, ptr %10, i32 %conv15.i.i
  %add.ptr17.i15.i = getelementptr i8, ptr %add.ptr.i13.i, i32 %conv16.i.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i15.i, i32 %11) #5, !srcloc !18
  %12 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i.i38 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i38, label %do.body8.i.i40, label %lor.rhs.i10.i46, !prof !14

do.body8.i.i40:                                   ; preds = %lor.rhs.i.i39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

lor.rhs.i10.i46:                                  ; preds = %lor.rhs.i.i39
  %add.ptr.i.i42 = getelementptr i8, ptr %13, i32 %conv15.i.i
  %add.ptr17.i.i44 = getelementptr i8, ptr %add.ptr.i.i42, i32 %conv16.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i44) #5, !srcloc !16
  %15 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i9.i45 = icmp eq ptr %16, null
  br i1 %tobool.not.i9.i45, label %do.body8.i11.i47, label %omap4_prminst_rmw_inst_reg_bits.exit51, !prof !14

do.body8.i11.i47:                                 ; preds = %lor.rhs.i10.i46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

omap4_prminst_rmw_inst_reg_bits.exit51:           ; preds = %lor.rhs.i10.i46
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %neg.i = xor i32 %shl.i, -1
  %and.i48 = and i32 %17, %neg.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i48) #5
  %add.ptr.i13.i49 = getelementptr i8, ptr %16, i32 %conv15.i.i
  %add.ptr17.i15.i50 = getelementptr i8, ptr %add.ptr.i13.i49, i32 %conv16.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i15.i50, i32 %18) #5, !srcloc !18
  br label %lor.rhs.i.i55

lor.rhs.i.i55:                                    ; preds = %if.end10.lor.rhs.i.i55_crit_edge, %omap4_prminst_rmw_inst_reg_bits.exit51
  %c.067 = phi i32 [ 0, %omap4_prminst_rmw_inst_reg_bits.exit51 ], [ %inc, %if.end10.lor.rhs.i.i55_crit_edge ]
  %19 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i.i54 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i54, label %do.body8.i.i56, label %omap4_prminst_is_hardreset_asserted.exit65, !prof !14

do.body8.i.i56:                                   ; preds = %lor.rhs.i.i55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

omap4_prminst_is_hardreset_asserted.exit65:       ; preds = %lor.rhs.i.i55
  %add.ptr.i.i58 = getelementptr i8, ptr %20, i32 %conv15.i.i
  %add.ptr17.i.i60 = getelementptr i8, ptr %add.ptr.i.i58, i32 %conv16.i.i34
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i60) #5, !srcloc !16
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %and.i63 = and i32 %22, %shl2
  %shr.i64 = lshr i32 %and.i63, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i64)
  %tobool.not = icmp eq i32 %shr.i64, 0
  br i1 %tobool.not, label %if.end10, label %for.end

if.end10:                                         ; preds = %omap4_prminst_is_hardreset_asserted.exit65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %c.067, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end10.for.end.thread_crit_edge, label %if.end10.lor.rhs.i.i55_crit_edge

if.end10.lor.rhs.i.i55_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i.i55

if.end10.for.end.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

for.end:                                          ; preds = %omap4_prminst_is_hardreset_asserted.exit65
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %c.067)
  %cmp11 = icmp eq i32 %c.067, 10000
  br i1 %cmp11, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end10.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %omap4_prminst_is_hardreset_asserted.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %omap4_prminst_is_hardreset_asserted.exit.cleanup_crit_edge ], [ -16, %for.end.thread ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4_prminst_global_warm_sw_reset() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @prm_dev_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 1, i32 1), align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body8.i, label %omap4_prminst_read_inst_reg.exit, !prof !14

do.body8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

omap4_prminst_read_inst_reg.exit:                 ; preds = %if.end
  %sext = shl i32 %0, 16
  %conv15.i = ashr exact i32 %sext, 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv15.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !16
  %3 = load ptr, ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 1, i32 1), align 4
  %tobool.not.i10 = icmp eq ptr %3, null
  br i1 %tobool.not.i10, label %do.body8.i11, label %omap4_prminst_write_inst_reg.exit, !prof !14

do.body8.i11:                                     ; preds = %omap4_prminst_read_inst_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

omap4_prminst_write_inst_reg.exit:                ; preds = %omap4_prminst_read_inst_reg.exit
  %4 = or i32 %2, 16777216
  %add.ptr.i13 = getelementptr i8, ptr %3, i32 %conv15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %4) #5, !srcloc !18
  %5 = load ptr, ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_prm_bases, i32 0, i32 1, i32 1), align 4
  %tobool.not.i14 = icmp eq ptr %5, null
  br i1 %tobool.not.i14, label %do.body8.i15, label %omap4_prminst_read_inst_reg.exit18, !prof !14

do.body8.i15:                                     ; preds = %omap4_prminst_write_inst_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/prminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

omap4_prminst_read_inst_reg.exit18:               ; preds = %omap4_prminst_write_inst_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 %conv15.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #5, !srcloc !16
  br label %cleanup

cleanup:                                          ; preds = %omap4_prminst_read_inst_reg.exit18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @_prm_bases, !1, !"_prm_bases", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/prminst44xx.c", i32 29, i32 32}
!2 = !{ptr @prm_dev_inst, !3, !"prm_dev_inst", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/prminst44xx.c", i32 31, i32 12}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 4001, i32 4000000}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2155771479, i64 2155771976, i64 2155771516, i64 2155771572, i64 2155771606, i64 2155771630, i64 2155771671, i64 2155771692, i64 2155771720, i64 2155771754}
!16 = !{i64 1251745}
!17 = !{i64 2155773568, i64 2155774065, i64 2155773605, i64 2155773661, i64 2155773695, i64 2155773719, i64 2155773760, i64 2155773781, i64 2155773809, i64 2155773843}
!18 = !{i64 1251327}
