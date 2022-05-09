; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/cminst44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cminst44xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap4_clkdm_operations = dso_local global { %struct.clkdm_ops, [32 x i8] } { %struct.clkdm_ops { ptr @omap4_clkdm_add_wkup_sleep_dep, ptr @omap4_clkdm_del_wkup_sleep_dep, ptr @omap4_clkdm_read_wkup_sleep_dep, ptr @omap4_clkdm_clear_all_wkup_sleep_deps, ptr @omap4_clkdm_add_wkup_sleep_dep, ptr @omap4_clkdm_del_wkup_sleep_dep, ptr @omap4_clkdm_read_wkup_sleep_dep, ptr @omap4_clkdm_clear_all_wkup_sleep_deps, ptr @omap4_clkdm_sleep, ptr @omap4_clkdm_wakeup, ptr @omap4_clkdm_allow_idle, ptr @omap4_clkdm_deny_idle, ptr @omap4_clkdm_clk_enable, ptr @omap4_clkdm_clk_disable, ptr @omap4_clkdm_save_context, ptr @omap4_clkdm_restore_context }, [32 x i8] zeroinitializer }, align 32
@am43xx_clkdm_operations = dso_local global { %struct.clkdm_ops, [32 x i8] } { %struct.clkdm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap4_clkdm_sleep, ptr @omap4_clkdm_wakeup, ptr @omap4_clkdm_allow_idle, ptr @omap4_clkdm_deny_idle, ptr @omap4_clkdm_clk_enable, ptr @omap4_clkdm_clk_disable, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@omap4xxx_cm_ll_data = internal constant { %struct.cm_ll_data, [40 x i8] } { %struct.cm_ll_data { ptr null, ptr @omap4_cminst_wait_module_ready, ptr @omap4_cminst_wait_module_idle, ptr @omap4_cminst_module_enable, ptr @omap4_cminst_module_disable, ptr @omap4_cminst_xlate_clkctrl }, [40 x i8] zeroinitializer }, align 32
@__exitcall_omap4_cm_exit = internal global ptr @omap4_cm_exit, section ".exitcall.exit", align 4
@_cm_bases = internal global { [6 x %struct.omap_domain_base], [56 x i8] } zeroinitializer, align 32
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@cm2_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@prcm_mpu_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"omap4_clkdm_operations\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 522, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"am43xx_clkdm_operations\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 541, i32 18 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"omap4xxx_cm_ll_data\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 550, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"_cm_bases\00", align 1
@___asan_gen_.11 = private constant [36 x i8] c"../arch/arm/mach-omap2/cminst44xx.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 55, i32 32 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__exitcall_omap4_cm_exit, ptr @omap4_cm_exit, ptr @omap4_clkdm_operations, ptr @am43xx_clkdm_operations, ptr @omap4xxx_cm_ll_data, ptr @_cm_bases], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_clkdm_operations to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_clkdm_operations to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4xxx_cm_ll_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cm_bases to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_add_wkup_sleep_dep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %0 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dep_bit, align 4
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 6
  %2 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 7
  %4 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 8
  %6 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %clkdm_offs, align 4
  %add = add i16 %7, 4
  %8 = add i8 %3, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %8)
  %9 = icmp ult i8 %8, -5
  br i1 %9, label %entry.do.body8.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !19

entry.do.body8.i.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

lor.rhs.i.i.i:                                    ; preds = %entry
  %conv.i.i.i = zext i8 %3 to i32
  %va.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i, i32 1
  %10 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, label %lor.rhs.i4.i.i, !prof !20

lor.rhs.i.i.i.do.body8.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, %entry.do.body8.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i4.i.i:                                   ; preds = %lor.rhs.i.i.i
  %conv15.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv15.i.i.i
  %conv16.i.i.i = zext i16 %add to i32
  %add.ptr17.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !22
  %13 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i3.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i3.i.i, label %do.body8.i5.i.i, label %omap4_cminst_set_inst_reg_bits.exit, !prof !20

do.body8.i5.i.i:                                  ; preds = %lor.rhs.i4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_set_inst_reg_bits.exit:              ; preds = %lor.rhs.i4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %or.i.i = or i32 %15, %shl
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %add.ptr.i7.i.i = getelementptr i8, ptr %14, i32 %conv15.i.i.i
  %add.ptr17.i9.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 %conv16.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i9.i.i, i32 %16) #5, !srcloc !24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_del_wkup_sleep_dep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %0 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dep_bit, align 4
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 6
  %2 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 7
  %4 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 8
  %6 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %clkdm_offs, align 4
  %add = add i16 %7, 4
  %8 = add i8 %3, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %8)
  %9 = icmp ult i8 %8, -5
  br i1 %9, label %entry.do.body8.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !19

entry.do.body8.i.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

lor.rhs.i.i.i:                                    ; preds = %entry
  %conv.i.i.i = zext i8 %3 to i32
  %va.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i, i32 1
  %10 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, label %lor.rhs.i4.i.i, !prof !20

lor.rhs.i.i.i.do.body8.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, %entry.do.body8.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i4.i.i:                                   ; preds = %lor.rhs.i.i.i
  %conv15.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv15.i.i.i
  %conv16.i.i.i = zext i16 %add to i32
  %add.ptr17.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !22
  %13 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i3.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i3.i.i, label %do.body8.i5.i.i, label %omap4_cminst_clear_inst_reg_bits.exit, !prof !20

do.body8.i5.i.i:                                  ; preds = %lor.rhs.i4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clear_inst_reg_bits.exit:            ; preds = %lor.rhs.i4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %15, %neg.i.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %add.ptr.i7.i.i = getelementptr i8, ptr %14, i32 %conv15.i.i.i
  %add.ptr17.i9.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 %conv16.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i9.i.i, i32 %16) #5, !srcloc !24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_read_wkup_sleep_dep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 6
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 7
  %2 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 8
  %4 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %clkdm_offs, align 4
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %6 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dep_bit, align 4
  %8 = add i8 %1, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %8)
  %9 = icmp ult i8 %8, -5
  br i1 %9, label %entry.do.body8.i.i_crit_edge, label %lor.rhs.i.i, !prof !19

entry.do.body8.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i

lor.rhs.i.i:                                      ; preds = %entry
  %conv.i.i = zext i8 %1 to i32
  %va.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i, i32 1
  %10 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i.do.body8.i.i_crit_edge, label %omap4_cminst_read_inst_reg_bits.exit, !prof !20

lor.rhs.i.i.do.body8.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i

do.body8.i.i:                                     ; preds = %lor.rhs.i.i.do.body8.i.i_crit_edge, %entry.do.body8.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

