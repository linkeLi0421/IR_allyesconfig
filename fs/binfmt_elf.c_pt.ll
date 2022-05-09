; ModuleID = '/llk/IR_all_yes/fs/binfmt_elf.c_pt.bc'
source_filename = "../fs/binfmt_elf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.74 = type { ptr }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pt_regs = type { [18 x i32] }
%struct.task_cputime = type { i64, i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.elf_note_info = type { ptr, %struct.memelfnote, %struct.memelfnote, %struct.memelfnote, %struct.memelfnote, %struct.siginfo, i32, i32 }
%struct.memelfnote = type { ptr, i32, i32, ptr }
%struct.siginfo = type { %union.anon.78 }
%union.anon.78 = type { [32 x i32] }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.elf_thread_core_info = type { ptr, ptr, %struct.elf_prstatus, [0 x %struct.memelfnote] }
%struct.elf_prstatus = type { %struct.elf_prstatus_common, [18 x i32], i32 }
%struct.elf_prstatus_common = type { %struct.elf_siginfo, i16, i32, i32, i32, i32, i32, i32, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval }
%struct.elf_siginfo = type { i32, i32, i32 }
%struct.elf_prpsinfo = type { i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, i32, [16 x i8], [80 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.core_vma_metadata = type { i32, i32, i32, i32 }
%struct.elf32_note = type { i32, i32, i32 }

@elf_format = internal global { %struct.linux_binfmt, [36 x i8] } { %struct.linux_binfmt { %struct.list_head zeroinitializer, ptr null, ptr @load_elf_binary, ptr @load_elf_library, ptr @elf_core_dump, i32 4096 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_binfmt_elf__274_2335_init_elf_binfmt1 = internal global ptr @init_elf_binfmt, section ".initcall1.init", align 4
@__exitcall_exit_elf_binfmt = internal global ptr @exit_elf_binfmt, section ".exitcall.exit", align 4
@__UNIQUE_ID_file275 = internal constant [30 x i8] c"binfmt_elf.file=fs/binfmt_elf\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [23 x i8] c"binfmt_elf.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\7FELF\00", [27 x i8] zeroinitializer }, align 32
@randomize_va_space = external dso_local local_unnamed_addr global i32, align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@elf_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016%d (%s): Uhuuh, elf segment at %px requested but the memory is mapped already\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"elf_map\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/binfmt_elf.c\00", [16 x i8] zeroinitializer }, align 32
@elf_map._entry_ptr = internal global ptr @elf_map._entry, section ".printk_index", align 4
@elf_platform = external dso_local global [0 x i8], align 1
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CORE\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINUX\00", [26 x i8] zeroinitializer }, align 32
@fill_prstatus.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fill_psinfo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RSDTZW\00", [25 x i8] zeroinitializer }, align 32
@fill_psinfo.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"elf_format\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 100, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 848, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 396, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 230, i32 6 }
@___asan_gen_.37 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 214, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 174, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1832, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1803, i32 47 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1532, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 695, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 723, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [19 x i8] c"../fs/binfmt_elf.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1590, i32 37 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_exit_elf_binfmt, ptr @__initcall__kmod_binfmt_elf__274_2335_init_elf_binfmt1, ptr @elf_map._entry, ptr @elf_map._entry_ptr, ptr @exit_elf_binfmt, ptr @elf_format, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elf_format to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elf_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_elf_binfmt() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unregister_binfmt(ptr noundef nonnull @elf_format) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_elf_binfmt() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_binfmt(ptr noundef nonnull @elf_format, i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_elf_binary(ptr noundef %bprm) #2 align 64 {
entry:
  %pos.addr.i892 = alloca i64, align 8
  %pos.addr.i = alloca i64, align 8
  %pos.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %buf, ptr noundef nonnull dereferenceable(4) @.str, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup587_crit_edge

entry.cleanup587_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup587

if.end:                                           ; preds = %entry
  %e_type = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 16
  %0 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_type, align 4
  %2 = and i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %2)
  %switch = icmp eq i16 %2, 2
  br i1 %switch, label %if.end10, label %if.end.cleanup587_crit_edge

if.end.cleanup587_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup587

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @elf_check_arch(ptr noundef %buf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end10.cleanup587_crit_edge, label %if.end13

if.end10.cleanup587_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup587

if.end13:                                         ; preds = %if.end10
  %arrayidx = getelementptr %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %4)
  %cmp16 = icmp eq i8 %4, 65
  br i1 %cmp16, label %if.end13.cleanup587_crit_edge, label %if.end19

if.end13.cleanup587_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup587

if.end19:                                         ; preds = %if.end13
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %5 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_op, align 4
  %mmap = getelementptr inbounds %struct.file_operations, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmap, align 4
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %if.end19.cleanup587_crit_edge, label %if.end22

if.end19.cleanup587_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup587

if.end22:                                         ; preds = %if.end19
  %e_phentsize.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 42
  %11 = ptrtoint ptr %e_phentsize.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %e_phentsize.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %12)
  %cmp.not.i = icmp eq i16 %12, 32
  br i1 %cmp.not.i, label %if.end.i887, label %if.end22.load_elf_phdrs.exit.thread_crit_edge

if.end22.load_elf_phdrs.exit.thread_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %load_elf_phdrs.exit.thread

if.end.i887:                                      ; preds = %if.end22
  %e_phnum.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 44
  %13 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %e_phnum.i, align 4
  %conv3.i = zext i16 %14 to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 5
  %15 = add i16 %14, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %15)
  %16 = icmp ult i16 %15, -128
  br i1 %16, label %if.end.i887.load_elf_phdrs.exit.thread_crit_edge, label %if.end8.i.i

if.end.i887.load_elf_phdrs.exit.thread_crit_edge: ; preds = %if.end.i887
  call void @__sanitizer_cov_trace_pc() #17
  br label %load_elf_phdrs.exit.thread

if.end8.i.i:                                      ; preds = %if.end.i887
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #19
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.load_elf_phdrs.exit.thread_crit_edge, label %if.end14.i

if.end8.i.i.load_elf_phdrs.exit.thread_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %load_elf_phdrs.exit.thread

if.end14.i:                                       ; preds = %if.end8.i.i
  %e_phoff.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 28
  %17 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %e_phoff.i, align 4
  %conv15.i = zext i32 %18 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i.i) #15
  %19 = ptrtoint ptr %pos.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv15.i, ptr %pos.addr.i.i, align 8
  %call.i.i = call i32 @kernel_read(ptr noundef %6, ptr noundef nonnull %call9.i.i, i32 noundef %mul.i, ptr noundef nonnull %pos.addr.i.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %mul.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i.i) #15
  br i1 %cmp.not.i.i, label %for.cond.preheader, label %if.end14.i.load_elf_phdrs.exit.thread_crit_edge, !prof !56

if.end14.i.load_elf_phdrs.exit.thread_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %load_elf_phdrs.exit.thread

for.cond.preheader:                               ; preds = %if.end14.i
  %20 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %e_phnum.i, align 4
  %conv28 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp29980.not = icmp eq i16 %21, 0
  br i1 %cmp29980.not, label %for.cond.preheader.if.end144_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end144_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end144

load_elf_phdrs.exit.thread:                       ; preds = %if.end14.i.load_elf_phdrs.exit.thread_crit_edge, %if.end8.i.i.load_elf_phdrs.exit.thread_crit_edge, %if.end.i887.load_elf_phdrs.exit.thread_crit_edge, %if.end22.load_elf_phdrs.exit.thread_crit_edge
  %elf_phdata.0.ph.i = phi ptr [ null, %if.end8.i.i.load_elf_phdrs.exit.thread_crit_edge ], [ null, %if.end.i887.load_elf_phdrs.exit.thread_crit_edge ], [ null, %if.end22.load_elf_phdrs.exit.thread_crit_edge ], [ %call9.i.i, %if.end14.i.load_elf_phdrs.exit.thread_crit_edge ]
  call void @kfree(ptr noundef %elf_phdata.0.ph.i) #15
  br label %cleanup587

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0982 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %elf_ppnt.0981 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call9.i.i, %for.cond.preheader.for.body_crit_edge ]
  %22 = ptrtoint ptr %elf_ppnt.0981 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %elf_ppnt.0981, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cond = icmp eq i32 %23, 3
  br i1 %cond, label %if.end39, label %for.inc

if.end39:                                         ; preds = %for.body
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %elf_ppnt.0981, i32 0, i32 4
  %24 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p_filesz, align 4
  %26 = add i32 %25, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %26)
  %27 = icmp ult i32 %26, -4095
  br i1 %27, label %if.end39.out_free_ph_crit_edge, label %if.end8.i

if.end39.out_free_ph_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

if.end8.i:                                        ; preds = %if.end39
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #19
  %tobool49.not = icmp eq ptr %call9.i, null
  br i1 %tobool49.not, label %if.end8.i.out_free_ph_crit_edge, label %if.end51

if.end8.i.out_free_ph_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

if.end51:                                         ; preds = %if.end8.i
  %28 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %file, align 4
  %30 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p_filesz, align 4
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %elf_ppnt.0981, i32 0, i32 1
  %32 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p_offset, align 4
  %conv54 = zext i32 %33 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i)
  %34 = ptrtoint ptr %pos.addr.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv54, ptr %pos.addr.i, align 8
  %call.i = call i32 @kernel_read(ptr noundef %29, ptr noundef nonnull %call9.i, i32 noundef %31, ptr noundef nonnull %pos.addr.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %31)
  %cmp.not.i888 = icmp eq i32 %call.i, %31
  br i1 %cmp.not.i888, label %if.end59, label %if.then.i890, !prof !56

if.then.i890:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  %spec.select954 = select i1 %cmp2.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i)
  br label %out_free_interp

if.end59:                                         ; preds = %if.end51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i)
  %35 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p_filesz, align 4
  %sub = add i32 %36, -1
  %arrayidx61 = getelementptr i8, ptr %call9.i, i32 %sub
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp63.not = icmp eq i8 %38, 0
  br i1 %cmp63.not, label %if.end66, label %if.end59.out_free_interp_crit_edge

if.end59.out_free_interp_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_interp

if.end66:                                         ; preds = %if.end59
  %call67 = call ptr @open_exec(ptr noundef nonnull %call9.i) #15
  call void @kfree(ptr noundef nonnull %call9.i) #15
  %39 = ptrtoint ptr %call67 to i32
  %cmp.i891 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i891, label %if.end66.out_free_ph_crit_edge, label %if.end71

if.end66.out_free_ph_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

if.end71:                                         ; preds = %if.end66
  call void @would_dump(ptr noundef %bprm, ptr noundef %call67) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i885 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 52) #20
  %tobool73.not = icmp eq ptr %call7.i885, null
  br i1 %tobool73.not, label %if.end71.out_free_ph_crit_edge, label %if.end75

if.end71.out_free_ph_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

if.end75:                                         ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i892)
  %41 = ptrtoint ptr %pos.addr.i892 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %pos.addr.i892, align 8
  %call.i893 = call i32 @kernel_read(ptr noundef %call67, ptr noundef nonnull %call7.i885, i32 noundef 52, ptr noundef nonnull %pos.addr.i892) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %call.i893)
  %cmp.not.i894 = icmp eq i32 %call.i893, 52
  br i1 %cmp.not.i894, label %cleanup.thread930, label %if.then.i897, !prof !56

if.then.i897:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i893)
  %cmp2.i895 = icmp slt i32 %call.i893, 0
  %spec.select955 = select i1 %cmp2.i895, i32 %call.i893, i32 -5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i892)
  br label %out_free_dentry

cleanup.thread930:                                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i892)
  br label %for.end

out_free_interp:                                  ; preds = %if.end59.out_free_interp_crit_edge, %if.then.i890
  %retval1.1 = phi i32 [ -8, %if.end59.out_free_interp_crit_edge ], [ %spec.select954, %if.then.i890 ]
  call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %out_free_ph

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0982, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %elf_ppnt.0981, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv28
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread930
  %interp_elf_ex.2.ph = phi ptr [ %call7.i885, %cleanup.thread930 ], [ null, %for.inc.for.end_crit_edge ]
  %interpreter.2.ph = phi ptr [ %call67, %cleanup.thread930 ], [ null, %for.inc.for.end_crit_edge ]
  %42 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %.pr = load i16, ptr %e_phnum.i, align 4
  %conv83 = zext i16 %.pr to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp84983.not = icmp eq i16 %.pr, 0
  br i1 %cmp84983.not, label %for.end.for.end100_crit_edge, label %for.end.for.body86_crit_edge

for.end.for.body86_crit_edge:                     ; preds = %for.end
  br label %for.body86

for.end.for.end100_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end100

for.body86:                                       ; preds = %for.inc97.for.body86_crit_edge, %for.end.for.body86_crit_edge
  %executable_stack.0986 = phi i32 [ %executable_stack.1, %for.inc97.for.body86_crit_edge ], [ 0, %for.end.for.body86_crit_edge ]
  %i.1985 = phi i32 [ %inc98, %for.inc97.for.body86_crit_edge ], [ 0, %for.end.for.body86_crit_edge ]
  %elf_ppnt.1984 = phi ptr [ %incdec.ptr99, %for.inc97.for.body86_crit_edge ], [ %call9.i.i, %for.end.for.body86_crit_edge ]
  %43 = ptrtoint ptr %elf_ppnt.1984 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %elf_ppnt.1984, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1685382481, i32 %44)
  %cond617 = icmp eq i32 %44, 1685382481
  br i1 %cond617, label %sw.bb, label %for.body86.for.inc97_crit_edge

for.body86.for.inc97_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc97

sw.bb:                                            ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #17
  %p_flags = getelementptr inbounds %struct.elf32_phdr, ptr %elf_ppnt.1984, i32 0, i32 6
  %45 = ptrtoint ptr %p_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %p_flags, align 4
  %and = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool88.not = icmp eq i32 %and, 0
  %.870 = select i1 %tobool88.not, i32 1, i32 2
  br label %for.inc97

for.inc97:                                        ; preds = %sw.bb, %for.body86.for.inc97_crit_edge
  %executable_stack.1 = phi i32 [ %.870, %sw.bb ], [ %executable_stack.0986, %for.body86.for.inc97_crit_edge ]
  %inc98 = add nuw nsw i32 %i.1985, 1
  %incdec.ptr99 = getelementptr %struct.elf32_phdr, ptr %elf_ppnt.1984, i32 1
  %exitcond1018.not = icmp eq i32 %inc98, %conv83
  br i1 %exitcond1018.not, label %for.inc97.for.end100_crit_edge, label %for.inc97.for.body86_crit_edge

for.inc97.for.body86_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body86

for.inc97.for.end100_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end100

for.end100:                                       ; preds = %for.inc97.for.end100_crit_edge, %for.end.for.end100_crit_edge
  %executable_stack.0.lcssa = phi i32 [ 0, %for.end.for.end100_crit_edge ], [ %executable_stack.1, %for.inc97.for.end100_crit_edge ]
  %tobool101.not = icmp eq ptr %interpreter.2.ph, null
  br i1 %tobool101.not, label %for.end100.if.end144_crit_edge, label %if.then102

for.end100.if.end144_crit_edge:                   ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end144

if.then102:                                       ; preds = %for.end100
  %47 = ptrtoint ptr %interp_elf_ex.2.ph to i32
  call void @__asan_load4_noabort(i32 %47)
  %lhsv = load i32, ptr %interp_elf_ex.2.ph, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2135247942, i32 %lhsv)
  %.not = icmp eq i32 %lhsv, 2135247942
  br i1 %.not, label %if.end109, label %if.then102.out_free_dentry_crit_edge

if.then102.out_free_dentry_crit_edge:             ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end109:                                        ; preds = %if.then102
  %call110 = call i32 @elf_check_arch(ptr noundef %interp_elf_ex.2.ph) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end109.out_free_dentry_crit_edge, label %lor.lhs.false112

if.end109.out_free_dentry_crit_edge:              ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

lor.lhs.false112:                                 ; preds = %if.end109
  %arrayidx114 = getelementptr [16 x i8], ptr %interp_elf_ex.2.ph, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %49)
  %cmp116 = icmp eq i8 %49, 65
  br i1 %cmp116, label %lor.lhs.false112.out_free_dentry_crit_edge, label %if.end119

lor.lhs.false112.out_free_dentry_crit_edge:       ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end119:                                        ; preds = %lor.lhs.false112
  %call120 = call fastcc ptr @load_elf_phdrs(ptr noundef %interp_elf_ex.2.ph, ptr noundef nonnull %interpreter.2.ph)
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %if.end119.out_free_dentry_crit_edge, label %if.end119.if.end144_crit_edge

if.end119.if.end144_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end144

if.end119.out_free_dentry_crit_edge:              ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end144:                                        ; preds = %if.end119.if.end144_crit_edge, %for.end100.if.end144_crit_edge, %for.cond.preheader.if.end144_crit_edge
  %tobool1011034 = phi i1 [ false, %for.end100.if.end144_crit_edge ], [ false, %for.cond.preheader.if.end144_crit_edge ], [ true, %if.end119.if.end144_crit_edge ]
  %executable_stack.0.lcssa1033 = phi i32 [ %executable_stack.0.lcssa, %for.end100.if.end144_crit_edge ], [ 0, %for.cond.preheader.if.end144_crit_edge ], [ %executable_stack.0.lcssa, %if.end119.if.end144_crit_edge ]
  %interpreter.21027 = phi ptr [ null, %for.end100.if.end144_crit_edge ], [ null, %for.cond.preheader.if.end144_crit_edge ], [ %interpreter.2.ph, %if.end119.if.end144_crit_edge ]
  %interp_elf_ex.21024 = phi ptr [ %interp_elf_ex.2.ph, %for.end100.if.end144_crit_edge ], [ null, %for.cond.preheader.if.end144_crit_edge ], [ %interp_elf_ex.2.ph, %if.end119.if.end144_crit_edge ]
  %interp_elf_phdata.0 = phi ptr [ null, %for.end100.if.end144_crit_edge ], [ null, %for.cond.preheader.if.end144_crit_edge ], [ %call120, %if.end119.if.end144_crit_edge ]
  %call157 = call i32 @begin_new_exec(ptr noundef %bprm) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end144.out_free_dentry_crit_edge

if.end144.out_free_dentry_crit_edge:              ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end160:                                        ; preds = %if.end144
  call void @elf_set_personality(ptr noundef %buf) #15
  %call161 = call i32 @arm_elf_read_implies_exec(i32 noundef %executable_stack.0.lcssa1033) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end160.if.end165_crit_edge, label %if.then163

if.end160.if.end165_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end165

if.then163:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #17
  %50 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 62
  %54 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %personality, align 32
  %or = or i32 %55, 4194304
  store i32 %or, ptr %personality, align 32
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end160.if.end165_crit_edge
  %56 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i900 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i900 to ptr
  %task167 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task167, align 8
  %personality168 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 62
  %60 = ptrtoint ptr %personality168 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %personality168, align 32
  %and169 = and i32 %61, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %land.lhs.true171, label %if.end165.if.end177_crit_edge

if.end165.if.end177_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end177

land.lhs.true171:                                 ; preds = %if.end165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @randomize_va_space to i32))
  %62 = load i32, ptr @randomize_va_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool172.not = icmp eq i32 %62, 0
  br i1 %tobool172.not, label %land.lhs.true171.if.end177_crit_edge, label %if.then173

land.lhs.true171.if.end177_crit_edge:             ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end177

if.then173:                                       ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 3
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %or176 = or i32 %64, 4194304
  store i32 %or176, ptr %flags, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %land.lhs.true171.if.end177_crit_edge, %if.end165.if.end177_crit_edge
  call void @setup_new_exec(ptr noundef %bprm) #15
  %65 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task167, align 8
  %personality180 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 62
  %67 = ptrtoint ptr %personality180 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %personality180, align 32
  %and181 = and i32 %68, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  %cond183 = select i1 %tobool182.not, i32 67108864, i32 -1226833920
  %call184 = call i32 @randomize_stack_top(i32 noundef %cond183) #15
  %call185 = call i32 @setup_arg_pages(ptr noundef %bprm, i32 noundef %call184, i32 noundef %executable_stack.0.lcssa1033) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.end177.out_free_dentry_crit_edge, label %for.cond190.preheader

if.end177.out_free_dentry_crit_edge:              ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

for.cond190.preheader:                            ; preds = %if.end177
  %69 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %e_phnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp193992.not = icmp eq i16 %70, 0
  br i1 %cmp193992.not, label %for.cond190.preheader.for.end399_crit_edge, label %for.cond190.preheader.for.body195_crit_edge

for.cond190.preheader.for.body195_crit_edge:      ; preds = %for.cond190.preheader
  br label %for.body195

for.cond190.preheader.for.end399_crit_edge:       ; preds = %for.cond190.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end399

