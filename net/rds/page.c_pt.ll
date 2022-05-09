; ModuleID = '/llk/IR_all_yes/net/rds/page.c_pt.bc'
source_filename = "../net/rds/page.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rds_page_remainder_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_page_remainder_alloc\09\09\09\09"
module asm "\09.long\09__crc_rds_page_remainder_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_page_remainder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_page_remainder_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_rds_page_remainder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rds_page_remainder = type { ptr, i32 }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.109 }
%union.anon.109 = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.124, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.124 = type { %struct.atomic_t }

@rds_page_remainders = weak dso_local global %struct.rds_page_remainder zeroinitializer, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@rds_page_remainder_alloc.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rds_page_remainder_alloc\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/rds/page.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): bytes %lu ret %d %p %u %u\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_rds_page_remainder_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_page_remainder_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_page_remainder_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_page_remainder_alloc to i32), ptr @__kstrtab_rds_page_remainder_alloc, ptr @__kstrtabns_rds_page_remainder_alloc }, section "___ksymtab_gpl+rds_page_remainder_alloc", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rds_page_exit.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_page_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): cpu %u\0A\00", [18 x i8] zeroinitializer }, align 32
@__pcpu_unique_rds_page_remainders = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.7 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 146, i32 2 }
@___asan_gen_.24 = private constant [18 x i8] c"../net/rds/page.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 161, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 1160, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_rds_page_remainder_alloc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_page_remainder_alloc(ptr nocapture noundef %scat, i32 noundef %bytes, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %gfp, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %bytes)
  %cmp = icmp ugt i32 %bytes, 4095
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.then.do.body225_crit_edge, label %if.else

if.then.do.body225_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body225

if.else:                                          ; preds = %if.then
  %0 = ptrtoint ptr %scat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scat, align 4
  %2 = ptrtoint ptr %call38.i.i.i to i32
  %and2.i.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !29

do.body5.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #5, !srcloc !30
  unreachable

do.body11.i.i:                                    ; preds = %if.else
  %and.i.i.i311 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i311)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i311, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !29

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #5, !srcloc !31
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = and i32 %1, 3
  %or.i.i = or i32 %and.i.i, %2
  %3 = ptrtoint ptr %scat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i.i, ptr %scat, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %scat, i32 0, i32 1
  %4 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %scat, i32 0, i32 2
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %length.i, align 4
  br label %do.body225

do.body:                                          ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %9, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  %10 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, ptrtoint (ptr @rds_page_remainders to i32)
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !33
  %and.i312 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i312)
  %tobool23.not = icmp eq i32 %and.i312, 0
  br i1 %tobool23.not, label %if.then24, label %do.body.while.condthread-pre-split.preheader_crit_edge

do.body.while.condthread-pre-split.preheader_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.condthread-pre-split.preheader

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  br label %while.condthread-pre-split.preheader

while.condthread-pre-split.preheader:             ; preds = %if.then24, %do.body.while.condthread-pre-split.preheader_crit_edge
  br label %while.condthread-pre-split

while.condthread-pre-split:                       ; preds = %if.then182, %while.condthread-pre-split.preheader
  %flags.0.ph = phi i32 [ %91, %if.then182 ], [ %16, %while.condthread-pre-split.preheader ]
  %rem.0.ph.in = phi i32 [ %add154, %if.then182 ], [ %add, %while.condthread-pre-split.preheader ]
  %rem.0.ph = inttoptr i32 %rem.0.ph.in to ptr
  %17 = ptrtoint ptr %rem.0.ph to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %rem.0.ph, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end183, %while.condthread-pre-split
  %18 = phi ptr [ %.pr, %while.condthread-pre-split ], [ %call38.i.i.i331, %if.end183 ]
  %flags.0 = phi i32 [ %flags.0.ph, %while.condthread-pre-split ], [ %91, %if.end183 ]
  %rem.0 = phi ptr [ %rem.0.ph, %while.condthread-pre-split ], [ %90, %if.end183 ]
  %tobool28.not = icmp eq ptr %18, null
  br i1 %tobool28.not, label %while.cond.if.end55_crit_edge, label %land.lhs.true

while.cond.if.end55_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

