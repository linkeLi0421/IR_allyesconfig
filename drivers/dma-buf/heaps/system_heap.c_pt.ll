; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/heaps/system_heap.c_pt.bc'
source_filename = "../drivers/dma-buf/heaps/system_heap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_heap_ops = type { ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_heap_export_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.system_heap_buffer = type { ptr, %struct.list_head, %struct.mutex, i32, %struct.sg_table, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%union.anon.50 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct.anon.9 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.71, i8 }
%union.anon.71 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.dma_heap_attachment = type { ptr, ptr, %struct.list_head, i8 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.14, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__initcall__kmod_system_heap__246_439_system_heap_create6 = internal global ptr @system_heap_create, section ".initcall6.init", align 4
@__UNIQUE_ID_file247 = internal constant [51 x i8] c"system_heap.file=drivers/dma-buf/heaps/system_heap\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [27 x i8] c"system_heap.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"system\00", [25 x i8] zeroinitializer }, align 32
@system_heap_ops = internal constant { %struct.dma_heap_ops, [28 x i8] } { %struct.dma_heap_ops { ptr @system_heap_allocate }, [28 x i8] zeroinitializer }, align 32
@sys_heap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"system_heap\00", [20 x i8] zeroinitializer }, align 32
@__const.system_heap_allocate.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.1, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@system_heap_allocate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&buffer->lock\00", [18 x i8] zeroinitializer }, align 32
@system_heap_buf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr @system_heap_attach, ptr @system_heap_detach, ptr null, ptr null, ptr @system_heap_map_dma_buf, ptr @system_heap_unmap_dma_buf, ptr @system_heap_dma_buf_release, ptr @system_heap_dma_buf_begin_cpu_access, ptr @system_heap_dma_buf_end_cpu_access, ptr @system_heap_mmap, ptr @system_heap_vmap, ptr @system_heap_vunmap }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/dma-buf/heaps/system_heap.c\00", [60 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 429, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"system_heap_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 421, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"sys_heap\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 24, i32 25 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 341, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 356, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"system_heap_buf_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 302, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 698, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [39 x i8] c"../drivers/dma-buf/heaps/system_heap.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 231, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__initcall__kmod_system_heap__246_439_system_heap_create6, ptr @.str, ptr @system_heap_ops, ptr @sys_heap, ptr @.str.1, ptr @system_heap_allocate.__key, ptr @.str.2, ptr @system_heap_buf_ops, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_heap_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_heap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_heap_allocate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_heap_buf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @system_heap_create() #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_heap_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %exp_info) #6
  %0 = getelementptr inbounds %struct.dma_heap_export_info, ptr %exp_info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dma_heap_export_info, ptr %exp_info, i32 0, i32 2
  %2 = ptrtoint ptr %exp_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %exp_info, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @system_heap_ops, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  %call = call ptr @dma_heap_add(ptr noundef nonnull %exp_info) #6
  store ptr %call, ptr @sys_heap, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %5, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %exp_info) #6
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_heap_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @system_heap_allocate(ptr noundef %heap, i32 noundef %len, i32 noundef %fd_flags, i32 noundef %heap_flags) #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  %pages = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #6
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.system_heap_allocate.exp_info, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pages) #6
  %1 = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 128) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %attachments = getelementptr inbounds %struct.system_heap_buffer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %attachments to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %attachments, ptr %attachments, align 4
  %prev.i = getelementptr inbounds %struct.system_heap_buffer, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %attachments, ptr %prev.i, align 8
  %lock = getelementptr inbounds %struct.system_heap_buffer, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @system_heap_allocate.__key) #6
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %heap, ptr %call7.i.i, align 8
  %len3 = getelementptr inbounds %struct.system_heap_buffer, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len, ptr %len3, align 8
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %pages, ptr %pages, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pages, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not179 = icmp eq i32 %len, 0
  br i1 %cmp.not179, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %compound_order.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %size_remaining.0182 = phi i32 [ %sub, %compound_order.exit.while.body_crit_edge ], [ %len, %if.end.while.body_crit_edge ]
  %max_order.0181 = phi i32 [ %retval.0.i133, %compound_order.exit.while.body_crit_edge ], [ 8, %if.end.while.body_crit_edge ]
  %i.0180 = phi i32 [ %inc, %compound_order.exit.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %9 = call i32 @llvm.read_register.i32(metadata !28) #6
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and1.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %while.body.if.end8_crit_edge, label %fatal_signal_pending.exit

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

fatal_signal_pending.exit:                        ; preds = %while.body
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 116, i32 1
  %17 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %signal.i.i, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not = icmp eq i32 %19, 0
  br i1 %tobool6.not, label %fatal_signal_pending.exit.if.end8_crit_edge, label %fatal_signal_pending.exit.free_buffer_crit_edge

fatal_signal_pending.exit.free_buffer_crit_edge:  ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

fatal_signal_pending.exit.if.end8_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %fatal_signal_pending.exit.if.end8_crit_edge, %while.body.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %size_remaining.0182)
  %cmp1.i = icmp ult i32 %size_remaining.0182, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %max_order.0181)
  %cmp3.i = icmp ult i32 %max_order.0181, 8
  %or.cond.i = or i1 %cmp3.i, %cmp1.i
  br i1 %or.cond.i, label %if.end8.for.inc.i_crit_edge, label %if.end5.i

