; ModuleID = '/llk/IR_all_yes/drivers/staging/android/ashmem.c_pt.bc'
source_filename = "../drivers/staging/android/ashmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ashmem_area = type { [267 x i8], %struct.list_head, ptr, i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.ashmem_pin = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35 }
%struct.llist_node = type { ptr }
%union.anon.35 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.81 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.83 = type { ptr }
%struct.ashmem_range = type { %struct.list_head, %struct.list_head, ptr, i32, i32, i32 }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_ashmem__294_970_ashmem_init6 = internal global ptr @ashmem_init, section ".initcall6.init", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ashmem_area_cache\00", [46 x i8] zeroinitializer }, align 32
@ashmem_area_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ashmem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ashmem: failed to create slab cache\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ashmem_init\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/staging/android/ashmem.c\00", [63 x i8] zeroinitializer }, align 32
@ashmem_init._entry_ptr = internal global ptr @ashmem_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ashmem_range_cache\00", [45 x i8] zeroinitializer }, align 32
@ashmem_range_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ashmem_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ashmem_init._entry_ptr.6 = internal global ptr @ashmem_init._entry.5, section ".printk_index", align 4
@ashmem_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.16, ptr @ashmem_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@ashmem_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ashmem: failed to register misc device!\0A\00", [53 x i8] zeroinitializer }, align 32
@ashmem_init._entry_ptr.9 = internal global ptr @ashmem_init._entry.7, section ".printk_index", align 4
@ashmem_shrinker = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @ashmem_shrink_count, ptr @ashmem_shrink_scan, i32 0, i32 8, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@ashmem_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ashmem: failed to register shrinker!\0A\00", [56 x i8] zeroinitializer }, align 32
@ashmem_init._entry_ptr.12 = internal global ptr @ashmem_init._entry.10, section ".printk_index", align 4
@ashmem_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016ashmem: initialized\0A\00", [41 x i8] zeroinitializer }, align 32
@ashmem_init._entry_ptr.15 = internal global ptr @ashmem_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ashmem\00", [25 x i8] zeroinitializer }, align 32
@ashmem_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ashmem_llseek, ptr null, ptr null, ptr @ashmem_read_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ashmem_ioctl, ptr null, ptr @ashmem_mmap, i32 0, ptr @ashmem_open, ptr null, ptr @ashmem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ashmem_show_fdinfo, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ashmem_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ashmem_mutex, i64 52), ptr getelementptr (i8, ptr @ashmem_mutex, i64 52) }, ptr @ashmem_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ashmem_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ashmem_mutex\00", [19 x i8] zeroinitializer }, align 32
@__const.ashmem_ioctl.sc = private unnamed_addr constant %struct.shrink_control { i32 3264, i32 0, i32 2147483647, i32 0, ptr null }, align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev/ashmem\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ashmem_shrink_inflight = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ashmem_shrink_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @ashmem_shrink_wait, i64 44), ptr getelementptr (i8, ptr @ashmem_shrink_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ashmem_shrink_wait.lock\00", [40 x i8] zeroinitializer }, align 32
@lru_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ashmem_lru_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ashmem_lru_list, ptr @ashmem_lru_list }, [24 x i8] zeroinitializer }, align 32
@ashmem_mmap.vmfile_fops = internal global { %struct.file_operations, [32 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&backing_shmem_inode_class\00", [37 x i8] zeroinitializer }, align 32
@backing_shmem_inode_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dev/ashmem/\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inode:\09%ld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name:\09%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"size:\09%zu\0A\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 30468, i64 30470, i64 30473, i64 30474, i64 1074034435, i64 1074034437, i64 1074296583, i64 1074296584, i64 1090549505, i64 2164291330]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 30473, i64 1074296583, i64 1074296584]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 929, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 933, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 937, i32 42 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 941, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"ashmem_misc\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 919, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 947, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"ashmem_shrinker\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 530, i32 24 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 953, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 957, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 921, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"ashmem_fops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 903, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"ashmem_mutex\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 93, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 616, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 230, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 214, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 174, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"ashmem_shrink_inflight\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 78, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"ashmem_shrink_wait\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 79, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant [10 x i8] c"lru_count\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 86, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"ashmem_lru_list\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 76, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"vmfile_fops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 380, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 422, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"backing_shmem_inode_class\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 105, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 265, i32 21 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 892, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 895, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [36 x i8] c"../drivers/staging/android/ashmem.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 898, i32 16 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__initcall__kmod_ashmem__294_970_ashmem_init6, ptr @ashmem_init._entry, ptr @ashmem_init._entry.10, ptr @ashmem_init._entry.13, ptr @ashmem_init._entry.5, ptr @ashmem_init._entry.7, ptr @ashmem_init._entry_ptr, ptr @ashmem_init._entry_ptr.12, ptr @ashmem_init._entry_ptr.15, ptr @ashmem_init._entry_ptr.6, ptr @ashmem_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ashmem_misc, ptr @.str.8, ptr @ashmem_shrinker, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @ashmem_fops, ptr @ashmem_mutex, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ashmem_shrink_inflight, ptr @ashmem_shrink_wait, ptr @.str.23, ptr @lru_count, ptr @ashmem_lru_list, ptr @ashmem_mmap.vmfile_fops, ptr @.str.24, ptr @backing_shmem_inode_class, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_shrink_inflight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_shrink_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lru_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_lru_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ashmem_mmap.vmfile_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backing_shmem_inode_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ashmem_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 288, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call, ptr @ashmem_area_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 32, i32 noundef 0, i32 noundef 131072, ptr noundef null) #11
  store ptr %call2, ptr @ashmem_range_cachep, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %out_free1

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @misc_register(ptr noundef nonnull @ashmem_misc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %out_free2

if.end19:                                         ; preds = %if.end10
  %call20 = tail call i32 @register_shrinker(ptr noundef nonnull @ashmem_shrinker) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end31, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  tail call void @misc_deregister(ptr noundef nonnull @ashmem_misc) #11
  br label %out_free2

do.end31:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %cleanup

out_free2:                                        ; preds = %do.end25, %do.end16
  %ret.0 = phi i32 [ %call11, %do.end16 ], [ %call20, %do.end25 ]
  %0 = load ptr, ptr @ashmem_range_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  br label %out_free1

out_free1:                                        ; preds = %out_free2, %do.end7
  %ret.1 = phi i32 [ %ret.0, %out_free2 ], [ -12, %do.end7 ]
  %1 = load ptr, ptr @ashmem_area_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free1, %do.end31, %do.end
  %retval.0 = phi i32 [ 0, %do.end31 ], [ %ret.1, %out_free1 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ashmem_llseek(ptr nocapture noundef %file, i64 noundef %offset, i32 noundef %origin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %size = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %file1 = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file1, align 4
  %tobool.not = icmp eq ptr %5, null
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file1, align 4
  %call = tail call i64 @vfs_llseek(ptr noundef %7, i64 noundef %offset, i32 noundef %origin) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp5 = icmp slt i64 %call, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file1, align 4
  %f_pos = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %f_pos, align 8
  %f_pos9 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %12 = ptrtoint ptr %f_pos9 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %f_pos9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i64 [ -22, %if.then ], [ %call, %if.end7 ], [ %call, %if.end3.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashmem_read_iter(ptr noundef %iocb, ptr noundef %iter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %size = getelementptr inbounds %struct.ashmem_area, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end:                                           ; preds = %entry
  %file = getelementptr inbounds %struct.ashmem_area, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.out_unlock_crit_edge, label %if.end2

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end2:                                          ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  %8 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file, align 4
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %call = tail call i32 @vfs_iter_read(ptr noundef %9, ptr noundef %iter, ptr noundef %ki_pos, i32 noundef 0) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp sgt i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end2.out_unlock_crit_edge

if.end2.out_unlock_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ki_pos, align 8
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %f_pos = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %11, ptr %f_pos, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then5, %if.end2.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %entry.out_unlock_crit_edge ], [ %call, %if.then5 ], [ %call, %if.end2.out_unlock_crit_edge ], [ -9, %if.end.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashmem_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  %pin.i = alloca %struct.ashmem_pin, align 4
  %range.i = alloca ptr, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %local_name.i30 = alloca [256 x i8], align 1
  %local_name.i = alloca [256 x i8], align 1
  %sc = alloca %struct.shrink_control, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1090549505, label %sw.bb
    i32 -2130675966, label %sw.bb1
    i32 1074034435, label %sw.bb3
    i32 30468, label %sw.bb5
    i32 1074034437, label %sw.bb7
    i32 30470, label %sw.bb9
    i32 1074296583, label %entry.sw.bb10_crit_edge
    i32 1074296584, label %entry.sw.bb10_crit_edge48
    i32 30473, label %entry.sw.bb10_crit_edge49
    i32 30474, label %sw.bb12
  ]

entry.sw.bb10_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

entry.sw.bb10_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %local_name.i) #11
  %4 = call ptr @memset(ptr %local_name.i, i32 255, i32 256)
  %call.i = call i32 @strncpy_from_user(ptr noundef nonnull %local_name.i, ptr noundef %3, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.set_name.exit_crit_edge, label %if.end.i

sw.bb.set_name.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_name.exit

if.end.i:                                         ; preds = %sw.bb
  call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %file.i = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %1, i32 11
  %call5.i = call i32 @strscpy(ptr noundef %add.ptr.i, ptr noundef nonnull %local_name.i, i32 noundef 256) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.end.i.if.end6.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.else.i ], [ -22, %if.end.i.if.end6.i_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  br label %set_name.exit

set_name.exit:                                    ; preds = %if.end6.i, %sw.bb.set_name.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end6.i ], [ %call.i, %sw.bb.set_name.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %local_name.i) #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %7 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %local_name.i30) #11
  %8 = call ptr @memset(ptr %local_name.i30, i32 255, i32 256)
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %arrayidx.i = getelementptr [267 x i8], ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 0
  br i1 %cmp.not.i, label %if.end.thread.i, label %if.end.i32

if.end.thread.i:                                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %11 = call ptr @memcpy(ptr %local_name.i30, ptr @.str.19, i32 11)
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  br label %if.then.i.i.i.i

if.end.i32:                                       ; preds = %sw.bb1
  %call.i31 = tail call i32 @strlen(ptr noundef %arrayidx.i) #15
  %add.i = add i32 %call.i31, 1
  %12 = call ptr @memcpy(ptr %local_name.i30, ptr %arrayidx.i, i32 %add.i)
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %cmp1.i.i.i = icmp ugt i32 %add.i, 256
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.end.i32.if.then.i.i.i.i_crit_edge, !prof !85

if.end.i32.if.then.i.i.i.i_crit_edge:             ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef %add.i) #11
  br label %get_name.exit

if.then.i.i.i.i:                                  ; preds = %if.end.i32.if.then.i.i.i.i_crit_edge, %if.end.thread.i
  %len.019.i = phi i32 [ 11, %if.end.thread.i ], [ %add.i, %if.end.i32.if.then.i.i.i.i_crit_edge ]
  call void @__check_object_size(ptr noundef nonnull %local_name.i30, i32 noundef %len.019.i, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %len.019.i, i32 -1226833920) #16, !srcloc !86
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %local_name.i30, i32 noundef %len.019.i) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %local_name.i30, i32 noundef %len.019.i) #11
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %len.019.i, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %len.019.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i33 = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool.not.i33, i32 0, i32 -14
  br label %get_name.exit

get_name.exit:                                    ; preds = %copy_to_user.exit.i, %if.then3.i.i.i
  %14 = phi i32 [ -14, %if.then3.i.i.i ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %local_name.i30) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %file4 = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %file4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file4, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.then, label %sw.bb3.if.end_crit_edge

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %size = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %arg, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb3.if.end_crit_edge
  %ret.0 = phi i32 [ -22, %sw.bb3.if.end_crit_edge ], [ 0, %if.then ]
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %size6 = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size6, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %prot_mask.i = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %prot_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prot_mask.i, align 4
  %and.i = and i32 %21, %arg
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %arg)
  %cmp.not.i34 = icmp eq i32 %and.i, %arg
  br i1 %cmp.not.i34, label %if.end.i36, label %sw.bb7.set_prot_mask.exit_crit_edge

