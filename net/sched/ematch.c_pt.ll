; ModuleID = '/llk/IR_all_yes/net/sched/ematch.c_pt.bc'
source_filename = "../net/sched/ematch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tcf_em_register\22, \22a\22\09"
module asm "\09.weak\09__crc_tcf_em_register\09\09\09\09"
module asm "\09.long\09__crc_tcf_em_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcf_em_register:\09\09\09\09\09"
module asm "\09.asciz \09\22tcf_em_register\22\09\09\09\09\09"
module asm "__kstrtabns_tcf_em_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tcf_em_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_tcf_em_unregister\09\09\09\09"
module asm "\09.long\09__crc_tcf_em_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcf_em_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22tcf_em_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_tcf_em_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tcf_em_tree_validate\22, \22a\22\09"
module asm "\09.weak\09__crc_tcf_em_tree_validate\09\09\09\09"
module asm "\09.long\09__crc_tcf_em_tree_validate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcf_em_tree_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22tcf_em_tree_validate\22\09\09\09\09\09"
module asm "__kstrtabns_tcf_em_tree_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tcf_em_tree_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_tcf_em_tree_destroy\09\09\09\09"
module asm "\09.long\09__crc_tcf_em_tree_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcf_em_tree_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22tcf_em_tree_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_tcf_em_tree_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tcf_em_tree_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_tcf_em_tree_dump\09\09\09\09"
module asm "\09.long\09__crc_tcf_em_tree_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcf_em_tree_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22tcf_em_tree_dump\22\09\09\09\09\09"
module asm "__kstrtabns_tcf_em_tree_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tcf_em_tree_match\22, \22a\22\09"
module asm "\09.weak\09__crc___tcf_em_tree_match\09\09\09\09"
module asm "\09.long\09__crc___tcf_em_tree_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tcf_em_tree_match:\09\09\09\09\09"
module asm "\09.asciz \09\22__tcf_em_tree_match\22\09\09\09\09\09"
module asm "__kstrtabns___tcf_em_tree_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.38 }
%union.anon.38 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tcf_ematch_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tcf_ematch_tree = type { %struct.tcf_ematch_tree_hdr, ptr }
%struct.tcf_ematch_tree_hdr = type { i16, i16 }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.tcf_ematch = type { ptr, i32, i32, i16, i16, ptr }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.115, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flow_block = type { %struct.list_head }
%struct.anon.115 = type { ptr, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.tcf_ematch_hdr = type { i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }

@ematch_mod_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@ematch_ops = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ematch_ops, ptr @ematch_ops }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_tcf_em_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcf_em_register = external dso_local constant [0 x i8], align 1
@__ksymtab_tcf_em_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcf_em_register to i32), ptr @__kstrtab_tcf_em_register, ptr @__kstrtabns_tcf_em_register }, section "___ksymtab+tcf_em_register", align 4
@__kstrtab_tcf_em_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcf_em_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_tcf_em_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcf_em_unregister to i32), ptr @__kstrtab_tcf_em_unregister, ptr @__kstrtabns_tcf_em_unregister }, section "___ksymtab+tcf_em_unregister", align 4
@em_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.38 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.38 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__kstrtab_tcf_em_tree_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcf_em_tree_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_tcf_em_tree_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcf_em_tree_validate to i32), ptr @__kstrtab_tcf_em_tree_validate, ptr @__kstrtabns_tcf_em_tree_validate }, section "___ksymtab+tcf_em_tree_validate", align 4
@__kstrtab_tcf_em_tree_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcf_em_tree_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_tcf_em_tree_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcf_em_tree_destroy to i32), ptr @__kstrtab_tcf_em_tree_destroy, ptr @__kstrtabns_tcf_em_tree_destroy }, section "___ksymtab+tcf_em_tree_destroy", align 4
@__kstrtab_tcf_em_tree_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcf_em_tree_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_tcf_em_tree_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcf_em_tree_dump to i32), ptr @__kstrtab_tcf_em_tree_dump, ptr @__kstrtabns_tcf_em_tree_dump }, section "___ksymtab+tcf_em_tree_dump", align 4
@__tcf_em_tree_match._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 545, ptr null, ptr null }, align 1
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014tc ematch: local stack overflow, increase NET_EMATCH_STACK\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__tcf_em_tree_match\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/sched/ematch.c\00", [45 x i8] zeroinitializer }, align 32
@__tcf_em_tree_match._entry_ptr = internal global ptr @__tcf_em_tree_match._entry, section ".printk_index", align 4
@__kstrtab___tcf_em_tree_match = external dso_local constant [0 x i8], align 1
@__kstrtabns___tcf_em_tree_match = external dso_local constant [0 x i8], align 1
@__ksymtab___tcf_em_tree_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tcf_em_tree_match to i32), ptr @__kstrtab___tcf_em_tree_match, ptr @__kstrtabns___tcf_em_tree_match }, section "___ksymtab+__tcf_em_tree_match", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ematch_mod_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ematch-kind-%u\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"ematch_mod_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"ematch_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 89, i32 8 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"em_policy\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 282, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 545, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 90, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [22 x i8] c"../net/sched/ematch.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 218, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab___tcf_em_tree_match, ptr @__ksymtab_tcf_em_register, ptr @__ksymtab_tcf_em_tree_destroy, ptr @__ksymtab_tcf_em_tree_dump, ptr @__ksymtab_tcf_em_tree_validate, ptr @__ksymtab_tcf_em_unregister, ptr @__tcf_em_tree_match._entry, ptr @__tcf_em_tree_match._entry_ptr, ptr @ematch_mod_lock, ptr @ematch_ops, ptr @em_policy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ematch_mod_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ematch_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcf_em_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %match = getelementptr inbounds %struct.tcf_ematch_ops, ptr %ops, i32 0, i32 3
  %0 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_write_lock(ptr noundef nonnull @ematch_mod_lock) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @ematch_ops, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp1.not = icmp eq ptr %.pn, @ematch_ops
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %e.0 = getelementptr i8, ptr %.pn, i32 -28
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ops, align 4
  %5 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %e.0, align 4
  %cmp3 = icmp eq i32 %4, %6
  br i1 %cmp3, label %for.body.errout_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.body.errout_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout

