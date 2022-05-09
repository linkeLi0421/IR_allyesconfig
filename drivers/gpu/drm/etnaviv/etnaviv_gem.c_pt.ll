; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.etnaviv_gem_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.94 }
%union.anon.94 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.drm_etnaviv_timespec = type { i64, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24 }
%struct.llist_node = type { ptr }
%union.anon.24 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.52, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.54 = type { ptr, i32, i32, i32 }
%struct.anon.23 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_gem.c\00", [58 x i8] zeroinitializer }, align 32
@etnaviv_gem_get_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate sgt: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"etnaviv_gem_get_pages\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etnaviv_gem_get_pages._entry_ptr = internal global ptr @etnaviv_gem_get_pages._entry, section ".printk_index", align 4
@etnaviv_gem_mmap_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not allocate mmap offset\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"etnaviv_gem_mmap_offset\00", [40 x i8] zeroinitializer }, align 32
@etnaviv_gem_mmap_offset._entry_ptr = internal global ptr @etnaviv_gem_mmap_offset._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Total %d objects, %zu bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@etnaviv_gem_shmem_ops = internal constant { %struct.etnaviv_gem_ops, [16 x i8] } { %struct.etnaviv_gem_ops { ptr @etnaviv_gem_shmem_get_pages, ptr @etnaviv_gem_shmem_release, ptr @etnaviv_gem_vmap_impl, ptr @etnaviv_gem_mmap_obj }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&etnaviv_shm_lock_class\00", [40 x i8] zeroinitializer }, align 32
@etnaviv_shm_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@etnaviv_gem_userptr_ops = internal constant { %struct.etnaviv_gem_ops, [16 x i8] } { %struct.etnaviv_gem_ops { ptr @etnaviv_gem_userptr_get_pages, ptr @etnaviv_gem_userptr_release, ptr @etnaviv_gem_vmap_impl, ptr @etnaviv_gem_userptr_mmap_obj }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&etnaviv_userptr_lock_class\00", [36 x i8] zeroinitializer }, align 32
@etnaviv_userptr_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%08x: %c %2d (%2d) %08lx %p %zd\0A\00", [63 x i8] zeroinitializer }, align 32
@etnaviv_gem_new_impl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 562, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid cache flag: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"etnaviv_gem_new_impl\00", [43 x i8] zeroinitializer }, align 32
@etnaviv_gem_new_impl._entry_ptr = internal global ptr @etnaviv_gem_new_impl._entry, section ".printk_index", align 4
@etnaviv_gem_new_impl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&etnaviv_obj->lock\00", [45 x i8] zeroinitializer }, align 32
@etnaviv_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @etnaviv_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr @etnaviv_gem_prime_pin, ptr @etnaviv_gem_prime_unpin, ptr @etnaviv_gem_prime_get_sg_table, ptr @etnaviv_gem_prime_vmap, ptr null, ptr @etnaviv_gem_mmap, ptr @vm_ops }, [48 x i8] zeroinitializer }, align 32
@vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @etnaviv_gem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@etnaviv_gem_shmem_get_pages.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str, ptr @.str.17, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"etnaviv\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"etnaviv_gem_shmem_get_pages\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get pages: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 131072, i64 262144]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 131072, i64 262144]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 93, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 109, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 207, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 458, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 465, i32 16 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"etnaviv_gem_shmem_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 475, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 597, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"etnaviv_shm_lock_class\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 17, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"etnaviv_gem_userptr_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 698, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 716, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"etnaviv_userptr_lock_class\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 18, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 434, i32 16 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 561, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 573, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [25 x i8] c"etnaviv_gem_object_funcs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 533, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"vm_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 527, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [41 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_gem.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 64, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @etnaviv_gem_get_pages._entry, ptr @etnaviv_gem_get_pages._entry_ptr, ptr @etnaviv_gem_mmap_offset._entry, ptr @etnaviv_gem_mmap_offset._entry_ptr, ptr @etnaviv_gem_new_impl._entry, ptr @etnaviv_gem_new_impl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @etnaviv_gem_shmem_ops, ptr @.str.9, ptr @etnaviv_shm_lock_class, ptr @etnaviv_gem_userptr_ops, ptr @.str.10, ptr @etnaviv_userptr_lock_class, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @etnaviv_gem_new_impl.__key, ptr @.str.14, ptr @etnaviv_gem_object_funcs, ptr @vm_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gem_get_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gem_mmap_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gem_shmem_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_shm_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gem_userptr_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_userptr_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gem_new_impl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gem_new_impl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gem_get_pages(ptr noundef %etnaviv_obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pages = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 8
  %1 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pages, align 8
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.then25, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then25:                                        ; preds = %if.end
  %ops = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call26 = tail call i32 %6(ptr noundef %etnaviv_obj) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %7 = inttoptr i32 %call26 to ptr
  br label %cleanup55

if.end31:                                         ; preds = %if.then25.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %sgt = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 9
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %tobool32.not = icmp eq ptr %9, null
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.end53_crit_edge

if.end31.if.end53_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then33:                                        ; preds = %if.end31
  %dev34 = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 2
  %10 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev34, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 5
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  %shr = lshr i32 %13, 12
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 8
  %call40 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %11, ptr noundef %15, i32 noundef %shr) #9
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.then33
  %16 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %sgt, align 4
  %flags.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %18, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end49.if.end53_crit_edge, label %if.then.i

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev34, align 8
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev3.i, align 4
  %call.i72 = tail call i32 @dma_map_sgtable(ptr noundef %22, ptr noundef %call40, i32 noundef 0, i32 noundef 0) #9
  br label %if.end53

cleanup:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %dev46 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %23 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev46, align 4
  %25 = ptrtoint ptr %call40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %25) #12
  br label %cleanup55

if.end53:                                         ; preds = %if.then.i, %if.end49.if.end53_crit_edge, %if.end31.if.end53_crit_edge
  %26 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages, align 8
  br label %cleanup55