sw.bb7.set_prot_mask.exit_crit_edge:              ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_prot_mask.exit

if.end.i36:                                       ; preds = %sw.bb7
  %and1.i = and i32 %arg, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i35 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i35, label %if.end.i36.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i36.if.end5.i_crit_edge:                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %personality.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 62
  %26 = ptrtoint ptr %personality.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %personality.i, align 32
  %and2.i = lshr i32 %27, 20
  %28 = and i32 %and2.i, 4
  %29 = or i32 %28, %arg
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i, %if.end.i36.if.end5.i_crit_edge
  %prot.addr.0.i = phi i32 [ %arg, %if.end.i36.if.end5.i_crit_edge ], [ %29, %land.lhs.true.i ]
  %30 = ptrtoint ptr %prot_mask.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %prot.addr.0.i, ptr %prot_mask.i, align 4
  br label %set_prot_mask.exit

set_prot_mask.exit:                               ; preds = %if.end5.i, %sw.bb7.set_prot_mask.exit_crit_edge
  %ret.0.i37 = phi i32 [ 0, %if.end5.i ], [ -22, %sw.bb7.set_prot_mask.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prot_mask = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %prot_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prot_mask, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge48, %entry.sw.bb10_crit_edge49
  %33 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pin.i) #11
  %34 = ptrtoint ptr %pin.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %pin.i, align 4, !annotation !87
  %35 = getelementptr inbounds %struct.ashmem_pin, ptr %pin.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %35, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range.i) #11
  %37 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %range.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #11
  %call.i.i.i38 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i38, label %sw.bb10.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb10.if.then11.i.i.i_crit_edge:                ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb10
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 8, i32 -1226833920) #16, !srcloc !88
  %asmresult.i.i.i39 = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i39)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i39, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i41, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !89

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i41:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pin.i, i32 noundef 8) #11
  %39 = call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !90
  %and.i.i.i.i.i = and i32 %41, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %pin.i, ptr noundef %33, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #11, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i42, label %if.end.i.i.i41.if.then11.i.i.i_crit_edge, !prof !89

if.end.i.i.i41.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i41.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb10.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i41.if.then11.i.i.i_crit_edge ], [ 8, %sw.bb10.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %pin.i, i32 %sub.i.i.i
  %42 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %ashmem_pin_unpin.exit

if.end.i42:                                       ; preds = %if.end.i.i.i41
  %cmd.off.i = add nsw i32 %cmd, -1074296583
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd.off.i)
  %switch84.i = icmp ult i32 %cmd.off.i, 2
  br i1 %switch84.i, label %if.then2.i, label %if.end.i42.if.end7.i_crit_edge

if.end.i42.if.end7.i_crit_edge:                   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i42
  %43 = load ptr, ptr @ashmem_range_cachep, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %43, i32 noundef 3520) #11
  %44 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i, ptr %range.i, align 4
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.then2.i.ashmem_pin_unpin.exit_crit_edge, label %if.then2.i.if.end7.i_crit_edge

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then2.i.ashmem_pin_unpin.exit_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ashmem_pin_unpin.exit

if.end7.i:                                        ; preds = %if.then2.i.if.end7.i_crit_edge, %if.end.i42.if.end7.i_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 776) #11
  %call.i.i85.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ashmem_shrink_inflight, i32 noundef 4) #11
  %45 = load volatile i32, ptr @ashmem_shrink_inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool13.not.i = icmp eq i32 %45, 0
  br i1 %tobool13.not.i, label %if.end7.i.do.end22.i_crit_edge, label %if.end15.i