for.body195:                                      ; preds = %for.inc396.for.body195_crit_edge, %for.cond190.preheader.for.body195_crit_edge
  %end_data.01007 = phi i32 [ %end_data.2, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %start_data.01006 = phi i32 [ %start_data.2, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %end_code.01005 = phi i32 [ %end_code.2, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %start_code.01004 = phi i32 [ %start_code.2, %for.inc396.for.body195_crit_edge ], [ -1, %for.cond190.preheader.for.body195_crit_edge ]
  %i.31003 = phi i32 [ %inc397, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %bss_prot.01001 = phi i32 [ %bss_prot.2, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %elf_brk.01000 = phi i32 [ %elf_brk.2, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %elf_bss.0999 = phi i32 [ %elf_bss.2, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %elf_ppnt.3996 = phi ptr [ %incdec.ptr398, %for.inc396.for.body195_crit_edge ], [ %call9.i.i, %for.cond190.preheader.for.body195_crit_edge ]
  %load_addr_set.0995 = phi i32 [ %load_addr_set.2, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %load_bias.0994 = phi i32 [ %load_bias.6, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %load_addr.0993 = phi i32 [ %load_addr.2, %for.inc396.for.body195_crit_edge ], [ 0, %for.cond190.preheader.for.body195_crit_edge ]
  %71 = ptrtoint ptr %elf_ppnt.3996 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %elf_ppnt.3996, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp197.not = icmp eq i32 %72, 1
  br i1 %cmp197.not, label %if.end200, label %for.body195.for.inc396_crit_edge

for.body195.for.inc396_crit_edge:                 ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc396

if.end200:                                        ; preds = %for.body195
  call void @__sanitizer_cov_trace_cmp4(i32 %elf_brk.01000, i32 %elf_bss.0999)
  %cmp201 = icmp ugt i32 %elf_brk.01000, %elf_bss.0999
  br i1 %cmp201, label %if.then206, label %if.end200.if.end229_crit_edge, !prof !57

if.end200.if.end229_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end229

if.then206:                                       ; preds = %if.end200
  %add = add i32 %elf_bss.0999, %load_bias.0994
  %add207 = add i32 %elf_brk.01000, %load_bias.0994
  %call208 = call fastcc i32 @set_brk(i32 noundef %add, i32 noundef %add207, i32 noundef %bss_prot.01001)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.end211, label %if.then206.out_free_dentry_crit_edge

if.then206.out_free_dentry_crit_edge:             ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end211:                                        ; preds = %if.then206
  %and212 = and i32 %elf_bss.0999, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.end211.if.end229_crit_edge, label %if.then214

if.end211.if.end229_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end229

if.then214:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #17
  %sub215 = sub nuw nsw i32 4096, %and212
  %sub216 = sub i32 %elf_brk.01000, %elf_bss.0999
  %73 = call i32 @llvm.umin.i32(i32 %sub215, i32 %sub216)
  %74 = inttoptr i32 %elf_bss.0999 to ptr
  %add.ptr = getelementptr i8, ptr %74, i32 %load_bias.0994
  %call222 = call fastcc i32 @clear_user(ptr noundef %add.ptr, i32 noundef %73)
  br label %if.end229

if.end229:                                        ; preds = %if.then214, %if.end211.if.end229_crit_edge, %if.end200.if.end229_crit_edge
  %p_flags230 = getelementptr inbounds %struct.elf32_phdr, ptr %elf_ppnt.3996, i32 0, i32 6
  %75 = ptrtoint ptr %p_flags230 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %p_flags230, align 4
  %trunc.i = trunc i32 %76 to i3
  %rev.i = call i3 @llvm.bitreverse.i3(i3 %trunc.i) #15
  %77 = zext i3 %rev.i to i32
  %p_vaddr = getelementptr inbounds %struct.elf32_phdr, ptr %elf_ppnt.3996, i32 0, i32 2
  %78 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %p_vaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_addr_set.0995)
  %tobool237.not = icmp eq i32 %load_addr_set.0995, 0
  br i1 %tobool237.not, label %if.else240, label %if.end229.if.end288_crit_edge

if.end229.if.end288_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end288

if.else240:                                       ; preds = %if.end229
  %80 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %e_type, align 4
  %82 = zext i16 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i16 %81, label %if.end288.fold.split [
    i16 2, label %if.else240.if.end288_crit_edge
    i16 3, label %if.then252
  ]

if.else240.if.end288_crit_edge:                   ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end288

if.then252:                                       ; preds = %if.else240
  %83 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %e_phnum.i, align 4
  %conv254 = zext i16 %84 to i32
  %call255 = call fastcc i32 @maximum_alignment(ptr noundef nonnull %call9.i.i, i32 noundef %conv254)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call255)
  %cmp258 = icmp ugt i32 %call255, 4096
  %or.cond871 = select i1 %tobool1011034, i1 true, i1 %cmp258
  br i1 %or.cond871, label %if.then260, label %if.then252.if.end277_crit_edge

if.then252.if.end277_crit_edge:                   ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end277

if.then260:                                       ; preds = %if.then252
  %85 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task167, align 8
  %flags263 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %flags263 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags263, align 4
  %and264 = and i32 %88, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %if.then260.if.end269_crit_edge, label %if.then266

if.then260.if.end269_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end269

if.then266:                                       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #17
  %call267 = call i32 @arch_mmap_rnd() #15
  %add268 = add i32 %call267, 4194304
  br label %if.end269

if.end269:                                        ; preds = %if.then266, %if.then260.if.end269_crit_edge
  %load_bias.1 = phi i32 [ %add268, %if.then266 ], [ 4194304, %if.then260.if.end269_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255)
  %tobool270.not = icmp eq i32 %call255, 0
  %neg = sub i32 0, %call255
  %and273 = select i1 %tobool270.not, i32 -1, i32 %neg
  %load_bias.2 = and i32 %load_bias.1, %and273
  br label %if.end277

if.end277:                                        ; preds = %if.end269, %if.then252.if.end277_crit_edge
  %load_bias.3 = phi i32 [ %load_bias.2, %if.end269 ], [ 0, %if.then252.if.end277_crit_edge ]
  %elf_flags.0 = phi i32 [ 1048578, %if.end269 ], [ 2, %if.then252.if.end277_crit_edge ]
  %sub278 = sub i32 %load_bias.3, %79
  %and279 = and i32 %sub278, -4096
  %89 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %e_phnum.i, align 4
  %conv281 = zext i16 %90 to i32
  %call282 = call fastcc i32 @total_mapping_size(ptr noundef nonnull %call9.i.i, i32 noundef %conv281)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %if.end277.out_free_dentry_crit_edge, label %if.end277.if.end288_crit_edge

if.end277.if.end288_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end288

if.end277.out_free_dentry_crit_edge:              ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end288.fold.split:                             ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end288

if.end288:                                        ; preds = %if.end288.fold.split, %if.end277.if.end288_crit_edge, %if.else240.if.end288_crit_edge, %if.end229.if.end288_crit_edge
  %load_bias.4 = phi i32 [ %and279, %if.end277.if.end288_crit_edge ], [ %load_bias.0994, %if.end229.if.end288_crit_edge ], [ %load_bias.0994, %if.else240.if.end288_crit_edge ], [ %load_bias.0994, %if.end288.fold.split ]
  %elf_flags.1 = phi i32 [ %elf_flags.0, %if.end277.if.end288_crit_edge ], [ 18, %if.end229.if.end288_crit_edge ], [ 1048578, %if.else240.if.end288_crit_edge ], [ 2, %if.end288.fold.split ]
  %total_size.0 = phi i32 [ %call282, %if.end277.if.end288_crit_edge ], [ 0, %if.end229.if.end288_crit_edge ], [ 0, %if.else240.if.end288_crit_edge ], [ 0, %if.end288.fold.split ]
  %91 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %file, align 4
  %add290 = add i32 %load_bias.4, %79
  %call291 = call fastcc i32 @elf_map(ptr noundef %92, i32 noundef %add290, ptr noundef %elf_ppnt.3996, i32 noundef %77, i32 noundef %elf_flags.1, i32 noundef %total_size.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %call291)
  %cmp292 = icmp ugt i32 %call291, -1226833921
  br i1 %cmp292, label %if.then300, label %if.end308, !prof !57

if.then300:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #17
  %93 = inttoptr i32 %call291 to ptr
  %cmp.i901 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  %spec.select957 = select i1 %cmp.i901, i32 %call291, i32 -22
  br label %out_free_dentry

if.end308:                                        ; preds = %if.end288
  br i1 %tobool237.not, label %if.then310, label %if.end308.if.end325_crit_edge

if.end308.if.end325_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end325

if.then310:                                       ; preds = %if.end308
  %94 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %p_vaddr, align 4
  %p_offset312 = getelementptr inbounds %struct.elf32_phdr, ptr %elf_ppnt.3996, i32 0, i32 1
  %96 = ptrtoint ptr %p_offset312 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %p_offset312, align 4
  %sub313 = sub i32 %95, %97
  %98 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %e_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %99)
  %cmp316 = icmp eq i16 %99, 3
  br i1 %cmp316, label %if.then318, label %if.then310.if.end325_crit_edge

if.then310.if.end325_crit_edge:                   ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end325

if.then318:                                       ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #17
  %and320 = and i32 %add290, -4096
  %sub321 = sub i32 %call291, %and320
  %add322 = add i32 %sub321, %load_bias.4
  %add323 = add i32 %sub313, %add322
  br label %if.end325

if.end325:                                        ; preds = %if.then318, %if.then310.if.end325_crit_edge, %if.end308.if.end325_crit_edge
  %load_addr.1 = phi i32 [ %load_addr.0993, %if.end308.if.end325_crit_edge ], [ %add323, %if.then318 ], [ %sub313, %if.then310.if.end325_crit_edge ]
  %load_bias.5 = phi i32 [ %load_bias.4, %if.end308.if.end325_crit_edge ], [ %add322, %if.then318 ], [ %load_bias.4, %if.then310.if.end325_crit_edge ]
  %100 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %p_vaddr, align 4
  %102 = ptrtoint ptr %p_flags230 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %p_flags230, align 4
  %and328 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp ne i32 %and328, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %start_code.01004)
  %cmp331 = icmp ult i32 %101, %start_code.01004
  %or.cond872 = select i1 %tobool329.not, i1 %cmp331, i1 false
  %start_code.1 = select i1 %or.cond872, i32 %101, i32 %start_code.01004
  %104 = call i32 @llvm.umax.i32(i32 %start_data.01006, i32 %101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %101)
  %cmp339 = icmp ugt i32 %101, -1226833921
  br i1 %cmp339, label %if.end325.out_free_dentry_crit_edge, label %lor.lhs.false347, !prof !57

if.end325.out_free_dentry_crit_edge:              ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

lor.lhs.false347:                                 ; preds = %if.end325
  %p_filesz348 = getelementptr inbounds %struct.elf32_phdr, ptr %elf_ppnt.3996, i32 0, i32 4
  %105 = ptrtoint ptr %p_filesz348 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %p_filesz348, align 4
  %p_memsz = getelementptr inbounds %struct.elf32_phdr, ptr %elf_ppnt.3996, i32 0, i32 5
  %107 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %p_memsz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp349 = icmp ugt i32 %106, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %108)
  %cmp353 = icmp ugt i32 %108, -1226833920
  %or.cond873 = or i1 %cmp349, %cmp353
  %sub357 = sub i32 -1226833920, %108
  call void @__sanitizer_cov_trace_cmp4(i32 %sub357, i32 %101)
  %cmp358 = icmp ult i32 %sub357, %101
  %or.cond874 = select i1 %or.cond873, i1 true, i1 %cmp358
  br i1 %or.cond874, label %lor.lhs.false347.out_free_dentry_crit_edge, label %if.end361

lor.lhs.false347.out_free_dentry_crit_edge:       ; preds = %lor.lhs.false347
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end361:                                        ; preds = %lor.lhs.false347
  call void @__sanitizer_cov_trace_pc() #17
  %add364 = add i32 %106, %101
  %109 = call i32 @llvm.umax.i32(i32 %add364, i32 %elf_bss.0999)
  call void @__sanitizer_cov_trace_cmp4(i32 %end_code.01005, i32 %add364)
  %cmp373 = icmp ult i32 %end_code.01005, %add364
  %or.cond876 = select i1 %tobool329.not, i1 %cmp373, i1 false
  %end_code.1 = select i1 %or.cond876, i32 %add364, i32 %end_code.01005
  %110 = call i32 @llvm.umax.i32(i32 %end_data.01007, i32 %add364)
  %add383 = add i32 %108, %101
  call void @__sanitizer_cov_trace_cmp4(i32 %add383, i32 %elf_brk.01000)
  %cmp384 = icmp ugt i32 %add383, %elf_brk.01000
  %111 = call i32 @llvm.umax.i32(i32 %add383, i32 %elf_brk.01000)
  %bss_prot.1 = select i1 %cmp384, i32 %77, i32 %bss_prot.01001
  br label %for.inc396

for.inc396:                                       ; preds = %if.end361, %for.body195.for.inc396_crit_edge
  %load_addr.2 = phi i32 [ %load_addr.1, %if.end361 ], [ %load_addr.0993, %for.body195.for.inc396_crit_edge ]
  %load_bias.6 = phi i32 [ %load_bias.5, %if.end361 ], [ %load_bias.0994, %for.body195.for.inc396_crit_edge ]
  %load_addr_set.2 = phi i32 [ 1, %if.end361 ], [ %load_addr_set.0995, %for.body195.for.inc396_crit_edge ]
  %elf_bss.2 = phi i32 [ %109, %if.end361 ], [ %elf_bss.0999, %for.body195.for.inc396_crit_edge ]
  %elf_brk.2 = phi i32 [ %111, %if.end361 ], [ %elf_brk.01000, %for.body195.for.inc396_crit_edge ]
  %bss_prot.2 = phi i32 [ %bss_prot.1, %if.end361 ], [ %bss_prot.01001, %for.body195.for.inc396_crit_edge ]
  %start_code.2 = phi i32 [ %start_code.1, %if.end361 ], [ %start_code.01004, %for.body195.for.inc396_crit_edge ]
  %end_code.2 = phi i32 [ %end_code.1, %if.end361 ], [ %end_code.01005, %for.body195.for.inc396_crit_edge ]
  %start_data.2 = phi i32 [ %104, %if.end361 ], [ %start_data.01006, %for.body195.for.inc396_crit_edge ]
  %end_data.2 = phi i32 [ %110, %if.end361 ], [ %end_data.01007, %for.body195.for.inc396_crit_edge ]
  %inc397 = add nuw nsw i32 %i.31003, 1
  %incdec.ptr398 = getelementptr %struct.elf32_phdr, ptr %elf_ppnt.3996, i32 1
  %112 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %e_phnum.i, align 4
  %conv192 = zext i16 %113 to i32
  %cmp193 = icmp ult i32 %inc397, %conv192
  br i1 %cmp193, label %for.inc396.for.body195_crit_edge, label %for.inc396.for.end399_crit_edge

for.inc396.for.end399_crit_edge:                  ; preds = %for.inc396
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end399

for.inc396.for.body195_crit_edge:                 ; preds = %for.inc396
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body195

for.end399:                                       ; preds = %for.inc396.for.end399_crit_edge, %for.cond190.preheader.for.end399_crit_edge
  %load_addr.0.lcssa = phi i32 [ 0, %for.cond190.preheader.for.end399_crit_edge ], [ %load_addr.2, %for.inc396.for.end399_crit_edge ]
  %load_bias.0.lcssa = phi i32 [ 0, %for.cond190.preheader.for.end399_crit_edge ], [ %load_bias.6, %for.inc396.for.end399_crit_edge ]
  %elf_bss.0.lcssa = phi i32 [ 0, %for.cond190.preheader.for.end399_crit_edge ], [ %elf_bss.2, %for.inc396.for.end399_crit_edge ]
  %elf_brk.0.lcssa = phi i32 [ 0, %for.cond190.preheader.for.end399_crit_edge ], [ %elf_brk.2, %for.inc396.for.end399_crit_edge ]
  %bss_prot.0.lcssa = phi i32 [ 0, %for.cond190.preheader.for.end399_crit_edge ], [ %bss_prot.2, %for.inc396.for.end399_crit_edge ]
  %start_code.0.lcssa = phi i32 [ -1, %for.cond190.preheader.for.end399_crit_edge ], [ %start_code.2, %for.inc396.for.end399_crit_edge ]
  %end_code.0.lcssa = phi i32 [ 0, %for.cond190.preheader.for.end399_crit_edge ], [ %end_code.2, %for.inc396.for.end399_crit_edge ]
  %start_data.0.lcssa = phi i32 [ 0, %for.cond190.preheader.for.end399_crit_edge ], [ %start_data.2, %for.inc396.for.end399_crit_edge ]
  %end_data.0.lcssa = phi i32 [ 0, %for.cond190.preheader.for.end399_crit_edge ], [ %end_data.2, %for.inc396.for.end399_crit_edge ]
  %e_entry400 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 24
  %114 = ptrtoint ptr %e_entry400 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %e_entry400, align 4
  %add401 = add i32 %115, %load_bias.0.lcssa
  %add402 = add i32 %elf_bss.0.lcssa, %load_bias.0.lcssa
  %add403 = add i32 %elf_brk.0.lcssa, %load_bias.0.lcssa
  %add404 = add i32 %start_code.0.lcssa, %load_bias.0.lcssa
  %add405 = add i32 %end_code.0.lcssa, %load_bias.0.lcssa
  %add406 = add i32 %start_data.0.lcssa, %load_bias.0.lcssa
  %add407 = add i32 %end_data.0.lcssa, %load_bias.0.lcssa
  %call408 = call fastcc i32 @set_brk(i32 noundef %add402, i32 noundef %add403, i32 noundef %bss_prot.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %if.end411, label %for.end399.out_free_dentry_crit_edge

for.end399.out_free_dentry_crit_edge:             ; preds = %for.end399
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end411:                                        ; preds = %for.end399
  call void @__sanitizer_cov_trace_cmp4(i32 %elf_brk.0.lcssa, i32 %elf_bss.0.lcssa)
  %cmp412.not = icmp eq i32 %elf_brk.0.lcssa, %elf_bss.0.lcssa
  br i1 %cmp412.not, label %if.end411.if.end430_crit_edge, label %land.lhs.true420, !prof !57

if.end411.if.end430_crit_edge:                    ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end430

land.lhs.true420:                                 ; preds = %if.end411
  %call421 = call fastcc i32 @padzero(i32 noundef %add402)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call421)
  %tobool422.not = icmp eq i32 %call421, 0
  br i1 %tobool422.not, label %land.lhs.true420.if.end430_crit_edge, label %land.lhs.true420.out_free_dentry_crit_edge, !prof !56

land.lhs.true420.out_free_dentry_crit_edge:       ; preds = %land.lhs.true420
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

land.lhs.true420.if.end430_crit_edge:             ; preds = %land.lhs.true420
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end430

if.end430:                                        ; preds = %land.lhs.true420.if.end430_crit_edge, %if.end411.if.end430_crit_edge
  br i1 %tobool1011034, label %if.then432, label %if.else455

if.then432:                                       ; preds = %if.end430
  %call433 = call fastcc i32 @load_elf_interp(ptr noundef %interp_elf_ex.21024, ptr noundef nonnull %interpreter.21027, i32 noundef %load_bias.0.lcssa, ptr noundef %interp_elf_phdata.0)
  %116 = inttoptr i32 %call433 to ptr
  %cmp.i902 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i902, label %if.then432.if.end438_crit_edge, label %if.then435

if.then432.if.end438_crit_edge:                   ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end438

if.then435:                                       ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #17
  %e_entry436 = getelementptr inbounds %struct.elf32_hdr, ptr %interp_elf_ex.21024, i32 0, i32 4
  %117 = ptrtoint ptr %e_entry436 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %e_entry436, align 8
  %add437 = add i32 %118, %call433
  br label %if.end438

if.end438:                                        ; preds = %if.then435, %if.then432.if.end438_crit_edge
  %elf_entry.0 = phi i32 [ %call433, %if.then432.if.end438_crit_edge ], [ %add437, %if.then435 ]
  %interp_load_addr.0 = phi i32 [ 0, %if.then432.if.end438_crit_edge ], [ %call433, %if.then435 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %elf_entry.0)
  %cmp439 = icmp ugt i32 %elf_entry.0, -1226833921
  br i1 %cmp439, label %if.then447, label %allow_write_access.exit, !prof !57

if.then447:                                       ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #17
  %119 = inttoptr i32 %elf_entry.0 to ptr
  %cmp.i903 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  %spec.select877 = select i1 %cmp.i903, i32 %elf_entry.0, i32 -22
  br label %out_free_dentry

allow_write_access.exit:                          ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #17
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %interpreter.21027, i32 0, i32 2
  %120 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %f_inode.i.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %121, i32 0, i32 42
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #15
  %122 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #15, !srcloc !58
  call void @fput(ptr noundef nonnull %interpreter.21027) #15
  call void @kfree(ptr noundef %interp_elf_ex.21024) #15
  call void @kfree(ptr noundef %interp_elf_phdata.0) #15
  br label %if.end466

if.else455:                                       ; preds = %if.end430
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %add401)
  %cmp456 = icmp ugt i32 %add401, -1226833921
  br i1 %cmp456, label %if.else455.out_free_dentry_crit_edge, label %if.else455.if.end466_crit_edge, !prof !57

if.else455.if.end466_crit_edge:                   ; preds = %if.else455
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end466

if.else455.out_free_dentry_crit_edge:             ; preds = %if.else455
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_dentry

if.end466:                                        ; preds = %if.else455.if.end466_crit_edge, %allow_write_access.exit
  %elf_entry.1 = phi i32 [ %elf_entry.0, %allow_write_access.exit ], [ %add401, %if.else455.if.end466_crit_edge ]
  %interp_load_addr.1 = phi i32 [ %interp_load_addr.0, %allow_write_access.exit ], [ 0, %if.else455.if.end466_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #15
  call void @set_binfmt(ptr noundef nonnull @elf_format) #15
  %lnot.ext471 = zext i1 %tobool1011034 to i32
  %call472 = call i32 @arch_setup_additional_pages(ptr noundef %bprm, i32 noundef %lnot.ext471) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call472)
  %cmp473 = icmp slt i32 %call472, 0
  br i1 %cmp473, label %if.end466.cleanup587_crit_edge, label %if.end476

if.end466.cleanup587_crit_edge:                   ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup587

if.end476:                                        ; preds = %if.end466
  %call477 = call fastcc i32 @create_elf_tables(ptr noundef %bprm, ptr noundef %buf, i32 noundef %load_addr.0.lcssa, i32 noundef %interp_load_addr.1, i32 noundef %add401)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call477)
  %cmp478 = icmp slt i32 %call477, 0
  br i1 %cmp478, label %if.end476.cleanup587_crit_edge, label %if.end481

if.end476.cleanup587_crit_edge:                   ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup587

if.end481:                                        ; preds = %if.end476
  %123 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %task167, align 8
  %mm484 = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 53
  %125 = ptrtoint ptr %mm484 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mm484, align 8
  %end_code485 = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 29
  %127 = ptrtoint ptr %end_code485 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add405, ptr %end_code485, align 8
  %start_code486 = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 28
  %128 = ptrtoint ptr %start_code486 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %add404, ptr %start_code486, align 4
  %start_data487 = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 30
  %129 = ptrtoint ptr %start_data487 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add406, ptr %start_data487, align 4
  %end_data488 = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 31
  %130 = ptrtoint ptr %end_data488 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add407, ptr %end_data488, align 8
  %p = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  %131 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %p, align 4
  %start_stack = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 34
  %133 = ptrtoint ptr %start_stack to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %start_stack, align 4
  %134 = load ptr, ptr %task167, align 8
  %flags491 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %flags491 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags491, align 4
  %and492 = and i32 %136, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and492)
  %tobool493.not = icmp eq i32 %and492, 0
  br i1 %tobool493.not, label %if.end481.if.end511_crit_edge, label %land.lhs.true494

if.end481.if.end511_crit_edge:                    ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end511

land.lhs.true494:                                 ; preds = %if.end481
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @randomize_va_space to i32))
  %137 = load i32, ptr @randomize_va_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp495 = icmp sgt i32 %137, 1
  br i1 %cmp495, label %if.then497, label %land.lhs.true494.if.end511_crit_edge

land.lhs.true494.if.end511_crit_edge:             ; preds = %land.lhs.true494
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end511

if.then497:                                       ; preds = %land.lhs.true494
  %138 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %e_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %139)
  %cmp500 = icmp ne i16 %139, 3
  %brmerge = or i1 %cmp500, %tobool1011034
  br i1 %brmerge, label %if.then497.if.end505_crit_edge, label %if.then504

if.then497.if.end505_crit_edge:                   ; preds = %if.then497
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end505

if.then504:                                       ; preds = %if.then497
  call void @__sanitizer_cov_trace_pc() #17
  %start_brk = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 32
  %140 = ptrtoint ptr %start_brk to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 4194304, ptr %start_brk, align 4
  %brk = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 33
  %141 = ptrtoint ptr %brk to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 4194304, ptr %brk, align 8
  br label %if.end505

if.end505:                                        ; preds = %if.then504, %if.then497.if.end505_crit_edge
  %call506 = call i32 @arch_randomize_brk(ptr noundef %126) #15
  %start_brk507 = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 32
  %142 = ptrtoint ptr %start_brk507 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call506, ptr %start_brk507, align 4
  %brk508 = getelementptr inbounds %struct.anon.10, ptr %126, i32 0, i32 33
  %143 = ptrtoint ptr %brk508 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %call506, ptr %brk508, align 8
  %144 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task167, align 8
  %brk_randomized = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 65
  %146 = ptrtoint ptr %brk_randomized to i32
  call void @__asan_load2_noabort(i32 %146)
  %bf.load = load i16, ptr %brk_randomized, align 8
  %bf.set = or i16 %bf.load, 2048
  store i16 %bf.set, ptr %brk_randomized, align 8
  br label %if.end511

if.end511:                                        ; preds = %if.end505, %land.lhs.true494.if.end511_crit_edge, %if.end481.if.end511_crit_edge
  %147 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %task167, align 8
  %personality514 = getelementptr inbounds %struct.task_struct, ptr %148, i32 0, i32 62
  %149 = ptrtoint ptr %personality514 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %personality514, align 32
  %and515 = and i32 %150, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and515)
  %tobool516.not = icmp eq i32 %and515, 0
  br i1 %tobool516.not, label %if.end511.if.end519_crit_edge, label %if.then517

if.end511.if.end519_crit_edge:                    ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end519

if.then517:                                       ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #17
  %call518 = call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef 4096, i32 noundef 5, i32 noundef 18, i32 noundef 0) #15
  br label %if.end519

if.end519:                                        ; preds = %if.then517, %if.end511.if.end519_crit_edge
  %151 = call i32 @llvm.read_register.i32(metadata !46)
  %or520 = or i32 %151, 16383
  %sub521 = add nsw i32 %or520, -7
  %152 = inttoptr i32 %sub521 to ptr
  %add.ptr522 = getelementptr %struct.pt_regs, ptr %152, i32 -1
  %153 = ptrtoint ptr %add.ptr522 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %add.ptr522, align 16
  call void @finalize_exec(ptr noundef %bprm) #15
  %arrayidx525 = getelementptr %struct.pt_regs, ptr %152, i32 -1, i32 0, i32 7
  %154 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx525, align 4
  %arrayidx527 = getelementptr %struct.pt_regs, ptr %152, i32 -1, i32 0, i32 8
  %156 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx527, align 16
  %arrayidx529 = getelementptr %struct.pt_regs, ptr %152, i32 -1, i32 0, i32 9
  %158 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx529, align 4
  %160 = call ptr @memset(ptr %add.ptr522, i32 0, i32 72)
  %161 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %task167, align 8
  %personality534 = getelementptr inbounds %struct.task_struct, ptr %162, i32 0, i32 62
  %163 = ptrtoint ptr %personality534 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %personality534, align 32
  %and535 = and i32 %164, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and535)
  %tobool536.not = icmp eq i32 %and535, 0
  br i1 %tobool536.not, label %if.end519.if.end551_crit_edge, label %if.then537

if.end519.if.end551_crit_edge:                    ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end551

if.then537:                                       ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #17
  %165 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %155, ptr %arrayidx525, align 4
  %166 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %157, ptr %arrayidx527, align 16
  %167 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %159, ptr %arrayidx529, align 4
  %168 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task167, align 8
  %mm546 = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 53
  %170 = ptrtoint ptr %mm546 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mm546, align 8
  %start_data547 = getelementptr inbounds %struct.anon.10, ptr %171, i32 0, i32 30
  %172 = ptrtoint ptr %start_data547 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %start_data547, align 4
  %arrayidx549 = getelementptr %struct.pt_regs, ptr %152, i32 -1, i32 0, i32 10
  %174 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %arrayidx549, align 8
  br label %if.end551

if.end551:                                        ; preds = %if.then537, %if.end519.if.end551_crit_edge
  %175 = ptrtoint ptr %task167 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %task167, align 8
  %personality554 = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 62
  %177 = ptrtoint ptr %personality554 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %personality554, align 32
  %and555 = lshr i32 %178, 19
  %179 = and i32 %and555, 16
  %180 = getelementptr %struct.pt_regs, ptr %152, i32 -1, i32 0, i32 16
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %179, ptr %180, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %182 = load i32, ptr @elf_hwcap, align 4
  %and564 = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564)
  %tobool565.not = icmp eq i32 %and564, 0
  %and567 = and i32 %elf_entry.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and567)
  %tobool568.not = icmp eq i32 %and567, 0
  %or.cond878 = select i1 %tobool565.not, i1 true, i1 %tobool568.not
  br i1 %or.cond878, label %if.end551.if.end573_crit_edge, label %if.then569

if.end551.if.end573_crit_edge:                    ; preds = %if.end551
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end573

if.then569:                                       ; preds = %if.end551
  call void @__sanitizer_cov_trace_pc() #17
  %183 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %180, align 16
  %or572 = or i32 %184, 32
  store i32 %or572, ptr %180, align 16
  br label %if.end573

if.end573:                                        ; preds = %if.then569, %if.end551.if.end573_crit_edge
  %185 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %180, align 16
  %or576 = or i32 %186, 512
  store i32 %or576, ptr %180, align 16
  %and577 = and i32 %elf_entry.1, -2
  %arrayidx579 = getelementptr %struct.pt_regs, ptr %152, i32 -1, i32 0, i32 15
  %187 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %and577, ptr %arrayidx579, align 4
  %188 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %p, align 4
  %arrayidx583 = getelementptr %struct.pt_regs, ptr %152, i32 -1, i32 0, i32 13
  %190 = ptrtoint ptr %arrayidx583 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %arrayidx583, align 4
  br label %cleanup587