omap4_cminst_read_inst_reg_bits.exit:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv2 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv2
  %add = add i16 %5, 4
  %conv15.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv15.i.i
  %conv16.i.i = zext i16 %add to i32
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv16.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #5, !srcloc !22
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %and.i = and i32 %13, %shl
  %shr.i = lshr i32 %and.i, %conv2
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_clear_all_wkup_sleep_deps(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 9
  %2 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wkdep_srcs, align 4
  %tobool1.not22 = icmp eq ptr %3, null
  br i1 %tobool1.not22, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %mask.025 = phi i32 [ %mask.1, %for.inc.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %cd.023 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %3, %if.end.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %cd.023 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cd.023, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %clkdm3 = getelementptr inbounds %struct.clkdm_dep, ptr %cd.023, i32 0, i32 1
  %6 = ptrtoint ptr %clkdm3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clkdm3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %mask.025
  %wkdep_usecount = getelementptr inbounds %struct.clkdm_dep, ptr %cd.023, i32 0, i32 2
  %10 = ptrtoint ptr %wkdep_usecount to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %wkdep_usecount, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %mask.1 = phi i32 [ %or, %if.end6 ], [ %mask.025, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.clkdm_dep, ptr %cd.023, i32 1
  %tobool1.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool1.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %mask.1, %for.inc.for.end_crit_edge ], [ %mask.025, %land.rhs.for.end_crit_edge ]
  %11 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %13 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %15 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %clkdm_offs, align 4
  %add = add i16 %16, 4
  %17 = add i8 %12, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %17)
  %18 = icmp ult i8 %17, -5
  br i1 %18, label %for.end.do.body8.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !19

for.end.do.body8.i.i.i_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

lor.rhs.i.i.i:                                    ; preds = %for.end
  %conv.i.i.i = zext i8 %12 to i32
  %va.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i, i32 1
  %19 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, label %lor.rhs.i4.i.i, !prof !20

lor.rhs.i.i.i.do.body8.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, %for.end.do.body8.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i4.i.i:                                   ; preds = %lor.rhs.i.i.i
  %conv15.i.i.i = zext i16 %14 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %conv15.i.i.i
  %conv16.i.i.i = zext i16 %add to i32
  %add.ptr17.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !22
  %22 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i3.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i3.i.i, label %do.body8.i5.i.i, label %omap4_cminst_clear_inst_reg_bits.exit, !prof !20

do.body8.i5.i.i:                                  ; preds = %lor.rhs.i4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clear_inst_reg_bits.exit:            ; preds = %lor.rhs.i4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %neg.i.i = xor i32 %mask.0.lcssa, -1
  %and.i.i = and i32 %24, %neg.i.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %add.ptr.i7.i.i = getelementptr i8, ptr %23, i32 %conv15.i.i.i
  %add.ptr17.i9.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 %conv16.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i9.i.i, i32 %25) #5, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %omap4_cminst_clear_inst_reg_bits.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_sleep(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %2 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %4 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %6 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %clkdm_offs, align 4
  %8 = add i8 %3, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %8)
  %9 = icmp ult i8 %8, -5
  br i1 %9, label %if.then.do.body8.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !19

if.then.do.body8.i.i.i_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then
  %conv.i.i.i = zext i8 %3 to i32
  %va.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i, i32 1
  %10 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, label %lor.rhs.i14.i.i, !prof !20

lor.rhs.i.i.i.do.body8.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, %if.then.do.body8.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i:                                  ; preds = %lor.rhs.i.i.i
  %conv15.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv15.i.i.i
  %conv16.i.i.i = zext i16 %7 to i32
  %add.ptr17.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !22
  %13 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i13.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i13.i.i, label %do.body8.i15.i.i, label %omap4_cminst_clkdm_enable_hwsup.exit, !prof !20

do.body8.i15.i.i:                                 ; preds = %lor.rhs.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_enable_hwsup.exit:             ; preds = %lor.rhs.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = or i32 %12, 50331648
  %add.ptr.i17.i.i = getelementptr i8, ptr %14, i32 %conv15.i.i.i
  %add.ptr17.i19.i.i = getelementptr i8, ptr %add.ptr.i17.i.i, i32 %conv16.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i, i32 %15) #5, !srcloc !24
  br label %return

if.else:                                          ; preds = %entry
  %and3 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.return_crit_edge, label %if.then5

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then5:                                         ; preds = %if.else
  %prcm_partition6 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %16 = ptrtoint ptr %prcm_partition6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prcm_partition6, align 1
  %cm_inst7 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %18 = ptrtoint ptr %cm_inst7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cm_inst7, align 2
  %clkdm_offs8 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %20 = ptrtoint ptr %clkdm_offs8 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %clkdm_offs8, align 4
  %22 = add i8 %17, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %22)
  %23 = icmp ult i8 %22, -5
  br i1 %23, label %if.then5.do.body8.i.i.i22_crit_edge, label %lor.rhs.i.i.i21, !prof !19

if.then5.do.body8.i.i.i22_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i22

lor.rhs.i.i.i21:                                  ; preds = %if.then5
  %conv.i.i.i18 = zext i8 %17 to i32
  %va.i.i.i19 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i18, i32 1
  %24 = ptrtoint ptr %va.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %va.i.i.i19, align 4
  %tobool.not.i.i.i20 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i20, label %lor.rhs.i.i.i21.do.body8.i.i.i22_crit_edge, label %lor.rhs.i14.i.i28, !prof !20

lor.rhs.i.i.i21.do.body8.i.i.i22_crit_edge:       ; preds = %lor.rhs.i.i.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i22

do.body8.i.i.i22:                                 ; preds = %lor.rhs.i.i.i21.do.body8.i.i.i22_crit_edge, %if.then5.do.body8.i.i.i22_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i28:                                ; preds = %lor.rhs.i.i.i21
  %conv15.i.i.i23 = zext i16 %19 to i32
  %add.ptr.i.i.i24 = getelementptr i8, ptr %25, i32 %conv15.i.i.i23
  %conv16.i.i.i25 = zext i16 %21 to i32
  %add.ptr17.i.i.i26 = getelementptr i8, ptr %add.ptr.i.i.i24, i32 %conv16.i.i.i25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i26) #5, !srcloc !22
  %27 = ptrtoint ptr %va.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %va.i.i.i19, align 4
  %tobool.not.i13.i.i27 = icmp eq ptr %28, null
  br i1 %tobool.not.i13.i.i27, label %do.body8.i15.i.i29, label %omap4_cminst_clkdm_force_sleep.exit, !prof !20

do.body8.i15.i.i29:                               ; preds = %lor.rhs.i14.i.i28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_force_sleep.exit:              ; preds = %lor.rhs.i14.i.i28
  call void @__sanitizer_cov_trace_pc() #7
  %29 = and i32 %26, -50331649
  %30 = or i32 %29, 16777216
  %add.ptr.i17.i.i30 = getelementptr i8, ptr %28, i32 %conv15.i.i.i23
  %add.ptr17.i19.i.i31 = getelementptr i8, ptr %add.ptr.i17.i.i30, i32 %conv16.i.i.i25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i31, i32 %30) #5, !srcloc !24
  br label %return

