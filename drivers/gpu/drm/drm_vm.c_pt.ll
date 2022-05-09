; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_vm.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_vm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_legacy_mmap\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_mmap\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_mmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.59 }
%struct.atomic_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.14, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_vma_entry = type { %struct.list_head, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.16, i32, ptr, ptr, %union.anon.17, ptr, ptr, ptr, ptr, ptr }
%union.anon.17 = type { i32 }
%struct.drm_map_list = type { %struct.list_head, %struct.drm_hash_item, ptr, i64, ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }
%struct.drm_sg_mem = type { i32, ptr, i32, ptr, ptr }

@__kstrtab_drm_legacy_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_mmap to i32), ptr @__kstrtab_drm_legacy_mmap, ptr @__kstrtabns_drm_legacy_mmap }, section "___ksymtab+drm_legacy_mmap", align 4
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"start = 0x%lx, end = 0x%lx, page offset = 0x%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Could not find map\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"   Type = %d; start = 0x%lx, end = 0x%lx, offset = 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@drm_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_vm_open, ptr @drm_vm_close, ptr null, ptr null, ptr null, ptr @drm_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@drm_vm_shm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_vm_open, ptr @drm_vm_shm_close, ptr null, ptr null, ptr null, ptr @drm_vm_shm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@drm_vm_sg_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_vm_open, ptr @drm_vm_close, ptr null, ptr null, ptr null, ptr @drm_vm_sg_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@drm_vm_dma_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_vm_open, ptr @drm_vm_close, ptr null, ptr null, ptr null, ptr @drm_vm_dma_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%08lx,0x%08lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dma_fault 0x%lx (page %lu)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"shm_fault 0x%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 531, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 550, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 603, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"drm_vm_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 362, i32 42 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"drm_vm_shm_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 369, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"drm_vm_sg_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 383, i32 42 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"drm_vm_dma_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 376, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 420, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 322, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 1160, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [28 x i8] c"../drivers/gpu/drm/drm_vm.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 218, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_drm_legacy_mmap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @drm_vm_ops, ptr @drm_vm_shm_ops, ptr @drm_vm_sg_ops, ptr @drm_vm_dma_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_vm_shm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_vm_sg_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_vm_dma_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_mmap(ptr nocapture noundef readonly %filp, ptr noundef %vma) #0 align 64 {
entry:
  %hash.i = alloca ptr, align 4
  %idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #7
  %6 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %idx.i, align 4, !annotation !34
  %call.i = call zeroext i1 @drm_dev_enter(ptr noundef %5, ptr noundef nonnull %idx.i) #7
  br i1 %call.i, label %if.end, label %drm_dev_is_unplugged.exit.thread

drm_dev_is_unplugged.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx.i, align 4
  call void @drm_dev_exit(i32 noundef %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #7
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #7
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 4
  %minor.i = getelementptr inbounds %struct.drm_file, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %minor.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_minor, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash.i) #7
  %15 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %hash.i, align 4, !annotation !34
  %16 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vma, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %18 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end.i, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %20 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_pgoff.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %17, i32 noundef %19, i32 noundef %21) #7
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %10, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.drm_mmap_locked.exit_crit_edge, label %if.end.i

if.end.drm_mmap_locked.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.end.i:                                         ; preds = %if.end
  %24 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %26 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private_data, align 4
  %28 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_end.i, align 4
  %30 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vma, align 4
  %minor.i.i = getelementptr inbounds %struct.drm_file, ptr %27, i32 0, i32 13
  %32 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %minor.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_minor, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i.i, align 4
  %dma2.i.i = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 45
  %36 = ptrtoint ptr %dma2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma2.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %31, i32 noundef %29, i32 noundef 0) #7
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.then4.i.drm_mmap_locked.exit_crit_edge, label %lor.lhs.false.i.i

if.then4.i.drm_mmap_locked.exit_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

lor.lhs.false.i.i:                                ; preds = %if.then4.i
  %sub.i.i = sub i32 %29, %31
  %shr.i.i = lshr i32 %sub.i.i, 12
  %page_count.i.i = getelementptr inbounds %struct.drm_device_dma, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %39)
  %cmp.not.i.i = icmp eq i32 %shr.i.i, %39
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.drm_mmap_locked.exit_crit_edge

