; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/heaps/cma_heap.c_pt.bc'
source_filename = "../drivers/dma-buf/heaps/cma_heap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_heap_ops = type { ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.dma_heap_export_info = type { ptr, ptr, ptr }
%struct.cma_heap = type { ptr, ptr }
%struct.cma_heap_buffer = type { ptr, %struct.list_head, %struct.mutex, i32, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.71, i8 }
%union.anon.71 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.dma_heap_attachment = type { ptr, %struct.sg_table, %struct.list_head, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }

@__initcall__kmod_cma_heap__247_405_add_default_cma_heap6 = internal global ptr @add_default_cma_heap, section ".initcall6.init", align 4
@__UNIQUE_ID_description248 = internal constant [38 x i8] c"cma_heap.description=DMA-BUF CMA Heap\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [45 x i8] c"cma_heap.file=drivers/dma-buf/heaps/cma_heap\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [24 x i8] c"cma_heap.license=GPL v2\00", section ".modinfo", align 1
@dma_contiguous_default_area = external dso_local local_unnamed_addr global ptr, align 4
@cma_heap_ops = internal constant { %struct.dma_heap_ops, [28 x i8] } { %struct.dma_heap_ops { ptr @cma_heap_allocate }, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cma_heap\00", [23 x i8] zeroinitializer }, align 32
@__const.cma_heap_allocate.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@cma_heap_allocate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&buffer->lock\00", [18 x i8] zeroinitializer }, align 32
@cma_heap_buf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr @cma_heap_attach, ptr @cma_heap_detach, ptr null, ptr null, ptr @cma_heap_map_dma_buf, ptr @cma_heap_unmap_dma_buf, ptr @cma_heap_dma_buf_release, ptr @cma_heap_dma_buf_begin_cpu_access, ptr @cma_heap_dma_buf_end_cpu_access, ptr @cma_heap_mmap, ptr @cma_heap_vmap, ptr @cma_heap_vunmap }, [44 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/dma-buf/heaps/cma_heap.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: buffer still mapped in the kernel\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.cma_heap_dma_buf_release = private unnamed_addr constant [25 x i8] c"cma_heap_dma_buf_release\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@dma_heap_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cma_heap_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"cma_heap_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 366, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 283, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 297, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"cma_heap_buf_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 263, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 251, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"dma_heap_vm_ops\00", align 1
@___asan_gen_.27 = private constant [36 x i8] c"../drivers/dma-buf/heaps/cma_heap.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 177, i32 42 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1160, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__initcall__kmod_cma_heap__247_405_add_default_cma_heap6, ptr @cma_heap_ops, ptr @.str, ptr @cma_heap_allocate.__key, ptr @.str.1, ptr @cma_heap_buf_ops, ptr @.str.2, ptr @.str.3, ptr @dma_heap_vm_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_heap_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_heap_allocate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_heap_buf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_heap_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_default_cma_heap() #0 align 64 {
entry:
  %exp_info.i = alloca %struct.dma_heap_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dma_contiguous_default_area to i32))
  %0 = load ptr, ptr @dma_contiguous_default_area, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %exp_info.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.__add_cma_heap.exit_crit_edge, label %if.end.i

if.then.__add_cma_heap.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__add_cma_heap.exit

if.end.i:                                         ; preds = %if.then
  %2 = getelementptr inbounds %struct.dma_heap_export_info, ptr %exp_info.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dma_heap_export_info, ptr %exp_info.i, i32 0, i32 1
  %cma1.i = getelementptr inbounds %struct.cma_heap, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %cma1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %0, ptr %cma1.i, align 4
  %call2.i = tail call ptr @cma_get_name(ptr noundef nonnull %0) #9
  %5 = ptrtoint ptr %exp_info.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.i, ptr %exp_info.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cma_heap_ops, ptr %3, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %2, align 4
  %call3.i = call ptr @dma_heap_add(ptr noundef nonnull %exp_info.i) #9
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3.i, ptr %call7.i.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.__add_cma_heap.exit_crit_edge

if.end.i.__add_cma_heap.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__add_cma_heap.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call3.i to i32
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %__add_cma_heap.exit