if.end7.i.do.end22.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i

if.end15.i:                                       ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %46 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %call1691.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @ashmem_shrink_wait, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call.i.i8692.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ashmem_shrink_inflight, i32 noundef 4) #11
  %47 = load volatile i32, ptr @ashmem_shrink_inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool18.not93.i = icmp eq i32 %47, 0
  br i1 %tobool18.not93.i, label %if.end15.i.for.end.i_crit_edge, label %if.end15.i.cleanup.i_crit_edge

if.end15.i.cleanup.i_crit_edge:                   ; preds = %if.end15.i
  br label %cleanup.i

if.end15.i.for.end.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end15.i.cleanup.i_crit_edge
  call void @schedule() #11
  %call16.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @ashmem_shrink_wait, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %call.i.i86.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ashmem_shrink_inflight, i32 noundef 4) #11
  %48 = load volatile i32, ptr @ashmem_shrink_inflight, align 4
  %tobool18.not.i = icmp eq i32 %48, 0
  br i1 %tobool18.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end15.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef nonnull @ashmem_shrink_wait, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %do.end22.i

do.end22.i:                                       ; preds = %for.end.i, %if.end7.i.do.end22.i_crit_edge
  %file.i43 = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %file.i43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %file.i43, align 4
  %tobool23.not.i = icmp eq ptr %50, null
  br i1 %tobool23.not.i, label %do.end22.i.out_unlock.i_crit_edge, label %if.end25.i

do.end22.i.out_unlock.i_crit_edge:                ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end25.i:                                       ; preds = %do.end22.i
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool26.not.i = icmp eq i32 %52, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end25.i.if.end29.i_crit_edge

if.end25.i.if.end29.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %size.i = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i, align 4
  %add.i44 = add i32 %54, 4095
  %and.i45 = and i32 %add.i44, -4096
  %55 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pin.i, align 4
  %sub.i = sub i32 %and.i45, %56
  %57 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.i, ptr %35, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end25.i.if.end29.i_crit_edge
  %58 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pin.i, align 4
  %60 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %35, align 4
  %or.i = or i32 %61, %59
  %and32.i = and i32 %or.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp ne i32 %and32.i, 0
  %sub37.i = xor i32 %59, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %sub37.i)
  %cmp39.i = icmp ugt i32 %61, %sub37.i
  %or.cond.i = select i1 %tobool33.not.i, i1 true, i1 %cmp39.i
  br i1 %or.cond.i, label %if.end29.i.out_unlock.i_crit_edge, label %if.end41.i

if.end29.i.out_unlock.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end41.i:                                       ; preds = %if.end29.i
  %size42.i = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %size42.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size42.i, align 4
  %add43.i = add i32 %63, 4095
  %and44.i = and i32 %add43.i, -4096
  %add47.i = add i32 %61, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %and44.i, i32 %add47.i)
  %cmp48.i = icmp ult i32 %and44.i, %add47.i
  br i1 %cmp48.i, label %if.end41.i.out_unlock.i_crit_edge, label %if.end50.i

if.end41.i.out_unlock.i_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end50.i:                                       ; preds = %if.end41.i
  %div82.i = lshr i32 %59, 12
  %div5383.i = lshr i32 %61, 12
  %add54.i = add nsw i32 %div82.i, -1
  %sub55.i = add nsw i32 %add54.i, %div5383.i
  %64 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %cmd, label %if.end50.i.out_unlock.i_crit_edge [
    i32 1074296583, label %sw.bb.i
    i32 1074296584, label %sw.bb57.i
    i32 30473, label %sw.bb59.i
  ]

if.end50.i.out_unlock.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

sw.bb.i:                                          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  %call56.i = call fastcc i32 @ashmem_pin(ptr noundef %1, i32 noundef %div82.i, i32 noundef %sub55.i, ptr noundef nonnull %range.i) #11
  br label %out_unlock.i

sw.bb57.i:                                        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ashmem_unpin(ptr noundef %1, i32 noundef %div82.i, i32 noundef %sub55.i, ptr noundef nonnull %range.i) #11
  br label %out_unlock.i

sw.bb59.i:                                        ; preds = %if.end50.i
  %unpinned_list.i.i = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %lor.rhs.i.i.i.for.cond.i.i_crit_edge, %sw.bb59.i
  %.pn.in.i.i = phi ptr [ %unpinned_list.i.i, %sw.bb59.i ], [ %.pn.i.i, %lor.rhs.i.i.i.for.cond.i.i_crit_edge ]
  %65 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %unpinned_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.out_unlock.i_crit_edge, label %for.body.i.i

for.cond.i.i.out_unlock.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %pgend.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 16
  %66 = ptrtoint ptr %pgend.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pgend.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %div82.i)
  %cmp.i.i.i = icmp ult i32 %67, %div82.i
  br i1 %cmp.i.i.i, label %for.body.i.i.out_unlock.i_crit_edge, label %if.end.i.i

for.body.i.i.out_unlock.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %pgstart.i.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 12
  %68 = ptrtoint ptr %pgstart.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pgstart.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %div82.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %69, %div82.i
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.out_unlock.i_crit_edge

if.end.i.i.out_unlock.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %sub55.i)
  %cmp.not.i8.i.i.i = icmp ugt i32 %69, %sub55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %sub55.i)
  %cmp1.i10.not.i.i.i = icmp ult i32 %67, %sub55.i
  %or.cond.i.i = select i1 %cmp.not.i8.i.i.i, i1 true, i1 %cmp1.i10.not.i.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i.i, label %lor.lhs.false.i.i.i.out_unlock.i_crit_edge

lor.lhs.false.i.i.i.out_unlock.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

lor.rhs.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %div82.i)
  %cmp.not.i14.i.i.i = icmp uge i32 %69, %div82.i
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %sub55.i)
  %cmp1.i16.i.i.i = icmp ule i32 %67, %sub55.i
  %or.cond15.i.i = select i1 %cmp.not.i14.i.i.i, i1 %cmp1.i16.i.i.i, i1 false
  br i1 %or.cond15.i.i, label %lor.rhs.i.i.i.out_unlock.i_crit_edge, label %lor.rhs.i.i.i.for.cond.i.i_crit_edge

lor.rhs.i.i.i.for.cond.i.i_crit_edge:             ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