lor.lhs.false.i.i.drm_mmap_locked.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call.i.i = call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %flags.i.i = getelementptr inbounds %struct.drm_device_dma, ptr %37, i32 0, i32 7
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.if.end10.i.i_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.if.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %vm_flags.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %42 = ptrtoint ptr %vm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vm_flags.i.i, align 4
  %and7.i.i = and i32 %43, -35
  store i32 %and7.i.i, ptr %vm_flags.i.i, align 4
  %vm_page_prot.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %44 = ptrtoint ptr %vm_page_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vm_page_prot.i.i, align 4
  %or.i.i.i.i = or i32 %45, 128
  store i32 %or.i.i.i.i, ptr %vm_page_prot.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then6.i.i, %land.lhs.true.i.i.if.end10.i.i_crit_edge, %if.end.i.i.if.end10.i.i_crit_edge
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %46 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @drm_vm_dma_ops, ptr %vm_ops.i.i, align 4
  %vm_flags11.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %47 = ptrtoint ptr %vm_flags11.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_flags11.i.i, align 4
  %or.i.i = or i32 %48, 67371008
  store i32 %or.i.i, ptr %vm_flags11.i.i, align 4
  %49 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vma, align 4
  %51 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vm_end.i, align 4
  %sub.i.i.i = sub i32 %52, %50
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %50, i32 noundef %sub.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3264, i32 noundef 16) #10
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end10.i.i.drm_mmap_locked.exit_crit_edge, label %if.then.i.i.i

if.end10.i.i.drm_mmap_locked.exit_crit_edge:      ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.then.i.i.i:                                    ; preds = %if.end10.i.i
  %vma2.i.i.i = getelementptr inbounds %struct.drm_vma_entry, ptr %call7.i.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %vma2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %vma, ptr %vma2.i.i.i, align 8
  %55 = call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i.i.i, align 8
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid.i.i.i, align 8
  %pid4.i.i.i = getelementptr inbounds %struct.drm_vma_entry, ptr %call7.i.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %pid4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %pid4.i.i.i, align 4
  %vmalist.i.i.i = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 44
  %62 = ptrtoint ptr %vmalist.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vmalist.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %vmalist.i.i.i, ptr noundef %63) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.drm_mmap_locked.exit_crit_edge

if.then.i.i.i.drm_mmap_locked.exit_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %65 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %vmalist.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %vmalist.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call7.i.i.i.i, ptr %vmalist.i.i.i, align 4
  br label %drm_mmap_locked.exit

if.end5.i:                                        ; preds = %if.end.i
  %map_hash.i = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 43
  %call7.i = call i32 @drm_ht_find_item(ptr noundef %map_hash.i, i32 noundef %25, ptr noundef nonnull %hash.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %drm_mmap_locked.exit

if.end10.i:                                       ; preds = %if.end5.i
  %68 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hash.i, align 4
  %map11.i = getelementptr i8, ptr %69, i32 12
  %70 = ptrtoint ptr %map11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map11.i, align 4
  %tobool12.not.i = icmp eq ptr %71, null
  br i1 %tobool12.not.i, label %if.end10.i.drm_mmap_locked.exit_crit_edge, label %lor.lhs.false.i

if.end10.i.drm_mmap_locked.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %flags.i = getelementptr inbounds %struct.drm_local_map, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call14.i = call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call14.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %land.lhs.true.i.drm_mmap_locked.exit_crit_edge

land.lhs.true.i.drm_mmap_locked.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %lor.lhs.false.i.if.end16.i_crit_edge
  %size.i = getelementptr inbounds %struct.drm_local_map, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i, align 4
  %76 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vm_end.i, align 4
  %78 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %77, %79
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %sub.i)
  %cmp.i = icmp ult i32 %75, %sub.i
  br i1 %cmp.i, label %if.end16.i.drm_mmap_locked.exit_crit_edge, label %if.end20.i

if.end16.i.drm_mmap_locked.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.end20.i:                                       ; preds = %if.end16.i
  %call21.i = call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call21.i, label %if.end20.i.if.end30.i_crit_edge, label %land.lhs.true22.i

if.end20.i.if.end30.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

land.lhs.true22.i:                                ; preds = %if.end20.i
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i, align 4
  %and24.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true22.i.if.end30.i_crit_edge, label %if.then26.i