return:                                           ; preds = %omap4_cminst_clkdm_force_sleep.exit, %if.else.return_crit_edge, %omap4_cminst_clkdm_enable_hwsup.exit
  %retval.0 = phi i32 [ -22, %if.else.return_crit_edge ], [ 0, %omap4_cminst_clkdm_force_sleep.exit ], [ 0, %omap4_cminst_clkdm_enable_hwsup.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_wakeup(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %2 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %4 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %clkdm_offs, align 4
  %6 = add i8 %1, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %6)
  %7 = icmp ult i8 %6, -5
  br i1 %7, label %entry.do.body8.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !19

entry.do.body8.i.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

lor.rhs.i.i.i:                                    ; preds = %entry
  %conv.i.i.i = zext i8 %1 to i32
  %va.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i, i32 1
  %8 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, label %lor.rhs.i14.i.i, !prof !20

lor.rhs.i.i.i.do.body8.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, %entry.do.body8.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i:                                  ; preds = %lor.rhs.i.i.i
  %conv15.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv15.i.i.i
  %conv16.i.i.i = zext i16 %5 to i32
  %add.ptr17.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !22
  %11 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i13.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i13.i.i, label %do.body8.i15.i.i, label %omap4_cminst_clkdm_force_wakeup.exit, !prof !20

do.body8.i15.i.i:                                 ; preds = %lor.rhs.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_force_wakeup.exit:             ; preds = %lor.rhs.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = and i32 %10, -50331649
  %14 = or i32 %13, 33554432
  %add.ptr.i17.i.i = getelementptr i8, ptr %12, i32 %conv15.i.i.i
  %add.ptr17.i19.i.i = getelementptr i8, ptr %add.ptr.i17.i.i, i32 %conv16.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i, i32 %14) #5, !srcloc !24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_clkdm_allow_idle(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %2 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %4 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %clkdm_offs, align 4
  %6 = add i8 %1, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %6)
  %7 = icmp ult i8 %6, -5
  br i1 %7, label %entry.do.body8.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !19

entry.do.body8.i.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

lor.rhs.i.i.i:                                    ; preds = %entry
  %conv.i.i.i = zext i8 %1 to i32
  %va.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i, i32 1
  %8 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, label %lor.rhs.i14.i.i, !prof !20

lor.rhs.i.i.i.do.body8.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, %entry.do.body8.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i:                                  ; preds = %lor.rhs.i.i.i
  %conv15.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv15.i.i.i
  %conv16.i.i.i = zext i16 %5 to i32
  %add.ptr17.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !22
  %11 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i13.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i13.i.i, label %do.body8.i15.i.i, label %omap4_cminst_clkdm_enable_hwsup.exit, !prof !20

do.body8.i15.i.i:                                 ; preds = %lor.rhs.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_enable_hwsup.exit:             ; preds = %lor.rhs.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = or i32 %10, 50331648
  %add.ptr.i17.i.i = getelementptr i8, ptr %12, i32 %conv15.i.i.i
  %add.ptr17.i19.i.i = getelementptr i8, ptr %add.ptr.i17.i.i, i32 %conv16.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i, i32 %13) #5, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_clkdm_deny_idle(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %3 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %5 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %7 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %clkdm_offs, align 4
  %9 = add i8 %4, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %9)
  %10 = icmp ult i8 %9, -5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %10, label %if.then.do.body8.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i, !prof !19

if.then.do.body8.i.i.i.i_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.then
  %conv.i.i.i.i = zext i8 %4 to i32
  %va.i.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i, i32 1
  %11 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %va.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i.i, label %lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge, label %lor.rhs.i14.i.i.i, !prof !20

lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge:       ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i

do.body8.i.i.i.i:                                 ; preds = %lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge, %if.then.do.body8.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i:                                ; preds = %lor.rhs.i.i.i.i
  %conv15.i.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 %conv15.i.i.i.i
  %conv16.i.i.i.i = zext i16 %8 to i32
  %add.ptr17.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv16.i.i.i.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i) #5, !srcloc !22
  %14 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va.i.i.i.i, align 4
  %tobool.not.i13.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i13.i.i.i, label %do.body8.i15.i.i.i, label %omap4_clkdm_wakeup.exit, !prof !20

do.body8.i15.i.i.i:                               ; preds = %lor.rhs.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_clkdm_wakeup.exit:                          ; preds = %lor.rhs.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = and i32 %13, -50331649
  %17 = or i32 %16, 33554432
  %add.ptr.i17.i.i.i = getelementptr i8, ptr %15, i32 %conv15.i.i.i.i
  %add.ptr17.i19.i.i.i = getelementptr i8, ptr %add.ptr.i17.i.i.i, i32 %conv16.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i, i32 %17) #5, !srcloc !24
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %10, label %if.else.do.body8.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !19

if.else.do.body8.i.i.i_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

lor.rhs.i.i.i:                                    ; preds = %if.else
  %conv.i.i.i = zext i8 %4 to i32
  %va.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i, i32 1
  %18 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, label %lor.rhs.i14.i.i, !prof !20

lor.rhs.i.i.i.do.body8.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body8.i.i.i_crit_edge, %if.else.do.body8.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i:                                  ; preds = %lor.rhs.i.i.i
  %conv15.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %conv15.i.i.i
  %conv16.i.i.i = zext i16 %8 to i32
  %add.ptr17.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !22
  %21 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i13.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i13.i.i, label %do.body8.i15.i.i, label %omap4_cminst_clkdm_disable_hwsup.exit, !prof !20

do.body8.i15.i.i:                                 ; preds = %lor.rhs.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_disable_hwsup.exit:            ; preds = %lor.rhs.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = and i32 %20, -50331649
  %add.ptr.i17.i.i = getelementptr i8, ptr %22, i32 %conv15.i.i.i
  %add.ptr17.i19.i.i = getelementptr i8, ptr %add.ptr.i17.i.i, i32 %conv16.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i, i32 %23) #5, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %omap4_cminst_clkdm_disable_hwsup.exit, %omap4_clkdm_wakeup.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_clk_enable(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  %prcm_partition.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %3 = ptrtoint ptr %prcm_partition.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %prcm_partition.i, align 1
  %cm_inst.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %5 = ptrtoint ptr %cm_inst.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cm_inst.i, align 2
  %clkdm_offs.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %7 = ptrtoint ptr %clkdm_offs.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %clkdm_offs.i, align 4
  %9 = add i8 %4, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %9)
  %10 = icmp ult i8 %9, -5
  br i1 %10, label %if.then.do.body8.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i, !prof !19

if.then.do.body8.i.i.i.i_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.then
  %conv.i.i.i.i = zext i8 %4 to i32
  %va.i.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i, i32 1
  %11 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %va.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i.i, label %lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge, label %lor.rhs.i14.i.i.i, !prof !20

lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge:       ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i

do.body8.i.i.i.i:                                 ; preds = %lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge, %if.then.do.body8.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i:                                ; preds = %lor.rhs.i.i.i.i
  %conv15.i.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 %conv15.i.i.i.i
  %conv16.i.i.i.i = zext i16 %8 to i32
  %add.ptr17.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv16.i.i.i.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i) #5, !srcloc !22
  %14 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va.i.i.i.i, align 4
  %tobool.not.i13.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i13.i.i.i, label %do.body8.i15.i.i.i, label %omap4_clkdm_wakeup.exit, !prof !20

do.body8.i15.i.i.i:                               ; preds = %lor.rhs.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_clkdm_wakeup.exit:                          ; preds = %lor.rhs.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = and i32 %13, -50331649
  %17 = or i32 %16, 33554432
  %add.ptr.i17.i.i.i = getelementptr i8, ptr %15, i32 %conv15.i.i.i.i
  %add.ptr17.i19.i.i.i = getelementptr i8, ptr %add.ptr.i17.i.i.i, i32 %conv16.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i, i32 %17) #5, !srcloc !24
  br label %return