for.end:                                          ; preds = %for.cond
  %link10 = getelementptr inbounds %struct.tcf_ematch_ops, ptr %ops, i32 0, i32 7
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ematch_ops, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link10, ptr noundef %7, ptr noundef nonnull @ematch_ops) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.end.errout_crit_edge

for.end.errout_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %link10, ptr getelementptr inbounds (%struct.list_head, ptr @ematch_ops, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %link10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ematch_ops, ptr %link10, align 4
  %prev3.i.i = getelementptr inbounds %struct.tcf_ematch_ops, ptr %ops, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %link10, ptr %7, align 4
  br label %errout

errout:                                           ; preds = %if.end.i.i, %for.end.errout_crit_edge, %for.body.errout_crit_edge
  %err.0 = phi i32 [ 0, %for.end.errout_crit_edge ], [ 0, %if.end.i.i ], [ -17, %for.body.errout_crit_edge ]
  tail call void @_raw_write_unlock(ptr noundef nonnull @ematch_mod_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %errout, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %errout ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcf_em_unregister(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @ematch_mod_lock) #5
  %link = getelementptr inbounds %struct.tcf_ematch_ops, ptr %ops, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.tcf_ematch_ops, ptr %ops, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.tcf_ematch_ops, ptr %ops, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock(ptr noundef nonnull @ematch_mod_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcf_em_tree_validate(ptr nocapture noundef readonly %tp, ptr noundef %nla, ptr nocapture noundef %tree) #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #5
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !36
  %1 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !36
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !36
  %5 = ptrtoint ptr %tree to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %tree, align 4
  %tobool.not = icmp eq ptr %nla, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %6 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @em_policy, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %cmp4 = icmp eq ptr %9, null
  %cmp5 = icmp eq ptr %11, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.i, align 2
  %14 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tree, align 4
  %add.ptr.i83 = getelementptr i8, ptr %11, i32 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %11, align 2
  %conv.i = zext i16 %16 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %17 = load i16, ptr %add.ptr.i, align 2
  %conv = zext i16 %17 to i32
  %mul = mul nuw nsw i32 %conv, 20
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #8
  %matches = getelementptr inbounds %struct.tcf_ematch_tree, ptr %tree, i32 0, i32 1
  %18 = ptrtoint ptr %matches to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %matches, align 4
  %cmp13 = icmp eq ptr %call9.i.i, null
  br i1 %cmp13, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %16)
  %cmp.i121 = icmp ugt i16 %16, 7
  br i1 %cmp.i121, label %land.lhs.true.i.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true.i.lr.ph:                            ; preds = %for.cond.preheader
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end40.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %rt_match.0125 = phi ptr [ %add.ptr.i83, %land.lhs.true.i.lr.ph ], [ %add.ptr.i95, %if.end40.land.lhs.true.i_crit_edge ]
  %idx.0123 = phi i32 [ 0, %land.lhs.true.i.lr.ph ], [ %conv19, %if.end40.land.lhs.true.i_crit_edge ]
  %list_len.0122 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %if.end40.land.lhs.true.i_crit_edge ]
  %19 = ptrtoint ptr %rt_match.0125 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rt_match.0125, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %20)
  %cmp1.i = icmp ult i16 %20, 4
  %conv.i84 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %list_len.0122, i32 %conv.i84)
  %cmp5.i.not = icmp ult i32 %list_len.0122, %conv.i84
  %or.cond100 = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond100, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %rt_match.0125, i32 0, i32 1
  %21 = ptrtoint ptr %nla_type to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nla_type, align 2
  %conv19 = zext i16 %22 to i32
  %add = add nuw nsw i32 %idx.0123, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv19)
  %cmp20.not = icmp eq i32 %add, %conv19
  br i1 %cmp20.not, label %if.end23, label %for.body.errout_abort_crit_edge

for.body.errout_abort_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.end23:                                         ; preds = %for.body
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %conv25 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0123, i32 %conv25)
  %cmp26.not = icmp ult i32 %idx.0123, %conv25
  br i1 %cmp26.not, label %if.end29, label %if.end23.errout_abort_crit_edge

if.end23.errout_abort_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.end29:                                         ; preds = %if.end23
  %25 = ptrtoint ptr %rt_match.0125 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rt_match.0125, align 2
  %conv.i85 = zext i16 %26 to i32
  %sub.i86 = add nsw i32 %conv.i85, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i86)
  %cmp31 = icmp ult i32 %sub.i86, 8
  br i1 %cmp31, label %if.end29.errout_abort_crit_edge, label %if.end34

if.end29.errout_abort_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.end34:                                         ; preds = %if.end29
  %27 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %matches, align 4
  %arrayidx.i = getelementptr %struct.tcf_ematch, ptr %28, i32 %idx.0123
  %add.ptr.i.i87 = getelementptr i8, ptr %rt_match.0125, i32 4
  %sub.i89 = add nsw i32 %conv.i85, -12
  %add.ptr.i90 = getelementptr i8, ptr %rt_match.0125, i32 12
  %29 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %block.i, align 4
  %net2.i = getelementptr inbounds %struct.tcf_block, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %net2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net2.i, align 4
  %flags.i = getelementptr i8, ptr %rt_match.0125, i32 8
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags.i, align 2
  %37 = and i16 %36, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %37)
  %cmp.not.i = icmp eq i16 %37, 3
  br i1 %cmp.not.i, label %if.end34.errout_abort_crit_edge, label %if.end.i