__add_cma_heap.exit:                              ; preds = %if.then6.i, %if.end.i.__add_cma_heap.exit_crit_edge, %if.then.__add_cma_heap.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then6.i ], [ -12, %if.then.__add_cma_heap.exit_crit_edge ], [ 0, %if.end.i.__add_cma_heap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %exp_info.i) #9
  br label %if.end

if.end:                                           ; preds = %__add_cma_heap.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %__add_cma_heap.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cma_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_heap_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cma_heap_allocate(ptr noundef %heap, i32 noundef %len, i32 noundef %fd_flags, i32 noundef %heap_flags) #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dma_heap_get_drvdata(ptr noundef %heap) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #9
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.cma_heap_allocate.exp_info, i32 28)
  %add = add i32 %len, 4095
  %and = and i32 %add, -4096
  %shr = lshr i32 %add, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 128) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup57_crit_edge, label %get_order.exit

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup57

get_order.exit:                                   ; preds = %entry
  %dec.i = add i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 4095
  %shr.i = lshr i32 %dec.i, 12
  %2 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #9, !range !34
  %sub.i.i = sub nuw nsw i32 32, %2
  %attachments = getelementptr inbounds %struct.cma_heap_buffer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %attachments to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %attachments, ptr %attachments, align 4
  %prev.i = getelementptr inbounds %struct.cma_heap_buffer, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %attachments, ptr %prev.i, align 8
  %lock = getelementptr inbounds %struct.cma_heap_buffer, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cma_heap_allocate.__key) #9
  %len4 = getelementptr inbounds %struct.cma_heap_buffer, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %len4, align 8
  %6 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 8)
  %7 = select i1 %tobool.not.i.i, i32 0, i32 %6
  %cma = getelementptr inbounds %struct.cma_heap, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cma, align 4
  %call7 = tail call ptr @cma_alloc(ptr noundef %9, i32 noundef %shr, i32 noundef %7, i1 noundef zeroext false) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %get_order.exit.free_buffer_crit_edge, label %if.end10

get_order.exit.free_buffer_crit_edge:             ; preds = %get_order.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buffer

if.end10:                                         ; preds = %get_order.exit
  %10 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7, align 4
  %shr.i107 = lshr i32 %11, 30
  %12 = zext i32 %shr.i107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i107, label %if.end10.if.else_crit_edge [
    i32 2, label %if.end10.while.cond.preheader_crit_edge
    i32 3, label %land.rhs.i
  ]

if.end10.while.cond.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.rhs.i:                                       ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.not = icmp eq i32 %13, 2
  br i1 %cmp2.i.not, label %land.rhs.i.while.cond.preheader_crit_edge, label %land.rhs.i.if.else_crit_edge

land.rhs.i.if.else_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.rhs.i.while.cond.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.rhs.i.while.cond.preheader_crit_edge, %if.end10.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %fatal_signal_pending.exit.while.cond_crit_edge, %while.cond.preheader
  %nr_clear_pages.0 = phi i32 [ %dec, %fatal_signal_pending.exit.while.cond_crit_edge ], [ %shr, %while.cond.preheader ]
  %page.0 = phi ptr [ %incdec.ptr, %fatal_signal_pending.exit.while.cond_crit_edge ], [ %call7, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clear_pages.0)
  %cmp15.not = icmp eq i32 %nr_clear_pages.0, 0
  br i1 %cmp15.not, label %while.cond.if.end7.i_crit_edge, label %while.body

while.cond.if.end7.i_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %14 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %14, 512
  %15 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !35
  %19 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i1.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page.0, i32 noundef %or.i) #9
  %25 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %26 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i1.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %31, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  %32 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i108 = add i32 %35, -1
  store volatile i32 %sub.i.i108, ptr %preempt_count.i.i.i, align 4
  %36 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stack.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and1.i.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i109 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i109, label %while.body.fatal_signal_pending.exit_crit_edge, label %land.rhs.i110

while.body.fatal_signal_pending.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %fatal_signal_pending.exit

