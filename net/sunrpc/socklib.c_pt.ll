; ModuleID = '/llk/IR_all_yes/net/sunrpc/socklib.c_pt.bc'
source_filename = "../net/sunrpc/socklib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+csum_partial_copy_to_xdr\22, \22a\22\09"
module asm "\09.weak\09__crc_csum_partial_copy_to_xdr\09\09\09\09"
module asm "\09.long\09__crc_csum_partial_copy_to_xdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csum_partial_copy_to_xdr:\09\09\09\09\09"
module asm "\09.asciz \09\22csum_partial_copy_to_xdr\22\09\09\09\09\09"
module asm "__kstrtabns_csum_partial_copy_to_xdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xdr_skb_reader = type { ptr, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.97, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.97 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.39, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.36, %union.anon.37 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { i64 }
%union.anon.39 = type { ptr }

@__kstrtab_csum_partial_copy_to_xdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_csum_partial_copy_to_xdr = external dso_local constant [0 x i8], align 1
@__ksymtab_csum_partial_copy_to_xdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csum_partial_copy_to_xdr to i32), ptr @__kstrtab_csum_partial_copy_to_xdr, ptr @__kstrtabns_csum_partial_copy_to_xdr }, section "___ksymtab_gpl+csum_partial_copy_to_xdr", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_csum_partial_copy_to_xdr], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csum_partial_copy_to_xdr(ptr nocapture noundef readonly %xdr, ptr noundef %skb) #0 align 64 {
entry:
  %desc = alloca %struct.xdr_skb_reader, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #5
  %0 = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %desc, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %skb, ptr %desc, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %1, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %10 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %11 = and i16 %bf.lshr.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp.i = icmp ne i16 %11, 1
  %12 = and i16 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %lor.rhs.i, label %entry.no_checksum_crit_edge

entry.no_checksum_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_checksum

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp12.i = icmp eq i16 %11, 3
  br i1 %cmp12.i, label %skb_csum_unnecessary.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

skb_csum_unnecessary.exit:                        ; preds = %lor.rhs.i
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 8
  %conv.i.i65 = zext i16 %15 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i65, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not = icmp slt i32 %sub.i.i, 0
  br i1 %tobool.not, label %skb_csum_unnecessary.exit.if.end_crit_edge, label %skb_csum_unnecessary.exit.no_checksum_crit_edge

skb_csum_unnecessary.exit.no_checksum_crit_edge:  ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_checksum

skb_csum_unnecessary.exit.if.end_crit_edge:       ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %skb_csum_unnecessary.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %call4 = tail call i32 @csum_partial(ptr noundef %21, i32 noundef 0, i32 noundef %24) #5
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call4, ptr %2, align 4
  %call5 = call fastcc i32 @xdr_partial_copy_from_skb(ptr noundef %xdr, ptr noundef nonnull %desc, ptr noundef nonnull @xdr_skb_read_and_csum_bits)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %0, align 4
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp10.not = icmp eq i32 %29, %27
  br i1 %cmp10.not, label %if.end7.if.end21_crit_edge, label %if.then11

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %sub15 = sub i32 %29, %27
  %call16 = call i32 @skb_checksum(ptr noundef %skb, i32 noundef %27, i32 noundef %sub15, i32 noundef 0) #5
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %call16, i32 %call16, i32 24) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call16, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add1.i.i, ptr %2, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then11, %if.end7.if.end21_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool23.not = icmp eq i32 %36, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %39 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %38) #8, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %39)
  %tobool28.not = icmp ugt i32 %39, -65537
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %40 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %ip_summed.i, align 8
  %41 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %41)
  %cmp31 = icmp eq i16 %41, 1024
  br i1 %cmp31, label %land.lhs.true, label %if.end30.cleanup_crit_edge, !prof !15

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end30
  %csum_complete_sw = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %42 = ptrtoint ptr %csum_complete_sw to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %bf.load35 = load i32, ptr %csum_complete_sw, align 2
  %43 = and i32 %bf.load35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool39.not = icmp eq i32 %43, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %44 = getelementptr inbounds %struct.anon.41, ptr %skb, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  call void @netdev_rx_csum_fault(ptr noundef %46, ptr noundef %skb) #5
  br label %cleanup