cleanup55:                                        ; preds = %if.end53, %cleanup, %if.then28
  %retval.1 = phi ptr [ %27, %if.end53 ], [ %call40, %cleanup ], [ %7, %if.then28 ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_put_pages(ptr noundef %etnaviv_obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_mmap_offset(ptr noundef %obj, ptr nocapture noundef writeonly %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_gem_create_mmap_offset(ptr noundef %obj) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %5, 12
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shl.i, ptr %offset, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_mapping_unreference(ptr nocapture noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %lock = getelementptr inbounds %struct.etnaviv_gem_object, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %use = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 6
  %2 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use, align 8
  %sub = add i32 %5, -1
  store i32 %sub, ptr %use, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.end.drm_gem_object_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #9
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @drm_gem_object_free(ptr noundef nonnull %1) #9
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end.drm_gem_object_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gem_mapping_get(ptr noundef %obj, ptr noundef %mmu_context, i64 noundef %va) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %vram_list.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %mapping.0.in.i = phi ptr [ %vram_list.i, %entry ], [ %mapping.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %mapping.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %mapping.0.i = load ptr, ptr %mapping.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mapping.0.i, %vram_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end15_crit_edge, label %for.body.i

for.cond.i.if.end15_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.body.i:                                       ; preds = %for.cond.i
  %context2.i = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping.0.i, i32 0, i32 4
  %1 = ptrtoint ptr %context2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context2.i, align 4
  %cmp3.i = icmp eq ptr %2, %mmu_context
  br i1 %cmp3.i, label %etnaviv_gem_get_vram_mapping.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

etnaviv_gem_get_vram_mapping.exit:                ; preds = %for.body.i
  %context2.i.le = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping.0.i, i32 0, i32 4
  %tobool.not = icmp eq ptr %mapping.0.i, null
  br i1 %tobool.not, label %etnaviv_gem_get_vram_mapping.exit.if.end15_crit_edge, label %if.then

etnaviv_gem_get_vram_mapping.exit.if.end15_crit_edge: ; preds = %etnaviv_gem_get_vram_mapping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %etnaviv_gem_get_vram_mapping.exit
  %use = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping.0.i, i32 0, i32 6
  %3 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %use, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.else11

if.then2:                                         ; preds = %if.then
  %lock3 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %mmu_context, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock3, i32 noundef 0) #9
  %5 = ptrtoint ptr %context2.i.le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context2.i.le, align 4
  %cmp4 = icmp eq ptr %6, %mmu_context
  br i1 %cmp4, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock3) #9
  br label %if.end15

if.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %use, align 8
  %add = add i32 %8, 1
  store i32 %add, ptr %use, align 8
  tail call void @mutex_unlock(ptr noundef %lock3) #9
  br label %out.thread

if.else11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add13 = add i32 %4, 1
  %9 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add13, ptr %use, align 8
  br label %out.thread

if.end15:                                         ; preds = %if.end.thread, %etnaviv_gem_get_vram_mapping.exit.if.end15_crit_edge, %for.cond.i.if.end15_crit_edge
  %call16 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %obj)
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end15.for.cond.i85_crit_edge

if.end15.for.cond.i85_crit_edge:                  ; preds = %if.end15
  br label %for.cond.i85

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call16 to i32
  br label %out

for.cond.i85:                                     ; preds = %for.body.i88.for.cond.i85_crit_edge, %if.end15.for.cond.i85_crit_edge
  %mapping.0.in.i82 = phi ptr [ %mapping.0.i83, %for.body.i88.for.cond.i85_crit_edge ], [ %vram_list.i, %if.end15.for.cond.i85_crit_edge ]
  %11 = ptrtoint ptr %mapping.0.in.i82 to i32
  call void @__asan_load4_noabort(i32 %11)
  %mapping.0.i83 = load ptr, ptr %mapping.0.in.i82, align 4
  %cmp.not.i84 = icmp eq ptr %mapping.0.i83, %vram_list.i
  br i1 %cmp.not.i84, label %for.cond.i85.if.then23_crit_edge, label %for.body.i88

for.cond.i85.if.then23_crit_edge:                 ; preds = %for.cond.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

for.body.i88:                                     ; preds = %for.cond.i85
  %context2.i86 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping.0.i83, i32 0, i32 4
  %12 = ptrtoint ptr %context2.i86 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context2.i86, align 4
  %cmp3.i87 = icmp eq ptr %13, null
  br i1 %cmp3.i87, label %etnaviv_gem_get_vram_mapping.exit90, label %for.body.i88.for.cond.i85_crit_edge

for.body.i88.for.cond.i85_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i85

etnaviv_gem_get_vram_mapping.exit90:              ; preds = %for.body.i88
  %tobool22.not = icmp eq ptr %mapping.0.i83, null
  br i1 %tobool22.not, label %etnaviv_gem_get_vram_mapping.exit90.if.then23_crit_edge, label %if.else28

etnaviv_gem_get_vram_mapping.exit90.if.then23_crit_edge: ; preds = %etnaviv_gem_get_vram_mapping.exit90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %etnaviv_gem_get_vram_mapping.exit90.if.then23_crit_edge, %for.cond.i85.if.then23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 152) #13
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.then23.out.thread114_crit_edge, label %if.end27

if.then23.out.thread114_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread114

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %scan_node = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %scan_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %scan_node, ptr %scan_node, align 8
  %prev.i = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %call7.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %scan_node, ptr %prev.i, align 4
  %object = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %obj, ptr %object, align 8
  br label %if.end29

if.else28:                                        ; preds = %etnaviv_gem_get_vram_mapping.exit90
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mapping.0.i83) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else28.list_del.exit_crit_edge

if.else28.list_del.exit_crit_edge:                ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mapping.0.i83, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %mapping.0.i83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mapping.0.i83, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else28.list_del.exit_crit_edge
  %24 = ptrtoint ptr %mapping.0.i83 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %mapping.0.i83, align 4
  %prev.i91 = getelementptr inbounds %struct.list_head, ptr %mapping.0.i83, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i91, align 4
  br label %if.end29

if.end29:                                         ; preds = %list_del.exit, %if.end27
  %mapping.2 = phi ptr [ %mapping.0.i83, %list_del.exit ], [ %call7.i.i, %if.end27 ]
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmu_context, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %mmu_context, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmu_context, ptr %mmu_context, i32 1, ptr elementtype(i32) %mmu_context) #9, !srcloc !64
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end29.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !59

