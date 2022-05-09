; ModuleID = '/llk/IR_all_yes/block/bounce.c_pt.bc'
source_filename = "../block/bounce.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.76, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_bounce__355_69_init_emergency_pool6 = internal global ptr @init_emergency_pool, section ".initcall6.init", align 4
@bounce_bio_split = internal global { %struct.bio_set, [132 x i8] } zeroinitializer, align 32
@page_pool = internal global { %struct.mempool_s, [40 x i8] } zeroinitializer, align 32
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@init_emergency_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016bounce: pool size: %d pages\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init_emergency_pool\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"block/bounce.c\00", [17 x i8] zeroinitializer }, align 32
@init_emergency_pool._entry_ptr = internal global ptr @init_emergency_pool._entry, section ".printk_index", align 4
@init_bounce_bioset.bounce_bs_setup = internal global { i1, [31 x i8] } zeroinitializer, align 32
@bounce_bio_set = internal global { %struct.bio_set, [132 x i8] } zeroinitializer, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_block_bio_bounce = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/block.h\00", [35 x i8] zeroinitializer }, align 32
@trace_block_bio_bounce.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@switch.table.__blk_queue_bounce = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 0, i16 0], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"bounce_bio_split\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 31, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"page_pool\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 32, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 63, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [35 x i8] c"init_bounce_bioset.bounce_bs_setup\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"bounce_bio_set\00", align 1
@___asan_gen_.30 = private constant [18 x i8] c"../block/bounce.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 31, i32 23 }
@___asan_gen_.36 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 299, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 108, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 106, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant [32 x i8] c"switch.table.__blk_queue_bounce\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_bounce__355_69_init_emergency_pool6, ptr @init_emergency_pool._entry, ptr @init_emergency_pool._entry_ptr, ptr @bounce_bio_split, ptr @page_pool, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @init_bounce_bioset.bounce_bs_setup, ptr @bounce_bio_set, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.__blk_queue_bounce], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bounce_bio_split to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_pool to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_emergency_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_bounce_bioset.bounce_bs_setup to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bounce_bio_set to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__blk_queue_bounce to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_emergency_pool() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %0 = load i32, ptr @max_pfn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %1 = load i32, ptr @max_low_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp ugt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @mempool_init(ptr noundef nonnull @page_pool, i32 noundef 64, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.end13, label %do.body4, !prof !38

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bounce.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