land.lhs.true:                                    ; preds = %while.cond
  %r_offset = getelementptr inbounds %struct.rds_page_remainder, ptr %rem.0, i32 0, i32 1
  %19 = ptrtoint ptr %r_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r_offset, align 4
  %sub = sub i32 4096, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %bytes)
  %cmp29 = icmp ult i32 %sub, %bytes
  br i1 %cmp29, label %if.end55.thread, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.end55.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %21 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i291 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i291 to ptr
  %preempt_count.i.i292 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i292 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i292, align 4
  %add.i293 = add i32 %24, 1
  store volatile i32 %add.i293, ptr %preempt_count.i.i292, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !34
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %28, ptrtoint (ptr @rds_stats to i32)
  %29 = inttoptr i32 %add47 to ptr
  %s_page_remainder_miss = getelementptr inbounds %struct.rds_statistics, ptr %29, i32 0, i32 26
  %30 = ptrtoint ptr %s_page_remainder_miss to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %s_page_remainder_miss, align 8
  %inc = add i64 %31, 1
  store i64 %inc, ptr %s_page_remainder_miss, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !35
  %32 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i294 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i294 to ptr
  %preempt_count.i.i295 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i295 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i295, align 4
  %sub.i = add i32 %35, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i295, align 4
  %36 = ptrtoint ptr %rem.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rem.0, align 4
  tail call void @__free_pages(ptr noundef %37, i32 noundef 0) #5
  %38 = ptrtoint ptr %rem.0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rem.0, align 4
  br label %do.body105

if.end55:                                         ; preds = %land.lhs.true.if.end55_crit_edge, %while.cond.if.end55_crit_edge
  %39 = ptrtoint ptr %rem.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr340 = load ptr, ptr %rem.0, align 4
  %tobool57.not = icmp eq ptr %.pr340, null
  br i1 %tobool57.not, label %if.end55.do.body105_crit_edge, label %land.lhs.true58

if.end55.do.body105_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body105

land.lhs.true58:                                  ; preds = %if.end55
  %r_offset59 = getelementptr inbounds %struct.rds_page_remainder, ptr %rem.0, i32 0, i32 1
  %40 = ptrtoint ptr %r_offset59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %r_offset59, align 4
  %sub60 = sub i32 4096, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %sub60, i32 %bytes)
  %cmp61.not = icmp ult i32 %sub60, %bytes
  br i1 %cmp61.not, label %land.lhs.true58.do.body105_crit_edge, label %if.then63

land.lhs.true58.do.body105_crit_edge:             ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body105

if.then63:                                        ; preds = %land.lhs.true58
  %r_offset59.le = getelementptr inbounds %struct.rds_page_remainder, ptr %rem.0, i32 0, i32 1
  %42 = ptrtoint ptr %scat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scat, align 4
  %44 = ptrtoint ptr %.pr340 to i32
  %and2.i.i313 = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i313)
  %tobool.not.i.i314 = icmp eq i32 %and2.i.i313, 0
  br i1 %tobool.not.i.i314, label %do.body11.i.i318, label %do.body5.i.i315, !prof !29

do.body5.i.i315:                                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #5, !srcloc !30
  unreachable

do.body11.i.i318:                                 ; preds = %if.then63
  %and.i.i.i316 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i316)
  %tobool.i.not.i.i317 = icmp eq i32 %and.i.i.i316, 0
  br i1 %tobool.i.not.i.i317, label %sg_set_page.exit324, label %do.body19.i.i319, !prof !29

do.body19.i.i319:                                 ; preds = %do.body11.i.i318
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #5, !srcloc !31
  unreachable

sg_set_page.exit324:                              ; preds = %do.body11.i.i318
  %and.i.i320 = and i32 %43, 3
  %or.i.i321 = or i32 %and.i.i320, %44
  %45 = ptrtoint ptr %scat to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i.i321, ptr %scat, align 4
  %offset1.i322 = getelementptr inbounds %struct.scatterlist, ptr %scat, i32 0, i32 1
  %46 = ptrtoint ptr %offset1.i322 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %41, ptr %offset1.i322, align 4
  %length.i323 = getelementptr inbounds %struct.scatterlist, ptr %scat, i32 0, i32 2
  %47 = ptrtoint ptr %length.i323 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bytes, ptr %length.i323, align 4
  %and.i.i325 = and i32 %or.i.i321, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i325)
  %tobool.i.not.i = icmp eq i32 %and.i.i325, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !29

