; ModuleID = '/llk/IR_all_yes/drivers/vdpa/vdpa_user/iova_domain.c_pt.bc'
source_filename = "../drivers/vdpa/vdpa_user/iova_domain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.vduse_iova_domain = type { %struct.iova_domain, %struct.iova_domain, ptr, i32, i32, i32, ptr, %struct.spinlock, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vhost_iotlb_map = type { %struct.rb_node, %struct.list_head, i64, i64, i64, i64, i32, i32, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.vdpa_map_file = type { ptr, i64 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vduse_bounce_map = type { ptr, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.98, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.98 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.74, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.74 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.78, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.56 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.56, i32, ptr, ptr, %union.anon.57, ptr, ptr, ptr, ptr, ptr }
%union.anon.57 = type { i32 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/vdpa/vdpa_user/iova_domain.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[vduse-domain]\00", [17 x i8] zeroinitializer }, align 32
@vduse_domain_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vduse_domain_mmap, i32 0, ptr null, ptr null, ptr @vduse_domain_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vduse_domain_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&domain->iotlb_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@vduse_domain_mmap_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vduse_domain_mmap_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 396, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 507, i32 28 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"vduse_domain_fops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 465, i32 37 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 513, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"vduse_domain_mmap_ops\00", align 1
@___asan_gen_.21 = private constant [40 x i8] c"../drivers/vdpa/vdpa_user/iova_domain.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 433, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1160, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @vduse_domain_fops, ptr @vduse_domain_create.__key, ptr @.str.2, ptr @vduse_domain_mmap_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_domain_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_domain_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vduse_domain_mmap_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vduse_domain_set_map(ptr noundef %domain, ptr noundef %iotlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock) #8
  %iotlb.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 6
  %0 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iotlb.i, align 4
  %call5.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %1, i64 noundef 0, i64 noundef -1) #8
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %entry.vduse_iotlb_del_range.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vduse_iotlb_del_range.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_iotlb_del_range.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %entry.while.body.i_crit_edge ]
  %opaque.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call7.i, i32 0, i32 9
  %2 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opaque.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @fput(ptr noundef %5) #8
  tail call void @kfree(ptr noundef %3) #8
  %6 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iotlb.i, align 4
  tail call void @vhost_iotlb_map_free(ptr noundef %7, ptr noundef nonnull %call7.i) #8
  %8 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iotlb.i, align 4
  %call.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %9, i64 noundef 0, i64 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.vduse_iotlb_del_range.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.vduse_iotlb_del_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_iotlb_del_range.exit

vduse_iotlb_del_range.exit:                       ; preds = %while.body.i.vduse_iotlb_del_range.exit_crit_edge, %entry.vduse_iotlb_del_range.exit_crit_edge
  %call = tail call ptr @vhost_iotlb_itree_first(ptr noundef %iotlb, i64 noundef 0, i64 noundef -1) #8
  %tobool.not40 = icmp eq ptr %call, null
  br i1 %tobool.not40, label %vduse_iotlb_del_range.exit.cleanup_crit_edge, label %vduse_iotlb_del_range.exit.for.body_crit_edge

vduse_iotlb_del_range.exit.for.body_crit_edge:    ; preds = %vduse_iotlb_del_range.exit
  br label %for.body