if.end8.for.inc.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end5.i:                                        ; preds = %if.end8
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 1384898, i32 noundef 8, i32 noundef 0, ptr noundef null) #6
  %tobool.not.i129 = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i129, label %if.end5.i.for.inc.i_crit_edge, label %if.end5.i.if.end12_crit_edge

if.end5.i.if.end12_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %if.end8.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %size_remaining.0182)
  %cmp1.1.i = icmp ult i32 %size_remaining.0182, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %max_order.0181)
  %cmp3.1.i = icmp ult i32 %max_order.0181, 4
  %or.cond.1.i = or i1 %cmp3.1.i, %cmp1.1.i
  br i1 %or.cond.1.i, label %for.inc.1.i, label %if.end5.1.i

if.end5.1.i:                                      ; preds = %for.inc.i
  %call38.i.i.i.1.i = call ptr @__alloc_pages(i32 noundef 1322434, i32 noundef 4, i32 noundef 0, ptr noundef null) #6
  %tobool.not.1.i = icmp eq ptr %call38.i.i.i.1.i, null
  br i1 %tobool.not.1.i, label %if.end5.1.i.if.end5.2.i_crit_edge, label %if.end5.1.i.if.end12_crit_edge

if.end5.1.i.if.end12_crit_edge:                   ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end5.1.i.if.end5.2.i_crit_edge:                ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.2.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size_remaining.0182)
  %cmp1.2.i = icmp ult i32 %size_remaining.0182, 4096
  br i1 %cmp1.2.i, label %for.inc.1.i.free_buffer_crit_edge, label %for.inc.1.i.if.end5.2.i_crit_edge

for.inc.1.i.if.end5.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.2.i

for.inc.1.i.free_buffer_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

if.end5.2.i:                                      ; preds = %for.inc.1.i.if.end5.2.i_crit_edge, %if.end5.1.i.if.end5.2.i_crit_edge
  %call38.i.i.i.2.i = call ptr @__alloc_pages(i32 noundef 1314242, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %tobool.not.2.i = icmp eq ptr %call38.i.i.i.2.i, null
  br i1 %tobool.not.2.i, label %if.end5.2.i.free_buffer_crit_edge, label %if.end5.2.i.if.end12_crit_edge

if.end5.2.i.if.end12_crit_edge:                   ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end5.2.i.free_buffer_crit_edge:                ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

if.end12:                                         ; preds = %if.end5.2.i.if.end12_crit_edge, %if.end5.1.i.if.end12_crit_edge, %if.end5.i.if.end12_crit_edge
  %retval.0.i.ph = phi ptr [ %call38.i.i.i.2.i, %if.end5.2.i.if.end12_crit_edge ], [ %call38.i.i.i.1.i, %if.end5.1.i.if.end12_crit_edge ], [ %call38.i.i.i.i, %if.end5.i.if.end12_crit_edge ]
  %20 = getelementptr inbounds %struct.page, ptr %retval.0.i.ph, i32 0, i32 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef %22, ptr noundef nonnull %pages) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add_tail.exit_crit_edge

if.end12.list_add_tail.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %1, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pages, ptr %20, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %retval.0.i.ph, i32 0, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %20, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end12.list_add_tail.exit_crit_edge
  %27 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %retval.0.i.ph, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i.i.i = icmp eq i32 %28, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !38

if.then.i.i.i:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef nonnull %retval.0.i.ph, ptr noundef nonnull @.str.4) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

PageHead.exit.i.i:                                ; preds = %list_add_tail.exit
  %29 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %retval.0.i.ph, align 4
  %31 = and i32 %30, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.page_size.exit_crit_edge, label %if.end.i.i131

PageHead.exit.i.i.page_size.exit_crit_edge:       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_size.exit

if.end.i.i131:                                    ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = getelementptr %struct.page, ptr %retval.0.i.ph, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.9, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  br label %page_size.exit

page_size.exit:                                   ; preds = %if.end.i.i131, %PageHead.exit.i.i.page_size.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i131 ], [ 0, %PageHead.exit.i.i.page_size.exit_crit_edge ]
  %shl.i.neg = shl i32 -4096, %retval.0.i.i
  %sub = add i32 %shl.i.neg, %size_remaining.0182
  %35 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %retval.0.i.ph, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i.i = icmp eq i32 %36, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageHead.exit.i, !prof !38

if.then.i.i:                                      ; preds = %page_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef nonnull %retval.0.i.ph, ptr noundef nonnull @.str.4) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

PageHead.exit.i:                                  ; preds = %page_size.exit
  %37 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %retval.0.i.ph, align 4
  %39 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i132 = icmp eq i32 %39, 0
  br i1 %tobool.not.i132, label %PageHead.exit.i.compound_order.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_order.exit_crit_edge:    ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compound_order.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = getelementptr %struct.page, ptr %retval.0.i.ph, i32 1, i32 1
  %compound_order.i = getelementptr inbounds %struct.anon.9, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %compound_order.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %compound_order.i, align 1
  %conv.i = zext i8 %42 to i32
  br label %compound_order.exit