do.body2.i:                                       ; preds = %sg_set_page.exit324
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !36
  unreachable

sg_page.exit:                                     ; preds = %sg_set_page.exit324
  %and.i326 = and i32 %44, -4
  %48 = inttoptr i32 %and.i326 to ptr
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i327 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i327)
  %tobool.not.i.i328 = icmp eq i32 %and.i.i327, 0
  br i1 %tobool.not.i.i328, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !29

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %51, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %48, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #5
  %52 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %53, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !37

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.7) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #5, !srcloc !38
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #5
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #5, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@rds_page_remainder_alloc, %if.then.i.i.i.i)) #5
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !40

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__page_ref_mod(ptr noundef %.pre-phi, i32 noundef 1) #5
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %55 = ptrtoint ptr %r_offset59.le to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %r_offset59.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp68.not = icmp eq i32 %56, 0
  br i1 %cmp68.not, label %get_page.exit.if.end93_crit_edge, label %do.body72

get_page.exit.if.end93_crit_edge:                 ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.body72:                                        ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %57 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i296 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i296 to ptr
  %preempt_count.i.i297 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i297 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i297, align 4
  %add.i298 = add i32 %60, 1
  store volatile i32 %add.i298, ptr %preempt_count.i.i297, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %61 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu, align 4
  %arrayidx85 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx85, align 4
  %add86 = add i32 %64, ptrtoint (ptr @rds_stats to i32)
  %65 = inttoptr i32 %add86 to ptr
  %s_page_remainder_hit = getelementptr inbounds %struct.rds_statistics, ptr %65, i32 0, i32 25
  %66 = ptrtoint ptr %s_page_remainder_hit to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %s_page_remainder_hit, align 8
  %inc87 = add i64 %67, 1
  store i64 %inc87, ptr %s_page_remainder_hit, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %68 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i299 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i299 to ptr
  %preempt_count.i.i300 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i300 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i300, align 4
  %sub.i301 = add i32 %71, -1
  store volatile i32 %sub.i301, ptr %preempt_count.i.i300, align 4
  br label %if.end93

if.end93:                                         ; preds = %do.body72, %get_page.exit.if.end93_crit_edge
  %add94 = add i32 %bytes, 7
  %and = and i32 %add94, -8
  %72 = ptrtoint ptr %r_offset59.le to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %r_offset59.le, align 4
  %add96 = add i32 %73, %and
  store i32 %add96, ptr %r_offset59.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add96)
  %cmp98 = icmp ugt i32 %add96, 4095
  br i1 %cmp98, label %if.then100, label %if.end93.do.body186_crit_edge

if.end93.do.body186_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body186

if.then100:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %rem.0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rem.0, align 4
  tail call void @__free_pages(ptr noundef %75, i32 noundef 0) #5
  %76 = ptrtoint ptr %rem.0 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rem.0, align 4
  br label %do.body186

do.body105:                                       ; preds = %land.lhs.true58.do.body105_crit_edge, %if.end55.do.body105_crit_edge, %if.end55.thread
  %and.i329 = and i32 %flags.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i329)
  %tobool113.not = icmp eq i32 %and.i329, 0
  br i1 %tobool113.not, label %if.then114, label %do.body105.do.body116_crit_edge

do.body105.do.body116_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body116

if.then114:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_on() #5
  br label %do.body116

do.body116:                                       ; preds = %if.then114, %do.body105.do.body116_crit_edge
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !43
  %and.i.i330 = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i330)
  %tobool124.not = icmp eq i32 %and.i.i330, 0
  br i1 %tobool124.not, label %if.then128, label %do.body116.do.end131_crit_edge, !prof !37

do.body116.do.end131_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end131

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end131