out_free_dentry:                                  ; preds = %if.else455.out_free_dentry_crit_edge, %if.then447, %land.lhs.true420.out_free_dentry_crit_edge, %for.end399.out_free_dentry_crit_edge, %lor.lhs.false347.out_free_dentry_crit_edge, %if.end325.out_free_dentry_crit_edge, %if.then300, %if.end277.out_free_dentry_crit_edge, %if.then206.out_free_dentry_crit_edge, %if.end177.out_free_dentry_crit_edge, %if.end144.out_free_dentry_crit_edge, %if.end119.out_free_dentry_crit_edge, %lor.lhs.false112.out_free_dentry_crit_edge, %if.end109.out_free_dentry_crit_edge, %if.then102.out_free_dentry_crit_edge, %if.then.i897
  %interp_elf_phdata.1 = phi ptr [ null, %if.then102.out_free_dentry_crit_edge ], [ null, %lor.lhs.false112.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %if.end144.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %if.end177.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %for.end399.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %if.then447 ], [ null, %if.end119.out_free_dentry_crit_edge ], [ null, %if.end109.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %land.lhs.true420.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %if.else455.out_free_dentry_crit_edge ], [ null, %if.then.i897 ], [ %interp_elf_phdata.0, %if.then300 ], [ %interp_elf_phdata.0, %if.end277.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %lor.lhs.false347.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %if.end325.out_free_dentry_crit_edge ], [ %interp_elf_phdata.0, %if.then206.out_free_dentry_crit_edge ]
  %retval1.7 = phi i32 [ -80, %if.then102.out_free_dentry_crit_edge ], [ -80, %lor.lhs.false112.out_free_dentry_crit_edge ], [ %call157, %if.end144.out_free_dentry_crit_edge ], [ %call185, %if.end177.out_free_dentry_crit_edge ], [ %call408, %for.end399.out_free_dentry_crit_edge ], [ %spec.select877, %if.then447 ], [ -80, %if.end119.out_free_dentry_crit_edge ], [ -80, %if.end109.out_free_dentry_crit_edge ], [ -14, %land.lhs.true420.out_free_dentry_crit_edge ], [ -22, %if.else455.out_free_dentry_crit_edge ], [ %spec.select955, %if.then.i897 ], [ %spec.select957, %if.then300 ], [ %call208, %if.then206.out_free_dentry_crit_edge ], [ -22, %if.end325.out_free_dentry_crit_edge ], [ -22, %lor.lhs.false347.out_free_dentry_crit_edge ], [ -22, %if.end277.out_free_dentry_crit_edge ]
  %interp_elf_ex.3 = phi ptr [ %interp_elf_ex.2.ph, %if.then102.out_free_dentry_crit_edge ], [ %interp_elf_ex.2.ph, %lor.lhs.false112.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %if.end144.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %if.end177.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %for.end399.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %if.then447 ], [ %interp_elf_ex.2.ph, %if.end119.out_free_dentry_crit_edge ], [ %interp_elf_ex.2.ph, %if.end109.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %land.lhs.true420.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %if.else455.out_free_dentry_crit_edge ], [ %call7.i885, %if.then.i897 ], [ %interp_elf_ex.21024, %if.then300 ], [ %interp_elf_ex.21024, %if.end277.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %lor.lhs.false347.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %if.end325.out_free_dentry_crit_edge ], [ %interp_elf_ex.21024, %if.then206.out_free_dentry_crit_edge ]
  %interpreter.3 = phi ptr [ %interpreter.2.ph, %if.then102.out_free_dentry_crit_edge ], [ %interpreter.2.ph, %lor.lhs.false112.out_free_dentry_crit_edge ], [ %interpreter.21027, %if.end144.out_free_dentry_crit_edge ], [ %interpreter.21027, %if.end177.out_free_dentry_crit_edge ], [ %interpreter.21027, %for.end399.out_free_dentry_crit_edge ], [ %interpreter.21027, %if.then447 ], [ %interpreter.2.ph, %if.end119.out_free_dentry_crit_edge ], [ %interpreter.2.ph, %if.end109.out_free_dentry_crit_edge ], [ %interpreter.21027, %land.lhs.true420.out_free_dentry_crit_edge ], [ null, %if.else455.out_free_dentry_crit_edge ], [ %call67, %if.then.i897 ], [ %interpreter.21027, %if.then300 ], [ %interpreter.21027, %if.end277.out_free_dentry_crit_edge ], [ %interpreter.21027, %lor.lhs.false347.out_free_dentry_crit_edge ], [ %interpreter.21027, %if.end325.out_free_dentry_crit_edge ], [ %interpreter.21027, %if.then206.out_free_dentry_crit_edge ]
  call void @kfree(ptr noundef %interp_elf_ex.3) #15
  call void @kfree(ptr noundef %interp_elf_phdata.1) #15
  call fastcc void @allow_write_access(ptr noundef %interpreter.3)
  %tobool584.not = icmp eq ptr %interpreter.3, null
  br i1 %tobool584.not, label %out_free_dentry.out_free_ph_crit_edge, label %if.then585

out_free_dentry.out_free_ph_crit_edge:            ; preds = %out_free_dentry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

if.then585:                                       ; preds = %out_free_dentry
  call void @__sanitizer_cov_trace_pc() #17
  call void @fput(ptr noundef nonnull %interpreter.3) #15
  br label %out_free_ph

out_free_ph:                                      ; preds = %if.then585, %out_free_dentry.out_free_ph_crit_edge, %out_free_interp, %if.end71.out_free_ph_crit_edge, %if.end66.out_free_ph_crit_edge, %if.end8.i.out_free_ph_crit_edge, %if.end39.out_free_ph_crit_edge
  %retval1.8 = phi i32 [ %retval1.7, %if.then585 ], [ %retval1.7, %out_free_dentry.out_free_ph_crit_edge ], [ -12, %if.end71.out_free_ph_crit_edge ], [ %39, %if.end66.out_free_ph_crit_edge ], [ -12, %if.end8.i.out_free_ph_crit_edge ], [ -8, %if.end39.out_free_ph_crit_edge ], [ %retval1.1, %out_free_interp ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %cleanup587

cleanup587:                                       ; preds = %out_free_ph, %if.end573, %if.end476.cleanup587_crit_edge, %if.end466.cleanup587_crit_edge, %load_elf_phdrs.exit.thread, %if.end19.cleanup587_crit_edge, %if.end13.cleanup587_crit_edge, %if.end10.cleanup587_crit_edge, %if.end.cleanup587_crit_edge, %entry.cleanup587_crit_edge
  %retval.0 = phi i32 [ -8, %entry.cleanup587_crit_edge ], [ -8, %if.end13.cleanup587_crit_edge ], [ %retval1.8, %out_free_ph ], [ %call472, %if.end466.cleanup587_crit_edge ], [ %call477, %if.end476.cleanup587_crit_edge ], [ 0, %if.end573 ], [ -8, %if.end19.cleanup587_crit_edge ], [ -8, %if.end10.cleanup587_crit_edge ], [ -8, %if.end.cleanup587_crit_edge ], [ -8, %load_elf_phdrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_elf_library(ptr noundef %file) #2 align 64 {
entry:
  %pos.addr.i121 = alloca i64, align 8
  %pos.addr.i = alloca i64, align 8
  %elf_ex = alloca %struct.elf32_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %elf_ex) #15
  %0 = call ptr @memset(ptr %elf_ex, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i)
  %1 = ptrtoint ptr %pos.addr.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %pos.addr.i, align 8
  %call.i = call i32 @kernel_read(ptr noundef %file, ptr noundef nonnull %elf_ex, i32 noundef 52, ptr noundef nonnull %pos.addr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i)
  br i1 %cmp.not.i, label %if.end, label %entry.out_crit_edge, !prof !56

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %elf_ex to i32
  call void @__asan_load4_noabort(i32 %2)
  %lhsv = load i32, ptr %elf_ex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2135247942, i32 %lhsv)
  %.not = icmp eq i32 %lhsv, 2135247942
  br i1 %.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end5:                                          ; preds = %if.end
  %e_type = getelementptr inbounds %struct.elf32_hdr, ptr %elf_ex, i32 0, i32 1
  %3 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %e_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp6.not = icmp eq i16 %4, 2
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %if.end5
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %elf_ex, i32 0, i32 10
  %5 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp9 = icmp ugt i16 %6, 2
  br i1 %cmp9, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false11

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = call i32 @elf_check_arch(ptr noundef nonnull %elf_ex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %lor.lhs.false11.out_crit_edge, label %lor.lhs.false13

lor.lhs.false11.out_crit_edge:                    ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %7 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_op, align 4
  %mmap = getelementptr inbounds %struct.file_operations, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmap, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %lor.lhs.false13.out_crit_edge, label %if.end16

lor.lhs.false13.out_crit_edge:                    ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end16:                                         ; preds = %lor.lhs.false13
  %arrayidx = getelementptr inbounds [16 x i8], ptr %elf_ex, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %12)
  %cmp19 = icmp eq i8 %12, 65
  br i1 %cmp19, label %if.end16.out_crit_edge, label %if.end22

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end22:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %e_phnum, align 4
  %conv24 = zext i16 %14 to i32
  %mul = shl nuw nsw i32 %conv24, 5
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #19
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %if.end22.out_crit_edge, label %if.end28

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end28:                                         ; preds = %if.end22
  %e_phoff = getelementptr inbounds %struct.elf32_hdr, ptr %elf_ex, i32 0, i32 5
  %15 = ptrtoint ptr %e_phoff to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %e_phoff, align 4
  %conv29 = zext i32 %16 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i121)
  %17 = ptrtoint ptr %pos.addr.i121 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv29, ptr %pos.addr.i121, align 8
  %call.i122 = call i32 @kernel_read(ptr noundef %file, ptr noundef nonnull %call9.i, i32 noundef %mul, ptr noundef nonnull %pos.addr.i121) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i122, i32 %mul)
  %cmp.not.i123 = icmp eq i32 %call.i122, %mul
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i121)
  br i1 %cmp.not.i123, label %elf_read.exit128, label %if.end28.out_free_ph_crit_edge, !prof !56

if.end28.out_free_ph_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

elf_read.exit128:                                 ; preds = %if.end28
  %18 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %e_phnum, align 4
  %conv36 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp37137.not = icmp eq i16 %19, 0
  br i1 %cmp37137.not, label %elf_read.exit128.out_free_ph_crit_edge, label %elf_read.exit128.for.body_crit_edge

elf_read.exit128.for.body_crit_edge:              ; preds = %elf_read.exit128
  br label %for.body

elf_read.exit128.out_free_ph_crit_edge:           ; preds = %elf_read.exit128
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

for.body:                                         ; preds = %for.body.for.body_crit_edge, %elf_read.exit128.for.body_crit_edge
  %j.0139 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %elf_read.exit128.for.body_crit_edge ]
  %i.0138 = phi i32 [ %inc43, %for.body.for.body_crit_edge ], [ 0, %elf_read.exit128.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.elf32_phdr, ptr %call9.i, i32 %i.0138
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp39 = icmp eq i32 %21, 1
  %inc = zext i1 %cmp39 to i32
  %spec.select = add i32 %j.0139, %inc
  %inc43 = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc43, %conv36
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 1
  br i1 %phi.cmp, label %for.end.while.cond_crit_edge, label %for.end.out_free_ph_crit_edge

for.end.out_free_ph_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

for.end.while.cond_crit_edge:                     ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.end.while.cond_crit_edge
  %eppnt.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %call9.i, %for.end.while.cond_crit_edge ]
  %22 = ptrtoint ptr %eppnt.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eppnt.0, align 4
  %cmp49.not = icmp eq i32 %23, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %eppnt.0, i32 1
  br i1 %cmp49.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %p_vaddr = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt.0, i32 0, i32 2
  %24 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p_vaddr, align 4
  %and = and i32 %25, -4096
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt.0, i32 0, i32 4
  %26 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p_filesz, align 4
  %and52 = and i32 %25, 4095
  %add = add i32 %27, %and52
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt.0, i32 0, i32 1
  %28 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p_offset, align 4
  %sub = sub i32 %29, %and52
  %call55 = call i32 @vm_mmap(ptr noundef %file, i32 noundef %and, i32 noundef %add, i32 noundef 7, i32 noundef 1048578, i32 noundef %sub) #15
  %30 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p_vaddr, align 4
  %and57 = and i32 %31, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %call55, i32 %and57)
  %cmp58.not = icmp eq i32 %call55, %and57
  br i1 %cmp58.not, label %if.end61, label %while.end.out_free_ph_crit_edge

while.end.out_free_ph_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

if.end61:                                         ; preds = %while.end
  %32 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p_filesz, align 4
  %add64 = add i32 %33, %31
  %call65 = call fastcc i32 @padzero(i32 noundef %add64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end61.out_free_ph_crit_edge

if.end61.out_free_ph_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

if.end68:                                         ; preds = %if.end61
  %34 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p_filesz, align 4
  %36 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p_vaddr, align 4
  %add71 = add i32 %37, 4095
  %sub73 = add i32 %add71, %35
  %and74 = and i32 %sub73, -4096
  %p_memsz = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt.0, i32 0, i32 5
  %38 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %p_memsz, align 4
  %sub78 = add i32 %add71, %39
  %and79 = and i32 %sub78, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and79, i32 %and74)
  %cmp80 = icmp ugt i32 %and79, %and74
  br i1 %cmp80, label %if.then82, label %if.end68.if.end88_crit_edge

if.end68.if.end88_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then82:                                        ; preds = %if.end68
  %sub83 = sub i32 %and79, %and74
  %call84 = call i32 @vm_brk(i32 noundef %and74, i32 noundef %sub83) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then82.if.end88_crit_edge, label %if.then82.out_free_ph_crit_edge

if.then82.out_free_ph_crit_edge:                  ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_ph

if.then82.if.end88_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.end88:                                         ; preds = %if.then82.if.end88_crit_edge, %if.end68.if.end88_crit_edge
  br label %out_free_ph

out_free_ph:                                      ; preds = %if.end88, %if.then82.out_free_ph_crit_edge, %if.end61.out_free_ph_crit_edge, %while.end.out_free_ph_crit_edge, %for.end.out_free_ph_crit_edge, %elf_read.exit128.out_free_ph_crit_edge, %if.end28.out_free_ph_crit_edge
  %error.0 = phi i32 [ -8, %for.end.out_free_ph_crit_edge ], [ %call55, %while.end.out_free_ph_crit_edge ], [ %call84, %if.then82.out_free_ph_crit_edge ], [ 0, %if.end88 ], [ -14, %if.end61.out_free_ph_crit_edge ], [ -8, %elf_read.exit128.out_free_ph_crit_edge ], [ -8, %if.end28.out_free_ph_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %out

out:                                              ; preds = %out_free_ph, %if.end22.out_crit_edge, %if.end16.out_crit_edge, %lor.lhs.false13.out_crit_edge, %lor.lhs.false11.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ -8, %if.end.out_crit_edge ], [ -8, %if.end5.out_crit_edge ], [ -8, %lor.lhs.false.out_crit_edge ], [ -8, %if.end16.out_crit_edge ], [ %error.0, %out_free_ph ], [ -12, %if.end22.out_crit_edge ], [ -8, %lor.lhs.false13.out_crit_edge ], [ -8, %lor.lhs.false11.out_crit_edge ], [ -8, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %elf_ex) #15
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elf_core_dump(ptr noundef %cprm) #2 align 64 {
entry:
  %cputime.i.i.i = alloca %struct.task_cputime, align 8
  %tmp18.i.i.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp19.i.i.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp24.i.i.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp26.i.i.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp28.i.i.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp30.i.i.i = alloca %struct.__kernel_old_timeval, align 8
  %data.i.i = alloca ptr, align 4
  %vma_count = alloca i32, align 4
  %vma_data_size = alloca i32, align 4
  %elf = alloca %struct.elf32_hdr, align 4
  %info = alloca %struct.elf_note_info, align 4
  %vma_meta = alloca ptr, align 4
  %phdr = alloca %struct.elf32_phdr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma_count) #15
  %0 = ptrtoint ptr %vma_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vma_count, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma_data_size) #15
  %1 = ptrtoint ptr %vma_data_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %vma_data_size, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %elf) #15
  %2 = call ptr @memset(ptr %elf, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %info) #15
  %3 = call ptr @memset(ptr %info, i32 0, i32 204)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma_meta) #15
  %4 = ptrtoint ptr %vma_meta to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %vma_meta, align 4, !annotation !59
  %call = call i32 @dump_vma_snapshot(ptr noundef %cprm, ptr noundef nonnull %vma_count, ptr noundef nonnull %vma_meta, ptr noundef nonnull %vma_data_size) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup128_crit_edge

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup128

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vma_count, align 4
  %inc = add i32 %6, 1
  %7 = call i32 @llvm.smin.i32(i32 %inc, i32 65535)
  %conv4 = and i32 %7, 65535
  %8 = ptrtoint ptr %cprm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cprm, align 8
  %10 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %call1.i = call ptr @task_user_regset_view(ptr noundef %13) #15
  %size.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 6
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %size.i, align 4
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 124) #20
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %data.i, align 4
  br label %end_coredump

if.end.i:                                         ; preds = %if.end
  %psinfo4.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %psinfo4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.7, ptr %psinfo4.i, align 4
  %type2.i.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %type2.i.i, align 4
  %datasz.i.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %datasz.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 124, ptr %datasz.i.i, align 4
  %data3.i.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %data3.i.i, align 4
  %thread_notes.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 7
  %22 = ptrtoint ptr %thread_notes.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %thread_notes.i, align 4
  %n.i = getelementptr inbounds %struct.user_regset_view, ptr %call1.i, i32 0, i32 2
  %23 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp577.not.i = icmp eq i32 %24, 0
  br i1 %cmp577.not.i, label %if.end.i.do.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %regsets.i = getelementptr inbounds %struct.user_regset_view, ptr %call1.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc10.i, %for.inc.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %regsets.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regsets.i, align 4
  %core_note_type.i = getelementptr %struct.user_regset, ptr %26, i32 %i.078.i, i32 8
  %27 = ptrtoint ptr %core_note_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %core_note_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp6.not.i = icmp eq i32 %28, 0
  br i1 %cmp6.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %thread_notes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %thread_notes.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %thread_notes.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %inc10.i = add nuw i32 %i.078.i, 1
  %31 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n.i, align 4
  %cmp5.i = icmp ult i32 %inc10.i, %32
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %33 = ptrtoint ptr %thread_notes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr.i = load i32, ptr %thread_notes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp12.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp12.i, label %for.end.i.do.end.i_crit_edge, label %lor.lhs.false.i, !prof !57

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %34 = ptrtoint ptr %regsets.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regsets.i, align 4
  %core_note_type16.i = getelementptr inbounds %struct.user_regset, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %core_note_type16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_note_type16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp17.not.i = icmp eq i32 %37, 1
  br i1 %cmp17.not.i, label %if.end46.i, label %lor.lhs.false.i.do.end.i_crit_edge, !prof !56

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1848, i32 noundef 9, ptr noundef null) #15
  br label %end_coredump

if.end46.i:                                       ; preds = %lor.lhs.false.i
  %e_machine.i = getelementptr inbounds %struct.user_regset_view, ptr %call1.i, i32 0, i32 4
  %38 = ptrtoint ptr %e_machine.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %e_machine.i, align 4
  %e_flags.i = getelementptr inbounds %struct.user_regset_view, ptr %call1.i, i32 0, i32 3
  %40 = ptrtoint ptr %e_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %e_flags.i, align 4
  %42 = getelementptr inbounds i8, ptr %elf, i32 8
  %43 = call ptr @memset(ptr %42, i32 0, i32 44)
  %44 = ptrtoint ptr %elf to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2135247942, ptr %elf, align 4
  %arrayidx.i.i = getelementptr inbounds [16 x i8], ptr %elf, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx.i.i, align 4
  %arrayidx3.i.i = getelementptr inbounds [16 x i8], ptr %elf, i32 0, i32 5
  %46 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %arrayidx3.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds [16 x i8], ptr %elf, i32 0, i32 6
  %47 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx5.i.i, align 2
  %arrayidx7.i.i = getelementptr inbounds [16 x i8], ptr %elf, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %e_type.i.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 1
  %49 = ptrtoint ptr %e_type.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 4, ptr %e_type.i.i, align 4
  %e_machine.i.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 2
  %50 = ptrtoint ptr %e_machine.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %39, ptr %e_machine.i.i, align 2
  %e_version.i.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 3
  %51 = ptrtoint ptr %e_version.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %e_version.i.i, align 4
  %e_phoff.i.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 5
  %52 = ptrtoint ptr %e_phoff.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 52, ptr %e_phoff.i.i, align 4
  %e_flags.i.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 7
  %53 = ptrtoint ptr %e_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %41, ptr %e_flags.i.i, align 4
  %e_ehsize.i.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 8
  %54 = ptrtoint ptr %e_ehsize.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 52, ptr %e_ehsize.i.i, align 4
  %e_phentsize.i.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 9
  %55 = ptrtoint ptr %e_phentsize.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 32, ptr %e_phentsize.i.i, align 2
  %conv.i.i = trunc i32 %7 to i16
  %e_phnum.i.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 10
  %56 = ptrtoint ptr %e_phnum.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i, ptr %e_phnum.i.i, align 4
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 111
  %57 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %signal.i, align 16
  %core_state.i = getelementptr inbounds %struct.signal_struct, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %core_state.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %core_state.i, align 4
  %dumper.i = getelementptr inbounds %struct.core_state, ptr %60, i32 0, i32 1
  br label %if.end8.i.i.i

for.cond83.preheader.i:                           ; preds = %for.inc79.i
  %61 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %61)
  %t.081.i = load ptr, ptr %info, align 4
  %cmp84.not82.i = icmp eq ptr %t.081.i, null
  br i1 %cmp84.not82.i, label %for.cond83.preheader.i.for.end93.i_crit_edge, label %for.body85.lr.ph.i

for.cond83.preheader.i.for.end93.i_crit_edge:     ; preds = %for.cond83.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end93.i

for.body85.lr.ph.i:                               ; preds = %for.cond83.preheader.i
  %62 = getelementptr inbounds %struct.task_cputime, ptr %cputime.i.i.i, i32 0, i32 1
  br label %for.body85.i

if.end8.i.i.i:                                    ; preds = %for.inc79.i.if.end8.i.i.i_crit_edge, %if.end46.i
  %ct.080.i = phi ptr [ %77, %for.inc79.i.if.end8.i.i.i_crit_edge ], [ %dumper.i, %if.end46.i ]
  %63 = ptrtoint ptr %thread_notes.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %thread_notes.i, align 4
  %65 = shl i32 %64, 4
  %66 = add i32 %65, 156
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %66, i32 noundef 3520) #19
  %tobool52.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool52.not.i, label %if.end8.i.i.i.end_coredump_crit_edge, label %if.end62.i, !prof !57

if.end8.i.i.i.end_coredump_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

if.end62.i:                                       ; preds = %if.end8.i.i.i
  %67 = ptrtoint ptr %ct.080.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ct.080.i, align 4
  %task64.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %call9.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %task64.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %task64.i, align 4
  %70 = load ptr, ptr %ct.080.i, align 4
  %cmp66.i = icmp eq ptr %70, %13
  br i1 %cmp66.i, label %if.end62.i.for.inc79.i_crit_edge, label %lor.lhs.false67.i

if.end62.i.for.inc79.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc79.i

lor.lhs.false67.i:                                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info, align 4
  %tobool69.not.i = icmp eq ptr %72, null
  %spec.select.i = select i1 %tobool69.not.i, ptr %info, ptr %72
  br label %for.inc79.i

for.inc79.i:                                      ; preds = %lor.lhs.false67.i, %if.end62.i.for.inc79.i_crit_edge
  %info.sink101.i = phi ptr [ %info, %if.end62.i.for.inc79.i_crit_edge ], [ %spec.select.i, %lor.lhs.false67.i ]
  %73 = ptrtoint ptr %info.sink101.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %info.sink101.i, align 4
  %75 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %call9.i.i.i, align 128
  store ptr %call9.i.i.i, ptr %info.sink101.i, align 4
  %next80.i = getelementptr inbounds %struct.core_thread, ptr %ct.080.i, i32 0, i32 1
  %76 = ptrtoint ptr %next80.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %next80.i, align 4
  %tobool48.not.i = icmp eq ptr %77, null
  br i1 %tobool48.not.i, label %for.cond83.preheader.i, label %for.inc79.i.if.end8.i.i.i_crit_edge

for.inc79.i.if.end8.i.i.i_crit_edge:              ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i.i

for.body85.i:                                     ; preds = %fill_thread_core_info.exit.i.for.body85.i_crit_edge, %for.body85.lr.ph.i
  %t.083.i = phi ptr [ %t.081.i, %for.body85.lr.ph.i ], [ %t.0.i, %fill_thread_core_info.exit.i.for.body85.i_crit_edge ]
  %78 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %9, align 4
  %prstatus.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2
  %task.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 1
  %80 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task.i.i, align 4
  %conv.i.i.i = trunc i32 %79 to i16
  %pr_cursig.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 1
  %82 = ptrtoint ptr %pr_cursig.i.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i.i.i, ptr %pr_cursig.i.i.i, align 4
  %sext.i.i.i = shl i32 %79, 16
  %conv1.i.i.i = ashr exact i32 %sext.i.i.i, 16
  %83 = ptrtoint ptr %prstatus.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv1.i.i.i, ptr %prstatus.i.i, align 4
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 116, i32 1
  %84 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %signal.i.i.i, align 8
  %pr_sigpend.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 2
  %86 = ptrtoint ptr %pr_sigpend.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %pr_sigpend.i.i.i, align 4
  %blocked.i.i.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 113
  %87 = ptrtoint ptr %blocked.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %blocked.i.i.i, align 8
  %pr_sighold.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 3
  %89 = ptrtoint ptr %pr_sighold.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %pr_sighold.i.i.i, align 4
  %90 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %93, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !60
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i.i.i, label %for.body85.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body85.i.rcu_read_lock.exit.i.i.i_crit_edge:  ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body85.i
  %call1.i.i.i1.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i1.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i1.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %for.body85.i.rcu_read_lock.exit.i.i.i_crit_edge
  %real_parent.i.i.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 71
  %94 = ptrtoint ptr %real_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %real_parent.i.i.i, align 4
  %call.i.i.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, label %land.lhs.true7.i.i.i