no_checksum:                                      ; preds = %skb_csum_unnecessary.exit.no_checksum_crit_edge, %entry.no_checksum_crit_edge
  %call42 = call fastcc i32 @xdr_partial_copy_from_skb(ptr noundef %xdr, ptr noundef nonnull %desc, ptr noundef nonnull @xdr_skb_read_bits)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %no_checksum.cleanup_crit_edge, label %if.end46

no_checksum.cleanup_crit_edge:                    ; preds = %no_checksum
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %no_checksum
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool48.not = icmp ne i32 %48, 0
  %. = sext i1 %tobool48.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %no_checksum.cleanup_crit_edge, %if.then40, %land.lhs.true.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end21.cleanup_crit_edge ], [ -1, %if.end25.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ -1, %no_checksum.cleanup_crit_edge ], [ %., %if.end46 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xdr_partial_copy_from_skb(ptr nocapture noundef readonly %xdr, ptr noundef %desc, ptr nocapture noundef readonly %copy_actor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 3
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %2 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_len, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %4 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdr, align 4
  %call = tail call i32 %copy_actor(ptr noundef %desc, ptr noundef %7, i32 noundef %5) #5, !callees !16
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp3.not = icmp eq i32 %call, %5
  br i1 %cmp3.not, label %lor.lhs.false, label %if.then.cleanup91_crit_edge

if.then.cleanup91_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

lor.lhs.false:                                    ; preds = %if.then
  %count = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 2
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup91_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

lor.lhs.false.cleanup91_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

if.end6:                                          ; preds = %lor.lhs.false.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.end6.copy_tail_crit_edge, label %lor.lhs.false23, !prof !15

if.end6.copy_tail_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_tail

lor.lhs.false23:                                  ; preds = %if.end6
  %page_base = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 4
  %10 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_base, align 4
  %shr = lshr i32 %11, 12
  %and = and i32 %11, 4095
  %ppage.0 = getelementptr ptr, ptr %1, i32 %shr
  %flags = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 6
  %count71 = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond75.do.body_crit_edge, %lor.lhs.false23
  %base.addr.2 = phi i32 [ %and, %lor.lhs.false23 ], [ 0, %do.cond75.do.body_crit_edge ]
  %ppage.1 = phi ptr [ %ppage.0, %lor.lhs.false23 ], [ %incdec.ptr, %do.cond75.do.body_crit_edge ]
  %pglen.1 = phi i32 [ %3, %lor.lhs.false23 ], [ %sub76, %do.cond75.do.body_crit_edge ]
  %copied.1 = phi i32 [ %5, %lor.lhs.false23 ], [ %add68, %do.cond75.do.body_crit_edge ]
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and31 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body.if.end48_crit_edge, label %land.lhs.true

do.body.if.end48_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true:                                    ; preds = %do.body
  %14 = ptrtoint ptr %ppage.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ppage.1, align 4
  %cmp33 = icmp eq ptr %15, null
  br i1 %cmp33, label %if.then34, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then34:                                        ; preds = %land.lhs.true
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 10240, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %16 = ptrtoint ptr %ppage.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call38.i.i.i, ptr %ppage.1, align 4
  %cmp36 = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp36, label %if.then43, label %if.then34.if.end48_crit_edge, !prof !15

if.then34.if.end48_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then43:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.1)
  %cmp44 = icmp eq i32 %copied.1, 0
  %spec.store.select = select i1 %cmp44, i32 -12, i32 %copied.1
  br label %cleanup91

if.end48:                                         ; preds = %if.then34.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %do.body.if.end48_crit_edge
  %17 = ptrtoint ptr %ppage.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ppage.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %19 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %19, 512
  %20 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %24 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i1.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %29, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %18, i32 noundef %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base.addr.2)
  %tobool50.not = icmp eq i32 %base.addr.2, 0
  br i1 %tobool50.not, label %if.else58, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %sub52 = sub nuw nsw i32 4096, %base.addr.2
  %30 = tail call i32 @llvm.umin.i32(i32 %pglen.1, i32 %sub52)
  %add.ptr56 = getelementptr i8, ptr %call.i.i, i32 %base.addr.2
  %call57 = tail call i32 %copy_actor(ptr noundef %desc, ptr noundef %add.ptr56, i32 noundef %30) #5, !callees !16
  br label %if.end63

