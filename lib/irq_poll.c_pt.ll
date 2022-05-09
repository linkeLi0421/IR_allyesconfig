; ModuleID = '/llk/IR_all_yes/lib/irq_poll.c_pt.bc'
source_filename = "../lib/irq_poll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+irq_poll_sched\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_poll_sched\09\09\09\09"
module asm "\09.long\09__crc_irq_poll_sched\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_poll_sched:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_poll_sched\22\09\09\09\09\09"
module asm "__kstrtabns_irq_poll_sched:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+irq_poll_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_poll_complete\09\09\09\09"
module asm "\09.long\09__crc_irq_poll_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_poll_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_poll_complete\22\09\09\09\09\09"
module asm "__kstrtabns_irq_poll_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+irq_poll_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_poll_disable\09\09\09\09"
module asm "\09.long\09__crc_irq_poll_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_poll_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_poll_disable\22\09\09\09\09\09"
module asm "__kstrtabns_irq_poll_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+irq_poll_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_poll_enable\09\09\09\09"
module asm "\09.long\09__crc_irq_poll_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_poll_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_poll_enable\22\09\09\09\09\09"
module asm "__kstrtabns_irq_poll_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+irq_poll_init\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_poll_init\09\09\09\09"
module asm "\09.long\09__crc_irq_poll_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_poll_init:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_poll_init\22\09\09\09\09\09"
module asm "__kstrtabns_irq_poll_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@blk_cpu_iopoll = weak dso_local global %struct.list_head zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_irq_poll_sched = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_poll_sched = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_poll_sched = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_poll_sched to i32), ptr @__kstrtab_irq_poll_sched, ptr @__kstrtabns_irq_poll_sched }, section "___ksymtab+irq_poll_sched", align 4
@__kstrtab_irq_poll_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_poll_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_poll_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_poll_complete to i32), ptr @__kstrtab_irq_poll_complete, ptr @__kstrtabns_irq_poll_complete }, section "___ksymtab+irq_poll_complete", align 4
@__kstrtab_irq_poll_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_poll_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_poll_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_poll_disable to i32), ptr @__kstrtab_irq_poll_disable, ptr @__kstrtabns_irq_poll_disable }, section "___ksymtab+irq_poll_disable", align 4
@__kstrtab_irq_poll_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_poll_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_poll_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_poll_enable to i32), ptr @__kstrtab_irq_poll_enable, ptr @__kstrtabns_irq_poll_enable }, section "___ksymtab+irq_poll_enable", align 4
@__kstrtab_irq_poll_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_poll_init = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_poll_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_poll_init to i32), ptr @__kstrtab_irq_poll_init, ptr @__kstrtabns_irq_poll_init }, section "___ksymtab+irq_poll_init", align 4
@__initcall__kmod_irq_poll__258_215_irq_poll_setup4 = internal global ptr @irq_poll_setup, section ".initcall4.init", align 4
@__pcpu_unique_blk_cpu_iopoll = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq_poll:dead\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [18 x i8] c"../lib/irq_poll.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 211, i32 49 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_irq_poll__258_215_irq_poll_setup4, ptr @__ksymtab_irq_poll_complete, ptr @__ksymtab_irq_poll_disable, ptr @__ksymtab_irq_poll_enable, ptr @__ksymtab_irq_poll_init, ptr @__ksymtab_irq_poll_sched, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_poll_sched(ptr noundef %iop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.irq_poll, ptr %iop, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !28
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not = icmp eq i32 %and.i, 0
  br i1 %tobool15.not, label %if.then16, label %do.body6.do.end19_crit_edge

do.body6.do.end19_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.then16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #9
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body6.do.end19_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i61 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i61 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @blk_cpu_iopoll to i32)
  %10 = inttoptr i32 %add to ptr
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %iop, ptr noundef %12, ptr noundef %10) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end19.list_add_tail.exit_crit_edge

do.end19.list_add_tail.exit_crit_edge:            ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iop, ptr %prev.i, align 4
  %14 = ptrtoint ptr %iop to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %iop, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %iop, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %iop, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end19.list_add_tail.exit_crit_edge
  tail call void @raise_softirq_irqoff(i32 noundef 5) #9
  br i1 %tobool15.not, label %if.then35, label %list_add_tail.exit.do.body37_crit_edge

list_add_tail.exit.do.body37_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

if.then35:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #9
  br label %do.body37

do.body37:                                        ; preds = %if.then35, %list_add_tail.exit.do.body37_crit_edge
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !29
  %and.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool45.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool45.not, label %if.then49, label %do.body37.do.end52_crit_edge, !prof !30

