; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/prm33xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm33xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@am33xx_pwrdm_operations = dso_local global { %struct.pwrdm_ops, [44 x i8] } { %struct.pwrdm_ops { ptr @am33xx_pwrdm_set_next_pwrst, ptr @am33xx_pwrdm_read_next_pwrst, ptr @am33xx_pwrdm_read_pwrst, ptr null, ptr @am33xx_pwrdm_set_logic_retst, ptr @am33xx_pwrdm_set_mem_onst, ptr @am33xx_pwrdm_set_mem_retst, ptr @am33xx_pwrdm_read_logic_pwrst, ptr null, ptr @am33xx_pwrdm_read_logic_retst, ptr @am33xx_pwrdm_read_mem_pwrst, ptr null, ptr @am33xx_pwrdm_read_mem_retst, ptr @am33xx_pwrdm_clear_all_prev_pwrst, ptr null, ptr null, ptr @am33xx_pwrdm_set_lowpwrstchange, ptr @am33xx_pwrdm_wait_transition, ptr @am33xx_check_vcvp, ptr @am33xx_pwrdm_save_context, ptr @am33xx_pwrdm_restore_context }, [44 x i8] zeroinitializer }, align 32
@am33xx_prm_ll_data = internal global { %struct.prm_ll_data, [52 x i8] } { %struct.prm_ll_data { ptr null, ptr null, ptr null, ptr null, ptr @am33xx_prm_assert_hardreset, ptr @am33xx_prm_deassert_hardreset, ptr @am33xx_prm_is_hardreset_asserted, ptr @am33xx_prm_global_warm_sw_reset, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__exitcall_am33xx_prm_exit = internal global ptr @am33xx_prm_exit, section ".exitcall.exit", align 4
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@am33xx_pwrdm_wait_transition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013powerdomain: %s: waited too long to complete transition\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"am33xx_pwrdm_wait_transition\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-omap2/prm33xx.c\00", [34 x i8] zeroinitializer }, align 32
@am33xx_pwrdm_wait_transition._entry_ptr = internal global ptr @am33xx_pwrdm_wait_transition._entry, section ".printk_index", align 4
@am33xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug135 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"prm33xx\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"powerdomain: completed transition in %d loops\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"am33xx_pwrdm_operations\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 374, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"am33xx_prm_ll_data\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 393, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 312, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [33 x i8] c"../arch/arm/mach-omap2/prm33xx.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 317, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__exitcall_am33xx_prm_exit, ptr @am33xx_prm_exit, ptr @am33xx_pwrdm_wait_transition._entry, ptr @am33xx_pwrdm_wait_transition._entry_ptr, ptr @am33xx_pwrdm_operations, ptr @am33xx_prm_ll_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pwrdm_operations to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_prm_ll_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_pwrdm_wait_transition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %pwrst to i32
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %2 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %conv1.i.i = zext i8 %3 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %6 = and i32 %5, -50331649
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or.i = or i32 %7, %conv
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %8) #6, !srcloc !26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %2 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %conv1.i = zext i8 %3 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %6 = lshr i32 %5, 24
  %and = and i32 %6, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %pwrstst_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 20
  %2 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %conv1.i = zext i8 %3 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %6 = lshr i32 %5, 24
  %and = and i32 %6, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_logic_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %logicretstate_mask = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 21
  %0 = ptrtoint ptr %logicretstate_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logicretstate_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %pwrst to i32
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true) #6, !range !27
  %shl = shl i32 %conv, %2
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %3 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %5 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %conv1.i.i = zext i8 %6 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %9, %neg.i
  %or.i = or i32 %and.i, %shl
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %10) #6, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_mem_onst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %bank to i32
  %arrayidx = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 22, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %pwrst to i32
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true) #6, !range !27
  %shl = shl i32 %conv, %2
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %3 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %5 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %conv1.i.i = zext i8 %6 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %9, %neg.i
  %or.i = or i32 %and.i, %shl
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %10) #6, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_mem_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %bank to i32
  %arrayidx = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 23, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %pwrst to i32
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true) #6, !range !27
  %shl = shl i32 %conv, %2
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %3 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %5 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %conv1.i.i = zext i8 %6 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %neg.i = xor i32 %1, -1
  %and.i = and i32 %9, %neg.i
  %or.i = or i32 %and.i, %shl
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %10) #6, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_logic_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %pwrstst_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 20
  %2 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %conv1.i = zext i8 %3 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %6 = lshr i32 %5, 26
  %shr = and i32 %6, 1
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_logic_retst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %logicretstate_mask = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 21
  %0 = ptrtoint ptr %logicretstate_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logicretstate_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %4 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %conv1.i = zext i8 %5 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %and = and i32 %8, %1
  %9 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true) #6, !range !27
  %shr = lshr i32 %and, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_mem_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %bank to i32
  %arrayidx = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 24, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %pwrstst_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 20
  %4 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %conv1.i = zext i8 %5 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %and = and i32 %8, %1
  %9 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true) #6, !range !27
  %shr = lshr i32 %and, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_read_mem_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %bank to i32
  %arrayidx = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 25, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %4 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %conv1.i = zext i8 %5 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %and = and i32 %8, %1
  %9 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true) #6, !range !27
  %shr = lshr i32 %and, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_clear_all_prev_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %pwrstst_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 20
  %2 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %conv1.i.i = zext i8 %3 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %6 = or i32 %5, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %6) #6, !srcloc !26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_set_lowpwrstchange(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %2 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %conv1.i.i = zext i8 %3 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %6 = or i32 %5, 268435456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %6) #6, !srcloc !26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_pwrdm_wait_transition(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %pwrstst_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 20
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %2 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i24 = sext i16 %1 to i32
  %add.ptr.i25 = getelementptr i8, ptr %4, i32 %conv.i24
  %conv1.i26 = zext i8 %3 to i32
  %add.ptr2.i27 = getelementptr i8, ptr %add.ptr.i25, i32 %conv1.i26
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i27) #6, !srcloc !25
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not28 = icmp eq i32 %6, 0
  br i1 %tobool.not28, label %entry.do.body5_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %c.029 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %c.029)
  %exitcond.not = icmp eq i32 %c.029, 100000
  br i1 %exitcond.not, label %do.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %c.029, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  %8 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %prcm_offs, align 8
  %10 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv.i
  %conv1.i = zext i8 %11 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %14 = and i32 %13, 4096
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %while.body.do.body5_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.do.body5_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pwrdm, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16) #9
  br label %cleanup