vduse_iotlb_del_range.exit.cleanup_crit_edge:     ; preds = %vduse_iotlb_del_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %vduse_iotlb_del_range.exit.for.body_crit_edge
  %map.041 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call, %vduse_iotlb_del_range.exit.for.body_crit_edge ]
  %opaque = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.041, i32 0, i32 9
  %10 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opaque, align 8
  %start1 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.041, i32 0, i32 2
  %12 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start1, align 8
  %last2 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.041, i32 0, i32 3
  %14 = ptrtoint ptr %last2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %last2, align 8
  %addr = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.041, i32 0, i32 5
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %addr, align 8
  %perm = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.041, i32 0, i32 6
  %18 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %perm, align 8
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 8
  %offset = getelementptr inbounds %struct.vdpa_map_file, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offset, align 8
  %call3 = tail call fastcc i32 @vduse_iotlb_add_range(ptr noundef %domain, i64 noundef %13, i64 noundef %15, i64 noundef %17, i32 noundef %19, ptr noundef %21, i64 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %err

for.inc:                                          ; preds = %for.body
  %call5 = tail call ptr @vhost_iotlb_itree_next(ptr noundef nonnull %map.041, i64 noundef 0, i64 noundef -1) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err:                                              ; preds = %for.body
  %24 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iotlb.i, align 4
  %call5.i32 = tail call ptr @vhost_iotlb_itree_first(ptr noundef %25, i64 noundef 0, i64 noundef -1) #8
  %tobool.not6.i33 = icmp eq ptr %call5.i32, null
  br i1 %tobool.not6.i33, label %err.cleanup_crit_edge, label %err.while.body.i38_crit_edge

err.while.body.i38_crit_edge:                     ; preds = %err
  br label %while.body.i38

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i38:                                   ; preds = %while.body.i38.while.body.i38_crit_edge, %err.while.body.i38_crit_edge
  %call7.i34 = phi ptr [ %call.i36, %while.body.i38.while.body.i38_crit_edge ], [ %call5.i32, %err.while.body.i38_crit_edge ]
  %opaque.i35 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call7.i34, i32 0, i32 9
  %26 = ptrtoint ptr %opaque.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %opaque.i35, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  tail call void @fput(ptr noundef %29) #8
  tail call void @kfree(ptr noundef %27) #8
  %30 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iotlb.i, align 4
  tail call void @vhost_iotlb_map_free(ptr noundef %31, ptr noundef nonnull %call7.i34) #8
  %32 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iotlb.i, align 4
  %call.i36 = tail call ptr @vhost_iotlb_itree_first(ptr noundef %33, i64 noundef 0, i64 noundef -1) #8
  %tobool.not.i37 = icmp eq ptr %call.i36, null
  br i1 %tobool.not.i37, label %while.body.i38.cleanup_crit_edge, label %while.body.i38.while.body.i38_crit_edge

while.body.i38.while.body.i38_crit_edge:          ; preds = %while.body.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i38

while.body.i38.cleanup_crit_edge:                 ; preds = %while.body.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.i38.cleanup_crit_edge, %err.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %vduse_iotlb_del_range.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vduse_iotlb_del_range.exit.cleanup_crit_edge ], [ %call3, %err.cleanup_crit_edge ], [ %call3, %while.body.i38.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_first(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vduse_iotlb_add_range(ptr nocapture noundef readonly %domain, i64 noundef %start, i64 noundef %last, i64 noundef %addr, i32 noundef %perm, ptr noundef %file, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_count.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #8, !srcloc !25
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %file, ptr %call7.i, align 8
  %offset3 = getelementptr inbounds %struct.vdpa_map_file, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %offset3 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %offset, ptr %offset3, align 8
  %iotlb = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 6
  %4 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iotlb, align 4
  %call4 = tail call i32 @vhost_iotlb_add_range_ctx(ptr noundef %5, i64 noundef %start, i64 noundef %last, i64 noundef %addr, i32 noundef %perm, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i, align 8
  tail call void @fput(ptr noundef %7) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_next(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vduse_domain_clear_map(ptr noundef %domain, ptr noundef %iotlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock) #8
  %call = tail call ptr @vhost_iotlb_itree_first(ptr noundef %iotlb, i64 noundef 0, i64 noundef -1) #8
  %tobool.not12 = icmp eq ptr %call, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iotlb.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %vduse_iotlb_del_range.exit.for.body_crit_edge, %for.body.lr.ph
  %map.013 = phi ptr [ %call, %for.body.lr.ph ], [ %call3, %vduse_iotlb_del_range.exit.for.body_crit_edge ]
  %start1 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.013, i32 0, i32 2
  %0 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start1, align 8
  %last2 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.013, i32 0, i32 3
  %2 = ptrtoint ptr %last2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last2, align 8
  %4 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iotlb.i, align 4
  %call5.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %5, i64 noundef %1, i64 noundef %3) #8
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %for.body.vduse_iotlb_del_range.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.vduse_iotlb_del_range.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_iotlb_del_range.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %for.body.while.body.i_crit_edge ]
  %opaque.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call7.i, i32 0, i32 9
  %6 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opaque.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void @fput(ptr noundef %9) #8
  tail call void @kfree(ptr noundef %7) #8
  %10 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iotlb.i, align 4
  tail call void @vhost_iotlb_map_free(ptr noundef %11, ptr noundef nonnull %call7.i) #8
  %12 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iotlb.i, align 4
  %call.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %13, i64 noundef %1, i64 noundef %3) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.vduse_iotlb_del_range.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.vduse_iotlb_del_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_iotlb_del_range.exit

vduse_iotlb_del_range.exit:                       ; preds = %while.body.i.vduse_iotlb_del_range.exit_crit_edge, %for.body.vduse_iotlb_del_range.exit_crit_edge
  %call3 = tail call ptr @vhost_iotlb_itree_next(ptr noundef nonnull %map.013, i64 noundef 0, i64 noundef -1) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %vduse_iotlb_del_range.exit.for.end_crit_edge, label %vduse_iotlb_del_range.exit.for.body_crit_edge

vduse_iotlb_del_range.exit.for.body_crit_edge:    ; preds = %vduse_iotlb_del_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

vduse_iotlb_del_range.exit.for.end_crit_edge:     ; preds = %vduse_iotlb_del_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %vduse_iotlb_del_range.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vduse_domain_reset_bounce_map(ptr noundef %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bounce_map = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 5
  %0 = ptrtoint ptr %bounce_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bounce_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock) #8
  %2 = ptrtoint ptr %bounce_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bounce_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.unlock_crit_edge, label %if.end4

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end4:                                          ; preds = %if.end
  %bounce_size = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 3
  %4 = ptrtoint ptr %bounce_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bounce_size, align 4
  %sub = add i32 %5, -1
  %conv = zext i32 %sub to i64
  %iotlb.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 6
  %6 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iotlb.i, align 4
  %call5.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %7, i64 noundef 0, i64 noundef %conv) #8
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %if.end4.vduse_iotlb_del_range.exit_crit_edge, label %if.end4.while.body.i_crit_edge

if.end4.while.body.i_crit_edge:                   ; preds = %if.end4
  br label %while.body.i

if.end4.vduse_iotlb_del_range.exit_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_iotlb_del_range.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end4.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %if.end4.while.body.i_crit_edge ]
  %opaque.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call7.i, i32 0, i32 9
  %8 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %opaque.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void @fput(ptr noundef %11) #8
  tail call void @kfree(ptr noundef %9) #8
  %12 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iotlb.i, align 4
  tail call void @vhost_iotlb_map_free(ptr noundef %13, ptr noundef nonnull %call7.i) #8
  %14 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iotlb.i, align 4
  %call.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %15, i64 noundef 0, i64 noundef %conv) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.vduse_iotlb_del_range.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.vduse_iotlb_del_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_iotlb_del_range.exit