land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10.i.i.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b55.i.i.i = load i1, ptr @fill_prstatus.__warned, align 1
  br i1 %.b55.i.i.i, label %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, label %if.then.i.i2.i

land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge:    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10.i.i.i

if.then.i.i2.i:                                   ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @fill_prstatus.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1532, ptr noundef nonnull @.str.9) #15
  br label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.then.i.i2.i, %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge
  %call.i56.i.i.i = call i32 @__task_pid_nr_ns(ptr noundef %95, i32 noundef 0, ptr noundef null) #15
  %pr_ppid.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 5
  %96 = ptrtoint ptr %pr_ppid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call.i56.i.i.i, ptr %pr_ppid.i.i.i, align 4
  %call.i57.i.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i57.i.i.i, label %do.end10.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i60.i.i.i

do.end10.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i60.i.i.i:                          ; preds = %do.end10.i.i.i
  %call1.i58.i.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58.i.i.i)
  %tobool.not.i59.i.i.i = icmp eq i32 %call1.i58.i.i.i, 0
  br i1 %tobool.not.i59.i.i.i, label %land.lhs.true.i60.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i62.i.i.i

land.lhs.true.i60.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i60.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i62.i.i.i:                         ; preds = %land.lhs.true.i60.i.i.i
  %.b4.i61.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61.i.i.i, label %land.lhs.true2.i62.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i63.i.i.i

land.lhs.true2.i62.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i62.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i.i.i

if.then.i63.i.i.i:                                ; preds = %land.lhs.true2.i62.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #15
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i63.i.i.i, %land.lhs.true2.i62.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i60.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %do.end10.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !61
  %97 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i64.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i64.i.i.i to ptr
  %preempt_count.i.i.i.i65.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i65.i.i.i, align 4
  %sub.i.i.i.i.i3.i = add i32 %100, -1
  store volatile i32 %sub.i.i.i.i.i3.i, ptr %preempt_count.i.i.i.i65.i.i.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call.i66.i.i.i = call i32 @__task_pid_nr_ns(ptr noundef %81, i32 noundef 0, ptr noundef null) #15
  %pr_pid.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 4
  %101 = ptrtoint ptr %pr_pid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call.i66.i.i.i, ptr %pr_pid.i.i.i, align 4
  %call.i67.i.i.i = call i32 @__task_pid_nr_ns(ptr noundef %81, i32 noundef 2, ptr noundef null) #15
  %pr_pgrp.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 6
  %102 = ptrtoint ptr %pr_pgrp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call.i67.i.i.i, ptr %pr_pgrp.i.i.i, align 4
  %call.i68.i.i.i = call i32 @__task_pid_nr_ns(ptr noundef %81, i32 noundef 3, ptr noundef null) #15
  %pr_sid.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 7
  %103 = ptrtoint ptr %pr_sid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call.i68.i.i.i, ptr %pr_sid.i.i.i, align 4
  %exit_signal.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 59
  %104 = ptrtoint ptr %exit_signal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %exit_signal.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp.i.i.i4.i = icmp sgt i32 %105, -1
  br i1 %cmp.i.i.i4.i, label %if.then17.i.i.i, label %if.else.i.i.i

if.then17.i.i.i:                                  ; preds = %rcu_read_unlock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cputime.i.i.i) #15
  %106 = call ptr @memset(ptr %cputime.i.i.i, i32 255, i32 24)
  call void @thread_group_cputime(ptr noundef %81, ptr noundef nonnull %cputime.i.i.i) #15
  %pr_utime.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp18.i.i.i) #15
  %107 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %62, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp18.i.i.i, i64 noundef %108) #15
  %109 = ptrtoint ptr %tmp18.i.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %tmp18.i.i.i, align 8
  %111 = ptrtoint ptr %pr_utime.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 %110, ptr %pr_utime.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp18.i.i.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp19.i.i.i) #15
  %112 = ptrtoint ptr %cputime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %cputime.i.i.i, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp19.i.i.i, i64 noundef %113) #15
  %114 = ptrtoint ptr %tmp19.i.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %tmp19.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp19.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cputime.i.i.i) #15
  br label %fill_prstatus.exit.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_unlock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %utime1.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 86
  %116 = ptrtoint ptr %utime1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %utime1.i.i.i.i, align 8
  %stime2.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 87
  %118 = ptrtoint ptr %stime2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %stime2.i.i.i.i, align 32
  %pr_utime23.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp24.i.i.i) #15
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp24.i.i.i, i64 noundef %117) #15
  %120 = ptrtoint ptr %tmp24.i.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %tmp24.i.i.i, align 8
  %122 = ptrtoint ptr %pr_utime23.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 8)
  store i64 %121, ptr %pr_utime23.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp24.i.i.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp26.i.i.i) #15
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp26.i.i.i, i64 noundef %119) #15
  %123 = ptrtoint ptr %tmp26.i.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %tmp26.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp26.i.i.i) #15
  br label %fill_prstatus.exit.i.i

fill_prstatus.exit.i.i:                           ; preds = %if.else.i.i.i, %if.then17.i.i.i
  %.sink.i.i.i = phi i64 [ %115, %if.then17.i.i.i ], [ %124, %if.else.i.i.i ]
  %125 = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 9
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 %.sink.i.i.i, ptr %125, align 4
  %pr_cutime.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp28.i.i.i) #15
  %signal29.i.i.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 111
  %127 = ptrtoint ptr %signal29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %signal29.i.i.i, align 16
  %cutime.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %128, i32 0, i32 30
  %129 = ptrtoint ptr %cutime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %cutime.i.i.i, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp28.i.i.i, i64 noundef %130) #15
  %131 = ptrtoint ptr %tmp28.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %tmp28.i.i.i, align 8
  %133 = ptrtoint ptr %pr_cutime.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 8)
  store i64 %132, ptr %pr_cutime.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp28.i.i.i) #15
  %pr_cstime.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp30.i.i.i) #15
  %134 = ptrtoint ptr %signal29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %signal29.i.i.i, align 16
  %cstime.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %135, i32 0, i32 31
  %136 = ptrtoint ptr %cstime.i.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %cstime.i.i.i, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp30.i.i.i, i64 noundef %137) #15
  %138 = ptrtoint ptr %tmp30.i.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %tmp30.i.i.i, align 8
  %140 = ptrtoint ptr %pr_cstime.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 8)
  store i64 %139, ptr %pr_cstime.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp30.i.i.i) #15
  %141 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %task.i.i, align 4
  %143 = ptrtoint ptr %regsets.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regsets.i, align 4
  %pr_reg.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 1
  %call.i.i = call i32 @regset_get(ptr noundef %142, ptr noundef %144, i32 noundef 72, ptr noundef %pr_reg.i.i) #15
  %notes.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 3
  %145 = ptrtoint ptr %notes.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.7, ptr %notes.i.i, align 4
  %type2.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 1, i32 1
  %146 = ptrtoint ptr %type2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %type2.i.i.i, align 4
  %datasz.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 1, i32 2
  %147 = ptrtoint ptr %datasz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 148, ptr %datasz.i.i.i, align 4
  %data3.i.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 1, i32 2, i32 0, i32 0, i32 1
  %148 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %prstatus.i.i, ptr %data3.i.i.i, align 4
  %149 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %size.i, align 4
  %add.i.i = add i32 %150, 168
  store i32 %add.i.i, ptr %size.i, align 4
  %151 = ptrtoint ptr %regsets.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regsets.i, align 4
  %writeback.i.i.i = getelementptr inbounds %struct.user_regset, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %writeback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %writeback.i.i.i, align 4
  %tobool.not.i3.i.i = icmp eq ptr %154, null
  br i1 %tobool.not.i3.i.i, label %fill_prstatus.exit.i.i.do_thread_regset_writeback.exit.i.i_crit_edge, label %if.then.i5.i.i

fill_prstatus.exit.i.i.do_thread_regset_writeback.exit.i.i_crit_edge: ; preds = %fill_prstatus.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_thread_regset_writeback.exit.i.i

if.then.i5.i.i:                                   ; preds = %fill_prstatus.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %155 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %task.i.i, align 4
  %call.i4.i.i = call i32 %154(ptr noundef %156, ptr noundef %152, i32 noundef 1) #15
  br label %do_thread_regset_writeback.exit.i.i

do_thread_regset_writeback.exit.i.i:              ; preds = %if.then.i5.i.i, %fill_prstatus.exit.i.i.do_thread_regset_writeback.exit.i.i_crit_edge
  %157 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp20.i.i = icmp ugt i32 %158, 1
  br i1 %cmp20.i.i, label %for.body.lr.ph.i.i, label %do_thread_regset_writeback.exit.i.i.fill_thread_core_info.exit.i_crit_edge

do_thread_regset_writeback.exit.i.i.fill_thread_core_info.exit.i_crit_edge: ; preds = %do_thread_regset_writeback.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fill_thread_core_info.exit.i

for.body.lr.ph.i.i:                               ; preds = %do_thread_regset_writeback.exit.i.i
  %pr_fpvalid.i.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 2, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %159 = ptrtoint ptr %regsets.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regsets.i, align 4
  %arrayidx12.i.i = getelementptr %struct.user_regset, ptr %160, i32 %i.021.i.i
  %core_note_type.i.i = getelementptr %struct.user_regset, ptr %160, i32 %i.021.i.i, i32 8
  %161 = ptrtoint ptr %core_note_type.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %core_note_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %162)
  %cmp13.i.i = icmp eq i32 %162, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #15
  %163 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 -1 to ptr), ptr %data.i.i, align 4, !annotation !59
  %writeback.i6.i.i = getelementptr %struct.user_regset, ptr %160, i32 %i.021.i.i, i32 3
  %164 = ptrtoint ptr %writeback.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %writeback.i6.i.i, align 4
  %tobool.not.i7.i.i = icmp eq ptr %165, null
  br i1 %tobool.not.i7.i.i, label %for.body.i.i.do_thread_regset_writeback.exit10.i.i_crit_edge, label %if.then.i9.i.i

for.body.i.i.do_thread_regset_writeback.exit10.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_thread_regset_writeback.exit10.i.i

if.then.i9.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %166 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %task.i.i, align 4
  %call.i8.i.i = call i32 %165(ptr noundef %167, ptr noundef %arrayidx12.i.i, i32 noundef 1) #15
  br label %do_thread_regset_writeback.exit10.i.i

do_thread_regset_writeback.exit10.i.i:            ; preds = %if.then.i9.i.i, %for.body.i.i.do_thread_regset_writeback.exit10.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i.i = icmp eq i32 %162, 0
  br i1 %tobool.not.i.i, label %do_thread_regset_writeback.exit10.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

do_thread_regset_writeback.exit10.i.i.cleanup.i.i_crit_edge: ; preds = %do_thread_regset_writeback.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %do_thread_regset_writeback.exit10.i.i
  %active.i.i = getelementptr %struct.user_regset, ptr %160, i32 %i.021.i.i, i32 2
  %168 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %active.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %169, null
  br i1 %tobool15.not.i.i, label %if.end.i.i.if.end21.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end21.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %170 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %task.i.i, align 4
  %call18.i.i = call i32 %169(ptr noundef %171, ptr noundef %arrayidx12.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 1
  br i1 %cmp19.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge, label %land.lhs.true.i.i.if.end21.i.i_crit_edge

land.lhs.true.i.i.if.end21.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i.i

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

if.end21.i.i:                                     ; preds = %land.lhs.true.i.i.if.end21.i.i_crit_edge, %if.end.i.i.if.end21.i.i_crit_edge
  %172 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %task.i.i, align 4
  %call23.i.i = call i32 @regset_get_alloc(ptr noundef %173, ptr noundef %arrayidx12.i.i, i32 noundef -1, ptr noundef nonnull %data.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %cmp24.i.i = icmp slt i32 %call23.i.i, 0
  br i1 %cmp24.i.i, label %if.end21.i.i.cleanup.i.i_crit_edge, label %if.end26.i.i

if.end21.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

if.end26.i.i:                                     ; preds = %if.end21.i.i
  br i1 %cmp13.i.i, label %if.then28.i.i, label %if.end26.i.i.if.end30.i.i_crit_edge

if.end26.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i

if.then28.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %174 = ptrtoint ptr %pr_fpvalid.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %pr_fpvalid.i.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then28.i.i, %if.end26.i.i.if.end30.i.i_crit_edge
  %cond.i.i = phi ptr [ @.str.7, %if.then28.i.i ], [ @.str.8, %if.end26.i.i.if.end30.i.i_crit_edge ]
  %arrayidx32.i.i = getelementptr %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 3, i32 %i.021.i.i
  %175 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %data.i.i, align 4
  %177 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %cond.i.i, ptr %arrayidx32.i.i, align 4
  %type2.i11.i.i = getelementptr %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 3, i32 %i.021.i.i, i32 1
  %178 = ptrtoint ptr %type2.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %162, ptr %type2.i11.i.i, align 4
  %datasz.i12.i.i = getelementptr %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 3, i32 %i.021.i.i, i32 2
  %179 = ptrtoint ptr %datasz.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call23.i.i, ptr %datasz.i12.i.i, align 4
  %data3.i13.i.i = getelementptr %struct.elf_thread_core_info, ptr %t.083.i, i32 0, i32 3, i32 %i.021.i.i, i32 3
  %180 = ptrtoint ptr %data3.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %176, ptr %data3.i13.i.i, align 4
  %call.i14.i.i = call i32 @strlen(ptr noundef nonnull %cond.i.i) #21
  %181 = add i32 %call.i14.i.i, 16
  %add2.i15.i.i = and i32 %181, -4
  %add6.i17.i.i = add nuw i32 %call23.i.i, 3
  %div718.i18.i.i = and i32 %add6.i17.i.i, -4
  %182 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %size.i, align 4
  %add9.i19.i.i = add i32 %183, %div718.i18.i.i
  %add37.i.i = add i32 %add9.i19.i.i, %add2.i15.i.i
  store i32 %add37.i.i, ptr %size.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end30.i.i, %if.end21.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %do_thread_regset_writeback.exit10.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #15
  %inc.i.i = add nuw i32 %i.021.i.i, 1
  %184 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %n.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %185
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.fill_thread_core_info.exit.i_crit_edge

cleanup.i.i.fill_thread_core_info.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fill_thread_core_info.exit.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

fill_thread_core_info.exit.i:                     ; preds = %cleanup.i.i.fill_thread_core_info.exit.i_crit_edge, %do_thread_regset_writeback.exit.i.i.fill_thread_core_info.exit.i_crit_edge
  %186 = ptrtoint ptr %t.083.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %t.0.i = load ptr, ptr %t.083.i, align 4
  %cmp84.not.i = icmp eq ptr %t.0.i, null
  br i1 %cmp84.not.i, label %fill_thread_core_info.exit.i.for.end93.i_crit_edge, label %fill_thread_core_info.exit.i.for.body85.i_crit_edge

fill_thread_core_info.exit.i.for.body85.i_crit_edge: ; preds = %fill_thread_core_info.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body85.i

fill_thread_core_info.exit.i.for.end93.i_crit_edge: ; preds = %fill_thread_core_info.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end93.i

for.end93.i:                                      ; preds = %fill_thread_core_info.exit.i.for.end93.i_crit_edge, %for.cond83.preheader.i.for.end93.i_crit_edge
  %group_leader.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 75
  %187 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %group_leader.i, align 4
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 53
  %189 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mm.i, align 8
  %191 = call ptr @memset(ptr %call7.i.i, i32 0, i32 124)
  %arg_end.i.i = getelementptr inbounds %struct.anon.10, ptr %190, i32 0, i32 36
  %192 = ptrtoint ptr %arg_end.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arg_end.i.i, align 4
  %arg_start.i.i = getelementptr inbounds %struct.anon.10, ptr %190, i32 0, i32 35
  %194 = ptrtoint ptr %arg_start.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arg_start.i.i, align 8
  %sub.i.i = sub i32 %193, %195
  %196 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 79) #15
  %pr_psargs.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 12
  %197 = inttoptr i32 %195 to ptr
  call void @__check_object_size(ptr noundef %pr_psargs.i.i, i32 noundef %196, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #15
  %call.i.i.i8.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i8.i, label %for.end93.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i10.i

for.end93.i.if.end.i.i.i.i_crit_edge:             ; preds = %for.end93.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i10.i:                          ; preds = %for.end93.i
  %198 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %197, i32 %196, i32 -1226833920) #22, !srcloc !62
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %198, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i10.i.if.end.i.i.i.i_crit_edge, !prof !56

land.lhs.true.i.i.i10.i.if.end.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_psargs.i.i, i32 noundef %196) #15
  %199 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i.i.i11.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i.i.i.i.i.i11.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 4
  %201 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !63
  %and.i.i.i.i.i.i = and i32 %201, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %pr_psargs.i.i, ptr noundef %197, i32 noundef %196) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %201) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i10.i.if.end.i.i.i.i_crit_edge, %for.end93.i.if.end.i.i.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %196, %for.end93.i.if.end.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %196, %land.lhs.true.i.i.i10.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %for.cond.preheader.i.i, label %if.then11.i.i.i.i, !prof !56

for.cond.preheader.i.i:                           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp448.not.i.i = icmp eq i32 %196, 0
  br i1 %cmp448.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i13.i_crit_edge

for.cond.preheader.i.i.for.body.i13.i_crit_edge:  ; preds = %for.cond.preheader.i.i
  br label %for.body.i13.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub i32 %196, %res.0.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %pr_psargs.i.i, i32 %sub.i.i.i.i
  %202 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i)
  br label %fill_psinfo.exit.i

for.body.i13.i:                                   ; preds = %for.inc.i.i.for.body.i13.i_crit_edge, %for.cond.preheader.i.i.for.body.i13.i_crit_edge
  %i.049.i.i = phi i32 [ %inc.i14.i, %for.inc.i.i.for.body.i13.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i13.i_crit_edge ]
  %arrayidx.i12.i = getelementptr %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 12, i32 %i.049.i.i
  %203 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %cmp6.i.i = icmp eq i8 %204, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %for.body.i13.i.for.inc.i.i_crit_edge

for.body.i13.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  %205 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 32, ptr %arrayidx.i12.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i, %for.body.i13.i.for.inc.i.i_crit_edge
  %inc.i14.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i14.i, %196
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i13.i_crit_edge

for.inc.i.i.for.body.i13.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i13.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %arrayidx13.i.i = getelementptr %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 12, i32 %196
  %206 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %arrayidx13.i.i, align 1
  %207 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i.i.i = and i32 %207, -16384
  %208 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %210, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !60
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i15.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i15.i, label %for.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i17.i

for.end.i.i.rcu_read_lock.exit.i.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i17.i:                            ; preds = %for.end.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i16.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i16.i, label %land.lhs.true.i.i17.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i17.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i17.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i6.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i

if.then.i6.i.i:                                   ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i6.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i17.i.rcu_read_lock.exit.i.i_crit_edge, %for.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %real_parent.i.i = getelementptr inbounds %struct.task_struct, ptr %188, i32 0, i32 71
  %211 = ptrtoint ptr %real_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile ptr, ptr %real_parent.i.i, align 4
  %call15.i.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true.i18.i, label %rcu_read_lock.exit.i.i.do.end24.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end24.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end24.i.i

land.lhs.true.i18.i:                              ; preds = %rcu_read_lock.exit.i.i
  %call17.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %land.lhs.true.i18.i.do.end24.i.i_crit_edge, label %land.lhs.true19.i.i

land.lhs.true.i18.i.do.end24.i.i_crit_edge:       ; preds = %land.lhs.true.i18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end24.i.i

land.lhs.true19.i.i:                              ; preds = %land.lhs.true.i18.i
  %.b5.i.i = load i1, ptr @fill_psinfo.__warned, align 1
  br i1 %.b5.i.i, label %land.lhs.true19.i.i.do.end24.i.i_crit_edge, label %if.then21.i.i

land.lhs.true19.i.i.do.end24.i.i_crit_edge:       ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end24.i.i

if.then21.i.i:                                    ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @fill_psinfo.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1581, ptr noundef nonnull @.str.9) #15
  br label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.then21.i.i, %land.lhs.true19.i.i.do.end24.i.i_crit_edge, %land.lhs.true.i18.i.do.end24.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end24.i.i_crit_edge
  %call.i18.i.i = call i32 @__task_pid_nr_ns(ptr noundef %212, i32 noundef 0, ptr noundef null) #15
  %pr_ppid.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 8
  %213 = ptrtoint ptr %pr_ppid.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %call.i18.i.i, ptr %pr_ppid.i.i, align 8
  %call.i19.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i19.i.i, label %do.end24.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i22.i.i

do.end24.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i22.i.i:                            ; preds = %do.end24.i.i
  %call1.i20.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call1.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i22.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i24.i.i

land.lhs.true.i22.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i24.i.i:                           ; preds = %land.lhs.true.i22.i.i
  %.b4.i23.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i.i, label %land.lhs.true2.i24.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i25.i.i

land.lhs.true2.i24.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i.i

if.then.i25.i.i:                                  ; preds = %land.lhs.true2.i24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #15
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i25.i.i, %land.lhs.true2.i24.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i22.i.i.rcu_read_unlock.exit.i.i_crit_edge, %do.end24.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !61
  %214 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i26.i.i = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i.i26.i.i to ptr
  %preempt_count.i.i.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %preempt_count.i.i.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %preempt_count.i.i.i.i27.i.i, align 4
  %sub.i.i.i.i19.i = add i32 %217, -1
  store volatile i32 %sub.i.i.i.i19.i, ptr %preempt_count.i.i.i.i27.i.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call.i28.i.i = call i32 @__task_pid_nr_ns(ptr noundef %188, i32 noundef 0, ptr noundef null) #15
  %pr_pid.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 7
  %218 = ptrtoint ptr %pr_pid.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %call.i28.i.i, ptr %pr_pid.i.i, align 4
  %call.i29.i.i = call i32 @__task_pid_nr_ns(ptr noundef %188, i32 noundef 2, ptr noundef null) #15
  %pr_pgrp.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 9
  %219 = ptrtoint ptr %pr_pgrp.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %call.i29.i.i, ptr %pr_pgrp.i.i, align 4
  %call.i30.i.i = call i32 @__task_pid_nr_ns(ptr noundef %188, i32 noundef 3, ptr noundef null) #15
  %pr_sid.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 10
  %220 = ptrtoint ptr %pr_sid.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %call.i30.i.i, ptr %pr_sid.i.i, align 8
  %221 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %188, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool34.not.i.i = icmp eq i32 %222, 0
  br i1 %tobool34.not.i.i, label %cond.end.thread.i.i, label %cond.end.i.i

cond.end.thread.i.i:                              ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %223 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %call7.i.i, align 8
  br label %cond.false41.i.i

cond.end.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i
  %224 = call i32 @llvm.cttz.i32(i32 %222, i1 true) #15, !range !66
  %add.i20.i = add nuw nsw i32 %224, 1
  %conv37.i.i = trunc i32 %add.i20.i to i8
  %225 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv37.i.i, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %224)
  %cmp38.i.i = icmp ugt i32 %224, 4
  br i1 %cmp38.i.i, label %cond.end.i.i.cond.end44.i.i_crit_edge, label %cond.end.i.i.cond.false41.i.i_crit_edge

cond.end.i.i.cond.false41.i.i_crit_edge:          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false41.i.i

cond.end.i.i.cond.end44.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end44.i.i

cond.false41.i.i:                                 ; preds = %cond.end.i.i.cond.false41.i.i_crit_edge, %cond.end.thread.i.i
  %cond47.i.i = phi i32 [ 0, %cond.end.thread.i.i ], [ %add.i20.i, %cond.end.i.i.cond.false41.i.i_crit_edge ]
  %arrayidx42.i.i = getelementptr [7 x i8], ptr @.str.13, i32 0, i32 %cond47.i.i
  %226 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx42.i.i, align 1
  br label %cond.end44.i.i

cond.end44.i.i:                                   ; preds = %cond.false41.i.i, %cond.end.i.i.cond.end44.i.i_crit_edge
  %cond45.i.i = phi i8 [ %227, %cond.false41.i.i ], [ 46, %cond.end.i.i.cond.end44.i.i_crit_edge ]
  %pr_sname.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 1
  %228 = ptrtoint ptr %pr_sname.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %cond45.i.i, ptr %pr_sname.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %cond45.i.i)
  %cmp49.i.i = icmp eq i8 %cond45.i.i, 90
  %conv51.i.i = zext i1 %cmp49.i.i to i8
  %pr_zomb.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 2
  %229 = ptrtoint ptr %pr_zomb.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv51.i.i, ptr %pr_zomb.i.i, align 2
  %static_prio.i.i.i = getelementptr inbounds %struct.task_struct, ptr %188, i32 0, i32 14
  %230 = ptrtoint ptr %static_prio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %static_prio.i.i.i, align 4
  %232 = trunc i32 %231 to i8
  %conv53.i.i = add i8 %232, -120
  %pr_nice.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 3
  %233 = ptrtoint ptr %pr_nice.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv53.i.i, ptr %pr_nice.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %188, i32 0, i32 3
  %234 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %flags.i.i, align 4
  %pr_flag.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 4
  %236 = ptrtoint ptr %pr_flag.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %pr_flag.i.i, align 4
  %237 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i7.i.i = and i32 %237, -16384
  %238 = inttoptr i32 %and.i.i.i.i.i7.i.i to ptr
  %preempt_count.i.i.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %preempt_count.i.i.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %preempt_count.i.i.i.i8.i.i, align 4
  %add.i.i.i9.i.i = add i32 %240, 1
  store volatile i32 %add.i.i.i9.i.i, ptr %preempt_count.i.i.i.i8.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !60
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i10.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10.i.i, label %cond.end44.i.i.rcu_read_lock.exit17.i.i_crit_edge, label %land.lhs.true.i13.i.i