land.lhs.true22.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then26.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %82 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vm_flags.i, align 4
  %and27.i = and i32 %83, -35
  store i32 %and27.i, ptr %vm_flags.i, align 4
  %vm_page_prot.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %84 = ptrtoint ptr %vm_page_prot.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vm_page_prot.i, align 4
  %or.i.i.i = or i32 %85, 128
  store i32 %or.i.i.i, ptr %vm_page_prot.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %land.lhs.true22.i.if.end30.i_crit_edge, %if.end20.i.if.end30.i_crit_edge
  %type.i = getelementptr inbounds %struct.drm_local_map, ptr %71, i32 0, i32 2
  %86 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values)
  switch i32 %87, label %if.end30.i.drm_mmap_locked.exit_crit_edge [
    i32 0, label %if.end30.i.sw.bb.i_crit_edge
    i32 1, label %if.end30.i.sw.bb.i_crit_edge15
    i32 5, label %sw.bb49.i
    i32 2, label %if.end30.i.sw.bb68.i_crit_edge
    i32 4, label %sw.bb70.i
  ]

if.end30.i.sw.bb68.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb68.i

if.end30.i.sw.bb.i_crit_edge15:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end30.i.sw.bb.i_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end30.i.drm_mmap_locked.exit_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

sw.bb.i:                                          ; preds = %if.end30.i.sw.bb.i_crit_edge, %if.end30.i.sw.bb.i_crit_edge15
  %vm_flags.i135.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %89 = ptrtoint ptr %vm_flags.i135.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vm_flags.i135.i, align 4
  %call.i136.i = call i32 @vm_get_page_prot(i32 noundef %90) #7
  %and.i137.i = and i32 %call.i136.i, -61
  %vm_page_prot33.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %91 = ptrtoint ptr %vm_page_prot33.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and.i137.i, ptr %vm_page_prot33.i, align 4
  %92 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vma, align 4
  %94 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %71, align 4
  %shr.i = lshr i32 %95, 12
  %96 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %vm_end.i, align 4
  %sub38.i = sub i32 %97, %93
  %call.i138.i = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %93, i32 noundef %shr.i, i32 noundef %sub38.i, i32 noundef %and.i137.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %tobool41.not.i = icmp eq i32 %call.i138.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %sw.bb.i.drm_mmap_locked.exit_crit_edge

sw.bb.i.drm_mmap_locked.exit_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.end43.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %type.i, align 4
  %100 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vma, align 4
  %102 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vm_end.i, align 4
  %104 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %71, align 4
  %conv.i = zext i32 %105 to i64
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %99, i32 noundef %101, i32 noundef %103, i64 noundef %conv.i) #7
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %106 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @drm_vm_ops, ptr %vm_ops.i, align 4
  br label %sw.epilog.i

sw.bb49.i:                                        ; preds = %if.end30.i
  %107 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vma, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %71, i32 0, i32 4
  %109 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %handle.i, align 4
  %111 = ptrtoint ptr %110 to i32
  %sub51.i = add i32 %111, 1073741824
  %shr52.i = lshr i32 %sub51.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %112 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add56.i = add i32 %shr52.i, %112
  %113 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vm_end.i, align 4
  %sub59.i = sub i32 %114, %108
  %vm_page_prot60.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %115 = ptrtoint ptr %vm_page_prot60.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vm_page_prot60.i, align 4
  %call61.i = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %108, i32 noundef %add56.i, i32 noundef %sub59.i, i32 noundef %116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %sw.bb49.i.drm_mmap_locked.exit_crit_edge

sw.bb49.i.drm_mmap_locked.exit_crit_edge:         ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.end64.i:                                       ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #9
  %vm_flags.i139.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %117 = ptrtoint ptr %vm_flags.i139.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vm_flags.i139.i, align 4
  %call.i140.i = call i32 @vm_get_page_prot(i32 noundef %118) #7
  %119 = ptrtoint ptr %vm_page_prot60.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call.i140.i, ptr %vm_page_prot60.i, align 4
  br label %sw.bb68.i

sw.bb68.i:                                        ; preds = %if.end64.i, %if.end30.i.sw.bb68.i_crit_edge
  %vm_ops69.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %120 = ptrtoint ptr %vm_ops69.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @drm_vm_shm_ops, ptr %vm_ops69.i, align 4
  %vm_private_data.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %121 = ptrtoint ptr %vm_private_data.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %71, ptr %vm_private_data.i, align 4
  br label %sw.epilog.i