if.end29.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end29
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !62

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_iommu_context_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end29.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end29.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %mmu_context, i32 noundef %.sink.i.i.i.i.i) #9
  br label %etnaviv_iommu_context_get.exit

etnaviv_iommu_context_get.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge
  %context31 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping.2, i32 0, i32 4
  %28 = ptrtoint ptr %context31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mmu_context, ptr %context31, align 4
  %use32 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping.2, i32 0, i32 6
  %29 = ptrtoint ptr %use32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %use32, align 8
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %mmu_context, i32 0, i32 1
  %30 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %global, align 4
  %memory_base = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %memory_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %memory_base, align 4
  %call33 = tail call i32 @etnaviv_iommu_map_gem(ptr noundef %mmu_context, ptr noundef %obj, i32 noundef %33, ptr noundef nonnull %mapping.2, i64 noundef %va) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %etnaviv_iommu_context_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @etnaviv_iommu_context_put(ptr noundef %mmu_context) #9
  tail call void @kfree(ptr noundef nonnull %mapping.2) #9
  br label %out.thread114

if.else36:                                        ; preds = %etnaviv_iommu_context_get.exit
  %prev.i92 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %prev.i92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i92, align 4
  %call.i.i93 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %mapping.2, ptr noundef %35, ptr noundef %vram_list.i) #9
  br i1 %call.i.i93, label %if.end.i.i94, label %if.else36.out_crit_edge

if.else36.out_crit_edge:                          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i94:                                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %prev.i92 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %mapping.2, ptr %prev.i92, align 4
  %37 = ptrtoint ptr %mapping.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %vram_list.i, ptr %mapping.2, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %mapping.2, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %mapping.2, ptr %35, align 4
  br label %out

out.thread:                                       ; preds = %if.else11, %if.end
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %if.end43