if.end34.errout_abort_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.end.i:                                         ; preds = %if.end34
  %kind.i = getelementptr i8, ptr %rt_match.0125, i32 6
  %38 = ptrtoint ptr %kind.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %kind.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp5.i91 = icmp eq i16 %39, 0
  br i1 %cmp5.i91, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i89)
  %cmp8.i = icmp ult i32 %sub.i89, 4
  br i1 %cmp8.i, label %if.then7.i.errout_abort_crit_edge, label %if.end11.i

if.then7.i.errout_abort_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.end11.i:                                       ; preds = %if.then7.i
  %40 = ptrtoint ptr %add.ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv25)
  %cmp13.not.i = icmp ult i32 %41, %conv25
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %idx.0123)
  %cmp17.not.i = icmp ugt i32 %41, %idx.0123
  %or.cond149.i = and i1 %cmp17.not.i, %cmp13.not.i
  br i1 %or.cond149.i, label %cleanup.i, label %if.end11.i.errout_abort_crit_edge

if.end11.i.errout_abort_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

cleanup.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %data21.i = getelementptr %struct.tcf_ematch, ptr %28, i32 %idx.0123, i32 1
  %42 = ptrtoint ptr %data21.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %data21.i, align 4
  br label %if.end40

if.else.i:                                        ; preds = %if.end.i
  call void @_raw_read_lock(ptr noundef nonnull @ematch_mod_lock) #5
  %conv.i150.i = zext i16 %39 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.else.i
  %.pn.in.i.i = phi ptr [ @ematch_ops, %if.else.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %43 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @ematch_ops
  br i1 %cmp.not.i.i, label %for.cond.i.i.tcf_em_lookup.exit.thread.i_crit_edge, label %for.body.i.i

for.cond.i.i.tcf_em_lookup.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcf_em_lookup.exit.thread.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %e.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -28
  %44 = ptrtoint ptr %e.0.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %e.0.i.i, align 4
  %cmp2.i.i = icmp eq i32 %45, %conv.i150.i
  br i1 %cmp2.i.i, label %if.then.i.i92, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

if.then.i.i92:                                    ; preds = %for.body.i.i
  %owner.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %46 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %owner.i.i, align 4
  %call.i.i = call zeroext i1 @try_module_get(ptr noundef %47) #5
  br i1 %call.i.i, label %tcf_em_lookup.exit.i, label %if.then.i.i92.tcf_em_lookup.exit.thread.i_crit_edge

if.then.i.i92.tcf_em_lookup.exit.thread.i_crit_edge: ; preds = %if.then.i.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcf_em_lookup.exit.thread.i

tcf_em_lookup.exit.thread.i:                      ; preds = %if.then.i.i92.tcf_em_lookup.exit.thread.i_crit_edge, %for.cond.i.i.tcf_em_lookup.exit.thread.i_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @ematch_mod_lock) #5
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.then27.i

tcf_em_lookup.exit.i:                             ; preds = %if.then.i.i92
  %e.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -28
  call void @_raw_read_unlock(ptr noundef nonnull @ematch_mod_lock) #5
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %e.0.i.i.le, ptr %arrayidx.i, align 4
  %cmp25.i = icmp eq ptr %e.0.i.i.le, null
  br i1 %cmp25.i, label %tcf_em_lookup.exit.i.if.then27.i_crit_edge, label %if.end39.i

tcf_em_lookup.exit.i.if.then27.i_crit_edge:       ; preds = %tcf_em_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

if.then27.i:                                      ; preds = %tcf_em_lookup.exit.i.if.then27.i_crit_edge, %tcf_em_lookup.exit.thread.i
  %kind.i153 = getelementptr i8, ptr %rt_match.0125, i32 6
  call void @__rtnl_unlock() #5
  %50 = ptrtoint ptr %kind.i153 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %kind.i153, align 2
  %conv29.i = zext i16 %51 to i32
  %call30.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, i32 noundef %conv29.i) #5
  call void @rtnl_lock() #5
  %52 = ptrtoint ptr %kind.i153 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %kind.i153, align 2
  call void @_raw_read_lock(ptr noundef nonnull @ematch_mod_lock) #5
  %conv.i151.i = zext i16 %53 to i32
  br label %for.cond.i155.i

for.cond.i155.i:                                  ; preds = %for.body.i158.i.for.cond.i155.i_crit_edge, %if.then27.i
  %.pn.in.i152.i = phi ptr [ @ematch_ops, %if.then27.i ], [ %.pn.i153.i, %for.body.i158.i.for.cond.i155.i_crit_edge ]
  %54 = ptrtoint ptr %.pn.in.i152.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i153.i = load ptr, ptr %.pn.in.i152.i, align 4
  %cmp.not.i154.i = icmp eq ptr %.pn.i153.i, @ematch_ops
  br i1 %cmp.not.i154.i, label %for.cond.i155.i.tcf_em_lookup.exit165.thread.i_crit_edge, label %for.body.i158.i

for.cond.i155.i.tcf_em_lookup.exit165.thread.i_crit_edge: ; preds = %for.cond.i155.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcf_em_lookup.exit165.thread.i

for.body.i158.i:                                  ; preds = %for.cond.i155.i
  %e.0.i156.i = getelementptr i8, ptr %.pn.i153.i, i32 -28
  %55 = ptrtoint ptr %e.0.i156.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %e.0.i156.i, align 4
  %cmp2.i157.i = icmp eq i32 %56, %conv.i151.i
  br i1 %cmp2.i157.i, label %if.then.i163.i, label %for.body.i158.i.for.cond.i155.i_crit_edge

for.body.i158.i.for.cond.i155.i_crit_edge:        ; preds = %for.body.i158.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i155.i

if.then.i163.i:                                   ; preds = %for.body.i158.i
  %owner.i160.i = getelementptr i8, ptr %.pn.i153.i, i32 -4
  %57 = ptrtoint ptr %owner.i160.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %owner.i160.i, align 4
  %call.i161.i = call zeroext i1 @try_module_get(ptr noundef %58) #5
  br i1 %call.i161.i, label %tcf_em_lookup.exit165.i, label %if.then.i163.i.tcf_em_lookup.exit165.thread.i_crit_edge