do.end13:                                         ; preds = %if.end
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 64) #10
  %.b45.i = load i1, ptr @init_bounce_bioset.bounce_bs_setup, align 1
  br i1 %.b45.i, label %do.end13.cleanup_crit_edge, label %if.end.i

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end13
  %call.i15 = tail call i32 @bioset_init(ptr noundef nonnull @bounce_bio_set, i32 noundef 2, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool1.not.i = icmp eq i32 %call.i15, 0
  br i1 %tobool1.not.i, label %do.end11.i, label %do.body5.i, !prof !38

do.body5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bounce.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #7, !srcloc !40
  unreachable

do.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @bioset_integrity_create(ptr noundef nonnull @bounce_bio_set, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end24.i, label %do.body16.i

do.body16.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bounce.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

if.end24.i:                                       ; preds = %do.end11.i
  %call25.i = tail call i32 @bioset_init(ptr noundef nonnull @bounce_bio_split, i32 noundef 2, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool27.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool27.not.i, label %do.end43.i, label %do.body35.i, !prof !38

do.body35.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bounce.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable

do.end43.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @init_bounce_bioset.bounce_bs_setup, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end43.i, %do.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__blk_queue_bounce(ptr nocapture noundef readnone %q, ptr nocapture noundef %bio_orig) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio_orig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio_orig, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool.not165 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool.not165, label %entry.cleanup83_crit_edge, label %land.rhs.lr.ph

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83

land.rhs.lr.ph:                                   ; preds = %entry
  %iter.sroa.15.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %iter.sroa.15.0.copyload = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %and = and i32 %3, 255
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bi_io_vec, align 8
  %9 = add nsw i32 %and, -3
  %switch.and.i.i = and i32 %9, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %sectors.0171 = phi i32 [ 0, %land.rhs.lr.ph ], [ %sectors.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %bounce.0.off0170 = phi i1 [ false, %land.rhs.lr.ph ], [ %22, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %i.0169 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.0168 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0167 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.15.0166 = phi i32 [ %iter.sroa.15.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.15.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.bio_vec, ptr %8, i32 %iter.sroa.10.0167
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %8, i32 %iter.sroa.10.0167, i32 2
  %12 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_offset, align 4
  %add = add i32 %13, %iter.sroa.15.0166
  %div134 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %11, i32 %div134
  %bv_len9 = getelementptr %struct.bio_vec, ptr %8, i32 %iter.sroa.10.0167, i32 1
  %14 = ptrtoint ptr %bv_len9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len9, align 4
  %sub = sub i32 %15, %iter.sroa.15.0166
  %16 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0168, i32 %sub)
  %rem = and i32 %add, 4095
  %sub18 = sub nuw nsw i32 4096, %rem
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub18)
  %inc = add i32 %i.0169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0169)
  %cmp33 = icmp ult i32 %i.0169, 256
  %shr = lshr i32 %17, 9
  %add35 = select i1 %cmp33, i32 %shr, i32 0
  %sectors.1 = add i32 %add35, %sectors.0171
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %shr.i = lshr i32 %19, 30
  %20 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %land.rhs.is_highmem_idx.exit.thread_crit_edge [
    i32 2, label %land.rhs.is_highmem_idx.exit.thread159_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

land.rhs.is_highmem_idx.exit.thread159_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_highmem_idx.exit.thread159

land.rhs.is_highmem_idx.exit.thread_crit_edge:    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_highmem_idx.exit.thread

is_highmem_idx.exit:                              ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %21 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp2.i.not = icmp eq i32 %21, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.is_highmem_idx.exit.thread159_crit_edge, label %is_highmem_idx.exit.is_highmem_idx.exit.thread_crit_edge

is_highmem_idx.exit.is_highmem_idx.exit.thread_crit_edge: ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_highmem_idx.exit.thread

is_highmem_idx.exit.is_highmem_idx.exit.thread159_crit_edge: ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_highmem_idx.exit.thread159

is_highmem_idx.exit.thread:                       ; preds = %is_highmem_idx.exit.is_highmem_idx.exit.thread_crit_edge, %land.rhs.is_highmem_idx.exit.thread_crit_edge
  br label %is_highmem_idx.exit.thread159

is_highmem_idx.exit.thread159:                    ; preds = %is_highmem_idx.exit.thread, %is_highmem_idx.exit.is_highmem_idx.exit.thread159_crit_edge, %land.rhs.is_highmem_idx.exit.thread159_crit_edge
  %22 = phi i1 [ %bounce.0.off0170, %is_highmem_idx.exit.thread ], [ true, %is_highmem_idx.exit.is_highmem_idx.exit.thread159_crit_edge ], [ true, %land.rhs.is_highmem_idx.exit.thread159_crit_edge ]
  br i1 %switch.selectcmp.i.i, label %is_highmem_idx.exit.thread159.bio_advance_iter_single.exit_crit_edge, label %if.else.i

is_highmem_idx.exit.thread159.bio_advance_iter_single.exit_crit_edge: ; preds = %is_highmem_idx.exit.thread159
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.thread159
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %17, %iter.sroa.15.0166
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %15)
  %cmp.i.i = icmp eq i32 %add.i.i, %15
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select164 = add i32 %iter.sroa.10.0167, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %is_highmem_idx.exit.thread159.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.15.1 = phi i32 [ %iter.sroa.15.0166, %is_highmem_idx.exit.thread159.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0167, %is_highmem_idx.exit.thread159.bio_advance_iter_single.exit_crit_edge ], [ %spec.select164, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.0168, %17
  %tobool.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not, label %for.end, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %bio_advance_iter_single.exit
  br i1 %22, label %if.end45, label %for.end.cleanup83_crit_edge

for.end.cleanup83_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83

if.end45:                                         ; preds = %for.end
  %23 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  %shr48 = lshr i32 %24, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %sectors.1, i32 %shr48)
  %cmp49 = icmp ult i32 %sectors.1, %shr48
  br i1 %cmp49, label %if.then50, label %if.end45.if.end52_crit_edge

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call ptr @bio_split(ptr noundef %1, i32 noundef %sectors.1, i32 noundef 3072, ptr noundef nonnull @bounce_bio_split) #7
  %25 = ptrtoint ptr %bio_orig to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bio_orig, align 4
  tail call void @bio_chain(ptr noundef %call51, ptr noundef %26) #7
  %27 = ptrtoint ptr %bio_orig to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bio_orig, align 4
  tail call void @submit_bio_noacct(ptr noundef %28) #7
  %29 = ptrtoint ptr %bio_orig to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call51, ptr %bio_orig, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end45.if.end52_crit_edge
  %30 = ptrtoint ptr %bio_orig to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bio_orig, align 4
  %bi_opf.i.i136 = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bi_opf.i.i136 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bi_opf.i.i136, align 8
  %trunc.i.i = trunc i32 %33 to i8
  %switch.tableidx = add i8 %trunc.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %34 = icmp ult i8 %switch.tableidx, 7
  br i1 %34, label %switch.hole_check, label %if.end52.sw.epilog.i.i_crit_edge

if.end52.sw.epilog.i.i_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.hole_check.sw.epilog.i.i_crit_edge, %if.end52.sw.epilog.i.i_crit_edge
  %iter.sroa.6.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %iter.sroa.6.0.copyload.i.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i.i)
  %tobool.not54.i.i = icmp eq i32 %iter.sroa.6.0.copyload.i.i, 0
  br i1 %tobool.not54.i.i, label %sw.epilog.i.i.bio_segments.exit.i_crit_edge, label %land.rhs.lr.ph.i.i

sw.epilog.i.i.bio_segments.exit.i_crit_edge:      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_segments.exit.i

land.rhs.lr.ph.i.i:                               ; preds = %sw.epilog.i.i
  %iter.sroa.15.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %iter.sroa.15.0.copyload.i.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %iter.sroa.10.0.copyload.i.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i.i, align 4
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 20
  %38 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bi_io_vec.i.i, align 8
  %and.i.i.i.i = and i32 %33, 255
  %40 = add nsw i32 %and.i.i.i.i, -3
  %switch.and.i.i.i.i = and i32 %40, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i.i)
  %switch.selectcmp.i.i.i.i = icmp eq i32 %switch.and.i.i.i.i, 0
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %segs.058.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc.i.i138, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.6.057.i.i = phi i32 [ %iter.sroa.6.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %sub.i.i.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.10.056.i.i = phi i32 [ %iter.sroa.10.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.10.2.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %iter.sroa.15.055.i.i = phi i32 [ %iter.sroa.15.0.copyload.i.i, %land.rhs.lr.ph.i.i ], [ %iter.sroa.15.1.i.i, %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge ]
  %bv_len10.i.i = getelementptr %struct.bio_vec, ptr %39, i32 %iter.sroa.10.056.i.i, i32 1
  %41 = ptrtoint ptr %bv_len10.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bv_len10.i.i, align 4
  %sub.i.i137 = sub i32 %42, %iter.sroa.15.055.i.i
  %43 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.057.i.i, i32 %sub.i.i137) #7
  %bv_offset15.i.i = getelementptr %struct.bio_vec, ptr %39, i32 %iter.sroa.10.056.i.i, i32 2
  %44 = ptrtoint ptr %bv_offset15.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_offset15.i.i, align 4
  %add17.i.i = add i32 %45, %iter.sroa.15.055.i.i
  %rem.i.i = and i32 %add17.i.i, 4095
  %sub18.i.i = sub nuw nsw i32 4096, %rem.i.i
  %46 = tail call i32 @llvm.umin.i32(i32 %43, i32 %sub18.i.i) #7
  %inc.i.i138 = add i32 %segs.058.i.i, 1
  br i1 %switch.selectcmp.i.i.i.i, label %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge, label %if.else.i.i.i

land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter_single.exit.i.i

if.else.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i.i.i = add i32 %46, %iter.sroa.15.055.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %42)
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, %42
  %spec.select.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %inc.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %spec.select53.i.i = add i32 %iter.sroa.10.056.i.i, %inc.i.i.i.i
  br label %bio_advance_iter_single.exit.i.i

bio_advance_iter_single.exit.i.i:                 ; preds = %if.else.i.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge
  %iter.sroa.15.1.i.i = phi i32 [ %iter.sroa.15.055.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i.i ]
  %iter.sroa.10.2.i.i = phi i32 [ %iter.sroa.10.056.i.i, %land.rhs.i.i.bio_advance_iter_single.exit.i.i_crit_edge ], [ %spec.select53.i.i, %if.else.i.i.i ]
  %sub.i.i.i.i = sub i32 %iter.sroa.6.057.i.i, %46
  %tobool.not.i.i = icmp eq i32 %sub.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %bio_segments.exit.loopexit.i, label %bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge

bio_advance_iter_single.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

bio_segments.exit.loopexit.i:                     ; preds = %bio_advance_iter_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i139 = trunc i32 %inc.i.i138 to i16
  br label %bio_segments.exit.i

switch.hole_check:                                ; preds = %if.end52
  %switch.shifted = lshr i8 85, %switch.tableidx
  %47 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %switch.lobit.not = icmp eq i8 %47, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i.i_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %48 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.__blk_queue_bounce, i32 0, i32 %48
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %49)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %bio_segments.exit.i

