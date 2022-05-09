; ModuleID = '/llk/IR_all_yes/drivers/crypto/omap-crypto.c_pt.bc'
source_filename = "../drivers/crypto/omap-crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+omap_crypto_align_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_crypto_align_sg\09\09\09\09"
module asm "\09.long\09__crc_omap_crypto_align_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_crypto_align_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_crypto_align_sg\22\09\09\09\09\09"
module asm "__kstrtabns_omap_crypto_align_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_crypto_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_crypto_cleanup\09\09\09\09"
module asm "\09.long\09__crc_omap_crypto_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_crypto_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_crypto_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_omap_crypto_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.66, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.42, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_omap_crypto_align_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_crypto_align_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_crypto_align_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_crypto_align_sg to i32), ptr @__kstrtab_omap_crypto_align_sg, ptr @__kstrtabns_omap_crypto_align_sg }, section "___ksymtab_gpl+omap_crypto_align_sg", align 4
@__kstrtab_omap_crypto_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_crypto_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_crypto_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_crypto_cleanup to i32), ptr @__kstrtab_omap_crypto_cleanup, ptr @__kstrtabns_omap_crypto_cleanup }, section "___ksymtab_gpl+omap_crypto_cleanup", align 4
@__UNIQUE_ID_description245 = internal constant [53 x i8] c"omap_crypto.description=OMAP crypto support library.\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [44 x i8] c"omap_crypto.file=drivers/crypto/omap-crypto\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [27 x i8] c"omap_crypto.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [49 x i8] c"omap_crypto.author=Tero Kristo <t-kristo@ti.com>\00", section ".modinfo", align 1
@omap_crypto_copy_sgs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: Couldn't allocate pages for unaligned cases.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_crypto_copy_sgs\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/crypto/omap-crypto.c\00", [35 x i8] zeroinitializer }, align 32
@omap_crypto_copy_sgs._entry_ptr = internal global ptr @omap_crypto_copy_sgs._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [32 x i8] c"../drivers/crypto/omap-crypto.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 67, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__ksymtab_omap_crypto_align_sg, ptr @__ksymtab_omap_crypto_cleanup, ptr @omap_crypto_copy_sgs._entry, ptr @omap_crypto_copy_sgs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_crypto_copy_sgs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_crypto_align_sg(ptr nocapture noundef %sg, i32 noundef %total, i32 noundef %bs, ptr noundef %new_sg, i16 noundef zeroext %flags, i8 noundef zeroext %flags_shift, ptr nocapture noundef %dd_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %flags_shift to i32
  %shl = shl i32 3, %conv
  %neg = xor i32 %shl, -1
  %0 = ptrtoint ptr %dd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dd_flags, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %dd_flags, align 4
  %conv1 = zext i16 %flags to i32
  %and2 = and i32 %conv1, 2
  %sub.i = add i32 %bs, -1
  %and.i = and i32 %sub.i, %total
  %2 = or i32 %and2, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %while.cond.i.preheader, label %entry.if.then4_crit_edge

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

while.cond.i.preheader:                           ; preds = %entry
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %sg.addr.0.i = phi ptr [ %call15.i, %if.end13.i.while.cond.i_crit_edge ], [ %5, %while.cond.i.preheader ]
  %len.0.i = phi i32 [ %add.i, %if.end13.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %num_sg.0.i = phi i32 [ %inc.i, %if.end13.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %tobool.not.i = icmp eq ptr %sg.addr.0.i, null
  br i1 %tobool.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add i32 %num_sg.0.i, 1
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %and1.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp2.i = icmp eq i32 %and1.i, 0
  br i1 %cmp2.i, label %if.end4.i, label %while.body.i.if.then4_crit_edge

while.body.i.if.then4_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end4.i:                                        ; preds = %while.body.i
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 4
  %and6.i = and i32 %9, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 0
  br i1 %cmp7.i, label %if.end9.i, label %if.end4.i.if.then4_crit_edge

if.end4.i.if.then4_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end9.i:                                        ; preds = %if.end4.i
  %10 = ptrtoint ptr %sg.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg.addr.0.i, align 4
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !27

do.body2.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

sg_page.exit.i:                                   ; preds = %if.end9.i
  %and.i.i = and i32 %11, -4
  %12 = inttoptr i32 %and.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %14)
  %cmp11.not.i = icmp ult i32 %14, 1073741824
  br i1 %cmp11.not.i, label %if.end13.i, label %sg_page.exit.i.if.then4_crit_edge

sg_page.exit.i.if.then4_crit_edge:                ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end13.i:                                       ; preds = %sg_page.exit.i
  %add.i = add i32 %9, %len.0.i
  %call15.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0.i) #6
  %cmp16.not.i = icmp slt i32 %add.i, %total
  br i1 %cmp16.not.i, label %if.end13.i.while.cond.i_crit_edge, label %if.end13.i.while.end.i_crit_edge