compound_order.exit:                              ; preds = %if.end.i, %PageHead.exit.i.compound_order.exit_crit_edge
  %retval.0.i133 = phi i32 [ %conv.i, %if.end.i ], [ 0, %PageHead.exit.i.compound_order.exit_crit_edge ]
  %inc = add i32 %i.0180, 1
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %compound_order.exit.while.end_crit_edge, label %compound_order.exit.while.body_crit_edge

compound_order.exit.while.body_crit_edge:         ; preds = %compound_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

compound_order.exit.while.end_crit_edge:          ; preds = %compound_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %compound_order.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %inc, %compound_order.exit.while.end_crit_edge ]
  %sg_table = getelementptr inbounds %struct.system_heap_buffer, ptr %call7.i.i, i32 0, i32 4
  %call15 = call i32 @sg_alloc_table(ptr noundef %sg_table, i32 noundef %i.0.lcssa, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %while.end.free_buffer_crit_edge

while.end.free_buffer_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

if.end18:                                         ; preds = %while.end
  %43 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pages, align 4
  %cmp25.not183 = icmp eq ptr %44, %pages
  br i1 %cmp25.not183, label %if.end18.for.end_crit_edge, label %for.body.preheader

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end18
  %45 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sg_table, align 4
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.preheader
  %sg.0187 = phi ptr [ %call27, %list_del.exit.for.body_crit_edge ], [ %46, %for.body.preheader ]
  %.pn.in184 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %44, %for.body.preheader ]
  %page.0 = getelementptr i8, ptr %.pn.in184, i32 -4
  %47 = ptrtoint ptr %.pn.in184 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn = load ptr, ptr %.pn.in184, align 4
  %48 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.not.i.i.i134 = icmp eq i32 %49, -1
  br i1 %cmp.i.not.i.i.i134, label %if.then.i.i.i135, label %PageHead.exit.i.i137, !prof !38

if.then.i.i.i135:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.4) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

PageHead.exit.i.i137:                             ; preds = %for.body
  %50 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %page.0, align 4
  %52 = and i32 %51, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i136 = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i136, label %PageHead.exit.i.i137.page_size.exit143_crit_edge, label %if.end.i.i140

PageHead.exit.i.i137.page_size.exit143_crit_edge: ; preds = %PageHead.exit.i.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %page_size.exit143

if.end.i.i140:                                    ; preds = %PageHead.exit.i.i137
  call void @__sanitizer_cov_trace_pc() #8
  %compound_order.i.i138 = getelementptr i8, ptr %.pn.in184, i32 41
  %53 = ptrtoint ptr %compound_order.i.i138 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %compound_order.i.i138, align 1
  %conv.i.i139 = zext i8 %54 to i32
  br label %page_size.exit143

page_size.exit143:                                ; preds = %if.end.i.i140, %PageHead.exit.i.i137.page_size.exit143_crit_edge
  %retval.0.i.i141 = phi i32 [ %conv.i.i139, %if.end.i.i140 ], [ 0, %PageHead.exit.i.i137.page_size.exit143_crit_edge ]
  %shl.i142 = shl i32 4096, %retval.0.i.i141
  %55 = ptrtoint ptr %sg.0187 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sg.0187, align 4
  %57 = ptrtoint ptr %page.0 to i32
  %and2.i.i = and i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i144 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i144, label %do.body11.i.i, label %do.body5.i.i, !prof !40

do.body5.i.i:                                     ; preds = %page_size.exit143
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

do.body11.i.i:                                    ; preds = %page_size.exit143
  %and.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !40

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %56, 3
  %or.i.i = or i32 %and.i.i, %57
  %58 = ptrtoint ptr %sg.0187 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i.i, ptr %sg.0187, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0187, i32 0, i32 1
  %59 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0187, i32 0, i32 2
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shl.i142, ptr %length.i, align 4
  %call27 = call ptr @sg_next(ptr noundef %sg.0187) #6
  %call.i.i145 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in184) #6
  br i1 %call.i.i145, label %if.end.i.i146, label %sg_set_page.exit.list_del.exit_crit_edge

sg_set_page.exit.list_del.exit_crit_edge:         ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i146:                                    ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in184, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %.pn.in184 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %.pn.in184, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i146, %sg_set_page.exit.list_del.exit_crit_edge
  %67 = ptrtoint ptr %.pn.in184 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in184, align 4
  %prev.i147 = getelementptr inbounds %struct.list_head, ptr %.pn.in184, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i147, align 4
  %cmp25.not = icmp eq ptr %.pn, %pages
  br i1 %cmp25.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end18.for.end_crit_edge
  %call34 = call ptr @dma_heap_get_name(ptr noundef %heap) #6
  %69 = ptrtoint ptr %exp_info to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call34, ptr %exp_info, align 4
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @system_heap_buf_ops, ptr %ops, align 4
  %71 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len3, align 8
  %size = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %73 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %size, align 4
  %flags = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %fd_flags, ptr %flags, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i, ptr %priv, align 4
  %call36 = call ptr @dma_buf_export(ptr noundef nonnull %exp_info) #6
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %for.end
  %orig_nents = getelementptr inbounds %struct.system_heap_buffer, ptr %call7.i.i, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %orig_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp43188.not = icmp eq i32 %77, 0
  br i1 %cmp43188.not, label %if.then38.for.end50_crit_edge, label %for.body44.preheader