bio_segments.exit.i:                              ; preds = %switch.lookup, %bio_segments.exit.loopexit.i, %sw.epilog.i.i.bio_segments.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 0, %sw.epilog.i.i.bio_segments.exit.i_crit_edge ], [ %phi.cast.i139, %bio_segments.exit.loopexit.i ], [ %switch.load, %switch.lookup ]
  %call1.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %retval.0.i.i, ptr noundef nonnull @bounce_bio_set) #7
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 1
  %50 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bi_bdev.i, align 4
  %bi_bdev2.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 1
  %52 = ptrtoint ptr %bi_bdev2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %bi_bdev2.i, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 3
  %53 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bi_flags.i.i, align 4
  %55 = and i16 %54, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp.i.not.i = icmp eq i16 %55, 0
  br i1 %cmp.i.not.i, label %bio_segments.exit.i.if.end.i_crit_edge, label %if.then.i

bio_segments.exit.i.if.end.i_crit_edge:           ; preds = %bio_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %bio_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %bi_flags.i114.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 3
  %56 = ptrtoint ptr %bi_flags.i114.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bi_flags.i114.i, align 4
  %58 = or i16 %57, 2048
  store i16 %58, ptr %bi_flags.i114.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %bio_segments.exit.i.if.end.i_crit_edge
  %59 = ptrtoint ptr %bi_opf.i.i136 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_opf.i.i136, align 8
  %bi_opf4.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 2
  %61 = ptrtoint ptr %bi_opf4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %bi_opf4.i, align 8
  %bi_ioprio.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 4
  %62 = ptrtoint ptr %bi_ioprio.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %bi_ioprio.i, align 2
  %bi_ioprio5.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 4
  %64 = ptrtoint ptr %bi_ioprio5.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %bi_ioprio5.i, align 2
  %bi_write_hint.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 5
  %65 = ptrtoint ptr %bi_write_hint.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %bi_write_hint.i, align 8
  %bi_write_hint6.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 5
  %67 = ptrtoint ptr %bi_write_hint6.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %bi_write_hint6.i, align 8
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8
  %68 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bi_iter.i, align 8
  %bi_iter7.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 8
  %70 = ptrtoint ptr %bi_iter7.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %bi_iter7.i, align 8
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 1
  %71 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bi_size.i, align 8
  %bi_size11.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %bi_size11.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %bi_size11.i, align 8
  %trunc.i = trunc i32 %60 to i8
  %74 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %trunc.i, label %sw.default.i [
    i8 3, label %if.end.i.sw.epilog.i_crit_edge
    i8 5, label %if.end.i.sw.epilog.i_crit_edge182
    i8 9, label %if.end.i.sw.epilog.i_crit_edge183
    i8 7, label %sw.bb13.i
  ]

if.end.i.sw.epilog.i_crit_edge183:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge182:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bi_io_vec.i140 = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 20
  %75 = ptrtoint ptr %bi_io_vec.i140 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bi_io_vec.i140, align 8
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 17
  %77 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %bi_vcnt.i, align 8
  %inc.i = add i16 %78, 1
  store i16 %inc.i, ptr %bi_vcnt.i, align 8
  %idxprom.i = zext i16 %78 to i32
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %76, i32 %idxprom.i
  %bi_io_vec14.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 20
  %79 = ptrtoint ptr %bi_io_vec14.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bi_io_vec14.i, align 8
  %81 = call ptr @memcpy(ptr %arrayidx.i, ptr %80, i32 12)
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  %82 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %iter.sroa.6.0.copyload.i = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not136.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not136.i, label %sw.default.i.sw.epilog.i_crit_edge, label %land.rhs.lr.ph.i

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

land.rhs.lr.ph.i:                                 ; preds = %sw.default.i
  %iter.sroa.16.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 3
  %83 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %iter.sroa.16.0.copyload.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 8, i32 2
  %84 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec18.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 20
  %bi_io_vec53.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 20
  %bi_vcnt54.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 17
  br label %land.rhs.i142

land.rhs.i142:                                    ; preds = %bio_advance_iter_single.exit.i.land.rhs.i142_crit_edge, %land.rhs.lr.ph.i
  %iter.sroa.6.0139.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i142_crit_edge ]
  %iter.sroa.10.0138.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i142_crit_edge ]
  %iter.sroa.16.0137.i = phi i32 [ %iter.sroa.16.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.16.1.i, %bio_advance_iter_single.exit.i.land.rhs.i142_crit_edge ]
  %85 = ptrtoint ptr %bi_io_vec18.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bi_io_vec18.i, align 8
  %arrayidx19.i = getelementptr %struct.bio_vec, ptr %86, i32 %iter.sroa.10.0138.i
  %87 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx19.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %86, i32 %iter.sroa.10.0138.i, i32 2
  %89 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bv_offset.i, align 4
  %add.i141 = add i32 %90, %iter.sroa.16.0137.i
  %div113.i = lshr i32 %add.i141, 12
  %add.ptr.i = getelementptr %struct.page, ptr %88, i32 %div113.i
  %bv_len28.i = getelementptr %struct.bio_vec, ptr %86, i32 %iter.sroa.10.0138.i, i32 1
  %91 = ptrtoint ptr %bv_len28.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bv_len28.i, align 4
  %sub.i = sub i32 %92, %iter.sroa.16.0137.i
  %93 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0139.i, i32 %sub.i) #7
  %rem.i = and i32 %add.i141, 4095
  %sub37.i = sub nuw nsw i32 4096, %rem.i
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 %sub37.i) #7
  %95 = ptrtoint ptr %bi_io_vec53.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bi_io_vec53.i, align 8
  %97 = ptrtoint ptr %bi_vcnt54.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %bi_vcnt54.i, align 8
  %inc55.i = add i16 %98, 1
  store i16 %inc55.i, ptr %bi_vcnt54.i, align 8
  %idxprom56.i = zext i16 %98 to i32
  %arrayidx57.i = getelementptr %struct.bio_vec, ptr %96, i32 %idxprom56.i
  %99 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr.i, ptr %arrayidx57.i, align 4
  %bv.sroa.5.0.arrayidx57.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx57.i, i32 4
  %100 = ptrtoint ptr %bv.sroa.5.0.arrayidx57.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %94, ptr %bv.sroa.5.0.arrayidx57.sroa_idx.i, align 4
  %bv.sroa.8.0.arrayidx57.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx57.i, i32 8
  %101 = ptrtoint ptr %bv.sroa.8.0.arrayidx57.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %rem.i, ptr %bv.sroa.8.0.arrayidx57.sroa_idx.i, align 4
  %102 = ptrtoint ptr %bi_opf.i.i136 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bi_opf.i.i136, align 8
  %and.i.i.i = and i32 %103, 255
  %104 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %104, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %land.rhs.i142.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