out.thread114:                                    ; preds = %if.then35, %if.then23.out.thread114_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.then23.out.thread114_crit_edge ], [ %call33, %if.then35 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %if.then41

out:                                              ; preds = %if.end.i.i94, %if.else36.out_crit_edge, %if.then18
  %mapping.3 = phi ptr [ null, %if.then18 ], [ %mapping.2, %if.else36.out_crit_edge ], [ %mapping.2, %if.end.i.i94 ]
  %ret.0 = phi i32 [ %10, %if.then18 ], [ %call33, %if.else36.out_crit_edge ], [ %call33, %if.end.i.i94 ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool40.not = icmp eq i32 %ret.0, 0
  br i1 %tobool40.not, label %out.if.end43_crit_edge, label %out.if.then41_crit_edge

out.if.then41_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

out.if.end43_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %out.if.then41_crit_edge, %out.thread114
  %ret.0118 = phi i32 [ %ret.0.ph, %out.thread114 ], [ %ret.0, %out.if.then41_crit_edge ]
  %40 = inttoptr i32 %ret.0118 to ptr
  br label %cleanup

if.end43:                                         ; preds = %out.if.end43_crit_edge, %out.thread
  %mapping.3112 = phi ptr [ %mapping.0.i, %out.thread ], [ %mapping.3, %out.if.end43_crit_edge ]
  %call.i.i.i.i.i.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #9, !srcloc !64
  %asmresult.i.i.i.i.i.i.i96 = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i96)
  %tobool1.not.i.i.i.i.i97 = icmp eq i32 %asmresult.i.i.i.i.i.i.i96, 0
  br i1 %tobool1.not.i.i.i.i.i97, label %if.end43.if.end15.sink.split.i.i.i.i.i102_crit_edge, label %if.else.i.i.i.i.i100, !prof !59

if.end43.if.end15.sink.split.i.i.i.i.i102_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i102

if.else.i.i.i.i.i100:                             ; preds = %if.end43
  %add.i.i.i.i.i98 = add i32 %asmresult.i.i.i.i.i.i.i96, 1
  %42 = or i32 %add.i.i.i.i.i98, %asmresult.i.i.i.i.i.i.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i.i.i99 = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i.i.i99, label %if.else.i.i.i.i.i100.cleanup_crit_edge, label %if.else.i.i.i.i.i100.if.end15.sink.split.i.i.i.i.i102_crit_edge, !prof !62

if.else.i.i.i.i.i100.if.end15.sink.split.i.i.i.i.i102_crit_edge: ; preds = %if.else.i.i.i.i.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i102

if.else.i.i.i.i.i100.cleanup_crit_edge:           ; preds = %if.else.i.i.i.i.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.sink.split.i.i.i.i.i102:                 ; preds = %if.else.i.i.i.i.i100.if.end15.sink.split.i.i.i.i.i102_crit_edge, %if.end43.if.end15.sink.split.i.i.i.i.i102_crit_edge
  %.sink.i.i.i.i.i101 = phi i32 [ 2, %if.end43.if.end15.sink.split.i.i.i.i.i102_crit_edge ], [ 1, %if.else.i.i.i.i.i100.if.end15.sink.split.i.i.i.i.i102_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef %.sink.i.i.i.i.i101) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i102, %if.else.i.i.i.i.i100.cleanup_crit_edge, %if.then41
  %retval.0 = phi ptr [ %40, %if.then41 ], [ %mapping.3112, %if.else.i.i.i.i.i100.cleanup_crit_edge ], [ %mapping.3112, %if.end15.sink.split.i.i.i.i.i102 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommu_map_gem(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gem_vmap(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %vmap = getelementptr inbounds %struct.etnaviv_gem_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %vmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vmap, align 4
  %call5 = tail call ptr %7(ptr noundef %obj) #9
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %vaddr, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %9 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.end7 ], [ %1, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_cpu_prep(ptr noundef %obj, i32 noundef %op, ptr nocapture noundef readonly %timeout) local_unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %and = and i32 %op, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %sgt = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 9
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call5 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %obj)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup36

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %and11 = and i32 %op, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %5 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resv, align 8
  %call15 = tail call zeroext i1 @dma_resv_test_signaled(ptr noundef %6, i1 noundef zeroext %tobool) #9
  br i1 %call15, label %if.then13.if.end28_crit_edge, label %if.then13.cleanup36_crit_edge

if.then13.cleanup36_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.else:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #9
  %7 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timeout, align 8
  %tv_nsec2.i = getelementptr inbounds %struct.drm_etnaviv_timespec, ptr %timeout, i32 0, i32 1
  %10 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tv_nsec2.i, align 8
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #9
  %12 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %13)
  %cmp.i.i = icmp slt i64 %9, %13
  br i1 %cmp.i.i, label %if.else.etnaviv_timeout_to_jiffies.exit_crit_edge, label %if.end.i.i

if.else.etnaviv_timeout_to_jiffies.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_timeout_to_jiffies.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %13)
  %cmp4.i.i = icmp sgt i64 %9, %13
  %.pre.i = trunc i64 %11 to i32
  br i1 %cmp4.i.i, label %if.end.i.i.if.end.i_crit_edge, label %timespec64_compare.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

timespec64_compare.exit.i:                        ; preds = %if.end.i.i
  %tv_nsec7.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec7.i.i, align 8
  %sub.i.i = sub i32 %.pre.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i59 = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i59, label %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge, label %timespec64_compare.exit.i.if.end.i_crit_edge

timespec64_compare.exit.i.if.end.i_crit_edge:     ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge: ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_timeout_to_jiffies.exit

if.end.i:                                         ; preds = %timespec64_compare.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #9
  %.fca.1.gep9.i = getelementptr inbounds [2 x i64], ptr %ts.i, i32 0, i32 1
  %16 = ptrtoint ptr %.fca.1.gep9.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %.fca.1.load10.i = load i64, ptr %.fca.1.gep9.i, align 8
  %rhs.sroa.2.8.extract.shift.i.i = lshr i64 %.fca.1.load10.i, 32
  %rhs.sroa.2.8.extract.trunc.i.i = trunc i64 %rhs.sroa.2.8.extract.shift.i.i to i32
  %17 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %sub.i13.i = sub i64 %9, %13
  %sub3.i.i = sub i32 %.pre.i, %rhs.sroa.2.8.extract.trunc.i.i
  %conv.i.i = sext i32 %sub3.i.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp.i, i64 noundef %sub.i13.i, i64 noundef %conv.i.i) #9
  %18 = call ptr @memcpy(ptr %ts.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #9
  %call4.i = call i32 @timespec64_to_jiffies(ptr noundef nonnull %ts.i) #9
  br label %etnaviv_timeout_to_jiffies.exit

etnaviv_timeout_to_jiffies.exit:                  ; preds = %if.end.i, %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge, %if.else.etnaviv_timeout_to_jiffies.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ 0, %timespec64_compare.exit.i.etnaviv_timeout_to_jiffies.exit_crit_edge ], [ 0, %if.else.etnaviv_timeout_to_jiffies.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #9
  %resv19 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %19 = ptrtoint ptr %resv19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resv19, align 8
  %call21 = call i32 @dma_resv_wait_timeout(ptr noundef %20, i1 noundef zeroext %tobool, i1 noundef zeroext true, i32 noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp = icmp slt i32 %call21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp eq i32 %call21, 0
  %spec.select = select i1 %cmp23, i32 -110, i32 %call21
  br i1 %cmp, label %etnaviv_timeout_to_jiffies.exit.cleanup36_crit_edge, label %etnaviv_timeout_to_jiffies.exit.if.end28_crit_edge

etnaviv_timeout_to_jiffies.exit.if.end28_crit_edge: ; preds = %etnaviv_timeout_to_jiffies.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

etnaviv_timeout_to_jiffies.exit.cleanup36_crit_edge: ; preds = %etnaviv_timeout_to_jiffies.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end28:                                         ; preds = %etnaviv_timeout_to_jiffies.exit.if.end28_crit_edge, %if.then13.if.end28_crit_edge
  %flags = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and29 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.cleanup36_crit_edge, label %if.then31

if.end28.cleanup36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev32, align 4
  %25 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sgt, align 4
  %and.i = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = lshr i32 %op, 1
  %and1.lobit.i = and i32 %and1.i, 1
  %retval.0.i60 = select i1 %tobool.not.i, i32 %and1.lobit.i, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %orig_nents.i, align 4
  call void @dma_sync_sg_for_cpu(ptr noundef %24, ptr noundef %28, i32 noundef %30, i32 noundef %retval.0.i60) #9
  %last_cpu_prep_op = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 12
  %31 = ptrtoint ptr %last_cpu_prep_op to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %op, ptr %last_cpu_prep_op, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %if.then31, %if.end28.cleanup36_crit_edge, %etnaviv_timeout_to_jiffies.exit.cleanup36_crit_edge, %if.then13.cleanup36_crit_edge, %cleanup.thread
  %retval.3 = phi i32 [ %spec.select, %etnaviv_timeout_to_jiffies.exit.cleanup36_crit_edge ], [ -16, %if.then13.cleanup36_crit_edge ], [ 0, %if.then31 ], [ 0, %if.end28.cleanup36_crit_edge ], [ %4, %cleanup.thread ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_cpu_fini(ptr nocapture noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then:                                          ; preds = %entry
  %last_cpu_prep_op = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 12
  %4 = ptrtoint ptr %last_cpu_prep_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_cpu_prep_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge, !prof !59

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %dev22 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev22, align 4
  %sgt = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 9
  %8 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt, align 4
  %10 = ptrtoint ptr %last_cpu_prep_op to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_cpu_prep_op, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = lshr i32 %11, 1
  %and1.lobit.i = and i32 %and1.i, 1
  %retval.0.i = select i1 %tobool.not.i, i32 %and1.lobit.i, i32 2
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %7, ptr noundef %13, i32 noundef %15, i32 noundef %retval.0.i) #9
  %16 = ptrtoint ptr %last_cpu_prep_op to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %last_cpu_prep_op, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end, %entry.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_wait_bo(ptr noundef %gpu, ptr noundef %obj, ptr noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @etnaviv_gpu_wait_obj_inactive(ptr noundef %gpu, ptr noundef %obj, ptr noundef %timeout) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_wait_obj_inactive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_describe_objects(ptr noundef %priv, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gem_lock = getelementptr inbounds %struct.etnaviv_drm_private, ptr %priv, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %gem_lock, i32 noundef 0) #9
  %gem_list = getelementptr inbounds %struct.etnaviv_drm_private, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %gem_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn19 = load ptr, ptr %gem_list, align 4
  %cmp.not20 = icmp eq ptr %.pn19, %gem_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %etnaviv_gem_describe.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %etnaviv_gem_describe.exit.for.body_crit_edge ], [ %.pn19, %entry.for.body_crit_edge ]
  %count.022 = phi i32 [ %inc, %etnaviv_gem_describe.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %size.021 = phi i32 [ %add, %etnaviv_gem_describe.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %etnaviv_obj.0 = getelementptr i8, ptr %.pn23, i32 -452
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.7) #9
  %resv.i = getelementptr i8, ptr %.pn23, i32 -252
  %1 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resv.i, align 8
  %start.i.i = getelementptr i8, ptr %.pn23, i32 -380
  %3 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start.i.i, align 8
  %conv.i.i = trunc i64 %4 to i32
  %flags.i = getelementptr i8, ptr %.pn23, i32 -4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %gpu_active.i.i = getelementptr i8, ptr %.pn23, i32 12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_active.i.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %gpu_active.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %gpu_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 0
  %cond.i = select i1 %cmp.i.not.i, i32 73, i32 65
  %name.i = getelementptr i8, ptr %.pn23, i32 -264
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %name.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %etnaviv_obj.0, i32 noundef 4) #9
  %11 = ptrtoint ptr %etnaviv_obj.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %etnaviv_obj.0, align 4
  %vaddr.i = getelementptr i8, ptr %.pn23, i32 28
  %13 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vaddr.i, align 8
  %size.i = getelementptr i8, ptr %.pn23, i32 -268
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %6, i32 noundef %cond.i, i32 noundef %10, i32 noundef %12, i32 noundef %conv.i.i, ptr noundef %14, i32 noundef %16) #9
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.etnaviv_gem_describe.exit_crit_edge

for.body.etnaviv_gem_describe.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_gem_describe.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_resv_describe(ptr noundef %2, ptr noundef %m) #9
  tail call void @dma_resv_reset_shared_max(ptr noundef %2) #9
  tail call void @ww_mutex_unlock(ptr noundef %2) #9
  br label %etnaviv_gem_describe.exit

etnaviv_gem_describe.exit:                        ; preds = %if.end.i, %for.body.etnaviv_gem_describe.exit_crit_edge
  %inc = add i32 %count.022, 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 8
  %add = add i32 %18, %size.021
  %19 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, %gem_list
  br i1 %cmp.not, label %etnaviv_gem_describe.exit.for.end_crit_edge, label %etnaviv_gem_describe.exit.for.body_crit_edge

etnaviv_gem_describe.exit.for.body_crit_edge:     ; preds = %etnaviv_gem_describe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

etnaviv_gem_describe.exit.for.end_crit_edge:      ; preds = %etnaviv_gem_describe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %etnaviv_gem_describe.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %etnaviv_gem_describe.exit.for.end_crit_edge ]
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %etnaviv_gem_describe.exit.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gem_lock) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %count.0.lcssa, i32 noundef %size.0.lcssa) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %gpu_active.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_active.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %gpu_active.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %gpu_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !62

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 489, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %gem_lock = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %gem_lock, i32 noundef 0) #9
  %gem_node = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %gem_node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %gem_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gem_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %gem_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %gem_node, align 4
  %prev.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %gem_lock) #9
  %vram_list = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 11
  %14 = ptrtoint ptr %vram_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vram_list, align 4
  %cmp.not100 = icmp eq ptr %15, %vram_list
  br i1 %cmp.not100, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit98.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %mapping.0101 = phi ptr [ %tmp.0103, %list_del.exit98.for.body_crit_edge ], [ %15, %list_del.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %mapping.0101 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.0103 = load ptr, ptr %mapping.0101, align 8
  %context31 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping.0101, i32 0, i32 4
  %17 = ptrtoint ptr %context31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context31, align 4
  %use = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping.0101, i32 0, i32 6
  %19 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  br i1 %tobool33.not, label %for.body.if.end55_crit_edge, label %do.end49, !prof !62

for.body.if.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end49:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 499, i32 noundef 9, ptr noundef null) #9
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %for.body.if.end55_crit_edge
  %tobool63.not = icmp eq ptr %18, null
  br i1 %tobool63.not, label %if.end55.if.end65_crit_edge, label %if.then64

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then64:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @etnaviv_iommu_unmap_gem(ptr noundef nonnull %18, ptr noundef %mapping.0101) #9
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %18) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end55.if.end65_crit_edge
  %call.i.i93 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mapping.0101) #9
  br i1 %call.i.i93, label %if.end.i.i96, label %if.end65.list_del.exit98_crit_edge