return:                                           ; preds = %omap4_clkdm_wakeup.exit, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_clk_disable(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 2
  %4 = and i8 %3, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %5 = icmp eq i8 %4, 64
  %cm_inst.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %6 = ptrtoint ptr %cm_inst.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cm_inst.i, align 2
  %clkdm_offs.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %8 = ptrtoint ptr %clkdm_offs.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %clkdm_offs.i, align 4
  %10 = add i8 %1, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %10)
  %11 = icmp ult i8 %10, -5
  br i1 %5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br i1 %11, label %if.then6.do.body8.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i, !prof !19

if.then6.do.body8.i.i.i.i_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.then6
  %conv.i.i.i.i = zext i8 %1 to i32
  %va.i.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i, i32 1
  %12 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %va.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i, label %lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge, label %lor.rhs.i14.i.i.i, !prof !20

lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge:       ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i

do.body8.i.i.i.i:                                 ; preds = %lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge, %if.then6.do.body8.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i:                                ; preds = %lor.rhs.i.i.i.i
  %conv15.i.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 %conv15.i.i.i.i
  %conv16.i.i.i.i = zext i16 %9 to i32
  %add.ptr17.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv16.i.i.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i) #5, !srcloc !22
  %15 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %va.i.i.i.i, align 4
  %tobool.not.i13.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i13.i.i.i, label %do.body8.i15.i.i.i, label %omap4_clkdm_allow_idle.exit, !prof !20

do.body8.i15.i.i.i:                               ; preds = %lor.rhs.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_clkdm_allow_idle.exit:                      ; preds = %lor.rhs.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = or i32 %14, 50331648
  %add.ptr.i17.i.i.i = getelementptr i8, ptr %16, i32 %conv15.i.i.i.i
  %add.ptr17.i19.i.i.i = getelementptr i8, ptr %add.ptr.i17.i.i.i, i32 %conv16.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i, i32 %17) #5, !srcloc !24
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %11, label %if.end7.do.body8.i.i_crit_edge, label %lor.rhs.i.i, !prof !19

if.end7.do.body8.i.i_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i

lor.rhs.i.i:                                      ; preds = %if.end7
  %conv.i.i = zext i8 %1 to i32
  %va.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i, i32 1
  %18 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i.do.body8.i.i_crit_edge, label %omap4_cminst_is_clkdm_in_hwsup.exit, !prof !20

lor.rhs.i.i.do.body8.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i

do.body8.i.i:                                     ; preds = %lor.rhs.i.i.do.body8.i.i_crit_edge, %if.end7.do.body8.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

omap4_cminst_is_clkdm_in_hwsup.exit:              ; preds = %lor.rhs.i.i
  %conv15.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv15.i.i
  %conv16.i.i = zext i16 %9 to i32
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv16.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #5, !srcloc !22
  %21 = and i32 %20, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %21)
  %cmp.i = icmp eq i32 %21, 50331648
  br i1 %cmp.i, label %omap4_cminst_is_clkdm_in_hwsup.exit.cleanup_crit_edge, label %land.lhs.true10

omap4_cminst_is_clkdm_in_hwsup.exit.cleanup_crit_edge: ; preds = %omap4_cminst_is_clkdm_in_hwsup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true10:                                  ; preds = %omap4_cminst_is_clkdm_in_hwsup.exit
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags, align 2
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool14.not = icmp eq i8 %24, 0
  br i1 %tobool14.not, label %land.lhs.true10.cleanup_crit_edge, label %if.then15

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true10
  %conv.i = zext i8 %23 to i32
  %and.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then15
  %25 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %prcm_partition, align 1
  %27 = ptrtoint ptr %cm_inst.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cm_inst.i, align 2
  %29 = ptrtoint ptr %clkdm_offs.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %clkdm_offs.i, align 4
  %31 = add i8 %26, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %31)
  %32 = icmp ult i8 %31, -5
  br i1 %32, label %if.then.i.do.body8.i.i.i.i33_crit_edge, label %lor.rhs.i.i.i.i32, !prof !19

if.then.i.do.body8.i.i.i.i33_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i33

lor.rhs.i.i.i.i32:                                ; preds = %if.then.i
  %conv.i.i.i.i29 = zext i8 %26 to i32
  %va.i.i.i.i30 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i29, i32 1
  %33 = ptrtoint ptr %va.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %va.i.i.i.i30, align 4
  %tobool.not.i.i.i.i31 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i.i31, label %lor.rhs.i.i.i.i32.do.body8.i.i.i.i33_crit_edge, label %lor.rhs.i14.i.i.i39, !prof !20

lor.rhs.i.i.i.i32.do.body8.i.i.i.i33_crit_edge:   ; preds = %lor.rhs.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i33

do.body8.i.i.i.i33:                               ; preds = %lor.rhs.i.i.i.i32.do.body8.i.i.i.i33_crit_edge, %if.then.i.do.body8.i.i.i.i33_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i39:                              ; preds = %lor.rhs.i.i.i.i32
  %conv15.i.i.i.i34 = zext i16 %28 to i32
  %add.ptr.i.i.i.i35 = getelementptr i8, ptr %34, i32 %conv15.i.i.i.i34
  %conv16.i.i.i.i36 = zext i16 %30 to i32
  %add.ptr17.i.i.i.i37 = getelementptr i8, ptr %add.ptr.i.i.i.i35, i32 %conv16.i.i.i.i36
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i37) #5, !srcloc !22
  %36 = ptrtoint ptr %va.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %va.i.i.i.i30, align 4
  %tobool.not.i13.i.i.i38 = icmp eq ptr %37, null
  br i1 %tobool.not.i13.i.i.i38, label %do.body8.i15.i.i.i40, label %omap4_cminst_clkdm_enable_hwsup.exit.i, !prof !20

do.body8.i15.i.i.i40:                             ; preds = %lor.rhs.i14.i.i.i39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_enable_hwsup.exit.i:           ; preds = %lor.rhs.i14.i.i.i39
  call void @__sanitizer_cov_trace_pc() #7
  %38 = or i32 %35, 50331648
  %add.ptr.i17.i.i.i41 = getelementptr i8, ptr %37, i32 %conv15.i.i.i.i34
  %add.ptr17.i19.i.i.i42 = getelementptr i8, ptr %add.ptr.i17.i.i.i41, i32 %conv16.i.i.i.i36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i42, i32 %38) #5, !srcloc !24
  br label %cleanup

if.else.i:                                        ; preds = %if.then15
  %and3.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i.cleanup_crit_edge, label %if.then5.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %if.else.i
  %39 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %prcm_partition, align 1
  %41 = ptrtoint ptr %cm_inst.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cm_inst.i, align 2
  %43 = ptrtoint ptr %clkdm_offs.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %clkdm_offs.i, align 4
  %45 = add i8 %40, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %45)
  %46 = icmp ult i8 %45, -5
  br i1 %46, label %if.then5.i.do.body8.i.i.i22.i_crit_edge, label %lor.rhs.i.i.i21.i, !prof !19

if.then5.i.do.body8.i.i.i22.i_crit_edge:          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i22.i

lor.rhs.i.i.i21.i:                                ; preds = %if.then5.i
  %conv.i.i.i18.i = zext i8 %40 to i32
  %va.i.i.i19.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i18.i, i32 1
  %47 = ptrtoint ptr %va.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %va.i.i.i19.i, align 4
  %tobool.not.i.i.i20.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i20.i, label %lor.rhs.i.i.i21.i.do.body8.i.i.i22.i_crit_edge, label %lor.rhs.i14.i.i28.i, !prof !20