sw.bb70.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %vm_ops71.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %122 = ptrtoint ptr %vm_ops71.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @drm_vm_sg_ops, ptr %vm_ops71.i, align 4
  %vm_private_data72.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %123 = ptrtoint ptr %vm_private_data72.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %71, ptr %vm_private_data72.i, align 4
  %vm_flags.i141.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %124 = ptrtoint ptr %vm_flags.i141.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vm_flags.i141.i, align 4
  %call.i142.i = call i32 @vm_get_page_prot(i32 noundef %125) #7
  %vm_page_prot75.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %126 = ptrtoint ptr %vm_page_prot75.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call.i142.i, ptr %vm_page_prot75.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb70.i, %sw.bb68.i, %if.end43.i
  %vm_flags76.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %127 = ptrtoint ptr %vm_flags76.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vm_flags76.i, align 4
  %or.i = or i32 %128, 67371008
  store i32 %or.i, ptr %vm_flags76.i, align 4
  %129 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %vma, align 4
  %131 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vm_end.i, align 4
  %sub.i10 = sub i32 %132, %130
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %130, i32 noundef %sub.i10) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %133 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %133, i32 noundef 3264, i32 noundef 16) #10
  %tobool.not.i11 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i11, label %sw.epilog.i.drm_mmap_locked.exit_crit_edge, label %if.then.i13

sw.epilog.i.drm_mmap_locked.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.then.i13:                                      ; preds = %sw.epilog.i
  %vma2.i = getelementptr inbounds %struct.drm_vma_entry, ptr %call7.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %vma2.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %vma, ptr %vma2.i, align 8
  %135 = call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i12 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i12 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 68
  %139 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pid.i, align 8
  %pid4.i = getelementptr inbounds %struct.drm_vma_entry, ptr %call7.i.i, i32 0, i32 2
  %141 = ptrtoint ptr %pid4.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %pid4.i, align 4
  %vmalist.i = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 44
  %142 = ptrtoint ptr %vmalist.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %vmalist.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %vmalist.i, ptr noundef %143) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i13.drm_mmap_locked.exit_crit_edge

if.then.i13.drm_mmap_locked.exit_crit_edge:       ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mmap_locked.exit

if.end.i.i.i:                                     ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %145 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %143, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %vmalist.i, ptr %prev3.i.i.i, align 4
  %147 = ptrtoint ptr %vmalist.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %call7.i.i, ptr %vmalist.i, align 4
  br label %drm_mmap_locked.exit