if.end65.list_del.exit98_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit98

if.end.i.i96:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i94 = getelementptr inbounds %struct.list_head, ptr %mapping.0101, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i94 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i94, align 4
  %23 = ptrtoint ptr %mapping.0101 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mapping.0101, align 4
  %prev1.i.i.i95 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i95, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit98

list_del.exit98:                                  ; preds = %if.end.i.i96, %if.end65.list_del.exit98_crit_edge
  %27 = ptrtoint ptr %mapping.0101 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %mapping.0101, align 4
  %prev.i97 = getelementptr inbounds %struct.list_head, ptr %mapping.0101, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i97, align 4
  tail call void @kfree(ptr noundef %mapping.0101) #9
  %cmp.not = icmp eq ptr %tmp.0103, %vram_list
  br i1 %cmp.not, label %list_del.exit98.for.end_crit_edge, label %list_del.exit98.for.body_crit_edge

list_del.exit98.for.body_crit_edge:               ; preds = %list_del.exit98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit98.for.end_crit_edge:                ; preds = %list_del.exit98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit98.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @drm_gem_free_mmap_offset(ptr noundef %obj) #9
  %ops = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 1
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 8
  %release = getelementptr inbounds %struct.etnaviv_gem_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %release, align 4
  tail call void %32(ptr noundef %obj) #9
  tail call void @drm_gem_object_release(ptr noundef %obj) #9
  tail call void @kfree(ptr noundef %obj) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_unmap_gem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_free_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_obj_add(ptr nocapture noundef readonly %dev, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %gem_lock = getelementptr inbounds %struct.etnaviv_drm_private, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %gem_lock, i32 noundef 0) #9
  %gem_node = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 4
  %gem_list = getelementptr inbounds %struct.etnaviv_drm_private, ptr %1, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.etnaviv_drm_private, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %gem_node, ptr noundef %3, ptr noundef %gem_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gem_node, ptr %prev.i, align 4
  %5 = ptrtoint ptr %gem_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %gem_list, ptr %gem_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %gem_node, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %gem_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_new_handle(ptr noundef %dev, ptr noundef %file, i32 noundef %size, i32 noundef %flags, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %and.i = and i32 %flags, 983040
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end.critedge.i [
    i32 262144, label %entry.if.end.i_crit_edge
    i32 65536, label %entry.if.end.i_crit_edge40
    i32 131072, label %entry.if.end.i_crit_edge41
  ]

entry.if.end.i_crit_edge41:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.if.end.i_crit_edge40:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.critedge.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %and.i) #12
  br label %drm_gem_object_put.exit

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge40, %entry.if.end.i_crit_edge41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 512) #13
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.drm_gem_object_put.exit_crit_edge, label %if.end