lor.rhs.i.i.i.out_unlock.i_crit_edge:             ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %lor.rhs.i.i.i.out_unlock.i_crit_edge, %lor.lhs.false.i.i.i.out_unlock.i_crit_edge, %if.end.i.i.out_unlock.i_crit_edge, %for.body.i.i.out_unlock.i_crit_edge, %for.cond.i.i.out_unlock.i_crit_edge, %sw.bb57.i, %sw.bb.i, %if.end50.i.out_unlock.i_crit_edge, %if.end41.i.out_unlock.i_crit_edge, %if.end29.i.out_unlock.i_crit_edge, %do.end22.i.out_unlock.i_crit_edge
  %ret.0.i46 = phi i32 [ -22, %if.end29.i.out_unlock.i_crit_edge ], [ -22, %if.end41.i.out_unlock.i_crit_edge ], [ -22, %if.end50.i.out_unlock.i_crit_edge ], [ 0, %sw.bb57.i ], [ %call56.i, %sw.bb.i ], [ -22, %do.end22.i.out_unlock.i_crit_edge ], [ 1, %for.body.i.i.out_unlock.i_crit_edge ], [ 1, %for.cond.i.i.out_unlock.i_crit_edge ], [ 0, %if.end.i.i.out_unlock.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.out_unlock.i_crit_edge ], [ 0, %lor.rhs.i.i.i.out_unlock.i_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  %70 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %range.i, align 4
  %tobool61.not.i = icmp eq ptr %71, null
  br i1 %tobool61.not.i, label %out_unlock.i.ashmem_pin_unpin.exit_crit_edge, label %if.then62.i

out_unlock.i.ashmem_pin_unpin.exit_crit_edge:     ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ashmem_pin_unpin.exit

if.then62.i:                                      ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = load ptr, ptr @ashmem_range_cachep, align 4
  call void @kmem_cache_free(ptr noundef %72, ptr noundef nonnull %71) #11
  br label %ashmem_pin_unpin.exit

ashmem_pin_unpin.exit:                            ; preds = %if.then62.i, %out_unlock.i.ashmem_pin_unpin.exit_crit_edge, %if.then2.i.ashmem_pin_unpin.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i47 = phi i32 [ -12, %if.then2.i.ashmem_pin_unpin.exit_crit_edge ], [ %ret.0.i46, %if.then62.i ], [ %ret.0.i46, %out_unlock.i.ashmem_pin_unpin.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pin.i) #11
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %call13 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call13, label %if.then14, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sc) #11
  %73 = call ptr @memcpy(ptr %sc, ptr @__const.ashmem_ioctl.sc, i32 20)
  %74 = load i32, ptr @lru_count, align 4
  %call16 = call i32 @ashmem_shrink_scan(ptr noundef nonnull @ashmem_shrinker, ptr noundef nonnull %sc)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sc) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %sw.bb12.sw.epilog_crit_edge, %ashmem_pin_unpin.exit, %sw.bb9, %set_prot_mask.exit, %sw.bb5, %if.end, %get_name.exit, %set_name.exit, %entry.sw.epilog_crit_edge
  %ret.1 = phi i32 [ -25, %entry.sw.epilog_crit_edge ], [ %74, %if.then14 ], [ -1, %sw.bb12.sw.epilog_crit_edge ], [ %retval.0.i47, %ashmem_pin_unpin.exit ], [ %32, %sw.bb9 ], [ %ret.0.i37, %set_prot_mask.exit ], [ %19, %sw.bb5 ], [ %ret.0, %if.end ], [ %14, %get_name.exit ], [ %retval.0.i, %set_name.exit ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashmem_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %size = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = sub i32 %5, %7
  %add = add i32 %3, 4095
  %and = and i32 %add, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %and)
  %cmp = icmp ugt i32 %sub, %and
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end3:                                          ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %prot_mask = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %prot_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prot_mask, align 4
  %neg = xor i32 %11, -1
  %and4 = and i32 %9, 7
  %and6 = and i32 %and4, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end3
  %and.i = shl i32 %neg, 4
  %or5.i92 = and i32 %and.i, 112
  %neg13 = xor i32 %or5.i92, -1
  %and15 = and i32 %9, %neg13
  %12 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and15, ptr %vm_flags, align 4
  %file16 = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %file16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file16, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.then18, label %if.end9.if.end45_crit_edge

if.end9.if.end45_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then18:                                        ; preds = %if.end9
  %arrayidx = getelementptr [267 x i8], ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp20.not = icmp eq i8 %16, 0
  %spec.select = select i1 %cmp20.not, ptr @.str.19, ptr %1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %conv26 = zext i32 %18 to i64
  %call28 = tail call ptr @shmem_file_setup(ptr noundef %spec.select, i64 noundef %conv26, i32 noundef %and15) #11
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.then18
  %f_mode = getelementptr inbounds %struct.file, ptr %call28, i32 0, i32 8
  %19 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_mode, align 8
  %or = or i32 %20, 4
  store i32 %or, ptr %f_mode, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %call28, i32 0, i32 2
  %21 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i, align 8
  %dep_map = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 25, i32 6
  %wait_type_inner = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 25, i32 6, i32 4
  %23 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @backing_shmem_inode_class, i32 noundef 0, i8 noundef zeroext %24, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %25 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call28, ptr %file16, align 4
  %26 = load ptr, ptr getelementptr inbounds (%struct.file_operations, ptr @ashmem_mmap.vmfile_fops, i32 0, i32 12), align 4
  %tobool39.not = icmp eq ptr %26, null
  br i1 %tobool39.not, label %if.then40, label %if.end32.cleanup.thread_crit_edge

if.end32.cleanup.thread_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %f_op = getelementptr inbounds %struct.file, ptr %call28, i32 0, i32 3
  %27 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_op, align 4
  %29 = call ptr @memcpy(ptr @ashmem_mmap.vmfile_fops, ptr %28, i32 128)
  store ptr @ashmem_vmfile_mmap, ptr getelementptr inbounds (%struct.file_operations, ptr @ashmem_mmap.vmfile_fops, i32 0, i32 12), align 4
  store ptr @ashmem_vmfile_get_unmapped_area, ptr getelementptr inbounds (%struct.file_operations, ptr @ashmem_mmap.vmfile_fops, i32 0, i32 21), align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then40, %if.end32.cleanup.thread_crit_edge
  %f_op42 = getelementptr inbounds %struct.file, ptr %call28, i32 0, i32 3
  %30 = ptrtoint ptr %f_op42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ashmem_mmap.vmfile_fops, ptr %f_op42, align 4
  br label %if.end45

cleanup:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call28 to i32
  br label %out

if.end45:                                         ; preds = %cleanup.thread, %if.end9.if.end45_crit_edge
  %32 = ptrtoint ptr %file16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %file16, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %33, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #11, !srcloc !93
  %35 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vm_flags, align 4
  %and49 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end45
  %call52 = tail call i32 @shmem_zero_setup(ptr noundef %vma) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then51.if.end57_crit_edge, label %if.then54

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %file16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %file16, align 4
  tail call void @fput(ptr noundef %38) #11
  br label %out

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %39 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %vm_ops.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then51.if.end57_crit_edge
  %40 = ptrtoint ptr %file16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %file16, align 4
  tail call void @vma_set_file(ptr noundef %vma, ptr noundef %41) #11
  %42 = ptrtoint ptr %file16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %file16, align 4
  tail call void @fput(ptr noundef %43) #11
  br label %out