do.body37.do.end52_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %do.body37.do.end52_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #9, !srcloc !31
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq_irqoff(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_poll_complete(ptr noundef %iop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !28
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #9
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iop) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end11.__irq_poll_complete.exit_crit_edge

do.end11.__irq_poll_complete.exit_crit_edge:      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %__irq_poll_complete.exit

if.end.i.i.i:                                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %iop, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iop, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %__irq_poll_complete.exit

__irq_poll_complete.exit:                         ; preds = %if.end.i.i.i, %do.end11.__irq_poll_complete.exit_crit_edge
  %7 = ptrtoint ptr %iop to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %iop, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iop, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !32
  %state.i = getelementptr inbounds %struct.irq_poll, ptr %iop, i32 0, i32 1
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 1, ptr elementtype(i32) %state.i) #9, !srcloc !34
  br i1 %tobool.not, label %if.then21, label %__irq_poll_complete.exit.do.body23_crit_edge

__irq_poll_complete.exit.do.body23_crit_edge:     ; preds = %__irq_poll_complete.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

if.then21:                                        ; preds = %__irq_poll_complete.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #9
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %__irq_poll_complete.exit.do.body23_crit_edge
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !29
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !prof !30

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_poll_disable(ptr noundef %iop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.irq_poll, ptr %iop, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #9
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not6 = icmp eq i32 %call5, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #9
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_poll_enable(ptr noundef %iop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.irq_poll, ptr %iop, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end10, !prof !30

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/irq_poll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 164, 0\0A.popsection", ""() #9, !srcloc !35
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 1, ptr elementtype(i32) %state) #9, !srcloc !34
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_poll_init(ptr noundef %iop, i32 noundef %weight, ptr noundef %poll_fn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = getelementptr inbounds i8, ptr %iop, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = ptrtoint ptr %iop to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %iop, ptr %iop, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %iop, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %iop, ptr %prev.i, align 4
  %weight1 = getelementptr inbounds %struct.irq_poll, ptr %iop, i32 0, i32 2
  %4 = ptrtoint ptr %weight1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %weight, ptr %weight1, align 4
  %poll = getelementptr inbounds %struct.irq_poll, ptr %iop, i32 0, i32 3
  %5 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %poll_fn, ptr %poll, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_poll_setup() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %0)
  %cmp6 = icmp ult i32 %call5, %0
  br i1 %cmp6, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call7 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call5, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @blk_cpu_iopoll to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev.i, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call7, ptr noundef nonnull @__cpu_possible_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %6
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @open_softirq(i32 noundef 5, ptr noundef nonnull @irq_poll_softirq) #9
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 21, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @irq_poll_cpu_dead, i1 noundef zeroext false) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_poll_softirq(ptr nocapture noundef readnone %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @blk_cpu_iopoll to i32)
  %6 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !29
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !37
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %6, align 4
  %cmp.i.not72 = icmp eq ptr %10, %6
  br i1 %cmp.i.not72, label %if.end.do.body47_crit_edge, label %while.body.lr.ph

if.end.do.body47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

while.body.lr.ph:                                 ; preds = %if.end
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %budget.073 = phi i32 [ 256, %while.body.lr.ph ], [ %sub22, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget.073)
  %cmp = icmp slt i32 %budget.073, 1
  br i1 %cmp, label %while.body.if.then45_crit_edge, label %lor.lhs.false

while.body.if.then45_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false:                                    ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %lor.lhs.false.if.then45_crit_edge, label %do.body12

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

do.body12:                                        ; preds = %lor.lhs.false
  tail call void @trace_hardirqs_on() #9
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !38
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  %weight16 = getelementptr inbounds %struct.irq_poll, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %weight16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %weight16, align 4
  %state = getelementptr inbounds %struct.irq_poll, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool18.not = icmp eq i32 %and1.i, 0
  br i1 %tobool18.not, label %do.body12.if.end21_crit_edge, label %if.then19

do.body12.if.end21_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %poll = getelementptr inbounds %struct.irq_poll, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %poll, align 4
  %call20 = tail call i32 %19(ptr noundef %13, i32 noundef %15) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body12.if.end21_crit_edge
  %work.0 = phi i32 [ %call20, %if.then19 ], [ 0, %do.body12.if.end21_crit_edge ]
  %sub22 = sub i32 %budget.073, %work.0
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !29
  %and.i.i62 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool26.not = icmp eq i32 %and.i.i62, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !37
  br i1 %tobool26.not, label %if.then29, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #9
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end21.if.end30_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %work.0, i32 %15)
  %cmp33.not = icmp slt i32 %work.0, %15
  br i1 %cmp33.not, label %if.end30.cleanup_crit_edge, label %if.then34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.end30
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not = icmp eq i32 %23, 0
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #9
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then34
  br i1 %call.i.i, label %if.end.i.i.i, label %if.then38.__irq_poll_complete.exit_crit_edge