lor.rhs.i.i.i21.i.do.body8.i.i.i22.i_crit_edge:   ; preds = %lor.rhs.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i22.i

do.body8.i.i.i22.i:                               ; preds = %lor.rhs.i.i.i21.i.do.body8.i.i.i22.i_crit_edge, %if.then5.i.do.body8.i.i.i22.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i28.i:                              ; preds = %lor.rhs.i.i.i21.i
  %conv15.i.i.i23.i = zext i16 %42 to i32
  %add.ptr.i.i.i24.i = getelementptr i8, ptr %48, i32 %conv15.i.i.i23.i
  %conv16.i.i.i25.i = zext i16 %44 to i32
  %add.ptr17.i.i.i26.i = getelementptr i8, ptr %add.ptr.i.i.i24.i, i32 %conv16.i.i.i25.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i26.i) #5, !srcloc !22
  %50 = ptrtoint ptr %va.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %va.i.i.i19.i, align 4
  %tobool.not.i13.i.i27.i = icmp eq ptr %51, null
  br i1 %tobool.not.i13.i.i27.i, label %do.body8.i15.i.i29.i, label %omap4_cminst_clkdm_force_sleep.exit.i, !prof !20

do.body8.i15.i.i29.i:                             ; preds = %lor.rhs.i14.i.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_force_sleep.exit.i:            ; preds = %lor.rhs.i14.i.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = and i32 %49, -50331649
  %53 = or i32 %52, 16777216
  %add.ptr.i17.i.i30.i = getelementptr i8, ptr %51, i32 %conv15.i.i.i23.i
  %add.ptr17.i19.i.i31.i = getelementptr i8, ptr %add.ptr.i17.i.i30.i, i32 %conv16.i.i.i25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i31.i, i32 %53) #5, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %omap4_cminst_clkdm_force_sleep.exit.i, %if.else.i.cleanup_crit_edge, %omap4_cminst_clkdm_enable_hwsup.exit.i, %land.lhs.true10.cleanup_crit_edge, %omap4_cminst_is_clkdm_in_hwsup.exit.cleanup_crit_edge, %omap4_clkdm_allow_idle.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_save_context(ptr nocapture noundef %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 1
  %cm_inst = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %2 = ptrtoint ptr %cm_inst to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cm_inst, align 2
  %clkdm_offs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %4 = ptrtoint ptr %clkdm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %clkdm_offs, align 4
  %6 = add i8 %1, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %6)
  %7 = icmp ult i8 %6, -5
  br i1 %7, label %entry.do.body8.i_crit_edge, label %lor.rhs.i, !prof !19

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

lor.rhs.i:                                        ; preds = %entry
  %conv.i = zext i8 %1 to i32
  %va.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i, i32 1
  %8 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.rhs.i.do.body8.i_crit_edge, label %omap4_cminst_read_inst_reg.exit, !prof !20

lor.rhs.i.do.body8.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

do.body8.i:                                       ; preds = %lor.rhs.i.do.body8.i_crit_edge, %entry.do.body8.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

omap4_cminst_read_inst_reg.exit:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv15.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv15.i
  %conv16.i = zext i16 %5 to i32
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 %conv16.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !22
  %11 = lshr i32 %10, 24
  %context = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 14
  %and = and i32 %11, 3
  %12 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %context, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_restore_context(ptr nocapture noundef readonly %clkdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 14
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %context, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags.i, align 2
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %prcm_partition.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %6 = ptrtoint ptr %prcm_partition.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %prcm_partition.i, align 1
  %cm_inst.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %8 = ptrtoint ptr %cm_inst.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cm_inst.i, align 2
  %clkdm_offs.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %10 = ptrtoint ptr %clkdm_offs.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %clkdm_offs.i, align 4
  %12 = add i8 %7, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %12)
  %13 = icmp ult i8 %12, -5
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  br i1 %13, label %if.then.i.do.body8.i.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i.i, !prof !19

if.then.i.do.body8.i.i.i.i.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i.i

lor.rhs.i.i.i.i.i:                                ; preds = %if.then.i
  %conv.i.i.i.i.i = zext i8 %7 to i32
  %va.i.i.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i.i, i32 1
  %14 = ptrtoint ptr %va.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i.i.i, label %lor.rhs.i.i.i.i.i.do.body8.i.i.i.i.i_crit_edge, label %lor.rhs.i14.i.i.i.i, !prof !20

lor.rhs.i.i.i.i.i.do.body8.i.i.i.i.i_crit_edge:   ; preds = %lor.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i.i

do.body8.i.i.i.i.i:                               ; preds = %lor.rhs.i.i.i.i.i.do.body8.i.i.i.i.i_crit_edge, %if.then.i.do.body8.i.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i.i:                              ; preds = %lor.rhs.i.i.i.i.i
  %conv15.i.i.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %15, i32 %conv15.i.i.i.i.i
  %conv16.i.i.i.i.i = zext i16 %11 to i32
  %add.ptr17.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %conv16.i.i.i.i.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i.i) #5, !srcloc !22
  %17 = ptrtoint ptr %va.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %va.i.i.i.i.i, align 4
  %tobool.not.i13.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i13.i.i.i.i, label %do.body8.i15.i.i.i.i, label %omap4_clkdm_wakeup.exit.i, !prof !20

do.body8.i15.i.i.i.i:                             ; preds = %lor.rhs.i14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_clkdm_wakeup.exit.i:                        ; preds = %lor.rhs.i14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = and i32 %16, -50331649
  %20 = or i32 %19, 33554432
  %add.ptr.i17.i.i.i.i = getelementptr i8, ptr %18, i32 %conv15.i.i.i.i.i
  %add.ptr17.i19.i.i.i.i = getelementptr i8, ptr %add.ptr.i17.i.i.i.i, i32 %conv16.i.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i.i, i32 %20) #5, !srcloc !24
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  br i1 %13, label %if.else.i.do.body8.i.i.i.i_crit_edge, label %lor.rhs.i.i.i.i, !prof !19

if.else.i.do.body8.i.i.i.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %if.else.i
  %conv.i.i.i.i = zext i8 %7 to i32
  %va.i.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i, i32 1
  %21 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %va.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i.i, label %lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge, label %lor.rhs.i14.i.i.i, !prof !20

lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge:       ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i

do.body8.i.i.i.i:                                 ; preds = %lor.rhs.i.i.i.i.do.body8.i.i.i.i_crit_edge, %if.else.i.do.body8.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i:                                ; preds = %lor.rhs.i.i.i.i
  %conv15.i.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %22, i32 %conv15.i.i.i.i
  %conv16.i.i.i.i = zext i16 %11 to i32
  %add.ptr17.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %conv16.i.i.i.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i) #5, !srcloc !22
  %24 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %va.i.i.i.i, align 4
  %tobool.not.i13.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i13.i.i.i, label %do.body8.i15.i.i.i, label %omap4_cminst_clkdm_disable_hwsup.exit.i, !prof !20

