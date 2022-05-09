; ModuleID = '/llk/IR_all_yes/arch/arm/probes/kprobes/opt-arm.c_pt.bc'
source_filename = "../arch/arm/probes/kprobes/opt-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm ".global optprobe_template_entry"
module asm "optprobe_template_entry:"
module asm ".global optprobe_template_sub_sp"
module asm "optprobe_template_sub_sp:\09sub\09sp, sp, #0xff"
module asm "\09stmia\09sp, {r0 - r14} "
module asm ".global optprobe_template_add_sp"
module asm "optprobe_template_add_sp:\09add\09r3, sp, #0xff"
module asm "\09str\09r3, [sp, #52]"
module asm "\09mrs\09r4, cpsr"
module asm "\09str\09r4, [sp, #64]"
module asm "\09mov\09r1, sp"
module asm "\09ldr\09r0, 1f"
module asm "\09ldr\09r2, 2f"
module asm "\09and\09r4, sp, #4"
module asm "\09sub\09sp, sp, r4"
module asm "\09blx\09r2"
module asm "\09add\09sp, sp, r4"
module asm "\09ldr\09r1, [sp, #64]"
module asm "\09tst\09r1, #0x00000020"
module asm "\09ldrne\09r2, [sp, #60]"
module asm "\09orrne\09r2, #1"
module asm "\09strne\09r2, [sp, #60] @ set bit0 of PC for thumb"
module asm "\09msr\09cpsr_cxsf, r1"
module asm ".global optprobe_template_restore_begin"
module asm "optprobe_template_restore_begin:"
module asm "\09ldmia\09sp, {r0 - r15}"
module asm ".global optprobe_template_restore_orig_insn"
module asm "optprobe_template_restore_orig_insn:"
module asm "\09nop"
module asm ".global optprobe_template_restore_end"
module asm "optprobe_template_restore_end:"
module asm "\09nop"
module asm ".global optprobe_template_val"
module asm "optprobe_template_val:"
module asm "1:\09.long 0"
module asm ".global optprobe_template_call"
module asm "optprobe_template_call:"
module asm "2:\09.long 0"
module asm ".global optprobe_template_end"
module asm "optprobe_template_end:"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kprobe_ctlblk = type { i32, %struct.prev_kprobe }
%struct.prev_kprobe = type { ptr, i32 }
%struct.kprobe_insn_cache = type { %struct.mutex, ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.arch_optimized_insn = type { [1 x i32], ptr }
%struct.kprobe = type { %struct.hlist_node, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.arch_probes_insn, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.optimized_kprobe = type { %struct.kprobe, %struct.list_head, %struct.arch_optimized_insn }

@_kbl_addr_optimized_callback = internal global i32 ptrtoint (ptr @optimized_callback to i32), section "_kprobe_blacklist", align 4
@optprobe_template_entry = external dso_local global [0 x i32], align 4
@optprobe_template_end = external dso_local global [0 x i32], align 4
@optprobe_template_sub_sp = external dso_local global [0 x i32], align 4
@optprobe_template_add_sp = external dso_local global [0 x i32], align 4
@optprobe_template_val = external dso_local global [0 x i32], align 4
@optprobe_template_call = external dso_local global [0 x i32], align 4
@optprobe_template_restore_end = external dso_local global [0 x i32], align 4
@optprobe_template_restore_begin = external dso_local global [0 x i32], align 4
@optprobe_template_restore_orig_insn = external dso_local global [0 x i32], align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/probes/kprobes/opt-arm.c\00", [62 x i8] zeroinitializer }, align 32
@current_kprobe = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kprobe_ctlblk = external dso_local global %struct.kprobe_ctlblk, section ".data..percpu", align 4
@kprobe_optinsn_slots = external dso_local global %struct.kprobe_insn_cache, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4261412864]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private constant [37 x i8] c"../arch/arm/probes/kprobes/opt-arm.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 297, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @_kbl_addr_optimized_callback, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_prepared_optinsn(ptr nocapture noundef readonly %optinsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %insn = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 1
  %0 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %insn, align 4
  %cmp = icmp ne ptr %1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_check_optimized_kprobe(ptr nocapture noundef readnone %op) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optimized_callback(ptr noundef %op, ptr noundef %regs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.kprobe, ptr %op, i32 0, i32 3
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 17
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %arrayidx3, align 4
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !18
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry.do.end13_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !8) #6
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i112 = add i32 %11, ptrtoint (ptr @current_kprobe to i32)
  %12 = inttoptr i32 %add.i112 to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kprobes_inc_nmissed_count(ptr noundef %op) #6
  br label %if.end59

if.else:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %11, ptrtoint (ptr @kprobe_ctlblk to i32)
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %op, ptr %12, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %15, align 4
  tail call void @opt_pre_handler(ptr noundef %op, ptr noundef %regs) #6
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx53 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %21, ptrtoint (ptr @current_kprobe to i32)
  %22 = inttoptr i32 %add54 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %22, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then17
  %kprobe_direct_exec = getelementptr inbounds %struct.kprobe, ptr %op, i32 0, i32 9, i32 7
  %24 = ptrtoint ptr %kprobe_direct_exec to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %kprobe_direct_exec, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool60.not = icmp eq i8 %25, 0
  br i1 %tobool60.not, label %if.then61, label %if.end59.do.body66_crit_edge

if.end59.do.body66_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %op, i32 0, i32 9
  %insn_singlestep = getelementptr inbounds %struct.kprobe, ptr %op, i32 0, i32 9, i32 3
  %26 = ptrtoint ptr %insn_singlestep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %insn_singlestep, align 4
  %opcode = getelementptr inbounds %struct.kprobe, ptr %op, i32 0, i32 8
  %28 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opcode, align 4
  tail call void %27(i32 noundef %29, ptr noundef %ainsn, ptr noundef %regs) #6
  br label %do.body66

do.body66:                                        ; preds = %if.then61, %if.end59.do.body66_crit_edge
  br i1 %tobool.not, label %if.then75, label %do.body66.do.body77_crit_edge

do.body66.do.body77_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body77

if.then75:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body77

do.body77:                                        ; preds = %if.then75, %do.body66.do.body77_crit_edge
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !20
  %and.i.i115 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i115)
  %tobool85.not = icmp eq i32 %and.i.i115, 0
  br i1 %tobool85.not, label %if.then89, label %do.body77.do.end92_crit_edge, !prof !21