do.end131:                                        ; preds = %if.then128, %do.body116.do.end131_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.0) #5, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !45
  %78 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i302 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i302 to ptr
  %preempt_count.i.i303 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i303 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i303, align 4
  %sub.i304 = add i32 %81, -1
  store volatile i32 %sub.i304, ptr %preempt_count.i.i303, align 4
  %call38.i.i.i331 = tail call ptr @__alloc_pages(i32 noundef %or, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %82 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i305 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i305 to ptr
  %preempt_count.i.i306 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i306 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i306, align 4
  %add.i307 = add i32 %85, 1
  store volatile i32 %add.i307, ptr %preempt_count.i.i306, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !46
  %86 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu, align 4
  %arrayidx153 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx153, align 4
  %add154 = add i32 %89, ptrtoint (ptr @rds_page_remainders to i32)
  %90 = inttoptr i32 %add154 to ptr
  %91 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !33
  %and.i332 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i332)
  %tobool172.not = icmp eq i32 %and.i332, 0
  br i1 %tobool172.not, label %if.then173, label %do.end131.do.end176_crit_edge

do.end131.do.end176_crit_edge:                    ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end176

if.then173:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  br label %do.end176

do.end176:                                        ; preds = %if.then173, %do.end131.do.end176_crit_edge
  %tobool177.not = icmp eq ptr %call38.i.i.i331, null
  br i1 %tobool177.not, label %do.end176.do.body186_crit_edge, label %if.end179

do.end176.do.body186_crit_edge:                   ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body186

if.end179:                                        ; preds = %do.end176
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %90, align 4
  %tobool181.not = icmp eq ptr %93, null
  br i1 %tobool181.not, label %if.end183, label %if.then182

if.then182:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i331, i32 noundef 0) #5
  br label %while.condthread-pre-split

if.end183:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call38.i.i.i331, ptr %90, align 4
  %r_offset185 = getelementptr inbounds %struct.rds_page_remainder, ptr %90, i32 0, i32 1
  %95 = ptrtoint ptr %r_offset185 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %r_offset185, align 4
  br label %while.cond

do.body186:                                       ; preds = %do.end176.do.body186_crit_edge, %if.then100, %if.end93.do.body186_crit_edge
  %ret.0 = phi i32 [ 0, %if.then100 ], [ 0, %if.end93.do.body186_crit_edge ], [ -12, %do.end176.do.body186_crit_edge ]
  %flags.1 = phi i32 [ %flags.0, %if.then100 ], [ %flags.0, %if.end93.do.body186_crit_edge ], [ %91, %do.end176.do.body186_crit_edge ]
  %and.i333 = and i32 %flags.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333)
  %tobool194.not = icmp eq i32 %and.i333, 0
  br i1 %tobool194.not, label %if.then195, label %do.body186.do.body197_crit_edge

do.body186.do.body197_crit_edge:                  ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body197

if.then195:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_on() #5
  br label %do.body197

do.body197:                                       ; preds = %if.then195, %do.body186.do.body197_crit_edge
  %96 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !43
  %and.i.i334 = and i32 %96, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i334)
  %tobool205.not = icmp eq i32 %and.i.i334, 0
  br i1 %tobool205.not, label %if.then214, label %do.body197.do.end217_crit_edge, !prof !37

do.body197.do.end217_crit_edge:                   ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end217

if.then214:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end217

do.end217:                                        ; preds = %if.then214, %do.body197.do.end217_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.1) #5, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !47
  %97 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i308 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i308 to ptr
  %preempt_count.i.i309 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i309 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i309, align 4
  %sub.i310 = add i32 %100, -1
  store volatile i32 %sub.i310, ptr %preempt_count.i.i309, align 4
  br label %do.body225

do.body225:                                       ; preds = %do.end217, %sg_set_page.exit, %if.then.do.body225_crit_edge
  %ret.1 = phi i32 [ 0, %sg_set_page.exit ], [ %ret.0, %do.end217 ], [ -12, %if.then.do.body225_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_page_remainder_alloc.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_page_remainder_alloc, %if.then235)) #5
          to label %do.end250 [label %if.then235], !srcloc !40

if.then235:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool236.not = icmp eq i32 %ret.1, 0
  br i1 %tobool236.not, label %cond.false, label %if.then235.cond.end246_crit_edge

if.then235.cond.end246_crit_edge:                 ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end246