vduse_iotlb_del_range.exit:                       ; preds = %while.body.i.vduse_iotlb_del_range.exit_crit_edge, %if.end4.vduse_iotlb_del_range.exit_crit_edge
  %16 = ptrtoint ptr %bounce_map to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bounce_map, align 4
  br label %unlock

unlock:                                           ; preds = %vduse_iotlb_del_range.exit, %if.end.unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  br label %return

return:                                           ; preds = %unlock, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vduse_domain_map_page(ptr noundef %domain, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bounce_size = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %bounce_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bounce_size, align 4
  %sub = add i32 %1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %3
  %shl = shl i32 %add, 12
  %add1 = add i32 %shl, %offset
  %granule.i.i = getelementptr inbounds %struct.iova_domain, ptr %domain, i32 0, i32 4
  %4 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %granule.i.i, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #8, !range !26
  %sub.i.i = add i32 %size, -1
  %add.i.i = add i32 %5, %sub.i.i
  %neg.i.i = sub i32 0, %5
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %shr.i = lshr i32 %and.i.i, %6
  %shr2.i = lshr i32 %sub, %6
  %call3.i = tail call i32 @alloc_iova_fast(ptr noundef %domain, i32 noundef %shr.i, i32 noundef %shr2.i, i1 noundef zeroext true) #8
  %shl.i = shl i32 %call3.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool.not = icmp eq i32 %shl.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bounce_map.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 5
  %7 = ptrtoint ptr %bounce_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bounce_map.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  %iotlb_lock.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock.i) #8
  %9 = ptrtoint ptr %bounce_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bounce_map.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.vduse_domain_init_bounce_map.exit.thread46_crit_edge

if.end.i.vduse_domain_init_bounce_map.exit.thread46_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_domain_init_bounce_map.exit.thread46

if.end4.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %bounce_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bounce_size, align 4
  %sub.i = add i32 %12, -1
  %conv.i = zext i32 %sub.i to i64
  %file.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 8
  %13 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file.i, align 4
  %call.i = tail call fastcc i32 @vduse_iotlb_add_range(ptr noundef %domain, i64 noundef 0, i64 noundef %conv.i, i64 noundef 0, i32 noundef 3, ptr noundef %14, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %vduse_domain_init_bounce_map.exit

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %bounce_map.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %bounce_map.i, align 4
  br label %vduse_domain_init_bounce_map.exit.thread46

vduse_domain_init_bounce_map.exit.thread46:       ; preds = %if.end7.i, %if.end.i.vduse_domain_init_bounce_map.exit.thread46_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock.i) #8
  br label %if.end5

vduse_domain_init_bounce_map.exit:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock.i) #8
  br label %err

if.end5:                                          ; preds = %vduse_domain_init_bounce_map.exit.thread46, %if.end.if.end5_crit_edge
  %conv = zext i32 %shl.i to i64
  %conv6 = zext i32 %size to i64
  %add.i = add nsw i64 %conv6, -1
  %sub.i33 = add nsw i64 %add.i, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i33, i64 %conv)
  %cmp.not16.i = icmp ult i64 %sub.i33, %conv
  br i1 %cmp.not16.i, label %if.end5.if.end11_crit_edge, label %while.body.lr.ph.i

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