land.rhs.i142.bio_advance_iter_single.exit.i_crit_edge: ; preds = %land.rhs.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %land.rhs.i142
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %bi_io_vec18.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bi_io_vec18.i, align 8
  %add.i.i.i = add i32 %94, %iter.sroa.16.0137.i
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %106, i32 %iter.sroa.10.0138.i, i32 1
  %107 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %108)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %108
  %spec.select.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select135.i = add i32 %iter.sroa.10.0138.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %land.rhs.i142.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.16.1.i = phi i32 [ %iter.sroa.16.0137.i, %land.rhs.i142.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.0138.i, %land.rhs.i142.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select135.i, %if.else.i.i ]
  %sub.i.i.i = sub i32 %iter.sroa.6.0139.i, %94
  %tobool.not.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %bio_advance_iter_single.exit.i.sw.epilog.i_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i142_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i142_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i142

bio_advance_iter_single.exit.i.sw.epilog.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %bio_advance_iter_single.exit.i.sw.epilog.i_crit_edge, %sw.default.i.sw.epilog.i_crit_edge, %sw.bb13.i, %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge182, %if.end.i.sw.epilog.i_crit_edge183
  %bi_crypt_context.i.i.i = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 15
  %109 = ptrtoint ptr %bi_crypt_context.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bi_crypt_context.i.i.i, align 8
  %tobool.i.not.i.i = icmp eq ptr %110, null
  br i1 %tobool.i.not.i.i, label %sw.epilog.i.if.end63.i_crit_edge, label %bio_crypt_clone.exit.i

sw.epilog.i.if.end63.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

bio_crypt_clone.exit.i:                           ; preds = %sw.epilog.i
  %call1.i.i = tail call i32 @__bio_crypt_clone(ptr noundef %call1.i, ptr noundef %31, i32 noundef 3072) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp60.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp60.i, label %bio_crypt_clone.exit.i.err_put.i_crit_edge, label %bio_crypt_clone.exit.i.if.end63.i_crit_edge

bio_crypt_clone.exit.i.if.end63.i_crit_edge:      ; preds = %bio_crypt_clone.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

bio_crypt_clone.exit.i.err_put.i_crit_edge:       ; preds = %bio_crypt_clone.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put.i

if.end63.i:                                       ; preds = %bio_crypt_clone.exit.i.if.end63.i_crit_edge, %sw.epilog.i.if.end63.i_crit_edge
  %111 = ptrtoint ptr %bi_opf.i.i136 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bi_opf.i.i136, align 8
  %113 = and i32 %112, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i118.i = icmp eq i32 %113, 0
  br i1 %tobool.not.i118.i, label %if.end63.i.if.end70.i_crit_edge, label %bio_integrity.exit.i

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

bio_integrity.exit.i:                             ; preds = %if.end63.i
  %114 = getelementptr inbounds %struct.bio, ptr %31, i32 0, i32 16
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %tobool65.not.i = icmp eq ptr %116, null
  br i1 %tobool65.not.i, label %bio_integrity.exit.i.if.end70.i_crit_edge, label %land.lhs.true.i

bio_integrity.exit.i.if.end70.i_crit_edge:        ; preds = %bio_integrity.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

land.lhs.true.i:                                  ; preds = %bio_integrity.exit.i
  %call66.i = tail call i32 @bio_integrity_clone(ptr noundef %call1.i, ptr noundef %31, i32 noundef 3072) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp slt i32 %call66.i, 0
  br i1 %cmp67.i, label %land.lhs.true.i.err_put.i_crit_edge, label %land.lhs.true.i.if.end70.i_crit_edge

land.lhs.true.i.if.end70.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

land.lhs.true.i.err_put.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put.i

if.end70.i:                                       ; preds = %land.lhs.true.i.if.end70.i_crit_edge, %bio_integrity.exit.i.if.end70.i_crit_edge, %if.end63.i.if.end70.i_crit_edge
  tail call void @bio_clone_blkg_association(ptr noundef %call1.i, ptr noundef %31) #7
  %bi_issue.i.i = getelementptr inbounds %struct.bio, ptr %call1.i, i32 0, i32 13
  %117 = ptrtoint ptr %bi_size11.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bi_size11.i, align 8
  %shr.i121.i = lshr i32 %118, 9
  %conv.i122.i = zext i32 %shr.i121.i to i64
  %119 = ptrtoint ptr %bi_issue.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %bi_issue.i.i, align 8
  %and1.i.i.i = and i64 %120, -9223372036854775808
  %call.i.i.i.i = tail call i64 @ktime_get() #7
  %and2.i.i.i = and i64 %call.i.i.i.i, 2251799813685247
  %and.i.i123.i = shl i64 %conv.i122.i, 51
  %shl.i.i.i = and i64 %and.i.i123.i, 9221120237041090560
  %or.i.i.i = or i64 %and2.i.i.i, %and1.i.i.i
  %or3.i.i.i = or i64 %or.i.i.i, %shl.i.i.i
  %121 = ptrtoint ptr %bi_issue.i.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %or3.i.i.i, ptr %bi_issue.i.i, align 8
  br label %bounce_clone_bio.exit

err_put.i:                                        ; preds = %land.lhs.true.i.err_put.i_crit_edge, %bio_crypt_clone.exit.i.err_put.i_crit_edge
  tail call void @bio_put(ptr noundef %call1.i) #7
  br label %bounce_clone_bio.exit

bounce_clone_bio.exit:                            ; preds = %err_put.i, %if.end70.i
  %retval.0.i = phi ptr [ null, %err_put.i ], [ %call1.i, %if.end70.i ]
  %bi_vcnt = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 17
  %122 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %bi_vcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %cmp56174.not = icmp eq i16 %123, 0
  br i1 %cmp56174.not, label %bounce_clone_bio.exit.for.end75_crit_edge, label %for.body58.preheader

bounce_clone_bio.exit.for.end75_crit_edge:        ; preds = %bounce_clone_bio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75