if.then38.__irq_poll_complete.exit_crit_edge:     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %__irq_poll_complete.exit

if.end.i.i.i:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__irq_poll_complete.exit

__irq_poll_complete.exit:                         ; preds = %if.end.i.i.i, %if.then38.__irq_poll_complete.exit_crit_edge
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !32
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 1, ptr elementtype(i32) %state) #9, !srcloc !34
  br label %cleanup

if.else:                                          ; preds = %if.then34
  br i1 %call.i.i, label %if.end.i.i, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i63 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i63, align 4
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %13, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else.__list_del_entry.exit.i_crit_edge
  %39 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i64 = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %40, ptr noundef %6) #9
  br i1 %call.i.i.i64, label %if.end.i.i.i65, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.i65:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %13, ptr %prev.i2.i, align 4
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %6, ptr %13, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %13, ptr %40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i65, %__list_del_entry.exit.i.cleanup_crit_edge, %__irq_poll_complete.exit, %if.end30.cleanup_crit_edge
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %6, align 4
  %cmp.i.not = icmp eq ptr %46, %6
  br i1 %cmp.i.not, label %cleanup.do.body47_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.do.body47_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %while.body.if.then45_crit_edge
  tail call void @__raise_softirq_irqoff(i32 noundef 5) #9
  br label %do.body47

do.body47:                                        ; preds = %if.then45, %cleanup.do.body47_crit_edge, %if.end.do.body47_crit_edge
  tail call void @trace_hardirqs_on() #9
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_poll_cpu_dead(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !29
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !37
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @blk_cpu_iopoll to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu12 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu12, align 4
  %arrayidx13 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %3, align 4
  %cmp.i.not.i = icmp eq ptr %11, %3
  br i1 %cmp.i.not.i, label %if.end.list_splice_init.exit_crit_edge, label %if.then.i

if.end.list_splice_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add14 = add i32 %9, ptrtoint (ptr @blk_cpu_iopoll to i32)
  %12 = inttoptr i32 %add14 to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %prev3.i.i, align 4
  store ptr %11, ptr %12, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %14, ptr %16, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev6.i.i, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end.list_splice_init.exit_crit_edge
  tail call void @__raise_softirq_irqoff(i32 noundef 5) #9
  tail call void @trace_hardirqs_on() #9
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raise_softirq_irqoff(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_irq_poll_sched, !1, !"__ksymtab_irq_poll_sched", i1 false, i1 false}
!1 = !{!"../lib/irq_poll.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_irq_poll_complete, !3, !"__ksymtab_irq_poll_complete", i1 false, i1 false}
!3 = !{!"../lib/irq_poll.c", i32 76, i32 1}
!4 = !{ptr @__ksymtab_irq_poll_disable, !5, !"__ksymtab_irq_poll_disable", i1 false, i1 false}
!5 = !{!"../lib/irq_poll.c", i32 152, i32 1}
!6 = !{ptr @__ksymtab_irq_poll_enable, !7, !"__ksymtab_irq_poll_enable", i1 false, i1 false}
!7 = !{!"../lib/irq_poll.c", i32 168, i32 1}
!8 = !{ptr @__ksymtab_irq_poll_init, !9, !"__ksymtab_irq_poll_init", i1 false, i1 false}
!9 = !{!"../lib/irq_poll.c", i32 186, i32 1}
!10 = !{ptr @__initcall__kmod_irq_poll__258_215_irq_poll_setup4, !11, !"__initcall__kmod_irq_poll__258_215_irq_poll_setup4", i1 false, i1 false}
!11 = !{!"../lib/irq_poll.c", i32 215, i32 1}
!12 = !{ptr @__pcpu_unique_blk_cpu_iopoll, !13, !"__pcpu_unique_blk_cpu_iopoll", i1 false, i1 false}
!13 = !{!"../lib/irq_poll.c", i32 17, i32 8}
!14 = !{ptr @blk_cpu_iopoll, !13, !"blk_cpu_iopoll", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/irq_poll.c", i32 211, i32 49}
!17 = distinct !{null, !18, !"irq_poll_budget", i1 false, i1 false}
!18 = !{!"../lib/irq_poll.c", i32 15, i32 21}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 605817, i64 605878}
!29 = !{i64 608549}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 608834}
!32 = !{i64 2154296534}
!33 = !{i64 2148310162}
!34 = !{i64 2148220581, i64 2148220613, i64 2148220642, i64 2148220676, i64 2148220707, i64 2148220730}
!35 = !{i64 2154304916, i64 2154305395, i64 2154304953, i64 2154305009, i64 2154305043, i64 2154305067, i64 2154305108, i64 2154305129, i64 2154305157, i64 2154305191}
!36 = !{i64 2154306333}
!37 = !{i64 606252}
!38 = !{i64 606062}
