; ModuleID = '/llk/IR_all_yes/lib/textsearch.c_pt.bc'
source_filename = "../lib/textsearch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+textsearch_register\22, \22a\22\09"
module asm "\09.weak\09__crc_textsearch_register\09\09\09\09"
module asm "\09.long\09__crc_textsearch_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_textsearch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22textsearch_register\22\09\09\09\09\09"
module asm "__kstrtabns_textsearch_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+textsearch_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_textsearch_unregister\09\09\09\09"
module asm "\09.long\09__crc_textsearch_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_textsearch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22textsearch_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_textsearch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+textsearch_find_continuous\22, \22a\22\09"
module asm "\09.weak\09__crc_textsearch_find_continuous\09\09\09\09"
module asm "\09.long\09__crc_textsearch_find_continuous\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_textsearch_find_continuous:\09\09\09\09\09"
module asm "\09.asciz \09\22textsearch_find_continuous\22\09\09\09\09\09"
module asm "__kstrtabns_textsearch_find_continuous:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+textsearch_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_textsearch_prepare\09\09\09\09"
module asm "\09.long\09__crc_textsearch_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_textsearch_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22textsearch_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_textsearch_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+textsearch_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_textsearch_destroy\09\09\09\09"
module asm "\09.long\09__crc_textsearch_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_textsearch_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22textsearch_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_textsearch_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ts_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ts_state = type { i32, [48 x i8] }
%struct.ts_config = type { ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ts_mod_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ts_ops = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ts_ops, ptr @ts_ops }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_textsearch_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_textsearch_register = external dso_local constant [0 x i8], align 1
@__ksymtab_textsearch_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @textsearch_register to i32), ptr @__kstrtab_textsearch_register, ptr @__kstrtabns_textsearch_register }, section "___ksymtab+textsearch_register", align 4
@__kstrtab_textsearch_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_textsearch_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_textsearch_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @textsearch_unregister to i32), ptr @__kstrtab_textsearch_unregister, ptr @__kstrtabns_textsearch_unregister }, section "___ksymtab+textsearch_unregister", align 4
@__kstrtab_textsearch_find_continuous = external dso_local constant [0 x i8], align 1
@__kstrtabns_textsearch_find_continuous = external dso_local constant [0 x i8], align 1
@__ksymtab_textsearch_find_continuous = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @textsearch_find_continuous to i32), ptr @__kstrtab_textsearch_find_continuous, ptr @__kstrtabns_textsearch_find_continuous }, section "___ksymtab+textsearch_find_continuous", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ts_%s\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_textsearch_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_textsearch_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_textsearch_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @textsearch_prepare to i32), ptr @__kstrtab_textsearch_prepare, ptr @__kstrtabns_textsearch_prepare }, section "___ksymtab+textsearch_prepare", align 4
@__kstrtab_textsearch_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_textsearch_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_textsearch_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @textsearch_destroy to i32), ptr @__kstrtab_textsearch_destroy, ptr @__kstrtabns_textsearch_destroy }, section "___ksymtab+textsearch_destroy", align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ts_mod_lock\00", [20 x i8] zeroinitializer }, align 32
@lookup_ts_algo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lib/textsearch.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"ts_mod_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"ts_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 110, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 281, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 111, i32 8 }
@___asan_gen_.23 = private constant [20 x i8] c"../lib/textsearch.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 118, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 723, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_textsearch_destroy, ptr @__ksymtab_textsearch_find_continuous, ptr @__ksymtab_textsearch_prepare, ptr @__ksymtab_textsearch_register, ptr @__ksymtab_textsearch_unregister, ptr @ts_mod_lock, ptr @ts_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_mod_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @textsearch_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %find = getelementptr inbounds %struct.ts_ops, ptr %ops, i32 0, i32 2
  %2 = ptrtoint ptr %find to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %find, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %init = getelementptr inbounds %struct.ts_ops, ptr %ops, i32 0, i32 1
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 4
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %get_pattern = getelementptr inbounds %struct.ts_ops, ptr %ops, i32 0, i32 4
  %6 = ptrtoint ptr %get_pattern to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pattern, align 4
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %get_pattern_len = getelementptr inbounds %struct.ts_ops, ptr %ops, i32 0, i32 5
  %8 = ptrtoint ptr %get_pattern_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_pattern_len, align 4
  %cmp7 = icmp eq ptr %9, null
  br i1 %cmp7, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  tail call void @_raw_spin_lock(ptr noundef nonnull @ts_mod_lock) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @ts_ops, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp8.not = icmp eq ptr %.pn, @ts_ops
  br i1 %cmp8.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %o.0 = getelementptr i8, ptr %.pn, i32 -28
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %13 = ptrtoint ptr %o.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %o.0, align 4
  %call = tail call i32 @strcmp(ptr noundef %12, ptr noundef %14) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.errout_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.body.errout_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout

for.end:                                          ; preds = %for.cond
  %list17 = getelementptr inbounds %struct.ts_ops, ptr %ops, i32 0, i32 7
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ts_ops, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list17, ptr noundef %15, ptr noundef nonnull @ts_ops) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.end.errout_crit_edge

for.end.errout_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %list17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ts_ops, ptr %list17, align 4
  %prev2.i.i = getelementptr inbounds %struct.ts_ops, ptr %ops, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list17, ptr %15, align 4
  store ptr %list17, ptr getelementptr inbounds (%struct.list_head, ptr @ts_ops, i32 0, i32 1), align 4
  br label %errout

errout:                                           ; preds = %if.end.i.i, %for.end.errout_crit_edge, %for.body.errout_crit_edge
  %err.0 = phi i32 [ 0, %for.end.errout_crit_edge ], [ 0, %if.end.i.i ], [ -17, %for.body.errout_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ts_mod_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %errout, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %errout ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @textsearch_unregister(ptr noundef readnone %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @ts_mod_lock) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @ts_ops, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @ts_ops
  br i1 %cmp.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body:                                         ; preds = %for.cond
  %o.0 = getelementptr i8, ptr %.pn, i32 -28
  %cmp1 = icmp eq ptr %o.0, %ops
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %out

out:                                              ; preds = %list_del_rcu.exit, %for.cond.out_crit_edge
  %err.0 = phi i32 [ 0, %list_del_rcu.exit ], [ -2, %for.cond.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ts_mod_lock) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @textsearch_find_continuous(ptr noundef %conf, ptr noundef %state, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %cb = getelementptr inbounds %struct.ts_state, ptr %state, i32 0, i32 1
  %get_next_block = getelementptr inbounds %struct.ts_config, ptr %conf, i32 0, i32 2
  %0 = ptrtoint ptr %get_next_block to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @get_linear_data, ptr %get_next_block, align 4
  %data1 = getelementptr inbounds %struct.ts_state, ptr %state, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %data1, align 4
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %cb, align 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf, align 4
  %find.i.i = getelementptr inbounds %struct.ts_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %find.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %find.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %conf, ptr noundef %state) #8
  %finish.i.i = getelementptr inbounds %struct.ts_config, ptr %conf, i32 0, i32 3
  %8 = ptrtoint ptr %finish.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %finish.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %entry.textsearch_find.exit_crit_edge, label %if.then.i.i

entry.textsearch_find.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %textsearch_find.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %conf, ptr noundef %state) #8
  br label %textsearch_find.exit

textsearch_find.exit:                             ; preds = %if.then.i.i, %entry.textsearch_find.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_linear_data(i32 noundef %consumed, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %conf, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %cb = getelementptr inbounds %struct.ts_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %consumed)
  %cmp = icmp ugt i32 %1, %consumed
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge, !prof !38

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.ts_state, ptr %state, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %consumed
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %dst, align 4
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb, align 4
  %sub = sub i32 %6, %consumed
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @textsearch_prepare(ptr noundef %algo, ptr noundef %pattern, i32 noundef %len, i32 noundef %gfp_mask, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @lookup_ts_algo(ptr noundef %algo)
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true
  %call4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %algo) #8
  %call5 = tail call fastcc ptr @lookup_ts_algo(ptr noundef %algo)
  %cmp7 = icmp eq ptr %call5, null
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ops.041 = phi ptr [ %call5, %if.end6.if.end9_crit_edge ], [ %call1, %if.end.if.end9_crit_edge ]
  %init = getelementptr inbounds %struct.ts_ops, ptr %ops.041, i32 0, i32 1
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %call10 = tail call ptr %1(ptr noundef %pattern, i32 noundef %len, i32 noundef %gfp_mask, i32 noundef %flags) #8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %errout, label %if.end14

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops.041, ptr %call10, align 4
  br label %cleanup