if.end13.i.while.end.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end13.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %len.1.i = phi i32 [ %add.i, %if.end13.i.while.end.i_crit_edge ], [ %len.0.i, %while.cond.i.while.end.i_crit_edge ]
  %num_sg.1.i = phi i32 [ %inc.i, %if.end13.i.while.end.i_crit_edge ], [ %num_sg.0.i, %while.cond.i.while.end.i_crit_edge ]
  %15 = and i16 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool20.not.i = icmp ne i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_sg.1.i)
  %cmp21.i = icmp sgt i32 %num_sg.1.i, 1
  %or.cond.i = select i1 %tobool20.not.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %while.end.i.if.then4_crit_edge, label %if.end24.i

while.end.i.if.then4_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end24.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1.i, i32 %total)
  %cmp25.not.i = icmp eq i32 %len.1.i, %total
  br i1 %cmp25.not.i, label %if.else27, label %if.then14

if.then4:                                         ; preds = %while.end.i.if.then4_crit_edge, %sg_page.exit.i.if.then4_crit_edge, %if.end4.i.if.then4_crit_edge, %while.body.i.if.then4_crit_edge, %entry.if.then4_crit_edge
  %add.i61 = add i32 %sub.i, %total
  %neg.i = sub i32 0, %bs
  %and.i62 = and i32 %add.i61, %neg.i
  %dec.i.i = add i32 %and.i62, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %16 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #6, !range !29
  %sub.i.i.i = sub nuw nsw i32 32, %16
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %call2.i = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef %cond.i.i.i) #6
  %17 = inttoptr i32 %call2.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i63 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i63, label %omap_crypto_copy_sgs.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then4
  %and4.i = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end13.i64_crit_edge, label %if.then6.i

if.end.i.if.end13.i64_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i64

if.then6.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %17, ptr noundef %19, i32 noundef 0, i32 noundef %total, i32 noundef 0) #6
  %and8.i = and i32 %conv1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.then6.i.if.end13.i64_crit_edge, label %if.then10.i

if.then6.i.if.end13.i64_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i64

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %17, i32 %total
  %sub11.i = sub i32 %and.i62, %total
  %20 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub11.i)
  br label %if.end13.i64

if.end13.i64:                                     ; preds = %if.then10.i, %if.then6.i.if.end13.i64_crit_edge, %if.end.i.if.end13.i64_crit_edge
  %and15.i = and i32 %conv1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end13.i64.if.end18.i_crit_edge

if.end13.i64.if.end18.i_crit_edge:                ; preds = %if.end13.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end13.i64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sg_init_table(ptr noundef %new_sg, i32 noundef 1) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end13.i64.if.end18.i_crit_edge
  %cmp.i35.i = icmp ugt ptr %17, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i35.i, label %land.lhs.true.i.i, label %if.end18.i.do.body5.i.i_crit_edge, !prof !27

if.end18.i.do.body5.i.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %21 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %21, %17
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !27

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i36.i = add i32 %call2.i, 1073741824
  %shr.i37.i = lshr i32 %sub.i36.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i38.i = add i32 %22, %shr.i37.i
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %add.i38.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !30

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end18.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %23, i32 %shr.i37.i
  %24 = ptrtoint ptr %new_sg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_sg, align 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !27

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.end8, label %do.body19.i.i.i.i, !prof !27

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !33
  unreachable