if.then.i163.i.tcf_em_lookup.exit165.thread.i_crit_edge: ; preds = %if.then.i163.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcf_em_lookup.exit165.thread.i

tcf_em_lookup.exit165.thread.i:                   ; preds = %if.then.i163.i.tcf_em_lookup.exit165.thread.i_crit_edge, %for.cond.i155.i.tcf_em_lookup.exit165.thread.i_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @ematch_mod_lock) #5
  br label %errout_abort.sink.split

tcf_em_lookup.exit165.i:                          ; preds = %if.then.i163.i
  %e.0.i156.i.le = getelementptr i8, ptr %.pn.i153.i, i32 -28
  call void @_raw_read_unlock(ptr noundef nonnull @ematch_mod_lock) #5
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %e.0.i156.i.le, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %e.0.i156.i.le, null
  br i1 %tobool.not.i, label %tcf_em_lookup.exit165.i.errout_abort_crit_edge, label %if.then35.i

tcf_em_lookup.exit165.i.errout_abort_crit_edge:   ; preds = %tcf_em_lookup.exit165.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.then35.i:                                      ; preds = %tcf_em_lookup.exit165.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %owner.i160.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %owner.i160.i, align 4
  call void @module_put(ptr noundef %61) #5
  br label %errout_abort.sink.split

if.end39.i:                                       ; preds = %tcf_em_lookup.exit.i
  %datalen.i = getelementptr i8, ptr %.pn.i.i, i32 -24
  %62 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %datalen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool41.not.i = icmp ne i32 %63, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i89, i32 %63)
  %cmp44.i = icmp slt i32 %sub.i89, %63
  %or.cond.i = select i1 %tobool41.not.i, i1 %cmp44.i, i1 false
  br i1 %or.cond.i, label %if.end39.i.errout_abort_crit_edge, label %if.end47.i

if.end39.i.errout_abort_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.end47.i:                                       ; preds = %if.end39.i
  %change.i = getelementptr i8, ptr %.pn.i.i, i32 -20
  %64 = ptrtoint ptr %change.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %change.i, align 4
  %tobool49.not.i = icmp eq ptr %65, null
  br i1 %tobool49.not.i, label %if.else64.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end47.i
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flags.i, align 2
  %68 = and i16 %67, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool54.not.i = icmp eq i16 %68, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.then50.i.errout_abort_crit_edge

if.then50.i.errout_abort_crit_edge:               ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.end56.i:                                       ; preds = %if.then50.i
  %call59.i = call i32 %65(ptr noundef %34, ptr noundef %add.ptr.i90, i32 noundef %sub.i89, ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end56.i.errout_abort_crit_edge, label %if.end56.i.if.end40_crit_edge

if.end56.i.if.end40_crit_edge:                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.end56.i.errout_abort_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.else64.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %26)
  %cmp65.i = icmp ugt i16 %26, 12
  br i1 %cmp65.i, label %if.then67.i, label %if.else64.i.if.end40_crit_edge

if.else64.i.if.end40_crit_edge:                   ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then67.i:                                      ; preds = %if.else64.i
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flags.i, align 2
  %71 = and i16 %70, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool71.not.i = icmp eq i16 %71, 0
  br i1 %tobool71.not.i, label %if.else78.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i89)
  %cmp73.i = icmp ult i32 %sub.i89, 4
  br i1 %cmp73.i, label %if.then72.i.errout_abort_crit_edge, label %if.end76.i

if.then72.i.errout_abort_crit_edge:               ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

if.end76.i:                                       ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %add.ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i90, align 4
  br label %if.end88.i

if.else78.i:                                      ; preds = %if.then67.i
  %call79.i = call ptr @kmemdup(ptr noundef %add.ptr.i90, i32 noundef %sub.i89, i32 noundef 3264) #5
  %cmp80.i = icmp eq ptr %call79.i, null
  br i1 %cmp80.i, label %if.else78.i.errout_abort_crit_edge, label %cleanup85.thread.i

if.else78.i.errout_abort_crit_edge:               ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

cleanup85.thread.i:                               ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %call79.i to i32
  br label %if.end88.i

if.end88.i:                                       ; preds = %cleanup85.thread.i, %if.end76.i
  %.sink.i = phi i32 [ %74, %cleanup85.thread.i ], [ %73, %if.end76.i ]
  %data84.i = getelementptr %struct.tcf_ematch, ptr %28, i32 %idx.0123, i32 1
  %75 = ptrtoint ptr %data84.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink.i, ptr %data84.i, align 4
  %datalen89.i = getelementptr %struct.tcf_ematch, ptr %28, i32 %idx.0123, i32 2
  %76 = ptrtoint ptr %datalen89.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub.i89, ptr %datalen89.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end88.i, %if.else64.i.if.end40_crit_edge, %if.end56.i.if.end40_crit_edge, %cleanup.i
  %77 = ptrtoint ptr %add.ptr.i.i87 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i.i87, align 2
  %matchid93.i = getelementptr %struct.tcf_ematch, ptr %28, i32 %idx.0123, i32 3
  %79 = ptrtoint ptr %matchid93.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %matchid93.i, align 4
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %flags.i, align 2
  %flags95.i = getelementptr %struct.tcf_ematch, ptr %28, i32 %idx.0123, i32 4
  %82 = ptrtoint ptr %flags95.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %flags95.i, align 2
  %net96.i = getelementptr %struct.tcf_ematch, ptr %28, i32 %idx.0123, i32 5
  %83 = ptrtoint ptr %net96.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %34, ptr %net96.i, align 4
  %84 = ptrtoint ptr %rt_match.0125 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rt_match.0125, align 2
  %conv.i93 = zext i16 %85 to i32
  %sub.i94 = add nuw nsw i32 %conv.i93, 3
  %and.i = and i32 %sub.i94, 131068
  %sub1.i = sub i32 %list_len.0122, %and.i
  %add.ptr.i95 = getelementptr i8, ptr %rt_match.0125, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %if.end40.land.lhs.true.i_crit_edge, label %for.end.loopexit.split.loop.exit