while.body.lr.ph.i:                               ; preds = %if.end5
  %conv7 = zext i32 %add1 to i64
  %bounce_maps.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %paddr.addr.018.i = phi i64 [ %conv7, %while.body.lr.ph.i ], [ %add6.i, %if.end5.i.while.body.i_crit_edge ]
  %iova.addr.017.i = phi i64 [ %conv, %while.body.lr.ph.i ], [ %add7.i, %if.end5.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %bounce_maps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bounce_maps.i, align 4
  %shr.i34 = lshr i64 %iova.addr.017.i, 12
  %idxprom.i = trunc i64 %shr.i34 to i32
  %arrayidx.i = getelementptr %struct.vduse_bounce_map, ptr %17, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i35 = icmp eq ptr %19, null
  br i1 %tobool.not.i35, label %if.then.i, label %while.body.i.if.end5.i_crit_edge

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38.i.i.i.i, ptr %arrayidx.i, align 8
  %tobool3.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool3.not.i, label %if.then.i.err_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i.err_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %while.body.i.if.end5.i_crit_edge
  %orig_phys.i = getelementptr %struct.vduse_bounce_map, ptr %17, i32 %idxprom.i, i32 1
  %21 = ptrtoint ptr %orig_phys.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %paddr.addr.018.i, ptr %orig_phys.i, align 8
  %add6.i = add i64 %paddr.addr.018.i, 4096
  %add7.i = add i64 %iova.addr.017.i, 4096
  %cmp.not.i = icmp ugt i64 %add7.i, %sub.i33
  br i1 %cmp.not.i, label %if.end5.i.if.end11_crit_edge, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end5.i.if.end11_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.end5.i.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %switch = icmp ult i32 %dir, 2
  br i1 %switch, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vduse_domain_bounce(ptr noundef %domain, i32 noundef %shl.i, i32 noundef %size, i32 noundef 1)
  br label %cleanup

err:                                              ; preds = %if.then.i.err_crit_edge, %vduse_domain_init_bounce_map.exit
  %22 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %granule.i.i, align 4
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false) #8, !range !26
  %add.i.i39 = add i32 %23, %sub.i.i
  %neg.i.i40 = sub i32 0, %23
  %and.i.i41 = and i32 %add.i.i39, %neg.i.i40
  %shr.i42 = lshr i32 %and.i.i41, %24
  %shr2.i43 = lshr i32 %shl.i, %24
  tail call void @free_iova_fast(ptr noundef %domain, i32 noundef %shr2.i43, i32 noundef %shr.i42) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then15, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %err ], [ -1, %entry.cleanup_crit_edge ], [ %shl.i, %if.end11.cleanup_crit_edge ], [ %shl.i, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vduse_domain_bounce(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %size, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bounce_size = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %bounce_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bounce_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %iova)
  %cmp.not = icmp ule i32 %1, %iova
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not53 = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp.not, %tobool.not53
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %bounce_maps = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2.i = icmp eq i32 %dir, 1
  br label %while.body

while.body:                                       ; preds = %do_bounce.exit.while.body_crit_edge, %while.body.lr.ph
  %iova.addr.055 = phi i32 [ %iova, %while.body.lr.ph ], [ %add33, %do_bounce.exit.while.body_crit_edge ]
  %size.addr.054 = phi i32 [ %size, %while.body.lr.ph ], [ %sub32, %do_bounce.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %bounce_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bounce_maps, align 4
  %shr = lshr i32 %iova.addr.055, 12
  %arrayidx = getelementptr %struct.vduse_bounce_map, ptr %3, i32 %shr
  %and = and i32 %iova.addr.055, 4095
  %sub = sub nuw nsw i32 4096, %and
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size.addr.054)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %while.body.do.end_crit_edge, label %lor.rhs

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %while.body
  %orig_phys = getelementptr %struct.vduse_bounce_map, ptr %3, i32 %shr, i32 1
  %7 = ptrtoint ptr %orig_phys to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %orig_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %8)
  %cmp3 = icmp eq i64 %8, 4294967295
  br i1 %cmp3, label %lor.rhs.do.end_crit_edge, label %while.body.lr.ph.i, !prof !27

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %while.body.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %lor.rhs
  %call = tail call ptr @page_address(ptr noundef nonnull %6) #8
  %add.ptr = getelementptr i8, ptr %call, i32 %and
  %9 = ptrtoint ptr %orig_phys to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %orig_phys, align 8
  %11 = trunc i64 %10 to i32
  %conv31 = add i32 %and, %11
  %and.i = and i32 %conv31, 4095
  %shr.i = lshr i32 %conv31, 12
  %sub.peel.i = sub nuw nsw i32 4096, %and.i
  %12 = tail call i32 @llvm.umin.i32(i32 %sub.peel.i, i32 %4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub1.peel.i = sub i32 %shr.i, %14
  %add.ptr.peel.i = getelementptr %struct.page, ptr %13, i32 %sub1.peel.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i.peel.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i.i.i.peel.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.peel.i to ptr
  %preempt_count.i.i.i.i.peel.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.peel.i, align 4
  %add.i.i.i.peel.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.peel.i, ptr %preempt_count.i.i.i.i.peel.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %20 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i1.i.i.peel.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i.peel.i to ptr
  %task.i.i.i.i.peel.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i.peel.i, align 8
  %pagefault_disabled.i.i.i.i.peel.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i.peel.i, align 8
  %inc.i.i.i.i.peel.i = add i32 %25, 1
  store i32 %inc.i.i.i.i.peel.i, ptr %pagefault_disabled.i.i.i.i.peel.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %call.i.i.peel.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.peel.i, i32 noundef %or.i.peel.i) #8
  %add.ptr3.peel.i = getelementptr i8, ptr %call.i.i.peel.i, i32 %and.i
  br i1 %cmp2.i, label %if.then.peel.i, label %if.else.peel.i

if.else.peel.i:                                   ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = call ptr @memcpy(ptr %add.ptr3.peel.i, ptr %add.ptr, i32 %12)
  br label %do.end.peel.i

if.then.peel.i:                                   ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr3.peel.i, i32 %12)
  br label %do.end.peel.i

do.end.peel.i:                                    ; preds = %if.then.peel.i, %if.else.peel.i
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.peel.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %28 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i1.i.peel.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.peel.i to ptr
  %task.i.i.i.peel.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i.peel.i, align 8
  %pagefault_disabled.i.i.i.peel.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i.peel.i, align 8
  %dec.i.i.i.peel.i = add i32 %33, -1
  store i32 %dec.i.i.i.peel.i, ptr %pagefault_disabled.i.i.i.peel.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  %34 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i.i.peel.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.peel.i to ptr
  %preempt_count.i.i.i.peel.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.peel.i, align 4
  %sub.i.i.peel.i = add i32 %37, -1
  store volatile i32 %sub.i.i.peel.i, ptr %preempt_count.i.i.i.peel.i, align 4
  %sub8.peel.i = sub nsw i32 %4, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.peel.i)
  %tobool.not.peel.i = icmp eq i32 %sub8.peel.i, 0
  br i1 %tobool.not.peel.i, label %do.end.peel.i.do_bounce.exit_crit_edge, label %while.body.peel.next.i

do.end.peel.i.do_bounce.exit_crit_edge:           ; preds = %do.end.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_bounce.exit