omap_crypto_copy_sgs.exit:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end8:                                          ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i65 = and i32 %call2.i, 4095
  %and.i.i.i.i = and i32 %25, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %26
  %27 = ptrtoint ptr %new_sg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i.i.i, ptr %new_sg, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %new_sg, i32 0, i32 1
  %28 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i.i65, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %new_sg, i32 0, i32 2
  %29 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i62, ptr %length.i.i.i, align 4
  %30 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %new_sg, ptr %sg, align 4
  %shl10 = shl nuw i32 1, %conv
  %31 = ptrtoint ptr %dd_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dd_flags, align 4
  %or = or i32 %32, %shl10
  store i32 %or, ptr %dd_flags, align 4
  br label %cleanup

if.then14:                                        ; preds = %if.end24.i
  %33 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg, align 4
  %call.i = tail call i32 @sg_nents(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i67 = icmp eq i16 %15, 0
  br i1 %tobool.not.i67, label %if.then.i, label %if.then14.if.end4.i72_crit_edge

if.then14.if.end4.i72_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i72

if.then.i:                                        ; preds = %if.then14
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #6
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %if.then.i.cleanup_crit_edge, label %if.end7.i.i, !prof !30

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then.i
  %37 = extractvalue { i32, i1 } %35, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #10
  %tobool2.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.cleanup_crit_edge, label %if.end.i71

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i71:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sg_init_table(ptr noundef nonnull %call8.i.i, i32 noundef %call.i) #6
  br label %if.end4.i72

if.end4.i72:                                      ; preds = %if.end.i71, %if.then14.if.end4.i72_crit_edge
  %new_sg.addr.0.i = phi ptr [ %new_sg, %if.then14.if.end4.i72_crit_edge ], [ %call8.i.i, %if.end.i71 ]
  %38 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sg, align 4
  %tobool5.not9.i = icmp eq ptr %39, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total)
  %tobool6.not10.i = icmp eq i32 %total, 0
  %or.cond11.i = or i1 %tobool6.not10.i, %tobool5.not9.i
  br i1 %or.cond11.i, label %if.end4.i72.if.end18_crit_edge, label %if.end4.i72.while.body.i74_crit_edge

if.end4.i72.while.body.i74_crit_edge:             ; preds = %if.end4.i72
  br label %while.body.i74

if.end4.i72.if.end18_crit_edge:                   ; preds = %if.end4.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

while.body.i74:                                   ; preds = %if.end19.i.while.body.i74_crit_edge, %if.end4.i72.while.body.i74_crit_edge
  %40 = phi ptr [ %call20.i, %if.end19.i.while.body.i74_crit_edge ], [ %39, %if.end4.i72.while.body.i74_crit_edge ]
  %tmp.013.i = phi ptr [ %tmp.1.i, %if.end19.i.while.body.i74_crit_edge ], [ %new_sg.addr.0.i, %if.end4.i72.while.body.i74_crit_edge ]
  %total.addr.012.i = phi i32 [ %total.addr.1.i, %if.end19.i.while.body.i74_crit_edge ], [ %total, %if.end4.i72.while.body.i74_crit_edge ]
  %length.i73 = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %length.i73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i73, align 4
  %43 = tail call i32 @llvm.smin.i32(i32 %total.addr.012.i, i32 %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp10.i = icmp sgt i32 %43, 0
  br i1 %cmp10.i, label %if.then12.i, label %while.body.i74.if.end19.i_crit_edge

while.body.i74.if.end19.i_crit_edge:              ; preds = %while.body.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then12.i:                                      ; preds = %while.body.i74
  %sub.i75 = sub i32 %total.addr.012.i, %43
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %40, align 4
  %and.i.i.i76 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i76)
  %tobool.i.not.i.i77 = icmp eq i32 %and.i.i.i76, 0
  br i1 %tobool.i.not.i.i77, label %sg_page.exit.i81, label %do.body2.i.i78, !prof !27

do.body2.i.i78:                                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