if.else58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %31 = tail call i32 @llvm.umin.i32(i32 %pglen.1, i32 4096)
  %call62 = tail call i32 %copy_actor(ptr noundef %desc, ptr noundef %call.i.i, i32 noundef %31) #5, !callees !16
  br label %if.end63

if.end63:                                         ; preds = %if.else58, %if.then51
  %len.4 = phi i32 [ %30, %if.then51 ], [ %31, %if.else58 ]
  %ret.0 = phi i32 [ %call57, %if.then51 ], [ %call62, %if.else58 ]
  %32 = ptrtoint ptr %ppage.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ppage.1, align 4
  tail call void @flush_dcache_page(ptr noundef %33) #5
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %34 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i1.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %39, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  %40 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %add68 = add i32 %ret.0, %copied.1
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %len.4)
  %cmp69.not = icmp eq i32 %ret.0, %len.4
  br i1 %cmp69.not, label %lor.lhs.false70, label %if.end63.cleanup91_crit_edge

if.end63.cleanup91_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

lor.lhs.false70:                                  ; preds = %if.end63
  %44 = ptrtoint ptr %count71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool72.not = icmp eq i32 %45, 0
  br i1 %tobool72.not, label %lor.lhs.false70.cleanup91_crit_edge, label %do.cond75

lor.lhs.false70.cleanup91_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

do.cond75:                                        ; preds = %lor.lhs.false70
  %incdec.ptr = getelementptr ptr, ptr %ppage.1, i32 1
  %sub76 = sub i32 %pglen.1, %len.4
  %cmp77.not = icmp eq i32 %sub76, 0
  br i1 %cmp77.not, label %do.cond75.copy_tail_crit_edge, label %do.cond75.do.body_crit_edge

do.cond75.do.body_crit_edge:                      ; preds = %do.cond75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.cond75.copy_tail_crit_edge:                    ; preds = %do.cond75
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_tail

copy_tail:                                        ; preds = %do.cond75.copy_tail_crit_edge, %if.end6.copy_tail_crit_edge
  %copied.3 = phi i32 [ %5, %if.end6.copy_tail_crit_edge ], [ %add68, %do.cond75.copy_tail_crit_edge ]
  %iov_len80 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %iov_len80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iov_len80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp81.not = icmp eq i32 %47, 0
  br i1 %cmp81.not, label %copy_tail.cleanup91_crit_edge, label %if.then82

copy_tail.cleanup91_crit_edge:                    ; preds = %copy_tail
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup91

if.then82:                                        ; preds = %copy_tail
  call void @__sanitizer_cov_trace_pc() #7
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  %48 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail, align 4
  %call88 = tail call i32 %copy_actor(ptr noundef %desc, ptr noundef %49, i32 noundef %47) #5, !callees !16
  %add89 = add i32 %call88, %copied.3
  br label %cleanup91