do.body77.do.end92_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %do.body77.do.end92_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #6, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_prepare_optimized_kprobe(ptr noundef %op, ptr noundef %orig) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stack_space.i = getelementptr inbounds %struct.kprobe, ptr %orig, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %stack_space.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stack_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %1)
  %cmp3.i = icmp ugt i32 %1, 183
  br i1 %cmp3.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__get_insn_slot(ptr noundef nonnull @kprobe_optinsn_slots) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  %addr = getelementptr inbounds %struct.kprobe, ptr %orig, i32 0, i32 3
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr, align 4
  %5 = ptrtoint ptr %4 to i32
  %sub = add i32 %2, 8
  %add = sub i32 %sub, %5
  %and = and i32 %add, -33554429
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.then6 [
    i32 0, label %if.end4.if.end7_crit_edge
    i32 -33554432, label %if.end4.if.end7_crit_edge96
  ]

if.end4.if.end7_crit_edge96:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__free_insn_slot(ptr noundef nonnull @kprobe_optinsn_slots, ptr noundef nonnull %call.i, i32 noundef 0) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end4.if.end7_crit_edge, %if.end4.if.end7_crit_edge96
  %7 = call ptr @memcpy(ptr %call.i, ptr @optprobe_template_entry, i32 mul (i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_end to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4), i32 4))
  %8 = ptrtoint ptr %stack_space.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stack_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %do.body12, label %do.end18, !prof !21

do.body12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/opt-arm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #6, !srcloc !23
  unreachable

do.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %9)
  %cmp23 = icmp ugt i32 %9, 183
  br i1 %cmp23, label %do.body31, label %do.end39, !prof !21

do.body31:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/opt-arm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 246, 0\0A.popsection", ""() #6, !srcloc !24
  unreachable