sg_page.exit.i81:                                 ; preds = %if.then12.i
  %and.i.i79 = and i32 %45, -4
  %46 = ptrtoint ptr %tmp.013.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tmp.013.i, align 4
  %and.i.i.i.i80 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i80)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i80, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !27

do.body19.i.i.i:                                  ; preds = %sg_page.exit.i81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !33
  unreachable

sg_set_page.exit.i:                               ; preds = %sg_page.exit.i81
  %offset.i82 = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 1
  %48 = ptrtoint ptr %offset.i82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i82, align 4
  %and.i.i1.i = and i32 %47, 3
  %or.i.i.i = or i32 %and.i.i1.i, %and.i.i79
  %50 = ptrtoint ptr %tmp.013.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i.i, ptr %tmp.013.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %tmp.013.i, i32 0, i32 1
  %51 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %tmp.013.i, i32 0, i32 2
  %52 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %43, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i75)
  %cmp14.i = icmp slt i32 %sub.i75, 1
  br i1 %cmp14.i, label %if.then16.i, label %sg_set_page.exit.i.if.end17.i_crit_edge

sg_set_page.exit.i.if.end17.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then16.i:                                      ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i2.i = or i32 %and.i.i79, 2
  %53 = ptrtoint ptr %tmp.013.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.i2.i, ptr %tmp.013.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %sg_set_page.exit.i.if.end17.i_crit_edge
  %call18.i = tail call ptr @sg_next(ptr noundef %tmp.013.i) #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end17.i, %while.body.i74.if.end19.i_crit_edge
  %total.addr.1.i = phi i32 [ %sub.i75, %if.end17.i ], [ %total.addr.012.i, %while.body.i74.if.end19.i_crit_edge ]
  %tmp.1.i = phi ptr [ %call18.i, %if.end17.i ], [ %tmp.013.i, %while.body.i74.if.end19.i_crit_edge ]
  %54 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sg, align 4
  %call20.i = tail call ptr @sg_next(ptr noundef %55) #6
  %56 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call20.i, ptr %sg, align 4
  %tobool5.not.i83 = icmp eq ptr %call20.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total.addr.1.i)
  %tobool6.not.i = icmp eq i32 %total.addr.1.i, 0
  %or.cond.i84 = select i1 %tobool5.not.i83, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i84, label %if.end19.i.if.end18_crit_edge, label %if.end19.i.while.body.i74_crit_edge

if.end19.i.while.body.i74_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i74

if.end19.i.if.end18_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %if.end19.i.if.end18_crit_edge, %if.end4.i72.if.end18_crit_edge
  %57 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %new_sg.addr.0.i, ptr %sg, align 4
  %and20 = and i32 %conv1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %shl24 = shl i32 2, %conv
  %58 = ptrtoint ptr %dd_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dd_flags, align 4
  %or25 = or i32 %59, %shl24
  store i32 %or25, ptr %dd_flags, align 4
  br label %cleanup

if.else27:                                        ; preds = %if.end24.i
  %and29 = and i32 %conv1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else27.cleanup_crit_edge, label %if.then31

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.else27
  %60 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sg, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %and.i.i.i87 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i87)
  %tobool.i.not.i.i88 = icmp eq i32 %and.i.i.i87, 0
  br i1 %tobool.i.not.i.i88, label %sg_virt.exit, label %do.body2.i.i89, !prof !27

do.body2.i.i89:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

sg_virt.exit:                                     ; preds = %if.then31
  %and.i.i90 = and i32 %63, -4
  %64 = inttoptr i32 %and.i.i90 to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %64) #6
  %offset.i91 = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %offset.i91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %call1.i, i32 %66
  %67 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length, align 4
  %71 = ptrtoint ptr %add.ptr.i92 to i32
  %cmp.i94 = icmp ugt ptr %add.ptr.i92, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i94, label %land.lhs.true.i, label %sg_virt.exit.do.body5.i_crit_edge, !prof !27