out:                                              ; preds = %if.end57, %if.then54, %cleanup, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.3 = phi i32 [ %call52, %if.then54 ], [ 0, %if.end57 ], [ %31, %cleanup ], [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -1, %if.end3.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashmem_open(ptr noundef %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_file_open(ptr noundef %inode, ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @ashmem_area_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #11
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %unpinned_list = getelementptr inbounds %struct.ashmem_area, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %unpinned_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %unpinned_list, ptr %unpinned_list, align 4
  %prev.i = getelementptr inbounds %struct.ashmem_area, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %unpinned_list, ptr %prev.i, align 8
  %3 = call ptr @memcpy(ptr %call.i, ptr @.str.25, i32 11)
  %prot_mask = getelementptr inbounds %struct.ashmem_area, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %prot_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %prot_mask, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashmem_release(ptr nocapture noundef readnone %ignored, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %unpinned_list = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unpinned_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unpinned_list, align 4
  %cmp.not23 = icmp eq ptr %3, %unpinned_list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %range_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn, %range_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %range.0 = getelementptr i8, ptr %.pn.in24, i32 -8
  %4 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in24, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_del.exit.i_crit_edge

for.body.list_del.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in24, i32 4
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in24, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %purged.i.i = getelementptr i8, ptr %.pn.in24, i32 20
  %13 = ptrtoint ptr %purged.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %purged.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i, label %if.then.i, label %list_del.exit.i.range_del.exit_crit_edge

list_del.exit.i.range_del.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %range_del.exit

if.then.i:                                        ; preds = %list_del.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %range.0) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.lru_del.exit.i_crit_edge

if.then.i.lru_del.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lru_del.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in24, i32 -4
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %range.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %range.0, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %lru_del.exit.i

lru_del.exit.i:                                   ; preds = %if.end.i.i.i.i, %if.then.i.lru_del.exit.i_crit_edge
  %21 = ptrtoint ptr %range.0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %range.0, align 4
  %prev.i.i4.i = getelementptr i8, ptr %.pn.in24, i32 -4
  %22 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i4.i, align 4
  %pgend.i.i.i = getelementptr i8, ptr %.pn.in24, i32 16
  %23 = ptrtoint ptr %pgend.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pgend.i.i.i, align 4
  %pgstart.i.i.i = getelementptr i8, ptr %.pn.in24, i32 12
  %25 = ptrtoint ptr %pgstart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pgstart.i.i.i, align 4
  %sub.i.neg.i.i = xor i32 %24, -1
  %add.i.neg.i.i = add i32 %26, %sub.i.neg.i.i
  %27 = load i32, ptr @lru_count, align 4
  %sub.i.i = add i32 %add.i.neg.i.i, %27
  store i32 %sub.i.i, ptr @lru_count, align 4
  br label %range_del.exit

range_del.exit:                                   ; preds = %lru_del.exit.i, %list_del.exit.i.range_del.exit_crit_edge
  %28 = load ptr, ptr @ashmem_range_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef %range.0) #11
  %cmp.not = icmp eq ptr %.pn, %unpinned_list
  br i1 %cmp.not, label %range_del.exit.for.end_crit_edge, label %range_del.exit.for.body_crit_edge

range_del.exit.for.body_crit_edge:                ; preds = %range_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

range_del.exit.for.end_crit_edge:                 ; preds = %range_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %range_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  %file13 = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %file13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %file13, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %30) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %31 = load ptr, ptr @ashmem_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ashmem_show_fdinfo(ptr noundef %m, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ashmem_mutex, i32 noundef 0) #11
  %file1 = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr [267 x i8], ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, ptr noundef %arrayidx) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %size = getelementptr inbounds %struct.ashmem_area, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %11) #11
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ashmem_shrink_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readnone %sc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lru_count, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashmem_shrink_scan(ptr nocapture noundef readnone %shrink, ptr nocapture noundef %sc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sc, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.end:                                           ; preds = %entry
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @ashmem_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup25_crit_edge, label %while.cond.preheader

if.end.cleanup25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

while.cond.preheader:                             ; preds = %if.end
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end18.while.cond_crit_edge, %while.cond.preheader
  %freed.0 = phi i32 [ %add10, %if.end18.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %2 = load volatile ptr, ptr @ashmem_lru_list, align 4
  %cmp.i.not = icmp eq ptr %2, @ashmem_lru_list
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %pgstart = getelementptr inbounds %struct.ashmem_range, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %pgstart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pgstart, align 4
  %mul = shl i32 %4, 12
  %conv = zext i32 %mul to i64
  %pgend = getelementptr inbounds %struct.ashmem_range, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %pgend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pgend, align 4
  %add = shl i32 %6, 12
  %mul6 = add i32 %add, 4096
  %conv7 = zext i32 %mul6 to i64
  %asma = getelementptr inbounds %struct.ashmem_range, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %asma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asma, align 4
  %file = getelementptr inbounds %struct.ashmem_area, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %file, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #11, !srcloc !93
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ashmem_shrink_inflight, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @ashmem_shrink_inflight, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ashmem_shrink_inflight, ptr nonnull @ashmem_shrink_inflight, i32 1, ptr nonnull elementtype(i32) @ashmem_shrink_inflight) #11, !srcloc !93
  %purged = getelementptr inbounds %struct.ashmem_range, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %purged to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %purged, align 4
  %call.i.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i.i38, label %if.end.i.i.i, label %while.body.lru_del.exit_crit_edge

while.body.lru_del.exit_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %lru_del.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %lru_del.exit

lru_del.exit:                                     ; preds = %if.end.i.i.i, %while.body.lru_del.exit_crit_edge
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %pgend to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pgend, align 4
  %24 = ptrtoint ptr %pgstart to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pgstart, align 4
  %sub.i.neg.i = xor i32 %23, -1
  %add.i.neg.i = add i32 %25, %sub.i.neg.i
  %26 = load i32, ptr @lru_count, align 4
  %sub.i = add i32 %add.i.neg.i, %26
  store i32 %sub.i, ptr @lru_count, align 4
  %sub.i39 = add i32 %freed.0, 1
  %add.i = add i32 %sub.i39, %23
  %add10 = sub i32 %add.i, %25
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  %f_op = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 3
  %27 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_op, align 4
  %fallocate = getelementptr inbounds %struct.file_operations, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %fallocate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fallocate, align 4
  %sub = sub nsw i64 %conv7, %conv
  %call11 = tail call i32 %30(ptr noundef %10, i32 noundef 3, i64 noundef %conv, i64 noundef %sub) #11
  tail call void @fput(ptr noundef %10) #11
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ashmem_shrink_inflight, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull @ashmem_shrink_inflight, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ashmem_shrink_inflight, ptr nonnull @ashmem_shrink_inflight, i32 1, ptr nonnull elementtype(i32) @ashmem_shrink_inflight) #11, !srcloc !95
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then13, label %lru_del.exit.if.end14_crit_edge

lru_del.exit.if.end14_crit_edge:                  ; preds = %lru_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %lru_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wake_up(ptr noundef nonnull @ashmem_shrink_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lru_del.exit.if.end14_crit_edge
  %call15 = tail call i32 @mutex_trylock(ptr noundef nonnull @ashmem_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup25_crit_edge, label %if.end18

if.end14.cleanup25_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.end18:                                         ; preds = %if.end14
  %32 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_to_scan, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %nr_to_scan, align 4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.end18.while.end_crit_edge, label %if.end18.while.cond_crit_edge

if.end18.while.cond_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %while.cond.while.end_crit_edge
  %freed.1 = phi i32 [ %freed.0, %while.cond.while.end_crit_edge ], [ %add10, %if.end18.while.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ashmem_mutex) #11
  br label %cleanup25

cleanup25:                                        ; preds = %while.end, %if.end14.cleanup25_crit_edge, %if.end.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup25_crit_edge ], [ -1, %if.end.cleanup25_crit_edge ], [ %freed.1, %while.end ], [ %add10, %if.end14.cleanup25_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ashmem_pin(ptr noundef %asma, i32 noundef %pgstart, i32 noundef %pgend, ptr nocapture noundef %new_range) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %unpinned_list = getelementptr inbounds %struct.ashmem_area, ptr %asma, i32 0, i32 1
  %0 = ptrtoint ptr %unpinned_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unpinned_list, align 4
  %cmp.not115 = icmp eq ptr %1, %unpinned_list
  br i1 %cmp.not115, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add = add i32 %pgend, 1
  %sub = add i32 %pgstart, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in118 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn124, %for.inc.for.body_crit_edge ]
  %ret.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %range.0121 = getelementptr i8, ptr %.pn.in118, i32 -8
  %2 = ptrtoint ptr %.pn.in118 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn124 = load ptr, ptr %.pn.in118, align 4
  %pgend.i = getelementptr i8, ptr %.pn.in118, i32 16
  %3 = ptrtoint ptr %pgend.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pgend.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pgstart)
  %cmp.i = icmp ult i32 %4, %pgstart
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  %pgstart.i.i = getelementptr i8, ptr %.pn.in118, i32 12
  %5 = ptrtoint ptr %pgstart.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pgstart.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pgstart)
  %cmp.not.i.i = icmp ugt i32 %6, %pgstart
  br i1 %cmp.not.i.i, label %lor.lhs.false.i, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pgend)
  %cmp.not.i8.i = icmp ugt i32 %6, %pgend
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pgend)
  %cmp1.i10.not.i = icmp ult i32 %4, %pgend
  %or.cond = select i1 %cmp.not.i8.i, i1 true, i1 %cmp1.i10.not.i
  br i1 %or.cond, label %lor.rhs.i, label %lor.lhs.false.i.if.then9_crit_edge

