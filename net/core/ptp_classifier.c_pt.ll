; ModuleID = '/llk/IR_all_yes/net/core/ptp_classifier.c_pt.bc'
source_filename = "../net/core/ptp_classifier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ptp_classify_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_ptp_classify_raw\09\09\09\09"
module asm "\09.long\09__crc_ptp_classify_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_classify_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_classify_raw\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_classify_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ptp_parse_header\22, \22a\22\09"
module asm "\09.weak\09__crc_ptp_parse_header\09\09\09\09"
module asm "\09.long\09__crc_ptp_parse_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_parse_header:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_parse_header\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_parse_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.124 }
%struct.atomic_t = type { i32 }
%union.anon.124 = type { i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { %struct.anon.88, [0 x %struct.sock_filter] }
%struct.anon.88 = type {}
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.140, %union.anon.141, [48 x i8], %union.anon.142, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.144, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.140 = type { ptr }
%union.anon.141 = type { i64 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { i32, ptr }
%union.anon.144 = type { %struct.anon.145 }
%struct.anon.145 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.146, i32, i32, i32, i16, i16, %union.anon.148, i32, %union.anon.149, %union.anon.150, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.146 = type { i32 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sock_fprog_kern = type { i16, ptr }

@ptp_insns = internal global ptr null, section ".data..read_mostly", align 4
@__kstrtab_ptp_classify_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_classify_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_classify_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_classify_raw to i32), ptr @__kstrtab_ptp_classify_raw, ptr @__kstrtabns_ptp_classify_raw }, section "___ksymtab_gpl+ptp_classify_raw", align 4
@__kstrtab_ptp_parse_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_parse_header = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_parse_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_parse_header to i32), ptr @__kstrtab_ptp_parse_header, ptr @__kstrtabns_ptp_parse_header }, section "___ksymtab_gpl+ptp_parse_header", align 4
@ptp_classifier_init.ptp_filter = internal global [66 x %struct.sock_filter] [%struct.sock_filter { i16 40, i8 0, i8 0, i32 12 }, %struct.sock_filter { i16 21, i8 0, i8 12, i32 2048 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 23 }, %struct.sock_filter { i16 21, i8 0, i8 9, i32 17 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 20 }, %struct.sock_filter { i16 69, i8 7, i8 0, i32 8191 }, %struct.sock_filter { i16 177, i8 0, i8 0, i32 14 }, %struct.sock_filter { i16 72, i8 0, i8 0, i32 16 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 319 }, %struct.sock_filter { i16 72, i8 0, i8 0, i32 22 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 16 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 9, i32 34525 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 20 }, %struct.sock_filter { i16 21, i8 0, i8 6, i32 17 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 56 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 319 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 62 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 32 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 32, i32 33024 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 16 }, %struct.sock_filter { i16 21, i8 0, i8 7, i32 35063 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 18 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 8 }, %struct.sock_filter { i16 21, i8 0, i8 35, i32 0 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 18 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 192 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 12, i32 2048 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 27 }, %struct.sock_filter { i16 21, i8 0, i8 9, i32 17 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 24 }, %struct.sock_filter { i16 69, i8 7, i8 0, i32 8191 }, %struct.sock_filter { i16 177, i8 0, i8 0, i32 18 }, %struct.sock_filter { i16 72, i8 0, i8 0, i32 20 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 319 }, %struct.sock_filter { i16 72, i8 0, i8 0, i32 26 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 144 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 8, i32 34525 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 24 }, %struct.sock_filter { i16 21, i8 0, i8 6, i32 17 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 60 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 319 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 66 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 160 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 21, i8 0, i8 7, i32 35063 }, %struct.sock_filter { i16 48, i8 0, i8 0, i32 14 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 8 }, %struct.sock_filter { i16 21, i8 0, i8 4, i32 0 }, %struct.sock_filter { i16 40, i8 0, i8 0, i32 14 }, %struct.sock_filter { i16 84, i8 0, i8 0, i32 15 }, %struct.sock_filter { i16 68, i8 0, i8 0, i32 64 }, %struct.sock_filter { i16 22, i8 0, i8 0, i32 0 }, %struct.sock_filter { i16 6, i8 0, i8 0, i32 0 }], section ".init.data", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@___asan_gen_ = private constant [29 x i8] c"../net/core/ptp_classifier.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 613, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 271, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ptp_classify_raw, ptr @__ksymtab_ptp_parse_header, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptp_classify_raw(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ptp_insns, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str, i32 noundef 613) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@ptp_classify_raw, %if.then.i.i)) #7
          to label %if.else.i.i [label %if.then.i.i], !srcloc !23

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #7
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %2(ptr noundef %skb, ptr noundef %insnsi.i.i) #7
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 7
  %3 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stats9.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %12, i32 0, i32 3
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %and.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %15 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %19 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, ptrtoint (ptr @lockdep_recursion to i32)
  %25 = inttoptr i32 %add.i.i.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %28 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i7.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool20.not.i.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %36 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i9.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %39, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %40 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %43, ptrtoint (ptr @hardirqs_enabled to i32)
  %44 = inttoptr i32 %add47.i.i.i.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  %47 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i12.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool54.not.i.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !29

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %51 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %52, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %12, i32 0, i32 3, i32 0, i32 1
  %53 = tail call ptr @llvm.returnaddress(i32 0) #7
  %54 = ptrtoint ptr %53 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %54) #7
  %55 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %12, align 8
  %inc.i.i.i = add i64 %56, 1
  store i64 %inc.i.i.i, ptr %12, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %12, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #7
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %57 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %58
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  %59 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %60, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !32
  %and.i.i.i4.i.i = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !33

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #7, !srcloc !34
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 9
  %62 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %63(ptr noundef %skb, ptr noundef %insnsi15.i.i) #7
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  ret i32 %ret.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ptp_parse_header(ptr nocapture noundef readonly %skb, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %and = lshr i32 %type, 5
  %4 = and i32 %and, 4
  %spec.select = getelementptr i8, ptr %add.ptr.i, i32 %4
  %and1 = and i32 %type, 112
  %5 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and1, label %entry.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 32, label %sw.bb4
    i32 64, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr2 = getelementptr i8, ptr %spec.select, i32 14
  %6 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr2, align 4
  %bf.clear = shl i8 %bf.load, 2
  %7 = and i8 %bf.clear, 60
  %narrow = add nuw nsw i8 %7, 8
  %add = zext i8 %narrow to i32
  %add.ptr3 = getelementptr i8, ptr %spec.select, i32 %add
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5 = getelementptr i8, ptr %spec.select, i32 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %ptr.1 = phi ptr [ %spec.select, %entry.sw.epilog_crit_edge ], [ %add.ptr5, %sw.bb4 ], [ %add.ptr3, %sw.bb ]
  %add.ptr7 = getelementptr i8, ptr %ptr.1, i32 48
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 %11
  %cmp = icmp ugt ptr %add.ptr7, %add.ptr8
  %add.ptr6 = getelementptr i8, ptr %ptr.1, i32 14
  %spec.select21 = select i1 %cmp, ptr null, ptr %add.ptr6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select21, %sw.epilog ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ptp_classifier_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %ptp_prog = alloca %struct.sock_fprog_kern, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptp_prog) #7
  %0 = ptrtoint ptr %ptp_prog to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 18858823439613951, ptr %ptp_prog, align 8, !annotation !35
  %filter = getelementptr inbounds %struct.sock_fprog_kern, ptr %ptp_prog, i32 0, i32 1
  %1 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ptp_classifier_init.ptp_filter, ptr %filter, align 4
  %call = call i32 @bpf_prog_create(ptr noundef nonnull @ptp_insns, ptr noundef nonnull %ptp_prog) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !29

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/ptp_classifier.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptp_prog) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_ptp_classify_raw, !1, !"__ksymtab_ptp_classify_raw", i1 false, i1 false}
!1 = !{!"../net/core/ptp_classifier.c", i32 108, i32 1}
!2 = !{ptr @__ksymtab_ptp_parse_header, !3, !"__ksymtab_ptp_parse_header", i1 false, i1 false}
!3 = !{!"../net/core/ptp_classifier.c", i32 138, i32 1}
!4 = !{ptr @ptp_classifier_init.ptp_filter, !5, !"ptp_filter", i1 false, i1 false}
!5 = !{!"../net/core/ptp_classifier.c", i32 142, i32 28}
!6 = !{ptr @ptp_insns, !7, !"ptp_insns", i1 false, i1 false}
!7 = !{!"../net/core/ptp_classifier.c", i32 102, i32 25}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/filter.h", i32 613, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2148836206, i64 2148836211, i64 2148836224, i64 2148836268, i64 2148836302, i64 2148836323}
!24 = !{i64 746872, i64 746933}
!25 = !{i64 2150159649}
!26 = !{i64 2150164583}
!27 = !{i64 2150186301}
!28 = !{i64 2150191195}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2150267722}
!31 = !{i64 2150268047}
!32 = !{i64 749604}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 749889}
!35 = !{!"auto-init"}
!36 = !{i64 2157023371, i64 2157023861, i64 2157023408, i64 2157023464, i64 2157023498, i64 2157023522, i64 2157023563, i64 2157023584, i64 2157023612, i64 2157023646}