for.body58.preheader:                             ; preds = %bounce_clone_bio.exit
  %bi_io_vec54 = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 20
  %124 = ptrtoint ptr %bi_io_vec54 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bi_io_vec54, align 8
  br label %for.body58

for.body58:                                       ; preds = %cleanup.for.body58_crit_edge, %for.body58.preheader
  %to.0176 = phi ptr [ %incdec.ptr, %cleanup.for.body58_crit_edge ], [ %125, %for.body58.preheader ]
  %i.1175 = phi i32 [ %inc74, %cleanup.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  %126 = ptrtoint ptr %to.0176 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %to.0176, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %shr.i143 = lshr i32 %129, 30
  %130 = zext i32 %shr.i143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr.i143, label %for.body58.cleanup_crit_edge [
    i32 2, label %for.body58.if.end64_crit_edge
    i32 3, label %is_highmem_idx.exit148
  ]

for.body58.if.end64_crit_edge:                    ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

for.body58.cleanup_crit_edge:                     ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_highmem_idx.exit148:                           ; preds = %for.body58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %131 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp2.i144.not = icmp eq i32 %131, 2
  br i1 %cmp2.i144.not, label %is_highmem_idx.exit148.if.end64_crit_edge, label %is_highmem_idx.exit148.cleanup_crit_edge

is_highmem_idx.exit148.cleanup_crit_edge:         ; preds = %is_highmem_idx.exit148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_highmem_idx.exit148.if.end64_crit_edge:        ; preds = %is_highmem_idx.exit148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end64:                                         ; preds = %is_highmem_idx.exit148.if.end64_crit_edge, %for.body58.if.end64_crit_edge
  %call65 = tail call noalias ptr @mempool_alloc(ptr noundef nonnull @page_pool, i32 noundef 3072) #7
  tail call void @inc_zone_page_state(ptr noundef %call65, i32 noundef 8) #7
  br i1 %tobool.i.not, label %if.end64.if.end71_crit_edge, label %if.then68

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then68:                                        ; preds = %if.end64
  %132 = ptrtoint ptr %to.0176 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %to.0176, align 4
  tail call void @flush_dcache_page(ptr noundef %133) #7
  %call70 = tail call ptr @page_address(ptr noundef %call65) #7
  %134 = ptrtoint ptr %to.0176 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %to.0176, align 4
  %bv_offset.i149 = getelementptr inbounds %struct.bio_vec, ptr %to.0176, i32 0, i32 2
  %136 = ptrtoint ptr %bv_offset.i149 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bv_offset.i149, align 4
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %to.0176, i32 0, i32 1
  %138 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bv_len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %140 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i150 = or i32 %140, 512
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %135, i32 noundef %or.i.i.i150) #7
  %add.i.i151 = add i32 %139, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i151)
  %cmp.i.i152 = icmp ugt i32 %add.i.i151, 4096
  br i1 %cmp.i.i152, label %do.body2.i.i, label %memcpy_from_bvec.exit, !prof !43

do.body2.i.i:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #7, !srcloc !44
  unreachable

memcpy_from_bvec.exit:                            ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %137
  %141 = call ptr @memcpy(ptr %call70, ptr %add.ptr.i.i, i32 %139)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #7
  br label %if.end71

if.end71:                                         ; preds = %memcpy_from_bvec.exit, %if.end64.if.end71_crit_edge
  %142 = ptrtoint ptr %to.0176 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call65, ptr %to.0176, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %is_highmem_idx.exit148.cleanup_crit_edge, %for.body58.cleanup_crit_edge
  %incdec.ptr = getelementptr %struct.bio_vec, ptr %to.0176, i32 1
  %inc74 = add nuw nsw i32 %i.1175, 1
  %143 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %bi_vcnt, align 8
  %conv = zext i16 %144 to i32
  %cmp56 = icmp ult i32 %inc74, %conv
  br i1 %cmp56, label %cleanup.for.body58_crit_edge, label %cleanup.for.end75_crit_edge

cleanup.for.end75_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75

cleanup.for.body58_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body58

for.end75:                                        ; preds = %cleanup.for.end75_crit_edge, %bounce_clone_bio.exit.for.end75_crit_edge
  %145 = ptrtoint ptr %bio_orig to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bio_orig, align 4
  tail call fastcc void @trace_block_bio_bounce(ptr noundef %146)
  %bi_flags = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 3
  %147 = ptrtoint ptr %bi_flags to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %bi_flags, align 4
  %149 = or i16 %148, 4
  store i16 %149, ptr %bi_flags, align 4
  %spec.select181 = select i1 %tobool.i.not, ptr @bounce_end_io_read, ptr @bounce_end_io_write
  %150 = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 10
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %spec.select181, ptr %150, align 8
  %152 = ptrtoint ptr %bio_orig to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bio_orig, align 4
  %bi_private = getelementptr inbounds %struct.bio, ptr %retval.0.i, i32 0, i32 11
  %154 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %153, ptr %bi_private, align 4
  store ptr %retval.0.i, ptr %bio_orig, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %for.end75, %for.end.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_zone_page_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_bio_bounce(ptr noundef %bio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_bounce, i32 0, i32 1), ptr blockaddress(@trace_block_bio_bounce, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !45

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %call42 = tail call i32 @__traceiter_block_bio_bounce(ptr noundef null, ptr noundef %bio) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %13 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !38

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_bounce, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_bounce, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_bio_bounce.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_block_bio_bounce.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 302, ptr noundef nonnull @.str.4) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %31 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bounce_end_io_read(ptr noundef %bio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %0 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %2 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_private, align 4
  %iter.sroa.6.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %iter.sroa.6.0.copyload.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not151.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not151.i, label %if.then.if.end_crit_edge, label %land.rhs.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.lr.ph.i:                                 ; preds = %if.then
  %iter.sroa.16.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %iter.sroa.16.0.copyload.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 20
  %bi_io_vec34.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %bi_opf.i.i118.i = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %from_iter.sroa.5.0157.i = phi i32 [ -1, %land.rhs.lr.ph.i ], [ %from_iter.sroa.5.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %from_iter.sroa.11.0156.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %from_iter.sroa.11.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %from_iter.sroa.15.0155.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %from_iter.sroa.15.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.0154.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i132.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.0153.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.16.0152.i = phi i32 [ %iter.sroa.16.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.16.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bi_io_vec.i, align 8
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %8, i32 %iter.sroa.10.0153.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %8, i32 %iter.sroa.10.0153.i, i32 2
  %11 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_offset.i, align 4
  %add.i = add i32 %12, %iter.sroa.16.0152.i
  %div111.i = lshr i32 %add.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %div111.i
  %bv_len9.i = getelementptr %struct.bio_vec, ptr %8, i32 %iter.sroa.10.0153.i, i32 1
  %13 = ptrtoint ptr %bv_len9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bv_len9.i, align 4
  %sub.i = sub i32 %14, %iter.sroa.16.0152.i
  %15 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0154.i, i32 %sub.i) #7
  %rem.i = and i32 %add.i, 4095
  %sub17.i = sub nuw nsw i32 4096, %rem.i
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub17.i) #7
  %17 = ptrtoint ptr %bi_io_vec34.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_io_vec34.i, align 8
  %arrayidx36.i = getelementptr %struct.bio_vec, ptr %18, i32 %from_iter.sroa.11.0156.i
  %19 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx36.i, align 4
  %bv_offset41.i = getelementptr %struct.bio_vec, ptr %18, i32 %from_iter.sroa.11.0156.i, i32 2
  %21 = ptrtoint ptr %bv_offset41.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_offset41.i, align 4
  %add43.i = add i32 %22, %from_iter.sroa.15.0155.i
  %div44112.i = lshr i32 %add43.i, 12
  %add.ptr45.i = getelementptr %struct.page, ptr %20, i32 %div44112.i
  %cmp84.not.i = icmp eq ptr %add.ptr.i, %add.ptr45.i
  br i1 %cmp84.not.i, label %land.rhs.i.if.end.i_crit_edge, label %if.then.i

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.rhs.i
  %call.i = tail call ptr @page_address(ptr noundef %add.ptr45.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %23 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i.i = or i32 %23, 512
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i.i.i) #7
  %add.i.i.i = add nuw nsw i32 %16, %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, 4096
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %memcpy_to_bvec.exit.i, !prof !43

do.body2.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

memcpy_to_bvec.exit.i:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr87.i = getelementptr i8, ptr %call.i, i32 %rem.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %rem.i
  %24 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %add.ptr87.i, i32 %16)
  tail call void @flush_dcache_page(ptr noundef %add.ptr.i) #7
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %memcpy_to_bvec.exit.i, %land.rhs.i.if.end.i_crit_edge
  %25 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_opf.i.i.i, align 8
  %and.i.i.i = and i32 %26, 255
  %27 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %27, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %from_iter.sroa.5.0157.i, %16
  br label %bio_advance_iter.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %28 = ptrtoint ptr %bi_io_vec34.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bi_io_vec34.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %from_iter.sroa.5.0157.i, i32 %16)
  %cmp.i.i113.i = icmp ult i32 %from_iter.sroa.5.0157.i, %16
  br i1 %cmp.i.i113.i, label %land.rhs.i.i.i, label %if.end38.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b1.i.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.bio_advance_iter.exit.i_crit_edge, label %if.then.i.i.i, !prof !38