while.body.peel.next.i:                           ; preds = %do.end.peel.i
  %add.ptr9.peel.i = getelementptr i8, ptr %add.ptr, i32 %12
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %while.body.peel.next.i
  %addr.addr.029.i = phi ptr [ %add.ptr9.peel.i, %while.body.peel.next.i ], [ %add.ptr9.i, %do.end.i.while.body.i_crit_edge ]
  %pfn.027.in.i = phi i32 [ %shr.i, %while.body.peel.next.i ], [ %pfn.027.i, %do.end.i.while.body.i_crit_edge ]
  %size.addr.026.i = phi i32 [ %sub8.peel.i, %while.body.peel.next.i ], [ %sub8.i, %do.end.i.while.body.i_crit_edge ]
  %pfn.027.i = add i32 %pfn.027.in.i, 1
  %38 = tail call i32 @llvm.umin.i32(i32 %size.addr.026.i, i32 4096) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub1.i = sub i32 %pfn.027.i, %40
  %add.ptr.i = getelementptr %struct.page, ptr %39, i32 %sub1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %41 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %41, 512
  %42 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %46 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i1.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 213
  %50 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i) #8
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = call ptr @memcpy(ptr %addr.addr.029.i, ptr %call.i.i.i, i32 %38)
  br label %do.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = call ptr @memcpy(ptr %call.i.i.i, ptr %addr.addr.029.i, i32 %38)
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %54 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i1.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 213
  %58 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %59, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  %60 = tail call i32 @llvm.read_register.i32(metadata !15) #8
  %and.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %sub8.i = sub i32 %size.addr.026.i, %38
  %add.ptr9.i = getelementptr i8, ptr %addr.addr.029.i, i32 %38
  %tobool.not.i = icmp eq i32 %sub8.i, 0
  br i1 %tobool.not.i, label %do.end.i.do_bounce.exit_crit_edge, label %do.end.i.while.body.i_crit_edge, !llvm.loop !32

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end.i.do_bounce.exit_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_bounce.exit

do_bounce.exit:                                   ; preds = %do.end.i.do_bounce.exit_crit_edge, %do.end.peel.i.do_bounce.exit_crit_edge
  %sub32 = sub i32 %size.addr.054, %4
  %add33 = add i32 %4, %iova.addr.055
  %tobool.not = icmp eq i32 %sub32, 0
  br i1 %tobool.not, label %do_bounce.exit.cleanup_crit_edge, label %do_bounce.exit.while.body_crit_edge

do_bounce.exit.while.body_crit_edge:              ; preds = %do_bounce.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do_bounce.exit.cleanup_crit_edge:                 ; preds = %do_bounce.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do_bounce.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vduse_domain_unmap_page(ptr noundef %domain, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %entry.if.end_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 0, label %entry.if.then_crit_edge11
  ]

entry.if.then_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge11
  tail call fastcc void @vduse_domain_bounce(ptr noundef %domain, i32 noundef %dma_addr, i32 noundef %size, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = zext i32 %dma_addr to i64
  %conv2 = zext i32 %size to i64
  %add.i = add nsw i64 %conv, -1
  %sub.i = add nsw i64 %add.i, %conv2
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv)
  %cmp.not5.i = icmp ult i64 %sub.i, %conv
  br i1 %cmp.not5.i, label %if.end.vduse_domain_unmap_bounce_page.exit_crit_edge, label %while.body.lr.ph.i

if.end.vduse_domain_unmap_bounce_page.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_domain_unmap_bounce_page.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %bounce_maps.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %iova.addr.06.i = phi i64 [ %conv, %while.body.lr.ph.i ], [ %add1.i, %while.body.i.while.body.i_crit_edge ]
  %1 = ptrtoint ptr %bounce_maps.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bounce_maps.i, align 4
  %shr.i = lshr i64 %iova.addr.06.i, 12
  %idxprom.i = trunc i64 %shr.i to i32
  %orig_phys.i = getelementptr %struct.vduse_bounce_map, ptr %2, i32 %idxprom.i, i32 1
  %3 = ptrtoint ptr %orig_phys.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4294967295, ptr %orig_phys.i, align 8
  %add1.i = add i64 %iova.addr.06.i, 4096
  %cmp.not.i = icmp ugt i64 %add1.i, %sub.i
  br i1 %cmp.not.i, label %while.body.i.vduse_domain_unmap_bounce_page.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.vduse_domain_unmap_bounce_page.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_domain_unmap_bounce_page.exit