do.body5:                                         ; preds = %while.body.do.body5_crit_edge, %entry.do.body5_crit_edge
  %c.121 = phi i32 [ 0, %entry.do.body5_crit_edge ], [ %inc, %while.body.do.body5_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am33xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug135, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am33xx_pwrdm_wait_transition, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !28

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @am33xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug135, ptr noundef nonnull @.str.4, i32 noundef %c.121) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body5, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %if.then11 ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @am33xx_check_vcvp() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_pwrdm_save_context(ptr nocapture noundef %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %2 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstctrl_offs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %conv1.i = zext i8 %3 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %context = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 28
  %6 = and i32 %5, -268435457
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %context, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_pwrdm_restore_context(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  %pwrstst_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 20
  %2 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %conv1.i = zext i8 %3 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %6 = lshr i32 %5, 24
  %context = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 28
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %context, align 8
  %9 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %11 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pwrstctrl_offs, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i14 = sext i16 %10 to i32
  %add.ptr.i15 = getelementptr i8, ptr %14, i32 %conv.i14
  %conv1.i16 = zext i8 %12 to i32
  %add.ptr2.i17 = getelementptr i8, ptr %add.ptr.i15, i32 %conv1.i16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17, i32 %13) #6, !srcloc !26
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %context, align 8
  %17 = xor i32 %16, %6
  %18 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %19 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %prcm_offs, align 8
  %21 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i24.i = sext i16 %20 to i32
  %add.ptr.i25.i = getelementptr i8, ptr %23, i32 %conv.i24.i
  %conv1.i26.i = zext i8 %22 to i32
  %add.ptr2.i27.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %conv1.i26.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i27.i) #6, !srcloc !25
  %25 = and i32 %24, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not28.i = icmp eq i32 %25, 0
  br i1 %tobool.not28.i, label %if.then.do.body5.i_crit_edge, label %if.then.land.rhs.i_crit_edge

if.then.land.rhs.i_crit_edge:                     ; preds = %if.then
  br label %land.rhs.i

if.then.do.body5.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.land.rhs.i_crit_edge
  %c.029.i = phi i32 [ %inc.i, %while.body.i.land.rhs.i_crit_edge ], [ 0, %if.then.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %c.029.i)
  %exitcond.not.i = icmp eq i32 %c.029.i, 100000
  br i1 %exitcond.not.i, label %do.end.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %c.029.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #6
  %27 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %prcm_offs, align 8
  %29 = ptrtoint ptr %pwrstst_offs to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pwrstst_offs, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %conv.i.i
  %conv1.i.i = zext i8 %30 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %33 = and i32 %32, 4096
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %while.body.i.do.body5.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.body.i.do.body5.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pwrdm, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %35) #9
  br label %if.end