land.rhs.i110:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 116, i32 1
  %44 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %signal.i.i, align 4
  %46 = lshr i32 %45, 8
  %.lobit.i = and i32 %46, 1
  br label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %land.rhs.i110, %while.body.fatal_signal_pending.exit_crit_edge
  %47 = phi i32 [ 0, %while.body.fatal_signal_pending.exit_crit_edge ], [ %.lobit.i, %land.rhs.i110 ]
  %tobool25.not = icmp eq i32 %47, 0
  %incdec.ptr = getelementptr %struct.page, ptr %page.0, i32 1
  %dec = add nsw i32 %nr_clear_pages.0, -1
  br i1 %tobool25.not, label %fatal_signal_pending.exit.while.cond_crit_edge, label %fatal_signal_pending.exit.free_cma_crit_edge

fatal_signal_pending.exit.free_cma_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_cma

fatal_signal_pending.exit.while.cond_crit_edge:   ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.else:                                          ; preds = %land.rhs.i.if.else_crit_edge, %if.end10.if.else_crit_edge
  %call32 = tail call ptr @page_address(ptr noundef nonnull %call7) #9
  %48 = call ptr @memset(ptr %call32, i32 0, i32 %and)
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else, %while.cond.if.end7.i_crit_edge
  %49 = shl nuw nsw i32 %shr, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %49, i32 noundef 3264) #13
  %pages = getelementptr inbounds %struct.cma_heap_buffer, ptr %call7.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call8.i, ptr %pages, align 8
  %tobool36.not = icmp eq ptr %call8.i, null
  br i1 %tobool36.not, label %if.end7.i.free_cma_crit_edge, label %for.cond.preheader

if.end7.i.free_cma_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_cma

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp39120.not = icmp ult i32 %add, 4096
  br i1 %cmp39120.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pg.0121 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.page, ptr %call7, i32 %pg.0121
  %51 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pages, align 8
  %arrayidx41 = getelementptr ptr, ptr %52, i32 %pg.0121
  %53 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx, ptr %arrayidx41, align 4
  %inc = add nuw nsw i32 %pg.0121, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cma_pages42 = getelementptr inbounds %struct.cma_heap_buffer, ptr %call7.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %cma_pages42 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7, ptr %cma_pages42, align 4
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call, ptr %call7.i.i, align 8
  %pagecount44 = getelementptr inbounds %struct.cma_heap_buffer, ptr %call7.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %pagecount44 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shr, ptr %pagecount44, align 4
  %call45 = tail call ptr @dma_heap_get_name(ptr noundef %heap) #9
  %57 = ptrtoint ptr %exp_info to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call45, ptr %exp_info, align 4
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @cma_heap_buf_ops, ptr %ops, align 4
  %59 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len4, align 8
  %size47 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %61 = ptrtoint ptr %size47 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %size47, align 4
  %flags = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %fd_flags, ptr %flags, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %priv, align 4
  %call48 = call ptr @dma_buf_export(ptr noundef nonnull %exp_info) #9
  %cmp.i114 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then50, label %for.end.cleanup57_crit_edge

for.end.cleanup57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup57

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %call48 to i32
  %65 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pages, align 8
  call void @kfree(ptr noundef %66) #9
  br label %free_cma

free_cma:                                         ; preds = %if.then50, %if.end7.i.free_cma_crit_edge, %fatal_signal_pending.exit.free_cma_crit_edge
  %ret.0 = phi i32 [ %64, %if.then50 ], [ -12, %if.end7.i.free_cma_crit_edge ], [ -12, %fatal_signal_pending.exit.free_cma_crit_edge ]
  %67 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cma, align 4
  %call55 = call zeroext i1 @cma_release(ptr noundef %68, ptr noundef nonnull %call7, i32 noundef %shr) #9
  br label %free_buffer