if.then38.for.end50_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

for.body44.preheader:                             ; preds = %if.then38
  %78 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sg_table, align 4
  br label %for.body44

for.body44:                                       ; preds = %compound_order.exit158.for.body44_crit_edge, %for.body44.preheader
  %sg.1190 = phi ptr [ %call49, %compound_order.exit158.for.body44_crit_edge ], [ %79, %for.body44.preheader ]
  %i.1189 = phi i32 [ %inc48, %compound_order.exit158.for.body44_crit_edge ], [ 0, %for.body44.preheader ]
  %80 = ptrtoint ptr %sg.1190 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sg.1190, align 4
  %and.i.i148 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i148)
  %tobool.i.not.i = icmp eq i32 %and.i.i148, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !40

do.body2.i:                                       ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

sg_page.exit:                                     ; preds = %for.body44
  %and.i149 = and i32 %81, -4
  %82 = inttoptr i32 %and.i149 to ptr
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp.i.not.i.i150 = icmp eq i32 %84, -1
  br i1 %cmp.i.not.i.i150, label %if.then.i.i151, label %PageHead.exit.i153, !prof !38

if.then.i.i151:                                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %85 = inttoptr i32 %and.i149 to ptr
  call void @dump_page(ptr noundef %85, ptr noundef nonnull @.str.4) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

PageHead.exit.i153:                               ; preds = %sg_page.exit
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %82, align 4
  %88 = and i32 %87, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i152 = icmp eq i32 %88, 0
  br i1 %tobool.not.i152, label %PageHead.exit.i153.compound_order.exit158_crit_edge, label %if.end.i156

PageHead.exit.i153.compound_order.exit158_crit_edge: ; preds = %PageHead.exit.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %compound_order.exit158

if.end.i156:                                      ; preds = %PageHead.exit.i153
  call void @__sanitizer_cov_trace_pc() #8
  %89 = getelementptr %struct.page, ptr %82, i32 1, i32 1
  %compound_order.i154 = getelementptr inbounds %struct.anon.9, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %compound_order.i154 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %compound_order.i154, align 1
  %conv.i155 = zext i8 %91 to i32
  br label %compound_order.exit158

compound_order.exit158:                           ; preds = %if.end.i156, %PageHead.exit.i153.compound_order.exit158_crit_edge
  %retval.0.i157 = phi i32 [ %conv.i155, %if.end.i156 ], [ 0, %PageHead.exit.i153.compound_order.exit158_crit_edge ]
  call void @__free_pages(ptr noundef %82, i32 noundef %retval.0.i157) #6
  %inc48 = add nuw i32 %i.1189, 1
  %call49 = call ptr @sg_next(ptr noundef %sg.1190) #6
  %92 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %orig_nents, align 4
  %cmp43 = icmp ult i32 %inc48, %93
  br i1 %cmp43, label %compound_order.exit158.for.body44_crit_edge, label %compound_order.exit158.for.end50_crit_edge

compound_order.exit158.for.end50_crit_edge:       ; preds = %compound_order.exit158
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

compound_order.exit158.for.body44_crit_edge:      ; preds = %compound_order.exit158
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

for.end50:                                        ; preds = %compound_order.exit158.for.end50_crit_edge, %if.then38.for.end50_crit_edge
  call void @sg_free_table(ptr noundef %sg_table) #6
  br label %free_buffer

free_buffer:                                      ; preds = %for.end50, %while.end.free_buffer_crit_edge, %if.end5.2.i.free_buffer_crit_edge, %for.inc.1.i.free_buffer_crit_edge, %fatal_signal_pending.exit.free_buffer_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -12 to ptr), %while.end.free_buffer_crit_edge ], [ %call36, %for.end50 ], [ inttoptr (i32 -12 to ptr), %if.end5.2.i.free_buffer_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.inc.1.i.free_buffer_crit_edge ], [ inttoptr (i32 -4 to ptr), %fatal_signal_pending.exit.free_buffer_crit_edge ]
  %94 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pages, align 4
  %cmp62.not191 = icmp eq ptr %95, %pages
  br i1 %cmp62.not191, label %free_buffer.for.end72_crit_edge, label %free_buffer.for.body64_crit_edge

free_buffer.for.body64_crit_edge:                 ; preds = %free_buffer
  br label %for.body64

free_buffer.for.end72_crit_edge:                  ; preds = %free_buffer
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72