cond.false:                                       ; preds = %if.then235
  %101 = ptrtoint ptr %scat to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %scat, align 4
  %and.i.i335 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i335)
  %tobool.i.not.i336 = icmp eq i32 %and.i.i335, 0
  br i1 %tobool.i.not.i336, label %cond.false245, label %do.body2.i337, !prof !29

do.body2.i337:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !36
  unreachable

cond.false245:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %and.i338 = and i32 %102, -4
  %103 = inttoptr i32 %and.i338 to ptr
  %offset = getelementptr inbounds %struct.scatterlist, ptr %scat, i32 0, i32 1
  %104 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %scat, i32 0, i32 2
  %106 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length, align 4
  br label %cond.end246

cond.end246:                                      ; preds = %cond.false245, %if.then235.cond.end246_crit_edge
  %cond242350 = phi i32 [ %105, %cond.false245 ], [ 0, %if.then235.cond.end246_crit_edge ]
  %cond344348 = phi ptr [ %103, %cond.false245 ], [ null, %if.then235.cond.end246_crit_edge ]
  %cond247 = phi i32 [ %107, %cond.false245 ], [ 0, %if.then235.cond.end246_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_page_remainder_alloc.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %bytes, i32 noundef %ret.1, ptr noundef %cond344348, i32 noundef %cond242350, i32 noundef %cond247) #5
  br label %do.end250

do.end250:                                        ; preds = %cond.end246, %do.body225
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_page_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %0)
  %cmp21 = icmp ult i32 %call20, %0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %entry.for.body_crit_edge
  %call22 = phi i32 [ %call, %if.end12.for.body_crit_edge ], [ %call20, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call22
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @rds_page_remainders to i32)
  %3 = inttoptr i32 %add to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_page_exit.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_page_exit, %if.then)) #5
          to label %do.end8 [label %if.then], !srcloc !40

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_page_exit.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %call22) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then, %for.body
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end8.if.end12_crit_edge, label %if.then10

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__free_pages(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end8.if.end12_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %3, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call22, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/page.c", i32 146, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_page_remainder_alloc.__UNIQUE_ID_ddebug544, !1, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!6 = !{ptr @__ksymtab_rds_page_remainder_alloc, !7, !"__ksymtab_rds_page_remainder_alloc", i1 false, i1 false}
!7 = !{!"../net/rds/page.c", i32 151, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rds/page.c", i32 161, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rds_page_exit.__UNIQUE_ID_ddebug545, !9, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!12 = !{ptr @__pcpu_unique_rds_page_remainders, !13, !"__pcpu_unique_rds_page_remainders", i1 false, i1 false}
!13 = !{!"../net/rds/page.c", i32 46, i32 1}
!14 = !{ptr @rds_page_remainders, !13, !"rds_page_remainders", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2154903070, i64 2154903562, i64 2154903107, i64 2154903163, i64 2154903197, i64 2154903221, i64 2154903262, i64 2154903283, i64 2154903311, i64 2154903345}
!31 = !{i64 2154904680, i64 2154905172, i64 2154904717, i64 2154904773, i64 2154904807, i64 2154904831, i64 2154904872, i64 2154904893, i64 2154904921, i64 2154904955}
!32 = !{i64 2158222650}
!33 = !{i64 1071314, i64 1071375}
!34 = !{i64 2158225131}
!35 = !{i64 2158225304}
!36 = !{i64 2154906628, i64 2154907120, i64 2154906665, i64 2154906721, i64 2154906755, i64 2154906779, i64 2154906820, i64 2154906841, i64 2154906869, i64 2154906903}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2153165893, i64 2153166377, i64 2153165930, i64 2153165986, i64 2153166020, i64 2153166044, i64 2153166085, i64 2153166106, i64 2153166134, i64 2153166168}
!39 = !{i64 2148666634, i64 2148666660, i64 2148666689, i64 2148666723, i64 2148666754, i64 2148666777}
!40 = !{i64 2148491232, i64 2148491237, i64 2148491250, i64 2148491294, i64 2148491328, i64 2148491349}
!41 = !{i64 2158227213}
!42 = !{i64 2158227386}
!43 = !{i64 1074046}
!44 = !{i64 1074331}
!45 = !{i64 2158228659}
!46 = !{i64 2158230420}
!47 = !{i64 2158232026}