cleanup91:                                        ; preds = %if.then82, %copy_tail.cleanup91_crit_edge, %lor.lhs.false70.cleanup91_crit_edge, %if.end63.cleanup91_crit_edge, %if.then43, %lor.lhs.false.cleanup91_crit_edge, %if.then.cleanup91_crit_edge
  %copied.4 = phi i32 [ %call, %if.then.cleanup91_crit_edge ], [ %add89, %if.then82 ], [ %copied.3, %copy_tail.cleanup91_crit_edge ], [ %5, %lor.lhs.false.cleanup91_crit_edge ], [ %spec.store.select, %if.then43 ], [ %add68, %if.end63.cleanup91_crit_edge ], [ %add68, %lor.lhs.false70.cleanup91_crit_edge ]
  ret i32 %copied.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xdr_skb_read_and_csum_bits(ptr nocapture noundef %desc, ptr noundef %to, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %len)
  %offset = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %call = tail call i32 @skb_copy_and_csum_bits(ptr noundef %6, i32 noundef %4, ptr noundef %to, i32 noundef %2) #5
  %csum = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 3
  %7 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %csum, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %call, i32 %call, i32 24) #5
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %9 = ptrtoint ptr %csum to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add1.i.i, ptr %csum, align 4
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %sub = sub i32 %11, %2
  store i32 %sub, ptr %count, align 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add = add i32 %13, %2
  store i32 %add, ptr %offset, align 4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_csum_fault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xdr_skb_read_bits(ptr nocapture noundef %desc, ptr noundef %to, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %len)
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %offset = getelementptr inbounds %struct.xdr_skb_reader, ptr %desc, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %call = tail call i32 @skb_copy_bits(ptr noundef %4, i32 noundef %6, ptr noundef %to, i32 noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %entry.return_crit_edge, !prof !21

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %sub = sub i32 %8, %2
  store i32 %sub, ptr %count, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add = add i32 %10, %2
  store i32 %add, ptr %offset, align 4
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  %retval.0 = phi i32 [ %2, %if.end5 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xprt_sock_sendmsg(ptr noundef %sock, ptr noundef %msg, ptr noundef %xdr, i32 noundef %base, i32 noundef %marker, ptr nocapture noundef %sent_p) local_unnamed_addr #0 align 64 {
entry:
  %marker.addr.i = alloca i32, align 4
  %iov.i = alloca [2 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %marker)
  %tobool.not = icmp eq i32 %marker, 0
  %cond = select i1 %tobool.not, i32 0, i32 4
  %len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = sub i32 %cond, %base
  %sub = add i32 %add, %1
  %2 = ptrtoint ptr %sent_p to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sent_p, align 4
  %tobool1.not = icmp eq ptr %sock, null
  br i1 %tobool1.not, label %entry.cleanup69_crit_edge, label %if.end, !prof !15

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup69

if.end:                                           ; preds = %entry
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_flags, align 4
  %or = or i32 %4, 32768
  store i32 %or, ptr %msg_flags, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iov_len, align 4
  %add5 = add i32 %6, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %base)
  %cmp = icmp ugt i32 %add5, %base
  br i1 %cmp, label %if.then6, label %if.else27

if.then6:                                         ; preds = %if.end
  %sub8 = sub i32 %add5, %base
  %sub9 = sub i32 %sub, %sub8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %cmp10 = icmp eq i32 %sub9, 0
  br i1 %cmp10, label %if.then11, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %4, -32769
  %7 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %msg_flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then6.if.end13_crit_edge
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %marker.addr.i)
  %8 = ptrtoint ptr %marker.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %marker, ptr %marker.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov.i) #5
  %9 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %10 = getelementptr inbounds [2 x %struct.kvec], ptr %iov.i, i32 0, i32 1
  %11 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %marker.addr.i, ptr %iov.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %9, align 4
  %13 = ptrtoint ptr %xdr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %xdr, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %10, align 4
  %16 = trunc i64 %14 to i32
  %add.i = add i32 %16, 4
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iov.i, i32 noundef 2, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base)
  %tobool.not.i.i = icmp eq i32 %base, 0
  br i1 %tobool.not.i.i, label %if.then15.xprt_send_rm_and_kvec.exit_crit_edge, label %if.then.i.i

if.then15.xprt_send_rm_and_kvec.exit_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %xprt_send_rm_and_kvec.exit

if.then.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  call void @iov_iter_advance(ptr noundef %msg_iter.i, i32 noundef %base) #5
  br label %xprt_send_rm_and_kvec.exit

xprt_send_rm_and_kvec.exit:                       ; preds = %if.then.i.i, %if.then15.xprt_send_rm_and_kvec.exit_crit_edge
  %call.i.i = call i32 @sock_sendmsg(ptr noundef nonnull %sock, ptr noundef %msg) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %marker.addr.i)
  br label %if.end21

if.else:                                          ; preds = %if.end13
  %msg_iter.i130 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %17 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iov_len, align 4
  tail call void @iov_iter_kvec(ptr noundef %msg_iter.i130, i32 noundef 1, ptr noundef %xdr, i32 noundef 1, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base)
  %tobool.not.i.i131 = icmp eq i32 %base, 0
  br i1 %tobool.not.i.i131, label %if.else.xprt_send_kvec.exit_crit_edge, label %if.then.i.i132

if.else.xprt_send_kvec.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %xprt_send_kvec.exit