for.body64:                                       ; preds = %compound_order.exit167.for.body64_crit_edge, %free_buffer.for.body64_crit_edge
  %.pn125.in192 = phi ptr [ %.pn125, %compound_order.exit167.for.body64_crit_edge ], [ %95, %free_buffer.for.body64_crit_edge ]
  %page.1 = getelementptr i8, ptr %.pn125.in192, i32 -4
  %96 = ptrtoint ptr %.pn125.in192 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn125 = load ptr, ptr %.pn125.in192, align 4
  %97 = ptrtoint ptr %page.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %page.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %cmp.i.not.i.i159 = icmp eq i32 %98, -1
  br i1 %cmp.i.not.i.i159, label %if.then.i.i160, label %PageHead.exit.i162, !prof !38

if.then.i.i160:                                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %page.1, ptr noundef nonnull @.str.4) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

PageHead.exit.i162:                               ; preds = %for.body64
  %99 = ptrtoint ptr %page.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %page.1, align 4
  %101 = and i32 %100, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i161 = icmp eq i32 %101, 0
  br i1 %tobool.not.i161, label %PageHead.exit.i162.compound_order.exit167_crit_edge, label %if.end.i165

PageHead.exit.i162.compound_order.exit167_crit_edge: ; preds = %PageHead.exit.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %compound_order.exit167

if.end.i165:                                      ; preds = %PageHead.exit.i162
  call void @__sanitizer_cov_trace_pc() #8
  %compound_order.i163 = getelementptr i8, ptr %.pn125.in192, i32 41
  %102 = ptrtoint ptr %compound_order.i163 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %compound_order.i163, align 1
  %conv.i164 = zext i8 %103 to i32
  br label %compound_order.exit167

compound_order.exit167:                           ; preds = %if.end.i165, %PageHead.exit.i162.compound_order.exit167_crit_edge
  %retval.0.i166 = phi i32 [ %conv.i164, %if.end.i165 ], [ 0, %PageHead.exit.i162.compound_order.exit167_crit_edge ]
  call void @__free_pages(ptr noundef %page.1, i32 noundef %retval.0.i166) #6
  %cmp62.not = icmp eq ptr %.pn125, %pages
  br i1 %cmp62.not, label %compound_order.exit167.for.end72_crit_edge, label %compound_order.exit167.for.body64_crit_edge

compound_order.exit167.for.body64_crit_edge:      ; preds = %compound_order.exit167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body64

compound_order.exit167.for.end72_crit_edge:       ; preds = %compound_order.exit167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72

for.end72:                                        ; preds = %compound_order.exit167.for.end72_crit_edge, %free_buffer.for.end72_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %for.end72 ], [ %call36, %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pages) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_heap_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @system_heap_attach(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef %attachment) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sg_table = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %orig_nents.i = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_nents.i, align 4
  %call2.i = tail call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i.i, i32 noundef %5, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %if.then3

if.end6.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %orig_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28.not.i = icmp eq i32 %7, 0
  br i1 %cmp28.not.i, label %if.end6.i.dup_sg_table.exit_crit_edge, label %for.body.preheader.i

if.end6.i.dup_sg_table.exit_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dup_sg_table.exit

for.body.preheader.i:                             ; preds = %if.end6.i
  %8 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg_table, align 4
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %sg_set_page.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %new_sg.031.i = phi ptr [ %call10.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ %11, %for.body.preheader.i ]
  %sg.030.i = phi ptr [ %call11.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ %9, %for.body.preheader.i ]
  %i.029.i = phi i32 [ %inc.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %12 = ptrtoint ptr %sg.030.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg.030.i, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !40

do.body2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i
  %14 = ptrtoint ptr %new_sg.031.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_sg.031.i, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !40

do.body19.i.i.i:                                  ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

sg_set_page.exit.i:                               ; preds = %sg_page.exit.i
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.030.i, i32 0, i32 1
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.030.i, i32 0, i32 2
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 4
  %and.i.i = and i32 %13, -4
  %and.i.i27.i = and i32 %15, 3
  %or.i.i.i = or i32 %and.i.i27.i, %and.i.i
  %20 = ptrtoint ptr %new_sg.031.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i.i, ptr %new_sg.031.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %new_sg.031.i, i32 0, i32 1
  %21 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %new_sg.031.i, i32 0, i32 2
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %length.i.i, align 4
  %call10.i = tail call ptr @sg_next(ptr noundef %new_sg.031.i) #6
  %inc.i = add nuw i32 %i.029.i, 1
  %call11.i = tail call ptr @sg_next(ptr noundef %sg.030.i) #6
  %23 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %orig_nents.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %sg_set_page.exit.i.for.body.i_crit_edge, label %sg_set_page.exit.i.dup_sg_table.exit_crit_edge

sg_set_page.exit.i.dup_sg_table.exit_crit_edge:   ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dup_sg_table.exit

sg_set_page.exit.i.for.body.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dup_sg_table.exit:                                ; preds = %sg_set_page.exit.i.dup_sg_table.exit_crit_edge, %if.end6.i.dup_sg_table.exit_crit_edge
  %cmp.i24 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %dup_sg_table.exit.if.then3_crit_edge, label %if.end4

dup_sg_table.exit.if.then3_crit_edge:             ; preds = %dup_sg_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %dup_sg_table.exit.if.then3_crit_edge, %if.then4.i, %if.end.if.then3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end4:                                          ; preds = %dup_sg_table.exit
  %table5 = getelementptr inbounds %struct.dma_heap_attachment, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %table5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %table5, align 4
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %call7.i.i, align 8
  %list = getelementptr inbounds %struct.dma_heap_attachment, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.dma_heap_attachment, ptr %call7.i.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list, ptr %prev.i, align 4
  %mapped = getelementptr inbounds %struct.dma_heap_attachment, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %mapped, align 8
  %priv7 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %32 = ptrtoint ptr %priv7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %priv7, align 4
  %lock = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %attachments = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %attachments to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %attachments, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %attachments, ptr noundef %34) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add.exit_crit_edge