drm_mmap_locked.exit:                             ; preds = %if.end.i.i.i, %if.then.i13.drm_mmap_locked.exit_crit_edge, %sw.epilog.i.drm_mmap_locked.exit_crit_edge, %sw.bb49.i.drm_mmap_locked.exit_crit_edge, %sw.bb.i.drm_mmap_locked.exit_crit_edge, %if.end30.i.drm_mmap_locked.exit_crit_edge, %if.end16.i.drm_mmap_locked.exit_crit_edge, %land.lhs.true.i.drm_mmap_locked.exit_crit_edge, %if.end10.i.drm_mmap_locked.exit_crit_edge, %if.then9.i, %if.end.i.i.i.i.i, %if.then.i.i.i.drm_mmap_locked.exit_crit_edge, %if.end10.i.i.drm_mmap_locked.exit_crit_edge, %lor.lhs.false.i.i.drm_mmap_locked.exit_crit_edge, %if.then4.i.drm_mmap_locked.exit_crit_edge, %if.end.drm_mmap_locked.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then9.i ], [ -13, %if.end.drm_mmap_locked.exit_crit_edge ], [ -1, %land.lhs.true.i.drm_mmap_locked.exit_crit_edge ], [ -1, %if.end10.i.drm_mmap_locked.exit_crit_edge ], [ -22, %if.end16.i.drm_mmap_locked.exit_crit_edge ], [ -11, %sw.bb.i.drm_mmap_locked.exit_crit_edge ], [ -11, %sw.bb49.i.drm_mmap_locked.exit_crit_edge ], [ -22, %if.end30.i.drm_mmap_locked.exit_crit_edge ], [ -22, %lor.lhs.false.i.i.drm_mmap_locked.exit_crit_edge ], [ -22, %if.then4.i.drm_mmap_locked.exit_crit_edge ], [ 0, %if.end10.i.i.drm_mmap_locked.exit_crit_edge ], [ 0, %if.then.i.i.i.drm_mmap_locked.exit_crit_edge ], [ 0, %if.end.i.i.i.i.i ], [ 0, %sw.epilog.i.drm_mmap_locked.exit_crit_edge ], [ 0, %if.then.i13.drm_mmap_locked.exit_crit_edge ], [ 0, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash.i) #7
  call void @mutex_unlock(ptr noundef %struct_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %drm_mmap_locked.exit, %drm_dev_is_unplugged.exit.thread
  %retval.0 = phi i32 [ %retval.0.i, %drm_mmap_locked.exit ], [ -19, %drm_dev_is_unplugged.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_vma_flush(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vmalist = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %vmalist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmalist, align 4
  %cmp.not18 = icmp eq ptr %1, %vmalist
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %vma.019 = phi ptr [ %vma_temp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %vma.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %vma_temp.0 = load ptr, ptr %vma.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vma.019) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vma.019, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %vma.019 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vma.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %vma.019 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %vma.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vma.019, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %vma.019) #7
  %cmp.not = icmp eq ptr %vma_temp.0, %vmalist
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ht_find_item(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_vm_open(ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #7
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end.i, align 4
  %sub.i = sub i32 %11, %9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %sub.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 16) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.drm_vm_open_locked.exit_crit_edge, label %if.then.i

entry.drm_vm_open_locked.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_vm_open_locked.exit

if.then.i:                                        ; preds = %entry
  %vma2.i = getelementptr inbounds %struct.drm_vma_entry, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %vma2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vma, ptr %vma2.i, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid.i, align 8
  %pid4.i = getelementptr inbounds %struct.drm_vma_entry, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %pid4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pid4.i, align 4
  %vmalist.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 44
  %21 = ptrtoint ptr %vmalist.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vmalist.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %vmalist.i, ptr noundef %22) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.drm_vm_open_locked.exit_crit_edge

if.then.i.drm_vm_open_locked.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_vm_open_locked.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vmalist.i, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %vmalist.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i, ptr %vmalist.i, align 4
  br label %drm_vm_open_locked.exit

drm_vm_open_locked.exit:                          ; preds = %if.end.i.i.i, %if.then.i.drm_vm_open_locked.exit_crit_edge, %entry.drm_vm_open_locked.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_vm_close(ptr noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #7
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end.i, align 4
  %sub.i = sub i32 %11, %9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %sub.i) #7
  %vmalist.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 44
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %pt.0.in.i = phi ptr [ %vmalist.i, %entry ], [ %pt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %pt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %pt.0.i = load ptr, ptr %pt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pt.0.i, %vmalist.i
  br i1 %cmp.not.i, label %for.cond.i.drm_vm_close_locked.exit_crit_edge, label %for.body.i

for.cond.i.drm_vm_close_locked.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_vm_close_locked.exit

for.body.i:                                       ; preds = %for.cond.i
  %vma8.i = getelementptr inbounds %struct.drm_vma_entry, ptr %pt.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %vma8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vma8.i, align 4
  %cmp9.i = icmp eq ptr %14, %vma
  br i1 %cmp9.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pt.0.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pt.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %pt.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pt.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %pt.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %pt.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pt.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %pt.0.i) #7
  br label %drm_vm_close_locked.exit

drm_vm_close_locked.exit:                         ; preds = %list_del.exit.i, %for.cond.i.drm_vm_close_locked.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_vm_dma_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %minor, align 4
  %dev2 = getelementptr inbounds %struct.drm_minor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %dma3 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 45
  %10 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pagelist = getelementptr inbounds %struct.drm_device_dma, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pagelist, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %address = getelementptr inbounds %struct.anon.16, ptr %vmf, i32 0, i32 3
  %14 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %sub = sub i32 %15, %17
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %shr
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %sub8 = add i32 %20, 1073741824
  %shr9 = lshr i32 %sub8, 12
  %add.ptr = getelementptr %struct.page, ptr %18, i32 %shr9
  %21 = getelementptr %struct.page, ptr %18, i32 %shr9, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !36

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %23, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %24, %if.end.i.i ]
  %25 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  %26 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %27, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !37

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.5) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #7
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #7, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@drm_vm_dma_fault, %if.then.i.i.i.i)) #7
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !40

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__page_ref_mod(ptr noundef %25, i32 noundef 1) #7
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page11 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %29 = ptrtoint ptr %page11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %page11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %sub, i32 noundef %shr) #7
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @drm_vm_fault(ptr nocapture noundef readnone %vmf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_vm_shm_close(ptr noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %11, %9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %sub) #7
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %12 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_private_data, align 4
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #7
  %vmalist = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 44
  %14 = ptrtoint ptr %vmalist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vmalist, align 4
  %cmp.not91 = icmp eq ptr %15, %vmalist
  br i1 %cmp.not91, label %entry.if.end55_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pt.093 = phi ptr [ %temp.095, %for.inc.for.body_crit_edge ], [ %15, %entry.for.body_crit_edge ]
  %found_maps.092 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %16 = ptrtoint ptr %pt.093 to i32
  call void @__asan_load4_noabort(i32 %16)
  %temp.095 = load ptr, ptr %pt.093, align 4
  %vma9 = getelementptr inbounds %struct.drm_vma_entry, ptr %pt.093, i32 0, i32 1
  %17 = ptrtoint ptr %vma9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vma9, align 4
  %vm_private_data10 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %vm_private_data10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vm_private_data10, align 4
  %cmp11 = icmp eq ptr %20, %13
  %inc = zext i1 %cmp11 to i32
  %spec.select = add i32 %found_maps.092, %inc
  %cmp13 = icmp eq ptr %18, %vma
  br i1 %cmp13, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pt.093) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del.exit_crit_edge