vduse_domain_unmap_bounce_page.exit:              ; preds = %while.body.i.vduse_domain_unmap_bounce_page.exit_crit_edge, %if.end.vduse_domain_unmap_bounce_page.exit_crit_edge
  %granule.i.i = getelementptr inbounds %struct.iova_domain, ptr %domain, i32 0, i32 4
  %4 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %granule.i.i, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #8, !range !26
  %sub.i.i = add i32 %size, -1
  %add.i.i = add i32 %sub.i.i, %5
  %neg.i.i = sub i32 0, %5
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %shr.i10 = lshr i32 %and.i.i, %6
  %shr2.i = lshr i32 %dma_addr, %6
  tail call void @free_iova_fast(ptr noundef %domain, i32 noundef %shr2.i, i32 noundef %shr.i10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vduse_domain_alloc_coherent(ptr noundef %domain, i32 noundef %size, ptr nocapture noundef writeonly %dma_addr, i32 noundef %flag, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %consistent_iovad = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 1
  %iova_limit = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 4
  %0 = ptrtoint ptr %iova_limit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iova_limit, align 4
  %granule.i.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %granule.i.i, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #8, !range !26
  %sub.i.i = add i32 %size, -1
  %add.i.i = add i32 %3, %sub.i.i
  %neg.i.i = sub i32 0, %3
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %shr.i = lshr i32 %and.i.i, %4
  %shr2.i = lshr i32 %1, %4
  %call3.i = tail call i32 @alloc_iova_fast(ptr noundef %consistent_iovad, i32 noundef %shr.i, i32 noundef %shr2.i, i1 noundef zeroext true) #8
  %shl.i = shl i32 %call3.i, %4
  %call1 = tail call noalias ptr @alloc_pages_exact(i32 noundef %size, i32 noundef %flag) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool.not = icmp eq i32 %shl.i, 0
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %entry
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock) #8
  %conv = zext i32 %shl.i to i64
  %conv4 = zext i32 %size to i64
  %add = add nsw i64 %conv4, -1
  %sub = add nsw i64 %add, %conv
  %5 = ptrtoint ptr %call1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %5) #8
  %conv6 = zext i32 %call.i to i64
  %file = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 8
  %6 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file, align 4
  %call8 = tail call fastcc i32 @vduse_iotlb_add_range(ptr noundef %domain, i64 noundef %conv, i64 noundef %sub, i64 noundef %conv6, i32 noundef 3, ptr noundef %7, i64 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  br i1 %tobool9.not, label %if.end12, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl.i, ptr %dma_addr, align 4
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %entry.err_crit_edge
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %dma_addr, align 4
  br i1 %tobool2.not, label %err.if.end16_crit_edge, label %if.then15

err.if.end16_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @free_pages_exact(ptr noundef nonnull %call1, i32 noundef %size) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %err.if.end16_crit_edge
  br i1 %tobool.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %granule.i.i, align 4
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #8, !range !26
  %add.i.i47 = add i32 %11, %sub.i.i
  %neg.i.i48 = sub i32 0, %11
  %and.i.i49 = and i32 %add.i.i47, %neg.i.i48
  %shr.i50 = lshr i32 %and.i.i49, %12
  %shr2.i51 = lshr i32 %shl.i, %12
  tail call void @free_iova_fast(ptr noundef %consistent_iovad, i32 noundef %shr2.i51, i32 noundef %shr.i50) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %if.end12
  %retval.0 = phi ptr [ %call1, %if.end12 ], [ null, %if.then18 ], [ null, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vduse_domain_free_coherent(ptr noundef %domain, i32 noundef %size, ptr nocapture noundef readnone %vaddr, i32 noundef %dma_addr, i32 noundef %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock) #8
  %iotlb = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 6
  %0 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iotlb, align 4
  %conv = zext i32 %dma_addr to i64
  %conv2 = zext i32 %size to i64
  %add = add nsw i64 %conv2, -1
  %sub = add nsw i64 %add, %conv
  %call = tail call ptr @vhost_iotlb_itree_first(ptr noundef %1, i64 noundef %conv, i64 noundef %sub) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef null) #8
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  br label %cleanup

if.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %consistent_iovad = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 1
  %opaque = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %opaque to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opaque, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @fput(ptr noundef %5) #8
  tail call void @kfree(ptr noundef %3) #8
  %addr = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr, align 8
  %conv27 = trunc i64 %7 to i32
  %8 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iotlb, align 4
  tail call void @vhost_iotlb_map_free(ptr noundef %9, ptr noundef nonnull %call) #8
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  %granule.i.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %granule.i.i, align 4
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #8, !range !26
  %sub.i.i = add i32 %size, -1
  %add.i.i = add i32 %sub.i.i, %11
  %neg.i.i = sub i32 0, %11
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %shr.i = lshr i32 %and.i.i, %12
  %shr2.i = lshr i32 %dma_addr, %12
  tail call void @free_iova_fast(ptr noundef %consistent_iovad, i32 noundef %shr2.i, i32 noundef %shr.i) #8
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %conv27, i32 -2130706432, i32 8454144) #13, !srcloc !34
  %14 = inttoptr i32 %13 to ptr
  tail call void @free_pages_exact(ptr noundef %14, i32 noundef %size) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_map_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vduse_domain_destroy(ptr nocapture noundef readonly %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 8
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vduse_domain_create(i32 noundef %iova_limit, i32 noundef %bounce_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %bounce_size, 4095
  %and = and i32 %add, -4096
  %shr = lshr i32 %add, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %iova_limit, i32 %bounce_size)
  %cmp.not = icmp ugt i32 %iova_limit, %bounce_size
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2428) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @vhost_iotlb_alloc(i32 noundef 0, i32 noundef 0) #8
  %iotlb = getelementptr inbounds %struct.vduse_iova_domain, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %iotlb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %iotlb, align 8
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end2.err_iotlb_crit_edge, label %if.end7

if.end2.err_iotlb_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iotlb

if.end7:                                          ; preds = %if.end2
  %iova_limit8 = getelementptr inbounds %struct.vduse_iova_domain, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %iova_limit8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %iova_limit, ptr %iova_limit8, align 8
  %bounce_size11 = getelementptr inbounds %struct.vduse_iova_domain, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %bounce_size11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %bounce_size11, align 4
  %mul = shl nuw nsw i32 %shr, 4
  %call12 = tail call noalias ptr @vzalloc(i32 noundef %mul) #12
  %bounce_maps = getelementptr inbounds %struct.vduse_iova_domain, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %bounce_maps to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %bounce_maps, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end7.err_map_crit_edge, label %for.cond.preheader

if.end7.err_map_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_map