if.then.i.i132:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iov_iter_advance(ptr noundef %msg_iter.i130, i32 noundef %base) #5
  br label %xprt_send_kvec.exit

xprt_send_kvec.exit:                              ; preds = %if.then.i.i132, %if.else.xprt_send_kvec.exit_crit_edge
  %call.i.i133 = tail call i32 @sock_sendmsg(ptr noundef nonnull %sock, ptr noundef %msg) #5
  br label %if.end21

if.end21:                                         ; preds = %xprt_send_kvec.exit, %xprt_send_rm_and_kvec.exit
  %err.0 = phi i32 [ %call.i.i, %xprt_send_rm_and_kvec.exit ], [ %call.i.i133, %xprt_send_kvec.exit ]
  %cmp10.not = xor i1 %cmp10, true
  call void @__sanitizer_cov_trace_cmp4(i32 %err.0, i32 %sub8)
  %cmp23.not = icmp eq i32 %err.0, %sub8
  %or.cond = select i1 %cmp10.not, i1 %cmp23.not, i1 false
  br i1 %or.cond, label %cleanup.thread, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

cleanup.thread:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %sent_p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sent_p, align 4
  %add26 = add i32 %20, %sub8
  store i32 %add26, ptr %sent_p, align 4
  br label %if.end29

if.else27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub28 = sub i32 %base, %add5
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %cleanup.thread
  %base.addr.1 = phi i32 [ %sub28, %if.else27 ], [ 0, %cleanup.thread ]
  %remainder.0 = phi i32 [ %sub, %if.else27 ], [ %sub9, %cleanup.thread ]
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %21 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %base.addr.1, i32 %22)
  %cmp30 = icmp ult i32 %base.addr.1, %22
  br i1 %cmp30, label %if.then31, label %if.else51

if.then31:                                        ; preds = %if.end29
  %sub34 = sub i32 %22, %base.addr.1
  call void @__sanitizer_cov_trace_cmp4(i32 %remainder.0, i32 %sub34)
  %cmp36 = icmp eq i32 %remainder.0, %sub34
  br i1 %cmp36, label %if.then37, label %if.then31.if.end40_crit_edge

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_flags, align 4
  %and39 = and i32 %24, -32769
  store i32 %and39, ptr %msg_flags, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then31.if.end40_crit_edge
  %call.i = call i32 @xdr_alloc_bvec(ptr noundef %xdr, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end40.xprt_send_pagedata.exit_crit_edge, label %if.end.i

if.end40.xprt_send_pagedata.exit_crit_edge:       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %xprt_send_pagedata.exit

if.end.i:                                         ; preds = %if.end40
  %msg_iter.i134 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %bvec.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 2
  %25 = ptrtoint ptr %bvec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bvec.i, align 4
  %call1.i = call i32 @xdr_buf_pagecount(ptr noundef %xdr) #5
  %27 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %page_len, align 4
  %page_base.i = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 4
  %29 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %page_base.i, align 4
  %add.i135 = add i32 %30, %28
  call void @iov_iter_bvec(ptr noundef %msg_iter.i134, i32 noundef 1, ptr noundef %26, i32 noundef %call1.i, i32 noundef %add.i135) #5
  %31 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_base.i, align 4
  %add3.i = add i32 %32, %base.addr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add3.i)
  %tobool.not.i.i136 = icmp eq i32 %add3.i, 0
  br i1 %tobool.not.i.i136, label %if.end.i.xprt_sendmsg.exit.i_crit_edge, label %if.then.i.i137

if.end.i.xprt_sendmsg.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xprt_sendmsg.exit.i

if.then.i.i137:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @iov_iter_advance(ptr noundef %msg_iter.i134, i32 noundef %add3.i) #5
  br label %xprt_sendmsg.exit.i

xprt_sendmsg.exit.i:                              ; preds = %if.then.i.i137, %if.end.i.xprt_sendmsg.exit.i_crit_edge
  %call.i.i138 = call i32 @sock_sendmsg(ptr noundef nonnull %sock, ptr noundef %msg) #5
  br label %xprt_send_pagedata.exit