if.then14.list_del.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pt.093, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %pt.093 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pt.093, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then14.list_del.exit_crit_edge
  %27 = ptrtoint ptr %pt.093 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %pt.093, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pt.093, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pt.093) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %temp.095, %vmalist
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 1
  br i1 %phi.cmp, label %land.lhs.true, label %for.end.if.end55_crit_edge

for.end.if.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true:                                    ; preds = %for.end
  %flags = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 3
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end55_crit_edge, label %if.then23

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then23:                                        ; preds = %land.lhs.true
  %maplist = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 42
  %31 = ptrtoint ptr %maplist to i32
  call void @__asan_load4_noabort(i32 %31)
  %r_list.096 = load ptr, ptr %maplist, align 4
  %cmp31.not97 = icmp eq ptr %r_list.096, %maplist
  br i1 %cmp31.not97, label %if.then23.if.then47_crit_edge, label %if.then23.for.body33_crit_edge

if.then23.for.body33_crit_edge:                   ; preds = %if.then23
  br label %for.body33

if.then23.if.then47_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.then23.for.body33_crit_edge
  %r_list.099 = phi ptr [ %r_list.0, %for.body33.for.body33_crit_edge ], [ %r_list.096, %if.then23.for.body33_crit_edge ]
  %found_maps.298 = phi i32 [ %spec.select89, %for.body33.for.body33_crit_edge ], [ 0, %if.then23.for.body33_crit_edge ]
  %map34 = getelementptr inbounds %struct.drm_map_list, ptr %r_list.099, i32 0, i32 2
  %32 = ptrtoint ptr %map34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map34, align 4
  %cmp35 = icmp eq ptr %33, %13
  %inc37 = zext i1 %cmp35 to i32
  %spec.select89 = add i32 %found_maps.298, %inc37
  %34 = ptrtoint ptr %r_list.099 to i32
  call void @__asan_load4_noabort(i32 %34)
  %r_list.0 = load ptr, ptr %r_list.099, align 4
  %cmp31.not = icmp eq ptr %r_list.0, %maplist
  br i1 %cmp31.not, label %for.end45, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.end45:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select89)
  %phi.cmp101 = icmp eq i32 %spec.select89, 0
  br i1 %phi.cmp101, label %for.end45.if.then47_crit_edge, label %for.end45.if.end55_crit_edge

for.end45.if.end55_crit_edge:                     ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.end45.if.then47_crit_edge:                    ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

if.then47:                                        ; preds = %for.end45.if.then47_crit_edge, %if.then23.if.then47_crit_edge
  %type = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 2
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %36, label %if.then47.sw.epilog_crit_edge [
    i32 1, label %if.then47.sw.bb_crit_edge
    i32 0, label %if.then47.sw.bb_crit_edge104
    i32 2, label %sw.bb48
    i32 5, label %sw.bb51
  ]