do.body8.i15.i.i.i:                               ; preds = %lor.rhs.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_disable_hwsup.exit.i:          ; preds = %lor.rhs.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = and i32 %23, -50331649
  %add.ptr.i17.i.i.i = getelementptr i8, ptr %25, i32 %conv15.i.i.i.i
  %add.ptr17.i19.i.i.i = getelementptr i8, ptr %add.ptr.i17.i.i.i, i32 %conv16.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i, i32 %26) #5, !srcloc !24
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %flags.i9 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 3
  %27 = ptrtoint ptr %flags.i9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags.i9, align 2
  %conv.i = zext i8 %28 to i32
  %and.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i10 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i10, label %if.else.i29, label %if.then.i14

if.then.i14:                                      ; preds = %sw.bb1
  %prcm_partition.i11 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %29 = ptrtoint ptr %prcm_partition.i11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %prcm_partition.i11, align 1
  %cm_inst.i12 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %31 = ptrtoint ptr %cm_inst.i12 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cm_inst.i12, align 2
  %clkdm_offs.i13 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %33 = ptrtoint ptr %clkdm_offs.i13 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %clkdm_offs.i13, align 4
  %35 = add i8 %30, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %35)
  %36 = icmp ult i8 %35, -5
  br i1 %36, label %if.then.i14.do.body8.i.i.i.i19_crit_edge, label %lor.rhs.i.i.i.i18, !prof !19

if.then.i14.do.body8.i.i.i.i19_crit_edge:         ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i19

lor.rhs.i.i.i.i18:                                ; preds = %if.then.i14
  %conv.i.i.i.i15 = zext i8 %30 to i32
  %va.i.i.i.i16 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i15, i32 1
  %37 = ptrtoint ptr %va.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %va.i.i.i.i16, align 4
  %tobool.not.i.i.i.i17 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i.i17, label %lor.rhs.i.i.i.i18.do.body8.i.i.i.i19_crit_edge, label %lor.rhs.i14.i.i.i25, !prof !20

lor.rhs.i.i.i.i18.do.body8.i.i.i.i19_crit_edge:   ; preds = %lor.rhs.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i19

do.body8.i.i.i.i19:                               ; preds = %lor.rhs.i.i.i.i18.do.body8.i.i.i.i19_crit_edge, %if.then.i14.do.body8.i.i.i.i19_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i25:                              ; preds = %lor.rhs.i.i.i.i18
  %conv15.i.i.i.i20 = zext i16 %32 to i32
  %add.ptr.i.i.i.i21 = getelementptr i8, ptr %38, i32 %conv15.i.i.i.i20
  %conv16.i.i.i.i22 = zext i16 %34 to i32
  %add.ptr17.i.i.i.i23 = getelementptr i8, ptr %add.ptr.i.i.i.i21, i32 %conv16.i.i.i.i22
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i23) #5, !srcloc !22
  %40 = ptrtoint ptr %va.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %va.i.i.i.i16, align 4
  %tobool.not.i13.i.i.i24 = icmp eq ptr %41, null
  br i1 %tobool.not.i13.i.i.i24, label %do.body8.i15.i.i.i26, label %omap4_cminst_clkdm_enable_hwsup.exit.i, !prof !20

do.body8.i15.i.i.i26:                             ; preds = %lor.rhs.i14.i.i.i25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_enable_hwsup.exit.i:           ; preds = %lor.rhs.i14.i.i.i25
  call void @__sanitizer_cov_trace_pc() #7
  %42 = or i32 %39, 50331648
  %add.ptr.i17.i.i.i27 = getelementptr i8, ptr %41, i32 %conv15.i.i.i.i20
  %add.ptr17.i19.i.i.i28 = getelementptr i8, ptr %add.ptr.i17.i.i.i27, i32 %conv16.i.i.i.i22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i28, i32 %42) #5, !srcloc !24
  br label %sw.epilog

if.else.i29:                                      ; preds = %sw.bb1
  %and3.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i29.sw.epilog_crit_edge, label %if.then5.i

if.else.i29.sw.epilog_crit_edge:                  ; preds = %if.else.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then5.i:                                       ; preds = %if.else.i29
  %prcm_partition6.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %43 = ptrtoint ptr %prcm_partition6.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %prcm_partition6.i, align 1
  %cm_inst7.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %45 = ptrtoint ptr %cm_inst7.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cm_inst7.i, align 2
  %clkdm_offs8.i = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %47 = ptrtoint ptr %clkdm_offs8.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %clkdm_offs8.i, align 4
  %49 = add i8 %44, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %49)
  %50 = icmp ult i8 %49, -5
  br i1 %50, label %if.then5.i.do.body8.i.i.i22.i_crit_edge, label %lor.rhs.i.i.i21.i, !prof !19

if.then5.i.do.body8.i.i.i22.i_crit_edge:          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i22.i

lor.rhs.i.i.i21.i:                                ; preds = %if.then5.i
  %conv.i.i.i18.i = zext i8 %44 to i32
  %va.i.i.i19.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i18.i, i32 1
  %51 = ptrtoint ptr %va.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %va.i.i.i19.i, align 4
  %tobool.not.i.i.i20.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i20.i, label %lor.rhs.i.i.i21.i.do.body8.i.i.i22.i_crit_edge, label %lor.rhs.i14.i.i28.i, !prof !20

lor.rhs.i.i.i21.i.do.body8.i.i.i22.i_crit_edge:   ; preds = %lor.rhs.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i22.i

do.body8.i.i.i22.i:                               ; preds = %lor.rhs.i.i.i21.i.do.body8.i.i.i22.i_crit_edge, %if.then5.i.do.body8.i.i.i22.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i28.i:                              ; preds = %lor.rhs.i.i.i21.i
  %conv15.i.i.i23.i = zext i16 %46 to i32
  %add.ptr.i.i.i24.i = getelementptr i8, ptr %52, i32 %conv15.i.i.i23.i
  %conv16.i.i.i25.i = zext i16 %48 to i32
  %add.ptr17.i.i.i26.i = getelementptr i8, ptr %add.ptr.i.i.i24.i, i32 %conv16.i.i.i25.i
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i26.i) #5, !srcloc !22
  %54 = ptrtoint ptr %va.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %va.i.i.i19.i, align 4
  %tobool.not.i13.i.i27.i = icmp eq ptr %55, null
  br i1 %tobool.not.i13.i.i27.i, label %do.body8.i15.i.i29.i, label %omap4_cminst_clkdm_force_sleep.exit.i, !prof !20

do.body8.i15.i.i29.i:                             ; preds = %lor.rhs.i14.i.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_clkdm_force_sleep.exit.i:            ; preds = %lor.rhs.i14.i.i28.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = and i32 %53, -50331649
  %57 = or i32 %56, 16777216
  %add.ptr.i17.i.i30.i = getelementptr i8, ptr %55, i32 %conv15.i.i.i23.i
  %add.ptr17.i19.i.i31.i = getelementptr i8, ptr %add.ptr.i17.i.i30.i, i32 %conv16.i.i.i25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i31.i, i32 %57) #5, !srcloc !24
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %prcm_partition.i30 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %58 = ptrtoint ptr %prcm_partition.i30 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %prcm_partition.i30, align 1
  %cm_inst.i31 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %60 = ptrtoint ptr %cm_inst.i31 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %cm_inst.i31, align 2
  %clkdm_offs.i32 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %62 = ptrtoint ptr %clkdm_offs.i32 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %clkdm_offs.i32, align 4
  %64 = add i8 %59, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %64)
  %65 = icmp ult i8 %64, -5
  br i1 %65, label %sw.bb2.do.body8.i.i.i.i37_crit_edge, label %lor.rhs.i.i.i.i36, !prof !19