sg_virt.exit.do.body5.i_crit_edge:                ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %sg_virt.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %72 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %72, %add.ptr.i92
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !27

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i95 = add i32 %71, 1073741824
  %shr.i = lshr i32 %sub.i95, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %73 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i96 = add i32 %73, %shr.i
  %call.i97 = tail call i32 @pfn_valid(i32 noundef %add.i96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.i = icmp eq i32 %call.i97, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !30

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %sg_virt.exit.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %74 = load ptr, ptr @mem_map, align 4
  %add.ptr.i98 = getelementptr %struct.page, ptr %74, i32 %shr.i
  %75 = ptrtoint ptr %new_sg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %new_sg, align 4
  %77 = ptrtoint ptr %add.ptr.i98 to i32
  %and2.i.i.i = and i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i99 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i99, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !27

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i100 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i100)
  %tobool.i.not.i.i.i101 = icmp eq i32 %and.i.i.i.i100, 0
  br i1 %tobool.i.not.i.i.i101, label %sg_set_buf.exit, label %do.body19.i.i.i102, !prof !27

do.body19.i.i.i102:                               ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !33
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i103 = and i32 %71, 4095
  %and.i.i.i104 = and i32 %76, 3
  %or.i.i.i105 = or i32 %and.i.i.i104, %77
  %78 = ptrtoint ptr %new_sg to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i.i.i105, ptr %new_sg, align 4
  %offset1.i.i106 = getelementptr inbounds %struct.scatterlist, ptr %new_sg, i32 0, i32 1
  %79 = ptrtoint ptr %offset1.i.i106 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and.i103, ptr %offset1.i.i106, align 4
  %length.i.i107 = getelementptr inbounds %struct.scatterlist, ptr %new_sg, i32 0, i32 2
  %80 = ptrtoint ptr %length.i.i107 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %70, ptr %length.i.i107, align 4
  br label %cleanup