xprt_send_pagedata.exit:                          ; preds = %xprt_sendmsg.exit.i, %if.end40.xprt_send_pagedata.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i138, %xprt_sendmsg.exit.i ], [ %call.i, %if.end40.xprt_send_pagedata.exit_crit_edge ]
  %cmp36.not = xor i1 %cmp36, true
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %sub34)
  %cmp44.not = icmp eq i32 %retval.0.i, %sub34
  %or.cond127 = select i1 %cmp36.not, i1 %cmp44.not, i1 false
  br i1 %or.cond127, label %cleanup48.thread, label %xprt_send_pagedata.exit.out_crit_edge

xprt_send_pagedata.exit.out_crit_edge:            ; preds = %xprt_send_pagedata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

cleanup48.thread:                                 ; preds = %xprt_send_pagedata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %sent_p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sent_p, align 4
  %add47 = add i32 %34, %sub34
  store i32 %add47, ptr %sent_p, align 4
  br label %if.end54

if.else51:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %sub53 = sub i32 %base.addr.1, %22
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %cleanup48.thread
  %base.addr.3 = phi i32 [ %sub53, %if.else51 ], [ 0, %cleanup48.thread ]
  %iov_len56 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %iov_len56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iov_len56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %base.addr.3, i32 %36)
  %cmp57.not = icmp ult i32 %base.addr.3, %36
  br i1 %cmp57.not, label %if.end59, label %if.end54.cleanup69_crit_edge

if.end54.cleanup69_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup69

if.end59:                                         ; preds = %if.end54
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  %37 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_flags, align 4
  %and61 = and i32 %38, -32769
  store i32 %and61, ptr %msg_flags, align 4
  %msg_iter.i139 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %39 = ptrtoint ptr %iov_len56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iov_len56, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i139, i32 noundef 1, ptr noundef %tail, i32 noundef 1, i32 noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base.addr.3)
  %tobool.not.i.i141 = icmp eq i32 %base.addr.3, 0
  br i1 %tobool.not.i.i141, label %if.end59.xprt_send_kvec.exit145_crit_edge, label %if.then.i.i142

if.end59.xprt_send_kvec.exit145_crit_edge:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %xprt_send_kvec.exit145

if.then.i.i142:                                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  call void @iov_iter_advance(ptr noundef %msg_iter.i139, i32 noundef %base.addr.3) #5
  br label %xprt_send_kvec.exit145

xprt_send_kvec.exit145:                           ; preds = %if.then.i.i142, %if.end59.xprt_send_kvec.exit145_crit_edge
  %call.i.i143 = call i32 @sock_sendmsg(ptr noundef nonnull %sock, ptr noundef %msg) #5
  br label %out

out:                                              ; preds = %xprt_send_kvec.exit145, %xprt_send_pagedata.exit.out_crit_edge, %if.end21.out_crit_edge
  %err.1 = phi i32 [ %call.i.i143, %xprt_send_kvec.exit145 ], [ %err.0, %if.end21.out_crit_edge ], [ %retval.0.i, %xprt_send_pagedata.exit.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp65 = icmp sgt i32 %err.1, 0
  br i1 %cmp65, label %if.then66, label %out.cleanup69_crit_edge

out.cleanup69_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup69

if.then66:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %sent_p to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sent_p, align 4
  %add67 = add i32 %42, %err.1
  store i32 %add67, ptr %sent_p, align 4
  br label %cleanup69

cleanup69:                                        ; preds = %if.then66, %out.cleanup69_crit_edge, %if.end54.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.0 = phi i32 [ -88, %entry.cleanup69_crit_edge ], [ 0, %if.end54.cleanup69_crit_edge ], [ 0, %if.then66 ], [ %err.1, %out.cleanup69_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_sendmsg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_alloc_bvec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_pagecount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

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

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_csum_partial_copy_to_xdr, !1, !"__ksymtab_csum_partial_copy_to_xdr", i1 false, i1 false}
!1 = !{!"../net/sunrpc/socklib.c", i32 203, i32 1}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 6891180}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{ptr @xdr_skb_read_and_csum_bits, ptr @xdr_skb_read_bits}
!17 = !{i64 2154270349}
!18 = !{i64 2152876482}
!19 = !{i64 2152876689}
!20 = !{i64 2154273120}
!21 = !{!"branch_weights", i32 2000, i32 1}