errout:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %owner = getelementptr inbounds %struct.ts_ops, ptr %ops.041, i32 0, i32 6
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %4) #8
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end14, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call10, %if.end14 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call10, %errout ], [ inttoptr (i32 -2 to ptr), %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_ts_algo(ptr nocapture noundef readonly %name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @lookup_ts_algo.__warned, align 1
  br i1 %.b29, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @lookup_ts_algo.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 118, ptr noundef nonnull @.str.3) #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @ts_ops, %for.cond.preheader ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @ts_ops
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %o.0 = getelementptr i8, ptr %.pn, i32 -28
  %5 = ptrtoint ptr %o.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %o.0, align 4
  %call10 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %6) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then12:                                        ; preds = %for.body
  %o.0.le = getelementptr i8, ptr %.pn, i32 -28
  %owner = getelementptr i8, ptr %.pn, i32 -4
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 4
  %call13 = tail call zeroext i1 @try_module_get(ptr noundef %8) #8
  %spec.select = select i1 %call13, ptr %o.0.le, ptr null
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i30, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i33

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i33:                                ; preds = %if.then12
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call.i39 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i39, label %for.end.rcu_read_unlock.exit49_crit_edge, label %land.lhs.true.i42

for.end.rcu_read_unlock.exit49_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit49

land.lhs.true.i42:                                ; preds = %for.end
  %call1.i40 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge, label %land.lhs.true2.i44

land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit49

land.lhs.true2.i44:                               ; preds = %land.lhs.true.i42
  %.b4.i43 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43, label %land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge, label %if.then.i45

land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge: ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit49

if.then.i45:                                      ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_unlock.exit49

rcu_read_unlock.exit49:                           ; preds = %if.then.i45, %land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge, %land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge, %for.end.rcu_read_unlock.exit49_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit49, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %spec.select, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit49 ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i.i.i.i46 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i47, align 4
  %sub.i.i.i48 = add i32 %12, -1
  store volatile i32 %sub.i.i.i48, ptr %preempt_count.i.i.i.i47, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @textsearch_destroy(ptr noundef %conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %destroy = getelementptr inbounds %struct.ts_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %conf) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf, align 4
  %owner = getelementptr inbounds %struct.ts_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %7) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  tail call void @kfree(ptr noundef %conf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__ksymtab_textsearch_register, !1, !"__ksymtab_textsearch_register", i1 false, i1 false}
!1 = !{!"../lib/textsearch.c", i32 164, i32 1}
!2 = !{ptr @__ksymtab_textsearch_unregister, !3, !"__ksymtab_textsearch_unregister", i1 false, i1 false}
!3 = !{!"../lib/textsearch.c", i32 196, i32 1}
!4 = !{ptr @__ksymtab_textsearch_find_continuous, !5, !"__ksymtab_textsearch_find_continuous", i1 false, i1 false}
!5 = !{!"../lib/textsearch.c", i32 243, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/textsearch.c", i32 281, i32 3}
!8 = !{ptr @__ksymtab_textsearch_prepare, !9, !"__ksymtab_textsearch_prepare", i1 false, i1 false}
!9 = !{!"../lib/textsearch.c", i32 304, i32 1}
!10 = !{ptr @__ksymtab_textsearch_destroy, !11, !"__ksymtab_textsearch_destroy", i1 false, i1 false}
!11 = !{!"../lib/textsearch.c", i32 323, i32 1}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/textsearch.c", i32 111, i32 8}
!14 = !{ptr @ts_mod_lock, !13, !"ts_mod_lock", i1 false, i1 false}
!15 = !{ptr @ts_ops, !16, !"ts_ops", i1 false, i1 false}
!16 = !{!"../lib/textsearch.c", i32 110, i32 8}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../lib/textsearch.c", i32 118, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2151559258}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2149363793}
!40 = !{i64 2149364059}