land.rhs.i.i.i.bio_advance_iter.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  br label %bio_advance_iter.exit.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i
  %sub.i.i.i = sub i32 %from_iter.sroa.5.0157.i, %16
  %add.i.i114.i = add i32 %16, %from_iter.sroa.15.0155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i114.i)
  %tobool40.not3.i.i.i = icmp eq i32 %add.i.i114.i, 0
  br i1 %tobool40.not3.i.i.i, label %if.end38.i.i.i.bio_advance_iter.exit.i_crit_edge, label %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge

if.end38.i.i.i.land.rhs41.i.i.i_crit_edge:        ; preds = %if.end38.i.i.i
  br label %land.rhs41.i.i.i

if.end38.i.i.i.bio_advance_iter.exit.i_crit_edge: ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter.exit.i

land.rhs41.i.i.i:                                 ; preds = %while.body.i.i.i.land.rhs41.i.i.i_crit_edge, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge
  %bytes.addr.05.i.i.i = phi i32 [ %sub46.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %add.i.i114.i, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %idx.04.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %from_iter.sroa.11.0156.i, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %29, i32 %idx.04.i.i.i, i32 1
  %30 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i, i32 %31)
  %cmp42.not.i.i.i = icmp ult i32 %bytes.addr.05.i.i.i, %31
  br i1 %cmp42.not.i.i.i, label %land.rhs41.i.i.i.bio_advance_iter.exit.i_crit_edge, label %while.body.i.i.i

land.rhs41.i.i.i.bio_advance_iter.exit.i_crit_edge: ; preds = %land.rhs41.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter.exit.i

while.body.i.i.i:                                 ; preds = %land.rhs41.i.i.i
  %sub46.i.i.i = sub i32 %bytes.addr.05.i.i.i, %31
  %inc.i.i.i = add i32 %idx.04.i.i.i, 1
  %tobool40.not.i.i.i = icmp eq i32 %sub46.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %while.body.i.i.i.bio_advance_iter.exit.i_crit_edge, label %while.body.i.i.i.land.rhs41.i.i.i_crit_edge

while.body.i.i.i.land.rhs41.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs41.i.i.i

while.body.i.i.i.bio_advance_iter.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter.exit.i

bio_advance_iter.exit.i:                          ; preds = %while.body.i.i.i.bio_advance_iter.exit.i_crit_edge, %land.rhs41.i.i.i.bio_advance_iter.exit.i_crit_edge, %if.end38.i.i.i.bio_advance_iter.exit.i_crit_edge, %if.then.i.i.i, %land.rhs.i.i.i.bio_advance_iter.exit.i_crit_edge, %if.then.i.i
  %from_iter.sroa.15.1.i = phi i32 [ %from_iter.sroa.15.0155.i, %if.then.i.i ], [ %from_iter.sroa.15.0155.i, %if.then.i.i.i ], [ %from_iter.sroa.15.0155.i, %land.rhs.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ 0, %if.end38.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ %bytes.addr.05.i.i.i, %land.rhs41.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ 0, %while.body.i.i.i.bio_advance_iter.exit.i_crit_edge ]
  %from_iter.sroa.11.1.i = phi i32 [ %from_iter.sroa.11.0156.i, %if.then.i.i ], [ %from_iter.sroa.11.0156.i, %if.then.i.i.i ], [ %from_iter.sroa.11.0156.i, %land.rhs.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ %from_iter.sroa.11.0156.i, %if.end38.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ %idx.04.i.i.i, %land.rhs41.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i.i.bio_advance_iter.exit.i_crit_edge ]
  %from_iter.sroa.5.1.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ 0, %if.then.i.i.i ], [ 0, %land.rhs.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ %sub.i.i.i, %if.end38.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ %sub.i.i.i, %land.rhs41.i.i.i.bio_advance_iter.exit.i_crit_edge ], [ %sub.i.i.i, %while.body.i.i.i.bio_advance_iter.exit.i_crit_edge ]
  %32 = ptrtoint ptr %bi_opf.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bi_opf.i.i118.i, align 8
  %and.i.i119.i = and i32 %33, 255
  %34 = add nsw i32 %and.i.i119.i, -3
  %switch.and.i.i120.i = and i32 %34, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i120.i)
  %switch.selectcmp.i.i121.i = icmp eq i32 %switch.and.i.i120.i, 0
  br i1 %switch.selectcmp.i.i121.i, label %bio_advance_iter.exit.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i128.i