cond.end44.i.i.rcu_read_lock.exit17.i.i_crit_edge: ; preds = %cond.end44.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit17.i.i

land.lhs.true.i13.i.i:                            ; preds = %cond.end44.i.i
  %call1.i11.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_lock.exit17.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_lock.exit17.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit17.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_lock.exit17.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_lock.exit17.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit17.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_lock.exit17.i.i

rcu_read_lock.exit17.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_lock.exit17.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_lock.exit17.i.i_crit_edge, %cond.end44.i.i.rcu_read_lock.exit17.i.i_crit_edge
  %real_cred.i.i = getelementptr inbounds %struct.task_struct, ptr %188, i32 0, i32 98
  %241 = ptrtoint ptr %real_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile ptr, ptr %real_cred.i.i, align 4
  %call59.i.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %land.lhs.true61.i.i, label %rcu_read_lock.exit17.i.i.do.end69.i.i_crit_edge

rcu_read_lock.exit17.i.i.do.end69.i.i_crit_edge:  ; preds = %rcu_read_lock.exit17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end69.i.i

land.lhs.true61.i.i:                              ; preds = %rcu_read_lock.exit17.i.i
  %call62.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i.i)
  %tobool63.not.i.i = icmp eq i32 %call62.i.i, 0
  br i1 %tobool63.not.i.i, label %land.lhs.true61.i.i.do.end69.i.i_crit_edge, label %land.lhs.true64.i.i

land.lhs.true61.i.i.do.end69.i.i_crit_edge:       ; preds = %land.lhs.true61.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end69.i.i

land.lhs.true64.i.i:                              ; preds = %land.lhs.true61.i.i
  %.b1624.i.i = load i1, ptr @fill_psinfo.__warned.14, align 1
  br i1 %.b1624.i.i, label %land.lhs.true64.i.i.do.end69.i.i_crit_edge, label %if.then66.i.i

land.lhs.true64.i.i.do.end69.i.i_crit_edge:       ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end69.i.i

if.then66.i.i:                                    ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @fill_psinfo.__warned.14, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1595, ptr noundef nonnull @.str.9) #15
  br label %do.end69.i.i

do.end69.i.i:                                     ; preds = %if.then66.i.i, %land.lhs.true64.i.i.do.end69.i.i_crit_edge, %land.lhs.true61.i.i.do.end69.i.i_crit_edge, %rcu_read_lock.exit17.i.i.do.end69.i.i_crit_edge
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %242, i32 0, i32 25
  %243 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %user_ns.i.i, align 4
  %uid.i.i = getelementptr inbounds %struct.cred, ptr %242, i32 0, i32 4
  %245 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %.unpack.i.i = load i32, ptr %uid.i.i, align 4
  %246 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %call72.i.i = call i32 @from_kuid_munged(ptr noundef %244, [1 x i32] %246) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call72.i.i)
  %tobool73.not.i.i = icmp ult i32 %call72.i.i, 65536
  br i1 %tobool73.not.i.i, label %cond.false77.i.i, label %cond.true74.i.i

cond.true74.i.i:                                  ; preds = %do.end69.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %247 = load i32, ptr @overflowuid, align 4
  br label %cond.end84.i.i

cond.false77.i.i:                                 ; preds = %do.end69.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %248 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %user_ns.i.i, align 4
  %250 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %.unpack1.i.i = load i32, ptr %uid.i.i, align 4
  %251 = insertvalue [1 x i32] undef, i32 %.unpack1.i.i, 0
  %call81.i.i = call i32 @from_kuid_munged(ptr noundef %249, [1 x i32] %251) #15
  br label %cond.end84.i.i

cond.end84.i.i:                                   ; preds = %cond.false77.i.i, %cond.true74.i.i
  %cond85.in.i.i = phi i32 [ %247, %cond.true74.i.i ], [ %call81.i.i, %cond.false77.i.i ]
  %conv86.i.i = trunc i32 %cond85.in.i.i to i16
  %pr_uid.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 5
  %252 = ptrtoint ptr %pr_uid.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %conv86.i.i, ptr %pr_uid.i.i, align 8
  %253 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %user_ns.i.i, align 4
  %gid.i.i = getelementptr inbounds %struct.cred, ptr %242, i32 0, i32 5
  %255 = ptrtoint ptr %gid.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %.unpack2.i.i = load i32, ptr %gid.i.i, align 4
  %256 = insertvalue [1 x i32] undef, i32 %.unpack2.i.i, 0
  %call92.i.i = call i32 @from_kgid_munged(ptr noundef %254, [1 x i32] %256) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call92.i.i)
  %tobool94.not.i.i = icmp ult i32 %call92.i.i, 65536
  br i1 %tobool94.not.i.i, label %cond.false98.i.i, label %cond.true95.i.i

cond.true95.i.i:                                  ; preds = %cond.end84.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %257 = load i32, ptr @overflowgid, align 4
  br label %cond.end105.i.i

cond.false98.i.i:                                 ; preds = %cond.end84.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %258 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %user_ns.i.i, align 4
  %260 = ptrtoint ptr %gid.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %.unpack3.i.i = load i32, ptr %gid.i.i, align 4
  %261 = insertvalue [1 x i32] undef, i32 %.unpack3.i.i, 0
  %call102.i.i = call i32 @from_kgid_munged(ptr noundef %259, [1 x i32] %261) #15
  br label %cond.end105.i.i

cond.end105.i.i:                                  ; preds = %cond.false98.i.i, %cond.true95.i.i
  %cond106.in.i.i = phi i32 [ %257, %cond.true95.i.i ], [ %call102.i.i, %cond.false98.i.i ]
  %conv107.i.i = trunc i32 %cond106.in.i.i to i16
  %pr_gid.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 6
  %262 = ptrtoint ptr %pr_gid.i.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv107.i.i, ptr %pr_gid.i.i, align 2
  %call.i31.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i31.i.i, label %cond.end105.i.i.rcu_read_unlock.exit41.i.i_crit_edge, label %land.lhs.true.i34.i.i

cond.end105.i.i.rcu_read_unlock.exit41.i.i_crit_edge: ; preds = %cond.end105.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit41.i.i

land.lhs.true.i34.i.i:                            ; preds = %cond.end105.i.i
  %call1.i32.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %call1.i32.i.i, 0
  br i1 %tobool.not.i33.i.i, label %land.lhs.true.i34.i.i.rcu_read_unlock.exit41.i.i_crit_edge, label %land.lhs.true2.i36.i.i

land.lhs.true.i34.i.i.rcu_read_unlock.exit41.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit41.i.i

land.lhs.true2.i36.i.i:                           ; preds = %land.lhs.true.i34.i.i
  %.b4.i35.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35.i.i, label %land.lhs.true2.i36.i.i.rcu_read_unlock.exit41.i.i_crit_edge, label %if.then.i37.i.i

land.lhs.true2.i36.i.i.rcu_read_unlock.exit41.i.i_crit_edge: ; preds = %land.lhs.true2.i36.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit41.i.i

if.then.i37.i.i:                                  ; preds = %land.lhs.true2.i36.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #15
  br label %rcu_read_unlock.exit41.i.i

rcu_read_unlock.exit41.i.i:                       ; preds = %if.then.i37.i.i, %land.lhs.true2.i36.i.i.rcu_read_unlock.exit41.i.i_crit_edge, %land.lhs.true.i34.i.i.rcu_read_unlock.exit41.i.i_crit_edge, %cond.end105.i.i.rcu_read_unlock.exit41.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !61
  %263 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i38.i.i = and i32 %263, -16384
  %264 = inttoptr i32 %and.i.i.i.i.i38.i.i to ptr
  %preempt_count.i.i.i.i39.i.i = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %preempt_count.i.i.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %preempt_count.i.i.i.i39.i.i, align 4
  %sub.i.i.i40.i.i = add i32 %266, -1
  store volatile i32 %sub.i.i.i40.i.i, ptr %preempt_count.i.i.i.i39.i.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %pr_fname.i.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i.i, i32 0, i32 11
  %call114.i.i = call ptr @__get_task_comm(ptr noundef %pr_fname.i.i, i32 noundef 16, ptr noundef %188) #15
  br label %fill_psinfo.exit.i

fill_psinfo.exit.i:                               ; preds = %rcu_read_unlock.exit41.i.i, %if.then11.i.i.i.i
  %267 = ptrtoint ptr %psinfo4.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %psinfo4.i, align 4
  %call.i22.i = call i32 @strlen(ptr noundef %268) #21
  %269 = add i32 %call.i22.i, 16
  %add2.i.i = and i32 %269, -4
  %270 = ptrtoint ptr %datasz.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %datasz.i.i, align 4
  %add6.i.i = add i32 %271, 3
  %div718.i.i = and i32 %add6.i.i, -4
  %272 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %size.i, align 4
  %add9.i.i = add i32 %273, %add2.i.i
  %add.i = add i32 %add9.i.i, %div718.i.i
  store i32 %add.i, ptr %size.i, align 4
  %signote.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 2
  %csigdata.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 5
  %274 = call ptr @memcpy(ptr %csigdata.i, ptr %9, i32 32)
  %add.ptr.i.i.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 5, i32 0, i32 0, i32 8
  %275 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 96)
  %276 = ptrtoint ptr %signote.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr @.str.7, ptr %signote.i, align 4
  %type2.i.i24.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 2, i32 1
  %277 = ptrtoint ptr %type2.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 1397311305, ptr %type2.i.i24.i, align 4
  %datasz.i.i25.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 2, i32 2
  %278 = ptrtoint ptr %datasz.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 128, ptr %datasz.i.i25.i, align 4
  %data3.i.i26.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 2, i32 3
  %279 = ptrtoint ptr %data3.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %csigdata.i, ptr %data3.i.i26.i, align 4
  %add101.i = add i32 %add.i, 148
  store i32 %add101.i, ptr %size.i, align 4
  %280 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %task.i, align 8
  %mm104.i = getelementptr inbounds %struct.task_struct, ptr %281, i32 0, i32 53
  %282 = ptrtoint ptr %mm104.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %mm104.i, align 8
  %saved_auxv.i.i = getelementptr inbounds %struct.anon.10, ptr %283, i32 0, i32 39
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %fill_psinfo.exit.i
  %i.0.i.i = phi i32 [ 0, %fill_psinfo.exit.i ], [ %add.i33.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %add.i33.i = add i32 %i.0.i.i, 2
  %arrayidx.i34.i = getelementptr i32, ptr %saved_auxv.i.i, i32 %i.0.i.i
  %284 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx.i34.i, align 4
  %cmp.not.i.i = icmp eq i32 %285, 0
  br i1 %cmp.not.i.i, label %fill_auxv_note.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

fill_auxv_note.exit.i:                            ; preds = %do.body.i.i
  %auxv.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 3
  %mul.i.i = shl i32 %add.i33.i, 2
  %286 = ptrtoint ptr %auxv.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr @.str.7, ptr %auxv.i, align 4
  %type2.i.i35.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 3, i32 1
  %287 = ptrtoint ptr %type2.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 6, ptr %type2.i.i35.i, align 4
  %datasz.i.i36.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 3, i32 2
  %288 = ptrtoint ptr %datasz.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %mul.i.i, ptr %datasz.i.i36.i, align 4
  %data3.i.i37.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 3, i32 3
  %289 = ptrtoint ptr %data3.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %saved_auxv.i.i, ptr %data3.i.i37.i, align 4
  %add9.i43.i = add i32 %add.i, 168
  %add108.i = add i32 %add9.i43.i, %mul.i.i
  %290 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %add108.i, ptr %size.i, align 4
  %files.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 4
  %291 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i = and i32 %291, -16384
  %292 = inttoptr i32 %and.i.i.i to ptr
  %task.i44.i = getelementptr inbounds %struct.thread_info, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %task.i44.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %task.i44.i, align 8
  %mm1.i.i = getelementptr inbounds %struct.task_struct, ptr %294, i32 0, i32 53
  %295 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mm1.i.i, align 8
  %map_count.i.i = getelementptr inbounds %struct.anon.10, ptr %296, i32 0, i32 13
  %297 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %map_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %298)
  %cmp.i45.i = icmp ugt i32 %298, 67108863
  br i1 %cmp.i45.i, label %fill_auxv_note.exit.i.if.end8_crit_edge, label %if.end.i47.i

fill_auxv_note.exit.i.if.end8_crit_edge:          ; preds = %fill_auxv_note.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end.i47.i:                                     ; preds = %fill_auxv_note.exit.i
  %add.i46.i = mul nuw nsw i32 %298, 12
  %mul3.i.i = add nuw nsw i32 %add.i46.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %298)
  %cmp4144.i.i = icmp ugt i32 %298, 65535
  br i1 %cmp4144.i.i, label %if.end.i47.i.if.end8_crit_edge, label %if.end6.preheader.i.i

if.end.i47.i.if.end8_crit_edge:                   ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end6.preheader.i.i:                            ; preds = %if.end.i47.i
  %mul.i48.i = shl nuw nsw i32 %298, 6
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %cleanup.i56.i.if.end6.i.i_crit_edge, %if.end6.preheader.i.i
  %size.0145.i.i = phi i32 [ %div110.i.i, %cleanup.i56.i.if.end6.i.i_crit_edge ], [ %mul.i48.i, %if.end6.preheader.i.i ]
  %sub.i49.i = add nsw i32 %size.0145.i.i, -1
  %or.i.i = or i32 %sub.i49.i, 4095
  %add7.i.i = add i32 %or.i.i, 1
  %call.i.i50.i = call noalias ptr @kvmalloc_node(i32 noundef %add7.i.i, i32 noundef 3264, i32 noundef -1) #19
  %cmp9.i.i = icmp ult ptr %call.i.i50.i, inttoptr (i32 17 to ptr)
  br i1 %cmp9.i.i, label %if.end6.i.i.if.end8_crit_edge, label %if.end11.i.i

if.end6.i.i.if.end8_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %add.ptr12.i.i = getelementptr i8, ptr %call.i.i50.i, i32 %mul3.i.i
  %299 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %299)
  %vma.0126.i.i = load ptr, ptr %296, align 4
  %cmp14.not127.i.i = icmp eq ptr %vma.0126.i.i, null
  br i1 %cmp14.not127.i.i, label %if.end11.i.i.for.end.i58.i_crit_edge, label %for.body.preheader.i.i

if.end11.i.i.for.end.i58.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i58.i

for.body.preheader.i.i:                           ; preds = %if.end11.i.i
  %sub13.i.i = sub i32 %add7.i.i, %mul3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %call.i.i50.i, i32 2
  br label %for.body.i52.i

for.body.i52.i:                                   ; preds = %for.inc.i57.i.for.body.i52.i_crit_edge, %for.body.preheader.i.i
  %vma.0132.i.i = phi ptr [ %vma.0.i.i, %for.inc.i57.i.for.body.i52.i_crit_edge ], [ %vma.0126.i.i, %for.body.preheader.i.i ]
  %name_curpos.0131.i.i = phi ptr [ %name_curpos.1.ph.i.i, %for.inc.i57.i.for.body.i52.i_crit_edge ], [ %add.ptr12.i.i, %for.body.preheader.i.i ]
  %start_end_ofs.0130.i.i = phi ptr [ %start_end_ofs.1.ph.i.i, %for.inc.i57.i.for.body.i52.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %remaining.0129.i.i = phi i32 [ %remaining.1.ph.i.i, %for.inc.i57.i.for.body.i52.i_crit_edge ], [ %sub13.i.i, %for.body.preheader.i.i ]
  %count.0128.i.i = phi i32 [ %count.1.ph.i.i, %for.inc.i57.i.for.body.i52.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0132.i.i, i32 0, i32 14
  %300 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %vm_file.i.i, align 4
  %tobool.not.i51.i = icmp eq ptr %301, null
  br i1 %tobool.not.i51.i, label %for.body.i52.i.for.inc.i57.i_crit_edge, label %if.end16.i.i

for.body.i52.i.for.inc.i57.i_crit_edge:           ; preds = %for.body.i52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i57.i

if.end16.i.i:                                     ; preds = %for.body.i52.i
  %call17.i53.i = call ptr @file_path(ptr noundef nonnull %301, ptr noundef %name_curpos.0131.i.i, i32 noundef %remaining.0129.i.i) #15
  %cmp.i.i54.i = icmp ugt ptr %call17.i53.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i54.i, label %if.then19.i.i, label %if.end25.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  %cmp21.i.i = icmp eq ptr %call17.i53.i, inttoptr (i32 -36 to ptr)
  br i1 %cmp21.i.i, label %cleanup.i56.i, label %if.then19.i.i.for.inc.i57.i_crit_edge

if.then19.i.i.for.inc.i57.i_crit_edge:            ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i57.i

if.end25.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr26.i.i = getelementptr i8, ptr %name_curpos.0131.i.i, i32 %remaining.0129.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr26.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call17.i53.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.rhs.cast28.i.i = ptrtoint ptr %name_curpos.0131.i.i to i32
  %sub.ptr.sub29.i.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.rhs.cast28.i.i
  %302 = call ptr @memmove(ptr %name_curpos.0131.i.i, ptr %call17.i53.i, i32 %sub.ptr.sub.i.i)
  %add.ptr30.i.i = getelementptr i8, ptr %name_curpos.0131.i.i, i32 %sub.ptr.sub.i.i
  %303 = ptrtoint ptr %vma.0132.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %vma.0132.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %start_end_ofs.0130.i.i, i32 1
  %305 = ptrtoint ptr %start_end_ofs.0130.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %start_end_ofs.0130.i.i, align 4
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0132.i.i, i32 0, i32 1
  %306 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %vm_end.i.i, align 4
  %incdec.ptr31.i.i = getelementptr i32, ptr %start_end_ofs.0130.i.i, i32 2
  %308 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %incdec.ptr.i.i, align 4
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0132.i.i, i32 0, i32 13
  %309 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %vm_pgoff.i.i, align 4
  %incdec.ptr32.i.i = getelementptr i32, ptr %start_end_ofs.0130.i.i, i32 3
  %311 = ptrtoint ptr %incdec.ptr31.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %incdec.ptr31.i.i, align 4
  %inc.i55.i = add i32 %count.0128.i.i, 1
  br label %for.inc.i57.i

cleanup.i56.i:                                    ; preds = %if.then19.i.i
  call void @kvfree(ptr noundef %call.i.i50.i) #15
  %mul23.i.i = mul i32 %add7.i.i, 5
  %div110.i.i = lshr exact i32 %mul23.i.i, 2
  %cmp4.i.i = icmp ugt i32 %mul23.i.i, 16777212
  br i1 %cmp4.i.i, label %cleanup.i56.i.if.end8_crit_edge, label %cleanup.i56.i.if.end6.i.i_crit_edge

cleanup.i56.i.if.end6.i.i_crit_edge:              ; preds = %cleanup.i56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i.i

cleanup.i56.i.if.end8_crit_edge:                  ; preds = %cleanup.i56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.inc.i57.i:                                    ; preds = %if.end25.i.i, %if.then19.i.i.for.inc.i57.i_crit_edge, %for.body.i52.i.for.inc.i57.i_crit_edge
  %count.1.ph.i.i = phi i32 [ %count.0128.i.i, %if.then19.i.i.for.inc.i57.i_crit_edge ], [ %count.0128.i.i, %for.body.i52.i.for.inc.i57.i_crit_edge ], [ %inc.i55.i, %if.end25.i.i ]
  %remaining.1.ph.i.i = phi i32 [ %remaining.0129.i.i, %if.then19.i.i.for.inc.i57.i_crit_edge ], [ %remaining.0129.i.i, %for.body.i52.i.for.inc.i57.i_crit_edge ], [ %sub.ptr.sub29.i.i, %if.end25.i.i ]
  %start_end_ofs.1.ph.i.i = phi ptr [ %start_end_ofs.0130.i.i, %if.then19.i.i.for.inc.i57.i_crit_edge ], [ %start_end_ofs.0130.i.i, %for.body.i52.i.for.inc.i57.i_crit_edge ], [ %incdec.ptr32.i.i, %if.end25.i.i ]
  %name_curpos.1.ph.i.i = phi ptr [ %name_curpos.0131.i.i, %if.then19.i.i.for.inc.i57.i_crit_edge ], [ %name_curpos.0131.i.i, %for.body.i52.i.for.inc.i57.i_crit_edge ], [ %add.ptr30.i.i, %if.end25.i.i ]
  %vm_next.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0132.i.i, i32 0, i32 2
  %312 = ptrtoint ptr %vm_next.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %vma.0.i.i = load ptr, ptr %vm_next.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %vma.0.i.i, null
  br i1 %cmp14.not.i.i, label %for.inc.i57.i.for.end.i58.i_crit_edge, label %for.inc.i57.i.for.body.i52.i_crit_edge

for.inc.i57.i.for.body.i52.i_crit_edge:           ; preds = %for.inc.i57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i52.i

for.inc.i57.i.for.end.i58.i_crit_edge:            ; preds = %for.inc.i57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i58.i

for.end.i58.i:                                    ; preds = %for.inc.i57.i.for.end.i58.i_crit_edge, %if.end11.i.i.for.end.i58.i_crit_edge
  %count.0.lcssa.i.i = phi i32 [ %count.1.ph.i.i, %for.inc.i57.i.for.end.i58.i_crit_edge ], [ 0, %if.end11.i.i.for.end.i58.i_crit_edge ]
  %name_curpos.0.lcssa.i.i = phi ptr [ %name_curpos.1.ph.i.i, %for.inc.i57.i.for.end.i58.i_crit_edge ], [ %add.ptr12.i.i, %if.end11.i.i.for.end.i58.i_crit_edge ]
  %.lcssa.i.i = ptrtoint ptr %call.i.i50.i to i32
  %313 = ptrtoint ptr %call.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %count.0.lcssa.i.i, ptr %call.i.i50.i, align 4
  %arrayidx34.i.i = getelementptr i32, ptr %call.i.i50.i, i32 1
  %314 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 4096, ptr %arrayidx34.i.i, align 4
  %315 = ptrtoint ptr %map_count.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %map_count.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %316, i32 %count.0.lcssa.i.i)
  %cmp37.not.i.i = icmp eq i32 %316, %count.0.lcssa.i.i
  br i1 %cmp37.not.i.i, label %for.end.i58.i.if.then111.i_crit_edge, label %if.then38.i.i

for.end.i58.i.if.then111.i_crit_edge:             ; preds = %for.end.i58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then111.i

if.then38.i.i:                                    ; preds = %for.end.i58.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub36.i.i = sub i32 %316, %count.0.lcssa.i.i
  %mul40.neg.i.i = mul i32 %sub36.i.i, -12
  %add.ptr41.i.i = getelementptr i8, ptr %add.ptr12.i.i, i32 %mul40.neg.i.i
  %sub.ptr.lhs.cast42.i.i = ptrtoint ptr %name_curpos.0.lcssa.i.i to i32
  %sub.ptr.rhs.cast43.i.i = ptrtoint ptr %add.ptr12.i.i to i32
  %sub.ptr.sub44.i.i = sub i32 %sub.ptr.lhs.cast42.i.i, %sub.ptr.rhs.cast43.i.i
  %317 = call ptr @memmove(ptr %add.ptr41.i.i, ptr %add.ptr12.i.i, i32 %sub.ptr.sub44.i.i)
  %add.ptr46.i.i = getelementptr i8, ptr %name_curpos.0.lcssa.i.i, i32 %mul40.neg.i.i
  br label %if.then111.i

if.then111.i:                                     ; preds = %if.then38.i.i, %for.end.i58.i.if.then111.i_crit_edge
  %name_curpos.2.i.i = phi ptr [ %add.ptr46.i.i, %if.then38.i.i ], [ %name_curpos.0.lcssa.i.i, %for.end.i58.i.if.then111.i_crit_edge ]
  %sub.ptr.lhs.cast48.i.i = ptrtoint ptr %name_curpos.2.i.i to i32
  %sub.ptr.sub50.i.i = sub i32 %sub.ptr.lhs.cast48.i.i, %.lcssa.i.i
  %318 = ptrtoint ptr %files.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr @.str.7, ptr %files.i, align 4
  %type2.i.i59.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 4, i32 1
  %319 = ptrtoint ptr %type2.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 1179208773, ptr %type2.i.i59.i, align 4
  %datasz.i.i60.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 4, i32 2
  %320 = ptrtoint ptr %datasz.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %sub.ptr.sub50.i.i, ptr %datasz.i.i60.i, align 4
  %data3.i.i61.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 4, i32 3
  %321 = ptrtoint ptr %data3.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call.i.i50.i, ptr %data3.i.i61.i, align 4
  %322 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %size.i, align 4
  %324 = add i32 %sub.ptr.sub50.i.i, 23
  %add9.i67.i = and i32 %324, -4
  %add115.i = add i32 %add9.i67.i, %323
  store i32 %add115.i, ptr %size.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then111.i, %cleanup.i56.i.if.end8_crit_edge, %if.end6.i.i.if.end8_crit_edge, %if.end.i47.i.if.end8_crit_edge, %fill_auxv_note.exit.i.if.end8_crit_edge
  %325 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %327 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %327, i32 noundef 3264, i32 noundef 32) #20
  %tobool16.not = icmp eq ptr %call7.i, null
  br i1 %tobool16.not, label %if.end8.end_coredump_crit_edge, label %cleanup.cont