if.end4.list_add.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %prev1.i.i, align 4
  %36 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %list, align 8
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %attachments, ptr %prev.i, align 4
  %38 = ptrtoint ptr %attachments to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list, ptr %attachments, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end4.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @system_heap_detach(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef readonly %attachment) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %list = getelementptr inbounds %struct.dma_heap_attachment, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %table = getelementptr inbounds %struct.dma_heap_attachment, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %table, align 4
  tail call void @sg_free_table(ptr noundef %13) #6
  %14 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %table, align 4
  tail call void @kfree(ptr noundef %15) #6
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @system_heap_map_dma_buf(ptr nocapture noundef readonly %attachment, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %table1 = getelementptr inbounds %struct.dma_heap_attachment, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %table1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table1, align 4
  %dev = getelementptr inbounds %struct.dma_buf_attachment, ptr %attachment, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call i32 @dma_map_sgtable(ptr noundef %5, ptr noundef %3, i32 noundef %direction, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mapped = getelementptr inbounds %struct.dma_heap_attachment, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mapped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %6, %if.then ], [ %3, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @system_heap_unmap_dma_buf(ptr nocapture noundef readonly %attachment, ptr nocapture noundef readonly %table, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @dma_unmap_sg_attrs(ptr noundef %4, ptr noundef %6, i32 noundef %8, i32 noundef %direction, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @system_heap_dma_buf_release(ptr nocapture noundef readonly %dmabuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sg_table = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 4
  %orig_nents = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orig_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg_table, align 4
  br label %for.body

for.body:                                         ; preds = %compound_order.exit.for.body_crit_edge, %for.body.preheader
  %i.011 = phi i32 [ %inc, %compound_order.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.010 = phi ptr [ %call2, %compound_order.exit.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %6 = ptrtoint ptr %sg.010 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg.010, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !40

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageHead.exit.i, !prof !38

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = inttoptr i32 %and.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.4) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

PageHead.exit.i:                                  ; preds = %sg_page.exit
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %PageHead.exit.i.compound_order.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_order.exit_crit_edge:    ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compound_order.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = getelementptr %struct.page, ptr %8, i32 1, i32 1
  %compound_order.i = getelementptr inbounds %struct.anon.9, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %compound_order.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %compound_order.i, align 1
  %conv.i = zext i8 %17 to i32
  br label %compound_order.exit

compound_order.exit:                              ; preds = %if.end.i, %PageHead.exit.i.compound_order.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ 0, %PageHead.exit.i.compound_order.exit_crit_edge ]
  tail call void @__free_pages(ptr noundef %8, i32 noundef %retval.0.i) #6
  %inc = add nuw i32 %i.011, 1
  %call2 = tail call ptr @sg_next(ptr noundef %sg.010) #6
  %18 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %orig_nents, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %compound_order.exit.for.body_crit_edge, label %compound_order.exit.for.end_crit_edge

compound_order.exit.for.end_crit_edge:            ; preds = %compound_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

compound_order.exit.for.body_crit_edge:           ; preds = %compound_order.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %compound_order.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @sg_free_table(ptr noundef %sg_table) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @system_heap_dma_buf_begin_cpu_access(ptr nocapture noundef readonly %dmabuf, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %vmap_cnt = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %4 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %vaddr = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %9(ptr noundef %8, i32 noundef %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %attachments = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %attachments to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn21 = load ptr, ptr %attachments, align 4
  %cmp.not23 = icmp eq ptr %.pn21, %attachments
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn21, %if.end.for.body_crit_edge ]
  %mapped = getelementptr i8, ptr %.pn24, i32 8
  %11 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mapped, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %a.025 = getelementptr i8, ptr %.pn24, i32 -8
  %13 = ptrtoint ptr %a.025 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a.025, align 4
  %table = getelementptr i8, ptr %.pn24, i32 -4
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %table, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %14, ptr noundef %18, i32 noundef %20, i32 noundef %direction) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %attachments
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @system_heap_dma_buf_end_cpu_access(ptr nocapture noundef readonly %dmabuf, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %vmap_cnt = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %4 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %vaddr = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %9(ptr noundef %8, i32 noundef %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %attachments = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %attachments to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn21 = load ptr, ptr %attachments, align 4
  %cmp.not23 = icmp eq ptr %.pn21, %attachments
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn21, %if.end.for.body_crit_edge ]
  %mapped = getelementptr i8, ptr %.pn24, i32 8
  %11 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mapped, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %a.025 = getelementptr i8, ptr %.pn24, i32 -8
  %13 = ptrtoint ptr %a.025 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a.025, align 4
  %table = getelementptr i8, ptr %.pn24, i32 -4
  %15 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %table, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %14, ptr noundef %18, i32 noundef %20, i32 noundef %direction) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %attachments
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @system_heap_mmap(ptr nocapture noundef readonly %dmabuf, ptr noundef %vma) #0 align 64 {
entry:
  %piter = alloca %struct.sg_page_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %sg_table = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %piter) #6
  %4 = getelementptr inbounds %struct.sg_page_iter, ptr %piter, i32 0, i32 1
  %5 = call ptr @memset(ptr %piter, i32 255, i32 16)
  %6 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg_table, align 4
  %orig_nents = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %orig_nents, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %piter, ptr noundef %7, i32 noundef %9, i32 noundef %11) #6
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.for.cond_crit_edge, %entry
  %addr.0 = phi i32 [ %3, %entry ], [ %add3, %cleanup.for.cond_crit_edge ]
  %call = call zeroext i1 @__sg_page_iter_next(ptr noundef nonnull %piter) #6
  br i1 %call, label %for.body, label %for.cond.cleanup6_crit_edge

for.cond.cleanup6_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup6

for.body:                                         ; preds = %for.cond
  %12 = ptrtoint ptr %piter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %piter, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page_iter_page.exit, label %do.body2.i.i, !prof !40

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

sg_page_iter_page.exit:                           ; preds = %for.body
  %and.i.i = and i32 %15, -4
  %16 = inttoptr i32 %and.i.i to ptr
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %20
  %21 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_page_prot, align 4
  %call2 = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %addr.0, i32 noundef %add, i32 noundef 4096, i32 noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %sg_page_iter_page.exit.cleanup6_crit_edge

sg_page_iter_page.exit.cleanup6_crit_edge:        ; preds = %sg_page_iter_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup6

cleanup:                                          ; preds = %sg_page_iter_page.exit
  %add3 = add i32 %addr.0, 4096
  %23 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_end, align 4
  %cmp.not = icmp ult i32 %add3, %24
  br i1 %cmp.not, label %cleanup.for.cond_crit_edge, label %cleanup.cleanup6_crit_edge

cleanup.cleanup6_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup6

cleanup.for.cond_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup6:                                         ; preds = %cleanup.cleanup6_crit_edge, %sg_page_iter_page.exit.cleanup6_crit_edge, %for.cond.cleanup6_crit_edge
  %retval.2 = phi i32 [ 0, %cleanup.cleanup6_crit_edge ], [ 0, %for.cond.cleanup6_crit_edge ], [ %call2, %sg_page_iter_page.exit.cleanup6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %piter) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @system_heap_vmap(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef writeonly %map) #0 align 64 {
entry:
  %piter.i = alloca %struct.sg_page_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %vmap_cnt = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %3, 1
  %4 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %vmap_cnt, align 4
  %vaddr2 = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 6
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
  %len.i = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %add.i = add i32 %10, 4095
  %div47.i = lshr i32 %add.i, 12
  %mul.i = shl nuw nsw i32 %div47.i, 2
  %call.i = tail call noalias ptr @vmalloc(i32 noundef %mul.i) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %piter.i) #6
  %11 = getelementptr inbounds %struct.sg_page_iter, ptr %piter.i, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %call.i, null
  %12 = call ptr @memset(ptr %piter.i, i32 255, i32 16)
  br i1 %tobool.not.i, label %if.end.system_heap_do_vmap.exit.thread_crit_edge, label %if.end.i

if.end.system_heap_do_vmap.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %system_heap_do_vmap.exit.thread

if.end.i:                                         ; preds = %if.end
  %sg_table.i = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %sg_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg_table.i, align 4
  %orig_nents.i = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %orig_nents.i, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %piter.i, ptr noundef %14, i32 noundef %16, i32 noundef 0) #6
  %call248.i = call zeroext i1 @__sg_page_iter_next(ptr noundef nonnull %piter.i) #6
  br i1 %call248.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %sg_page_iter_page.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.049.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %sg_page_iter_page.exit.i.for.body.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %tmp.049.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %div47.i)
  %cmp.not.i = icmp slt i32 %sub.ptr.div.i, %div47.i
  br i1 %cmp.not.i, label %for.body.i.if.end17.i_crit_edge, label %do.end.i, !prof !40