if.end.i.drm_gem_object_put.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.end:                                           ; preds = %if.end.i
  %flags6.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %flags6.i, align 8
  %ops7.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @etnaviv_gem_shmem_ops, ptr %ops7.i, align 8
  %lock.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @etnaviv_gem_new_impl.__key) #9
  %vram_list.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %vram_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %vram_list.i, ptr %vram_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vram_list.i, ptr %prev.i.i, align 8
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @etnaviv_gem_object_funcs, ptr %funcs.i, align 4
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %dep_map = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %wait_type_inner = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 2, i32 5, i32 4
  %11 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @etnaviv_shm_lock_class, i32 noundef 0, i8 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %call8 = tail call i32 @drm_gem_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end11:                                         ; preds = %if.end
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filp, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_mapping, align 4
  %shm_gfp_mask = getelementptr inbounds %struct.etnaviv_drm_private, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %shm_gfp_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shm_gfp_mask, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %gfp_mask.i, align 4
  %20 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private, align 4
  %gem_lock.i = getelementptr inbounds %struct.etnaviv_drm_private, ptr %21, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %gem_lock.i, i32 noundef 0) #9
  %gem_node.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 4
  %gem_list.i = getelementptr inbounds %struct.etnaviv_drm_private, ptr %21, i32 0, i32 6
  %prev.i.i20 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %21, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i20, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %gem_node.i, ptr noundef %23, ptr noundef %gem_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.etnaviv_gem_obj_add.exit_crit_edge

if.end11.etnaviv_gem_obj_add.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_gem_obj_add.exit

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %gem_node.i, ptr %prev.i.i20, align 4
  %25 = ptrtoint ptr %gem_node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %gem_list.i, ptr %gem_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 8
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %gem_node.i, ptr %23, align 4
  br label %etnaviv_gem_obj_add.exit

etnaviv_gem_obj_add.exit:                         ; preds = %if.end.i.i.i, %if.end11.etnaviv_gem_obj_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %gem_lock.i) #9
  %call12 = tail call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef nonnull %call7.i.i.i, ptr noundef %handle) #9
  br label %if.then.i