bio_advance_iter.exit.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %bio_advance_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter_single.exit.i

if.else.i128.i:                                   ; preds = %bio_advance_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bi_io_vec.i, align 8
  %add.i.i124.i = add i32 %16, %iter.sroa.16.0152.i
  %bv_len.i.i126.i = getelementptr %struct.bio_vec, ptr %36, i32 %iter.sroa.10.0153.i, i32 1
  %37 = ptrtoint ptr %bv_len.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bv_len.i.i126.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i124.i, i32 %38)
  %cmp.i.i127.i = icmp eq i32 %add.i.i124.i, %38
  %spec.select.i = select i1 %cmp.i.i127.i, i32 0, i32 %add.i.i124.i
  %inc.i.i129.i = zext i1 %cmp.i.i127.i to i32
  %spec.select150.i = add i32 %iter.sroa.10.0153.i, %inc.i.i129.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i128.i, %bio_advance_iter.exit.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.16.1.i = phi i32 [ %iter.sroa.16.0152.i, %bio_advance_iter.exit.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i128.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.0153.i, %bio_advance_iter.exit.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select150.i, %if.else.i128.i ]
  %sub.i.i132.i = sub i32 %iter.sroa.6.0154.i, %16
  %tobool.not.i = icmp eq i32 %sub.i.i132.i, 0
  br i1 %tobool.not.i, label %bio_advance_iter_single.exit.i.if.end_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

bio_advance_iter_single.exit.i.if.end_crit_edge:  ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %bio_advance_iter_single.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @bounce_end_io(ptr noundef %bio)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bounce_end_io_write(ptr noundef %bio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bounce_end_io(ptr noundef %bio)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_integrity_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_integrity_clone(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_clone_blkg_association(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bio_crypt_clone(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_bounce(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bounce_end_io(ptr noundef %bio) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %2 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i85.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i85.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %orig_iter.sroa.18.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %orig_iter.sroa.18.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %orig_iter.sroa.18.0.copyload = load i32, ptr %orig_iter.sroa.18.0.bi_iter.sroa_idx, align 8
  %orig_iter.sroa.13.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %orig_iter.sroa.13.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %orig_iter.sroa.13.0.copyload = load i32, ptr %orig_iter.sroa.13.0.bi_iter.sroa_idx, align 4
  %orig_iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %orig_iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %orig_iter.sroa.6.0.copyload = load i32, ptr %orig_iter.sroa.6.0.bi_iter.sroa_idx, align 8
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 20
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  br label %if.end.i

if.end.i:                                         ; preds = %bio_advance_iter.exit.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.091 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %bio_advance_iter.exit.if.end.i_crit_edge ]
  %iter_all.sroa.12.090 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select83, %bio_advance_iter.exit.if.end.i_crit_edge ]
  %iter_all.sroa.16.089 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %bio_advance_iter.exit.if.end.i_crit_edge ]
  %orig_iter.sroa.6.088 = phi i32 [ %orig_iter.sroa.6.0.copyload, %if.end.i.lr.ph ], [ %orig_iter.sroa.6.1, %bio_advance_iter.exit.if.end.i_crit_edge ]
  %orig_iter.sroa.13.087 = phi i32 [ %orig_iter.sroa.13.0.copyload, %if.end.i.lr.ph ], [ %orig_iter.sroa.13.1, %bio_advance_iter.exit.if.end.i_crit_edge ]
  %orig_iter.sroa.18.086 = phi i32 [ %orig_iter.sroa.18.0.copyload, %if.end.i.lr.ph ], [ %orig_iter.sroa.18.1, %bio_advance_iter.exit.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.16.089)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.16.089, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.091, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %8, i32 %iter_all.sroa.12.090
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %8, i32 %iter_all.sroa.12.090, i32 2
  %11 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %12, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %shr.i.i
  %and.i.i = and i32 %12, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %8, i32 %iter_all.sroa.12.090, i32 1
  %13 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %14, %iter_all.sroa.16.089
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #7
  %add.i.i = add i32 %15, %iter_all.sroa.16.089
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %14)
  %cmp15.i.i = icmp eq i32 %add.i.i, %14
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select83 = add nuw nsw i32 %iter_all.sroa.12.090, %inc.i.i
  %16 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %17, i32 %orig_iter.sroa.13.087
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %17, i32 %orig_iter.sroa.13.087, i32 2
  %20 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bv_offset, align 4
  %add = add i32 %21, %orig_iter.sroa.18.086
  %div57 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %19, i32 %div57
  %bv_len9 = getelementptr %struct.bio_vec, ptr %17, i32 %orig_iter.sroa.13.087, i32 1
  %22 = ptrtoint ptr %bv_len9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_len9, align 4
  %sub = sub i32 %23, %orig_iter.sroa.18.086
  %24 = tail call i32 @llvm.umin.i32(i32 %orig_iter.sroa.6.088, i32 %sub)
  %rem = and i32 %add, 4095
  %sub17 = sub nuw nsw i32 4096, %rem
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %sub17)
  %cmp34.not = icmp eq ptr %iter_all.sroa.0.1, %add.ptr
  br i1 %cmp34.not, label %if.end.i.i.if.end_crit_edge, label %if.then

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dec_zone_page_state(ptr noundef %iter_all.sroa.0.1, i32 noundef 8) #7
  tail call void @mempool_free(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @page_pool) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.i.if.end_crit_edge
  %26 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i60 = and i32 %27, 255
  %28 = add nsw i32 %and.i.i60, -3
  %switch.and.i.i = and i32 %28, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %if.end.bio_advance_iter.exit_crit_edge, label %if.end38.i.i

if.end.bio_advance_iter.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter.exit

if.end38.i.i:                                     ; preds = %if.end
  %29 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i64 = add i32 %25, %orig_iter.sroa.18.086
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i64)
  %tobool40.not3.i.i = icmp eq i32 %add.i.i64, 0
  br i1 %tobool40.not3.i.i, label %if.end38.i.i.bio_advance_iter.exit_crit_edge, label %if.end38.i.i.land.rhs41.i.i_crit_edge

if.end38.i.i.land.rhs41.i.i_crit_edge:            ; preds = %if.end38.i.i
  br label %land.rhs41.i.i