do.end39:                                         ; preds = %do.end18
  %add21 = add nuw nsw i32 %9, 72
  %or = or i32 %add21, -498216960
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i32, ptr %call.i, i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_sub_sp to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4)
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx, align 4
  %or40 = or i32 %add21, -494063616
  %12 = tail call i32 @llvm.bswap.i32(i32 %or40)
  %arrayidx41 = getelementptr i32, ptr %call.i, i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_add_sp to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4)
  %13 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx41, align 4
  %14 = ptrtoint ptr %op to i32
  %arrayidx42 = getelementptr i32, ptr %call.i, i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_val to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4)
  %15 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx42, align 4
  %arrayidx43 = getelementptr i32, ptr %call.i, i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_call to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4)
  %16 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 ptrtoint (ptr @optimized_callback to i32), ptr %arrayidx43, align 4
  %kprobe_direct_exec = getelementptr inbounds %struct.kprobe, ptr %orig, i32 0, i32 9, i32 7
  %17 = ptrtoint ptr %kprobe_direct_exec to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %kprobe_direct_exec, align 4
  %register_usage_flags = getelementptr inbounds %struct.kprobe, ptr %orig, i32 0, i32 9, i32 6
  %18 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %register_usage_flags, align 4
  %20 = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool47.not = icmp eq i32 %20, 0
  br i1 %tobool47.not, label %if.then48, label %do.end39.if.end61_crit_edge