for.body.i.if.end17.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 231, i32 noundef 9, ptr noundef null) #6
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %for.body.i.if.end17.i_crit_edge
  %17 = ptrtoint ptr %piter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %piter.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page_iter_page.exit.i, label %do.body2.i.i.i, !prof !40

do.body2.i.i.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

sg_page_iter_page.exit.i:                         ; preds = %if.end17.i
  %and.i.i.i = and i32 %20, -4
  %21 = inttoptr i32 %and.i.i.i to ptr
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %11, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %21, i32 %23
  %incdec.ptr.i = getelementptr ptr, ptr %tmp.049.i, i32 1
  %24 = ptrtoint ptr %tmp.049.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i.i, ptr %tmp.049.i, align 4
  %call2.i = call zeroext i1 @__sg_page_iter_next(ptr noundef nonnull %piter.i) #6
  br i1 %call2.i, label %sg_page_iter_page.exit.i.for.body.i_crit_edge, label %sg_page_iter_page.exit.i.for.end.i_crit_edge

sg_page_iter_page.exit.i.for.end.i_crit_edge:     ; preds = %sg_page_iter_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

sg_page_iter_page.exit.i.for.body.i_crit_edge:    ; preds = %sg_page_iter_page.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %sg_page_iter_page.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %25, 512
  %call26.i = call ptr @vmap(ptr noundef nonnull %call.i, i32 noundef %div47.i, i32 noundef 4, i32 noundef %or.i) #6
  call void @vfree(ptr noundef nonnull %call.i) #6
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %for.end.i.system_heap_do_vmap.exit.thread_crit_edge, label %system_heap_do_vmap.exit