if.end38.i.i.bio_advance_iter.exit_crit_edge:     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter.exit

land.rhs41.i.i:                                   ; preds = %while.body.i.i.land.rhs41.i.i_crit_edge, %if.end38.i.i.land.rhs41.i.i_crit_edge
  %bytes.addr.05.i.i = phi i32 [ %sub46.i.i, %while.body.i.i.land.rhs41.i.i_crit_edge ], [ %add.i.i64, %if.end38.i.i.land.rhs41.i.i_crit_edge ]
  %idx.04.i.i = phi i32 [ %inc.i.i66, %while.body.i.i.land.rhs41.i.i_crit_edge ], [ %orig_iter.sroa.13.087, %if.end38.i.i.land.rhs41.i.i_crit_edge ]
  %bv_len.i.i65 = getelementptr %struct.bio_vec, ptr %30, i32 %idx.04.i.i, i32 1
  %31 = ptrtoint ptr %bv_len.i.i65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_len.i.i65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i, i32 %32)
  %cmp42.not.i.i = icmp ult i32 %bytes.addr.05.i.i, %32
  br i1 %cmp42.not.i.i, label %land.rhs41.i.i.bio_advance_iter.exit_crit_edge, label %while.body.i.i

land.rhs41.i.i.bio_advance_iter.exit_crit_edge:   ; preds = %land.rhs41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter.exit

while.body.i.i:                                   ; preds = %land.rhs41.i.i
  %sub46.i.i = sub i32 %bytes.addr.05.i.i, %32
  %inc.i.i66 = add i32 %idx.04.i.i, 1
  %tobool40.not.i.i = icmp eq i32 %sub46.i.i, 0
  br i1 %tobool40.not.i.i, label %while.body.i.i.bio_advance_iter.exit_crit_edge, label %while.body.i.i.land.rhs41.i.i_crit_edge

while.body.i.i.land.rhs41.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs41.i.i

while.body.i.i.bio_advance_iter.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter.exit

bio_advance_iter.exit:                            ; preds = %while.body.i.i.bio_advance_iter.exit_crit_edge, %land.rhs41.i.i.bio_advance_iter.exit_crit_edge, %if.end38.i.i.bio_advance_iter.exit_crit_edge, %if.end.bio_advance_iter.exit_crit_edge
  %orig_iter.sroa.18.1 = phi i32 [ 0, %if.end38.i.i.bio_advance_iter.exit_crit_edge ], [ %orig_iter.sroa.18.086, %if.end.bio_advance_iter.exit_crit_edge ], [ 0, %while.body.i.i.bio_advance_iter.exit_crit_edge ], [ %bytes.addr.05.i.i, %land.rhs41.i.i.bio_advance_iter.exit_crit_edge ]
  %orig_iter.sroa.13.1 = phi i32 [ %orig_iter.sroa.13.087, %if.end38.i.i.bio_advance_iter.exit_crit_edge ], [ %orig_iter.sroa.13.087, %if.end.bio_advance_iter.exit_crit_edge ], [ %inc.i.i66, %while.body.i.i.bio_advance_iter.exit_crit_edge ], [ %idx.04.i.i, %land.rhs41.i.i.bio_advance_iter.exit_crit_edge ]
  %orig_iter.sroa.6.1 = sub i32 %orig_iter.sroa.6.088, %25
  %33 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %34 to i32
  %cmp.not.i = icmp ult i32 %spec.select83, %conv.i
  br i1 %cmp.not.i, label %bio_advance_iter.exit.if.end.i_crit_edge, label %bio_advance_iter.exit.for.end_crit_edge

bio_advance_iter.exit.for.end_crit_edge:          ; preds = %bio_advance_iter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

bio_advance_iter.exit.if.end.i_crit_edge:         ; preds = %bio_advance_iter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.end:                                          ; preds = %bio_advance_iter.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %35 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bi_status, align 2
  %bi_status38 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %bi_status38 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %bi_status38, align 2
  tail call void @bio_endio(ptr noundef %1) #7
  tail call void @bio_put(ptr noundef %bio) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_zone_page_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_bounce__355_69_init_emergency_pool6, !1, !"__initcall__kmod_bounce__355_69_init_emergency_pool6", i1 false, i1 false}
!1 = !{!"../block/bounce.c", i32 69, i32 1}
!2 = !{ptr @bounce_bio_split, !3, !"bounce_bio_split", i1 false, i1 false}
!3 = !{!"../block/bounce.c", i32 31, i32 39}
!4 = !{ptr @page_pool, !5, !"page_pool", i1 false, i1 false}
!5 = !{!"../block/bounce.c", i32 32, i32 18}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/bounce.c", i32 63, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @init_emergency_pool._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @init_emergency_pool._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"bounce_bs_setup", i1 false, i1 false}
!13 = !{!"../block/bounce.c", i32 36, i32 14}
!14 = !{ptr @bounce_bio_set, !15, !"bounce_bio_set", i1 false, i1 false}
!15 = !{!"../block/bounce.c", i32 31, i32 23}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/trace/events/block.h", i32 299, i32 1}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2155776344, i64 2155776822, i64 2155776381, i64 2155776437, i64 2155776471, i64 2155776495, i64 2155776536, i64 2155776557, i64 2155776585, i64 2155776619}
!40 = !{i64 2155767456, i64 2155767934, i64 2155767493, i64 2155767549, i64 2155767583, i64 2155767607, i64 2155767648, i64 2155767669, i64 2155767697, i64 2155767731}
!41 = !{i64 2155768998, i64 2155769476, i64 2155769035, i64 2155769091, i64 2155769125, i64 2155769149, i64 2155769190, i64 2155769211, i64 2155769239, i64 2155769273}
!42 = !{i64 2155770544, i64 2155771022, i64 2155770581, i64 2155770637, i64 2155770671, i64 2155770695, i64 2155770736, i64 2155770757, i64 2155770785, i64 2155770819}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2154156874, i64 2154157362, i64 2154156911, i64 2154156967, i64 2154157001, i64 2154157025, i64 2154157066, i64 2154157087, i64 2154157115, i64 2154157149}
!45 = !{i64 2148270820, i64 2148270825, i64 2148270838, i64 2148270882, i64 2148270916, i64 2148270937}
!46 = !{i64 2155525382}
!47 = !{i64 2155525583}
!48 = !{i64 2150014035}
!49 = !{i64 2150015071}
!50 = !{i64 2154160481, i64 2154160969, i64 2154160518, i64 2154160574, i64 2154160608, i64 2154160632, i64 2154160673, i64 2154160694, i64 2154160722, i64 2154160756}