free_buffer:                                      ; preds = %free_cma, %get_order.exit.free_buffer_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_cma ], [ -12, %get_order.exit.free_buffer_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %69 = inttoptr i32 %ret.1 to ptr
  br label %cleanup57

cleanup57:                                        ; preds = %free_buffer, %for.end.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.0 = phi ptr [ %69, %free_buffer ], [ %call48, %for.end.cleanup57_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_heap_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cma_alloc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_heap_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cma_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_heap_attach(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef %attachment) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %table = getelementptr inbounds %struct.dma_heap_attachment, ptr %call7.i.i, i32 0, i32 1
  %pages = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pages, align 4
  %pagecount = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pagecount, align 4
  %shl = shl i32 %6, 12
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %table, ptr noundef %4, i32 noundef %6, i32 noundef 0, i32 noundef %shl, i32 noundef -1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i, align 8
  %list = getelementptr inbounds %struct.dma_heap_attachment, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.dma_heap_attachment, ptr %call7.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %mapped = getelementptr inbounds %struct.dma_heap_attachment, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mapped, align 8
  %priv7 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %13 = ptrtoint ptr %priv7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %priv7, align 4
  %lock = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %attachments = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %attachments to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attachments, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %attachments, ptr noundef %15) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add.exit_crit_edge

if.end5.list_add.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %list, align 8
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %attachments, ptr %prev.i, align 4
  %19 = ptrtoint ptr %attachments to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %attachments, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end5.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then4 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cma_heap_detach(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef readonly %attachment) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %list = getelementptr inbounds %struct.dma_heap_attachment, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.dma_heap_attachment, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dma_heap_attachment, ptr %3, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %table = getelementptr inbounds %struct.dma_heap_attachment, ptr %3, i32 0, i32 1
  tail call void @sg_free_table(ptr noundef %table) #9
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cma_heap_map_dma_buf(ptr nocapture noundef readonly %attachment, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %table1 = getelementptr inbounds %struct.dma_heap_attachment, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @dma_map_sgtable(ptr noundef %3, ptr noundef %table1, i32 noundef %direction, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mapped = getelementptr inbounds %struct.dma_heap_attachment, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %mapped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %table1, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cma_heap_unmap_dma_buf(ptr nocapture noundef readonly %attachment, ptr nocapture noundef readonly %table, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mapped = getelementptr inbounds %struct.dma_heap_attachment, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mapped, align 4
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %table, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %table, i32 0, i32 2
  %7 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef %direction, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cma_heap_dma_buf_release(ptr nocapture noundef readonly %dmabuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vmap_cnt = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 251, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.cma_heap_dma_buf_release) #9
  %vaddr = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr, align 4
  tail call void @vunmap(ptr noundef %7) #9
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vaddr, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.end, %entry.if.end17_crit_edge
  %pages = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %10) #9
  %cma = getelementptr inbounds %struct.cma_heap, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cma, align 4
  %cma_pages = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %cma_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cma_pages, align 4
  %pagecount = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagecount, align 4
  %call = tail call zeroext i1 @cma_release(ptr noundef %12, ptr noundef %14, i32 noundef %16) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_heap_dma_buf_begin_cpu_access(ptr nocapture noundef readonly %dmabuf, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %vmap_cnt = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %4 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %vaddr = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %9(ptr noundef %8, i32 noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %attachments = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %attachments to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn21 = load ptr, ptr %attachments, align 4
  %cmp.not23 = icmp eq ptr %.pn21, %attachments
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn21, %if.end.for.body_crit_edge ]
  %mapped = getelementptr i8, ptr %.pn24, i32 8
  %11 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mapped, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %a.025 = getelementptr i8, ptr %.pn24, i32 -16
  %13 = ptrtoint ptr %a.025 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a.025, align 4
  %table = getelementptr i8, ptr %.pn24, i32 -12
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %table, align 4
  %orig_nents.i = getelementptr i8, ptr %.pn24, i32 -4
  %17 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %direction) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %attachments
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_heap_dma_buf_end_cpu_access(ptr nocapture noundef readonly %dmabuf, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %vmap_cnt = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %4 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %vaddr = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %9(ptr noundef %8, i32 noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %attachments = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %attachments to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn21 = load ptr, ptr %attachments, align 4
  %cmp.not23 = icmp eq ptr %.pn21, %attachments
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn21, %if.end.for.body_crit_edge ]
  %mapped = getelementptr i8, ptr %.pn24, i32 8
  %11 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mapped, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %a.025 = getelementptr i8, ptr %.pn24, i32 -16
  %13 = ptrtoint ptr %a.025 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a.025, align 4
  %table = getelementptr i8, ptr %.pn24, i32 -12
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %table, align 4
  %orig_nents.i = getelementptr i8, ptr %.pn24, i32 -4
  %17 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %direction) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %attachments
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cma_heap_mmap(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef %vma) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %and = and i32 %1, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %4 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dma_heap_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %5 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %vm_private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_heap_vmap(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef writeonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %vmap_cnt = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %3, 1
  %4 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %vmap_cnt, align 4
  %vaddr2 = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %vaddr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vaddr2, align 4
  %7 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %map, align 4
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %8 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %is_iomem.i, align 4
  br label %out

if.end:                                           ; preds = %entry
  %pages.i = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.i, align 4
  %pagecount.i = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %pagecount.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagecount.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %13, 512
  %call.i = tail call ptr @vmap(ptr noundef %10, i32 noundef %12, i32 noundef 4, i32 noundef %or.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -12 to ptr), ptr %call.i
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %spec.select.i to i32
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vaddr7 = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %vaddr7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.select.i, ptr %vaddr7, align 4
  %16 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vmap_cnt, align 4
  %inc9 = add i32 %17, 1
  store i32 %inc9, ptr %vmap_cnt, align 4
  %18 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select.i, ptr %map, align 4
  %is_iomem.i23 = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %19 = ptrtoint ptr %is_iomem.i23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %is_iomem.i23, align 4
  br label %out

out:                                              ; preds = %if.end6, %if.then4, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %14, %if.then4 ], [ 0, %if.end6 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cma_heap_vunmap(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %vmap_cnt = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmap_cnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vaddr = getelementptr inbounds %struct.cma_heap_buffer, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr, align 4
  tail call void @vunmap(ptr noundef %5) #9
  %6 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vaddr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_iomem.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %map, align 4
  br i1 %tobool.not.i, label %if.end.dma_buf_map_clear.exit_crit_edge, label %if.then.i

if.end.dma_buf_map_clear.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_buf_map_clear.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_iomem.i, align 4
  br label %dma_buf_map_clear.exit

dma_buf_map_clear.exit:                           ; preds = %if.then.i, %if.end.dma_buf_map_clear.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_heap_vm_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %4 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgoff, align 4
  %pagecount = getelementptr inbounds %struct.cma_heap_buffer, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagecount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages = getelementptr inbounds %struct.cma_heap_buffer, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %12 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %page, align 4
  %13 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !40

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %11 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %19, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !41

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !42
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@cma_heap_vm_fault, %if.then.i.i.i.i)) #9
          to label %cleanup [label %if.then.i.i.i.i], !srcloc !44

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %17, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i.i, %do.end5.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ 0, %do.end5.i.i ], [ 0, %if.then.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_cma_heap__247_405_add_default_cma_heap6, !1, !"__initcall__kmod_cma_heap__247_405_add_default_cma_heap6", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 405, i32 1}
!2 = !{ptr @__UNIQUE_ID_description248, !3, !"__UNIQUE_ID_description248", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 406, i32 1}
!4 = !{ptr @__UNIQUE_ID_file249, !5, !"__UNIQUE_ID_file249", i1 false, i1 false}
!5 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 407, i32 1}
!6 = !{ptr @__UNIQUE_ID_license250, !5, !"__UNIQUE_ID_license250", i1 false, i1 false}
!7 = !{ptr @cma_heap_ops, !8, !"cma_heap_ops", i1 false, i1 false}
!8 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 366, i32 34}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 283, i32 2}
!11 = !{ptr @cma_heap_allocate.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 297, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cma_heap_buf_ops, !15, !"cma_heap_buf_ops", i1 false, i1 false}
!15 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 263, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 251, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__func__.cma_heap_dma_buf_release, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dma_heap_vm_ops, !21, !"dma_heap_vm_ops", i1 false, i1 false}
!21 = !{!"../drivers/dma-buf/heaps/cma_heap.c", i32 177, i32 42}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i32 0, i32 33}
!35 = !{i64 2154141186}
!36 = !{i64 2152874310}
!37 = !{i64 2152874517}
!38 = !{i64 2154143957}
!39 = !{i8 0, i8 2}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2153281232, i64 2153281716, i64 2153281269, i64 2153281325, i64 2153281359, i64 2153281383, i64 2153281424, i64 2153281445, i64 2153281473, i64 2153281507}
!43 = !{i64 2148462167, i64 2148462193, i64 2148462222, i64 2148462256, i64 2148462287, i64 2148462310}
!44 = !{i64 2148193246, i64 2148193251, i64 2148193264, i64 2148193308, i64 2148193342, i64 2148193363}