if.end8.end_coredump_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

cleanup.cont:                                     ; preds = %if.end8
  %mul = shl i32 %inc, 5
  %conv10 = zext i32 %mul to i64
  %add11 = add i32 %mul, 52
  %328 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 4, ptr %call7.i, align 8
  %p_offset.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i, i32 0, i32 1
  %329 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %add11, ptr %p_offset.i, align 4
  %p_vaddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i, i32 0, i32 2
  %330 = ptrtoint ptr %p_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %p_vaddr.i, align 8
  %p_paddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i, i32 0, i32 3
  %331 = ptrtoint ptr %p_paddr.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %p_paddr.i, align 4
  %p_filesz.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i, i32 0, i32 4
  %332 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %326, ptr %p_filesz.i, align 8
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i, i32 0, i32 5
  %333 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %p_memsz.i, align 4
  %p_flags.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i, i32 0, i32 6
  %334 = ptrtoint ptr %p_flags.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 0, ptr %p_flags.i, align 8
  %p_align.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i, i32 0, i32 7
  %335 = ptrtoint ptr %p_align.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 0, ptr %p_align.i, align 4
  %conv19 = zext i32 %326 to i64
  %add20 = add nuw nsw i64 %conv10, 4147
  %add22 = add nuw nsw i64 %add20, %conv19
  %div214215 = and i64 %add22, 17179865088
  %336 = ptrtoint ptr %vma_data_size to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %vma_data_size, align 4
  %338 = trunc i64 %div214215 to i32
  %conv31 = add i32 %337, %338
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv4)
  %cmp33 = icmp eq i32 %conv4, 65535
  br i1 %cmp33, label %if.then35, label %cleanup.cont.if.end40_crit_edge

cleanup.cont.if.end40_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then35:                                        ; preds = %cleanup.cont
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %339 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i197 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %339, i32 noundef 3264, i32 noundef 40) #20
  %tobool37.not = icmp eq ptr %call7.i197, null
  br i1 %tobool37.not, label %if.then35.end_coredump_crit_edge, label %if.end39

if.then35.end_coredump_crit_edge:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

if.end39:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %e_shoff1.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 6
  %340 = ptrtoint ptr %e_shoff1.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %conv31, ptr %e_shoff1.i, align 4
  %e_shentsize.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 11
  %341 = ptrtoint ptr %e_shentsize.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 40, ptr %e_shentsize.i, align 2
  %e_shnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 12
  %342 = ptrtoint ptr %e_shnum.i to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 1, ptr %e_shnum.i, align 4
  %e_shstrndx.i = getelementptr inbounds %struct.elf32_hdr, ptr %elf, i32 0, i32 13
  %343 = ptrtoint ptr %e_shstrndx.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 0, ptr %e_shstrndx.i, align 2
  %344 = call ptr @memset(ptr %call7.i197, i32 0, i32 40)
  %sh_size.i = getelementptr inbounds %struct.elf32_shdr, ptr %call7.i197, i32 0, i32 5
  %345 = ptrtoint ptr %sh_size.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 1, ptr %sh_size.i, align 4
  %sh_info.i = getelementptr inbounds %struct.elf32_shdr, ptr %call7.i197, i32 0, i32 7
  %346 = ptrtoint ptr %sh_info.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %inc, ptr %sh_info.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %cleanup.cont.if.end40_crit_edge
  %shdr4extnum.0 = phi ptr [ %call7.i197, %if.end39 ], [ null, %cleanup.cont.if.end40_crit_edge ]
  %call41 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef nonnull %elf, i32 noundef 52) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.end_coredump_crit_edge, label %if.end44

if.end40.end_coredump_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef nonnull %call7.i, i32 noundef 32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.end_coredump_crit_edge, label %for.cond.preheader

if.end44.end_coredump_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

for.cond.preheader:                               ; preds = %if.end44
  %347 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %vma_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %cmp49224 = icmp sgt i32 %348, 0
  br i1 %cmp49224, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %349 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 1
  %350 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 2
  %351 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 3
  %352 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 4
  %353 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 5
  %354 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 6
  %355 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 7
  %356 = getelementptr inbounds i8, ptr %phdr, i32 8
  br label %for.body

for.cond:                                         ; preds = %if.end74
  %inc83 = add nuw nsw i32 %i.0225, 1
  %357 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %vma_count, align 4
  %cmp49 = icmp slt i32 %inc83, %358
  br i1 %cmp49, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %offset.1226 = phi i64 [ %div214215, %for.body.lr.ph ], [ %add56, %for.cond.for.body_crit_edge ]
  %i.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %inc83, %for.cond.for.body_crit_edge ]
  %359 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %vma_meta, align 4
  %add.ptr = getelementptr %struct.core_vma_metadata, ptr %360, i32 %i.0225
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %phdr) #15
  %361 = call ptr @memset(ptr %356, i32 255, i32 24)
  %362 = ptrtoint ptr %phdr to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 1, ptr %phdr, align 4
  %conv51 = trunc i64 %offset.1226 to i32
  %363 = ptrtoint ptr %349 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %conv51, ptr %349, align 4
  %364 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %add.ptr, align 4
  %366 = ptrtoint ptr %350 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %350, align 4
  %367 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 0, ptr %351, align 4
  %dump_size = getelementptr %struct.core_vma_metadata, ptr %360, i32 %i.0225, i32 3
  %368 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %dump_size, align 4
  %370 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %369, ptr %352, align 4
  %end = getelementptr %struct.core_vma_metadata, ptr %360, i32 %i.0225, i32 1
  %371 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %end, align 4
  %373 = load i32, ptr %add.ptr, align 4
  %sub53 = sub i32 %372, %373
  %374 = ptrtoint ptr %353 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %sub53, ptr %353, align 4
  %conv55 = zext i32 %369 to i64
  %add56 = add i64 %offset.1226, %conv55
  %375 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 0, ptr %354, align 4
  %flags = getelementptr %struct.core_vma_metadata, ptr %360, i32 %i.0225, i32 2
  %376 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %flags, align 4
  %and = shl i32 %377, 2
  %378 = and i32 %and, 4
  store i32 %378, ptr %354, align 4
  %379 = load i32, ptr %flags, align 4
  %and62 = and i32 %379, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %for.body.if.end67_crit_edge, label %if.then64

for.body.if.end67_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %or66 = or i32 %378, 2
  %380 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %or66, ptr %354, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %for.body.if.end67_crit_edge
  %381 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %flags, align 4
  %and69 = and i32 %382, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end74_crit_edge, label %if.then71

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  %383 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %354, align 4
  %or73 = or i32 %384, 1
  store i32 %or73, ptr %354, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end67.if.end74_crit_edge
  %385 = ptrtoint ptr %355 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 4096, ptr %355, align 4
  %call75 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef nonnull %phdr, i32 noundef 32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %phdr) #15
  br i1 %tobool76.not, label %if.end74.end_coredump_crit_edge, label %for.cond

if.end74.end_coredump_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call88 = call fastcc i32 @write_note_info(ptr noundef nonnull %info, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %for.end.end_coredump_crit_edge, label %if.end91

for.end.end_coredump_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

if.end91:                                         ; preds = %for.end
  call void @dump_skip_to(ptr noundef %cprm, i32 noundef %338) #15
  %386 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %vma_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %cmp98227 = icmp sgt i32 %387, 0
  br i1 %cmp98227, label %if.end91.for.body100_crit_edge, label %if.end91.for.end114_crit_edge

if.end91.for.end114_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end114

if.end91.for.body100_crit_edge:                   ; preds = %if.end91
  br label %for.body100

for.cond97:                                       ; preds = %for.body100
  %inc113 = add nuw nsw i32 %i.1228, 1
  %388 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %vma_count, align 4
  %cmp98 = icmp slt i32 %inc113, %389
  br i1 %cmp98, label %for.cond97.for.body100_crit_edge, label %for.cond97.for.end114_crit_edge

for.cond97.for.end114_crit_edge:                  ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end114

for.cond97.for.body100_crit_edge:                 ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body100

for.body100:                                      ; preds = %for.cond97.for.body100_crit_edge, %if.end91.for.body100_crit_edge
  %i.1228 = phi i32 [ %inc113, %for.cond97.for.body100_crit_edge ], [ 0, %if.end91.for.body100_crit_edge ]
  %390 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %vma_meta, align 4
  %add.ptr102 = getelementptr %struct.core_vma_metadata, ptr %391, i32 %i.1228
  %392 = ptrtoint ptr %add.ptr102 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %add.ptr102, align 4
  %dump_size104 = getelementptr %struct.core_vma_metadata, ptr %391, i32 %i.1228, i32 3
  %394 = ptrtoint ptr %dump_size104 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %dump_size104, align 4
  %call105 = call i32 @dump_user_range(ptr noundef %cprm, i32 noundef %393, i32 noundef %395) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %for.body100.end_coredump_crit_edge, label %for.cond97

for.body100.end_coredump_crit_edge:               ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

for.end114:                                       ; preds = %for.cond97.for.end114_crit_edge, %if.end91.for.end114_crit_edge
  br i1 %cmp33, label %if.then122, label %for.end114.end_coredump_crit_edge

for.end114.end_coredump_crit_edge:                ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #17
  br label %end_coredump

if.then122:                                       ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #17
  %call123 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef %shdr4extnum.0, i32 noundef 40) #15
  br label %end_coredump

end_coredump:                                     ; preds = %if.then122, %for.end114.end_coredump_crit_edge, %for.body100.end_coredump_crit_edge, %for.end.end_coredump_crit_edge, %if.end74.end_coredump_crit_edge, %if.end44.end_coredump_crit_edge, %if.end40.end_coredump_crit_edge, %if.then35.end_coredump_crit_edge, %if.end8.end_coredump_crit_edge, %if.end8.i.i.i.end_coredump_crit_edge, %do.end.i, %if.then.i
  %phdr4note.0 = phi ptr [ %call7.i, %if.then122 ], [ %call7.i, %for.end114.end_coredump_crit_edge ], [ %call7.i, %for.end.end_coredump_crit_edge ], [ %call7.i, %if.end44.end_coredump_crit_edge ], [ %call7.i, %if.end40.end_coredump_crit_edge ], [ %call7.i, %if.then35.end_coredump_crit_edge ], [ null, %if.then.i ], [ null, %do.end.i ], [ null, %if.end8.end_coredump_crit_edge ], [ %call7.i, %for.body100.end_coredump_crit_edge ], [ %call7.i, %if.end74.end_coredump_crit_edge ], [ null, %if.end8.i.i.i.end_coredump_crit_edge ]
  %shdr4extnum.1 = phi ptr [ %shdr4extnum.0, %if.then122 ], [ %shdr4extnum.0, %for.end114.end_coredump_crit_edge ], [ %shdr4extnum.0, %for.end.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.end44.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.end40.end_coredump_crit_edge ], [ null, %if.then35.end_coredump_crit_edge ], [ null, %if.then.i ], [ null, %do.end.i ], [ null, %if.end8.end_coredump_crit_edge ], [ %shdr4extnum.0, %for.body100.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.end74.end_coredump_crit_edge ], [ null, %if.end8.i.i.i.end_coredump_crit_edge ]
  %has_dumped.0 = phi i32 [ 1, %if.then122 ], [ 1, %for.end114.end_coredump_crit_edge ], [ 1, %for.end.end_coredump_crit_edge ], [ 1, %if.end44.end_coredump_crit_edge ], [ 1, %if.end40.end_coredump_crit_edge ], [ 1, %if.then35.end_coredump_crit_edge ], [ 0, %if.then.i ], [ 0, %do.end.i ], [ 1, %if.end8.end_coredump_crit_edge ], [ 1, %for.body100.end_coredump_crit_edge ], [ 1, %if.end74.end_coredump_crit_edge ], [ 0, %if.end8.i.i.i.end_coredump_crit_edge ]
  %396 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %info, align 4
  %tobool.not44.i = icmp eq ptr %397, null
  br i1 %tobool.not44.i, label %end_coredump.free_note_info.exit_crit_edge, label %while.body.lr.ph.i

end_coredump.free_note_info.exit_crit_edge:       ; preds = %end_coredump
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_note_info.exit

while.body.lr.ph.i:                               ; preds = %end_coredump
  %thread_notes.i200 = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i207.while.body.i_crit_edge, %while.body.lr.ph.i
  %threads.045.i = phi ptr [ %397, %while.body.lr.ph.i ], [ %399, %for.end.i207.while.body.i_crit_edge ]
  %398 = ptrtoint ptr %threads.045.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %threads.045.i, align 4
  %data.i201 = getelementptr inbounds %struct.elf_thread_core_info, ptr %threads.045.i, i32 1, i32 2, i32 0, i32 0, i32 1
  %400 = ptrtoint ptr %data.i201 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %data.i201, align 4
  %tobool1.not.i = icmp ne ptr %401, null
  %prstatus.i = getelementptr inbounds %struct.elf_thread_core_info, ptr %threads.045.i, i32 0, i32 2
  %cmp.i202 = icmp ne ptr %401, %prstatus.i
  %402 = select i1 %tobool1.not.i, i1 %cmp.i202, i1 false
  br i1 %402, label %do.end.i203, label %while.body.i.if.end.i204_crit_edge, !prof !57

while.body.i.if.end.i204_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i204

do.end.i203:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1957, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i204

if.end.i204:                                      ; preds = %do.end.i203, %while.body.i.if.end.i204_crit_edge
  %403 = ptrtoint ptr %thread_notes.i200 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %thread_notes.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %404)
  %cmp2442.i = icmp ugt i32 %404, 1
  br i1 %cmp2442.i, label %if.end.i204.for.body.i206_crit_edge, label %if.end.i204.for.end.i207_crit_edge

if.end.i204.for.end.i207_crit_edge:               ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i207

if.end.i204.for.body.i206_crit_edge:              ; preds = %if.end.i204
  br label %for.body.i206

for.body.i206:                                    ; preds = %for.body.i206.for.body.i206_crit_edge, %if.end.i204.for.body.i206_crit_edge
  %i.043.i = phi i32 [ %inc.i205, %for.body.i206.for.body.i206_crit_edge ], [ 1, %if.end.i204.for.body.i206_crit_edge ]
  %data27.i = getelementptr %struct.elf_thread_core_info, ptr %threads.045.i, i32 0, i32 3, i32 %i.043.i, i32 3
  %405 = ptrtoint ptr %data27.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %data27.i, align 4
  call void @kfree(ptr noundef %406) #15
  %inc.i205 = add nuw i32 %i.043.i, 1
  %407 = ptrtoint ptr %thread_notes.i200 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %thread_notes.i200, align 4
  %cmp24.i = icmp ult i32 %inc.i205, %408
  br i1 %cmp24.i, label %for.body.i206.for.body.i206_crit_edge, label %for.body.i206.for.end.i207_crit_edge

for.body.i206.for.end.i207_crit_edge:             ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i207

for.body.i206.for.body.i206_crit_edge:            ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i206

for.end.i207:                                     ; preds = %for.body.i206.for.end.i207_crit_edge, %if.end.i204.for.end.i207_crit_edge
  call void @kfree(ptr noundef nonnull %threads.045.i) #15
  %tobool.not.i = icmp eq ptr %399, null
  br i1 %tobool.not.i, label %for.end.i207.free_note_info.exit_crit_edge, label %for.end.i207.while.body.i_crit_edge

for.end.i207.while.body.i_crit_edge:              ; preds = %for.end.i207
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

for.end.i207.free_note_info.exit_crit_edge:       ; preds = %for.end.i207
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_note_info.exit

free_note_info.exit:                              ; preds = %for.end.i207.free_note_info.exit_crit_edge, %end_coredump.free_note_info.exit_crit_edge
  %data28.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 1, i32 3
  %409 = ptrtoint ptr %data28.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %data28.i, align 4
  call void @kfree(ptr noundef %410) #15
  %data29.i = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 4, i32 3
  %411 = ptrtoint ptr %data29.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %data29.i, align 4
  call void @kvfree(ptr noundef %412) #15
  call void @kfree(ptr noundef %shdr4extnum.1) #15
  %413 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %vma_meta, align 4
  call void @kvfree(ptr noundef %414) #15
  call void @kfree(ptr noundef %phdr4note.0) #15
  br label %cleanup128

cleanup128:                                       ; preds = %free_note_info.exit, %entry.cleanup128_crit_edge
  %retval.0 = phi i32 [ %has_dumped.0, %free_note_info.exit ], [ 0, %entry.cleanup128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma_meta) #15
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %info) #15
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %elf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma_data_size) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma_count) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elf_check_arch(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @load_elf_phdrs(ptr nocapture noundef readonly %elf_ex, ptr noundef %elf_file) unnamed_addr #2 align 64 {
entry:
  %pos.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %e_phentsize = getelementptr inbounds %struct.elf32_hdr, ptr %elf_ex, i32 0, i32 9
  %0 = ptrtoint ptr %e_phentsize to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_phentsize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %1)
  %cmp.not = icmp eq i16 %1, 32
  br i1 %cmp.not, label %if.end, label %entry.if.then22_crit_edge

entry.if.then22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

if.end:                                           ; preds = %entry
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %elf_ex, i32 0, i32 10
  %2 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_phnum, align 4
  %conv3 = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv3, 5
  %4 = add i16 %3, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %4)
  %5 = icmp ult i16 %4, -128
  br i1 %5, label %if.end.if.then22_crit_edge, label %if.end8.i

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.if.then22_crit_edge, label %if.end14

if.end8.i.if.then22_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

if.end14:                                         ; preds = %if.end8.i
  %e_phoff = getelementptr inbounds %struct.elf32_hdr, ptr %elf_ex, i32 0, i32 5
  %6 = ptrtoint ptr %e_phoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %e_phoff, align 4
  %conv15 = zext i32 %7 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.addr.i)
  %8 = ptrtoint ptr %pos.addr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv15, ptr %pos.addr.i, align 8
  %call.i = call i32 @kernel_read(ptr noundef %elf_file, ptr noundef nonnull %call9.i, i32 noundef %mul, ptr noundef nonnull %pos.addr.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul)
  %cmp.not.i = icmp eq i32 %call.i, %mul
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.addr.i)
  br i1 %cmp.not.i, label %if.end14.if.end23_crit_edge, label %if.end14.if.then22_crit_edge, !prof !56

if.end14.if.then22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then22

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then22:                                        ; preds = %if.end14.if.then22_crit_edge, %if.end8.i.if.then22_crit_edge, %if.end.if.then22_crit_edge, %entry.if.then22_crit_edge
  %elf_phdata.0.ph = phi ptr [ null, %if.end8.i.if.then22_crit_edge ], [ null, %if.end.if.then22_crit_edge ], [ null, %entry.if.then22_crit_edge ], [ %call9.i, %if.end14.if.then22_crit_edge ]
  call void @kfree(ptr noundef %elf_phdata.0.ph) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end14.if.end23_crit_edge
  %elf_phdata.1 = phi ptr [ null, %if.then22 ], [ %call9.i, %if.end14.if.end23_crit_edge ]
  ret ptr %elf_phdata.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @would_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @begin_new_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elf_set_personality(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_elf_read_implies_exec(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_new_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_arg_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @randomize_stack_top(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_brk(i32 noundef %start, i32 noundef %end, i32 noundef %prot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %start, 4095
  %and = and i32 %sub, -4096
  %sub2 = add i32 %end, 4095
  %and3 = and i32 %sub2, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and)
  %cmp = icmp ugt i32 %and3, %and
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %sub4 = sub i32 %and3, %and
  %and5 = and i32 %prot, 4
  %call = tail call i32 @vm_brk_flags(i32 noundef %and, i32 noundef %sub4, i32 noundef %and5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #15
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
  %brk = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %brk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %brk, align 8
  %7 = load ptr, ptr %task, align 8
  %mm12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm12, align 8
  %start_brk = getelementptr inbounds %struct.anon.10, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %start_brk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and3, ptr %start_brk, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ 0, %if.end8 ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clear_user(ptr noundef %to, i32 noundef %n) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %to, i32 %n, i32 -1226833920) #22, !srcloc !67
  %asmresult = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !63
  %and.i.i = and i32 %3, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #15, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %call1.i = tail call i32 @arm_clear_user(ptr noundef %to, i32 noundef %n) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #15, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n.addr.0 = phi i32 [ %call1.i, %if.then ], [ %n, %entry.if.end_crit_edge ]
  ret i32 %n.addr.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @maximum_alignment(ptr nocapture noundef readonly %cmds, i32 noundef %nr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp19 = icmp sgt i32 %nr, 0
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %alignment.022 = phi i32 [ %alignment.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.elf32_phdr, ptr %cmds, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  %p_align3 = getelementptr %struct.elf32_phdr, ptr %cmds, i32 %i.020, i32 7
  %2 = ptrtoint ptr %p_align3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_align3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.then.for.inc_crit_edge, label %is_power_of_2.exit

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

is_power_of_2.exit:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %4 = tail call i32 @llvm.ctpop.i32(i32 %3) #15, !range !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.i = icmp ult i32 %4, 2
  %5 = tail call i32 @llvm.umax.i32(i32 %alignment.022, i32 %3)
  %spec.select = select i1 %cmp1.i, i32 %5, i32 %alignment.022
  br label %for.inc

for.inc:                                          ; preds = %is_power_of_2.exit, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %alignment.2 = phi i32 [ %alignment.022, %for.body.for.inc_crit_edge ], [ %alignment.022, %if.then.for.inc_crit_edge ], [ %spec.select, %is_power_of_2.exit ]
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %alignment.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %alignment.2, %for.inc.for.end_crit_edge ]
  %sub = add i32 %alignment.0.lcssa, 4095
  %and = and i32 %sub, -4096
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_mmap_rnd() local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @total_mapping_size(ptr nocapture noundef readonly %cmds, i32 noundef %nr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp24 = icmp sgt i32 %nr, 0
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %last_idx.027 = phi i32 [ %last_idx.1, %for.body.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %first_idx.026 = phi i32 [ %first_idx.1, %for.body.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.elf32_phdr, ptr %cmds, i32 %i.025
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_idx.026)
  %cmp2 = icmp eq i32 %first_idx.026, -1
  %2 = select i1 %cmp1, i1 %cmp2, i1 false
  %first_idx.1 = select i1 %2, i32 %i.025, i32 %first_idx.026
  %last_idx.1 = select i1 %cmp1, i32 %i.025, i32 %last_idx.027
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_idx.1)
  %cmp5 = icmp eq i32 %first_idx.1, -1
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %p_vaddr = getelementptr %struct.elf32_phdr, ptr %cmds, i32 %last_idx.1, i32 2
  %3 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_vaddr, align 4
  %p_memsz = getelementptr %struct.elf32_phdr, ptr %cmds, i32 %last_idx.1, i32 5
  %5 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p_memsz, align 4
  %add = add i32 %6, %4
  %p_vaddr11 = getelementptr %struct.elf32_phdr, ptr %cmds, i32 %first_idx.1, i32 2
  %7 = ptrtoint ptr %p_vaddr11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p_vaddr11, align 4
  %and = and i32 %8, -4096
  %sub = sub i32 %add, %and
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end7 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elf_map(ptr noundef %filep, i32 noundef %addr, ptr nocapture noundef readonly %eppnt, i32 noundef %prot, i32 noundef %type, i32 noundef %total_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt, i32 0, i32 4
  %0 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_filesz, align 4
  %p_vaddr = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt, i32 0, i32 2
  %2 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_vaddr, align 4
  %and = and i32 %3, 4095
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt, i32 0, i32 1
  %4 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p_offset, align 4
  %sub = sub i32 %5, %and
  %and3 = and i32 %addr, -4096
  %add = add i32 %1, 4095
  %sub5 = add i32 %add, %and
  %and6 = and i32 %sub5, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_size)
  %tobool7.not = icmp eq i32 %total_size, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %sub10 = add i32 %total_size, 4095
  %and11 = and i32 %sub10, -4096
  %call = tail call i32 @vm_mmap(ptr noundef %filep, i32 noundef %and3, i32 noundef %and11, i32 noundef %prot, i32 noundef %type, i32 noundef %sub) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %call)
  %cmp = icmp ugt i32 %call, -1226833921
  br i1 %cmp, label %if.then8.if.end20_crit_edge, label %if.end20.thread, !prof !57

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.end20.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %add15 = add i32 %call, %and6
  %sub16 = sub i32 %and11, %and6
  %call17 = tail call i32 @vm_munmap(i32 noundef %add15, i32 noundef %sub16) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 @vm_mmap(ptr noundef %filep, i32 noundef %and3, i32 noundef %and6, i32 noundef %prot, i32 noundef %type, i32 noundef %sub) #15
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then8.if.end20_crit_edge
  %map_addr.0 = phi i32 [ %call, %if.then8.if.end20_crit_edge ], [ %call19, %if.else ]
  %and21 = and i32 %type, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp ne i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %map_addr.0)
  %cmp24 = icmp eq i32 %map_addr.0, -17
  %or.cond = select i1 %tobool22.not, i1 %cmp24, i1 false
  br i1 %or.cond, label %do.end, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %6 = tail call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %12 = inttoptr i32 %and3 to ptr
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11, ptr noundef %comm, ptr noundef %12) #23
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end20.cleanup_crit_edge, %if.end20.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and3, %entry.cleanup_crit_edge ], [ -17, %do.end ], [ %map_addr.0, %if.end20.cleanup_crit_edge ], [ %call, %if.end20.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @padzero(i32 noundef %elf_bss) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %elf_bss, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then:                                          ; preds = %entry
  %sub = sub nuw nsw i32 4096, %and
  %0 = inttoptr i32 %elf_bss to ptr
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %sub, i32 -1226833920) #22, !srcloc !67
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %clear_user.exit, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

clear_user.exit:                                  ; preds = %if.then
  %2 = tail call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #7, !srcloc !63
  %and.i.i.i = and i32 %4, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #15, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %0, i32 noundef %sub) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #15, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool1.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool1.not, label %clear_user.exit.if.end3_crit_edge, label %clear_user.exit.cleanup_crit_edge

clear_user.exit.cleanup_crit_edge:                ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

clear_user.exit.if.end3_crit_edge:                ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end3:                                          ; preds = %clear_user.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %clear_user.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -14, %clear_user.exit.cleanup_crit_edge ], [ -14, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_elf_interp(ptr noundef %interp_elf_ex, ptr noundef %interpreter, i32 noundef %no_base, ptr nocapture noundef readonly %interp_elf_phdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %e_type = getelementptr inbounds %struct.elf32_hdr, ptr %interp_elf_ex, i32 0, i32 1
  %0 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_type, align 4
  %2 = and i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %2)
  %switch5 = icmp eq i16 %2, 2
  br i1 %switch5, label %if.end, label %entry.cleanup125_crit_edge

entry.cleanup125_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

if.end:                                           ; preds = %entry
  %call = tail call i32 @elf_check_arch(ptr noundef %interp_elf_ex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup125_crit_edge, label %lor.lhs.false

if.end.cleanup125_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx = getelementptr [16 x i8], ptr %interp_elf_ex, i32 0, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %4)
  %cmp7 = icmp eq i8 %4, 65
  br i1 %cmp7, label %lor.lhs.false.cleanup125_crit_edge, label %if.end10

lor.lhs.false.cleanup125_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

if.end10:                                         ; preds = %lor.lhs.false
  %f_op = getelementptr inbounds %struct.file, ptr %interpreter, i32 0, i32 3
  %5 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_op, align 4
  %mmap = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmap, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.end10.cleanup125_crit_edge, label %if.end13

if.end10.cleanup125_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

if.end13:                                         ; preds = %if.end10
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %interp_elf_ex, i32 0, i32 10
  %9 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %e_phnum, align 4
  %conv14 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp24.i.not = icmp eq i16 %10, 0
  br i1 %cmp24.i.not, label %if.end13.cleanup125_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.cleanup125_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %last_idx.027.i = phi i32 [ %last_idx.1.i, %for.body.i.for.body.i_crit_edge ], [ -1, %if.end13.for.body.i_crit_edge ]
  %first_idx.026.i = phi i32 [ %first_idx.1.i, %for.body.i.for.body.i_crit_edge ], [ -1, %if.end13.for.body.i_crit_edge ]
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.elf32_phdr, ptr %interp_elf_phdata, i32 %i.025.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp1.i = icmp eq i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_idx.026.i)
  %cmp2.i = icmp eq i32 %first_idx.026.i, -1
  %13 = select i1 %cmp1.i, i1 %cmp2.i, i1 false
  %first_idx.1.i = select i1 %13, i32 %i.025.i, i32 %first_idx.026.i
  %last_idx.1.i = select i1 %cmp1.i, i32 %i.025.i, i32 %last_idx.027.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv14
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_idx.1.i)
  %cmp5.i = icmp eq i32 %first_idx.1.i, -1
  br i1 %cmp5.i, label %for.end.i.cleanup125_crit_edge, label %total_mapping_size.exit