for.end.i.system_heap_do_vmap.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %system_heap_do_vmap.exit.thread

system_heap_do_vmap.exit.thread:                  ; preds = %for.end.i.system_heap_do_vmap.exit.thread_crit_edge, %if.end.system_heap_do_vmap.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %piter.i) #6
  br label %if.then4

system_heap_do_vmap.exit:                         ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %piter.i) #6
  %cmp.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %system_heap_do_vmap.exit.if.then4_crit_edge, label %if.end6

system_heap_do_vmap.exit.if.then4_crit_edge:      ; preds = %system_heap_do_vmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %system_heap_do_vmap.exit.if.then4_crit_edge, %system_heap_do_vmap.exit.thread
  %retval.0.i26 = phi ptr [ inttoptr (i32 -12 to ptr), %system_heap_do_vmap.exit.thread ], [ %call26.i, %system_heap_do_vmap.exit.if.then4_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i26 to i32
  br label %out

if.end6:                                          ; preds = %system_heap_do_vmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vaddr7 = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %vaddr7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call26.i, ptr %vaddr7, align 4
  %28 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vmap_cnt, align 4
  %inc9 = add i32 %29, 1
  store i32 %inc9, ptr %vmap_cnt, align 4
  %30 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call26.i, ptr %map, align 4
  %is_iomem.i23 = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %31 = ptrtoint ptr %is_iomem.i23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %is_iomem.i23, align 4
  br label %out

out:                                              ; preds = %if.end6, %if.then4, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %26, %if.then4 ], [ 0, %if.end6 ]
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @system_heap_vunmap(ptr nocapture noundef readonly %dmabuf, ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dmabuf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %vmap_cnt = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vmap_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmap_cnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %vmap_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vaddr = getelementptr inbounds %struct.system_heap_buffer, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr, align 4
  tail call void @vunmap(ptr noundef %5) #6
  %6 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vaddr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %7 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_iomem.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %map, align 4
  br i1 %tobool.not.i, label %if.end.dma_buf_map_clear.exit_crit_edge, label %if.then.i

if.end.dma_buf_map_clear.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_buf_map_clear.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_system_heap__246_439_system_heap_create6, !1, !"__initcall__kmod_system_heap__246_439_system_heap_create6", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 439, i32 1}
!2 = !{ptr @__UNIQUE_ID_file247, !3, !"__UNIQUE_ID_file247", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 440, i32 1}
!4 = !{ptr @__UNIQUE_ID_license248, !3, !"__UNIQUE_ID_license248", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 429, i32 18}
!7 = !{ptr @system_heap_ops, !8, !"system_heap_ops", i1 false, i1 false}
!8 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 421, i32 34}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 341, i32 2}
!11 = !{ptr @system_heap_allocate.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 356, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"orders", i1 false, i1 false}
!15 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 55, i32 27}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!18 = distinct !{null, !19, !"order_flags", i1 false, i1 false}
!19 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 48, i32 14}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!22 = !{ptr @system_heap_buf_ops, !23, !"system_heap_buf_ops", i1 false, i1 false}
!23 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 302, i32 33}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 231, i32 3}
!26 = !{ptr @sys_heap, !27, !"sys_heap", i1 false, i1 false}
!27 = !{!"../drivers/dma-buf/heaps/system_heap.c", i32 24, i32 25}
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
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2151140607, i64 2151141098, i64 2151140644, i64 2151140700, i64 2151140734, i64 2151140758, i64 2151140799, i64 2151140820, i64 2151140848, i64 2151140882}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2153392704, i64 2153393196, i64 2153392741, i64 2153392797, i64 2153392831, i64 2153392855, i64 2153392896, i64 2153392917, i64 2153392945, i64 2153392979}
!42 = !{i64 2153394314, i64 2153394806, i64 2153394351, i64 2153394407, i64 2153394441, i64 2153394465, i64 2153394506, i64 2153394527, i64 2153394555, i64 2153394589}
!43 = !{i64 2153400323, i64 2153400815, i64 2153400360, i64 2153400416, i64 2153400450, i64 2153400474, i64 2153400515, i64 2153400536, i64 2153400564, i64 2153400598}
!44 = !{i8 0, i8 2}