lor.lhs.false.i.if.then9_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pgstart)
  %cmp.not.i14.i = icmp uge i32 %6, %pgstart
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pgend)
  %cmp1.i16.i = icmp ule i32 %4, %pgend
  %or.cond107 = select i1 %cmp.not.i14.i, i1 %cmp1.i16.i, i1 false
  br i1 %or.cond107, label %lor.rhs.i.if.then9_crit_edge, label %lor.rhs.i.for.inc_crit_edge

lor.rhs.i.for.inc_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.rhs.i.if.then9_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %lor.rhs.i.if.then9_crit_edge, %lor.lhs.false.i.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %purged = getelementptr i8, ptr %.pn.in118, i32 20
  %7 = ptrtoint ptr %purged to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %purged, align 4
  %or = or i32 %8, %ret.0116
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pgstart)
  %cmp.not.i = icmp uge i32 %6, %pgstart
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pgend)
  %cmp1.i = icmp ule i32 %4, %pgend
  %or.cond108 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond108, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in118) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then11.list_del.exit.i_crit_edge

if.then11.list_del.exit.i_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in118, i32 4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %.pn.in118 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in118, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then11.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %.pn.in118 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in118, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in118, i32 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %purged to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %purged, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i, label %if.then.i, label %list_del.exit.i.range_del.exit_crit_edge

list_del.exit.i.range_del.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %range_del.exit

if.then.i:                                        ; preds = %list_del.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %range.0121) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.lru_del.exit.i_crit_edge

if.then.i.lru_del.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lru_del.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in118, i32 -4
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %range.0121 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %range.0121, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %lru_del.exit.i

lru_del.exit.i:                                   ; preds = %if.end.i.i.i.i, %if.then.i.lru_del.exit.i_crit_edge
  %25 = ptrtoint ptr %range.0121 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %range.0121, align 4
  %prev.i.i4.i = getelementptr i8, ptr %.pn.in118, i32 -4
  %26 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i4.i, align 4
  %27 = ptrtoint ptr %pgend.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pgend.i, align 4
  %29 = ptrtoint ptr %pgstart.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pgstart.i.i, align 4
  %sub.i.neg.i.i = xor i32 %28, -1
  %add.i.neg.i.i = add i32 %30, %sub.i.neg.i.i
  %31 = load i32, ptr @lru_count, align 4
  %sub.i.i = add i32 %add.i.neg.i.i, %31
  store i32 %sub.i.i, ptr @lru_count, align 4
  br label %range_del.exit

range_del.exit:                                   ; preds = %lru_del.exit.i, %list_del.exit.i.range_del.exit_crit_edge
  %32 = load ptr, ptr @ashmem_range_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef %range.0121) #11
  br label %for.inc

if.end12:                                         ; preds = %if.then9
  %33 = ptrtoint ptr %pgstart.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pgstart.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %pgstart)
  %cmp14.not = icmp ult i32 %34, %pgstart
  %35 = ptrtoint ptr %pgend.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pgend.i, align 4
  br i1 %cmp14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  %37 = ptrtoint ptr %pgstart.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %pgstart.i.i, align 4
  %38 = ptrtoint ptr %pgend.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %pgend.i, align 4
  %39 = ptrtoint ptr %purged to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %purged, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i70 = icmp eq i32 %40, 0
  br i1 %cmp.i.i70, label %if.then.i71, label %if.then15.for.inc_crit_edge

if.then15.for.inc_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i71:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.neg.i = xor i32 %4, -1
  %41 = load i32, ptr @lru_count, align 4
  %sub.i10.i = sub i32 %sub.i.neg.i, %pgend
  %add.i11.i = add i32 %sub.i10.i, %6
  %sub.neg.i = add i32 %add.i11.i, %36
  %sub3.i = add i32 %sub.neg.i, %41
  store i32 %sub3.i, ptr @lru_count, align 4
  br label %for.inc

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %pgend)
  %cmp19.not = icmp ugt i32 %36, %pgend
  br i1 %cmp19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  %42 = ptrtoint ptr %pgend.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %pgend.i, align 4
  %43 = ptrtoint ptr %purged to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %purged, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i75 = icmp eq i32 %44, 0
  br i1 %cmp.i.i75, label %if.then.i82, label %if.then20.for.inc_crit_edge

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i82:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.neg.i76 = xor i32 %4, -1
  %45 = load i32, ptr @lru_count, align 4
  %46 = add i32 %sub.i.neg.i76, %pgstart
  %add.i11.i79 = add i32 %46, %6
  %sub.neg.i80 = sub i32 %add.i11.i79, %34
  %sub3.i81 = add i32 %sub.neg.i80, %45
  store i32 %sub3.i81, ptr @lru_count, align 4
  br label %for.inc

if.end22:                                         ; preds = %if.end17
  %47 = ptrtoint ptr %new_range to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %new_range, align 4
  store ptr null, ptr %new_range, align 4
  %asma1.i = getelementptr inbounds %struct.ashmem_range, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %asma1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %asma, ptr %asma1.i, align 4
  %pgstart.i84 = getelementptr inbounds %struct.ashmem_range, ptr %48, i32 0, i32 3
  %50 = ptrtoint ptr %pgstart.i84 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add, ptr %pgstart.i84, align 4
  %pgend.i85 = getelementptr inbounds %struct.ashmem_range, ptr %48, i32 0, i32 4
  %51 = ptrtoint ptr %pgend.i85 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %36, ptr %pgend.i85, align 4
  %purged2.i = getelementptr inbounds %struct.ashmem_range, ptr %48, i32 0, i32 5
  %52 = ptrtoint ptr %purged2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %8, ptr %purged2.i, align 4
  %unpinned.i86 = getelementptr inbounds %struct.ashmem_range, ptr %48, i32 0, i32 1
  %prev.i.i87 = getelementptr i8, ptr %.pn.in118, i32 4
  %53 = ptrtoint ptr %prev.i.i87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i87, align 4
  %call.i.i.i88 = tail call zeroext i1 @__list_add_valid(ptr noundef %unpinned.i86, ptr noundef %54, ptr noundef %.pn.in118) #11
  br i1 %call.i.i.i88, label %if.end.i.i.i89, label %if.end22.list_add_tail.exit.i_crit_edge

if.end22.list_add_tail.exit.i_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i89:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %prev.i.i87 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %unpinned.i86, ptr %prev.i.i87, align 4
  %56 = ptrtoint ptr %unpinned.i86 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %.pn.in118, ptr %unpinned.i86, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ashmem_range, ptr %48, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %unpinned.i86, ptr %54, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i89, %if.end22.list_add_tail.exit.i_crit_edge
  %59 = ptrtoint ptr %purged2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %purged2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i90 = icmp eq i32 %60, 0
  br i1 %cmp.i.i90, label %if.then.i92, label %list_add_tail.exit.i.range_alloc.exit_crit_edge

list_add_tail.exit.i.range_alloc.exit_crit_edge:  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %range_alloc.exit

if.then.i92:                                      ; preds = %list_add_tail.exit.i
  %61 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ashmem_lru_list, i32 0, i32 1), align 4
  %call.i.i.i.i91 = tail call zeroext i1 @__list_add_valid(ptr noundef %48, ptr noundef %61, ptr noundef nonnull @ashmem_lru_list) #11
  br i1 %call.i.i.i.i91, label %if.end.i.i.i.i93, label %if.then.i92.lru_add.exit.i_crit_edge

if.then.i92.lru_add.exit.i_crit_edge:             ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %lru_add.exit.i

if.end.i.i.i.i93:                                 ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %48, ptr getelementptr inbounds (%struct.list_head, ptr @ashmem_lru_list, i32 0, i32 1), align 4
  %62 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ashmem_lru_list, ptr %48, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %61, ptr %prev3.i.i.i.i, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %48, ptr %61, align 4
  br label %lru_add.exit.i