if.end40.land.lhs.true.i_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.loopexit.split.loop.exit:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.le = zext i16 %22 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit, %land.lhs.true.i.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %conv19.le, %for.end.loopexit.split.loop.exit ], [ %idx.0123, %land.lhs.true.i.for.end_crit_edge ]
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i, align 2
  %conv43 = zext i16 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.lcssa, i32 %conv43)
  %cmp44.not = icmp eq i32 %idx.0.lcssa, %conv43
  br i1 %cmp44.not, label %for.end.cleanup_crit_edge, label %for.end.errout_abort_crit_edge

for.end.errout_abort_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %errout_abort

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

errout_abort.sink.split:                          ; preds = %if.then35.i, %tcf_em_lookup.exit165.thread.i
  %err.1.ph = phi i32 [ -11, %if.then35.i ], [ -2, %tcf_em_lookup.exit165.thread.i ]
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %arrayidx.i, align 4
  br label %errout_abort

errout_abort:                                     ; preds = %errout_abort.sink.split, %for.end.errout_abort_crit_edge, %if.else78.i.errout_abort_crit_edge, %if.then72.i.errout_abort_crit_edge, %if.end56.i.errout_abort_crit_edge, %if.then50.i.errout_abort_crit_edge, %if.end39.i.errout_abort_crit_edge, %tcf_em_lookup.exit165.i.errout_abort_crit_edge, %if.end11.i.errout_abort_crit_edge, %if.then7.i.errout_abort_crit_edge, %if.end34.errout_abort_crit_edge, %if.end29.errout_abort_crit_edge, %if.end23.errout_abort_crit_edge, %for.body.errout_abort_crit_edge
  %err.1 = phi i32 [ -22, %for.end.errout_abort_crit_edge ], [ -2, %tcf_em_lookup.exit165.i.errout_abort_crit_edge ], [ %err.1.ph, %errout_abort.sink.split ], [ -22, %if.then50.i.errout_abort_crit_edge ], [ %call59.i, %if.end56.i.errout_abort_crit_edge ], [ -22, %if.then72.i.errout_abort_crit_edge ], [ -22, %if.end34.errout_abort_crit_edge ], [ -22, %if.end39.i.errout_abort_crit_edge ], [ -105, %if.else78.i.errout_abort_crit_edge ], [ -22, %if.then7.i.errout_abort_crit_edge ], [ -22, %if.end11.i.errout_abort_crit_edge ], [ -22, %if.end29.errout_abort_crit_edge ], [ -22, %if.end23.errout_abort_crit_edge ], [ -22, %for.body.errout_abort_crit_edge ]
  call void @tcf_em_tree_destroy(ptr noundef %tree)
  br label %cleanup

cleanup:                                          ; preds = %errout_abort, %for.end.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %errout_abort ], [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcf_em_tree_destroy(ptr nocapture noundef %tree) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matches = getelementptr inbounds %struct.tcf_ematch_tree, ptr %tree, i32 0, i32 1
  %0 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matches, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %tree to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tree, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp135.not = icmp eq i16 %3, 0
  br i1 %cmp135.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %if.end15.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %matches, align 4
  %arrayidx.i = getelementptr %struct.tcf_ematch, ptr %5, i32 %i.036
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end15_crit_edge, label %if.then3

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then3:                                         ; preds = %for.body
  %destroy = getelementptr inbounds %struct.tcf_ematch_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destroy, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %arrayidx.i) #5
  br label %if.end13

if.else:                                          ; preds = %if.then3
  %flags.i = getelementptr %struct.tcf_ematch, ptr %5, i32 %i.036, i32 4
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i, align 2
  %12 = and i16 %11, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool10.not = icmp eq i16 %12, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr %struct.tcf_ematch, ptr %5, i32 %i.036, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %15 = inttoptr i32 %14 to ptr
  tail call void @kfree(ptr noundef %15) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else.if.end13_crit_edge, %if.then6
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %owner = getelementptr inbounds %struct.tcf_ematch_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %19) #5
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %for.body.if.end15_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %20 = ptrtoint ptr %tree to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tree, align 4
  %conv = zext i16 %21 to i32
  %cmp1 = icmp ult i32 %inc, %conv
  br i1 %cmp1, label %if.end15.for.body_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %22 = ptrtoint ptr %tree to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %tree, align 4
  %23 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %matches, align 4
  tail call void @kfree(ptr noundef %24) #5
  %25 = ptrtoint ptr %matches to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %matches, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcf_em_tree_dump(ptr noundef %skb, ptr noundef %tree, i32 noundef %tlv) #0 align 64 {
entry:
  %em_hdr = alloca %struct.tcf_ematch_hdr, align 8
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %tlv, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp113 = icmp eq ptr %1, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp113
  br i1 %cmp, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup57

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef %tree) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup57_crit_edge

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup57

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i98 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %cmp.i99 = icmp slt i32 %call1.i98, 0
  %cmp5114 = icmp eq ptr %3, null
  %cmp5 = select i1 %cmp.i99, i1 true, i1 %cmp5114
  br i1 %cmp5, label %if.end3.cleanup57_crit_edge, label %if.end7

if.end3.cleanup57_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup57