for.cond.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp1755.not = icmp ult i32 %add, 4096
  br i1 %cmp1755.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pfn.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %5 = ptrtoint ptr %bounce_maps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bounce_maps, align 8
  %orig_phys = getelementptr %struct.vduse_bounce_map, ptr %6, i32 %pfn.056, i32 1
  %7 = ptrtoint ptr %orig_phys to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4294967295, ptr %orig_phys, align 8
  %inc = add nuw nsw i32 %pfn.056, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call19 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.1, ptr noundef nonnull @vduse_domain_fops, ptr noundef nonnull %call7.i.i, i32 noundef 2) #8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err_file, label %if.end22

if.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %file23 = getelementptr inbounds %struct.vduse_iova_domain, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %file23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19, ptr %file23, align 8
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %iotlb_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @vduse_domain_create.__key, i16 noundef signext 3) #8
  tail call void @init_iova_domain(ptr noundef nonnull %call7.i.i, i32 noundef 4096, i32 noundef 1) #8
  %consistent_iovad = getelementptr inbounds %struct.vduse_iova_domain, ptr %call7.i.i, i32 0, i32 1
  tail call void @init_iova_domain(ptr noundef %consistent_iovad, i32 noundef 4096, i32 noundef %shr) #8
  br label %cleanup

err_file:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bounce_maps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bounce_maps, align 8
  tail call void @vfree(ptr noundef %10) #8
  br label %err_map

err_map:                                          ; preds = %err_file, %if.end7.err_map_crit_edge
  %11 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iotlb, align 8
  tail call void @vhost_iotlb_free(ptr noundef %12) #8
  br label %err_iotlb

err_iotlb:                                        ; preds = %err_map, %if.end2.err_iotlb_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_iotlb, %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_iotlb ], [ %call7.i.i, %if.end22 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_iova_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vduse_domain_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iova_cache_get() #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iova_cache_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vduse_domain_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iova_cache_put() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iova_cache_put() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_iotlb_add_range_ctx(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_iova_fast(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_iova_fast(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vduse_domain_mmap(ptr nocapture noundef readonly %file, ptr nocapture noundef %vma) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %or = or i32 %3, 67371008
  store i32 %or, ptr %vm_flags, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %4 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %vm_private_data, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %5 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vduse_domain_mmap_ops, ptr %vm_ops, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_domain_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock) #8
  %iotlb.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iotlb.i, align 4
  %call5.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %3, i64 noundef 0, i64 noundef -1) #8
  %tobool.not6.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not6.i, label %entry.vduse_iotlb_del_range.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vduse_iotlb_del_range.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_iotlb_del_range.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call7.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %entry.while.body.i_crit_edge ]
  %opaque.i = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call7.i, i32 0, i32 9
  %4 = ptrtoint ptr %opaque.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opaque.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void @fput(ptr noundef %7) #8
  tail call void @kfree(ptr noundef %5) #8
  %8 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iotlb.i, align 4
  tail call void @vhost_iotlb_map_free(ptr noundef %9, ptr noundef nonnull %call7.i) #8
  %10 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iotlb.i, align 4
  %call.i = tail call ptr @vhost_iotlb_itree_first(ptr noundef %11, i64 noundef 0, i64 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.vduse_iotlb_del_range.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.vduse_iotlb_del_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_iotlb_del_range.exit

vduse_iotlb_del_range.exit:                       ; preds = %while.body.i.vduse_iotlb_del_range.exit_crit_edge, %entry.vduse_iotlb_del_range.exit_crit_edge
  %bounce_size.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %bounce_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bounce_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %13)
  %cmp35.not.i = icmp ult i32 %13, 4096
  br i1 %cmp35.not.i, label %vduse_iotlb_del_range.exit.vduse_domain_free_bounce_pages.exit_crit_edge, label %for.body.lr.ph.i

vduse_iotlb_del_range.exit.vduse_domain_free_bounce_pages.exit_crit_edge: ; preds = %vduse_iotlb_del_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_domain_free_bounce_pages.exit

for.body.lr.ph.i:                                 ; preds = %vduse_iotlb_del_range.exit
  %shr.i = lshr i32 %13, 12
  %bounce_maps.i = getelementptr inbounds %struct.vduse_iova_domain, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pfn.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %bounce_maps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bounce_maps.i, align 4
  %arrayidx.i = getelementptr %struct.vduse_bounce_map, ptr %15, i32 %pfn.036.i
  %orig_phys.i = getelementptr %struct.vduse_bounce_map, ptr %15, i32 %pfn.036.i, i32 1
  %16 = ptrtoint ptr %orig_phys.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %orig_phys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %17)
  %cmp1.not.i = icmp eq i64 %17, 4294967295
  br i1 %cmp1.not.i, label %if.end22.critedge.i, label %do.end.i, !prof !35

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #8
  br label %for.inc.i

if.end22.critedge.i:                              ; preds = %for.body.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 8
  %tobool23.not.i = icmp eq ptr %19, null
  br i1 %tobool23.not.i, label %if.end22.critedge.i.for.inc.i_crit_edge, label %if.end25.i

if.end22.critedge.i.for.inc.i_crit_edge:          ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end25.i:                                       ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__free_pages(ptr noundef nonnull %19, i32 noundef 0) #8
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end25.i, %if.end22.critedge.i.for.inc.i_crit_edge, %do.end.i
  %inc.i = add nuw nsw i32 %pfn.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i
  br i1 %exitcond.not.i, label %for.inc.i.vduse_domain_free_bounce_pages.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.vduse_domain_free_bounce_pages.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vduse_domain_free_bounce_pages.exit