lru_add.exit.i:                                   ; preds = %if.end.i.i.i.i93, %if.then.i92.lru_add.exit.i_crit_edge
  %65 = ptrtoint ptr %pgend.i85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pgend.i85, align 4
  %67 = ptrtoint ptr %pgstart.i84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pgstart.i84, align 4
  %sub.i.i.i = add i32 %66, 1
  %add.i.i.i = sub i32 %sub.i.i.i, %68
  %69 = load i32, ptr @lru_count, align 4
  %add.i.i = add i32 %add.i.i.i, %69
  store i32 %add.i.i, ptr @lru_count, align 4
  br label %range_alloc.exit

range_alloc.exit:                                 ; preds = %lru_add.exit.i, %list_add_tail.exit.i.range_alloc.exit_crit_edge
  %70 = ptrtoint ptr %pgend.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pgend.i, align 4
  store i32 %sub, ptr %pgend.i, align 4
  %72 = ptrtoint ptr %purged to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %purged, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i97 = icmp eq i32 %73, 0
  br i1 %cmp.i.i97, label %if.then.i104, label %range_alloc.exit.for.end_crit_edge

range_alloc.exit.for.end_crit_edge:               ; preds = %range_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.i104:                                     ; preds = %range_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.neg.i98 = xor i32 %71, -1
  %74 = load i32, ptr @lru_count, align 4
  %sub.neg.i102 = add i32 %sub.i.neg.i98, %pgstart
  %sub3.i103 = add i32 %sub.neg.i102, %74
  store i32 %sub3.i103, ptr @lru_count, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then.i82, %if.then20.for.inc_crit_edge, %if.then.i71, %if.then15.for.inc_crit_edge, %range_del.exit, %lor.rhs.i.for.inc_crit_edge
  %ret.1 = phi i32 [ %or, %range_del.exit ], [ %or, %if.then15.for.inc_crit_edge ], [ %or, %if.then.i71 ], [ %or, %if.then20.for.inc_crit_edge ], [ %or, %if.then.i82 ], [ %ret.0116, %lor.rhs.i.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn124, %unpinned_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i104, %range_alloc.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ %or, %range_alloc.exit.for.end_crit_edge ], [ %or, %if.then.i104 ], [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ], [ %ret.0116, %for.body.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ashmem_unpin(ptr noundef %asma, i32 noundef %pgstart, i32 noundef %pgend, ptr nocapture noundef %new_range) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %unpinned_list = getelementptr inbounds %struct.ashmem_area, ptr %asma, i32 0, i32 1
  br label %restart

restart:                                          ; preds = %range_del.exit, %entry
  %purged.0 = phi i32 [ 0, %entry ], [ %or, %range_del.exit ]
  %pgend.addr.0 = phi i32 [ %pgend, %entry ], [ %12, %range_del.exit ]
  %pgstart.addr.0 = phi i32 [ %pgstart, %entry ], [ %9, %range_del.exit ]
  %0 = ptrtoint ptr %unpinned_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unpinned_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %lor.rhs.i.for.cond_crit_edge, %restart
  %.pn.in = phi ptr [ %1, %restart ], [ %.pn, %lor.rhs.i.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %unpinned_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pgend.i = getelementptr i8, ptr %.pn.in, i32 16
  %3 = ptrtoint ptr %pgend.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pgend.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pgstart.addr.0)
  %cmp.i = icmp ult i32 %4, %pgstart.addr.0
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  %pgstart.i = getelementptr i8, ptr %.pn.in, i32 12
  %5 = ptrtoint ptr %pgstart.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pgstart.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pgstart.addr.0)
  %cmp.not.i = icmp ugt i32 %6, %pgstart.addr.0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %page_range_subsumed_by_range.exit

page_range_subsumed_by_range.exit:                ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pgend.addr.0)
  %cmp1.i.not = icmp ult i32 %4, %pgend.addr.0
  br i1 %cmp1.i.not, label %page_range_subsumed_by_range.exit.if.then12_crit_edge, label %page_range_subsumed_by_range.exit.cleanup_crit_edge

page_range_subsumed_by_range.exit.cleanup_crit_edge: ; preds = %page_range_subsumed_by_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

page_range_subsumed_by_range.exit.if.then12_crit_edge: ; preds = %page_range_subsumed_by_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pgend.addr.0)
  %cmp.not.i8.i = icmp ugt i32 %6, %pgend.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pgend.addr.0)
  %cmp1.i10.not.i = icmp ult i32 %4, %pgend.addr.0
  %or.cond = select i1 %cmp.not.i8.i, i1 true, i1 %cmp1.i10.not.i
  br i1 %or.cond, label %lor.rhs.i, label %lor.lhs.false.i.if.then12_crit_edge

lor.lhs.false.i.if.then12_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pgstart.addr.0)
  %cmp.not.i14.i = icmp uge i32 %6, %pgstart.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pgend.addr.0)
  %cmp1.i16.i = icmp ule i32 %4, %pgend.addr.0
  %or.cond13 = select i1 %cmp.not.i14.i, i1 %cmp1.i16.i, i1 false
  br i1 %or.cond13, label %lor.rhs.i.if.then12_crit_edge, label %lor.rhs.i.for.cond_crit_edge

lor.rhs.i.for.cond_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

lor.rhs.i.if.then12_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %lor.rhs.i.if.then12_crit_edge, %lor.lhs.false.i.if.then12_crit_edge, %page_range_subsumed_by_range.exit.if.then12_crit_edge
  %pgend.i56 = getelementptr i8, ptr %.pn.in, i32 16
  %pgstart.i58 = getelementptr i8, ptr %.pn.in, i32 12
  %range.016 = getelementptr i8, ptr %.pn.in, i32 -8
  %7 = ptrtoint ptr %pgstart.i58 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pgstart.i58, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %pgstart.addr.0)
  %10 = ptrtoint ptr %pgend.i56 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pgend.i56, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %pgend.addr.0)
  %purged23 = getelementptr i8, ptr %.pn.in, i32 20
  %13 = ptrtoint ptr %purged23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %purged23, align 4
  %or = or i32 %14, %purged.0
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.list_del.exit.i_crit_edge

if.then12.list_del.exit.i_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in, i32 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then12.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in, i32 4
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %purged23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %purged23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i, label %if.then.i, label %list_del.exit.i.range_del.exit_crit_edge

list_del.exit.i.range_del.exit_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %range_del.exit

if.then.i:                                        ; preds = %list_del.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %range.016) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.lru_del.exit.i_crit_edge

if.then.i.lru_del.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lru_del.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in, i32 -4
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %range.016 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %range.016, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %lru_del.exit.i

lru_del.exit.i:                                   ; preds = %if.end.i.i.i.i, %if.then.i.lru_del.exit.i_crit_edge
  %31 = ptrtoint ptr %range.016 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %range.016, align 4
  %prev.i.i4.i = getelementptr i8, ptr %.pn.in, i32 -4
  %32 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i4.i, align 4
  %33 = ptrtoint ptr %pgend.i56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pgend.i56, align 4
  %35 = ptrtoint ptr %pgstart.i58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pgstart.i58, align 4
  %sub.i.neg.i.i = xor i32 %34, -1
  %add.i.neg.i.i = add i32 %36, %sub.i.neg.i.i
  %37 = load i32, ptr @lru_count, align 4
  %sub.i.i = add i32 %add.i.neg.i.i, %37
  store i32 %sub.i.i, ptr @lru_count, align 4
  br label %range_del.exit

