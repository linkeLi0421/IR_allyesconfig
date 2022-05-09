; ModuleID = '/llk/IR_all_yes/crypto/async_tx/async_memcpy.c_pt.bc'
source_filename = "../crypto/async_tx/async_memcpy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+async_memcpy\22, \22a\22\09"
module asm "\09.weak\09__crc_async_memcpy\09\09\09\09"
module asm "\09.long\09__crc_async_memcpy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22async_memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_async_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.async_submit_ctl = type { i32, ptr, ptr, ptr, ptr }
%struct.dmaengine_unmap_data = type { i16, i8, i8, i8, ptr, %struct.kref, i32, [0 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@async_memcpy.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str, ptr @.str.1, ptr @.str.2, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"async_memcpy\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"crypto/async_tx/async_memcpy.c\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: (async) len: %zu\0A\00", [42 x i8] zeroinitializer }, align 32
@async_memcpy.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str, ptr @.str.1, ptr @.str.3, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: (sync) len: %zu\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_async_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_async_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_memcpy to i32), ptr @__kstrtab_async_memcpy, ptr @__kstrtabns_async_memcpy }, section "___ksymtab_gpl+async_memcpy", align 4
@__UNIQUE_ID_author252 = internal constant [38 x i8] c"async_memcpy.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [49 x i8] c"async_memcpy.description=asynchronous memcpy api\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [47 x i8] c"async_memcpy.file=crypto/async_tx/async_memcpy\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [25 x i8] c"async_memcpy.license=GPL\00", section ".modinfo", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 67, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [34 x i8] c"../crypto/async_tx/async_memcpy.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 73, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_async_memcpy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_memcpy(ptr noundef %dest, ptr noundef %src, i32 noundef %dest_offset, i32 noundef %src_offset, i32 noundef %len, ptr noundef %submit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__async_tx_find_channel(ptr noundef %submit, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %cond.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %cond.end.if.else_crit_edge, label %if.end

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end:                                           ; preds = %cond.end
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call3 = tail call ptr @dmaengine_get_unmap_data(ptr noundef %3, i32 noundef 2, i32 noundef 2048) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %copy_align.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %copy_align.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %copy_align.i, align 4
  %notmask.i.i = shl nsw i32 -1, %5
  %sub.i.i = xor i32 %notmask.i.i, -1
  %or.i.i = or i32 %src_offset, %dest_offset
  %or1.i.i = or i32 %or.i.i, %len
  %and.i.i = and i32 %or1.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end26, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end26:                                         ; preds = %land.lhs.true
  %cb_fn = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %6 = ptrtoint ptr %cb_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb_fn, align 4
  %tobool7.not = icmp ne ptr %7, null
  %spec.select = zext i1 %tobool7.not to i32
  %8 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %submit, align 4
  %and = shl i32 %9, 2
  %10 = and i32 %and, 32
  %11 = or i32 %10, %spec.select
  %to_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %to_cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %to_cnt, align 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call15 = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %src, i32 noundef %src_offset, i32 noundef %len, i32 noundef 1, i32 noundef 0) #4
  %addr = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call3, i32 0, i32 7
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call15, ptr %addr, align 4
  %from_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call3, i32 0, i32 2
  %16 = ptrtoint ptr %from_cnt to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %from_cnt, align 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call17 = tail call i32 @dma_map_page_attrs(ptr noundef %18, ptr noundef %dest, i32 noundef %dest_offset, i32 noundef %len, i32 noundef 2, i32 noundef 0) #4
  %arrayidx19 = getelementptr %struct.dmaengine_unmap_data, ptr %call3, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call17, ptr %arrayidx19, align 4
  %len20 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %len20, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 30
  %21 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_prep_dma_memcpy, align 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %call25 = tail call ptr %22(ptr noundef nonnull %call, i32 noundef %call17, i32 noundef %24, i32 noundef %len, i32 noundef %11) #4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end26.if.else_crit_edge, label %do.body

if.end26.if.else_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

do.body:                                          ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_memcpy.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_memcpy, %if.then33)) #4
          to label %do.end [label %if.then33], !srcloc !27

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_memcpy.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef %len) #4
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %kref.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call3, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #4
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #4, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !29

do.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !30

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_set_unmap.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #4
  br label %dma_set_unmap.exit

dma_set_unmap.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge
  %unmap1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call25, i32 0, i32 9
  %27 = ptrtoint ptr %unmap1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call3, ptr %unmap1.i, align 4
  tail call void @async_tx_submit(ptr noundef nonnull %call, ptr noundef nonnull %call25, ptr noundef %submit) #4
  br label %if.end66