do.body5.i:                                       ; preds = %while.body.i.do.body5.i_crit_edge, %if.then.do.body5.i_crit_edge
  %c.121.i = phi i32 [ 0, %if.then.do.body5.i_crit_edge ], [ %inc.i, %while.body.i.do.body5.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @am33xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug135, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@am33xx_pwrdm_restore_context, %if.then11.i)) #6
          to label %if.end [label %if.then11.i], !srcloc !28

if.then11.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @am33xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug135, ptr noundef nonnull @.str.4, i32 noundef %c.121.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then11.i, %do.body5.i, %do.end.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @am33xx_prm_init(ptr nocapture noundef readnone %data) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @prm_register(ptr noundef nonnull @am33xx_prm_ll_data) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_prm_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @prm_unregister(ptr noundef nonnull @am33xx_prm_ll_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_prm_assert_hardreset(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %rstctrl_offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %shift to i32
  %shl = shl nuw i32 1, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %inst to i32
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %conv.i.i
  %conv1.i.i = zext i16 %rstctrl_offs to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %or.i = or i32 %2, %shl
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %3) #6, !srcloc !26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_prm_deassert_hardreset(i8 noundef zeroext %shift, i8 noundef zeroext %st_shift, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %rstctrl_offs, i16 noundef zeroext %rstst_offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %inst to i32
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %conv.i.i
  %conv1.i.i = zext i16 %rstctrl_offs to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !25
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %conv.i = zext i8 %shift to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %2, %shl.i
  %shr.i = lshr i32 %and.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp = icmp eq i32 %shr.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %st_shift to i32
  %shl = shl nuw i32 1, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %3, i32 %conv.i.i
  %conv1.i.i26 = zext i16 %rstst_offs to i32
  %add.ptr2.i.i27 = getelementptr i8, ptr %add.ptr.i.i25, i32 %conv1.i.i26
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i27) #6, !srcloc !25
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %5) #6, !srcloc !26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %7, i32 %conv.i.i
  %add.ptr2.i.i31 = getelementptr i8, ptr %add.ptr.i.i29, i32 %conv1.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i31) #6, !srcloc !25
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %neg.i = xor i32 %shl.i, -1
  %and.i32 = and i32 %9, %neg.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i33 = getelementptr i8, ptr %11, i32 %conv.i.i
  %add.ptr2.i4.i34 = getelementptr i8, ptr %add.ptr.i2.i33, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i34, i32 %10) #6, !srcloc !26
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.end
  %c.043 = phi i32 [ 0, %if.end ], [ %inc, %if.end10.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %12, i32 %conv.i.i
  %add.ptr2.i.i38 = getelementptr i8, ptr %add.ptr.i.i36, i32 %conv1.i.i26
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i38) #6, !srcloc !25
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %and.i41 = and i32 %14, %shl
  %shr.i42 = lshr i32 %and.i41, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i42)
  %tobool.not = icmp eq i32 %shr.i42, 0
  br i1 %tobool.not, label %if.end10, label %for.end

if.end10:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %inc = add nuw nsw i32 %c.043, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end10.for.end.thread_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end10.for.end.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %c.043)
  %cmp11 = icmp eq i32 %c.043, 10000
  br i1 %cmp11, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end10.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %entry.cleanup_crit_edge ], [ -16, %for.end.thread ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @am33xx_prm_is_hardreset_asserted(i8 noundef zeroext %shift, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %rstctrl_offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %inst to i32
  %add.ptr.i = getelementptr i8, ptr %0, i32 %conv.i
  %conv1.i = zext i16 %rstctrl_offs to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !25
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %conv = zext i8 %shift to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %2, %shl
  %shr = lshr i32 %and, %conv
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am33xx_prm_global_warm_sw_reset() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 3840
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !25
  %2 = or i32 %1, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %3, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %2) #6, !srcloc !26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 3840
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @am33xx_pwrdm_operations, !1, !"am33xx_pwrdm_operations", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/prm33xx.c", i32 374, i32 18}
!2 = !{ptr @__exitcall_am33xx_prm_exit, !3, !"__exitcall_am33xx_prm_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/prm33xx.c", i32 409, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/prm33xx.c", i32 312, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @am33xx_pwrdm_wait_transition._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @am33xx_pwrdm_wait_transition._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/prm33xx.c", i32 317, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @am33xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug135, !11, !"__UNIQUE_ID_ddebug135", i1 false, i1 false}
!14 = !{ptr @am33xx_prm_ll_data, !15, !"am33xx_prm_ll_data", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/prm33xx.c", i32 393, i32 27}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 1257090}
!26 = !{i64 1256672}
!27 = !{i32 0, i32 33}
!28 = !{i64 2148700806, i64 2148700811, i64 2148700824, i64 2148700868, i64 2148700902, i64 2148700923}