sw.bb2.do.body8.i.i.i.i37_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i37

lor.rhs.i.i.i.i36:                                ; preds = %sw.bb2
  %conv.i.i.i.i33 = zext i8 %59 to i32
  %va.i.i.i.i34 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i33, i32 1
  %66 = ptrtoint ptr %va.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %va.i.i.i.i34, align 4
  %tobool.not.i.i.i.i35 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i.i35, label %lor.rhs.i.i.i.i36.do.body8.i.i.i.i37_crit_edge, label %lor.rhs.i14.i.i.i43, !prof !20

lor.rhs.i.i.i.i36.do.body8.i.i.i.i37_crit_edge:   ; preds = %lor.rhs.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i37

do.body8.i.i.i.i37:                               ; preds = %lor.rhs.i.i.i.i36.do.body8.i.i.i.i37_crit_edge, %sw.bb2.do.body8.i.i.i.i37_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i43:                              ; preds = %lor.rhs.i.i.i.i36
  %conv15.i.i.i.i38 = zext i16 %61 to i32
  %add.ptr.i.i.i.i39 = getelementptr i8, ptr %67, i32 %conv15.i.i.i.i38
  %conv16.i.i.i.i40 = zext i16 %63 to i32
  %add.ptr17.i.i.i.i41 = getelementptr i8, ptr %add.ptr.i.i.i.i39, i32 %conv16.i.i.i.i40
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i41) #5, !srcloc !22
  %69 = ptrtoint ptr %va.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %va.i.i.i.i34, align 4
  %tobool.not.i13.i.i.i42 = icmp eq ptr %70, null
  br i1 %tobool.not.i13.i.i.i42, label %do.body8.i15.i.i.i44, label %omap4_clkdm_wakeup.exit, !prof !20

do.body8.i15.i.i.i44:                             ; preds = %lor.rhs.i14.i.i.i43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_clkdm_wakeup.exit:                          ; preds = %lor.rhs.i14.i.i.i43
  call void @__sanitizer_cov_trace_pc() #7
  %71 = and i32 %68, -50331649
  %72 = or i32 %71, 33554432
  %add.ptr.i17.i.i.i45 = getelementptr i8, ptr %70, i32 %conv15.i.i.i.i38
  %add.ptr17.i19.i.i.i46 = getelementptr i8, ptr %add.ptr.i17.i.i.i45, i32 %conv16.i.i.i.i40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i46, i32 %72) #5, !srcloc !24
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %prcm_partition.i47 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 6
  %73 = ptrtoint ptr %prcm_partition.i47 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %prcm_partition.i47, align 1
  %cm_inst.i48 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 7
  %75 = ptrtoint ptr %cm_inst.i48 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %cm_inst.i48, align 2
  %clkdm_offs.i49 = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 8
  %77 = ptrtoint ptr %clkdm_offs.i49 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %clkdm_offs.i49, align 4
  %79 = add i8 %74, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %79)
  %80 = icmp ult i8 %79, -5
  br i1 %80, label %sw.bb4.do.body8.i.i.i.i54_crit_edge, label %lor.rhs.i.i.i.i53, !prof !19

sw.bb4.do.body8.i.i.i.i54_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i54

lor.rhs.i.i.i.i53:                                ; preds = %sw.bb4
  %conv.i.i.i.i50 = zext i8 %74 to i32
  %va.i.i.i.i51 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i.i50, i32 1
  %81 = ptrtoint ptr %va.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %va.i.i.i.i51, align 4
  %tobool.not.i.i.i.i52 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i.i.i52, label %lor.rhs.i.i.i.i53.do.body8.i.i.i.i54_crit_edge, label %lor.rhs.i14.i.i.i60, !prof !20

lor.rhs.i.i.i.i53.do.body8.i.i.i.i54_crit_edge:   ; preds = %lor.rhs.i.i.i.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.i54

do.body8.i.i.i.i54:                               ; preds = %lor.rhs.i.i.i.i53.do.body8.i.i.i.i54_crit_edge, %sw.bb4.do.body8.i.i.i.i54_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i14.i.i.i60:                              ; preds = %lor.rhs.i.i.i.i53
  %conv15.i.i.i.i55 = zext i16 %76 to i32
  %add.ptr.i.i.i.i56 = getelementptr i8, ptr %82, i32 %conv15.i.i.i.i55
  %conv16.i.i.i.i57 = zext i16 %78 to i32
  %add.ptr17.i.i.i.i58 = getelementptr i8, ptr %add.ptr.i.i.i.i56, i32 %conv16.i.i.i.i57
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i.i58) #5, !srcloc !22
  %84 = ptrtoint ptr %va.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %va.i.i.i.i51, align 4
  %tobool.not.i13.i.i.i59 = icmp eq ptr %85, null
  br i1 %tobool.not.i13.i.i.i59, label %do.body8.i15.i.i.i61, label %omap4_clkdm_allow_idle.exit, !prof !20

do.body8.i15.i.i.i61:                             ; preds = %lor.rhs.i14.i.i.i60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_clkdm_allow_idle.exit:                      ; preds = %lor.rhs.i14.i.i.i60
  call void @__sanitizer_cov_trace_pc() #7
  %86 = or i32 %83, 50331648
  %add.ptr.i17.i.i.i62 = getelementptr i8, ptr %85, i32 %conv15.i.i.i.i55
  %add.ptr17.i19.i.i.i63 = getelementptr i8, ptr %add.ptr.i17.i.i.i62, i32 %conv16.i.i.i.i57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i19.i.i.i63, i32 %86) #5, !srcloc !24
  br label %sw.epilog

sw.epilog:                                        ; preds = %omap4_clkdm_allow_idle.exit, %omap4_clkdm_wakeup.exit, %omap4_cminst_clkdm_force_sleep.exit.i, %if.else.i29.sw.epilog_crit_edge, %omap4_cminst_clkdm_enable_hwsup.exit.i, %omap4_cminst_clkdm_disable_hwsup.exit.i, %omap4_clkdm_wakeup.exit.i, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_cm_init(ptr nocapture noundef readnone %data) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 1), ptr @prm_base, i32 12)
  %1 = call ptr @memcpy(ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 2), ptr @cm_base, i32 12)
  %2 = call ptr @memcpy(ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 3), ptr @cm2_base, i32 12)
  %3 = call ptr @memcpy(ptr getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 5), ptr @prcm_mpu_base, i32 12)
  %call = tail call i32 @cm_register(ptr noundef nonnull @omap4xxx_cm_ll_data) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap4_cm_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @cm_unregister(ptr noundef nonnull @omap4xxx_cm_ll_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_cminst_wait_module_ready(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %clkctrl_offs, i8 noundef zeroext %bit_shift) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  %conv.i.i.i = zext i8 %part to i32
  %va.i.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i.i, i32 1
  %conv15.i.i.i = zext i16 %inst to i32
  %conv16.i.i.i = zext i16 %clkctrl_offs to i32
  br i1 %1, label %entry.do.body8.i.i.i.split_crit_edge, label %entry.for.body_crit_edge, !prof !19

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body8.i.i.i.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.split

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %for.body.do.body8.i.i.i.split_crit_edge, label %_is_module_ready.exit, !prof !20

for.body.do.body8.i.i.i.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.i.split

do.body8.i.i.i.split:                             ; preds = %for.body.do.body8.i.i.i.split_crit_edge, %entry.do.body8.i.i.i.split_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

_is_module_ready.exit:                            ; preds = %for.body
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv15.i.i.i
  %add.ptr17.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv16.i.i.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i.i) #5, !srcloc !22
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %_is_module_ready.exit.for.end_crit_edge, label %if.end

