; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/prm2xxx_3xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm2xxx_3xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clockdomain = type { ptr, %union.anon.0, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon.0 = type { ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap2_pwrdm_wait_transition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013powerdomain: %s: waited too long to complete transition\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"omap2_pwrdm_wait_transition\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"arch/arm/mach-omap2/prm2xxx_3xxx.c\00", [61 x i8] zeroinitializer }, align 32
@omap2_pwrdm_wait_transition._entry_ptr = internal global ptr @omap2_pwrdm_wait_transition._entry, section ".printk_index", align 4
@omap2_pwrdm_wait_transition.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prm2xxx_3xxx\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"powerdomain: completed transition in %d loops\0A\00", [49 x i8] zeroinitializer }, align 32
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 185, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [38 x i8] c"../arch/arm/mach-omap2/prm2xxx_3xxx.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 190, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @omap2_pwrdm_wait_transition._entry, ptr @omap2_pwrdm_wait_transition._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pwrdm_wait_transition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_prm_is_hardreset_asserted(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %shift to i32
  %shl = shl nuw i32 1, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %prm_mod to i32
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 80
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %and.i = and i32 %2, %shl
  %shr.i = lshr i32 %and.i, %conv
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_prm_assert_hardreset(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %shift to i32
  %shl = shl nuw i32 1, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %prm_mod to i32
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 80
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %or.i = or i32 %2, %shl
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %3) #4, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_prm_deassert_hardreset(i8 noundef zeroext %rst_shift, i8 noundef zeroext %st_shift, i8 noundef zeroext %part, i16 noundef signext %prm_mod, i16 noundef zeroext %rst_offset, i16 noundef zeroext %st_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rst_shift to i32
  %shl = shl nuw i32 1, %conv
  %conv1 = zext i8 %st_shift to i32
  %shl2 = shl nuw i32 1, %conv1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %prm_mod to i32
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 80
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %and.i = and i32 %2, %shl
  %shr.i = lshr i32 %and.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp = icmp eq i32 %shr.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %3, i32 %conv.i.i
  %add.ptr2.i.i24 = getelementptr i8, ptr %add.ptr.i.i23, i32 88
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i24) #4, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %5) #4, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %7, i32 %conv.i.i
  %add.ptr2.i.i27 = getelementptr i8, ptr %add.ptr.i.i26, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i27) #4, !srcloc !19
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  %neg.i = xor i32 %shl, -1
  %and.i28 = and i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i28) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i29 = getelementptr i8, ptr %11, i32 %conv.i.i
  %add.ptr2.i4.i30 = getelementptr i8, ptr %add.ptr.i2.i29, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i30, i32 %10) #4, !srcloc !20
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.end
  %c.036 = phi i32 [ 0, %if.end ], [ %inc, %if.end10.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %12, i32 %conv.i.i
  %add.ptr2.i.i33 = getelementptr i8, ptr %add.ptr.i.i32, i32 88
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i33) #4, !srcloc !19
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  %and.i34 = and i32 %14, %shl2
  %shr.i35 = lshr i32 %and.i34, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i35)
  %tobool.not = icmp eq i32 %shr.i35, 0
  br i1 %tobool.not, label %if.end10, label %for.end

if.end10:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #4
  %inc = add nuw nsw i32 %c.036, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end10.for.end.thread_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end10.for.end.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %c.036)
  %cmp11 = icmp eq i32 %c.036, 10000
  br i1 %cmp11, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end10.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %entry.cleanup_crit_edge ], [ -16, %for.end.thread ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_set_mem_onst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i8 noundef zeroext %bank) #4
  %conv = zext i8 %pwrst to i32
  %0 = tail call i32 @llvm.cttz.i32(i32 %call, i1 false) #4, !range !21
  %shl = shl i32 %conv, %0
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %1 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %2 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %neg.i = xor i32 %call, -1
  %and.i = and i32 %5, %neg.i
  %or.i = or i32 %and.i, %shl
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %6) #4, !srcloc !20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_set_mem_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %bank) #4
  %conv = zext i8 %pwrst to i32
  %0 = tail call i32 @llvm.cttz.i32(i32 %call, i1 false) #4, !range !21
  %shl = shl i32 %conv, %0
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %1 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %2 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %neg.i = xor i32 %call, -1
  %and.i = and i32 %5, %neg.i
  %or.i = or i32 %and.i, %shl
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %6) #4, !srcloc !20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_read_mem_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_pwrdm_get_mem_bank_stst_mask(i8 noundef zeroext %bank) #4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 228
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %and.i = and i32 %4, %call
  %5 = tail call i32 @llvm.cttz.i32(i32 %call, i1 false) #4, !range !21
  %shr.i = lshr i32 %and.i, %5
  ret i32 %shr.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_stst_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_read_mem_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %bank) #4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %and.i = and i32 %4, %call
  %5 = tail call i32 @llvm.cttz.i32(i32 %call, i1 false) #4, !range !21
  %shr.i = lshr i32 %and.i, %5
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_set_logic_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %pwrst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %pwrst to i32
  %shl = shl nuw nsw i32 %conv, 2
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %4 = and i32 %3, -67108865
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %or.i = or i32 %5, %shl
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %6) #4, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_pwrdm_wait_transition(ptr nocapture noundef readonly %pwrdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i21 = sext i16 %1 to i32
  %add.ptr.i22 = getelementptr i8, ptr %2, i32 %conv.i21
  %add.ptr2.i23 = getelementptr i8, ptr %add.ptr.i22, i32 228
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i23) #4, !srcloc !19
  %4 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not24 = icmp eq i32 %4, 0
  br i1 %tobool.not24, label %entry.do.body3_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %c.025 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %c.025)
  %exitcond.not = icmp eq i32 %c.025, 100000
  br i1 %exitcond.not, label %do.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %c.025, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #4
  %6 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 228
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !19
  %10 = and i32 %9, 4096
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %while.body.do.body3_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