for.end.i.cleanup125_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

total_mapping_size.exit:                          ; preds = %for.end.i
  %p_vaddr.i = getelementptr %struct.elf32_phdr, ptr %interp_elf_phdata, i32 %last_idx.1.i, i32 2
  %14 = ptrtoint ptr %p_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p_vaddr.i, align 4
  %p_memsz.i = getelementptr %struct.elf32_phdr, ptr %interp_elf_phdata, i32 %last_idx.1.i, i32 5
  %16 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_memsz.i, align 4
  %add.i = add i32 %17, %15
  %p_vaddr11.i = getelementptr %struct.elf32_phdr, ptr %interp_elf_phdata, i32 %first_idx.1.i, i32 2
  %18 = ptrtoint ptr %p_vaddr11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p_vaddr11.i, align 4
  %and.i = and i32 %19, -4096
  %sub.i = sub i32 %add.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool16.not = icmp eq i32 %sub.i, 0
  br i1 %tobool16.not, label %total_mapping_size.exit.cleanup125_crit_edge, label %for.cond.preheader

total_mapping_size.exit.cleanup125_crit_edge:     ; preds = %total_mapping_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

for.cond.preheader:                               ; preds = %total_mapping_size.exit
  %20 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp2128.not = icmp eq i16 %21, 0
  br i1 %cmp2128.not, label %for.cond.preheader.if.end107_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end107_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no_base)
  %tobool34.not = icmp ne i32 %no_base, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %total_size.036 = phi i32 [ %sub.i, %for.body.lr.ph ], [ %total_size.1, %for.inc.for.body_crit_edge ]
  %bss_prot.035 = phi i32 [ 0, %for.body.lr.ph ], [ %bss_prot.3, %for.inc.for.body_crit_edge ]
  %elf_bss.034 = phi i32 [ 0, %for.body.lr.ph ], [ %elf_bss.3, %for.inc.for.body_crit_edge ]
  %last_bss.033 = phi i32 [ 0, %for.body.lr.ph ], [ %last_bss.3, %for.inc.for.body_crit_edge ]
  %load_addr_set.032 = phi i32 [ 0, %for.body.lr.ph ], [ %load_addr_set.3, %for.inc.for.body_crit_edge ]
  %load_addr.031 = phi i32 [ 0, %for.body.lr.ph ], [ %load_addr.4, %for.inc.for.body_crit_edge ]
  %eppnt.029 = phi ptr [ %interp_elf_phdata, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %eppnt.029 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eppnt.029, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp23 = icmp eq i32 %23, 1
  br i1 %cmp23, label %if.then25, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then25:                                        ; preds = %for.body
  %p_flags = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt.029, i32 0, i32 6
  %24 = ptrtoint ptr %p_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p_flags, align 4
  %trunc.i = trunc i32 %25 to i3
  %rev.i = tail call i3 @llvm.bitreverse.i3(i3 %trunc.i) #15
  %26 = zext i3 %rev.i to i32
  %p_vaddr = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt.029, i32 0, i32 2
  %27 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p_vaddr, align 4
  %29 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %e_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %30)
  %cmp29 = icmp ne i16 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_addr_set.032)
  %tobool32.not = icmp eq i32 %load_addr_set.032, 0
  %or.cond = select i1 %cmp29, i1 %tobool32.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp38 = icmp eq i16 %30, 3
  %or.cond1 = select i1 %tobool34.not, i1 %cmp38, i1 false
  %sub = sub i32 0, %28
  %31 = select i1 %or.cond1, i1 %tobool32.not, i1 false
  %load_addr.1 = select i1 %31, i32 %sub, i32 %load_addr.031
  %elf_type.0 = select i1 %or.cond, i32 2, i32 18
  %add = add i32 %load_addr.1, %28
  %call43 = tail call fastcc i32 @elf_map(ptr noundef %interpreter, i32 noundef %add, ptr noundef %eppnt.029, i32 noundef %26, i32 noundef %elf_type.0, i32 noundef %total_size.036)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %call43)
  %cmp44 = icmp ugt i32 %call43, -1226833921
  br i1 %cmp44, label %if.then25.cleanup125_crit_edge, label %if.end49, !prof !57

if.then25.cleanup125_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

if.end49:                                         ; preds = %if.then25
  br i1 %tobool32.not, label %land.lhs.true51, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

land.lhs.true51:                                  ; preds = %if.end49
  %32 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %e_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %33)
  %cmp54 = icmp eq i16 %33, 3
  br i1 %cmp54, label %if.then56, label %land.lhs.true51.if.end58_crit_edge

land.lhs.true51.if.end58_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then56:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  %and = and i32 %28, -4096
  %sub57 = sub i32 %call43, %and
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %land.lhs.true51.if.end58_crit_edge, %if.end49.if.end58_crit_edge
  %load_addr.2 = phi i32 [ %load_addr.1, %if.end49.if.end58_crit_edge ], [ %sub57, %if.then56 ], [ %load_addr.1, %land.lhs.true51.if.end58_crit_edge ]
  %load_addr_set.1 = phi i32 [ 1, %if.end49.if.end58_crit_edge ], [ 1, %if.then56 ], [ 0, %land.lhs.true51.if.end58_crit_edge ]
  %34 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p_vaddr, align 4
  %add60 = add i32 %35, %load_addr.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %add60)
  %cmp61 = icmp ugt i32 %add60, -1226833921
  br i1 %cmp61, label %if.end58.cleanup125_crit_edge, label %lor.lhs.false69, !prof !57

if.end58.cleanup125_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

lor.lhs.false69:                                  ; preds = %if.end58
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt.029, i32 0, i32 4
  %36 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p_filesz, align 4
  %p_memsz = getelementptr inbounds %struct.elf32_phdr, ptr %eppnt.029, i32 0, i32 5
  %38 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %p_memsz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp70 = icmp ugt i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %39)
  %cmp74 = icmp ugt i32 %39, -1226833920
  %or.cond2 = or i1 %cmp70, %cmp74
  %sub78 = sub i32 -1226833920, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %sub78, i32 %add60)
  %cmp79 = icmp ult i32 %sub78, %add60
  %or.cond3 = select i1 %or.cond2, i1 true, i1 %cmp79
  br i1 %or.cond3, label %lor.lhs.false69.cleanup125_crit_edge, label %cleanup

lor.lhs.false69.cleanup125_crit_edge:             ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

cleanup:                                          ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #17
  %add86 = add i32 %37, %add60
  %40 = tail call i32 @llvm.umax.i32(i32 %add86, i32 %elf_bss.034)
  %add94 = add i32 %39, %add60
  call void @__sanitizer_cov_trace_cmp4(i32 %add94, i32 %last_bss.033)
  %cmp95 = icmp ugt i32 %add94, %last_bss.033
  %41 = tail call i32 @llvm.umax.i32(i32 %add94, i32 %last_bss.033)
  %bss_prot.1 = select i1 %cmp95, i32 %26, i32 %bss_prot.035
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body.for.inc_crit_edge
  %load_addr.4 = phi i32 [ %load_addr.2, %cleanup ], [ %load_addr.031, %for.body.for.inc_crit_edge ]
  %load_addr_set.3 = phi i32 [ %load_addr_set.1, %cleanup ], [ %load_addr_set.032, %for.body.for.inc_crit_edge ]
  %last_bss.3 = phi i32 [ %41, %cleanup ], [ %last_bss.033, %for.body.for.inc_crit_edge ]
  %elf_bss.3 = phi i32 [ %40, %cleanup ], [ %elf_bss.034, %for.body.for.inc_crit_edge ]
  %bss_prot.3 = phi i32 [ %bss_prot.1, %cleanup ], [ %bss_prot.035, %for.body.for.inc_crit_edge ]
  %total_size.1 = phi i32 [ 0, %cleanup ], [ %total_size.036, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.037, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %eppnt.029, i32 1
  %42 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %e_phnum, align 4
  %conv20 = zext i16 %43 to i32
  %cmp21 = icmp ult i32 %inc, %conv20
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  %and.i7 = and i32 %elf_bss.3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i, label %for.end.if.end107_crit_edge, label %if.then.i

for.end.if.end107_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then.i:                                        ; preds = %for.end
  %sub.i8 = sub nuw nsw i32 4096, %and.i7
  %44 = inttoptr i32 %elf_bss.3 to ptr
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 %sub.i8, i32 -1226833920) #22, !srcloc !67
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %clear_user.exit.i, label %if.then.i.cleanup125_crit_edge

if.then.i.cleanup125_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

clear_user.exit.i:                                ; preds = %if.then.i
  %46 = tail call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !63
  %and.i.i.i.i = and i32 %48, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %call1.i.i.i = tail call i32 @arm_clear_user(ptr noundef %44, i32 noundef %sub.i8) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #15, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool1.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool1.not.i, label %clear_user.exit.i.if.end107_crit_edge, label %clear_user.exit.i.cleanup125_crit_edge

clear_user.exit.i.cleanup125_crit_edge:           ; preds = %clear_user.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

clear_user.exit.i.if.end107_crit_edge:            ; preds = %clear_user.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.end107:                                        ; preds = %clear_user.exit.i.if.end107_crit_edge, %for.end.if.end107_crit_edge, %for.cond.preheader.if.end107_crit_edge
  %bss_prot.0.lcssa50 = phi i32 [ %bss_prot.3, %clear_user.exit.i.if.end107_crit_edge ], [ %bss_prot.3, %for.end.if.end107_crit_edge ], [ 0, %for.cond.preheader.if.end107_crit_edge ]
  %elf_bss.0.lcssa49 = phi i32 [ %elf_bss.3, %clear_user.exit.i.if.end107_crit_edge ], [ %elf_bss.3, %for.end.if.end107_crit_edge ], [ 0, %for.cond.preheader.if.end107_crit_edge ]
  %last_bss.0.lcssa48 = phi i32 [ %last_bss.3, %clear_user.exit.i.if.end107_crit_edge ], [ %last_bss.3, %for.end.if.end107_crit_edge ], [ 0, %for.cond.preheader.if.end107_crit_edge ]
  %load_addr.0.lcssa47 = phi i32 [ %load_addr.4, %clear_user.exit.i.if.end107_crit_edge ], [ %load_addr.4, %for.end.if.end107_crit_edge ], [ 0, %for.cond.preheader.if.end107_crit_edge ]
  %sub109 = add i32 %elf_bss.0.lcssa49, 4095
  %and110 = and i32 %sub109, -4096
  %sub112 = add i32 %last_bss.0.lcssa48, 4095
  %and113 = and i32 %sub112, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and113, i32 %and110)
  %cmp114 = icmp ugt i32 %and113, %and110
  br i1 %cmp114, label %if.then116, label %if.end107.if.end124_crit_edge

if.end107.if.end124_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124

if.then116:                                       ; preds = %if.end107
  %sub117 = sub i32 %and113, %and110
  %and118 = and i32 %bss_prot.0.lcssa50, 4
  %call120 = tail call i32 @vm_brk_flags(i32 noundef %and110, i32 noundef %sub117, i32 noundef %and118) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then116.if.end124_crit_edge, label %if.then116.cleanup125_crit_edge

if.then116.cleanup125_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup125

if.then116.if.end124_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124

if.end124:                                        ; preds = %if.then116.if.end124_crit_edge, %if.end107.if.end124_crit_edge
  br label %cleanup125

cleanup125:                                       ; preds = %if.end124, %if.then116.cleanup125_crit_edge, %clear_user.exit.i.cleanup125_crit_edge, %if.then.i.cleanup125_crit_edge, %lor.lhs.false69.cleanup125_crit_edge, %if.end58.cleanup125_crit_edge, %if.then25.cleanup125_crit_edge, %total_mapping_size.exit.cleanup125_crit_edge, %for.end.i.cleanup125_crit_edge, %if.end13.cleanup125_crit_edge, %if.end10.cleanup125_crit_edge, %lor.lhs.false.cleanup125_crit_edge, %if.end.cleanup125_crit_edge, %entry.cleanup125_crit_edge
  %error.1 = phi i32 [ -1, %lor.lhs.false.cleanup125_crit_edge ], [ %call120, %if.then116.cleanup125_crit_edge ], [ %load_addr.0.lcssa47, %if.end124 ], [ -1, %if.end10.cleanup125_crit_edge ], [ -1, %if.end.cleanup125_crit_edge ], [ -1, %entry.cleanup125_crit_edge ], [ -22, %total_mapping_size.exit.cleanup125_crit_edge ], [ -22, %for.end.i.cleanup125_crit_edge ], [ -22, %if.end13.cleanup125_crit_edge ], [ -14, %clear_user.exit.i.cleanup125_crit_edge ], [ -14, %if.then.i.cleanup125_crit_edge ], [ %call43, %if.then25.cleanup125_crit_edge ], [ -12, %lor.lhs.false69.cleanup125_crit_edge ], [ -12, %if.end58.cleanup125_crit_edge ]
  ret i32 %error.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allow_write_access(ptr noundef readonly %file) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_writecount = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %i_writecount, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount, ptr %i_writecount, i32 1, ptr elementtype(i32) %i_writecount) #15, !srcloc !58
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_setup_additional_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_elf_tables(ptr nocapture noundef %bprm, ptr nocapture noundef readonly %exec, i32 noundef %load_addr, i32 noundef %interp_load_addr, i32 noundef %e_entry) unnamed_addr #2 align 64 {
entry:
  %k_rand_bytes = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i518 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i518 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %p2 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  %6 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p2, align 4
  %argc3 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 12
  %8 = ptrtoint ptr %argc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %argc3, align 4
  %envc4 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 13
  %10 = ptrtoint ptr %envc4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %envc4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %k_rand_bytes) #15
  %12 = call ptr @memset(ptr %k_rand_bytes, i32 255, i32 16)
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred7 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred7, align 16
  %call8 = tail call i32 @strlen(ptr noundef nonnull @elf_platform) #18
  %add = add i32 %call8, 1
  %sub = sub i32 %7, %add
  %17 = inttoptr i32 %sub to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup322_crit_edge, label %if.then27.i.i, !prof !56

land.rhs16.i.i.cleanup322_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %cleanup322

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef nonnull @elf_platform, i32 noundef %add, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %add, i32 -1226833920) #22, !srcloc !68
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @elf_platform, i32 noundef %add) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull @elf_platform, i32 noundef %add) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool10.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool10.not, label %if.end26, label %copy_to_user.exit.cleanup322_crit_edge

copy_to_user.exit.cleanup322_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end26:                                         ; preds = %copy_to_user.exit
  call void @get_random_bytes(ptr noundef nonnull %k_rand_bytes, i32 noundef 16) #15
  %sub27 = add i32 %sub, -16
  %19 = inttoptr i32 %sub27 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #15
  %call.i.i469 = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i469, label %if.end26.cleanup322_crit_edge, label %if.end.i.i473

if.end26.cleanup322_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end.i.i473:                                    ; preds = %if.end26
  %20 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 16, i32 -1226833920) #22, !srcloc !68
  %asmresult.i.i471 = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i471)
  %cmp.i6.i472 = icmp eq i32 %asmresult.i.i471, 0
  br i1 %cmp.i6.i472, label %copy_to_user.exit478, label %if.end.i.i473.cleanup322_crit_edge

if.end.i.i473.cleanup322_crit_edge:               ; preds = %if.end.i.i473
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

copy_to_user.exit478:                             ; preds = %if.end.i.i473
  %call.i.i.i474 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %k_rand_bytes, i32 noundef 16) #15
  %call.i12.i.i475 = call i32 @arm_copy_to_user(ptr noundef %19, ptr noundef nonnull %k_rand_bytes, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i475)
  %tobool30.not = icmp eq i32 %call.i12.i.i475, 0
  br i1 %tobool30.not, label %if.end32, label %copy_to_user.exit478.cleanup322_crit_edge

copy_to_user.exit478.cleanup322_crit_edge:        ; preds = %copy_to_user.exit478
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end32:                                         ; preds = %copy_to_user.exit478
  %saved_auxv = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 39
  %incdec.ptr = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 1
  %21 = ptrtoint ptr %saved_auxv to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 33, ptr %saved_auxv, align 4
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %mm38 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 53
  %24 = ptrtoint ptr %mm38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mm38, align 8
  %vdso = getelementptr inbounds %struct.anon.10, ptr %25, i32 0, i32 42, i32 3
  %26 = ptrtoint ptr %vdso to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vdso, align 8
  %incdec.ptr39 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 2
  %28 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr, align 4
  %incdec.ptr45 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 3
  %29 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %incdec.ptr39, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %30 = load i32, ptr @elf_hwcap, align 4
  %incdec.ptr46 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 4
  %31 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %incdec.ptr45, align 4
  %incdec.ptr50 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 5
  %32 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %incdec.ptr46, align 4
  %incdec.ptr51 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 6
  %33 = ptrtoint ptr %incdec.ptr50 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4096, ptr %incdec.ptr50, align 4
  %incdec.ptr55 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 7
  %34 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 17, ptr %incdec.ptr51, align 4
  %incdec.ptr56 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 8
  %35 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 100, ptr %incdec.ptr55, align 4
  %incdec.ptr60 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 9
  %36 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %incdec.ptr56, align 4
  %e_phoff = getelementptr inbounds %struct.elf32_hdr, ptr %exec, i32 0, i32 5
  %37 = ptrtoint ptr %e_phoff to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %e_phoff, align 4
  %add61 = add i32 %38, %load_addr
  %incdec.ptr62 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 10
  %39 = ptrtoint ptr %incdec.ptr60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add61, ptr %incdec.ptr60, align 4
  %incdec.ptr66 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 11
  %40 = ptrtoint ptr %incdec.ptr62 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %incdec.ptr62, align 4
  %incdec.ptr67 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 12
  %41 = ptrtoint ptr %incdec.ptr66 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 32, ptr %incdec.ptr66, align 4
  %incdec.ptr71 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 13
  %42 = ptrtoint ptr %incdec.ptr67 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %incdec.ptr67, align 4
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %exec, i32 0, i32 10
  %43 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %44 to i32
  %incdec.ptr72 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 14
  %45 = ptrtoint ptr %incdec.ptr71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv, ptr %incdec.ptr71, align 4
  %incdec.ptr76 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 15
  %46 = ptrtoint ptr %incdec.ptr72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 7, ptr %incdec.ptr72, align 4
  %incdec.ptr77 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 16
  %47 = ptrtoint ptr %incdec.ptr76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %interp_load_addr, ptr %incdec.ptr76, align 4
  %interp_flags = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 17
  %48 = ptrtoint ptr %interp_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %interp_flags, align 4
  %and = lshr i32 %49, 3
  %and.lobit = and i32 %and, 1
  %incdec.ptr84 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 17
  %50 = ptrtoint ptr %incdec.ptr77 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %incdec.ptr77, align 4
  %incdec.ptr85 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 18
  %51 = ptrtoint ptr %incdec.ptr84 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and.lobit, ptr %incdec.ptr84, align 4
  %incdec.ptr89 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 19
  %52 = ptrtoint ptr %incdec.ptr85 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 9, ptr %incdec.ptr85, align 4
  %incdec.ptr90 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 20
  %53 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %e_entry, ptr %incdec.ptr89, align 4
  %incdec.ptr94 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 21
  %54 = ptrtoint ptr %incdec.ptr90 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 11, ptr %incdec.ptr90, align 4
  %user_ns = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 25
  %55 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 4
  %57 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack = load i32, ptr %uid, align 4
  %58 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call95 = call i32 @from_kuid_munged(ptr noundef %56, [1 x i32] %58) #15
  %incdec.ptr96 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 22
  %59 = ptrtoint ptr %incdec.ptr94 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call95, ptr %incdec.ptr94, align 4
  %incdec.ptr100 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 23
  %60 = ptrtoint ptr %incdec.ptr96 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 12, ptr %incdec.ptr96, align 4
  %61 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %user_ns, align 4
  %euid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 8
  %63 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack459 = load i32, ptr %euid, align 4
  %64 = insertvalue [1 x i32] undef, i32 %.unpack459, 0
  %call103 = call i32 @from_kuid_munged(ptr noundef %62, [1 x i32] %64) #15
  %incdec.ptr104 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 24
  %65 = ptrtoint ptr %incdec.ptr100 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call103, ptr %incdec.ptr100, align 4
  %incdec.ptr108 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 25
  %66 = ptrtoint ptr %incdec.ptr104 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 13, ptr %incdec.ptr104, align 4
  %67 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %user_ns, align 4
  %gid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 5
  %69 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack460 = load i32, ptr %gid, align 4
  %70 = insertvalue [1 x i32] undef, i32 %.unpack460, 0
  %call111 = call i32 @from_kgid_munged(ptr noundef %68, [1 x i32] %70) #15
  %incdec.ptr112 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 26
  %71 = ptrtoint ptr %incdec.ptr108 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call111, ptr %incdec.ptr108, align 4
  %incdec.ptr116 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 27
  %72 = ptrtoint ptr %incdec.ptr112 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 14, ptr %incdec.ptr112, align 4
  %73 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %user_ns, align 4
  %egid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 9
  %75 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %75)
  %.unpack461 = load i32, ptr %egid, align 4
  %76 = insertvalue [1 x i32] undef, i32 %.unpack461, 0
  %call119 = call i32 @from_kgid_munged(ptr noundef %74, [1 x i32] %76) #15
  %incdec.ptr120 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 28
  %77 = ptrtoint ptr %incdec.ptr116 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call119, ptr %incdec.ptr116, align 4
  %incdec.ptr124 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 29
  %78 = ptrtoint ptr %incdec.ptr120 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 23, ptr %incdec.ptr120, align 4
  %secureexec = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %79 = ptrtoint ptr %secureexec to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load = load i8, ptr %secureexec, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %incdec.ptr125 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 30
  %80 = ptrtoint ptr %incdec.ptr124 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %bf.cast, ptr %incdec.ptr124, align 4
  %incdec.ptr129 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 31
  %81 = ptrtoint ptr %incdec.ptr125 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 25, ptr %incdec.ptr125, align 4
  %incdec.ptr130 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 32
  %82 = ptrtoint ptr %incdec.ptr129 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub27, ptr %incdec.ptr129, align 4
  %incdec.ptr134 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 33
  %83 = ptrtoint ptr %incdec.ptr130 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 26, ptr %incdec.ptr130, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap2 to i32))
  %84 = load i32, ptr @elf_hwcap2, align 4
  %incdec.ptr135 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 34
  %85 = ptrtoint ptr %incdec.ptr134 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %incdec.ptr134, align 4
  %incdec.ptr139 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 35
  %86 = ptrtoint ptr %incdec.ptr135 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 31, ptr %incdec.ptr135, align 4
  %exec140 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 20
  %87 = ptrtoint ptr %exec140 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %exec140, align 4
  %89 = ptrtoint ptr %incdec.ptr139 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %incdec.ptr139, align 4
  %incdec.ptr141 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 36
  %incdec.ptr147 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 37
  %90 = ptrtoint ptr %incdec.ptr141 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 15, ptr %incdec.ptr141, align 4
  %incdec.ptr148 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 38
  %91 = ptrtoint ptr %incdec.ptr147 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub, ptr %incdec.ptr147, align 4
  %bf.load160 = load i8, ptr %secureexec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load160)
  %tobool163.not = icmp sgt i8 %bf.load160, -1
  br i1 %tobool163.not, label %if.end32.if.end170_crit_edge, label %do.body165