if.end7:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %tree to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tree, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp10116.not = icmp eq i16 %5, 0
  br i1 %cmp10116.not, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %matches.i = getelementptr inbounds %struct.tcf_ematch_tree, ptr %tree, i32 0, i32 1
  %8 = getelementptr inbounds %struct.tcf_ematch_hdr, ptr %em_hdr, i32 0, i32 1
  %9 = getelementptr inbounds %struct.tcf_ematch_hdr, ptr %em_hdr, i32 0, i32 2
  %10 = getelementptr inbounds %struct.tcf_ematch_hdr, ptr %em_hdr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %tail.0119 = phi ptr [ %7, %for.body.lr.ph ], [ %41, %cleanup.for.body_crit_edge ]
  %i.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  %11 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %matches.i, align 4
  %arrayidx.i = getelementptr %struct.tcf_ematch, ptr %12, i32 %i.0117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %em_hdr) #5
  %matchid13 = getelementptr %struct.tcf_ematch, ptr %12, i32 %i.0117, i32 3
  %13 = ptrtoint ptr %em_hdr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %em_hdr, align 8
  %14 = ptrtoint ptr %matchid13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %matchid13, align 4
  store i16 %15, ptr %em_hdr, align 8
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %19, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %conv17 = trunc i32 %cond to i16
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv17, ptr %8, align 2
  %flags18 = getelementptr %struct.tcf_ematch, ptr %12, i32 %i.0117, i32 4
  %21 = ptrtoint ptr %flags18 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags18, align 2
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %9, align 4
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %10, align 2
  %add = add nuw nsw i32 %i.0117, 1
  %call19 = call i32 @nla_put(ptr noundef %skb, i32 noundef %add, i32 noundef 8, ptr noundef nonnull %em_hdr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %cond.end.cleanup.thread_crit_edge

cond.end.cleanup.thread_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end22:                                         ; preds = %cond.end
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool24.not = icmp eq ptr %26, null
  br i1 %tobool24.not, label %if.end22.if.then39_crit_edge, label %land.lhs.true

if.end22.if.then39_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

land.lhs.true:                                    ; preds = %if.end22
  %dump = getelementptr inbounds %struct.tcf_ematch_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dump, align 4
  %tobool26.not = icmp eq ptr %28, null
  br i1 %tobool26.not, label %lor.lhs.false, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  %call30 = call i32 %28(ptr noundef %skb, ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then27.cleanup.thread_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27.cleanup.thread_crit_edge:               ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %land.lhs.true
  %29 = ptrtoint ptr %flags18 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags18, align 2
  %31 = and i16 %30, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool38.not = icmp eq i16 %31, 0
  br i1 %tobool38.not, label %if.else41, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %if.end22.if.then39_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #5
  %32 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %u, align 4, !annotation !36
  %data = getelementptr %struct.tcf_ematch, ptr %12, i32 %i.0117, i32 1
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data, align 4
  store i32 %34, ptr %u, align 4
  %call40 = call i32 @nla_put_nohdr(ptr noundef %skb, i32 noundef 4, ptr noundef nonnull %u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #5
  br label %cleanup

if.else41:                                        ; preds = %lor.lhs.false
  %datalen = getelementptr %struct.tcf_ematch, ptr %12, i32 %i.0117, i32 2
  %35 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp42.not = icmp eq i32 %36, 0
  br i1 %cmp42.not, label %if.else41.cleanup_crit_edge, label %if.then44

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  %data46 = getelementptr %struct.tcf_ematch, ptr %12, i32 %i.0117, i32 1
  %37 = ptrtoint ptr %data46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data46, align 4
  %39 = inttoptr i32 %38 to ptr
  %call47 = call i32 @nla_put_nohdr(ptr noundef %skb, i32 noundef %36, ptr noundef %39) #5
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then27.cleanup.thread_crit_edge, %cond.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %em_hdr) #5
  br label %cleanup57

cleanup:                                          ; preds = %if.then44, %if.else41.cleanup_crit_edge, %if.then39, %if.then27.cleanup_crit_edge
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %tail.0119 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv52 = trunc i32 %sub.ptr.sub to i16
  %42 = ptrtoint ptr %tail.0119 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv52, ptr %tail.0119, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %em_hdr) #5
  %43 = ptrtoint ptr %tree to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tree, align 4
  %conv = zext i16 %44 to i32
  %cmp10 = icmp ult i32 %add, %conv
  br i1 %cmp10, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end7.for.end_crit_edge
  %45 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %3, align 2
  %48 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i104 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i105 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i106 = sub i32 %sub.ptr.lhs.cast.i104, %sub.ptr.rhs.cast.i105
  %conv.i107 = trunc i32 %sub.ptr.sub.i106 to i16
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i107, ptr %1, align 2
  br label %cleanup57

cleanup57:                                        ; preds = %for.end, %cleanup.thread, %if.end3.cleanup57_crit_edge, %if.end.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %if.end3.cleanup57_crit_edge ], [ -1, %if.end.cleanup57_crit_edge ], [ -1, %entry.cleanup57_crit_edge ], [ -1, %cleanup.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_nohdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tcf_em_tree_match(ptr noundef %skb, ptr nocapture noundef readonly %tree, ptr noundef %info) #0 align 64 {
entry:
  %stack = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack) #5
  %0 = call ptr @memset(ptr %stack, i32 255, i32 128)
  %matches.i = getelementptr inbounds %struct.tcf_ematch_tree, ptr %tree, i32 0, i32 1
  br label %proceed

proceed:                                          ; preds = %proceed.backedge, %entry
  %stackp.0 = phi i32 [ 0, %entry ], [ %stackp.0.be, %proceed.backedge ]
  %match_idx.0 = phi i32 [ 0, %entry ], [ %match_idx.0.be, %proceed.backedge ]
  %res.0 = phi i32 [ 0, %entry ], [ %res.0.be, %proceed.backedge ]
  %1 = ptrtoint ptr %tree to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tree, align 4
  %conv87 = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %match_idx.0, i32 %conv87)
  %cmp88 = icmp slt i32 %match_idx.0, %conv87
  br i1 %cmp88, label %while.body.preheader, label %proceed.while.end_crit_edge