if.then47.sw.bb_crit_edge104:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then47.sw.bb_crit_edge:                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then47.sw.epilog_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then47.sw.bb_crit_edge, %if.then47.sw.bb_crit_edge104
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 4
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle, align 4
  tail call void @iounmap(ptr noundef %39) #7
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %handle49 = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 4
  %40 = ptrtoint ptr %handle49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle49, align 4
  tail call void @vfree(ptr noundef %41) #7
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %dev52 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %42 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev52, align 4
  %size = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 1
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 4
  %handle53 = getelementptr inbounds %struct.drm_local_map, ptr %13, i32 0, i32 4
  %46 = ptrtoint ptr %handle53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %handle53, align 4
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %13, align 4
  tail call void @dma_free_attrs(ptr noundef %43, i32 noundef %45, ptr noundef %47, i32 noundef %49, i32 noundef 0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51, %sw.bb48, %sw.bb, %if.then47.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef %13) #7
  br label %if.end55

if.end55:                                         ; preds = %sw.epilog, %for.end45.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %for.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_vm_shm_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %address = getelementptr inbounds %struct.anon.16, ptr %vmf, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %sub = sub i32 %5, %7
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle, align 4
  %10 = ptrtoint ptr %9 to i32
  %add = add i32 %sub, %10
  %11 = inttoptr i32 %add to ptr
  %call = tail call ptr @vmalloc_to_page(ptr noundef %11) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !36

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  %17 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !37

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.5) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #7
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #7, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@drm_vm_shm_fault, %if.then.i.i.i.i)) #7
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !40

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__page_ref_mod(ptr noundef %16, i32 noundef 1) #7
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page5 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %20 = ptrtoint ptr %page5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %page5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %sub) #7
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_vm_sg_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %minor, align 4
  %dev2 = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %sg = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 54
  %12 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pagelist = getelementptr inbounds %struct.drm_sg_mem, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pagelist, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %address = getelementptr inbounds %struct.anon.16, ptr %vmf, i32 0, i32 3
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %sub = sub i32 %17, %19
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %virtual = getelementptr inbounds %struct.drm_sg_mem, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %virtual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virtual, align 4
  %24 = ptrtoint ptr %23 to i32
  %sub9 = sub i32 %21, %24
  %shr = lshr i32 %sub, 12
  %shr10 = lshr i32 %sub9, 12
  %add = add nuw nsw i32 %shr10, %shr
  %arrayidx = getelementptr ptr, ptr %15, i32 %add
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !36

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %26 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  %32 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %33, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !37

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.5) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #7
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #7, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@drm_vm_sg_fault, %if.then.i.i.i.i)) #7
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !40

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__page_ref_mod(ptr noundef %31, i32 noundef 1) #7
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page12 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %35 = ptrtoint ptr %page12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %26, ptr %page12, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_drm_legacy_mmap, !1, !"__ksymtab_drm_legacy_mmap", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_vm.c", i32 652, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_vm.c", i32 531, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_vm.c", i32 550, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_vm.c", i32 603, i32 3}
!8 = !{ptr @drm_vm_dma_ops, !9, !"drm_vm_dma_ops", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_vm.c", i32 376, i32 42}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_vm.c", i32 420, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_vm.c", i32 322, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!16 = !{ptr @drm_vm_ops, !17, !"drm_vm_ops", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_vm.c", i32 362, i32 42}
!18 = !{ptr @drm_vm_shm_ops, !19, !"drm_vm_shm_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_vm.c", i32 369, i32 42}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_vm.c", i32 218, i32 2}
!22 = !{ptr @drm_vm_sg_ops, !23, !"drm_vm_sg_ops", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_vm.c", i32 383, i32 42}
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
!34 = !{!"auto-init"}
!35 = !{i8 0, i8 2}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2154255972, i64 2154256456, i64 2154256009, i64 2154256065, i64 2154256099, i64 2154256123, i64 2154256164, i64 2154256185, i64 2154256213, i64 2154256247}
!39 = !{i64 2148677247, i64 2148677273, i64 2148677302, i64 2148677336, i64 2148677367, i64 2148677390}
!40 = !{i64 2148501062, i64 2148501067, i64 2148501080, i64 2148501124, i64 2148501158, i64 2148501179}