cleanup:                                          ; preds = %sg_set_buf.exit, %if.else27.cleanup_crit_edge, %if.then22, %if.end18.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end8, %omap_crypto_copy_sgs.exit
  %retval.0 = phi i32 [ -12, %omap_crypto_copy_sgs.exit ], [ 0, %if.then22 ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %sg_set_buf.exit ], [ 0, %if.else27.cleanup_crit_edge ], [ 0, %if.end8 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_crypto_cleanup(ptr noundef %sg, ptr noundef %orig, i32 noundef %offset, i32 noundef %len, i8 noundef zeroext %flags_shift, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %flags_shift to i32
  %shr = lshr i32 %flags, %conv
  %and = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg, align 4
  %and.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !27

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

sg_virt.exit:                                     ; preds = %if.end
  %and.i.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %2) #6
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %4
  %dec.i = add i32 %len, -1
  %shr.i = lshr i32 %dec.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %5 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #6, !range !29
  %sub.i.i = sub nuw nsw i32 32, %5
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %tobool2.not = icmp eq ptr %orig, null
  %and3 = and i32 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %sg_virt.exit.if.end6_crit_edge, label %if.then5

sg_virt.exit.if.end6_crit_edge:                   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not133.i = icmp eq i32 %len, 0
  %tobool.not124134.i = icmp eq ptr %sg, null
  %or.cond79121127137.i = or i1 %tobool.not124134.i, %tobool2.not133.i
  br i1 %or.cond79121127137.i, label %if.then5.if.end6_crit_edge, label %if.then5.while.body.lr.ph.lr.ph.i_crit_edge

if.then5.while.body.lr.ph.lr.ph.i_crit_edge:      ; preds = %if.then5
  br label %while.body.lr.ph.lr.ph.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

while.body.lr.ph.lr.ph.i:                         ; preds = %sg_page.exit98.i.while.body.lr.ph.lr.ph.i_crit_edge, %if.then5.while.body.lr.ph.lr.ph.i_crit_edge
  %src.addr.0.ph142.i = phi ptr [ %src.addr.0.ph110131.i, %sg_page.exit98.i.while.body.lr.ph.lr.ph.i_crit_edge ], [ %sg, %if.then5.while.body.lr.ph.lr.ph.i_crit_edge ]
  %dst.addr.0.ph141.i = phi ptr [ %dst.addr.0123.i, %sg_page.exit98.i.while.body.lr.ph.lr.ph.i_crit_edge ], [ %orig, %if.then5.while.body.lr.ph.lr.ph.i_crit_edge ]
  %dsto.0.ph140.i = phi i32 [ %add41.i, %sg_page.exit98.i.while.body.lr.ph.lr.ph.i_crit_edge ], [ %offset, %if.then5.while.body.lr.ph.lr.ph.i_crit_edge ]
  %srco.0.ph139.i = phi i32 [ %add.i35, %sg_page.exit98.i.while.body.lr.ph.lr.ph.i_crit_edge ], [ 0, %if.then5.while.body.lr.ph.lr.ph.i_crit_edge ]
  %len.addr.0.ph138.i = phi i32 [ %sub42.i, %sg_page.exit98.i.while.body.lr.ph.lr.ph.i_crit_edge ], [ %len, %if.then5.while.body.lr.ph.lr.ph.i_crit_edge ]
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.then.i27.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %src.addr.0.ph110131.i = phi ptr [ %src.addr.0.ph142.i, %while.body.lr.ph.lr.ph.i ], [ %call.i, %if.then.i27.while.body.lr.ph.i_crit_edge ]
  %dst.addr.0.ph109130.i = phi ptr [ %dst.addr.0.ph141.i, %while.body.lr.ph.lr.ph.i ], [ %dst.addr.0123.i, %if.then.i27.while.body.lr.ph.i_crit_edge ]
  %dsto.0.ph108129.i = phi i32 [ %dsto.0.ph140.i, %while.body.lr.ph.lr.ph.i ], [ %dsto.0122.i, %if.then.i27.while.body.lr.ph.i_crit_edge ]
  %srco.0.ph107128.i = phi i32 [ %srco.0.ph139.i, %while.body.lr.ph.lr.ph.i ], [ %sub.i25, %if.then.i27.while.body.lr.ph.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %src.addr.0.ph110131.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.then6.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dst.addr.0123.i = phi ptr [ %dst.addr.0.ph109130.i, %while.body.lr.ph.i ], [ %call9.i, %if.then6.i.while.body.i_crit_edge ]
  %dsto.0122.i = phi i32 [ %dsto.0.ph108129.i, %while.body.lr.ph.i ], [ %sub8.i29, %if.then6.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %srco.0.ph107128.i, i32 %7)
  %cmp.not.i = icmp ult i32 %srco.0.ph107128.i, %7
  br i1 %cmp.not.i, label %if.end.i28, label %if.then.i27

if.then.i27:                                      ; preds = %while.body.i
  %sub.i25 = sub i32 %srco.0.ph107128.i, %7
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %src.addr.0.ph110131.i) #6
  %tobool.not.i26 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i26, label %if.then.i27.if.end6_crit_edge, label %if.then.i27.while.body.lr.ph.i_crit_edge

if.then.i27.while.body.lr.ph.i_crit_edge:         ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i

if.then.i27.if.end6_crit_edge:                    ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.i28:                                       ; preds = %while.body.i
  %length4.i = getelementptr inbounds %struct.scatterlist, ptr %dst.addr.0123.i, i32 0, i32 2
  %8 = ptrtoint ptr %length4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dsto.0122.i, i32 %9)
  %cmp5.not.i = icmp ult i32 %dsto.0122.i, %9
  br i1 %cmp5.not.i, label %if.end10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i28
  %sub8.i29 = sub i32 %dsto.0122.i, %9
  %call9.i = tail call ptr @sg_next(ptr noundef nonnull %dst.addr.0123.i) #6
  %tobool1.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool1.not.i, label %if.then6.i.if.end6_crit_edge, label %if.then6.i.while.body.i_crit_edge

if.then6.i.while.body.i_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.then6.i.if.end6_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end10.i:                                       ; preds = %if.end.i28
  %sub12.i = sub i32 %7, %srco.0.ph107128.i
  %sub14.i = sub i32 %9, %dsto.0122.i
  %10 = tail call i32 @llvm.umin.i32(i32 %sub12.i, i32 %sub14.i) #6
  %11 = tail call i32 @llvm.smin.i32(i32 %len.addr.0.ph138.i, i32 %10) #6
  %12 = ptrtoint ptr %src.addr.0.ph110131.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src.addr.0.ph110131.i, align 4
  %and.i.i.i30 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30)
  %tobool.i.not.i.i31 = icmp eq i32 %and.i.i.i30, 0
  br i1 %tobool.i.not.i.i31, label %sg_page.exit.i, label %do.body2.i.i32, !prof !27