proceed.while.end_crit_edge:                      ; preds = %proceed
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.preheader:                             ; preds = %proceed
  %3 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %matches.i, align 4
  %arrayidx.i126 = getelementptr %struct.tcf_ematch, ptr %4, i32 %match_idx.0
  %5 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i126, align 4
  %tobool.not.i.not127 = icmp eq ptr %6, null
  br i1 %tobool.not.i.not127, label %while.body.preheader.if.then_crit_edge, label %while.body.preheader.if.end8_crit_edge

while.body.preheader.if.end8_crit_edge:           ; preds = %while.body.preheader
  br label %if.end8

while.body.preheader.if.then_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

while.body:                                       ; preds = %if.end13
  %7 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %matches.i, align 4
  %arrayidx.i = getelementptr %struct.tcf_ematch, ptr %8, i32 %inc14
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not = icmp eq ptr %10, null
  br i1 %tobool.not.i.not, label %while.body.if.then_crit_edge, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %while.body.if.then_crit_edge, %while.body.preheader.if.then_crit_edge
  %res.190.lcssa = phi i32 [ %res.0, %while.body.preheader.if.then_crit_edge ], [ %cond.i, %while.body.if.then_crit_edge ]
  %match_idx.189.lcssa = phi i32 [ %match_idx.0, %while.body.preheader.if.then_crit_edge ], [ %inc14, %while.body.if.then_crit_edge ]
  %.lcssa = phi ptr [ %4, %while.body.preheader.if.then_crit_edge ], [ %8, %while.body.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %stackp.0)
  %cmp3 = icmp sgt i32 %stackp.0, 31
  br i1 %cmp3, label %do.body, label %if.end, !prof !37

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nsw i32 %stackp.0, 1
  %arrayidx = getelementptr [32 x i32], ptr %stack, i32 0, i32 %stackp.0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %match_idx.189.lcssa, ptr %arrayidx, align 4
  %data = getelementptr %struct.tcf_ematch, ptr %.lcssa, i32 %match_idx.189.lcssa, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  br label %proceed.backedge

proceed.backedge:                                 ; preds = %if.else, %if.end
  %stackp.0.be = phi i32 [ %inc, %if.end ], [ %dec, %if.else ]
  %match_idx.0.be = phi i32 [ %13, %if.end ], [ %inc30, %if.else ]
  %res.0.be = phi i32 [ %res.190.lcssa, %if.end ], [ %res.4, %if.else ]
  br label %proceed

if.end8:                                          ; preds = %while.body.if.end8_crit_edge, %while.body.preheader.if.end8_crit_edge
  %14 = phi ptr [ %10, %while.body.if.end8_crit_edge ], [ %6, %while.body.preheader.if.end8_crit_edge ]
  %arrayidx.i129 = phi ptr [ %arrayidx.i, %while.body.if.end8_crit_edge ], [ %arrayidx.i126, %while.body.preheader.if.end8_crit_edge ]
  %15 = phi ptr [ %8, %while.body.if.end8_crit_edge ], [ %4, %while.body.preheader.if.end8_crit_edge ]
  %match_idx.189128 = phi i32 [ %inc14, %while.body.if.end8_crit_edge ], [ %match_idx.0, %while.body.preheader.if.end8_crit_edge ]
  %match.i = getelementptr inbounds %struct.tcf_ematch_ops, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %match.i, align 4
  %call.i = tail call i32 %17(ptr noundef %skb, ptr noundef %arrayidx.i129, ptr noundef %info) #5
  %flags.i.i = getelementptr %struct.tcf_ematch, ptr %15, i32 %match_idx.189128, i32 4
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i.i, align 2
  %20 = and i16 %19, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i62 = icmp eq i16 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  %lnot.ext.i63 = zext i1 %tobool2.not.i to i32
  %cond.i = select i1 %tobool.not.i62, i32 %call.i, i32 %lnot.ext.i63
  %21 = and i16 %19, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.i.not.i = icmp eq i16 %21, 0
  br i1 %cmp.i.not.i, label %if.end8.while.end_crit_edge, label %if.end.i

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cond.i65 = icmp eq i32 %cond.i, 0
  br i1 %cond.i65, label %land.lhs.true.i, label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %22 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool1.not.i = icmp eq i16 %22, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end13_crit_edge, label %land.lhs.true.i.while.end_crit_edge

land.lhs.true.i.while.end_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true.i.if.end13_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true6.i:                                 ; preds = %if.end.i
  %23 = and i16 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool10.not.i = icmp eq i16 %23, 0
  br i1 %tobool10.not.i, label %land.lhs.true6.i.if.end13_crit_edge, label %land.lhs.true6.i.while.end_crit_edge

land.lhs.true6.i.while.end_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true6.i.if.end13_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true6.i.if.end13_crit_edge, %land.lhs.true.i.if.end13_crit_edge
  %inc14 = add nsw i32 %match_idx.189128, 1
  %24 = ptrtoint ptr %tree to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tree, align 4
  %conv = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc14, i32 %conv)
  %cmp = icmp slt i32 %inc14, %conv
  br i1 %cmp, label %while.body, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %land.lhs.true6.i.while.end_crit_edge, %land.lhs.true.i.while.end_crit_edge, %if.end8.while.end_crit_edge, %proceed.while.end_crit_edge
  %res.2 = phi i32 [ %res.0, %proceed.while.end_crit_edge ], [ %cond.i, %land.lhs.true6.i.while.end_crit_edge ], [ 0, %land.lhs.true.i.while.end_crit_edge ], [ %cond.i, %if.end8.while.end_crit_edge ], [ %cond.i, %if.end13.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stackp.0)
  %cmp1594 = icmp sgt i32 %stackp.0, 0
  br i1 %cmp1594, label %if.then17.lr.ph, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17.lr.ph:                                  ; preds = %while.end
  %26 = ptrtoint ptr %matches.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %matches.i, align 4
  br label %if.then17