if.end32.if.end170_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end170

do.body165:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr166 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 39
  %92 = ptrtoint ptr %incdec.ptr148 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %incdec.ptr148, align 4
  %execfd = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 18
  %93 = ptrtoint ptr %execfd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %execfd, align 4
  %incdec.ptr167 = getelementptr %struct.anon.10, ptr %5, i32 0, i32 39, i32 40
  %95 = ptrtoint ptr %incdec.ptr166 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %incdec.ptr166, align 4
  br label %if.end170

if.end170:                                        ; preds = %do.body165, %if.end32.if.end170_crit_edge
  %elf_info.2 = phi ptr [ %incdec.ptr167, %do.body165 ], [ %incdec.ptr148, %if.end32.if.end170_crit_edge ]
  %add.ptr = getelementptr %struct.anon.10, ptr %5, i32 0, i32 40
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %elf_info.2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %96 = call ptr @memset(ptr %elf_info.2, i32 0, i32 %sub.ptr.sub)
  %add.ptr173 = getelementptr i32, ptr %elf_info.2, i32 2
  %sub.ptr.lhs.cast176 = ptrtoint ptr %add.ptr173 to i32
  %sub.ptr.rhs.cast177 = ptrtoint ptr %saved_auxv to i32
  %sub.ptr.sub178 = sub i32 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub178, 2
  %idx.neg = sub nsw i32 0, %sub.ptr.div
  %add.ptr179 = getelementptr i32, ptr %19, i32 %idx.neg
  %97 = add i32 %9, %11
  %idx.neg184 = sub i32 -3, %97
  %add.ptr185 = getelementptr i32, ptr %add.ptr179, i32 %idx.neg184
  %98 = ptrtoint ptr %add.ptr185 to i32
  %and186 = and i32 %98, -16
  %99 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and186, ptr %p2, align 4
  %100 = inttoptr i32 %and186 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@create_elf_tables, %if.then.i.i519)) #15
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i519], !srcloc !69

if.then.i.i519:                                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #15
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i519, %if.end170
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 15
  %call.i = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@create_elf_tables, %if.then.i4.i)) #15
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !69

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #15
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool190.not = icmp eq i32 %call.i, 0
  br i1 %tobool190.not, label %if.end192, label %mmap_read_lock_killable.exit.cleanup322_crit_edge

mmap_read_lock_killable.exit.cleanup322_crit_edge: ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end192:                                        ; preds = %mmap_read_lock_killable.exit
  %101 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %p2, align 4
  %call194 = call ptr @find_extend_vma(ptr noundef %5, i32 noundef %102) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@create_elf_tables, %if.then.i.i520)) #15
          to label %mmap_read_unlock.exit [label %if.then.i.i520], !srcloc !69

if.then.i.i520:                                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #15
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i520, %if.end192
  call void @up_read(ptr noundef %mmap_lock.i) #15
  %tobool195.not = icmp eq ptr %call194, null
  br i1 %tobool195.not, label %mmap_read_unlock.exit.cleanup322_crit_edge, label %if.end197

mmap_read_unlock.exit.cleanup322_crit_edge:       ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end197:                                        ; preds = %mmap_read_unlock.exit
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 324) #15
  %103 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 4
  %105 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !63
  %and.i = and i32 %105, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %106 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %100, i32 %9, i32 -1226833921) #15, !srcloc !70
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool205.not = icmp eq i32 %106, 0
  br i1 %tobool205.not, label %if.end207, label %if.end197.cleanup322_crit_edge

if.end197.cleanup322_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end207:                                        ; preds = %if.end197
  %arg_start = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 35
  %107 = ptrtoint ptr %arg_start to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arg_start, align 8
  %arg_end = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 36
  %109 = ptrtoint ptr %arg_end to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arg_end, align 4
  %sp.0540 = getelementptr i32, ptr %100, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp542 = icmp sgt i32 %9, 0
  br i1 %cmp542, label %if.end207.while.body_crit_edge, label %if.end207.while.end_crit_edge

if.end207.while.end_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end207.while.body_crit_edge:                   ; preds = %if.end207
  br label %while.body

while.cond:                                       ; preds = %if.end228
  %add235 = add i32 %call229, %p.2543
  %dec545 = add nsw i32 %dec545.in, -1
  %sp.0 = getelementptr i32, ptr %sp.0544, i32 1
  %cmp = icmp sgt i32 %dec545.in, 1
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end207.while.body_crit_edge
  %dec545.in = phi i32 [ %dec545, %while.cond.while.body_crit_edge ], [ %9, %if.end207.while.body_crit_edge ]
  %sp.0544 = phi ptr [ %sp.0, %while.cond.while.body_crit_edge ], [ %sp.0540, %if.end207.while.body_crit_edge ]
  %p.2543 = phi i32 [ %add235, %while.cond.while.body_crit_edge ], [ %108, %if.end207.while.body_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 331) #15
  %110 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i479 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i479 to ptr
  %cpu_domain.i.i480 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 4
  %112 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i480) #7, !srcloc !63
  %and.i481 = and i32 %112, -13
  %or.i482 = or i32 %and.i481, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i482) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %113 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sp.0544, i32 %p.2543, i32 -1226833921) #15, !srcloc !71
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool226.not = icmp eq i32 %113, 0
  br i1 %tobool226.not, label %if.end228, label %while.body.cleanup322_crit_edge

while.body.cleanup322_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end228:                                        ; preds = %while.body
  %114 = inttoptr i32 %p.2543 to ptr
  %call229 = call i32 @strnlen_user(ptr noundef %114, i32 noundef 131072) #15
  %115 = add i32 %call229, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %115)
  %116 = icmp ult i32 %115, -131072
  br i1 %116, label %if.end228.cleanup322_crit_edge, label %while.cond

if.end228.cleanup322_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end207.while.end_crit_edge
  %.pn.lcssa = phi ptr [ %100, %if.end207.while.end_crit_edge ], [ %sp.0544, %while.cond.while.end_crit_edge ]
  %p.2.lcssa = phi i32 [ %108, %if.end207.while.end_crit_edge ], [ %add235, %while.cond.while.end_crit_edge ]
  %sp.0.lcssa = phi ptr [ %sp.0540, %if.end207.while.end_crit_edge ], [ %sp.0, %while.cond.while.end_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 338) #15
  %117 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i483 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i483 to ptr
  %cpu_domain.i.i484 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 4
  %119 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i484) #7, !srcloc !63
  %and.i485 = and i32 %119, -13
  %or.i486 = or i32 %and.i485, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i486) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %120 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sp.0.lcssa, i32 0, i32 -1226833921) #15, !srcloc !72
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool255.not = icmp eq i32 %120, 0
  br i1 %tobool255.not, label %if.end257, label %while.end.cleanup322_crit_edge

while.end.cleanup322_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end257:                                        ; preds = %while.end
  %incdec.ptr242 = getelementptr i32, ptr %.pn.lcssa, i32 2
  %121 = ptrtoint ptr %arg_end to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %p.2.lcssa, ptr %arg_end, align 4
  %env_start = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 37
  %122 = ptrtoint ptr %env_start to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %p.2.lcssa, ptr %env_start, align 8
  %env_end = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 38
  %123 = ptrtoint ptr %env_end to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %p.2.lcssa, ptr %env_end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp261549 = icmp sgt i32 %11, 0
  br i1 %cmp261549, label %if.end257.while.body263_crit_edge, label %if.end257.while.end295_crit_edge

if.end257.while.end295_crit_edge:                 ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end295

if.end257.while.body263_crit_edge:                ; preds = %if.end257
  br label %while.body263

while.cond259:                                    ; preds = %if.end283
  %add291 = add i32 %call284, %p.4551
  %dec260552 = add nsw i32 %dec260552.in, -1
  %incdec.ptr268 = getelementptr i32, ptr %sp.1550, i32 1
  %cmp261 = icmp sgt i32 %dec260552.in, 1
  br i1 %cmp261, label %while.cond259.while.body263_crit_edge, label %while.cond259.while.end295_crit_edge

while.cond259.while.end295_crit_edge:             ; preds = %while.cond259
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end295

while.cond259.while.body263_crit_edge:            ; preds = %while.cond259
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body263

while.body263:                                    ; preds = %while.cond259.while.body263_crit_edge, %if.end257.while.body263_crit_edge
  %dec260552.in = phi i32 [ %dec260552, %while.cond259.while.body263_crit_edge ], [ %11, %if.end257.while.body263_crit_edge ]
  %p.4551 = phi i32 [ %add291, %while.cond259.while.body263_crit_edge ], [ %p.2.lcssa, %if.end257.while.body263_crit_edge ]
  %sp.1550 = phi ptr [ %incdec.ptr268, %while.cond259.while.body263_crit_edge ], [ %incdec.ptr242, %if.end257.while.body263_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 346) #15
  %124 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i487 = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i.i487 to ptr
  %cpu_domain.i.i488 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 4
  %126 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i488) #7, !srcloc !63
  %and.i489 = and i32 %126, -13
  %or.i490 = or i32 %and.i489, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i490) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %127 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sp.1550, i32 %p.4551, i32 -1226833921) #15, !srcloc !73
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %126) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool281.not = icmp eq i32 %127, 0
  br i1 %tobool281.not, label %if.end283, label %while.body263.cleanup322_crit_edge

while.body263.cleanup322_crit_edge:               ; preds = %while.body263
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end283:                                        ; preds = %while.body263
  %128 = inttoptr i32 %p.4551 to ptr
  %call284 = call i32 @strnlen_user(ptr noundef %128, i32 noundef 131072) #15
  %129 = add i32 %call284, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %129)
  %130 = icmp ult i32 %129, -131072
  br i1 %130, label %if.end283.cleanup322_crit_edge, label %while.cond259

if.end283.cleanup322_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

while.end295:                                     ; preds = %while.cond259.while.end295_crit_edge, %if.end257.while.end295_crit_edge
  %sp.1.lcssa = phi ptr [ %incdec.ptr242, %if.end257.while.end295_crit_edge ], [ %incdec.ptr268, %while.cond259.while.end295_crit_edge ]
  %p.4.lcssa = phi i32 [ %p.2.lcssa, %if.end257.while.end295_crit_edge ], [ %add291, %while.cond259.while.end295_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 353) #15
  %131 = call i32 @llvm.read_register.i32(metadata !46) #15
  %and.i.i.i491 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i491 to ptr
  %cpu_domain.i.i492 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 4
  %133 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i492) #7, !srcloc !63
  %and.i493 = and i32 %133, -13
  %or.i494 = or i32 %and.i493, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i494) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  %134 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sp.1.lcssa, i32 0, i32 -1226833921) #15, !srcloc !74
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %133) #15, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool312.not = icmp eq i32 %134, 0
  br i1 %tobool312.not, label %if.end314, label %while.end295.cleanup322_crit_edge

while.end295.cleanup322_crit_edge:                ; preds = %while.end295
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.end314:                                        ; preds = %while.end295
  %incdec.ptr299 = getelementptr i32, ptr %sp.1.lcssa, i32 1
  %135 = ptrtoint ptr %env_end to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %p.4.lcssa, ptr %env_end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub178)
  %cmp9.i.i501 = icmp slt i32 %sub.ptr.sub178, 0
  br i1 %cmp9.i.i501, label %land.rhs16.i.i504, label %if.then.i.i.i507

land.rhs16.i.i504:                                ; preds = %if.end314
  %.b71.i.i503 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i503, label %land.rhs16.i.i504.cleanup322_crit_edge, label %if.then27.i.i505, !prof !56

land.rhs16.i.i504.cleanup322_crit_edge:           ; preds = %land.rhs16.i.i504
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup322

if.then27.i.i505:                                 ; preds = %land.rhs16.i.i504
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %cleanup322

if.then.i.i.i507:                                 ; preds = %if.end314
  call void @__check_object_size(ptr noundef %saved_auxv, i32 noundef %sub.ptr.sub178, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #15
  %call.i.i508 = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i508, label %if.then.i.i.i507.copy_to_user.exit517_crit_edge, label %if.end.i.i512

if.then.i.i.i507.copy_to_user.exit517_crit_edge:  ; preds = %if.then.i.i.i507
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit517

if.end.i.i512:                                    ; preds = %if.then.i.i.i507
  %136 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %incdec.ptr299, i32 %sub.ptr.sub178, i32 -1226833920) #22, !srcloc !68
  %asmresult.i.i510 = extractvalue { i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i510)
  %cmp.i6.i511 = icmp eq i32 %asmresult.i.i510, 0
  br i1 %cmp.i6.i511, label %if.then2.i.i515, label %if.end.i.i512.copy_to_user.exit517_crit_edge

if.end.i.i512.copy_to_user.exit517_crit_edge:     ; preds = %if.end.i.i512
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit517

if.then2.i.i515:                                  ; preds = %if.end.i.i512
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i513 = call zeroext i1 @__kasan_check_read(ptr noundef %saved_auxv, i32 noundef %sub.ptr.sub178) #15
  %call.i12.i.i514 = call i32 @arm_copy_to_user(ptr noundef %incdec.ptr299, ptr noundef %saved_auxv, i32 noundef %sub.ptr.sub178) #15
  br label %copy_to_user.exit517

copy_to_user.exit517:                             ; preds = %if.then2.i.i515, %if.end.i.i512.copy_to_user.exit517_crit_edge, %if.then.i.i.i507.copy_to_user.exit517_crit_edge
  %n.addr.0.i516 = phi i32 [ %sub.ptr.sub178, %if.then.i.i.i507.copy_to_user.exit517_crit_edge ], [ %call.i12.i.i514, %if.then2.i.i515 ], [ %sub.ptr.sub178, %if.end.i.i512.copy_to_user.exit517_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i516)
  %tobool319.not = icmp eq i32 %n.addr.0.i516, 0
  %spec.select = select i1 %tobool319.not, i32 0, i32 -14
  br label %cleanup322

cleanup322:                                       ; preds = %copy_to_user.exit517, %if.then27.i.i505, %land.rhs16.i.i504.cleanup322_crit_edge, %while.end295.cleanup322_crit_edge, %if.end283.cleanup322_crit_edge, %while.body263.cleanup322_crit_edge, %while.end.cleanup322_crit_edge, %if.end228.cleanup322_crit_edge, %while.body.cleanup322_crit_edge, %if.end197.cleanup322_crit_edge, %mmap_read_unlock.exit.cleanup322_crit_edge, %mmap_read_lock_killable.exit.cleanup322_crit_edge, %copy_to_user.exit478.cleanup322_crit_edge, %if.end.i.i473.cleanup322_crit_edge, %if.end26.cleanup322_crit_edge, %copy_to_user.exit.cleanup322_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup322_crit_edge
  %retval.8 = phi i32 [ -14, %copy_to_user.exit.cleanup322_crit_edge ], [ -14, %copy_to_user.exit478.cleanup322_crit_edge ], [ -4, %mmap_read_lock_killable.exit.cleanup322_crit_edge ], [ -14, %mmap_read_unlock.exit.cleanup322_crit_edge ], [ -14, %if.end197.cleanup322_crit_edge ], [ -14, %while.end.cleanup322_crit_edge ], [ -14, %while.end295.cleanup322_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup322_crit_edge ], [ -14, %if.end26.cleanup322_crit_edge ], [ -14, %if.end.i.i473.cleanup322_crit_edge ], [ -14, %if.then27.i.i505 ], [ -14, %land.rhs16.i.i504.cleanup322_crit_edge ], [ %spec.select, %copy_to_user.exit517 ], [ -14, %while.body263.cleanup322_crit_edge ], [ -22, %if.end283.cleanup322_crit_edge ], [ -14, %while.body.cleanup322_crit_edge ], [ -22, %if.end228.cleanup322_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %k_rand_bytes) #15
  ret i32 %retval.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_randomize_brk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @finalize_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_brk_flags(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_extend_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_brk(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_vma_snapshot(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_note_info(ptr nocapture noundef readonly %info, ptr noundef %cprm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %psinfo = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 1
  %signote = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 2
  %auxv = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 3
  %data = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 4, i32 3
  %files = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 4
  %thread_notes = getelementptr inbounds %struct.elf_note_info, ptr %info, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %first.0.off0 = phi i1 [ true, %entry ], [ false, %do.cond.do.body_crit_edge ]
  %t.0 = phi ptr [ %1, %entry ], [ %11, %do.cond.do.body_crit_edge ]
  %notes = getelementptr inbounds %struct.elf_thread_core_info, ptr %t.0, i32 0, i32 3
  %call = tail call fastcc i32 @writenote(ptr noundef %notes, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup39_crit_edge, label %if.end

do.body.cleanup39_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

if.end:                                           ; preds = %do.body
  br i1 %first.0.off0, label %land.lhs.true, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call fastcc i32 @writenote(ptr noundef %psinfo, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup39_crit_edge, label %land.lhs.true7.critedge

land.lhs.true.cleanup39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

land.lhs.true7.critedge:                          ; preds = %land.lhs.true
  %call8 = tail call fastcc i32 @writenote(ptr noundef %signote, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true7.critedge.cleanup39_crit_edge, label %land.lhs.true13.critedge

land.lhs.true7.critedge.cleanup39_crit_edge:      ; preds = %land.lhs.true7.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

land.lhs.true13.critedge:                         ; preds = %land.lhs.true7.critedge
  %call14 = tail call fastcc i32 @writenote(ptr noundef %auxv, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.critedge.cleanup39_crit_edge, label %land.lhs.true19.critedge

land.lhs.true13.critedge.cleanup39_crit_edge:     ; preds = %land.lhs.true13.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

land.lhs.true19.critedge:                         ; preds = %land.lhs.true13.critedge
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %land.lhs.true19.critedge.if.end26_crit_edge, label %land.lhs.true21

land.lhs.true19.critedge.if.end26_crit_edge:      ; preds = %land.lhs.true19.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

land.lhs.true21:                                  ; preds = %land.lhs.true19.critedge
  %call23 = tail call fastcc i32 @writenote(ptr noundef %files, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true21.cleanup39_crit_edge, label %land.lhs.true21.if.end26_crit_edge

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

land.lhs.true21.cleanup39_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

if.end26:                                         ; preds = %land.lhs.true21.if.end26_crit_edge, %land.lhs.true19.critedge.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %4 = ptrtoint ptr %thread_notes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thread_notes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp72 = icmp sgt i32 %5, 1
  br i1 %cmp72, label %if.end26.for.body_crit_edge, label %if.end26.do.cond_crit_edge

if.end26.do.cond_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %i.073 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end26.for.body_crit_edge ]
  %data29 = getelementptr %struct.elf_thread_core_info, ptr %t.0, i32 0, i32 3, i32 %i.073, i32 3
  %6 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data29, align 4
  %tobool30.not = icmp eq ptr %7, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %land.lhs.true31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true31:                                  ; preds = %for.body
  %arrayidx28 = getelementptr %struct.elf_thread_core_info, ptr %t.0, i32 0, i32 3, i32 %i.073
  %call34 = tail call fastcc i32 @writenote(ptr noundef %arrayidx28, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true31.cleanup39_crit_edge, label %land.lhs.true31.for.inc_crit_edge

land.lhs.true31.for.inc_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true31.cleanup39_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

for.inc:                                          ; preds = %land.lhs.true31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %8 = ptrtoint ptr %thread_notes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thread_notes, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.cond_crit_edge

for.inc.do.cond_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.cond:                                          ; preds = %for.inc.do.cond_crit_edge, %if.end26.do.cond_crit_edge
  %10 = ptrtoint ptr %t.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t.0, align 4
  %tobool38.not = icmp eq ptr %11, null
  br i1 %tobool38.not, label %do.cond.cleanup39_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond.cleanup39_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

cleanup39:                                        ; preds = %do.cond.cleanup39_crit_edge, %land.lhs.true31.cleanup39_crit_edge, %land.lhs.true21.cleanup39_crit_edge, %land.lhs.true13.critedge.cleanup39_crit_edge, %land.lhs.true7.critedge.cleanup39_crit_edge, %land.lhs.true.cleanup39_crit_edge, %do.body.cleanup39_crit_edge
  %retval.2 = phi i32 [ 0, %land.lhs.true31.cleanup39_crit_edge ], [ 0, %land.lhs.true21.cleanup39_crit_edge ], [ 0, %land.lhs.true13.critedge.cleanup39_crit_edge ], [ 0, %land.lhs.true7.critedge.cleanup39_crit_edge ], [ 0, %land.lhs.true.cleanup39_crit_edge ], [ 0, %do.body.cleanup39_crit_edge ], [ 1, %do.cond.cleanup39_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_skip_to(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_user_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_user_regset_view(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regset_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regset_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @writenote(ptr nocapture noundef readonly %men, ptr noundef %cprm) unnamed_addr #2 align 64 {
entry:
  %en = alloca %struct.elf32_note, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %en) #15
  %0 = getelementptr inbounds %struct.elf32_note, ptr %en, i32 0, i32 1
  %1 = getelementptr inbounds %struct.elf32_note, ptr %en, i32 0, i32 2
  %2 = ptrtoint ptr %men to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %men, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #18
  %add = add i32 %call, 1
  %4 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %en, align 4
  %datasz = getelementptr inbounds %struct.memelfnote, ptr %men, i32 0, i32 2
  %5 = ptrtoint ptr %datasz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datasz, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %type = getelementptr inbounds %struct.memelfnote, ptr %men, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %call1 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef nonnull %en, i32 noundef 12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %11 = ptrtoint ptr %men to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %men, align 4
  %13 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %en, align 4
  %call4 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef %12, i32 noundef %14) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true6

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = call i32 @dump_align(ptr noundef %cprm, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.land.end_crit_edge, label %land.lhs.true9

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %data = getelementptr inbounds %struct.memelfnote, ptr %men, i32 0, i32 3
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %datasz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datasz, align 4
  %call11 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef %16, i32 noundef %18) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true9.land.end_crit_edge, label %land.rhs

land.lhs.true9.land.end_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = call i32 @dump_align(ptr noundef %cprm, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9.land.end_crit_edge, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %19 = phi i32 [ 0, %land.lhs.true9.land.end_crit_edge ], [ 0, %land.lhs.true6.land.end_crit_edge ], [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %en) #15
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_align(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_binfmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !33, !35, !36, !37, !39, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_binfmt_elf__274_2335_init_elf_binfmt1, !1, !"__initcall__kmod_binfmt_elf__274_2335_init_elf_binfmt1", i1 false, i1 false}
!1 = !{!"../fs/binfmt_elf.c", i32 2335, i32 1}
!2 = !{ptr @__exitcall_exit_elf_binfmt, !3, !"__exitcall_exit_elf_binfmt", i1 false, i1 false}
!3 = !{!"../fs/binfmt_elf.c", i32 2336, i32 1}
!4 = !{ptr @__UNIQUE_ID_file275, !5, !"__UNIQUE_ID_file275", i1 false, i1 false}
!5 = !{!"../fs/binfmt_elf.c", i32 2337, i32 1}
!6 = !{ptr @__UNIQUE_ID_license276, !5, !"__UNIQUE_ID_license276", i1 false, i1 false}
!7 = !{ptr @elf_format, !8, !"elf_format", i1 false, i1 false}
!8 = !{!"../fs/binfmt_elf.c", i32 100, i32 28}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/binfmt_elf.c", i32 848, i32 30}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/binfmt_elf.c", i32 396, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @elf_map._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @elf_map._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../fs/binfmt_elf.c", i32 191, i32 28}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/binfmt_elf.c", i32 1832, i32 27}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/binfmt_elf.c", i32 1803, i32 47}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../fs/binfmt_elf.c", i32 1532, i32 35}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../fs/binfmt_elf.c", i32 1581, i32 33}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/binfmt_elf.c", i32 1590, i32 37}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../fs/binfmt_elf.c", i32 1595, i32 9}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2148400833, i64 2148400859, i64 2148400888, i64 2148400922, i64 2148400953, i64 2148400976}
!59 = !{!"auto-init"}
!60 = !{i64 2149416992}
!61 = !{i64 2149417258}
!62 = !{i64 2152465450, i64 2152465475}
!63 = !{i64 4961005}
!64 = !{i64 4961202}
!65 = !{i64 2152446435}
!66 = !{i32 0, i32 33}
!67 = !{i64 2152462252, i64 2152462277}
!68 = !{i64 2152466131, i64 2152466156}
!69 = !{i64 2149014210, i64 2149014215, i64 2149014228, i64 2149014272, i64 2149014306, i64 2149014327}
!70 = !{i64 2154582711, i64 2154582991, i64 2154583325, i64 2154583659}
!71 = !{i64 2154591514, i64 2154591794, i64 2154592128, i64 2154592462}
!72 = !{i64 2154600438, i64 2154600718, i64 2154601052, i64 2154601386}
!73 = !{i64 2154609241, i64 2154609521, i64 2154609855, i64 2154610189}
!74 = !{i64 2154618165, i64 2154618445, i64 2154618779, i64 2154619113}