if.then.i:                                        ; preds = %etnaviv_gem_obj_add.exit, %if.end.if.then.i_crit_edge
  %ret.0.ph = phi i32 [ %call12, %etnaviv_gem_obj_add.exit ], [ %call8, %if.end.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i, ptr nonnull %call7.i.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i, i32 noundef 3) #9
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @drm_gem_object_free(ptr noundef nonnull %call7.i.i.i) #9
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end.i.drm_gem_object_put.exit_crit_edge, %do.end.critedge.i
  %ret.039 = phi i32 [ %ret.0.ph, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge ], [ %ret.0.ph, %if.then10.i.i.i.i.i.i ], [ %ret.0.ph, %if.then.i.i.i ], [ -12, %if.end.i.drm_gem_object_put.exit_crit_edge ], [ -22, %do.end.critedge.i ]
  ret i32 %ret.039
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_new_private(ptr noundef %dev, i32 noundef %size, i32 noundef %flags, ptr noundef %ops, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %flags, 983040
  %0 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and.i, label %do.end.critedge.i [
    i32 262144, label %entry.if.end.i_crit_edge
    i32 65536, label %entry.if.end.i_crit_edge10
    i32 131072, label %entry.if.end.i_crit_edge11
  ]

entry.if.end.i_crit_edge11:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.if.end.i_crit_edge10:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.critedge.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %and.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge10, %entry.if.end.i_crit_edge11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 512) #13
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags6.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags6.i, align 8
  %ops7.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %ops7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops7.i, align 8
  %lock.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @etnaviv_gem_new_impl.__key) #9
  %vram_list.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %vram_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %vram_list.i, ptr %vram_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vram_list.i, ptr %prev.i.i, align 8
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @etnaviv_gem_object_funcs, ptr %funcs.i, align 4
  tail call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %size) #9
  %9 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge, %do.end.critedge.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %do.end.critedge.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_new_userptr(ptr noundef %dev, ptr noundef %file, i32 noundef %ptr, i32 noundef %size, i32 noundef %flags, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #13
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags6.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65536, ptr %flags6.i.i, align 8
  %ops7.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @etnaviv_gem_userptr_ops, ptr %ops7.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @etnaviv_gem_new_impl.__key) #9
  %vram_list.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 11
  %3 = ptrtoint ptr %vram_list.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vram_list.i.i, ptr %vram_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vram_list.i.i, ptr %prev.i.i.i, align 8
  %funcs.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @etnaviv_gem_object_funcs, ptr %funcs.i.i, align 4
  tail call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %size) #9
  %dep_map = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 2, i32 5
  %wait_type_inner = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 2, i32 5, i32 4
  %6 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @etnaviv_userptr_lock_class, i32 noundef 0, i8 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %userptr = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %userptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ptr, ptr %userptr, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 53
  %13 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mm, align 8
  %mm8 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %mm8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %mm8, align 4
  %ro = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 13, i32 2
  %16 = trunc i32 %flags to i8
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = ptrtoint ptr %ro to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ro, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i, align 4
  %gem_lock.i = getelementptr inbounds %struct.etnaviv_drm_private, ptr %22, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %gem_lock.i, i32 noundef 0) #9
  %gem_node.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 4
  %gem_list.i = getelementptr inbounds %struct.etnaviv_drm_private, ptr %22, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.etnaviv_drm_private, ptr %22, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %gem_node.i, ptr noundef %24, ptr noundef %gem_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %gem_node.i, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %gem_node.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %gem_list.i, ptr %gem_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %call7.i.i.i.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 8
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %gem_node.i, ptr %24, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i.i, %if.end.if.then.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %gem_lock.i) #9
  %call12 = tail call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %handle) #9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i.i.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i.i.i, ptr nonnull %call7.i.i.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i.i.i) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 3) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call void @drm_gem_object_free(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call12, %if.then10.i.i.i.i.i.i ], [ %call12, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timespec64_to_jiffies(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_describe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_prime_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gem_prime_unpin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_prime_get_sg_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_prime_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_mmap(ptr noundef %obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %mmap = getelementptr inbounds %struct.etnaviv_gem_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmap, align 4
  %call1 = tail call i32 %3(ptr noundef %obj, ptr noundef %vma) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_fault(ptr nocapture noundef readonly %vmf) #0 align 64 {
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
  %lock = getelementptr inbounds %struct.etnaviv_gem_object, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cmp.i27 = icmp eq ptr %call3, inttoptr (i32 -12 to ptr)
  %..i = select i1 %cmp.i27, i32 1, i32 2
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %address = getelementptr inbounds %struct.anon.54, ptr %vmf, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %sub = sub i32 %5, %7
  %shr = lshr i32 %sub, 12
  %arrayidx = getelementptr ptr, ptr %call3, i32 %shr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @vm_insert_page(ptr noundef %1, i32 noundef %5, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call.i)
  %cmp.i28 = icmp eq i32 %call.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, -16
  %or.cond.i = or i1 %cmp1.i, %cmp2.not.i
  %spec.select.i = select i1 %or.cond.i, i32 256, i32 2
  %retval.0.i = select i1 %cmp.i28, i32 1, i32 %spec.select.i
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i, %if.then6 ], [ %retval.0.i, %if.end9 ], [ 256, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_shmem_get_pages(ptr noundef %etnaviv_obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call ptr @drm_gem_get_pages(ptr noundef %etnaviv_obj) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etnaviv_gem_shmem_get_pages.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etnaviv_gem_shmem_get_pages, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !65

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev8, align 4
  %4 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etnaviv_gem_shmem_get_pages.__UNIQUE_ID_ddebug325, ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pages = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 8
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %pages, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_gem_shmem_release(ptr noundef %etnaviv_obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 10
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 8
  tail call void @vunmap(ptr noundef %1) #9
  %sgt.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 9
  %2 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.etnaviv_gem_scatterlist_unmap.exit.i_crit_edge, label %if.then.i.i

if.then.i.etnaviv_gem_scatterlist_unmap.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_gem_scatterlist_unmap.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 2
  %6 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i.i, align 8
  %dev3.i.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %orig_nents.i.i.i = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %orig_nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_nents.i.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 0, i32 noundef 0) #9
  br label %etnaviv_gem_scatterlist_unmap.exit.i

etnaviv_gem_scatterlist_unmap.exit.i:             ; preds = %if.then.i.i, %if.then.i.etnaviv_gem_scatterlist_unmap.exit.i_crit_edge
  %14 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt.i, align 4
  tail call void @sg_free_table(ptr noundef %15) #9
  %16 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgt.i, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sgt.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %etnaviv_gem_scatterlist_unmap.exit.i, %entry.if.end.i_crit_edge
  %pages.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 8
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 8
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %if.end.i.put_pages.exit_crit_edge, label %if.then5.i

if.end.i.put_pages.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_pages.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_gem_put_pages(ptr noundef %etnaviv_obj, ptr noundef nonnull %20, i1 noundef zeroext true, i1 noundef zeroext false) #9
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pages.i, align 8
  br label %put_pages.exit

put_pages.exit:                                   ; preds = %if.then5.i, %if.end.i.put_pages.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @etnaviv_gem_vmap_impl(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gem_object, ptr %obj, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %obj)
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 8
  %shr = lshr i32 %2, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or = and i32 %3, -573
  %or28 = or i32 %or, 516
  %call29 = tail call ptr @vmap(ptr noundef %call24, i32 noundef %shr, i32 noundef 4, i32 noundef %or28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call29, %if.end27 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_mmap_obj(ptr nocapture noundef readonly %etnaviv_obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %or = or i32 %1, 335822848
  store i32 %or, ptr %vm_flags, align 4
  %call = tail call i32 @vm_get_page_prot(i32 noundef %or) #9
  %flags = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and2 = and i32 %call, -61
  %or3 = or i32 %and2, 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %and6 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else12, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and9 = and i32 %call, -61
  br label %if.end14

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vm_pgoff, align 4
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 3
  %5 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %filp, align 4
  tail call void @vma_set_file(ptr noundef %vma, ptr noundef %6) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then8, %if.then
  %and9.sink = phi i32 [ %and9, %if.then8 ], [ %call, %if.else12 ], [ %or3, %if.then ]
  %vm_page_prot11 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %7 = ptrtoint ptr %vm_page_prot11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and9.sink, ptr %vm_page_prot11, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_userptr_get_pages(ptr nocapture noundef %etnaviv_obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %userptr1 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 13
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %shr = lshr i32 %1, 12
  %2 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  br label %__here

__here:                                           ; preds = %entry
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm, align 8
  %dep_map = getelementptr inbounds %struct.anon.23, ptr %7, i32 0, i32 15, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@etnaviv_gem_userptr_get_pages, %__here) to i32)) #9
  br label %__here8

__here8:                                          ; preds = %__here
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %mm5 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm5, align 8
  %dep_map7 = getelementptr inbounds %struct.anon.23, ptr %11, i32 0, i32 15, i32 6
  tail call void @lock_release(ptr noundef %dep_map7, i32 noundef ptrtoint (ptr blockaddress(@etnaviv_gem_userptr_get_pages, %__here8) to i32)) #9
  %mm10 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %mm10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm10, align 4
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %mm13 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %mm13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm13, align 8
  %cmp14.not = icmp eq ptr %13, %17
  br i1 %cmp14.not, label %kvmalloc_array.exit, label %__here8.cleanup36_crit_edge

__here8.cleanup36_crit_edge:                      ; preds = %__here8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

kvmalloc_array.exit:                              ; preds = %__here8
  %18 = shl nuw nsw i32 %shr, 2
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %18, i32 noundef 3264, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %kvmalloc_array.exit.cleanup36_crit_edge, label %kvmalloc_array.exit.do.body19_crit_edge

kvmalloc_array.exit.do.body19_crit_edge:          ; preds = %kvmalloc_array.exit
  br label %do.body19

kvmalloc_array.exit.cleanup36_crit_edge:          ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

do.body19:                                        ; preds = %do.cond31.do.body19_crit_edge, %kvmalloc_array.exit.do.body19_crit_edge
  %pinned.0 = phi i32 [ %add28, %do.cond31.do.body19_crit_edge ], [ 0, %kvmalloc_array.exit.do.body19_crit_edge ]
  %sub = sub i32 %shr, %pinned.0
  %19 = ptrtoint ptr %userptr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %userptr1, align 4
  %mul = shl i32 %pinned.0, 12
  %add = add i32 %20, %mul
  %add.ptr = getelementptr ptr, ptr %call.i.i, i32 %pinned.0
  %call23 = tail call i32 @pin_user_pages_fast(i32 noundef %add, i32 noundef %sub, i32 noundef 65553, ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %cleanup.thread, label %do.cond31

cleanup.thread:                                   ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unpin_user_pages(ptr noundef nonnull %call.i.i, i32 noundef %pinned.0) #9
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #9
  br label %cleanup36

do.cond31:                                        ; preds = %do.body19
  %add28 = add i32 %call23, %pinned.0
  %cmp32 = icmp slt i32 %add28, %shr
  br i1 %cmp32, label %do.cond31.do.body19_crit_edge, label %do.end34

do.cond31.do.body19_crit_edge:                    ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.end34:                                         ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #11
  %pages35 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 8
  %21 = ptrtoint ptr %pages35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %pages35, align 8
  br label %cleanup36

cleanup36:                                        ; preds = %do.end34, %cleanup.thread, %kvmalloc_array.exit.cleanup36_crit_edge, %__here8.cleanup36_crit_edge
  %retval.2 = phi i32 [ 0, %do.end34 ], [ -1, %__here8.cleanup36_crit_edge ], [ -12, %kvmalloc_array.exit.cleanup36_crit_edge ], [ %call23, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_gem_userptr_release(ptr nocapture noundef readonly %etnaviv_obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sgt = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 9
  %0 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.etnaviv_gem_scatterlist_unmap.exit_crit_edge, label %if.then.i

if.then.etnaviv_gem_scatterlist_unmap.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %etnaviv_gem_scatterlist_unmap.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 8
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef 0) #9
  br label %etnaviv_gem_scatterlist_unmap.exit

etnaviv_gem_scatterlist_unmap.exit:               ; preds = %if.then.i, %if.then.etnaviv_gem_scatterlist_unmap.exit_crit_edge
  %12 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgt, align 4
  tail call void @sg_free_table(ptr noundef %13) #9
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 4
  tail call void @kfree(ptr noundef %15) #9
  br label %if.end

if.end:                                           ; preds = %etnaviv_gem_scatterlist_unmap.exit, %entry.if.end_crit_edge
  %pages = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 8
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages, align 8
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 5
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  %shr = lshr i32 %19, 12
  tail call void @unpin_user_pages(ptr noundef nonnull %17, i32 noundef %shr) #9
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages, align 8
  tail call void @kvfree(ptr noundef %21) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_gem_userptr_mmap_obj(ptr nocapture noundef readnone %etnaviv_obj, ptr nocapture noundef readnone %vma) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !40, !42, !44, !45, !46, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 93, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 109, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @etnaviv_gem_get_pages._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @etnaviv_gem_get_pages._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 207, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @etnaviv_gem_mmap_offset._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @etnaviv_gem_mmap_offset._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 458, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 465, i32 16}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 597, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 716, i32 2}
!22 = !{ptr @etnaviv_shm_lock_class, !23, !"etnaviv_shm_lock_class", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 17, i32 30}
!24 = !{ptr @etnaviv_userptr_lock_class, !25, !"etnaviv_userptr_lock_class", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 18, i32 30}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 434, i32 16}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 561, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @etnaviv_gem_new_impl._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @etnaviv_gem_new_impl._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @etnaviv_gem_new_impl.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 573, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @etnaviv_gem_object_funcs, !37, !"etnaviv_gem_object_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 533, i32 42}
!38 = !{ptr @vm_ops, !39, !"vm_ops", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 527, i32 42}
!40 = !{ptr @etnaviv_gem_shmem_ops, !41, !"etnaviv_gem_shmem_ops", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 475, i32 37}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 64, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @etnaviv_gem_shmem_get_pages.__UNIQUE_ID_ddebug325, !43, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!47 = !{ptr @etnaviv_gem_userptr_ops, !48, !"etnaviv_gem_userptr_ops", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_gem.c", i32 698, i32 37}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148462771}
!61 = !{i64 2148377235, i64 2148377267, i64 2148377296, i64 2148377330, i64 2148377361, i64 2148377384}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2150060155}
!64 = !{i64 2148374770, i64 2148374802, i64 2148374831, i64 2148374865, i64 2148374896, i64 2148374919}
!65 = !{i64 2148186633, i64 2148186638, i64 2148186651, i64 2148186695, i64 2148186729, i64 2148186750}