while.body.do.body3_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwrdm, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12) #7
  br label %cleanup

do.body3:                                         ; preds = %while.body.do.body3_crit_edge, %entry.do.body3_crit_edge
  %c.118 = phi i32 [ 0, %entry.do.body3_crit_edge ], [ %inc, %while.body.do.body3_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2_pwrdm_wait_transition.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2_pwrdm_wait_transition, %if.then9)) #4
          to label %cleanup [label %if.then9], !srcloc !22

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2_pwrdm_wait_transition.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.4, i32 noundef %c.118) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body3, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %if.then9 ], [ 0, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clkdm_add_wkdep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %0 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 1
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 200
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #4, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %or.i.i = or i32 %8, %shl
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %add.ptr2.i4.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i, i32 %9) #4, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clkdm_del_wkdep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %0 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 1
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 200
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #4, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %8, %neg.i.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %add.ptr2.i4.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i, i32 %9) #4, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clkdm_read_wkdep(ptr nocapture noundef readonly %clkdm1, ptr nocapture noundef readonly %clkdm2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm1, i32 0, i32 1
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %clkdm2, i32 0, i32 5
  %4 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 200
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #4, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %and.i = and i32 %8, %shl
  %shr.i = lshr i32 %and.i, %conv
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clkdm_clear_all_wkdeps(ptr nocapture noundef readonly %clkdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wkdep_srcs = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 9
  %0 = ptrtoint ptr %wkdep_srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wkdep_srcs, align 4
  %tobool.not12 = icmp eq ptr %1, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %mask.015 = phi i32 [ %mask.1, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %cd.013 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %cd.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cd.013, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %clkdm2 = getelementptr inbounds %struct.clkdm_dep, ptr %cd.013, i32 0, i32 1
  %4 = ptrtoint ptr %clkdm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkdm2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %dep_bit = getelementptr inbounds %struct.clockdomain, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dep_bit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dep_bit, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %mask.015
  %wkdep_usecount = getelementptr inbounds %struct.clkdm_dep, ptr %cd.013, i32 0, i32 2
  %8 = ptrtoint ptr %wkdep_usecount to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %wkdep_usecount, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %mask.1 = phi i32 [ %or, %if.end ], [ %mask.015, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.clkdm_dep, ptr %cd.013, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %mask.1, %for.inc.for.end_crit_edge ], [ %mask.015, %land.rhs.for.end_crit_edge ]
  %pwrdm = getelementptr inbounds %struct.clockdomain, ptr %clkdm, i32 0, i32 1
  %9 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwrdm, align 4
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i.i = sext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 200
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #4, !srcloc !19
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  %neg.i.i = xor i32 %mask.0.lcssa, -1
  %and.i.i = and i32 %15, %neg.i.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i
  %add.ptr2.i4.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i, i32 %16) #4, !srcloc !20
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/prm2xxx_3xxx.c", i32 185, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap2_pwrdm_wait_transition._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap2_pwrdm_wait_transition._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/prm2xxx_3xxx.c", i32 190, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @omap2_pwrdm_wait_transition.__UNIQUE_ID_ddebug167, !7, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 1252815}
!20 = !{i64 1252397}
!21 = !{i32 0, i32 33}
!22 = !{i64 2148696531, i64 2148696536, i64 2148696549, i64 2148696593, i64 2148696627, i64 2148696648}