vduse_domain_free_bounce_pages.exit:              ; preds = %for.inc.i.vduse_domain_free_bounce_pages.exit_crit_edge, %vduse_iotlb_del_range.exit.vduse_domain_free_bounce_pages.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  tail call void @put_iova_domain(ptr noundef %1) #8
  %consistent_iovad = getelementptr inbounds %struct.vduse_iova_domain, ptr %1, i32 0, i32 1
  tail call void @put_iova_domain(ptr noundef %consistent_iovad) #8
  %21 = ptrtoint ptr %iotlb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iotlb.i, align 4
  tail call void @vhost_iotlb_free(ptr noundef %22) #8
  %bounce_maps = getelementptr inbounds %struct.vduse_iova_domain, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %bounce_maps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bounce_maps, align 4
  tail call void @vfree(ptr noundef %24) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vduse_domain_mmap_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pgoff = getelementptr inbounds %struct.anon.56, ptr %vmf, i32 0, i32 2
  %4 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgoff, align 4
  %shl = shl i32 %5, 12
  %bounce_size = getelementptr inbounds %struct.vduse_iova_domain, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %bounce_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bounce_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %7)
  %cmp = icmp ult i32 %shl, %7
  %conv = zext i32 %shl to i64
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc ptr @vduse_domain_get_bounce_page(ptr noundef nonnull %3, i64 noundef %conv)
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc ptr @vduse_domain_get_coherent_page(ptr noundef nonnull %3, i64 noundef %conv)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %page.0 = phi ptr [ %call, %if.then1 ], [ %call3, %if.else ]
  %tobool5.not = icmp eq ptr %page.0, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %page8 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %8 = ptrtoint ptr %page8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %page.0, ptr %page8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vduse_domain_get_bounce_page(ptr noundef %domain, i64 noundef %iova) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock) #8
  %bounce_maps = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 2
  %0 = ptrtoint ptr %bounce_maps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bounce_maps, align 4
  %shr = lshr i64 %iova, 12
  %idxprom = trunc i64 %shr to i32
  %arrayidx = getelementptr %struct.vduse_bounce_map, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !35

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %10, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !27

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@vduse_domain_get_bounce_page, %if.then.i.i.i.i)) #8
          to label %out [label %if.then.i.i.i.i], !srcloc !37

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %8, i32 noundef 1) #8
  br label %out

out:                                              ; preds = %if.then.i.i.i.i, %do.end5.i.i, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vduse_domain_get_coherent_page(ptr noundef %domain, i64 noundef %iova) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %iova, -4096
  %sub = or i64 %iova, 4095
  %iotlb_lock = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %iotlb_lock) #8
  %iotlb = getelementptr inbounds %struct.vduse_iova_domain, ptr %domain, i32 0, i32 6
  %0 = ptrtoint ptr %iotlb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iotlb, align 4
  %call = tail call ptr @vhost_iotlb_itree_first(ptr noundef %1, i64 noundef %and, i64 noundef %sub) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %addr = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %addr, align 8
  %add1 = add i64 %4, %iova
  %start2 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start2, align 8
  %sub3 = sub i64 %add1, %6
  %shr = lshr i64 %sub3, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %8 = trunc i64 %shr to i32
  %idx.ext = sub i32 %8, %7
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %idx.ext
  %9 = getelementptr %struct.page, ptr %2, i32 %idx.ext, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !35

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %15, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !27

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@vduse_domain_get_coherent_page, %if.then.i.i.i.i)) #8
          to label %out [label %if.then.i.i.i.i], !srcloc !37

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %13, i32 noundef 1) #8
  br label %out

out:                                              ; preds = %if.then.i.i.i.i, %do.end5.i.i, %entry.out_crit_edge
  %page.0 = phi ptr [ null, %entry.out_crit_edge ], [ %add.ptr, %do.end5.i.i ], [ %add.ptr, %if.then.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %iotlb_lock) #8
  ret ptr %page.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_iova_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/vdpa_user/iova_domain.c", i32 396, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/vdpa/vdpa_user/iova_domain.c", i32 507, i32 28}
!4 = !{ptr @vduse_domain_create.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/vdpa/vdpa_user/iova_domain.c", i32 513, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!9 = !{ptr @vduse_domain_fops, !10, !"vduse_domain_fops", i1 false, i1 false}
!10 = !{!"../drivers/vdpa/vdpa_user/iova_domain.c", i32 465, i32 37}
!11 = !{ptr @vduse_domain_mmap_ops, !12, !"vduse_domain_mmap_ops", i1 false, i1 false}
!12 = !{!"../drivers/vdpa/vdpa_user/iova_domain.c", i32 433, i32 42}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148591412, i64 2148591438, i64 2148591467, i64 2148591501, i64 2148591532, i64 2148591555}
!26 = !{i32 0, i32 33}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2153651257}
!29 = !{i64 2152596136}
!30 = !{i64 2152596343}
!31 = !{i64 2153654028}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.peeled.count", i32 1}
!34 = !{i64 2149000045, i64 2149000068, i64 2149000100, i64 2149000132, i64 2149000170, i64 2149000200}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2153220708, i64 2153221192, i64 2153220745, i64 2153220801, i64 2153220835, i64 2153220859, i64 2153220900, i64 2153220921, i64 2153220949, i64 2153220983}
!37 = !{i64 2148212138, i64 2148212143, i64 2148212156, i64 2148212200, i64 2148212234, i64 2148212255}