do.body2.i.i32:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

sg_page.exit.i:                                   ; preds = %if.end10.i
  %and.i.i33 = and i32 %13, -4
  %14 = inttoptr i32 %and.i.i33 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !34
  %20 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i1.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !35
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %14, i32 noundef %or.i.i) #6
  %add.ptr.i34 = getelementptr i8, ptr %call.i.i.i, i32 %srco.0.ph107128.i
  %offset24.i = getelementptr inbounds %struct.scatterlist, ptr %src.addr.0.ph110131.i, i32 0, i32 1
  %26 = ptrtoint ptr %offset24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset24.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i34, i32 %27
  %28 = ptrtoint ptr %dst.addr.0123.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst.addr.0123.i, align 4
  %and.i.i80.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80.i)
  %tobool.i.not.i81.i = icmp eq i32 %and.i.i80.i, 0
  br i1 %tobool.i.not.i81.i, label %sg_page.exit84.i, label %do.body2.i82.i, !prof !27

do.body2.i82.i:                                   ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

sg_page.exit84.i:                                 ; preds = %sg_page.exit.i
  %and.i83.i = and i32 %29, -4
  %30 = inttoptr i32 %and.i83.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %31 = load i32, ptr @pgprot_kernel, align 4
  %or.i85.i = or i32 %31, 512
  %32 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i.i.i86.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i86.i to ptr
  %preempt_count.i.i.i.i87.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i87.i, align 4
  %add.i.i.i88.i = add i32 %35, 1
  store volatile i32 %add.i.i.i88.i, ptr %preempt_count.i.i.i.i87.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !34
  %36 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i1.i.i89.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i.i89.i to ptr
  %task.i.i.i.i90.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i90.i, align 8
  %pagefault_disabled.i.i.i.i91.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i.i91.i, align 8
  %inc.i.i.i.i92.i = add i32 %41, 1
  store i32 %inc.i.i.i.i92.i, ptr %pagefault_disabled.i.i.i.i91.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !35
  %call.i.i93.i = tail call ptr @__kmap_local_page_prot(ptr noundef %30, i32 noundef %or.i85.i) #6
  %add.ptr28.i = getelementptr i8, ptr %call.i.i93.i, i32 %dsto.0122.i
  %offset29.i = getelementptr inbounds %struct.scatterlist, ptr %dst.addr.0123.i, i32 0, i32 1
  %42 = ptrtoint ptr %offset29.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset29.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %add.ptr28.i, i32 %43
  %44 = call ptr @memcpy(ptr %add.ptr30.i, ptr %add.ptr25.i, i32 %11)
  %45 = ptrtoint ptr %dst.addr.0123.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst.addr.0123.i, align 4
  %and.i.i94.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94.i)
  %tobool.i.not.i95.i = icmp eq i32 %and.i.i94.i, 0
  br i1 %tobool.i.not.i95.i, label %sg_page.exit98.i, label %do.body2.i96.i, !prof !27

do.body2.i96.i:                                   ; preds = %sg_page.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !28
  unreachable