_is_module_ready.exit.for.end_crit_edge:          ; preds = %_is_module_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %_is_module_ready.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %_is_module_ready.exit.for.end_crit_edge
  %cond = phi i32 [ 0, %_is_module_ready.exit.for.end_crit_edge ], [ -16, %if.end.for.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_cminst_wait_module_idle(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %clkctrl_offs, i8 noundef zeroext %bit_shift) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  %conv.i.i = zext i8 %part to i32
  %va.i.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i.i, i32 1
  %conv15.i.i = zext i16 %inst to i32
  %conv16.i.i = zext i16 %clkctrl_offs to i32
  br i1 %1, label %entry.do.body8.i.i.split_crit_edge, label %entry.for.body_crit_edge, !prof !19

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body8.i.i.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.split

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %for.body.do.body8.i.i.split_crit_edge, label %_clkctrl_idlest.exit, !prof !20

for.body.do.body8.i.i.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i.i.split

do.body8.i.i.split:                               ; preds = %for.body.do.body8.i.i.split_crit_edge, %entry.do.body8.i.i.split_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

_clkctrl_idlest.exit:                             ; preds = %for.body
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv15.i.i
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv16.i.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #5, !srcloc !22
  %5 = and i32 %4, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %5)
  %cmp1 = icmp eq i32 %5, 768
  br i1 %cmp1, label %_clkctrl_idlest.exit.for.end_crit_edge, label %if.end

_clkctrl_idlest.exit.for.end_crit_edge:           ; preds = %_clkctrl_idlest.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %_clkctrl_idlest.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 5000
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %_clkctrl_idlest.exit.for.end_crit_edge
  %cond = phi i32 [ 0, %_clkctrl_idlest.exit.for.end_crit_edge ], [ -16, %if.end.for.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_cminst_module_enable(i8 noundef zeroext %mode, i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  br i1 %1, label %entry.do.body8.i_crit_edge, label %lor.rhs.i, !prof !19

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

lor.rhs.i:                                        ; preds = %entry
  %conv.i = zext i8 %part to i32
  %va.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i, i32 1
  %2 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.rhs.i.do.body8.i_crit_edge, label %lor.rhs.i9, !prof !20

lor.rhs.i.do.body8.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

do.body8.i:                                       ; preds = %lor.rhs.i.do.body8.i_crit_edge, %entry.do.body8.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i9:                                       ; preds = %lor.rhs.i
  %conv15.i = zext i16 %inst to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv15.i
  %conv16.i = zext i16 %clkctrl_offs to i32
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 %conv16.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !22
  %5 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va.i, align 4
  %tobool.not.i8 = icmp eq ptr %6, null
  br i1 %tobool.not.i8, label %do.body8.i10, label %omap4_cminst_write_inst_reg.exit, !prof !20

do.body8.i10:                                     ; preds = %lor.rhs.i9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_write_inst_reg.exit:                 ; preds = %lor.rhs.i9
  call void @__sanitizer_cov_trace_pc() #7
  %7 = and i32 %4, -50331649
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %conv = zext i8 %mode to i32
  %or = or i32 %8, %conv
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i12 = getelementptr i8, ptr %6, i32 %conv15.i
  %add.ptr17.i14 = getelementptr i8, ptr %add.ptr.i12, i32 %conv16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i14, i32 %9) #5, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_cminst_module_disable(i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %clkctrl_offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %part, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %0)
  %1 = icmp ult i8 %0, -5
  br i1 %1, label %entry.do.body8.i_crit_edge, label %lor.rhs.i, !prof !19

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

lor.rhs.i:                                        ; preds = %entry
  %conv.i = zext i8 %part to i32
  %va.i = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %conv.i, i32 1
  %2 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %va.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.rhs.i.do.body8.i_crit_edge, label %lor.rhs.i8, !prof !20

lor.rhs.i.do.body8.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

do.body8.i:                                       ; preds = %lor.rhs.i.do.body8.i_crit_edge, %entry.do.body8.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

lor.rhs.i8:                                       ; preds = %lor.rhs.i
  %conv15.i = zext i16 %inst to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv15.i
  %conv16.i = zext i16 %clkctrl_offs to i32
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 %conv16.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !22
  %5 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %va.i, align 4
  %tobool.not.i7 = icmp eq ptr %6, null
  br i1 %tobool.not.i7, label %do.body8.i9, label %omap4_cminst_write_inst_reg.exit, !prof !20

do.body8.i9:                                      ; preds = %lor.rhs.i8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

omap4_cminst_write_inst_reg.exit:                 ; preds = %lor.rhs.i8
  call void @__sanitizer_cov_trace_pc() #7
  %7 = and i32 %4, -50331649
  %add.ptr.i11 = getelementptr i8, ptr %6, i32 %conv15.i
  %add.ptr17.i13 = getelementptr i8, ptr %add.ptr.i11, i32 %conv16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i13, i32 %7) #5, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap4_cminst_xlate_clkctrl(i8 noundef zeroext %part, i16 noundef zeroext %inst, i16 noundef zeroext %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %part to i32
  %arrayidx = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = zext i16 %inst to i32
  %conv1 = zext i16 %offset to i32
  %add = add nuw nsw i32 %conv1, %conv
  %add2 = add i32 %add, %1
  ret i32 %add2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @omap4_clkdm_operations, !1, !"omap4_clkdm_operations", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/cminst44xx.c", i32 522, i32 18}
!2 = !{ptr @am43xx_clkdm_operations, !3, !"am43xx_clkdm_operations", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/cminst44xx.c", i32 541, i32 18}
!4 = !{ptr @__exitcall_omap4_cm_exit, !5, !"__exitcall_omap4_cm_exit", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/cminst44xx.c", i32 569, i32 1}
!6 = !{ptr @_cm_bases, !7, !"_cm_bases", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/cminst44xx.c", i32 55, i32 32}
!8 = !{ptr @omap4xxx_cm_ll_data, !9, !"omap4xxx_cm_ll_data", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/cminst44xx.c", i32 550, i32 32}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 4001, i32 4000000}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2152609040, i64 2152609537, i64 2152609077, i64 2152609133, i64 2152609167, i64 2152609191, i64 2152609232, i64 2152609253, i64 2152609281, i64 2152609315}
!22 = !{i64 1262995}
!23 = !{i64 2152611124, i64 2152611621, i64 2152611161, i64 2152611217, i64 2152611251, i64 2152611275, i64 2152611316, i64 2152611337, i64 2152611365, i64 2152611399}
!24 = !{i64 1262577}