do.end39.if.end61_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then48:                                        ; preds = %do.end39
  %arrayidx49 = getelementptr i32, ptr %call.i, i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_restore_end to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4)
  %21 = ptrtoint ptr %arrayidx49 to i32
  %addr50 = getelementptr inbounds %struct.kprobe, ptr %op, i32 0, i32 3
  %22 = ptrtoint ptr %addr50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr50, align 4
  %24 = ptrtoint ptr %23 to i32
  %add51 = add i32 %24, 4
  %call.i95 = tail call i32 @__arm_gen_branch(i32 noundef %21, i32 noundef %add51, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp53.not = icmp eq i32 %call.i95, 0
  br i1 %cmp53.not, label %if.then48.if.end61_crit_edge, label %if.then54

if.then48.if.end61_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then54:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx55 = getelementptr i32, ptr %call.i, i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_restore_begin to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4)
  %25 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -8413720, ptr %arrayidx55, align 4
  %opcode = getelementptr inbounds %struct.kprobe, ptr %orig, i32 0, i32 8
  %26 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %opcode, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %arrayidx56 = getelementptr i32, ptr %call.i, i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_restore_orig_insn to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4)
  %29 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx56, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %call.i95)
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx49, align 4
  %32 = ptrtoint ptr %kprobe_direct_exec to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %kprobe_direct_exec, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.then48.if.end61_crit_edge, %do.end39.if.end61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %arrayidx62 = getelementptr i32, ptr %call.i, i32 sdiv (i32 sub (i32 ptrtoint (ptr @optprobe_template_end to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), i32 4)
  %34 = ptrtoint ptr %arrayidx62 to i32
  tail call void %33(i32 noundef %2, i32 noundef %34) #6
  %insn = getelementptr inbounds %struct.optimized_kprobe, ptr %op, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %insn to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %insn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.then6 ], [ 0, %if.end61 ], [ -84, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_optimize_kprobes(ptr noundef readonly %oplist) local_unnamed_addr #2 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oplist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oplist, align 4
  %cmp.not78 = icmp eq ptr %1, %oplist
  br i1 %cmp.not78, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in79 = phi ptr [ %.pn81, %list_del_init.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn81 = load ptr, ptr %.pn.in79, align 4
  %flags.i = getelementptr i8, ptr %.pn.in79, i32 -4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.if.end_crit_edge, label %do.end, !prof !25

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %optinsn = getelementptr i8, ptr %.pn.in79, i32 8
  %addr = getelementptr i8, ptr %.pn.in79, i32 -60
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = ptrtoint ptr %optinsn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %optinsn, align 4
  %10 = ptrtoint ptr %6 to i32
  %insn31 = getelementptr i8, ptr %.pn.in79, i32 12
  %11 = ptrtoint ptr %insn31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %insn31, align 4
  %13 = ptrtoint ptr %12 to i32
  %call.i = tail call i32 @__arm_gen_branch(i32 noundef %10, i32 noundef %13, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34 = icmp eq i32 %call.i, 0
  br i1 %cmp34, label %do.body42, label %do.end50, !prof !21

do.body42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/opt-arm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #6, !srcloc !26
  unreachable

do.end50:                                         ; preds = %if.end
  %14 = ptrtoint ptr %optinsn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %optinsn, align 4
  %16 = shl i32 %15, 24
  %and = and i32 %16, -268435456
  %and53 = and i32 %call.i, 268435455
  %or = or i32 %and, %and53
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr, align 4
  tail call void @kprobes_remove_breakpoint(ptr noundef %18, i32 noundef %or) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in79) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end50.list_del_init.exit_crit_edge

do.end50.list_del_init.exit_crit_edge:            ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in79, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in79, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end50.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %.pn.in79, ptr %.pn.in79, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in79, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.pn.in79, ptr %prev.i3.i, align 4
  %cmp.not = icmp eq ptr %.pn81, %oplist
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobes_remove_breakpoint(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_unoptimize_kprobe(ptr noundef %op) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @arch_arm_kprobe(ptr noundef %op) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_arm_kprobe(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_unoptimize_kprobes(ptr noundef readonly %oplist, ptr noundef %done_list) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oplist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oplist, align 4
  %cmp.not19 = icmp eq ptr %1, %oplist
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %list_move.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %op.0 = getelementptr i8, ptr %.pn.in20, i32 -80
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  tail call void @arch_arm_kprobe(ptr noundef %op.0) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %9 = ptrtoint ptr %done_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %done_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in20, ptr noundef %done_list, ptr noundef %10) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.pn.in20, ptr %prev1.i.i2.i, align 4
  %12 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %.pn.in20, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %done_list, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %done_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %.pn.in20, ptr %done_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %oplist
  br i1 %cmp.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_within_optimized_kprobe(ptr nocapture noundef readonly %op, ptr noundef readnone %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %op, i32 0, i32 3
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr1, align 4
  %cmp.not = icmp ule ptr %1, %addr
  %add.ptr = getelementptr i32, ptr %1, i32 1
  %cmp4 = icmp ugt ptr %add.ptr, %addr
  %narrow = and i1 %cmp.not, %cmp4
  %2 = zext i1 %narrow to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_remove_optimized_kprobe(ptr nocapture noundef %op) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %insn.i = getelementptr inbounds %struct.optimized_kprobe, ptr %op, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %insn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %insn.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__arch_remove_optimized_kprobe.exit_crit_edge, label %if.then.i

entry.__arch_remove_optimized_kprobe.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__arch_remove_optimized_kprobe.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__free_insn_slot(ptr noundef nonnull @kprobe_optinsn_slots, ptr noundef nonnull %1, i32 noundef 1) #6
  %2 = ptrtoint ptr %insn.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %insn.i, align 4
  br label %__arch_remove_optimized_kprobe.exit

__arch_remove_optimized_kprobe.exit:              ; preds = %if.then.i, %entry.__arch_remove_optimized_kprobe.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobes_inc_nmissed_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @opt_pre_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_insn_slot(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_insn_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__arm_gen_branch(i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @_kbl_addr_optimized_callback, !1, !"_kbl_addr_optimized_callback", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/kprobes/opt-arm.c", i32 182, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/probes/kprobes/opt-arm.c", i32 297, i32 3}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/probes/kprobes/opt-arm.c", i32 167, i32 3}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/kprobes.h", i32 373, i32 9}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 895783, i64 895844}
!19 = !{i8 0, i8 2}
!20 = !{i64 898515}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 898800}
!23 = !{i64 2154087692, i64 2154088190, i64 2154087729, i64 2154087785, i64 2154087819, i64 2154087843, i64 2154087884, i64 2154087905, i64 2154087933, i64 2154087967}
!24 = !{i64 2154089328, i64 2154089826, i64 2154089365, i64 2154089421, i64 2154089455, i64 2154089479, i64 2154089520, i64 2154089541, i64 2154089569, i64 2154089603}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2154097857, i64 2154098355, i64 2154097894, i64 2154097950, i64 2154097984, i64 2154098008, i64 2154098049, i64 2154098070, i64 2154098098, i64 2154098132}