sg_page.exit98.i:                                 ; preds = %sg_page.exit84.i
  %and.i97.i = and i32 %46, -4
  %47 = inttoptr i32 %and.i97.i to ptr
  tail call void @flush_dcache_page(ptr noundef %47) #6
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr25.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  %48 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i1.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %53, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %54 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr30.i) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  %58 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i1.i99.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i1.i99.i to ptr
  %task.i.i.i100.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task.i.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i.i.i100.i, align 8
  %pagefault_disabled.i.i.i101.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 213
  %62 = ptrtoint ptr %pagefault_disabled.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pagefault_disabled.i.i.i101.i, align 8
  %dec.i.i.i102.i = add i32 %63, -1
  store i32 %dec.i.i.i102.i, ptr %pagefault_disabled.i.i.i101.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %64 = tail call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i.i103.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i103.i to ptr
  %preempt_count.i.i.i104.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i104.i, align 4
  %sub.i.i105.i = add i32 %67, -1
  store volatile i32 %sub.i.i105.i, ptr %preempt_count.i.i.i104.i, align 4
  %add.i35 = add i32 %11, %srco.0.ph107128.i
  %add41.i = add i32 %11, %dsto.0122.i
  %sub42.i = sub i32 %len.addr.0.ph138.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub42.i)
  %tobool2.not.i = icmp eq i32 %sub42.i, 0
  %tobool.not124.i = icmp eq ptr %src.addr.0.ph110131.i, null
  %tobool1.not119125.i = icmp eq ptr %dst.addr.0123.i, null
  %or.cond120126.i = select i1 %tobool.not124.i, i1 true, i1 %tobool1.not119125.i
  %or.cond79121127.i = select i1 %or.cond120126.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond79121127.i, label %sg_page.exit98.i.if.end6_crit_edge, label %sg_page.exit98.i.while.body.lr.ph.lr.ph.i_crit_edge

sg_page.exit98.i.while.body.lr.ph.lr.ph.i_crit_edge: ; preds = %sg_page.exit98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.lr.ph.i

sg_page.exit98.i.if.end6_crit_edge:               ; preds = %sg_page.exit98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %sg_page.exit98.i.if.end6_crit_edge, %if.then6.i.if.end6_crit_edge, %if.then.i27.if.end6_crit_edge, %if.then5.if.end6_crit_edge, %sg_virt.exit.if.end6_crit_edge
  br i1 %tobool4.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %add.ptr.i to i32
  tail call void @free_pages(i32 noundef %68, i32 noundef %cond.i.i) #6
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %and10 = and i32 %shr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.then12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %sg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.else.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_omap_crypto_align_sg, !1, !"__ksymtab_omap_crypto_align_sg", i1 false, i1 false}
!1 = !{!"../drivers/crypto/omap-crypto.c", i32 155, i32 1}
!2 = !{ptr @__ksymtab_omap_crypto_cleanup, !3, !"__ksymtab_omap_crypto_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/crypto/omap-crypto.c", i32 221, i32 1}
!4 = !{ptr @__UNIQUE_ID_description245, !5, !"__UNIQUE_ID_description245", i1 false, i1 false}
!5 = !{!"../drivers/crypto/omap-crypto.c", i32 223, i32 1}
!6 = !{ptr @__UNIQUE_ID_file246, !7, !"__UNIQUE_ID_file246", i1 false, i1 false}
!7 = !{!"../drivers/crypto/omap-crypto.c", i32 224, i32 1}
!8 = !{ptr @__UNIQUE_ID_license247, !7, !"__UNIQUE_ID_license247", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author248, !10, !"__UNIQUE_ID_author248", i1 false, i1 false}
!10 = !{!"../drivers/crypto/omap-crypto.c", i32 225, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/crypto/omap-crypto.c", i32 67, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @omap_crypto_copy_sgs._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @omap_crypto_copy_sgs._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2153554502, i64 2153554994, i64 2153554539, i64 2153554595, i64 2153554629, i64 2153554653, i64 2153554694, i64 2153554715, i64 2153554743, i64 2153554777}
!29 = !{i32 0, i32 33}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2153557263, i64 2153557755, i64 2153557300, i64 2153557356, i64 2153557390, i64 2153557414, i64 2153557455, i64 2153557476, i64 2153557504, i64 2153557538}
!32 = !{i64 2153550944, i64 2153551436, i64 2153550981, i64 2153551037, i64 2153551071, i64 2153551095, i64 2153551136, i64 2153551157, i64 2153551185, i64 2153551219}
!33 = !{i64 2153552554, i64 2153553046, i64 2153552591, i64 2153552647, i64 2153552681, i64 2153552705, i64 2153552746, i64 2153552767, i64 2153552795, i64 2153552829}
!34 = !{i64 2153842509}
!35 = !{i64 2152986938}
!36 = !{i64 2152987145}
!37 = !{i64 2153845280}