range_del.exit:                                   ; preds = %lru_del.exit.i, %list_del.exit.i.range_del.exit_crit_edge
  %38 = load ptr, ptr @ashmem_range_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %range.016) #11
  br label %restart

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.in.lcssa = phi ptr [ %.pn.in, %for.body.for.end_crit_edge ], [ %unpinned_list, %for.cond.for.end_crit_edge ]
  %39 = ptrtoint ptr %new_range to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %new_range, align 4
  store ptr null, ptr %new_range, align 4
  %asma1.i = getelementptr inbounds %struct.ashmem_range, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %asma1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %asma, ptr %asma1.i, align 4
  %pgstart.i3 = getelementptr inbounds %struct.ashmem_range, ptr %40, i32 0, i32 3
  %42 = ptrtoint ptr %pgstart.i3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %pgstart.addr.0, ptr %pgstart.i3, align 4
  %pgend.i4 = getelementptr inbounds %struct.ashmem_range, ptr %40, i32 0, i32 4
  %43 = ptrtoint ptr %pgend.i4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %pgend.addr.0, ptr %pgend.i4, align 4
  %purged2.i = getelementptr inbounds %struct.ashmem_range, ptr %40, i32 0, i32 5
  %44 = ptrtoint ptr %purged2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %purged.0, ptr %purged2.i, align 4
  %unpinned.i5 = getelementptr inbounds %struct.ashmem_range, ptr %40, i32 0, i32 1
  %prev.i.i6 = getelementptr i8, ptr %.pn.in.lcssa, i32 4
  %45 = ptrtoint ptr %prev.i.i6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i6, align 4
  %call.i.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef %unpinned.i5, ptr noundef %46, ptr noundef %.pn.in.lcssa) #11
  br i1 %call.i.i.i7, label %if.end.i.i.i8, label %for.end.list_add_tail.exit.i_crit_edge

for.end.list_add_tail.exit.i_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i8:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %prev.i.i6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %unpinned.i5, ptr %prev.i.i6, align 4
  %48 = ptrtoint ptr %unpinned.i5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %.pn.in.lcssa, ptr %unpinned.i5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ashmem_range, ptr %40, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %unpinned.i5, ptr %46, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i8, %for.end.list_add_tail.exit.i_crit_edge
  %51 = ptrtoint ptr %purged2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %purged2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i9 = icmp eq i32 %52, 0
  br i1 %cmp.i.i9, label %if.then.i11, label %list_add_tail.exit.i.cleanup_crit_edge

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i11:                                      ; preds = %list_add_tail.exit.i
  %53 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ashmem_lru_list, i32 0, i32 1), align 4
  %call.i.i.i.i10 = tail call zeroext i1 @__list_add_valid(ptr noundef %40, ptr noundef %53, ptr noundef nonnull @ashmem_lru_list) #11
  br i1 %call.i.i.i.i10, label %if.end.i.i.i.i12, label %if.then.i11.lru_add.exit.i_crit_edge

if.then.i11.lru_add.exit.i_crit_edge:             ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %lru_add.exit.i

if.end.i.i.i.i12:                                 ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %40, ptr getelementptr inbounds (%struct.list_head, ptr @ashmem_lru_list, i32 0, i32 1), align 4
  %54 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ashmem_lru_list, ptr %40, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %prev3.i.i.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %40, ptr %53, align 4
  br label %lru_add.exit.i

lru_add.exit.i:                                   ; preds = %if.end.i.i.i.i12, %if.then.i11.lru_add.exit.i_crit_edge
  %57 = ptrtoint ptr %pgend.i4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pgend.i4, align 4
  %59 = ptrtoint ptr %pgstart.i3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pgstart.i3, align 4
  %sub.i.i.i = add i32 %58, 1
  %add.i.i.i = sub i32 %sub.i.i.i, %60
  %61 = load i32, ptr @lru_count, align 4
  %add.i.i = add i32 %add.i.i.i, %61
  store i32 %add.i.i, ptr @lru_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %lru_add.exit.i, %list_add_tail.exit.i.cleanup_crit_edge, %page_range_subsumed_by_range.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_file_setup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ashmem_vmfile_mmap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %vma) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ashmem_vmfile_get_unmapped_area(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %get_unmapped_area = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %get_unmapped_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_unmapped_area, align 8
  %call1 = tail call i32 %7(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_zero_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !40, !41, !43, !45, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_ashmem__294_970_ashmem_init6, !1, !"__initcall__kmod_ashmem__294_970_ashmem_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/android/ashmem.c", i32 970, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/android/ashmem.c", i32 929, i32 41}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/android/ashmem.c", i32 933, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ashmem_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ashmem_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/android/ashmem.c", i32 937, i32 42}
!12 = !{ptr @ashmem_init._entry.5, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/staging/android/ashmem.c", i32 941, i32 3}
!14 = !{ptr @ashmem_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/android/ashmem.c", i32 947, i32 3}
!17 = !{ptr @ashmem_init._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ashmem_init._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/android/ashmem.c", i32 953, i32 3}
!21 = !{ptr @ashmem_init._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ashmem_init._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/android/ashmem.c", i32 957, i32 2}
!25 = !{ptr @ashmem_init._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ashmem_init._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ashmem_area_cachep, !28, !"ashmem_area_cachep", i1 false, i1 false}
!28 = !{!"../drivers/staging/android/ashmem.c", i32 95, i32 27}
!29 = !{ptr @ashmem_range_cachep, !30, !"ashmem_range_cachep", i1 false, i1 false}
!30 = !{!"../drivers/staging/android/ashmem.c", i32 96, i32 27}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/android/ashmem.c", i32 921, i32 10}
!33 = !{ptr @ashmem_misc, !34, !"ashmem_misc", i1 false, i1 false}
!34 = !{!"../drivers/staging/android/ashmem.c", i32 919, i32 26}
!35 = !{ptr @ashmem_fops, !36, !"ashmem_fops", i1 false, i1 false}
!36 = !{!"../drivers/staging/android/ashmem.c", i32 903, i32 37}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/android/ashmem.c", i32 93, i32 8}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ashmem_mutex, !38, !"ashmem_mutex", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/android/ashmem.c", i32 616, i32 22}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!50 = !{ptr @ashmem_shrink_inflight, !51, !"ashmem_shrink_inflight", i1 false, i1 false}
!51 = !{!"../drivers/staging/android/ashmem.c", i32 78, i32 17}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/android/ashmem.c", i32 79, i32 8}
!54 = !{ptr @ashmem_shrink_wait, !53, !"ashmem_shrink_wait", i1 false, i1 false}
!55 = !{ptr @lru_count, !56, !"lru_count", i1 false, i1 false}
!56 = !{!"../drivers/staging/android/ashmem.c", i32 86, i32 22}
!57 = !{ptr @ashmem_lru_list, !58, !"ashmem_lru_list", i1 false, i1 false}
!58 = !{!"../drivers/staging/android/ashmem.c", i32 76, i32 8}
!59 = !{ptr @ashmem_mmap.vmfile_fops, !60, !"vmfile_fops", i1 false, i1 false}
!60 = !{!"../drivers/staging/android/ashmem.c", i32 380, i32 32}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/android/ashmem.c", i32 422, i32 3}
!63 = !{ptr @backing_shmem_inode_class, !64, !"backing_shmem_inode_class", i1 false, i1 false}
!64 = !{!"../drivers/staging/android/ashmem.c", i32 105, i32 30}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/android/ashmem.c", i32 265, i32 21}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/android/ashmem.c", i32 892, i32 17}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/android/ashmem.c", i32 895, i32 17}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/android/ashmem.c", i32 898, i32 16}
!73 = !{ptr @ashmem_shrinker, !74, !"ashmem_shrinker", i1 false, i1 false}
!74 = !{!"../drivers/staging/android/ashmem.c", i32 530, i32 24}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2152193376, i64 2152193401}
!87 = !{!"auto-init"}
!88 = !{i64 2152192695, i64 2152192720}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 4688250}
!91 = !{i64 4688447}
!92 = !{i64 2152173680}
!93 = !{i64 2148681754, i64 2148681780, i64 2148681809, i64 2148681843, i64 2148681874, i64 2148681897}
!94 = !{i64 2148770230}
!95 = !{i64 2148684939, i64 2148684971, i64 2148685000, i64 2148685034, i64 2148685065, i64 2148685088}
!96 = !{i64 2148770459}