if.then17:                                        ; preds = %tcf_em_early_end.exit78.if.then17_crit_edge, %if.then17.lr.ph
  %res.396 = phi i32 [ %res.2, %if.then17.lr.ph ], [ %res.4, %tcf_em_early_end.exit78.if.then17_crit_edge ]
  %stackp.195 = phi i32 [ %stackp.0, %if.then17.lr.ph ], [ %dec, %tcf_em_early_end.exit78.if.then17_crit_edge ]
  %dec = add nsw i32 %stackp.195, -1
  %arrayidx18 = getelementptr [32 x i32], ptr %stack, i32 0, i32 %dec
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx18, align 4
  %flags.i = getelementptr %struct.tcf_ematch, ptr %27, i32 %29, i32 4
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i, align 2
  %32 = and i16 %31, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool21.not = icmp eq i16 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.396)
  %tobool23.not = icmp eq i32 %res.396, 0
  %lnot.ext25 = zext i1 %tobool23.not to i32
  %res.4 = select i1 %tobool21.not, i32 %res.396, i32 %lnot.ext25
  %33 = and i16 %31, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp.i.not.i69 = icmp eq i16 %33, 0
  br i1 %cmp.i.not.i69, label %if.then17.tcf_em_early_end.exit78_crit_edge, label %if.end.i71

if.then17.tcf_em_early_end.exit78_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcf_em_early_end.exit78

if.end.i71:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.4)
  %cond.i70 = icmp eq i32 %res.4, 0
  br i1 %cond.i70, label %land.lhs.true.i73, label %land.lhs.true6.i75

land.lhs.true.i73:                                ; preds = %if.end.i71
  %34 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool1.not.i72 = icmp eq i16 %34, 0
  br i1 %tobool1.not.i72, label %land.lhs.true.i73.if.else_crit_edge, label %land.lhs.true.i73.tcf_em_early_end.exit78_crit_edge

land.lhs.true.i73.tcf_em_early_end.exit78_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcf_em_early_end.exit78

land.lhs.true.i73.if.else_crit_edge:              ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true6.i75:                               ; preds = %if.end.i71
  %35 = and i16 %31, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool10.not.i74 = icmp eq i16 %35, 0
  br i1 %tobool10.not.i74, label %land.lhs.true6.i75.if.else_crit_edge, label %land.lhs.true6.i75.tcf_em_early_end.exit78_crit_edge

land.lhs.true6.i75.tcf_em_early_end.exit78_crit_edge: ; preds = %land.lhs.true6.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcf_em_early_end.exit78

land.lhs.true6.i75.if.else_crit_edge:             ; preds = %land.lhs.true6.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

tcf_em_early_end.exit78:                          ; preds = %land.lhs.true6.i75.tcf_em_early_end.exit78_crit_edge, %land.lhs.true.i73.tcf_em_early_end.exit78_crit_edge, %if.then17.tcf_em_early_end.exit78_crit_edge
  %cmp15 = icmp ugt i32 %stackp.195, 1
  br i1 %cmp15, label %tcf_em_early_end.exit78.if.then17_crit_edge, label %tcf_em_early_end.exit78.cleanup_crit_edge

tcf_em_early_end.exit78.cleanup_crit_edge:        ; preds = %tcf_em_early_end.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tcf_em_early_end.exit78.if.then17_crit_edge:      ; preds = %tcf_em_early_end.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.else:                                          ; preds = %land.lhs.true6.i75.if.else_crit_edge, %land.lhs.true.i73.if.else_crit_edge
  %inc30 = add i32 %29, 1
  br label %proceed.backedge

do.body:                                          ; preds = %if.then
  %call32 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %tcf_em_early_end.exit78.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ %res.4, %tcf_em_early_end.exit78.cleanup_crit_edge ], [ %res.2, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab_tcf_em_register, !1, !"__ksymtab_tcf_em_register", i1 false, i1 false}
!1 = !{!"../net/sched/ematch.c", i32 141, i32 1}
!2 = !{ptr @__ksymtab_tcf_em_unregister, !3, !"__ksymtab_tcf_em_unregister", i1 false, i1 false}
!3 = !{!"../net/sched/ematch.c", i32 160, i32 1}
!4 = !{ptr @__ksymtab_tcf_em_tree_validate, !5, !"__ksymtab_tcf_em_tree_validate", i1 false, i1 false}
!5 = !{!"../net/sched/ematch.c", i32 387, i32 1}
!6 = !{ptr @__ksymtab_tcf_em_tree_destroy, !7, !"__ksymtab_tcf_em_tree_destroy", i1 false, i1 false}
!7 = !{!"../net/sched/ematch.c", i32 421, i32 1}
!8 = !{ptr @__ksymtab_tcf_em_tree_dump, !9, !"__ksymtab_tcf_em_tree_dump", i1 false, i1 false}
!9 = !{!"../net/sched/ematch.c", i32 487, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sched/ematch.c", i32 545, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__tcf_em_tree_match._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @__tcf_em_tree_match._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab___tcf_em_tree_match, !17, !"__ksymtab___tcf_em_tree_match", i1 false, i1 false}
!17 = !{!"../net/sched/ematch.c", i32 548, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sched/ematch.c", i32 90, i32 8}
!20 = !{ptr @ematch_mod_lock, !19, !"ematch_mod_lock", i1 false, i1 false}
!21 = !{ptr @ematch_ops, !22, !"ematch_ops", i1 false, i1 false}
!22 = !{!"../net/sched/ematch.c", i32 89, i32 8}
!23 = !{ptr @em_policy, !24, !"em_policy", i1 false, i1 false}
!24 = !{!"../net/sched/ematch.c", i32 282, i32 32}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/sched/ematch.c", i32 218, i32 4}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{!"branch_weights", i32 1, i32 2000}