if.else:                                          ; preds = %if.end26.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge, %cond.end.if.else_crit_edge, %entry.if.else_crit_edge
  %unmap.0135140 = phi ptr [ %call3, %if.end26.if.else_crit_edge ], [ null, %if.end.if.else_crit_edge ], [ %call3, %land.lhs.true.if.else_crit_edge ], [ null, %cond.end.if.else_crit_edge ], [ null, %entry.if.else_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_memcpy.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_memcpy, %if.then47)) #4
          to label %do.end50 [label %if.then47], !srcloc !27

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_memcpy.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef %len) #4
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %if.else
  %depend_tx = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  tail call void @async_tx_quiesce(ptr noundef %depend_tx) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %28 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %28, 512
  %29 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !31
  %33 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i1.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !32
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %dest, i32 noundef %or.i) #4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %dest_offset
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %39 = load i32, ptr @pgprot_kernel, align 4
  %or.i112 = or i32 %39, 512
  %40 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i.i.i113 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i113 to ptr
  %preempt_count.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i114, align 4
  %add.i.i.i115 = add i32 %43, 1
  store volatile i32 %add.i.i.i115, ptr %preempt_count.i.i.i.i114, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !31
  %44 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i1.i.i116 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i.i116 to ptr
  %task.i.i.i.i117 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i.i117, align 8
  %pagefault_disabled.i.i.i.i118 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i.i118, align 8
  %inc.i.i.i.i119 = add i32 %49, 1
  store i32 %inc.i.i.i.i119, ptr %pagefault_disabled.i.i.i.i118, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !32
  %call.i.i120 = tail call ptr @__kmap_local_page_prot(ptr noundef %src, i32 noundef %or.i112) #4
  %add.ptr53 = getelementptr i8, ptr %call.i.i120, i32 %src_offset
  %50 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr53, i32 %len)
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr53) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !33
  %51 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i1.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %56, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !34
  %57 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i121 = add i32 %60, -1
  store volatile i32 %sub.i.i121, ptr %preempt_count.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !33
  %61 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i1.i122 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i1.i122 to ptr
  %task.i.i.i123 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i.i.i123, align 8
  %pagefault_disabled.i.i.i124 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 213
  %65 = ptrtoint ptr %pagefault_disabled.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pagefault_disabled.i.i.i124, align 8
  %dec.i.i.i125 = add i32 %66, -1
  store i32 %dec.i.i.i125, ptr %pagefault_disabled.i.i.i124, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !34
  %67 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i.i126 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i126 to ptr
  %preempt_count.i.i.i127 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i127, align 4
  %sub.i.i128 = add i32 %70, -1
  store volatile i32 %sub.i.i128, ptr %preempt_count.i.i.i127, align 4
  %cb_fn.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %71 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cb_fn.i, align 4
  %tobool.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i, label %do.end50.if.end66_crit_edge, label %if.then.i

do.end50.if.end66_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then.i:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  %cb_param.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %73 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cb_param.i, align 4
  tail call void %72(ptr noundef %74) #4
  br label %if.end66

if.end66:                                         ; preds = %if.then.i, %do.end50.if.end66_crit_edge, %dma_set_unmap.exit
  %tx.0141 = phi ptr [ %call25, %dma_set_unmap.exit ], [ null, %do.end50.if.end66_crit_edge ], [ null, %if.then.i ]
  %unmap.0135139 = phi ptr [ %call3, %dma_set_unmap.exit ], [ %unmap.0135140, %do.end50.if.end66_crit_edge ], [ %unmap.0135140, %if.then.i ]
  tail call void @dmaengine_unmap_put(ptr noundef %unmap.0135139) #4
  ret ptr %tx.0141
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__async_tx_find_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmaengine_get_unmap_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_tx_submit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_tx_quiesce(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !12, !14, !16}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/async_tx/async_memcpy.c", i32 67, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @async_memcpy.__UNIQUE_ID_ddebug248, !1, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../crypto/async_tx/async_memcpy.c", i32 73, i32 3}
!7 = !{ptr @async_memcpy.__UNIQUE_ID_ddebug249, !6, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!8 = !{ptr @__ksymtab_async_memcpy, !9, !"__ksymtab_async_memcpy", i1 false, i1 false}
!9 = !{!"../crypto/async_tx/async_memcpy.c", i32 93, i32 1}
!10 = !{ptr @__UNIQUE_ID_author252, !11, !"__UNIQUE_ID_author252", i1 false, i1 false}
!11 = !{!"../crypto/async_tx/async_memcpy.c", i32 95, i32 1}
!12 = !{ptr @__UNIQUE_ID_description253, !13, !"__UNIQUE_ID_description253", i1 false, i1 false}
!13 = !{!"../crypto/async_tx/async_memcpy.c", i32 96, i32 1}
!14 = !{ptr @__UNIQUE_ID_file254, !15, !"__UNIQUE_ID_file254", i1 false, i1 false}
!15 = !{!"../crypto/async_tx/async_memcpy.c", i32 97, i32 1}
!16 = !{ptr @__UNIQUE_ID_license255, !15, !"__UNIQUE_ID_license255", i1 false, i1 false}
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
!27 = !{i64 2148692250, i64 2148692255, i64 2148692268, i64 2148692312, i64 2148692346, i64 2148692367}
!28 = !{i64 2148211965, i64 2148211997, i64 2148212026, i64 2148212060, i64 2148212091, i64 2148212114}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2153635942}
!32 = !{i64 2152179942}
!33 = !{i64 2152180149}
!34 = !{i64 2153638713}
