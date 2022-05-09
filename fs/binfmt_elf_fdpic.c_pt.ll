; ModuleID = '/llk/IR_all_yes/fs/binfmt_elf_fdpic.c_pt.bc'
source_filename = "../fs/binfmt_elf_fdpic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.elf_fdpic_params = type { %struct.elf32_hdr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.pt_regs = type { [18 x i32] }
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
%struct.atomic_t = type { i32 }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.68 = type { %struct.callback_head }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.70 = type { ptr }
%struct.memelfnote = type { ptr, i32, i32, ptr }
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
%struct.elf_prpsinfo = type { i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, i32, [16 x i8], [80 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.core_vma_metadata = type { i32, i32, i32, i32 }
%struct.elf_thread_status = type { ptr, %struct.elf_prstatus_fdpic, %struct.user_fp, [2 x %struct.memelfnote], i32 }
%struct.elf_prstatus_fdpic = type { %struct.elf_prstatus_common, [18 x i32], i32, i32, i32 }
%struct.elf_prstatus_common = type { %struct.elf_siginfo, i16, i32, i32, i32, i32, i32, i32, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval }
%struct.elf_siginfo = type { i32, i32, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.user_fp = type <{ [8 x %struct.fp_reg], i64, [8 x i8], i32 }>
%struct.fp_reg = type <{ i64, i32 }>
%struct.coredump_params = type { ptr, ptr, ptr, i32, i32, i64, i64, i64 }
%struct.elf32_fdpic_loadmap = type { i16, i16, [0 x %struct.elf32_fdpic_loadseg] }
%struct.elf32_fdpic_loadseg = type { i32, i32, i32 }
%struct.dynamic = type { i32, %union.anon.73 }
%union.anon.73 = type { i32 }
%struct.anon.74 = type { i32, i32 }
%struct.anon.75 = type { i32, i32 }
%struct.anon.77 = type { i32, i32 }
%struct.anon.78 = type { i32, i32 }
%struct.anon.79 = type { i32, i32 }
%struct.anon.80 = type { i32, i32 }
%struct.anon.81 = type { i32, i32 }
%struct.anon.82 = type { i32, i32 }
%struct.anon.83 = type { i32, i32 }
%struct.anon.84 = type { i32, i32 }
%struct.anon.85 = type { i32, i32 }
%struct.anon.86 = type { i32, i32 }
%struct.anon.87 = type { i32, i32 }
%struct.anon.88 = type { i32, i32 }
%struct.anon.89 = type { i32, i32 }
%struct.anon.90 = type { i32, i32 }
%struct.anon.91 = type { i32, i32 }
%struct.anon.92 = type { i32, i32 }
%struct.anon.93 = type { i32, i32 }
%struct.anon.94 = type { i32, i32 }
%struct.task_cputime = type { i64, i64, i64 }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.elf32_note = type { i32, i32, i32 }

@__UNIQUE_ID_file249 = internal constant [42 x i8] c"binfmt_elf_fdpic.file=fs/binfmt_elf_fdpic\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [29 x i8] c"binfmt_elf_fdpic.license=GPL\00", section ".modinfo", align 1
@elf_fdpic_format = internal global { %struct.linux_binfmt, [36 x i8] } { %struct.linux_binfmt { %struct.list_head zeroinitializer, ptr null, ptr @load_elf_fdpic_binary, ptr null, ptr @elf_fdpic_core_dump, i32 4096 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_binfmt_elf_fdpic__251_101_init_elf_fdpic_binfmt1 = internal global ptr @init_elf_fdpic_binfmt, section ".initcall1.init", align 4
@__exitcall_exit_elf_fdpic_binfmt = internal global ptr @exit_elf_fdpic_binfmt, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"executable\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"interpreter\00", [20 x i8] zeroinitializer }, align 32
@load_elf_fdpic_binary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Unable to load interpreter\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"load_elf_fdpic_binary\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/binfmt_elf_fdpic.c\00", [42 x i8] zeroinitializer }, align 32
@load_elf_fdpic_binary._entry_ptr = internal global ptr @load_elf_fdpic_binary._entry, section ".printk_index", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@elf_fdpic_map_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ELF FDPIC %s with invalid DYNAMIC section (inode=%lu)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elf_fdpic_map_file\00", [45 x i8] zeroinitializer }, align 32
@elf_fdpic_map_file._entry_ptr = internal global ptr @elf_fdpic_map_file._entry, section ".printk_index", align 4
@elf_platform = external dso_local global [0 x i8], align 1
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CORE\00", [27 x i8] zeroinitializer }, align 32
@elf_fdpic_core_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 1646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014elf_core_dump: file->f_pos (%lld) != offset (%lld)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elf_fdpic_core_dump\00", [44 x i8] zeroinitializer }, align 32
@elf_fdpic_core_dump._entry_ptr = internal global ptr @elf_fdpic_core_dump._entry, section ".printk_index", align 4
@fill_prstatus.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fill_psinfo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RSDTZW\00", [25 x i8] zeroinitializer }, align 32
@fill_psinfo.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"elf_fdpic_format\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 81, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 386, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 392, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 394, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 914, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 230, i32 6 }
@___asan_gen_.55 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 214, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 174, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1536, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1644, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1296, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 695, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 723, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [25 x i8] c"../fs/binfmt_elf_fdpic.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1353, i32 37 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_exit_elf_fdpic_binfmt, ptr @__initcall__kmod_binfmt_elf_fdpic__251_101_init_elf_fdpic_binfmt1, ptr @elf_fdpic_core_dump._entry, ptr @elf_fdpic_core_dump._entry_ptr, ptr @elf_fdpic_map_file._entry, ptr @elf_fdpic_map_file._entry_ptr, ptr @exit_elf_fdpic_binfmt, ptr @load_elf_fdpic_binary._entry, ptr @load_elf_fdpic_binary._entry_ptr, ptr @elf_fdpic_format, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elf_fdpic_format to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_elf_fdpic_binary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elf_fdpic_map_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elf_fdpic_core_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_elf_fdpic_binfmt() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_binfmt(ptr noundef nonnull @elf_fdpic_format) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_elf_fdpic_binfmt() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_binfmt(ptr noundef nonnull @elf_fdpic_format, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_elf_fdpic_binary(ptr noundef %bprm) #2 align 64 {
entry:
  %pos.i494 = alloca i64, align 8
  %pos.i = alloca i64, align 8
  %exec_params = alloca %struct.elf_fdpic_params, align 4
  %interp_params = alloca %struct.elf_fdpic_params, align 4
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %exec_params) #13
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %interp_params) #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !58)
  %or = or i32 %0, 16383
  %sub = add nsw i32 %or, -7
  %1 = inttoptr i32 %sub to ptr
  %add.ptr = getelementptr %struct.pt_regs, ptr %1, i32 -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #13
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %pos, align 8, !annotation !68
  %3 = call ptr @memset(ptr %interp_params, i32 0, i32 92)
  %buf = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22
  %4 = getelementptr inbounds i8, ptr %exec_params, i32 52
  %5 = call ptr @memset(ptr %4, i32 0, i32 36)
  %6 = call ptr @memcpy(ptr %exec_params, ptr %buf, i32 52)
  %flags = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 10
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2147483584, ptr %flags, align 4
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %8 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file, align 4
  %10 = ptrtoint ptr %exec_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %lhsv = load i32, ptr %exec_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2135247942, i32 %lhsv)
  %.not = icmp eq i32 %lhsv, 2135247942
  br i1 %.not, label %if.end.i463, label %entry.if.end382_crit_edge

entry.if.end382_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382

if.end.i463:                                      ; preds = %entry
  %e_type.i = getelementptr inbounds %struct.elf32_hdr, ptr %exec_params, i32 0, i32 1
  %11 = ptrtoint ptr %e_type.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %e_type.i, align 4
  %13 = and i16 %12, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %switch.i = icmp eq i16 %13, 2
  br i1 %switch.i, label %if.end8.i465, label %if.end.i463.if.end382_crit_edge

if.end.i463.if.end382_crit_edge:                  ; preds = %if.end.i463
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382

if.end8.i465:                                     ; preds = %if.end.i463
  %call9.i464 = call i32 @elf_check_arch(ptr noundef nonnull %exec_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i464)
  %tobool.not.i = icmp eq i32 %call9.i464, 0
  br i1 %tobool.not.i, label %if.end8.i465.if.end382_crit_edge, label %is_elf.exit

if.end8.i465.if.end382_crit_edge:                 ; preds = %if.end8.i465
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382

is_elf.exit:                                      ; preds = %if.end8.i465
  %f_op.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_op.i, align 4
  %mmap.i = getelementptr inbounds %struct.file_operations, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmap.i, align 4
  %tobool12.not.i.not = icmp eq ptr %17, null
  br i1 %tobool12.not.i.not, label %is_elf.exit.if.end382_crit_edge, label %if.end

is_elf.exit.if.end382_crit_edge:                  ; preds = %is_elf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382

if.end:                                           ; preds = %is_elf.exit
  %arrayidx = getelementptr inbounds [16 x i8], ptr %exec_params, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %19)
  %cmp = icmp eq i8 %19, 65
  br i1 %cmp, label %if.end6, label %if.end.if.end382_crit_edge

if.end.if.end382_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382

if.end6:                                          ; preds = %if.end
  %20 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %file, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #13
  %e_phoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %exec_params, i32 0, i32 5
  %22 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %e_phoff.i, align 4
  %conv.i = zext i32 %23 to i64
  %24 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv.i, ptr %pos.i, align 8
  %e_phentsize.i = getelementptr inbounds %struct.elf32_hdr, ptr %exec_params, i32 0, i32 9
  %25 = ptrtoint ptr %e_phentsize.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %e_phentsize.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %26)
  %cmp.not.i466 = icmp eq i16 %26, 32
  br i1 %cmp.not.i466, label %if.end.i467, label %if.end6.elf_fdpic_fetch_phdrs.exit.thread_crit_edge

if.end6.elf_fdpic_fetch_phdrs.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %elf_fdpic_fetch_phdrs.exit.thread

if.end.i467:                                      ; preds = %if.end6
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %exec_params, i32 0, i32 10
  %27 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %e_phnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %28)
  %cmp7.i = icmp ugt i16 %28, 2048
  br i1 %cmp7.i, label %if.end.i467.elf_fdpic_fetch_phdrs.exit.thread_crit_edge, label %if.end10.i

if.end.i467.elf_fdpic_fetch_phdrs.exit.thread_crit_edge: ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #15
  br label %elf_fdpic_fetch_phdrs.exit.thread

if.end10.i:                                       ; preds = %if.end.i467
  %conv6.i = zext i16 %28 to i32
  %mul.i = shl nuw nsw i32 %conv6.i, 5
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #16
  %phdrs.i = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 1
  %29 = ptrtoint ptr %phdrs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %phdrs.i, align 4
  %tobool.not.i471 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i471, label %if.end10.i.elf_fdpic_fetch_phdrs.exit.thread_crit_edge, label %if.end16.i

if.end10.i.elf_fdpic_fetch_phdrs.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %elf_fdpic_fetch_phdrs.exit.thread

if.end16.i:                                       ; preds = %if.end10.i
  %call18.i = call i32 @kernel_read(ptr noundef %21, ptr noundef nonnull %call9.i.i, i32 noundef %mul.i, ptr noundef nonnull %pos.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %mul.i)
  %cmp19.not.i = icmp eq i32 %call18.i, %mul.i
  br i1 %cmp19.not.i, label %if.end26.i, label %if.then23.i, !prof !69

if.then23.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp24.i = icmp slt i32 %call18.i, 0
  %spec.select603 = select i1 %cmp24.i, i32 %call18.i, i32 -8
  br label %elf_fdpic_fetch_phdrs.exit.thread

if.end26.i:                                       ; preds = %if.end16.i
  %30 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %e_phnum.i, align 4
  %conv30.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp3171.not.i = icmp eq i16 %31, 0
  br i1 %cmp3171.not.i, label %if.end12.thread, label %for.body.preheader.i

if.end12.thread:                                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #13
  br label %for.end

for.body.preheader.i:                             ; preds = %if.end26.i
  %32 = ptrtoint ptr %phdrs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phdrs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %loop.073.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %phdr.072.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %34 = ptrtoint ptr %phdr.072.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %phdr.072.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1685382481, i32 %35)
  %cmp33.not.i = icmp eq i32 %35, 1685382481
  br i1 %cmp33.not.i, label %if.end36.i, label %for.inc.i

if.end36.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %p_flags.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.072.i, i32 0, i32 6
  %36 = ptrtoint ptr %p_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p_flags.i, align 4
  %and.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %..i472 = select i1 %tobool37.not.i, i32 32, i32 16
  %or40.i = or i32 %..i472, %39
  store i32 %or40.i, ptr %flags, align 4
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.072.i, i32 0, i32 5
  %40 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %p_memsz.i, align 4
  %stack_size.i = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 7
  %42 = ptrtoint ptr %stack_size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %stack_size.i, align 4
  br label %if.end12

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %loop.073.i, 1
  %incdec.ptr.i = getelementptr %struct.elf32_phdr, ptr %phdr.072.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv30.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end12_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

elf_fdpic_fetch_phdrs.exit.thread:                ; preds = %if.then23.i, %if.end10.i.elf_fdpic_fetch_phdrs.exit.thread_crit_edge, %if.end.i467.elf_fdpic_fetch_phdrs.exit.thread_crit_edge, %if.end6.elf_fdpic_fetch_phdrs.exit.thread_crit_edge
  %retval.0.i473.ph = phi i32 [ -12, %if.end10.i.elf_fdpic_fetch_phdrs.exit.thread_crit_edge ], [ -12, %if.end.i467.elf_fdpic_fetch_phdrs.exit.thread_crit_edge ], [ -12, %if.end6.elf_fdpic_fetch_phdrs.exit.thread_crit_edge ], [ %spec.select603, %if.then23.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #13
  br label %if.end382

if.end12:                                         ; preds = %for.inc.i.if.end12_crit_edge, %if.end36.i
  %43 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %.pr = load i16, ptr %e_phnum.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp15627.not = icmp eq i16 %.pr, 0
  br i1 %cmp15627.not, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %phdrs = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 1
  %44 = ptrtoint ptr %phdrs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phdrs, align 4
  %load_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %phdr.0631 = phi ptr [ %45, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0630 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %interpreter_name.0629 = phi ptr [ null, %for.body.lr.ph ], [ %interpreter_name.1, %for.inc.for.body_crit_edge ]
  %interpreter.0628 = phi ptr [ null, %for.body.lr.ph ], [ %interpreter.1, %for.inc.for.body_crit_edge ]
  %46 = ptrtoint ptr %phdr.0631 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phdr.0631, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %47, label %for.body.for.inc_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb82
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0631, i32 0, i32 4
  %49 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %p_filesz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %50)
  %cmp17 = icmp ugt i32 %50, 4096
  br i1 %cmp17, label %sw.bb.error_crit_edge, label %if.end20

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end20:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp22 = icmp ult i32 %50, 2
  br i1 %cmp22, label %if.end20.error_crit_edge, label %if.end8.i

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end8.i:                                        ; preds = %if.end20
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %50, i32 noundef 3264) #16
  %tobool28.not = icmp eq ptr %call9.i, null
  br i1 %tobool28.not, label %if.end8.i.error_crit_edge, label %if.end30

if.end8.i.error_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end30:                                         ; preds = %if.end8.i
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0631, i32 0, i32 1
  %51 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %p_offset, align 4
  %conv31 = zext i32 %52 to i64
  %53 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv31, ptr %pos, align 8
  %54 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %file, align 4
  %56 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %p_filesz, align 4
  %call34 = call i32 @kernel_read(ptr noundef %55, ptr noundef nonnull %call9.i, i32 noundef %57, ptr noundef nonnull %pos) #13
  %58 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %p_filesz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %59)
  %cmp36.not = icmp eq i32 %call34, %59
  br i1 %cmp36.not, label %if.end45, label %if.then40, !prof !69

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call34)
  %cmp41 = icmp sgt i32 %call34, -1
  %spec.select = select i1 %cmp41, i32 -8, i32 %call34
  br label %error

if.end45:                                         ; preds = %if.end30
  %sub47 = add i32 %call34, -1
  %arrayidx48 = getelementptr i8, ptr %call9.i, i32 %sub47
  %60 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp50.not = icmp eq i8 %61, 0
  br i1 %cmp50.not, label %do.end56, label %if.end45.error_crit_edge

if.end45.error_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

do.end56:                                         ; preds = %if.end45
  %call57 = call ptr @open_exec(ptr noundef nonnull %call9.i) #13
  %cmp.i474 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i474, label %if.end382.loopexit, label %if.end61

if.end61:                                         ; preds = %do.end56
  call void @would_dump(ptr noundef %bprm, ptr noundef %call57) #13
  %62 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %pos, align 8
  %call64 = call i32 @kernel_read(ptr noundef %call57, ptr noundef %buf, i32 noundef 256, ptr noundef nonnull %pos) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 256
  br i1 %cmp65.not, label %if.end78, label %if.then73, !prof !69

if.then73:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call64)
  %cmp74 = icmp sgt i32 %call64, -1
  %spec.select461 = select i1 %cmp74, i32 -8, i32 %call64
  br label %error

if.end78:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %63 = call ptr @memcpy(ptr %interp_params, ptr %buf, i32 52)
  br label %for.inc

sw.bb82:                                          ; preds = %for.body
  %64 = ptrtoint ptr %load_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %load_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp83 = icmp eq i32 %65, 0
  br i1 %cmp83, label %if.then85, label %sw.bb82.for.inc_crit_edge

sw.bb82.for.inc_crit_edge:                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then85:                                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #15
  %p_vaddr = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0631, i32 0, i32 2
  %66 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %p_vaddr, align 4
  %68 = ptrtoint ptr %load_addr to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %load_addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then85, %sw.bb82.for.inc_crit_edge, %if.end78, %for.body.for.inc_crit_edge
  %interpreter.1 = phi ptr [ %interpreter.0628, %for.body.for.inc_crit_edge ], [ %interpreter.0628, %if.then85 ], [ %interpreter.0628, %sw.bb82.for.inc_crit_edge ], [ %call57, %if.end78 ]
  %interpreter_name.1 = phi ptr [ %interpreter_name.0629, %for.body.for.inc_crit_edge ], [ %interpreter_name.0629, %if.then85 ], [ %interpreter_name.0629, %sw.bb82.for.inc_crit_edge ], [ %call9.i, %if.end78 ]
  %inc = add nuw nsw i32 %i.0630, 1
  %incdec.ptr = getelementptr %struct.elf32_phdr, ptr %phdr.0631, i32 1
  %69 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %e_phnum.i, align 4
  %conv14 = zext i16 %70 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge, %if.end12.thread
  %interpreter.0.lcssa = phi ptr [ null, %if.end12.for.end_crit_edge ], [ null, %if.end12.thread ], [ %interpreter.1, %for.inc.for.end_crit_edge ]
  %interpreter_name.0.lcssa = phi ptr [ null, %if.end12.for.end_crit_edge ], [ null, %if.end12.thread ], [ %interpreter_name.1, %for.inc.for.end_crit_edge ]
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %72)
  %cmp.i475 = icmp eq i8 %72, 65
  br i1 %cmp.i475, label %is_constdisp.exit, label %for.end.if.then91_crit_edge

for.end.if.then91_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then91

is_constdisp.exit:                                ; preds = %for.end
  %e_flags.i = getelementptr inbounds %struct.elf32_hdr, ptr %exec_params, i32 0, i32 7
  %73 = ptrtoint ptr %e_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %e_flags.i, align 4
  %75 = and i32 %74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool90.not = icmp eq i32 %75, 0
  br i1 %tobool90.not, label %is_constdisp.exit.if.end94_crit_edge, label %is_constdisp.exit.if.then91_crit_edge

is_constdisp.exit.if.then91_crit_edge:            ; preds = %is_constdisp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then91

is_constdisp.exit.if.end94_crit_edge:             ; preds = %is_constdisp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then91:                                        ; preds = %is_constdisp.exit.if.then91_crit_edge, %for.end.if.then91_crit_edge
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags, align 4
  %or93 = or i32 %77, 2
  store i32 %or93, ptr %flags, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %is_constdisp.exit.if.end94_crit_edge
  %tobool95 = icmp ne ptr %interpreter_name.0.lcssa, null
  br i1 %tobool95, label %if.then96, label %if.end94.if.end108_crit_edge

if.end94.if.end108_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

if.then96:                                        ; preds = %if.end94
  %78 = ptrtoint ptr %interp_params to i32
  call void @__asan_load4_noabort(i32 %78)
  %lhsv606 = load i32, ptr %interp_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2135247942, i32 %lhsv606)
  %.not607 = icmp eq i32 %lhsv606, 2135247942
  br i1 %.not607, label %if.end.i483, label %if.then96.error_crit_edge

if.then96.error_crit_edge:                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i483:                                      ; preds = %if.then96
  %e_type.i481 = getelementptr inbounds %struct.elf32_hdr, ptr %interp_params, i32 0, i32 1
  %79 = ptrtoint ptr %e_type.i481 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %e_type.i481, align 4
  %81 = and i16 %80, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %81)
  %switch.i482 = icmp eq i16 %81, 2
  br i1 %switch.i482, label %if.end8.i486, label %if.end.i483.error_crit_edge

if.end.i483.error_crit_edge:                      ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end8.i486:                                     ; preds = %if.end.i483
  %call9.i484 = call i32 @elf_check_arch(ptr noundef nonnull %interp_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i484)
  %tobool.not.i485 = icmp eq i32 %call9.i484, 0
  br i1 %tobool.not.i485, label %if.end8.i486.error_crit_edge, label %is_elf.exit493

if.end8.i486.error_crit_edge:                     ; preds = %if.end8.i486
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

is_elf.exit493:                                   ; preds = %if.end8.i486
  %f_op.i487 = getelementptr inbounds %struct.file, ptr %interpreter.0.lcssa, i32 0, i32 3
  %82 = ptrtoint ptr %f_op.i487 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %f_op.i487, align 4
  %mmap.i488 = getelementptr inbounds %struct.file_operations, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %mmap.i488 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmap.i488, align 4
  %tobool12.not.i489.not = icmp eq ptr %85, null
  br i1 %tobool12.not.i489.not, label %is_elf.exit493.error_crit_edge, label %if.end101

is_elf.exit493.error_crit_edge:                   ; preds = %is_elf.exit493
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end101:                                        ; preds = %is_elf.exit493
  %flags102 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 10
  %86 = ptrtoint ptr %flags102 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -2147483648, ptr %flags102, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i494) #13
  %e_phoff.i495 = getelementptr inbounds %struct.elf32_hdr, ptr %interp_params, i32 0, i32 5
  %87 = ptrtoint ptr %e_phoff.i495 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %e_phoff.i495, align 4
  %conv.i496 = zext i32 %88 to i64
  %89 = ptrtoint ptr %pos.i494 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv.i496, ptr %pos.i494, align 8
  %e_phentsize.i497 = getelementptr inbounds %struct.elf32_hdr, ptr %interp_params, i32 0, i32 9
  %90 = ptrtoint ptr %e_phentsize.i497 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %e_phentsize.i497, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %91)
  %cmp.not.i498 = icmp eq i16 %91, 32
  br i1 %cmp.not.i498, label %if.end.i501, label %if.end101.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge

if.end101.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge: ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %elf_fdpic_fetch_phdrs.exit568.thread

if.end.i501:                                      ; preds = %if.end101
  %e_phnum.i499 = getelementptr inbounds %struct.elf32_hdr, ptr %interp_params, i32 0, i32 10
  %92 = ptrtoint ptr %e_phnum.i499 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %e_phnum.i499, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %93)
  %cmp7.i500 = icmp ugt i16 %93, 2048
  br i1 %cmp7.i500, label %if.end.i501.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge, label %if.end10.i504

if.end.i501.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge: ; preds = %if.end.i501
  call void @__sanitizer_cov_trace_pc() #15
  br label %elf_fdpic_fetch_phdrs.exit568.thread

if.end10.i504:                                    ; preds = %if.end.i501
  %conv6.i502 = zext i16 %93 to i32
  %mul.i503 = shl nuw nsw i32 %conv6.i502, 5
  %call9.i.i532 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i503, i32 noundef 3264) #16
  %phdrs.i535 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 1
  %94 = ptrtoint ptr %phdrs.i535 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call9.i.i532, ptr %phdrs.i535, align 4
  %tobool.not.i536 = icmp eq ptr %call9.i.i532, null
  br i1 %tobool.not.i536, label %if.end10.i504.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge, label %if.end16.i542

if.end10.i504.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge: ; preds = %if.end10.i504
  call void @__sanitizer_cov_trace_pc() #15
  br label %elf_fdpic_fetch_phdrs.exit568.thread

if.end16.i542:                                    ; preds = %if.end10.i504
  %call18.i540 = call i32 @kernel_read(ptr noundef %interpreter.0.lcssa, ptr noundef nonnull %call9.i.i532, i32 noundef %mul.i503, ptr noundef nonnull %pos.i494) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i540, i32 %mul.i503)
  %cmp19.not.i541 = icmp eq i32 %call18.i540, %mul.i503
  br i1 %cmp19.not.i541, label %if.end26.i548, label %if.then23.i545, !prof !69

if.then23.i545:                                   ; preds = %if.end16.i542
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i540)
  %cmp24.i543 = icmp slt i32 %call18.i540, 0
  %spec.select605 = select i1 %cmp24.i543, i32 %call18.i540, i32 -8
  br label %elf_fdpic_fetch_phdrs.exit568.thread

if.end26.i548:                                    ; preds = %if.end16.i542
  %95 = ptrtoint ptr %e_phnum.i499 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %e_phnum.i499, align 4
  %conv30.i546 = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp3171.not.i547 = icmp eq i16 %96, 0
  br i1 %cmp3171.not.i547, label %if.end26.i548.elf_fdpic_fetch_phdrs.exit568_crit_edge, label %for.body.preheader.i549

if.end26.i548.elf_fdpic_fetch_phdrs.exit568_crit_edge: ; preds = %if.end26.i548
  call void @__sanitizer_cov_trace_pc() #15
  br label %elf_fdpic_fetch_phdrs.exit568

for.body.preheader.i549:                          ; preds = %if.end26.i548
  %97 = ptrtoint ptr %phdrs.i535 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %phdrs.i535, align 4
  br label %for.body.i553

for.body.i553:                                    ; preds = %for.inc.i566.for.body.i553_crit_edge, %for.body.preheader.i549
  %loop.073.i550 = phi i32 [ %inc.i563, %for.inc.i566.for.body.i553_crit_edge ], [ 0, %for.body.preheader.i549 ]
  %phdr.072.i551 = phi ptr [ %incdec.ptr.i564, %for.inc.i566.for.body.i553_crit_edge ], [ %98, %for.body.preheader.i549 ]
  %99 = ptrtoint ptr %phdr.072.i551 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %phdr.072.i551, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1685382481, i32 %100)
  %cmp33.not.i552 = icmp eq i32 %100, 1685382481
  br i1 %cmp33.not.i552, label %if.end36.i562, label %for.inc.i566

if.end36.i562:                                    ; preds = %for.body.i553
  call void @__sanitizer_cov_trace_pc() #15
  %p_flags.i554 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.072.i551, i32 0, i32 6
  %101 = ptrtoint ptr %p_flags.i554 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %p_flags.i554, align 4
  %and.i555 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i555)
  %tobool37.not.i556 = icmp eq i32 %and.i555, 0
  %103 = ptrtoint ptr %flags102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags102, align 4
  %..i558 = select i1 %tobool37.not.i556, i32 32, i32 16
  %or40.i559 = or i32 %..i558, %104
  store i32 %or40.i559, ptr %flags102, align 4
  %p_memsz.i560 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.072.i551, i32 0, i32 5
  %105 = ptrtoint ptr %p_memsz.i560 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %p_memsz.i560, align 4
  %stack_size.i561 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 7
  %107 = ptrtoint ptr %stack_size.i561 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %stack_size.i561, align 4
  br label %elf_fdpic_fetch_phdrs.exit568

for.inc.i566:                                     ; preds = %for.body.i553
  %inc.i563 = add nuw nsw i32 %loop.073.i550, 1
  %incdec.ptr.i564 = getelementptr %struct.elf32_phdr, ptr %phdr.072.i551, i32 1
  %exitcond.not.i565 = icmp eq i32 %inc.i563, %conv30.i546
  br i1 %exitcond.not.i565, label %for.inc.i566.elf_fdpic_fetch_phdrs.exit568_crit_edge, label %for.inc.i566.for.body.i553_crit_edge

for.inc.i566.for.body.i553_crit_edge:             ; preds = %for.inc.i566
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i553

for.inc.i566.elf_fdpic_fetch_phdrs.exit568_crit_edge: ; preds = %for.inc.i566
  call void @__sanitizer_cov_trace_pc() #15
  br label %elf_fdpic_fetch_phdrs.exit568

elf_fdpic_fetch_phdrs.exit568.thread:             ; preds = %if.then23.i545, %if.end10.i504.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge, %if.end.i501.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge, %if.end101.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge
  %retval.0.i567.ph = phi i32 [ -12, %if.end10.i504.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge ], [ -12, %if.end.i501.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge ], [ -12, %if.end101.elf_fdpic_fetch_phdrs.exit568.thread_crit_edge ], [ %spec.select605, %if.then23.i545 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i494) #13
  br label %error

elf_fdpic_fetch_phdrs.exit568:                    ; preds = %for.inc.i566.elf_fdpic_fetch_phdrs.exit568_crit_edge, %if.end36.i562, %if.end26.i548.elf_fdpic_fetch_phdrs.exit568_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i494) #13
  br label %if.end108

if.end108:                                        ; preds = %elf_fdpic_fetch_phdrs.exit568, %if.end94.if.end108_crit_edge
  %stack_size109 = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 7
  %108 = ptrtoint ptr %stack_size109 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %stack_size109, align 4
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 4
  %and = and i32 %111, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool111.not = icmp eq i32 %and, 0
  %and114 = lshr i32 %111, 5
  %and114.lobit = and i32 %and114, 1
  %executable_stack.0 = select i1 %tobool111.not, i32 %and114.lobit, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp120 = icmp eq i32 %109, 0
  br i1 %cmp120, label %if.then122, label %if.end108.if.end136_crit_edge

if.end108.if.end136_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

if.then122:                                       ; preds = %if.end108
  %flags124 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 10
  %112 = ptrtoint ptr %flags124 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags124, align 4
  %and125 = and i32 %113, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.else128, label %if.then122.if.end136_crit_edge

if.then122.if.end136_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

if.else128:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  %and130 = lshr i32 %113, 5
  %and130.lobit = and i32 %and130, 1
  br label %if.end136

if.end136:                                        ; preds = %if.else128, %if.then122.if.end136_crit_edge, %if.end108.if.end136_crit_edge
  %executable_stack.1 = phi i32 [ %executable_stack.0, %if.end108.if.end136_crit_edge ], [ 2, %if.then122.if.end136_crit_edge ], [ %and130.lobit, %if.else128 ]
  %arrayidx.i569 = getelementptr inbounds [16 x i8], ptr %interp_params, i32 0, i32 7
  %114 = ptrtoint ptr %arrayidx.i569 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i569, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %115)
  %cmp.i570 = icmp eq i8 %115, 65
  br i1 %cmp.i570, label %is_constdisp.exit576, label %if.end136.if.then144_crit_edge

if.end136.if.then144_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then144

is_constdisp.exit576:                             ; preds = %if.end136
  %e_flags.i571 = getelementptr inbounds %struct.elf32_hdr, ptr %interp_params, i32 0, i32 7
  %116 = ptrtoint ptr %e_flags.i571 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %e_flags.i571, align 4
  %118 = and i32 %117, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool143.not = icmp eq i32 %118, 0
  br i1 %tobool143.not, label %is_constdisp.exit576.if.end147_crit_edge, label %is_constdisp.exit576.if.then144_crit_edge

is_constdisp.exit576.if.then144_crit_edge:        ; preds = %is_constdisp.exit576
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then144

is_constdisp.exit576.if.end147_crit_edge:         ; preds = %is_constdisp.exit576
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then144:                                       ; preds = %is_constdisp.exit576.if.then144_crit_edge, %if.end136.if.then144_crit_edge
  %flags145 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 10
  %119 = ptrtoint ptr %flags145 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags145, align 4
  %or146 = or i32 %120, 2
  store i32 %or146, ptr %flags145, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %is_constdisp.exit576.if.end147_crit_edge
  %call148 = call i32 @begin_new_exec(ptr noundef %bprm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end147.error_crit_edge

if.end147.error_crit_edge:                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end151:                                        ; preds = %if.end147
  %121 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %122)
  %cmp156 = icmp eq i8 %122, 65
  %123 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i577 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i577 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 62
  %. = select i1 %cmp156, i32 524288, i32 0
  %127 = ptrtoint ptr %personality to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %., ptr %personality, align 32
  %call165 = call i32 @arm_elf_read_implies_exec(i32 noundef %executable_stack.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end151.if.end172_crit_edge, label %if.then167

if.end151.if.end172_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end172

if.then167:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  %128 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i579 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i579 to ptr
  %task169 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %task169 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task169, align 8
  %personality170 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 62
  %132 = ptrtoint ptr %personality170 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %personality170, align 32
  %or171 = or i32 %133, 4194304
  store i32 %or171, ptr %personality170, align 32
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %if.end151.if.end172_crit_edge
  call void @setup_new_exec(ptr noundef %bprm) #13
  call void @set_binfmt(ptr noundef nonnull @elf_fdpic_format) #13
  %134 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i580 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i580 to ptr
  %task174 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task174, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 53
  %138 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mm, align 8
  %start_code = getelementptr inbounds %struct.anon.10, ptr %139, i32 0, i32 28
  %140 = ptrtoint ptr %start_code to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %start_code, align 4
  %141 = load ptr, ptr %task174, align 8
  %mm177 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 53
  %142 = ptrtoint ptr %mm177 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mm177, align 8
  %end_code = getelementptr inbounds %struct.anon.10, ptr %143, i32 0, i32 29
  %144 = ptrtoint ptr %end_code to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %end_code, align 8
  %145 = load ptr, ptr %task174, align 8
  %mm180 = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 53
  %146 = ptrtoint ptr %mm180 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mm180, align 8
  %start_stack = getelementptr inbounds %struct.anon.10, ptr %147, i32 0, i32 34
  %148 = ptrtoint ptr %start_stack to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %start_stack, align 4
  %149 = load ptr, ptr %task174, align 8
  %mm183 = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 53
  %150 = ptrtoint ptr %mm183 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mm183, align 8
  %start_data = getelementptr inbounds %struct.anon.10, ptr %151, i32 0, i32 30
  %152 = ptrtoint ptr %start_data to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %start_data, align 4
  %153 = load ptr, ptr %task174, align 8
  %mm186 = getelementptr inbounds %struct.task_struct, ptr %153, i32 0, i32 53
  %154 = ptrtoint ptr %mm186 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mm186, align 8
  %end_data = getelementptr inbounds %struct.anon.10, ptr %155, i32 0, i32 31
  %156 = ptrtoint ptr %end_data to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %end_data, align 8
  %157 = load ptr, ptr %task174, align 8
  %mm189 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 53
  %158 = ptrtoint ptr %mm189 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mm189, align 8
  %exec_fdpic_loadmap = getelementptr inbounds %struct.anon.10, ptr %159, i32 0, i32 42, i32 4
  %160 = ptrtoint ptr %exec_fdpic_loadmap to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %exec_fdpic_loadmap, align 4
  %161 = load ptr, ptr %task174, align 8
  %mm192 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 53
  %162 = ptrtoint ptr %mm192 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mm192, align 8
  %interp_fdpic_loadmap = getelementptr inbounds %struct.anon.10, ptr %163, i32 0, i32 42, i32 5
  %164 = ptrtoint ptr %interp_fdpic_loadmap to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %interp_fdpic_loadmap, align 8
  %165 = load ptr, ptr %task174, align 8
  %mm196 = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 53
  %166 = ptrtoint ptr %mm196 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mm196, align 8
  %start_stack197 = getelementptr inbounds %struct.anon.10, ptr %167, i32 0, i32 34
  %start_brk = getelementptr inbounds %struct.anon.10, ptr %167, i32 0, i32 32
  call void @elf_fdpic_arch_lay_out_mm(ptr noundef nonnull %exec_params, ptr noundef nonnull %interp_params, ptr noundef %start_stack197, ptr noundef %start_brk) #13
  %168 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task174, align 8
  %mm203 = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 53
  %170 = ptrtoint ptr %mm203 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mm203, align 8
  %start_stack204 = getelementptr inbounds %struct.anon.10, ptr %171, i32 0, i32 34
  %172 = ptrtoint ptr %start_stack204 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %start_stack204, align 4
  %call205 = call i32 @setup_arg_pages(ptr noundef %bprm, i32 noundef %173, i32 noundef %executable_stack.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %if.end172.error_crit_edge, label %if.end209

if.end172.error_crit_edge:                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end209:                                        ; preds = %if.end172
  %lnot.ext214 = zext i1 %tobool95 to i32
  %call215 = call i32 @arch_setup_additional_pages(ptr noundef %bprm, i32 noundef %lnot.ext214) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %cmp216 = icmp slt i32 %call215, 0
  br i1 %cmp216, label %if.end209.error_crit_edge, label %if.end219

if.end209.error_crit_edge:                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end219:                                        ; preds = %if.end209
  %174 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %file, align 4
  %176 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %task174, align 8
  %mm223 = getelementptr inbounds %struct.task_struct, ptr %177, i32 0, i32 53
  %178 = ptrtoint ptr %mm223 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mm223, align 8
  %call224 = call fastcc i32 @elf_fdpic_map_file(ptr noundef nonnull %exec_params, ptr noundef %175, ptr noundef %179, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp225 = icmp slt i32 %call224, 0
  br i1 %cmp225, label %if.end219.error_crit_edge, label %if.end228

if.end219.error_crit_edge:                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end228:                                        ; preds = %if.end219
  br i1 %tobool95, label %if.then230, label %if.end228.if.end244_crit_edge

if.end228.if.end244_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end244

if.then230:                                       ; preds = %if.end228
  %180 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %task174, align 8
  %mm233 = getelementptr inbounds %struct.task_struct, ptr %181, i32 0, i32 53
  %182 = ptrtoint ptr %mm233 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mm233, align 8
  %call234 = call fastcc i32 @elf_fdpic_map_file(ptr noundef nonnull %interp_params, ptr noundef %interpreter.0.lcssa, ptr noundef %183, ptr noundef nonnull @.str.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %do.end240, label %if.end243

do.end240:                                        ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #15
  %call242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #17
  br label %error

if.end243:                                        ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @allow_write_access(ptr noundef %interpreter.0.lcssa)
  call void @fput(ptr noundef %interpreter.0.lcssa) #13
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.end228.if.end244_crit_edge
  %interpreter.2 = phi ptr [ null, %if.end243 ], [ %interpreter.0.lcssa, %if.end228.if.end244_crit_edge ]
  %retval1.0 = phi i32 [ 0, %if.end243 ], [ %call224, %if.end228.if.end244_crit_edge ]
  %184 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %task174, align 8
  %mm247 = getelementptr inbounds %struct.task_struct, ptr %185, i32 0, i32 53
  %186 = ptrtoint ptr %mm247 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mm247, align 8
  %start_brk248 = getelementptr inbounds %struct.anon.10, ptr %187, i32 0, i32 32
  %188 = ptrtoint ptr %start_brk248 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %start_brk248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool249.not = icmp eq i32 %189, 0
  br i1 %tobool249.not, label %if.then250, label %if.end244.if.end259_crit_edge

if.end244.if.end259_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end259

if.then250:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #15
  %end_data254 = getelementptr inbounds %struct.anon.10, ptr %187, i32 0, i32 31
  %190 = ptrtoint ptr %end_data254 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %end_data254, align 8
  %192 = ptrtoint ptr %start_brk248 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %start_brk248, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then250, %if.end244.if.end259_crit_edge
  %193 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %task174, align 8
  %mm262 = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 53
  %195 = ptrtoint ptr %mm262 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mm262, align 8
  %start_brk263 = getelementptr inbounds %struct.anon.10, ptr %196, i32 0, i32 32
  %197 = ptrtoint ptr %start_brk263 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %start_brk263, align 4
  %add = add i32 %198, 4095
  %and264 = and i32 %add, -4096
  store i32 %and264, ptr %start_brk263, align 4
  %199 = load ptr, ptr %task174, align 8
  %mm271 = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 53
  %200 = ptrtoint ptr %mm271 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mm271, align 8
  %brk = getelementptr inbounds %struct.anon.10, ptr %201, i32 0, i32 33
  %202 = ptrtoint ptr %brk to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %and264, ptr %brk, align 8
  %203 = load ptr, ptr %task174, align 8
  %mm274 = getelementptr inbounds %struct.task_struct, ptr %203, i32 0, i32 53
  %204 = ptrtoint ptr %mm274 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mm274, align 8
  %call275 = call fastcc i32 @create_elf_fdpic_tables(ptr noundef %bprm, ptr noundef %205, ptr noundef nonnull %exec_params, ptr noundef nonnull %interp_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %cmp276 = icmp slt i32 %call275, 0
  br i1 %cmp276, label %if.end259.error_crit_edge, label %do.end300

if.end259.error_crit_edge:                        ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

do.end300:                                        ; preds = %if.end259
  %dynamic_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 8
  %206 = ptrtoint ptr %dynamic_addr to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %dynamic_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool301.not = icmp eq i32 %207, 0
  br i1 %tobool301.not, label %cond.false, label %do.end300.cond.end_crit_edge

do.end300.cond.end_crit_edge:                     ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #15
  %dynamic_addr302 = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 8
  %208 = ptrtoint ptr %dynamic_addr302 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %dynamic_addr302, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end300.cond.end_crit_edge
  %cond = phi i32 [ %209, %cond.false ], [ %207, %do.end300.cond.end_crit_edge ]
  %map_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 5
  %210 = ptrtoint ptr %map_addr to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %map_addr, align 4
  %arrayidx304 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 7
  %212 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %arrayidx304, align 4
  %map_addr305 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 5
  %213 = ptrtoint ptr %map_addr305 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %map_addr305, align 4
  %arrayidx307 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 8
  %215 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %arrayidx307, align 16
  %arrayidx309 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 9
  %216 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %cond, ptr %arrayidx309, align 4
  call void @finalize_exec(ptr noundef %bprm) #13
  %entry_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 6
  %217 = ptrtoint ptr %entry_addr to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %entry_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool312.not = icmp eq i32 %218, 0
  br i1 %tobool312.not, label %cond.false314, label %cond.end.cond.end316_crit_edge

cond.end.cond.end316_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end316

cond.false314:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %entry_addr315 = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 6
  %219 = ptrtoint ptr %entry_addr315 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %entry_addr315, align 4
  br label %cond.end316

cond.end316:                                      ; preds = %cond.false314, %cond.end.cond.end316_crit_edge
  %cond317 = phi i32 [ %220, %cond.false314 ], [ %218, %cond.end.cond.end316_crit_edge ]
  %221 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx304, align 4
  %223 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx307, align 16
  %225 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx309, align 4
  %227 = call ptr @memset(ptr %add.ptr, i32 0, i32 72)
  %228 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %task174, align 8
  %personality328 = getelementptr inbounds %struct.task_struct, ptr %229, i32 0, i32 62
  %230 = ptrtoint ptr %personality328 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %personality328, align 32
  %and329 = and i32 %231, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  br i1 %tobool330.not, label %cond.end316.if.end345_crit_edge, label %if.then331

cond.end316.if.end345_crit_edge:                  ; preds = %cond.end316
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end345

if.then331:                                       ; preds = %cond.end316
  call void @__sanitizer_cov_trace_pc() #15
  %232 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %222, ptr %arrayidx304, align 4
  %233 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %224, ptr %arrayidx307, align 16
  %234 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %226, ptr %arrayidx309, align 4
  %235 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %task174, align 8
  %mm340 = getelementptr inbounds %struct.task_struct, ptr %236, i32 0, i32 53
  %237 = ptrtoint ptr %mm340 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mm340, align 8
  %start_data341 = getelementptr inbounds %struct.anon.10, ptr %238, i32 0, i32 30
  %239 = ptrtoint ptr %start_data341 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %start_data341, align 4
  %arrayidx343 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 10
  %241 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %arrayidx343, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.then331, %cond.end316.if.end345_crit_edge
  %242 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %task174, align 8
  %personality348 = getelementptr inbounds %struct.task_struct, ptr %243, i32 0, i32 62
  %244 = ptrtoint ptr %personality348 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %personality348, align 32
  %and349 = lshr i32 %245, 19
  %246 = and i32 %and349, 16
  %247 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 16
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %246, ptr %247, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %249 = load i32, ptr @elf_hwcap, align 4
  %and358 = and i32 %249, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  %and360 = and i32 %cond317, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360)
  %tobool361.not = icmp eq i32 %and360, 0
  %or.cond = select i1 %tobool359.not, i1 true, i1 %tobool361.not
  br i1 %or.cond, label %if.end345.if.end366_crit_edge, label %if.then362

if.end345.if.end366_crit_edge:                    ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end366

if.then362:                                       ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #15
  %250 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %247, align 16
  %or365 = or i32 %251, 32
  store i32 %or365, ptr %247, align 16
  br label %if.end366

if.end366:                                        ; preds = %if.then362, %if.end345.if.end366_crit_edge
  %252 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %247, align 16
  %or369 = or i32 %253, 512
  store i32 %or369, ptr %247, align 16
  %and370 = and i32 %cond317, -2
  %arrayidx372 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 15
  %254 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %and370, ptr %arrayidx372, align 4
  %255 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %task174, align 8
  %mm376 = getelementptr inbounds %struct.task_struct, ptr %256, i32 0, i32 53
  %257 = ptrtoint ptr %mm376 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %mm376, align 8
  %start_stack377 = getelementptr inbounds %struct.anon.10, ptr %258, i32 0, i32 34
  %259 = ptrtoint ptr %start_stack377 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %start_stack377, align 4
  %arrayidx379 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 13
  %261 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %arrayidx379, align 4
  br label %error

error:                                            ; preds = %if.end366, %if.end259.error_crit_edge, %do.end240, %if.end219.error_crit_edge, %if.end209.error_crit_edge, %if.end172.error_crit_edge, %if.end147.error_crit_edge, %elf_fdpic_fetch_phdrs.exit568.thread, %is_elf.exit493.error_crit_edge, %if.end8.i486.error_crit_edge, %if.end.i483.error_crit_edge, %if.then96.error_crit_edge, %if.then73, %if.end45.error_crit_edge, %if.then40, %if.end8.i.error_crit_edge, %if.end20.error_crit_edge, %sw.bb.error_crit_edge
  %interpreter.3 = phi ptr [ %interpreter.0.lcssa, %if.end147.error_crit_edge ], [ %interpreter.0.lcssa, %if.end172.error_crit_edge ], [ %interpreter.0.lcssa, %if.end209.error_crit_edge ], [ %interpreter.0.lcssa, %if.end219.error_crit_edge ], [ %interpreter.0.lcssa, %do.end240 ], [ %interpreter.2, %if.end259.error_crit_edge ], [ %interpreter.2, %if.end366 ], [ %interpreter.0.lcssa, %is_elf.exit493.error_crit_edge ], [ %interpreter.0628, %if.then40 ], [ %call57, %if.then73 ], [ %interpreter.0.lcssa, %elf_fdpic_fetch_phdrs.exit568.thread ], [ %interpreter.0.lcssa, %if.then96.error_crit_edge ], [ %interpreter.0.lcssa, %if.end.i483.error_crit_edge ], [ %interpreter.0.lcssa, %if.end8.i486.error_crit_edge ], [ %interpreter.0628, %sw.bb.error_crit_edge ], [ %interpreter.0628, %if.end20.error_crit_edge ], [ %interpreter.0628, %if.end8.i.error_crit_edge ], [ %interpreter.0628, %if.end45.error_crit_edge ]
  %interpreter_name.2 = phi ptr [ %interpreter_name.0.lcssa, %if.end147.error_crit_edge ], [ %interpreter_name.0.lcssa, %if.end172.error_crit_edge ], [ %interpreter_name.0.lcssa, %if.end209.error_crit_edge ], [ %interpreter_name.0.lcssa, %if.end219.error_crit_edge ], [ %interpreter_name.0.lcssa, %do.end240 ], [ %interpreter_name.0.lcssa, %if.end259.error_crit_edge ], [ %interpreter_name.0.lcssa, %if.end366 ], [ %interpreter_name.0.lcssa, %is_elf.exit493.error_crit_edge ], [ %call9.i, %if.then40 ], [ %call9.i, %if.then73 ], [ %interpreter_name.0.lcssa, %elf_fdpic_fetch_phdrs.exit568.thread ], [ %interpreter_name.0.lcssa, %if.then96.error_crit_edge ], [ %interpreter_name.0.lcssa, %if.end.i483.error_crit_edge ], [ %interpreter_name.0.lcssa, %if.end8.i486.error_crit_edge ], [ %call9.i, %if.end45.error_crit_edge ], [ null, %if.end8.i.error_crit_edge ], [ %interpreter_name.0629, %if.end20.error_crit_edge ], [ %interpreter_name.0629, %sw.bb.error_crit_edge ]
  %retval1.1 = phi i32 [ %call148, %if.end147.error_crit_edge ], [ %call205, %if.end172.error_crit_edge ], [ %call215, %if.end209.error_crit_edge ], [ %call224, %if.end219.error_crit_edge ], [ %call234, %do.end240 ], [ %retval1.0, %if.end259.error_crit_edge ], [ 0, %if.end366 ], [ -80, %is_elf.exit493.error_crit_edge ], [ %spec.select, %if.then40 ], [ %spec.select461, %if.then73 ], [ %retval.0.i567.ph, %elf_fdpic_fetch_phdrs.exit568.thread ], [ -80, %if.then96.error_crit_edge ], [ -80, %if.end.i483.error_crit_edge ], [ -80, %if.end8.i486.error_crit_edge ], [ -2, %if.end45.error_crit_edge ], [ -2, %if.end8.i.error_crit_edge ], [ -2, %if.end20.error_crit_edge ], [ -12, %sw.bb.error_crit_edge ]
  %tobool380.not = icmp eq ptr %interpreter.3, null
  br i1 %tobool380.not, label %error.if.end382_crit_edge, label %allow_write_access.exit

error.if.end382_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end382

allow_write_access.exit:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %interpreter.3, i32 0, i32 2
  %262 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %f_inode.i.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %263, i32 0, i32 42
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #13
  %264 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #13, !srcloc !70
  call void @fput(ptr noundef nonnull %interpreter.3) #13
  br label %if.end382

if.end382.loopexit:                               ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #15
  %265 = ptrtoint ptr %call57 to i32
  br label %if.end382

if.end382:                                        ; preds = %if.end382.loopexit, %allow_write_access.exit, %error.if.end382_crit_edge, %elf_fdpic_fetch_phdrs.exit.thread, %if.end.if.end382_crit_edge, %is_elf.exit.if.end382_crit_edge, %if.end8.i465.if.end382_crit_edge, %if.end.i463.if.end382_crit_edge, %entry.if.end382_crit_edge
  %retval1.1602 = phi i32 [ %retval1.1, %allow_write_access.exit ], [ %retval1.1, %error.if.end382_crit_edge ], [ %retval.0.i473.ph, %elf_fdpic_fetch_phdrs.exit.thread ], [ -8, %is_elf.exit.if.end382_crit_edge ], [ -8, %if.end.if.end382_crit_edge ], [ -8, %entry.if.end382_crit_edge ], [ -8, %if.end.i463.if.end382_crit_edge ], [ -8, %if.end8.i465.if.end382_crit_edge ], [ %265, %if.end382.loopexit ]
  %interpreter_name.2601 = phi ptr [ %interpreter_name.2, %allow_write_access.exit ], [ %interpreter_name.2, %error.if.end382_crit_edge ], [ null, %elf_fdpic_fetch_phdrs.exit.thread ], [ null, %is_elf.exit.if.end382_crit_edge ], [ null, %if.end.if.end382_crit_edge ], [ null, %entry.if.end382_crit_edge ], [ null, %if.end.i463.if.end382_crit_edge ], [ null, %if.end8.i465.if.end382_crit_edge ], [ %call9.i, %if.end382.loopexit ]
  call void @kfree(ptr noundef %interpreter_name.2601) #13
  %phdrs383 = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 1
  %266 = ptrtoint ptr %phdrs383 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %phdrs383, align 4
  call void @kfree(ptr noundef %267) #13
  %loadmap = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 2
  %268 = ptrtoint ptr %loadmap to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %loadmap, align 4
  call void @kfree(ptr noundef %269) #13
  %phdrs384 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 1
  %270 = ptrtoint ptr %phdrs384 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %phdrs384, align 4
  call void @kfree(ptr noundef %271) #13
  %loadmap385 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 2
  %272 = ptrtoint ptr %loadmap385 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %loadmap385, align 4
  call void @kfree(ptr noundef %273) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #13
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %interp_params) #13
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %exec_params) #13
  ret i32 %retval1.1602
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elf_fdpic_core_dump(ptr noundef %cprm) #2 align 64 {
entry:
  %vma_count = alloca i32, align 4
  %psinfo_note = alloca %struct.memelfnote, align 4
  %auxv_note = alloca %struct.memelfnote, align 4
  %thread_status_size = alloca i32, align 4
  %vma_meta = alloca ptr, align 4
  %vma_data_size = alloca i32, align 4
  %phdr = alloca %struct.elf32_phdr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma_count) #13
  %0 = ptrtoint ptr %vma_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vma_count, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %psinfo_note) #13
  %1 = getelementptr inbounds %struct.memelfnote, ptr %psinfo_note, i32 0, i32 1
  %2 = getelementptr inbounds %struct.memelfnote, ptr %psinfo_note, i32 0, i32 2
  %3 = getelementptr inbounds %struct.memelfnote, ptr %psinfo_note, i32 0, i32 3
  %4 = call ptr @memset(ptr %psinfo_note, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %auxv_note) #13
  %5 = getelementptr inbounds %struct.memelfnote, ptr %auxv_note, i32 0, i32 1
  %6 = getelementptr inbounds %struct.memelfnote, ptr %auxv_note, i32 0, i32 2
  %7 = getelementptr inbounds %struct.memelfnote, ptr %auxv_note, i32 0, i32 3
  %8 = call ptr @memset(ptr %auxv_note, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thread_status_size) #13
  %9 = ptrtoint ptr %thread_status_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %thread_status_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma_meta) #13
  %10 = ptrtoint ptr %vma_meta to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vma_meta, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma_data_size) #13
  %11 = ptrtoint ptr %vma_data_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %vma_data_size, align 4, !annotation !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 52) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.while.end_crit_edge, label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i313 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 124) #18
  %tobool2.not = icmp eq ptr %call7.i313, null
  br i1 %tobool2.not, label %if.end.while.end_crit_edge, label %if.end4

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @dump_vma_snapshot(ptr noundef %cprm, ptr noundef nonnull %vma_count, ptr noundef nonnull %vma_meta, ptr noundef nonnull %vma_data_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end8:                                          ; preds = %if.end4
  %14 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 111
  %18 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal, align 16
  %core_state = getelementptr inbounds %struct.signal_struct, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %core_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_state, align 4
  %next = getelementptr inbounds %struct.core_state, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %22)
  %ct.0337 = load ptr, ptr %next, align 4
  %tobool10.not338 = icmp eq ptr %ct.0337, null
  br i1 %tobool10.not338, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.end8.for.body_crit_edge
  %ct.0340 = phi ptr [ %ct.0, %if.end15.for.body_crit_edge ], [ %ct.0337, %if.end8.for.body_crit_edge ]
  %thread_list.0339 = phi ptr [ %call12, %if.end15.for.body_crit_edge ], [ null, %if.end8.for.body_crit_edge ]
  %23 = ptrtoint ptr %cprm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cprm, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %ct.0340 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ct.0340, align 4
  %call12 = call fastcc ptr @elf_dump_thread_status(i32 noundef %26, ptr noundef %28, ptr noundef nonnull %thread_status_size)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.body.end_coredump_crit_edge, label %if.end15

for.body.end_coredump_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end15:                                         ; preds = %for.body
  %29 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %thread_list.0339, ptr %call12, align 4
  %next17 = getelementptr inbounds %struct.core_thread, ptr %ct.0340, i32 0, i32 1
  %30 = ptrtoint ptr %next17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %ct.0 = load ptr, ptr %next17, align 4
  %tobool10.not = icmp eq ptr %ct.0, null
  br i1 %tobool10.not, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %if.end8.for.end_crit_edge
  %thread_list.0.lcssa = phi ptr [ null, %if.end8.for.end_crit_edge ], [ %call12, %if.end15.for.end_crit_edge ]
  %31 = ptrtoint ptr %cprm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cprm, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %call22 = call fastcc ptr @elf_dump_thread_status(i32 noundef %34, ptr noundef %36, ptr noundef nonnull %thread_status_size)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %for.end.end_coredump_crit_edge, label %if.end25

for.end.end_coredump_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end25:                                         ; preds = %for.end
  %37 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %thread_list.0.lcssa, ptr %call22, align 4
  %38 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vma_count, align 4
  %inc = add i32 %39, 1
  %40 = call i32 @llvm.smin.i32(i32 %inc, i32 65535)
  %conv30 = and i32 %40, 65535
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2135247942, ptr %call7.i, align 8
  %arrayidx.i = getelementptr [16 x i8], ptr %call7.i, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr [16 x i8], ptr %call7.i, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr [16 x i8], ptr %call7.i, i32 0, i32 6
  %44 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %arrayidx5.i, align 2
  %arrayidx7.i = getelementptr [16 x i8], ptr %call7.i, i32 0, i32 7
  %45 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx7.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 8
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %add.ptr.i, align 8
  %e_type.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 1
  %47 = ptrtoint ptr %e_type.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 4, ptr %e_type.i, align 8
  %e_machine.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 2
  %48 = ptrtoint ptr %e_machine.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 40, ptr %e_machine.i, align 2
  %e_version.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 3
  %49 = ptrtoint ptr %e_version.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %e_version.i, align 4
  %e_entry.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 4
  %50 = ptrtoint ptr %e_entry.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %e_entry.i, align 8
  %e_phoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 5
  %51 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 52, ptr %e_phoff.i, align 4
  %e_shoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 6
  %52 = ptrtoint ptr %e_shoff.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %e_shoff.i, align 8
  %e_flags.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 7
  %53 = ptrtoint ptr %e_flags.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %e_flags.i, align 4
  %e_ehsize.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 8
  %54 = ptrtoint ptr %e_ehsize.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 52, ptr %e_ehsize.i, align 8
  %e_phentsize.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 9
  %55 = ptrtoint ptr %e_phentsize.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 32, ptr %e_phentsize.i, align 2
  %conv.i = trunc i32 %40 to i16
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 10
  %56 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i, ptr %e_phnum.i, align 4
  %e_shentsize.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 11
  %57 = ptrtoint ptr %e_shentsize.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %e_shentsize.i, align 2
  %e_shnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 12
  %58 = ptrtoint ptr %e_shnum.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %e_shnum.i, align 8
  %e_shstrndx.i = getelementptr inbounds %struct.elf32_hdr, ptr %call7.i, i32 0, i32 13
  %59 = ptrtoint ptr %e_shstrndx.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %e_shstrndx.i, align 2
  %60 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task, align 8
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 75
  %62 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %group_leader, align 4
  %mm = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 53
  %64 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mm, align 8
  %66 = call ptr @memset(ptr %call7.i313, i32 0, i32 124)
  %arg_end.i = getelementptr inbounds %struct.anon.10, ptr %65, i32 0, i32 36
  %67 = ptrtoint ptr %arg_end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arg_end.i, align 4
  %arg_start.i = getelementptr inbounds %struct.anon.10, ptr %65, i32 0, i32 35
  %69 = ptrtoint ptr %arg_start.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arg_start.i, align 8
  %sub.i = sub i32 %68, %70
  %71 = call i32 @llvm.umin.i32(i32 %sub.i, i32 79) #13
  %pr_psargs.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 12
  %72 = inttoptr i32 %70 to ptr
  call void @__check_object_size(ptr noundef %pr_psargs.i, i32 noundef %71, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #13
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.end25.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end25.if.end.i.i.i_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end25
  %73 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %72, i32 %71, i32 -1226833920) #19, !srcloc !71
  %asmresult.i.i.i = extractvalue { i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !69

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_psargs.i, i32 noundef %71) #13
  %74 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 4
  %76 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !72
  %and.i.i.i.i.i = and i32 %76, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %pr_psargs.i, ptr noundef %72, i32 noundef %71) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end25.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %71, %if.end25.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %71, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %for.cond.preheader.i, label %if.then11.i.i.i, !prof !69

for.cond.preheader.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp448.not.i = icmp eq i32 %71, 0
  br i1 %cmp448.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i32 %71, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %pr_psargs.i, i32 %sub.i.i.i
  %77 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %fill_psinfo.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i316 = getelementptr %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 12, i32 %i.049.i
  %78 = ptrtoint ptr %arrayidx.i316 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i316, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp6.i = icmp eq i8 %79, 0
  br i1 %cmp6.i, label %if.then8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %arrayidx.i316 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 32, ptr %arrayidx.i316, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %71
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %arrayidx13.i = getelementptr %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 12, i32 %71
  %81 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx13.i, align 1
  %82 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %85, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %for.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.end.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i6.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i6.i:                                     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i6.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.end.i.rcu_read_lock.exit.i_crit_edge
  %real_parent.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 71
  %86 = ptrtoint ptr %real_parent.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %real_parent.i, align 4
  %call15.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end24.i_crit_edge

rcu_read_lock.exit.i.do.end24.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call17.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.do.end24.i_crit_edge, label %land.lhs.true19.i

land.lhs.true.i.do.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24.i

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @fill_psinfo.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true19.i.do.end24.i_crit_edge, label %if.then21.i

land.lhs.true19.i.do.end24.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24.i

if.then21.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fill_psinfo.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1344, ptr noundef nonnull @.str.14) #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then21.i, %land.lhs.true19.i.do.end24.i_crit_edge, %land.lhs.true.i.do.end24.i_crit_edge, %rcu_read_lock.exit.i.do.end24.i_crit_edge
  %call.i18.i = call i32 @__task_pid_nr_ns(ptr noundef %87, i32 noundef 0, ptr noundef null) #13
  %pr_ppid.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 8
  %88 = ptrtoint ptr %pr_ppid.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call.i18.i, ptr %pr_ppid.i, align 8
  %call.i19.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i19.i, label %do.end24.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i22.i

do.end24.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i22.i:                              ; preds = %do.end24.i
  %call1.i20.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i22.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i24.i

land.lhs.true.i22.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i24.i:                             ; preds = %land.lhs.true.i22.i
  %.b4.i23.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i, label %land.lhs.true2.i24.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i25.i

land.lhs.true2.i24.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i25.i:                                    ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i25.i, %land.lhs.true2.i24.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i22.i.rcu_read_unlock.exit.i_crit_edge, %do.end24.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !76
  %89 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i26.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i26.i to ptr
  %preempt_count.i.i.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i.i27.i, align 4
  %sub.i.i.i.i = add i32 %92, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i27.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call.i28.i = call i32 @__task_pid_nr_ns(ptr noundef %63, i32 noundef 0, ptr noundef null) #13
  %pr_pid.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 7
  %93 = ptrtoint ptr %pr_pid.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call.i28.i, ptr %pr_pid.i, align 4
  %call.i29.i = call i32 @__task_pid_nr_ns(ptr noundef %63, i32 noundef 2, ptr noundef null) #13
  %pr_pgrp.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 9
  %94 = ptrtoint ptr %pr_pgrp.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call.i29.i, ptr %pr_pgrp.i, align 4
  %call.i30.i = call i32 @__task_pid_nr_ns(ptr noundef %63, i32 noundef 3, ptr noundef null) #13
  %pr_sid.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 10
  %95 = ptrtoint ptr %pr_sid.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call.i30.i, ptr %pr_sid.i, align 8
  %96 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %63, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool34.not.i = icmp eq i32 %97, 0
  br i1 %tobool34.not.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %call7.i313 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %call7.i313, align 8
  br label %cond.false41.i

cond.end.i:                                       ; preds = %rcu_read_unlock.exit.i
  %99 = call i32 @llvm.cttz.i32(i32 %97, i1 true) #13, !range !77
  %add.i = add nuw nsw i32 %99, 1
  %conv37.i = trunc i32 %add.i to i8
  %100 = ptrtoint ptr %call7.i313 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv37.i, ptr %call7.i313, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %99)
  %cmp38.i = icmp ugt i32 %99, 4
  br i1 %cmp38.i, label %cond.end.i.cond.end44.i_crit_edge, label %cond.end.i.cond.false41.i_crit_edge

cond.end.i.cond.false41.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false41.i

cond.end.i.cond.end44.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end44.i

cond.false41.i:                                   ; preds = %cond.end.i.cond.false41.i_crit_edge, %cond.end.thread.i
  %cond47.i = phi i32 [ 0, %cond.end.thread.i ], [ %add.i, %cond.end.i.cond.false41.i_crit_edge ]
  %arrayidx42.i = getelementptr [7 x i8], ptr @.str.18, i32 0, i32 %cond47.i
  %101 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx42.i, align 1
  br label %cond.end44.i

cond.end44.i:                                     ; preds = %cond.false41.i, %cond.end.i.cond.end44.i_crit_edge
  %cond45.i = phi i8 [ %102, %cond.false41.i ], [ 46, %cond.end.i.cond.end44.i_crit_edge ]
  %pr_sname.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 1
  %103 = ptrtoint ptr %pr_sname.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %cond45.i, ptr %pr_sname.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %cond45.i)
  %cmp49.i = icmp eq i8 %cond45.i, 90
  %conv51.i = zext i1 %cmp49.i to i8
  %pr_zomb.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 2
  %104 = ptrtoint ptr %pr_zomb.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv51.i, ptr %pr_zomb.i, align 2
  %static_prio.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 14
  %105 = ptrtoint ptr %static_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %static_prio.i.i, align 4
  %107 = trunc i32 %106 to i8
  %conv53.i = add i8 %107, -120
  %pr_nice.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 3
  %108 = ptrtoint ptr %pr_nice.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv53.i, ptr %pr_nice.i, align 1
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 3
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i, align 4
  %pr_flag.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 4
  %111 = ptrtoint ptr %pr_flag.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %pr_flag.i, align 4
  %112 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i7.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i7.i to ptr
  %preempt_count.i.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i.i8.i, align 4
  %add.i.i.i9.i = add i32 %115, 1
  store volatile i32 %add.i.i.i9.i, ptr %preempt_count.i.i.i.i8.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i10.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10.i, label %cond.end44.i.rcu_read_lock.exit17.i_crit_edge, label %land.lhs.true.i13.i

cond.end44.i.rcu_read_lock.exit17.i_crit_edge:    ; preds = %cond.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit17.i

land.lhs.true.i13.i:                              ; preds = %cond.end44.i
  %call1.i11.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_lock.exit17.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_lock.exit17.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit17.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_lock.exit17.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_lock.exit17.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit17.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #13
  br label %rcu_read_lock.exit17.i

rcu_read_lock.exit17.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_lock.exit17.i_crit_edge, %land.lhs.true.i13.i.rcu_read_lock.exit17.i_crit_edge, %cond.end44.i.rcu_read_lock.exit17.i_crit_edge
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 98
  %116 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %real_cred.i, align 4
  %call59.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %land.lhs.true61.i, label %rcu_read_lock.exit17.i.do.end69.i_crit_edge

rcu_read_lock.exit17.i.do.end69.i_crit_edge:      ; preds = %rcu_read_lock.exit17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69.i

land.lhs.true61.i:                                ; preds = %rcu_read_lock.exit17.i
  %call62.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %land.lhs.true61.i.do.end69.i_crit_edge, label %land.lhs.true64.i

land.lhs.true61.i.do.end69.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69.i

land.lhs.true64.i:                                ; preds = %land.lhs.true61.i
  %.b1594.i = load i1, ptr @fill_psinfo.__warned.19, align 1
  br i1 %.b1594.i, label %land.lhs.true64.i.do.end69.i_crit_edge, label %if.then66.i

land.lhs.true64.i.do.end69.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69.i

if.then66.i:                                      ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fill_psinfo.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1358, ptr noundef nonnull @.str.14) #13
  br label %do.end69.i

do.end69.i:                                       ; preds = %if.then66.i, %land.lhs.true64.i.do.end69.i_crit_edge, %land.lhs.true61.i.do.end69.i_crit_edge, %rcu_read_lock.exit17.i.do.end69.i_crit_edge
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %117, i32 0, i32 25
  %118 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %user_ns.i, align 4
  %uid.i = getelementptr inbounds %struct.cred, ptr %117, i32 0, i32 4
  %120 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %121 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call72.i = call i32 @from_kuid_munged(ptr noundef %119, [1 x i32] %121) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call72.i)
  %tobool73.not.i = icmp ult i32 %call72.i, 65536
  br i1 %tobool73.not.i, label %cond.false77.i, label %cond.true74.i

cond.true74.i:                                    ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %122 = load i32, ptr @overflowuid, align 4
  br label %cond.end84.i

cond.false77.i:                                   ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %user_ns.i, align 4
  %125 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.unpack1.i = load i32, ptr %uid.i, align 4
  %126 = insertvalue [1 x i32] undef, i32 %.unpack1.i, 0
  %call81.i = call i32 @from_kuid_munged(ptr noundef %124, [1 x i32] %126) #13
  br label %cond.end84.i

cond.end84.i:                                     ; preds = %cond.false77.i, %cond.true74.i
  %cond85.in.i = phi i32 [ %122, %cond.true74.i ], [ %call81.i, %cond.false77.i ]
  %conv86.i = trunc i32 %cond85.in.i to i16
  %pr_uid.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 5
  %127 = ptrtoint ptr %pr_uid.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv86.i, ptr %pr_uid.i, align 8
  %128 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %user_ns.i, align 4
  %gid.i = getelementptr inbounds %struct.cred, ptr %117, i32 0, i32 5
  %130 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.unpack2.i = load i32, ptr %gid.i, align 4
  %131 = insertvalue [1 x i32] undef, i32 %.unpack2.i, 0
  %call92.i = call i32 @from_kgid_munged(ptr noundef %129, [1 x i32] %131) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call92.i)
  %tobool94.not.i = icmp ult i32 %call92.i, 65536
  br i1 %tobool94.not.i, label %cond.false98.i, label %cond.true95.i

cond.true95.i:                                    ; preds = %cond.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %132 = load i32, ptr @overflowgid, align 4
  br label %cond.end105.i

cond.false98.i:                                   ; preds = %cond.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %user_ns.i, align 4
  %135 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack3.i = load i32, ptr %gid.i, align 4
  %136 = insertvalue [1 x i32] undef, i32 %.unpack3.i, 0
  %call102.i = call i32 @from_kgid_munged(ptr noundef %134, [1 x i32] %136) #13
  br label %cond.end105.i

cond.end105.i:                                    ; preds = %cond.false98.i, %cond.true95.i
  %cond106.in.i = phi i32 [ %132, %cond.true95.i ], [ %call102.i, %cond.false98.i ]
  %conv107.i = trunc i32 %cond106.in.i to i16
  %pr_gid.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 6
  %137 = ptrtoint ptr %pr_gid.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv107.i, ptr %pr_gid.i, align 2
  %call.i31.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i31.i, label %cond.end105.i.rcu_read_unlock.exit41.i_crit_edge, label %land.lhs.true.i34.i

cond.end105.i.rcu_read_unlock.exit41.i_crit_edge: ; preds = %cond.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit41.i

land.lhs.true.i34.i:                              ; preds = %cond.end105.i
  %call1.i32.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool.not.i33.i, label %land.lhs.true.i34.i.rcu_read_unlock.exit41.i_crit_edge, label %land.lhs.true2.i36.i

land.lhs.true.i34.i.rcu_read_unlock.exit41.i_crit_edge: ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit41.i

land.lhs.true2.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b4.i35.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35.i, label %land.lhs.true2.i36.i.rcu_read_unlock.exit41.i_crit_edge, label %if.then.i37.i

land.lhs.true2.i36.i.rcu_read_unlock.exit41.i_crit_edge: ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit41.i

if.then.i37.i:                                    ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_unlock.exit41.i

rcu_read_unlock.exit41.i:                         ; preds = %if.then.i37.i, %land.lhs.true2.i36.i.rcu_read_unlock.exit41.i_crit_edge, %land.lhs.true.i34.i.rcu_read_unlock.exit41.i_crit_edge, %cond.end105.i.rcu_read_unlock.exit41.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !76
  %138 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i38.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i38.i to ptr
  %preempt_count.i.i.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %preempt_count.i.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %preempt_count.i.i.i.i39.i, align 4
  %sub.i.i.i40.i = add i32 %141, -1
  store volatile i32 %sub.i.i.i40.i, ptr %preempt_count.i.i.i.i39.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %pr_fname.i = getelementptr inbounds %struct.elf_prpsinfo, ptr %call7.i313, i32 0, i32 11
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %call111.i = call ptr @strncpy(ptr noundef %pr_fname.i, ptr noundef %comm.i, i32 noundef 16) #13
  br label %fill_psinfo.exit

fill_psinfo.exit:                                 ; preds = %rcu_read_unlock.exit41.i, %if.then11.i.i.i
  %142 = ptrtoint ptr %psinfo_note to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @.str.11, ptr %psinfo_note, align 4
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 3, ptr %1, align 4
  %144 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 124, ptr %2, align 4
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call7.i313, ptr %3, align 4
  %146 = ptrtoint ptr %thread_status_size to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %thread_status_size, align 4
  %148 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task, align 8
  %mm40 = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 53
  %150 = ptrtoint ptr %mm40 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mm40, align 8
  %saved_auxv = getelementptr inbounds %struct.anon.10, ptr %151, i32 0, i32 39
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %fill_psinfo.exit
  %i.0 = phi i32 [ 0, %fill_psinfo.exit ], [ %add41, %do.body.do.body_crit_edge ]
  %add41 = add i32 %i.0, 2
  %arrayidx = getelementptr i32, ptr %saved_auxv, i32 %i.0
  %152 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx, align 4
  %cmp42.not = icmp eq i32 %153, 0
  br i1 %cmp42.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %do.body
  %mul = shl i32 %add41, 2
  %154 = ptrtoint ptr %auxv_note to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.11, ptr %auxv_note, align 4
  %155 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 6, ptr %5, align 4
  %156 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %mul, ptr %6, align 4
  %157 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %saved_auxv, ptr %7, align 4
  %add9.i326 = add i32 %147, 164
  %add45 = add i32 %add9.i326, %mul
  %158 = ptrtoint ptr %thread_status_size to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add45, ptr %thread_status_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %159 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i314 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %159, i32 noundef 3264, i32 noundef 32) #18
  %tobool50.not = icmp eq ptr %call7.i314, null
  br i1 %tobool50.not, label %do.end.end_coredump_crit_edge, label %if.end52

do.end.end_coredump_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end52:                                         ; preds = %do.end
  %mul46 = shl i32 %inc, 5
  %conv47 = zext i32 %mul46 to i64
  %add48 = add i32 %mul46, 52
  %160 = ptrtoint ptr %call7.i314 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 4, ptr %call7.i314, align 8
  %p_offset.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i314, i32 0, i32 1
  %161 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add48, ptr %p_offset.i, align 4
  %p_vaddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i314, i32 0, i32 2
  %162 = ptrtoint ptr %p_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %p_vaddr.i, align 8
  %p_paddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i314, i32 0, i32 3
  %163 = ptrtoint ptr %p_paddr.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %p_paddr.i, align 4
  %p_filesz.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i314, i32 0, i32 4
  %164 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %add45, ptr %p_filesz.i, align 8
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i314, i32 0, i32 5
  %165 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %p_memsz.i, align 4
  %p_flags.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i314, i32 0, i32 6
  %166 = ptrtoint ptr %p_flags.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %p_flags.i, align 8
  %p_align.i = getelementptr inbounds %struct.elf32_phdr, ptr %call7.i314, i32 0, i32 7
  %167 = ptrtoint ptr %p_align.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %p_align.i, align 4
  %conv53 = sext i32 %add45 to i64
  %add54 = add nuw nsw i64 %conv47, 4147
  %add58 = add nsw i64 %add54, %conv53
  %div = sdiv i64 %add58, 4096
  %mul61 = shl nsw i64 %div, 12
  %168 = ptrtoint ptr %vma_data_size to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %vma_data_size, align 4
  %170 = trunc i64 %mul61 to i32
  %conv67 = add i32 %169, %170
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv30)
  %cmp69 = icmp eq i32 %conv30, 65535
  br i1 %cmp69, label %if.then71, label %if.end52.if.end76_crit_edge

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then71:                                        ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %171 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i315 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %171, i32 noundef 3264, i32 noundef 40) #18
  %tobool73.not = icmp eq ptr %call7.i315, null
  br i1 %tobool73.not, label %if.then71.end_coredump_crit_edge, label %if.end75

if.then71.end_coredump_crit_edge:                 ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end75:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  %172 = ptrtoint ptr %e_shoff.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv67, ptr %e_shoff.i, align 8
  %173 = ptrtoint ptr %e_shentsize.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 40, ptr %e_shentsize.i, align 2
  %174 = ptrtoint ptr %e_shnum.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 1, ptr %e_shnum.i, align 8
  %175 = ptrtoint ptr %e_shstrndx.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %e_shstrndx.i, align 2
  %176 = call ptr @memset(ptr %call7.i315, i32 0, i32 40)
  %sh_size.i = getelementptr inbounds %struct.elf32_shdr, ptr %call7.i315, i32 0, i32 5
  %177 = ptrtoint ptr %sh_size.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %sh_size.i, align 4
  %sh_info.i = getelementptr inbounds %struct.elf32_shdr, ptr %call7.i315, i32 0, i32 7
  %178 = ptrtoint ptr %sh_info.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %inc, ptr %sh_info.i, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end52.if.end76_crit_edge
  %shdr4extnum.0 = phi ptr [ %call7.i315, %if.end75 ], [ null, %if.end52.if.end76_crit_edge ]
  %call77 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef nonnull %call7.i, i32 noundef 52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.end_coredump_crit_edge, label %if.end80

if.end76.end_coredump_crit_edge:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef nonnull %call7.i314, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end80.end_coredump_crit_edge, label %for.cond85.preheader

if.end80.end_coredump_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

for.cond85.preheader:                             ; preds = %if.end80
  %179 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %vma_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp86341 = icmp sgt i32 %180, 0
  br i1 %cmp86341, label %for.body88.lr.ph, label %for.cond85.preheader.for.end121_crit_edge

for.cond85.preheader.for.end121_crit_edge:        ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end121

for.body88.lr.ph:                                 ; preds = %for.cond85.preheader
  %181 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 1
  %182 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 2
  %183 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 3
  %184 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 4
  %185 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 5
  %186 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 6
  %187 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr, i32 0, i32 7
  br label %for.body88

for.cond85:                                       ; preds = %if.end112
  %inc120 = add nuw nsw i32 %i.1343, 1
  %188 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %vma_count, align 4
  %cmp86 = icmp slt i32 %inc120, %189
  br i1 %cmp86, label %for.cond85.for.body88_crit_edge, label %for.cond85.for.end121_crit_edge

for.cond85.for.end121_crit_edge:                  ; preds = %for.cond85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end121

for.cond85.for.body88_crit_edge:                  ; preds = %for.cond85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body88

for.body88:                                       ; preds = %for.cond85.for.body88_crit_edge, %for.body88.lr.ph
  %i.1343 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc120, %for.cond85.for.body88_crit_edge ]
  %offset.0342 = phi i64 [ %mul61, %for.body88.lr.ph ], [ %add94, %for.cond85.for.body88_crit_edge ]
  %190 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %vma_meta, align 4
  %add.ptr = getelementptr %struct.core_vma_metadata, ptr %191, i32 %i.1343
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %phdr) #13
  %end = getelementptr %struct.core_vma_metadata, ptr %191, i32 %i.1343, i32 1
  %192 = call ptr @memset(ptr %phdr, i32 255, i32 32)
  %193 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %end, align 4
  %195 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %add.ptr, align 4
  %sub89 = sub i32 %194, %196
  %197 = ptrtoint ptr %phdr to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1, ptr %phdr, align 4
  %conv90 = trunc i64 %offset.0342 to i32
  %198 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %conv90, ptr %181, align 4
  %199 = load i32, ptr %add.ptr, align 4
  %200 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %182, align 4
  %201 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %183, align 4
  %dump_size = getelementptr %struct.core_vma_metadata, ptr %191, i32 %i.1343, i32 3
  %202 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %dump_size, align 4
  %204 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %184, align 4
  %205 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %sub89, ptr %185, align 4
  %conv93 = zext i32 %203 to i64
  %add94 = add i64 %offset.0342, %conv93
  %206 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %186, align 4
  %flags = getelementptr %struct.core_vma_metadata, ptr %191, i32 %i.1343, i32 2
  %207 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %flags, align 4
  %and = shl i32 %208, 2
  %209 = and i32 %and, 4
  store i32 %209, ptr %186, align 4
  %210 = load i32, ptr %flags, align 4
  %and100 = and i32 %210, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %for.body88.if.end105_crit_edge, label %if.then102

for.body88.if.end105_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then102:                                       ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #15
  %or104 = or i32 %209, 2
  %211 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %or104, ptr %186, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %for.body88.if.end105_crit_edge
  %212 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %flags, align 4
  %and107 = and i32 %213, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end105.if.end112_crit_edge, label %if.then109

if.end105.if.end112_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %214 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %186, align 4
  %or111 = or i32 %215, 1
  store i32 %or111, ptr %186, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end105.if.end112_crit_edge
  %216 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 4096, ptr %187, align 4
  %call113 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef nonnull %phdr, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %phdr) #13
  br i1 %tobool114.not, label %if.end112.end_coredump_crit_edge, label %for.cond85

if.end112.end_coredump_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

for.end121:                                       ; preds = %for.cond85.for.end121_crit_edge, %for.cond85.preheader.for.end121_crit_edge
  %offset.0.lcssa = phi i64 [ %mul61, %for.cond85.preheader.for.end121_crit_edge ], [ %add94, %for.cond85.for.end121_crit_edge ]
  %notes = getelementptr inbounds %struct.elf_thread_status, ptr %call22, i32 0, i32 3
  %call127 = call fastcc i32 @writenote(ptr noundef %notes, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %for.end121.end_coredump_crit_edge, label %if.end130

for.end121.end_coredump_crit_edge:                ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end130:                                        ; preds = %for.end121
  %call131 = call fastcc i32 @writenote(ptr noundef nonnull %psinfo_note, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end130.end_coredump_crit_edge, label %if.end134

if.end130.end_coredump_crit_edge:                 ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end134:                                        ; preds = %if.end130
  %call135 = call fastcc i32 @writenote(ptr noundef nonnull %auxv_note, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end134.end_coredump_crit_edge, label %for.cond139.preheader

if.end134.end_coredump_crit_edge:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

for.cond139.preheader:                            ; preds = %if.end134
  %num_notes = getelementptr inbounds %struct.elf_thread_status, ptr %call22, i32 0, i32 4
  %217 = ptrtoint ptr %num_notes to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %num_notes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %218)
  %cmp140345 = icmp sgt i32 %218, 1
  br i1 %cmp140345, label %for.cond139.preheader.for.body142_crit_edge, label %for.cond139.preheader.for.cond154.preheader_crit_edge

for.cond139.preheader.for.cond154.preheader_crit_edge: ; preds = %for.cond139.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond154.preheader

for.cond139.preheader.for.body142_crit_edge:      ; preds = %for.cond139.preheader
  br label %for.body142

for.cond139:                                      ; preds = %for.body142
  %inc151 = add nuw nsw i32 %i.2346, 1
  %219 = ptrtoint ptr %num_notes to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_notes, align 4
  %cmp140 = icmp slt i32 %inc151, %220
  br i1 %cmp140, label %for.cond139.for.body142_crit_edge, label %for.cond139.for.cond154.preheader_crit_edge

for.cond139.for.cond154.preheader_crit_edge:      ; preds = %for.cond139
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond154.preheader

for.cond139.for.body142_crit_edge:                ; preds = %for.cond139
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body142

for.cond154.preheader:                            ; preds = %for.cond139.for.cond154.preheader_crit_edge, %for.cond139.preheader.for.cond154.preheader_crit_edge
  %221 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %221)
  %tmp.0349 = load ptr, ptr %call22, align 4
  %tobool155.not350 = icmp eq ptr %tmp.0349, null
  br i1 %tobool155.not350, label %for.cond154.preheader.for.end173_crit_edge, label %for.cond154.preheader.for.cond157.preheader_crit_edge

for.cond154.preheader.for.cond157.preheader_crit_edge: ; preds = %for.cond154.preheader
  br label %for.cond157.preheader

for.cond154.preheader.for.end173_crit_edge:       ; preds = %for.cond154.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end173

for.body142:                                      ; preds = %for.cond139.for.body142_crit_edge, %for.cond139.preheader.for.body142_crit_edge
  %i.2346 = phi i32 [ %inc151, %for.cond139.for.body142_crit_edge ], [ 1, %for.cond139.preheader.for.body142_crit_edge ]
  %add.ptr145 = getelementptr %struct.memelfnote, ptr %notes, i32 %i.2346
  %call146 = call fastcc i32 @writenote(ptr noundef %add.ptr145, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %for.body142.end_coredump_crit_edge, label %for.cond139

for.body142.end_coredump_crit_edge:               ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

for.cond154.loopexit:                             ; preds = %for.cond157.for.cond154.loopexit_crit_edge, %for.cond157.preheader.for.cond154.loopexit_crit_edge
  %222 = ptrtoint ptr %tmp.0351 to i32
  call void @__asan_load4_noabort(i32 %222)
  %tmp.0 = load ptr, ptr %tmp.0351, align 4
  %tobool155.not = icmp eq ptr %tmp.0, null
  br i1 %tobool155.not, label %for.cond154.loopexit.for.end173_crit_edge, label %for.cond154.loopexit.for.cond157.preheader_crit_edge

for.cond154.loopexit.for.cond157.preheader_crit_edge: ; preds = %for.cond154.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond157.preheader

for.cond154.loopexit.for.end173_crit_edge:        ; preds = %for.cond154.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end173

for.cond157.preheader:                            ; preds = %for.cond154.loopexit.for.cond157.preheader_crit_edge, %for.cond154.preheader.for.cond157.preheader_crit_edge
  %tmp.0351 = phi ptr [ %tmp.0, %for.cond154.loopexit.for.cond157.preheader_crit_edge ], [ %tmp.0349, %for.cond154.preheader.for.cond157.preheader_crit_edge ]
  %num_notes158 = getelementptr inbounds %struct.elf_thread_status, ptr %tmp.0351, i32 0, i32 4
  %223 = ptrtoint ptr %num_notes158 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %num_notes158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp159347 = icmp sgt i32 %224, 0
  br i1 %cmp159347, label %for.cond157.preheader.for.body161_crit_edge, label %for.cond157.preheader.for.cond154.loopexit_crit_edge

for.cond157.preheader.for.cond154.loopexit_crit_edge: ; preds = %for.cond157.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond154.loopexit

for.cond157.preheader.for.body161_crit_edge:      ; preds = %for.cond157.preheader
  br label %for.body161

for.cond157:                                      ; preds = %for.body161
  %inc169 = add nuw nsw i32 %i.3348, 1
  %225 = ptrtoint ptr %num_notes158 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %num_notes158, align 4
  %cmp159 = icmp slt i32 %inc169, %226
  br i1 %cmp159, label %for.cond157.for.body161_crit_edge, label %for.cond157.for.cond154.loopexit_crit_edge

for.cond157.for.cond154.loopexit_crit_edge:       ; preds = %for.cond157
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond154.loopexit

for.cond157.for.body161_crit_edge:                ; preds = %for.cond157
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body161

for.body161:                                      ; preds = %for.cond157.for.body161_crit_edge, %for.cond157.preheader.for.body161_crit_edge
  %i.3348 = phi i32 [ %inc169, %for.cond157.for.body161_crit_edge ], [ 0, %for.cond157.preheader.for.body161_crit_edge ]
  %arrayidx163 = getelementptr %struct.elf_thread_status, ptr %tmp.0351, i32 0, i32 3, i32 %i.3348
  %call164 = call fastcc i32 @writenote(ptr noundef %arrayidx163, ptr noundef %cprm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %for.body161.end_coredump_crit_edge, label %for.cond157

for.body161.end_coredump_crit_edge:               ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

for.end173:                                       ; preds = %for.cond154.loopexit.for.end173_crit_edge, %for.cond154.preheader.for.end173_crit_edge
  call void @dump_skip_to(ptr noundef %cprm, i32 noundef %170) #13
  %227 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %vma_meta, align 4
  %229 = ptrtoint ptr %vma_count to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %vma_count, align 4
  %call175 = call fastcc zeroext i1 @elf_fdpic_dump_segments(ptr noundef %cprm, ptr noundef %228, i32 noundef %230)
  br i1 %call175, label %if.end177, label %for.end173.end_coredump_crit_edge

for.end173.end_coredump_crit_edge:                ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end177:                                        ; preds = %for.end173
  br i1 %cmp69, label %if.then185, label %if.end177.if.end190_crit_edge

if.end177.if.end190_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end190

if.then185:                                       ; preds = %if.end177
  %call186 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef %shdr4extnum.0, i32 noundef 40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.then185.end_coredump_crit_edge, label %if.then185.if.end190_crit_edge

if.then185.if.end190_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end190

if.then185.end_coredump_crit_edge:                ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

if.end190:                                        ; preds = %if.then185.if.end190_crit_edge, %if.end177.if.end190_crit_edge
  %file = getelementptr inbounds %struct.coredump_params, ptr %cprm, i32 0, i32 2
  %231 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %file, align 8
  %f_pos = getelementptr inbounds %struct.file, ptr %232, i32 0, i32 10
  %233 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %234, i64 %offset.0.lcssa)
  %cmp191.not = icmp eq i64 %234, %offset.0.lcssa
  br i1 %cmp191.not, label %if.end190.end_coredump_crit_edge, label %do.end196

if.end190.end_coredump_crit_edge:                 ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #15
  br label %end_coredump

do.end196:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #15
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i64 noundef %234, i64 noundef %offset.0.lcssa) #17
  br label %end_coredump

end_coredump:                                     ; preds = %do.end196, %if.end190.end_coredump_crit_edge, %if.then185.end_coredump_crit_edge, %for.end173.end_coredump_crit_edge, %for.body161.end_coredump_crit_edge, %for.body142.end_coredump_crit_edge, %if.end134.end_coredump_crit_edge, %if.end130.end_coredump_crit_edge, %for.end121.end_coredump_crit_edge, %if.end112.end_coredump_crit_edge, %if.end80.end_coredump_crit_edge, %if.end76.end_coredump_crit_edge, %if.then71.end_coredump_crit_edge, %do.end.end_coredump_crit_edge, %for.end.end_coredump_crit_edge, %for.body.end_coredump_crit_edge
  %thread_list.1 = phi ptr [ %call22, %do.end196 ], [ %call22, %if.end190.end_coredump_crit_edge ], [ %call22, %if.then185.end_coredump_crit_edge ], [ %call22, %for.end173.end_coredump_crit_edge ], [ %call22, %if.end134.end_coredump_crit_edge ], [ %call22, %if.end130.end_coredump_crit_edge ], [ %call22, %for.end121.end_coredump_crit_edge ], [ %call22, %if.end80.end_coredump_crit_edge ], [ %call22, %if.end76.end_coredump_crit_edge ], [ %call22, %if.then71.end_coredump_crit_edge ], [ %call22, %do.end.end_coredump_crit_edge ], [ %thread_list.0.lcssa, %for.end.end_coredump_crit_edge ], [ %call22, %for.body161.end_coredump_crit_edge ], [ %call22, %for.body142.end_coredump_crit_edge ], [ %call22, %if.end112.end_coredump_crit_edge ], [ %thread_list.0339, %for.body.end_coredump_crit_edge ]
  %phdr4note.0 = phi ptr [ %call7.i314, %do.end196 ], [ %call7.i314, %if.end190.end_coredump_crit_edge ], [ %call7.i314, %if.then185.end_coredump_crit_edge ], [ %call7.i314, %for.end173.end_coredump_crit_edge ], [ %call7.i314, %if.end134.end_coredump_crit_edge ], [ %call7.i314, %if.end130.end_coredump_crit_edge ], [ %call7.i314, %for.end121.end_coredump_crit_edge ], [ %call7.i314, %if.end80.end_coredump_crit_edge ], [ %call7.i314, %if.end76.end_coredump_crit_edge ], [ %call7.i314, %if.then71.end_coredump_crit_edge ], [ null, %do.end.end_coredump_crit_edge ], [ null, %for.end.end_coredump_crit_edge ], [ %call7.i314, %for.body161.end_coredump_crit_edge ], [ %call7.i314, %for.body142.end_coredump_crit_edge ], [ %call7.i314, %if.end112.end_coredump_crit_edge ], [ null, %for.body.end_coredump_crit_edge ]
  %shdr4extnum.1 = phi ptr [ %shdr4extnum.0, %do.end196 ], [ %shdr4extnum.0, %if.end190.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.then185.end_coredump_crit_edge ], [ %shdr4extnum.0, %for.end173.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.end134.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.end130.end_coredump_crit_edge ], [ %shdr4extnum.0, %for.end121.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.end80.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.end76.end_coredump_crit_edge ], [ null, %if.then71.end_coredump_crit_edge ], [ null, %do.end.end_coredump_crit_edge ], [ null, %for.end.end_coredump_crit_edge ], [ %shdr4extnum.0, %for.body161.end_coredump_crit_edge ], [ %shdr4extnum.0, %for.body142.end_coredump_crit_edge ], [ %shdr4extnum.0, %if.end112.end_coredump_crit_edge ], [ null, %for.body.end_coredump_crit_edge ]
  %has_dumped.0 = phi i32 [ 1, %do.end196 ], [ 1, %if.end190.end_coredump_crit_edge ], [ 1, %if.then185.end_coredump_crit_edge ], [ 1, %for.end173.end_coredump_crit_edge ], [ 1, %if.end134.end_coredump_crit_edge ], [ 1, %if.end130.end_coredump_crit_edge ], [ 1, %for.end121.end_coredump_crit_edge ], [ 1, %if.end80.end_coredump_crit_edge ], [ 1, %if.end76.end_coredump_crit_edge ], [ 1, %if.then71.end_coredump_crit_edge ], [ 1, %do.end.end_coredump_crit_edge ], [ 0, %for.end.end_coredump_crit_edge ], [ 1, %for.body161.end_coredump_crit_edge ], [ 1, %for.body142.end_coredump_crit_edge ], [ 1, %if.end112.end_coredump_crit_edge ], [ 0, %for.body.end_coredump_crit_edge ]
  %tobool202.not352 = icmp eq ptr %thread_list.1, null
  br i1 %tobool202.not352, label %end_coredump.while.end_crit_edge, label %end_coredump.while.body_crit_edge

end_coredump.while.body_crit_edge:                ; preds = %end_coredump
  br label %while.body

end_coredump.while.end_crit_edge:                 ; preds = %end_coredump
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %end_coredump.while.body_crit_edge
  %thread_list.2353 = phi ptr [ %236, %while.body.while.body_crit_edge ], [ %thread_list.1, %end_coredump.while.body_crit_edge ]
  %235 = ptrtoint ptr %thread_list.2353 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %thread_list.2353, align 4
  call void @kfree(ptr noundef nonnull %thread_list.2353) #13
  %tobool202.not = icmp eq ptr %236, null
  br i1 %tobool202.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %end_coredump.while.end_crit_edge, %if.end4.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %has_dumped.0369 = phi i32 [ %has_dumped.0, %end_coredump.while.end_crit_edge ], [ 0, %if.end4.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ], [ %has_dumped.0, %while.body.while.end_crit_edge ]
  %shdr4extnum.1368 = phi ptr [ %shdr4extnum.1, %end_coredump.while.end_crit_edge ], [ null, %if.end4.while.end_crit_edge ], [ null, %if.end.while.end_crit_edge ], [ null, %entry.while.end_crit_edge ], [ %shdr4extnum.1, %while.body.while.end_crit_edge ]
  %phdr4note.0367 = phi ptr [ %phdr4note.0, %end_coredump.while.end_crit_edge ], [ null, %if.end4.while.end_crit_edge ], [ null, %if.end.while.end_crit_edge ], [ null, %entry.while.end_crit_edge ], [ %phdr4note.0, %while.body.while.end_crit_edge ]
  %psinfo.0366 = phi ptr [ %call7.i313, %end_coredump.while.end_crit_edge ], [ %call7.i313, %if.end4.while.end_crit_edge ], [ null, %if.end.while.end_crit_edge ], [ null, %entry.while.end_crit_edge ], [ %call7.i313, %while.body.while.end_crit_edge ]
  %237 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %vma_meta, align 4
  call void @kvfree(ptr noundef %238) #13
  call void @kfree(ptr noundef %phdr4note.0367) #13
  call void @kfree(ptr noundef %call7.i) #13
  call void @kfree(ptr noundef %psinfo.0366) #13
  call void @kfree(ptr noundef %shdr4extnum.1368) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma_data_size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma_meta) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thread_status_size) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %auxv_note) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %psinfo_note) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma_count) #13
  ret i32 %has_dumped.0369
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @would_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @begin_new_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_elf_read_implies_exec(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_new_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elf_fdpic_arch_lay_out_mm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_arg_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_setup_additional_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elf_fdpic_map_file(ptr nocapture noundef %params, ptr noundef %file, ptr noundef %mm, ptr noundef %what) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %params, i32 0, i32 10
  %0 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_phnum, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp438.not = icmp eq i16 %1, 0
  br i1 %cmp438.not, label %entry.cleanup278_crit_edge, label %for.body.lr.ph

entry.cleanup278_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

for.body.lr.ph:                                   ; preds = %entry
  %phdrs = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %phdrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phdrs, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %nloads.0440 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %loop.0439 = phi i32 [ 0, %for.body.lr.ph ], [ %inc4, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.elf32_phdr, ptr %3, i32 %loop.0439
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  %inc = zext i1 %cmp2 to i32
  %spec.select = add i32 %nloads.0440, %inc
  %inc4 = add nuw nsw i32 %loop.0439, 1
  %exitcond.not = icmp eq i32 %inc4, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp5 = icmp eq i32 %spec.select, 0
  br i1 %cmp5, label %for.end.cleanup278_crit_edge, label %if.end8.i.i

for.end.cleanup278_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end8.i.i:                                      ; preds = %for.end
  %mul = mul i32 %spec.select, 12
  %add = add i32 %mul, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup278_crit_edge, label %if.end10

if.end8.i.i.cleanup278_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end10:                                         ; preds = %if.end8.i.i
  %loadmap11 = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %loadmap11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %loadmap11, align 4
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %call9.i.i, align 128
  %conv12 = trunc i32 %spec.select to i16
  %nsegs = getelementptr inbounds %struct.elf32_fdpic_loadmap, ptr %call9.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %nsegs to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv12, ptr %nsegs, align 2
  %segs = getelementptr inbounds %struct.elf32_fdpic_loadmap, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %e_phnum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp258.not.i = icmp eq i16 %10, 0
  br i1 %cmp258.not.i, label %if.end10.sw.epilog_crit_edge, label %for.body.lr.ph.i

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %if.end10
  %phdrs.i = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %phdrs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phdrs.i, align 4
  %13 = ptrtoint ptr %loadmap11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %loadmap11, align 4
  %segs.i = getelementptr inbounds %struct.elf32_fdpic_loadmap, ptr %14, i32 0, i32 2
  %load_addr1.i = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 9
  %15 = ptrtoint ptr %load_addr1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %load_addr1.i, align 4
  %flags19.i = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 10
  %elfhdr_addr.i = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 3
  %tobool124.not.i = icmp eq ptr %mm, null
  %start_code.i = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 28
  %end_code.i = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 29
  %start_data.i = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 30
  %end_data.i = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %seg.0267.i = phi ptr [ %segs.i, %for.body.lr.ph.i ], [ %seg.1.i, %for.inc.i.for.body.i_crit_edge ]
  %dvset.0266.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %dvset.2.i, %for.inc.i.for.body.i_crit_edge ]
  %loop.0265.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %delta_vaddr.0264.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %delta_vaddr.2.i, %for.inc.i.for.body.i_crit_edge ]
  %load_addr.0262.i = phi i32 [ %16, %for.body.lr.ph.i ], [ %load_addr.2.i, %for.inc.i.for.body.i_crit_edge ]
  %phdr.0259.i = phi ptr [ %12, %for.body.lr.ph.i ], [ %incdec.ptr153.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %phdr.0259.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phdr.0259.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp3.not.i = icmp eq i32 %18, 1
  br i1 %cmp3.not.i, label %do.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  %p_flags.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0259.i, i32 0, i32 6
  %19 = ptrtoint ptr %p_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p_flags.i, align 4
  %trunc.i = trunc i32 %20 to i3
  %rev.i = tail call i3 @llvm.bitreverse.i3(i3 %trunc.i) #13
  %21 = zext i3 %rev.i to i32
  %22 = ptrtoint ptr %flags19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags19.i, align 4
  %and20.i = and i32 %23, 15
  %24 = zext i32 %and20.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and20.i, label %do.body29.i [
    i32 0, label %do.end.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb22.i
    i32 3, label %do.end.i.sw.epilog.i_crit_edge543
  ]

do.end.i.sw.epilog.i_crit_edge543:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

do.end.i.sw.epilog.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %p_vaddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0259.i, i32 0, i32 2
  %25 = ptrtoint ptr %p_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_vaddr.i, align 4
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dvset.0266.i)
  %tobool23.not.i = icmp eq i32 %dvset.0266.i, 0
  %p_vaddr25.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0259.i, i32 0, i32 2
  %27 = ptrtoint ptr %p_vaddr25.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p_vaddr25.i, align 4
  br i1 %tobool23.not.i, label %sw.bb22.i.sw.epilog.i_crit_edge, label %if.else.i

sw.bb22.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = sub i32 %load_addr.0262.i, %delta_vaddr.0264.i
  %sub.i = add i32 %add.i, %28
  br label %sw.epilog.i

do.body29.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/binfmt_elf_fdpic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #13, !srcloc !78
  unreachable

sw.epilog.i:                                      ; preds = %if.else.i, %sw.bb22.i.sw.epilog.i_crit_edge, %sw.bb.i, %do.end.i.sw.epilog.i_crit_edge, %do.end.i.sw.epilog.i_crit_edge543
  %delta_vaddr.1.i = phi i32 [ %delta_vaddr.0264.i, %if.else.i ], [ %delta_vaddr.0264.i, %sw.bb.i ], [ %delta_vaddr.0264.i, %do.end.i.sw.epilog.i_crit_edge ], [ %delta_vaddr.0264.i, %do.end.i.sw.epilog.i_crit_edge543 ], [ %28, %sw.bb22.i.sw.epilog.i_crit_edge ]
  %dvset.1.i = phi i32 [ 1, %if.else.i ], [ %dvset.0266.i, %sw.bb.i ], [ %dvset.0266.i, %do.end.i.sw.epilog.i_crit_edge ], [ %dvset.0266.i, %do.end.i.sw.epilog.i_crit_edge543 ], [ 1, %sw.bb22.i.sw.epilog.i_crit_edge ]
  %maddr.0.i = phi i32 [ %sub.i, %if.else.i ], [ %26, %sw.bb.i ], [ 0, %do.end.i.sw.epilog.i_crit_edge ], [ 0, %do.end.i.sw.epilog.i_crit_edge543 ], [ %load_addr.0262.i, %sw.bb22.i.sw.epilog.i_crit_edge ]
  %flags.0.i = phi i32 [ 18, %if.else.i ], [ 18, %sw.bb.i ], [ 2, %do.end.i.sw.epilog.i_crit_edge ], [ 2, %do.end.i.sw.epilog.i_crit_edge543 ], [ 2, %sw.bb22.i.sw.epilog.i_crit_edge ]
  %and35.i = and i32 %maddr.0.i, -4096
  %p_vaddr36.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0259.i, i32 0, i32 2
  %29 = ptrtoint ptr %p_vaddr36.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p_vaddr36.i, align 4
  %and37.i = and i32 %30, 4095
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0259.i, i32 0, i32 5
  %31 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p_memsz.i, align 4
  %add38.i = add i32 %32, %and37.i
  %p_offset.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0259.i, i32 0, i32 1
  %33 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p_offset.i, align 4
  %sub39.i = sub i32 %34, %and37.i
  %call.i = tail call i32 @vm_mmap(ptr noundef %file, i32 noundef %and35.i, i32 noundef %add38.i, i32 noundef %21, i32 noundef %flags.0.i, i32 noundef %sub39.i) #13
  %35 = inttoptr i32 %call.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call.i)
  %cmp43.i = icmp ugt i32 %call.i, -4096
  br i1 %cmp43.i, label %sw.epilog.i.cleanup278_crit_edge, label %if.end48.i, !prof !79

sw.epilog.i.cleanup278_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.end48.i:                                       ; preds = %sw.epilog.i
  %36 = ptrtoint ptr %flags19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags19.i, align 4
  %and50.i = and i32 %37, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and50.i)
  %cmp51.i = icmp eq i32 %and50.i, 3
  br i1 %cmp51.i, label %if.then53.i, label %if.end48.i.if.end59.i_crit_edge

if.end48.i.if.end59.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %p_memsz.i, align 4
  %add55.i = add nuw nsw i32 %and37.i, 4095
  %add56.i = add i32 %add55.i, %39
  %and57.i = and i32 %add56.i, -4096
  %add58.i = add i32 %and57.i, %load_addr.0262.i
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then53.i, %if.end48.i.if.end59.i_crit_edge
  %load_addr.1.i = phi i32 [ %add58.i, %if.then53.i ], [ %load_addr.0262.i, %if.end48.i.if.end59.i_crit_edge ]
  %add60.i = add nuw i32 %call.i, %and37.i
  %40 = ptrtoint ptr %seg.0267.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add60.i, ptr %seg.0267.i, align 4
  %41 = ptrtoint ptr %p_vaddr36.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %p_vaddr36.i, align 4
  %p_vaddr62.i = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %seg.0267.i, i32 0, i32 1
  %43 = ptrtoint ptr %p_vaddr62.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %p_vaddr62.i, align 4
  %44 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %p_memsz.i, align 4
  %p_memsz64.i = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %seg.0267.i, i32 0, i32 2
  %46 = ptrtoint ptr %p_memsz64.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %p_memsz64.i, align 4
  %47 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %p_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp66.i = icmp eq i32 %48, 0
  br i1 %cmp66.i, label %if.then68.i, label %if.end59.i.if.end70.i_crit_edge

if.end59.i.if.end70.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then68.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %elfhdr_addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add60.i, ptr %elfhdr_addr.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then68.i, %if.end59.i.if.end70.i_crit_edge
  %and71.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp73.not.i = icmp eq i32 %and37.i, 0
  %or.cond.i = select i1 %tobool72.not.i, i1 true, i1 %cmp73.not.i
  br i1 %or.cond.i, label %if.end70.i.if.end84.i_crit_edge, label %do.end78.i

if.end70.i.if.end84.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

do.end78.i:                                       ; preds = %if.end70.i
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 %and37.i, i32 -1226833920) #19, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i414 = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i414, label %clear_user.exit.i, label %do.end78.i.cleanup278_crit_edge

do.end78.i.cleanup278_crit_edge:                  ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

clear_user.exit.i:                                ; preds = %do.end78.i
  %51 = tail call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !72
  %and.i.i.i.i = and i32 %53, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %call1.i.i.i415 = tail call i32 @arm_clear_user(ptr noundef %35, i32 noundef %and37.i) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #13, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i415)
  %tobool80.not.i = icmp eq i32 %call1.i.i.i415, 0
  br i1 %tobool80.not.i, label %clear_user.exit.i.if.end84.i_crit_edge, label %clear_user.exit.i.cleanup278_crit_edge

clear_user.exit.i.cleanup278_crit_edge:           ; preds = %clear_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

clear_user.exit.i.if.end84.i_crit_edge:           ; preds = %clear_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

if.end84.i:                                       ; preds = %clear_user.exit.i.if.end84.i_crit_edge, %if.end70.i.if.end84.i_crit_edge
  %maddr.1.i = phi i32 [ %call.i, %if.end70.i.if.end84.i_crit_edge ], [ %add60.i, %clear_user.exit.i.if.end84.i_crit_edge ]
  %54 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %p_memsz.i, align 4
  %p_filesz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0259.i, i32 0, i32 4
  %56 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %p_filesz.i, align 4
  %sub86.i = sub i32 %55, %57
  %add88.i = add i32 %57, %maddr.1.i
  %and89.i = and i32 %add88.i, 4095
  %sub90.i = sub nuw nsw i32 4096, %and89.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub86.i, i32 %sub90.i)
  %cmp91.i = icmp ugt i32 %sub86.i, %sub90.i
  br i1 %cmp91.i, label %if.then93.i, label %if.end84.i.if.end108.i_crit_edge

if.end84.i.if.end108.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

if.then93.i:                                      ; preds = %if.end84.i
  %add96.i = add i32 %sub90.i, %add88.i
  %sub98.i = sub i32 %sub86.i, %sub90.i
  %call99.i = tail call i32 @vm_mmap(ptr noundef null, i32 noundef %add96.i, i32 noundef %sub98.i, i32 noundef %21, i32 noundef 50, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call99.i, i32 %add96.i)
  %cmp103.not.i = icmp eq i32 %call99.i, %add96.i
  br i1 %cmp103.not.i, label %if.then93.i.if.end108.i_crit_edge, label %if.then93.i.cleanup278_crit_edge

if.then93.i.cleanup278_crit_edge:                 ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

if.then93.i.if.end108.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then93.i.if.end108.i_crit_edge, %if.end84.i.if.end108.i_crit_edge
  br i1 %tobool72.not.i, label %if.end108.i.if.end123.i_crit_edge, label %do.end117.i

if.end108.i.if.end123.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123.i

do.end117.i:                                      ; preds = %if.end108.i
  %58 = inttoptr i32 %maddr.1.i to ptr
  %59 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %p_filesz.i, align 4
  %add.ptr.i = getelementptr i8, ptr %58, i32 %60
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i, i32 %sub90.i, i32 -1226833920) #19, !srcloc !80
  %asmresult.i237.i = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i237.i)
  %cmp.i238.i = icmp eq i32 %asmresult.i237.i, 0
  br i1 %cmp.i238.i, label %clear_user.exit246.i, label %do.end117.i.cleanup278_crit_edge

do.end117.i.cleanup278_crit_edge:                 ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

clear_user.exit246.i:                             ; preds = %do.end117.i
  %62 = tail call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i239.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i239.i to ptr
  %cpu_domain.i.i.i.i240.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 4
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i240.i) #4, !srcloc !72
  %and.i.i.i241.i = and i32 %64, -13
  %or.i.i.i242.i = or i32 %and.i.i.i241.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i242.i) #13, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %call1.i.i243.i = tail call i32 @arm_clear_user(ptr noundef %add.ptr.i, i32 noundef %sub90.i) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #13, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i243.i)
  %tobool120.not.i = icmp eq i32 %call1.i.i243.i, 0
  br i1 %tobool120.not.i, label %clear_user.exit246.i.if.end123.i_crit_edge, label %clear_user.exit246.i.cleanup278_crit_edge

clear_user.exit246.i.cleanup278_crit_edge:        ; preds = %clear_user.exit246.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

clear_user.exit246.i.if.end123.i_crit_edge:       ; preds = %clear_user.exit246.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123.i

if.end123.i:                                      ; preds = %clear_user.exit246.i.if.end123.i_crit_edge, %if.end108.i.if.end123.i_crit_edge
  br i1 %tobool124.not.i, label %if.end123.i.if.end144.i_crit_edge, label %if.then125.i

if.end123.i.if.end144.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144.i

if.then125.i:                                     ; preds = %if.end123.i
  %65 = ptrtoint ptr %p_flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %p_flags.i, align 4
  %and127.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %if.else136.i, label %if.then129.i

if.then129.i:                                     ; preds = %if.then125.i
  %67 = ptrtoint ptr %start_code.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %start_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool130.not.i = icmp eq i32 %68, 0
  br i1 %tobool130.not.i, label %if.then129.i.if.end144.sink.split.i_crit_edge, label %if.then129.i.if.end144.i_crit_edge

if.then129.i.if.end144.i_crit_edge:               ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144.i

if.then129.i.if.end144.sink.split.i_crit_edge:    ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144.sink.split.i

if.else136.i:                                     ; preds = %if.then125.i
  %69 = ptrtoint ptr %start_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %start_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool137.not.i = icmp eq i32 %70, 0
  br i1 %tobool137.not.i, label %if.else136.i.if.end144.sink.split.i_crit_edge, label %if.else136.i.if.end144.i_crit_edge

if.else136.i.if.end144.i_crit_edge:               ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144.i

if.else136.i.if.end144.sink.split.i_crit_edge:    ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144.sink.split.i

if.end144.sink.split.i:                           ; preds = %if.else136.i.if.end144.sink.split.i_crit_edge, %if.then129.i.if.end144.sink.split.i_crit_edge
  %start_code.sink.i = phi ptr [ %start_code.i, %if.then129.i.if.end144.sink.split.i_crit_edge ], [ %start_data.i, %if.else136.i.if.end144.sink.split.i_crit_edge ]
  %end_code.sink.i = phi ptr [ %end_code.i, %if.then129.i.if.end144.sink.split.i_crit_edge ], [ %end_data.i, %if.else136.i.if.end144.sink.split.i_crit_edge ]
  %71 = ptrtoint ptr %start_code.sink.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %maddr.1.i, ptr %start_code.sink.i, align 4
  %72 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %p_memsz.i, align 4
  %add134.i = add i32 %73, %maddr.1.i
  %74 = ptrtoint ptr %end_code.sink.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add134.i, ptr %end_code.sink.i, align 8
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.end144.sink.split.i, %if.else136.i.if.end144.i_crit_edge, %if.then129.i.if.end144.i_crit_edge, %if.end123.i.if.end144.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.elf32_fdpic_loadseg, ptr %seg.0267.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end144.i, %for.body.i.for.inc.i_crit_edge
  %load_addr.2.i = phi i32 [ %load_addr.1.i, %if.end144.i ], [ %load_addr.0262.i, %for.body.i.for.inc.i_crit_edge ]
  %delta_vaddr.2.i = phi i32 [ %delta_vaddr.1.i, %if.end144.i ], [ %delta_vaddr.0264.i, %for.body.i.for.inc.i_crit_edge ]
  %dvset.2.i = phi i32 [ %dvset.1.i, %if.end144.i ], [ %dvset.0266.i, %for.body.i.for.inc.i_crit_edge ]
  %seg.1.i = phi ptr [ %incdec.ptr.i, %if.end144.i ], [ %seg.0267.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %loop.0265.i, 1
  %incdec.ptr153.i = getelementptr %struct.elf32_phdr, ptr %phdr.0259.i, i32 1
  %75 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %e_phnum, align 4
  %conv.i = zext i16 %76 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sw.epilog:                                        ; preds = %for.inc.i.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge
  %e_entry = getelementptr inbounds %struct.elf32_hdr, ptr %params, i32 0, i32 4
  %77 = ptrtoint ptr %e_entry to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %e_entry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool20.not = icmp eq i32 %78, 0
  br i1 %tobool20.not, label %sw.epilog.if.end48_crit_edge, label %if.then21

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then21:                                        ; preds = %sw.epilog
  %79 = ptrtoint ptr %nsegs to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %nsegs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp27441.not = icmp eq i16 %80, 0
  br i1 %cmp27441.not, label %if.then21.if.end48_crit_edge, label %for.body29.preheader

if.then21.if.end48_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

for.body29.preheader:                             ; preds = %if.then21
  %conv25 = zext i16 %80 to i32
  br label %for.body29

for.body29:                                       ; preds = %for.inc46.for.body29_crit_edge, %for.body29.preheader
  %seg.0443 = phi ptr [ %incdec.ptr, %for.inc46.for.body29_crit_edge ], [ %segs, %for.body29.preheader ]
  %loop.1442 = phi i32 [ %dec, %for.inc46.for.body29_crit_edge ], [ %conv25, %for.body29.preheader ]
  %p_vaddr = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %seg.0443, i32 0, i32 1
  %81 = ptrtoint ptr %p_vaddr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %p_vaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %82)
  %cmp32.not = icmp ult i32 %78, %82
  br i1 %cmp32.not, label %for.body29.for.inc46_crit_edge, label %land.lhs.true

for.body29.for.inc46_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46

land.lhs.true:                                    ; preds = %for.body29
  %p_memsz = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %seg.0443, i32 0, i32 2
  %83 = ptrtoint ptr %p_memsz to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %p_memsz, align 4
  %add37 = add i32 %84, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add37)
  %cmp38 = icmp ult i32 %78, %add37
  br i1 %cmp38, label %if.then40, label %land.lhs.true.for.inc46_crit_edge

land.lhs.true.for.inc46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %78, %82
  %85 = ptrtoint ptr %seg.0443 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %seg.0443, align 4
  %add44 = add i32 %sub, %86
  %entry_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 6
  %87 = ptrtoint ptr %entry_addr to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add44, ptr %entry_addr, align 4
  br label %if.end48

for.inc46:                                        ; preds = %land.lhs.true.for.inc46_crit_edge, %for.body29.for.inc46_crit_edge
  %dec = add nsw i32 %loop.1442, -1
  %incdec.ptr = getelementptr %struct.elf32_fdpic_loadseg, ptr %seg.0443, i32 1
  %cmp27 = icmp sgt i32 %loop.1442, 1
  br i1 %cmp27, label %for.inc46.for.body29_crit_edge, label %for.inc46.if.end48_crit_edge

for.inc46.if.end48_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

for.inc46.for.body29_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body29

if.end48:                                         ; preds = %for.inc46.if.end48_crit_edge, %if.then40, %if.then21.if.end48_crit_edge, %sw.epilog.if.end48_crit_edge
  %e_phoff = getelementptr inbounds %struct.elf32_hdr, ptr %params, i32 0, i32 5
  %88 = ptrtoint ptr %e_phoff to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %e_phoff, align 4
  %90 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %e_phnum, align 4
  %conv52 = zext i16 %91 to i32
  %mul53 = shl nuw nsw i32 %conv52, 5
  %add54 = add i32 %mul53, %89
  %phdrs55 = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 1
  %92 = ptrtoint ptr %phdrs55 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %phdrs55, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp60445.not = icmp eq i16 %91, 0
  br i1 %cmp60445.not, label %if.end48.for.end192_crit_edge, label %if.end48.for.body62_crit_edge

if.end48.for.body62_crit_edge:                    ; preds = %if.end48
  br label %for.body62

if.end48.for.end192_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end192

for.body62:                                       ; preds = %for.inc115.for.body62_crit_edge, %if.end48.for.body62_crit_edge
  %phdr.0447 = phi ptr [ %incdec.ptr117, %for.inc115.for.body62_crit_edge ], [ %93, %if.end48.for.body62_crit_edge ]
  %loop.2446 = phi i32 [ %inc116, %for.inc115.for.body62_crit_edge ], [ 0, %if.end48.for.body62_crit_edge ]
  %94 = ptrtoint ptr %phdr.0447 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %phdr.0447, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp64.not = icmp eq i32 %95, 1
  br i1 %cmp64.not, label %if.end67, label %for.body62.for.inc115_crit_edge

for.body62.for.inc115_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

if.end67:                                         ; preds = %for.body62
  %p_offset = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0447, i32 0, i32 1
  %96 = ptrtoint ptr %p_offset to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %p_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %89)
  %cmp70 = icmp ugt i32 %97, %89
  br i1 %cmp70, label %if.end67.for.inc115_crit_edge, label %lor.lhs.false

if.end67.for.inc115_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

lor.lhs.false:                                    ; preds = %if.end67
  %p_filesz = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0447, i32 0, i32 4
  %98 = ptrtoint ptr %p_filesz to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %p_filesz, align 4
  %add73 = add i32 %99, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %add73, i32 %add54)
  %cmp74 = icmp ult i32 %add73, %add54
  br i1 %cmp74, label %lor.lhs.false.for.inc115_crit_edge, label %if.end77

lor.lhs.false.for.inc115_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc115

if.end77:                                         ; preds = %lor.lhs.false
  %100 = ptrtoint ptr %nsegs to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %nsegs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp83449.not = icmp eq i16 %101, 0
  br i1 %cmp83449.not, label %if.end77.for.end118_crit_edge, label %for.body85.lr.ph

if.end77.for.end118_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end118

for.body85.lr.ph:                                 ; preds = %if.end77
  %conv81 = zext i16 %101 to i32
  %p_vaddr86 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0447, i32 0, i32 2
  %102 = ptrtoint ptr %p_vaddr86 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %p_vaddr86, align 4
  %add93 = add i32 %103, %99
  br label %for.body85

for.body85:                                       ; preds = %for.inc111.for.body85_crit_edge, %for.body85.lr.ph
  %seg.1451 = phi ptr [ %segs, %for.body85.lr.ph ], [ %incdec.ptr113, %for.inc111.for.body85_crit_edge ]
  %loop.3450 = phi i32 [ %conv81, %for.body85.lr.ph ], [ %dec112, %for.inc111.for.body85_crit_edge ]
  %p_vaddr87 = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %seg.1451, i32 0, i32 1
  %104 = ptrtoint ptr %p_vaddr87 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %p_vaddr87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp88.not = icmp ult i32 %103, %105
  br i1 %cmp88.not, label %for.body85.for.inc111_crit_edge, label %land.lhs.true90

for.body85.for.inc111_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc111

land.lhs.true90:                                  ; preds = %for.body85
  %p_memsz95 = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %seg.1451, i32 0, i32 2
  %106 = ptrtoint ptr %p_memsz95 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %p_memsz95, align 4
  %add96 = add i32 %107, %105
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %add96)
  %cmp97.not = icmp ugt i32 %add93, %add96
  br i1 %cmp97.not, label %land.lhs.true90.for.inc111_crit_edge, label %if.then99

land.lhs.true90.for.inc111_crit_edge:             ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc111

if.then99:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %seg.1451 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %seg.1451, align 4
  %110 = add i32 %89, %103
  %111 = add i32 %97, %105
  %add107 = sub i32 %110, %111
  %sub109 = add i32 %add107, %109
  %ph_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 4
  %112 = ptrtoint ptr %ph_addr to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub109, ptr %ph_addr, align 4
  br label %for.end118

for.inc111:                                       ; preds = %land.lhs.true90.for.inc111_crit_edge, %for.body85.for.inc111_crit_edge
  %dec112 = add nsw i32 %loop.3450, -1
  %incdec.ptr113 = getelementptr %struct.elf32_fdpic_loadseg, ptr %seg.1451, i32 1
  %cmp83 = icmp sgt i32 %loop.3450, 1
  br i1 %cmp83, label %for.inc111.for.body85_crit_edge, label %for.inc111.for.end118_crit_edge

for.inc111.for.end118_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end118

for.inc111.for.body85_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body85

for.inc115:                                       ; preds = %lor.lhs.false.for.inc115_crit_edge, %if.end67.for.inc115_crit_edge, %for.body62.for.inc115_crit_edge
  %inc116 = add nuw nsw i32 %loop.2446, 1
  %incdec.ptr117 = getelementptr %struct.elf32_phdr, ptr %phdr.0447, i32 1
  %exitcond478.not = icmp eq i32 %inc116, %conv52
  br i1 %exitcond478.not, label %for.inc115.for.end118_crit_edge, label %for.inc115.for.body62_crit_edge

for.inc115.for.body62_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body62

for.inc115.for.end118_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end118

for.end118:                                       ; preds = %for.inc115.for.end118_crit_edge, %for.inc111.for.end118_crit_edge, %if.then99, %if.end77.for.end118_crit_edge
  br i1 %cmp60445.not, label %for.end118.for.end192_crit_edge, label %for.end118.for.body126_crit_edge

for.end118.for.body126_crit_edge:                 ; preds = %for.end118
  br label %for.body126

for.end118.for.end192_crit_edge:                  ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end192

for.body126:                                      ; preds = %for.inc189.for.body126_crit_edge, %for.end118.for.body126_crit_edge
  %phdr.1455 = phi ptr [ %incdec.ptr191, %for.inc189.for.body126_crit_edge ], [ %93, %for.end118.for.body126_crit_edge ]
  %loop.4454 = phi i32 [ %inc190, %for.inc189.for.body126_crit_edge ], [ 0, %for.end118.for.body126_crit_edge ]
  %113 = ptrtoint ptr %phdr.1455 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %phdr.1455, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp128.not = icmp eq i32 %114, 2
  br i1 %cmp128.not, label %if.end131, label %for.inc189

if.end131:                                        ; preds = %for.body126
  %115 = ptrtoint ptr %nsegs to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %nsegs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp137456.not = icmp eq i16 %116, 0
  br i1 %cmp137456.not, label %if.end131.cleanup278_crit_edge, label %for.body139.lr.ph

if.end131.cleanup278_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

for.body139.lr.ph:                                ; preds = %if.end131
  %conv135 = zext i16 %116 to i32
  %p_vaddr140 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.1455, i32 0, i32 2
  %117 = ptrtoint ptr %p_vaddr140 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %p_vaddr140, align 4
  %p_memsz146 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.1455, i32 0, i32 5
  br label %for.body139

for.body139:                                      ; preds = %for.inc185.for.body139_crit_edge, %for.body139.lr.ph
  %seg.2458 = phi ptr [ %segs, %for.body139.lr.ph ], [ %incdec.ptr187, %for.inc185.for.body139_crit_edge ]
  %loop.5457 = phi i32 [ %conv135, %for.body139.lr.ph ], [ %dec186, %for.inc185.for.body139_crit_edge ]
  %p_vaddr141 = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %seg.2458, i32 0, i32 1
  %119 = ptrtoint ptr %p_vaddr141 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %p_vaddr141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp142.not = icmp ult i32 %118, %120
  br i1 %cmp142.not, label %for.body139.for.inc185_crit_edge, label %land.lhs.true144

for.body139.for.inc185_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc185

land.lhs.true144:                                 ; preds = %for.body139
  %121 = ptrtoint ptr %p_memsz146 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %p_memsz146, align 4
  %add147 = add i32 %122, %118
  %p_memsz149 = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %seg.2458, i32 0, i32 2
  %123 = ptrtoint ptr %p_memsz149 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %p_memsz149, align 4
  %add150 = add i32 %124, %120
  call void @__sanitizer_cov_trace_cmp4(i32 %add147, i32 %add150)
  %cmp151.not = icmp ugt i32 %add147, %add150
  br i1 %cmp151.not, label %land.lhs.true144.for.inc185_crit_edge, label %if.then153

land.lhs.true144.for.inc185_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc185

if.then153:                                       ; preds = %land.lhs.true144
  %sub156 = sub i32 %118, %120
  %125 = ptrtoint ptr %seg.2458 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %seg.2458, align 4
  %add158 = add i32 %126, %sub156
  %dynamic_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %params, i32 0, i32 8
  %127 = ptrtoint ptr %dynamic_addr to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add158, ptr %dynamic_addr, align 4
  %128 = ptrtoint ptr %p_memsz146 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %p_memsz146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp160 = icmp ne i32 %129, 0
  %rem = and i32 %129, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp164.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp160, %cmp164.not
  br i1 %or.cond, label %if.end167, label %if.then153.do.end274_crit_edge

if.then153.do.end274_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end274

if.end167:                                        ; preds = %if.then153
  %div411 = lshr i32 %129, 3
  %130 = inttoptr i32 %add158 to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 861) #13
  %sub171 = add nsw i32 %div411, -1
  %arrayidx172 = getelementptr %struct.dynamic, ptr %130, i32 %sub171
  %131 = tail call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 4
  %133 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !72
  %and.i = and i32 %133, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %134 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx172, i32 -1226833921) #13, !srcloc !81
  %asmresult = extractvalue { i32, i32 } %134, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %133) #13, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool177.not = icmp eq i32 %asmresult, 0
  %asmresult175 = extractvalue { i32, i32 } %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult175)
  %cmp179.not = icmp eq i32 %asmresult175, 0
  %or.cond412 = select i1 %tobool177.not, i1 %cmp179.not, i1 false
  br i1 %or.cond412, label %if.end167.for.end192_crit_edge, label %if.end167.do.end274_crit_edge

if.end167.do.end274_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end274

if.end167.for.end192_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end192

for.inc185:                                       ; preds = %land.lhs.true144.for.inc185_crit_edge, %for.body139.for.inc185_crit_edge
  %dec186 = add nsw i32 %loop.5457, -1
  %incdec.ptr187 = getelementptr %struct.elf32_fdpic_loadseg, ptr %seg.2458, i32 1
  %cmp137 = icmp sgt i32 %loop.5457, 1
  br i1 %cmp137, label %for.inc185.for.body139_crit_edge, label %for.inc185.for.end192_crit_edge

for.inc185.for.end192_crit_edge:                  ; preds = %for.inc185
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end192

for.inc185.for.body139_crit_edge:                 ; preds = %for.inc185
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body139

for.inc189:                                       ; preds = %for.body126
  %inc190 = add nuw nsw i32 %loop.4454, 1
  %incdec.ptr191 = getelementptr %struct.elf32_phdr, ptr %phdr.1455, i32 1
  %exitcond479.not = icmp eq i32 %inc190, %conv52
  br i1 %exitcond479.not, label %for.inc189.for.end192_crit_edge, label %for.inc189.for.body126_crit_edge

for.inc189.for.body126_crit_edge:                 ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body126

for.inc189.for.end192_crit_edge:                  ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end192

for.end192:                                       ; preds = %for.inc189.for.end192_crit_edge, %for.inc185.for.end192_crit_edge, %if.end167.for.end192_crit_edge, %for.end118.for.end192_crit_edge, %if.end48.for.end192_crit_edge
  %135 = ptrtoint ptr %nsegs to i32
  call void @__asan_load2_noabort(i32 %135)
  %.pr = load i16, ptr %nsegs, align 2
  %conv194 = zext i16 %.pr to i32
  %add.ptr = getelementptr %struct.elf32_fdpic_loadmap, ptr %call9.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %.pr)
  %cmp198460 = icmp ugt i16 %.pr, 1
  br i1 %cmp198460, label %for.body200.lr.ph, label %for.end192.cleanup278_crit_edge

for.end192.cleanup278_crit_edge:                  ; preds = %for.end192
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

for.body200.lr.ph:                                ; preds = %for.end192
  %p_vaddr201 = getelementptr %struct.elf32_fdpic_loadmap, ptr %call9.i.i, i32 5
  %p_memsz230 = getelementptr %struct.elf32_fdpic_loadmap, ptr %call9.i.i, i32 6
  br label %for.body200

for.body200:                                      ; preds = %for.inc242.for.body200_crit_edge, %for.body200.lr.ph
  %mseg.0462 = phi ptr [ %segs, %for.body200.lr.ph ], [ %mseg.1, %for.inc242.for.body200_crit_edge ]
  %loop.6461 = phi i32 [ 1, %for.body200.lr.ph ], [ %inc243, %for.inc242.for.body200_crit_edge ]
  %136 = ptrtoint ptr %p_vaddr201 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %p_vaddr201, align 4
  %p_vaddr202 = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %mseg.0462, i32 0, i32 1
  %138 = ptrtoint ptr %p_vaddr202 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %p_vaddr202, align 4
  %sub203 = sub i32 %137, %139
  %140 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr, align 16
  %142 = ptrtoint ptr %mseg.0462 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mseg.0462, align 4
  %sub206 = sub i32 %141, %143
  call void @__sanitizer_cov_trace_cmp4(i32 %sub203, i32 %sub206)
  %cmp207 = icmp eq i32 %sub203, %sub206
  br i1 %cmp207, label %if.then209, label %for.body200.if.end236_crit_edge

for.body200.if.end236_crit_edge:                  ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end236

if.then209:                                       ; preds = %for.body200
  %p_memsz211 = getelementptr inbounds %struct.elf32_fdpic_loadseg, ptr %mseg.0462, i32 0, i32 2
  %144 = ptrtoint ptr %p_memsz211 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %p_memsz211, align 4
  %add212 = add i32 %145, %143
  %add213 = add i32 %add212, 4095
  %and214 = and i32 %add213, -4096
  %and216 = and i32 %141, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and214, i32 %and216)
  %cmp217 = icmp eq i32 %and214, %and216
  br i1 %cmp217, label %if.then219, label %if.then209.if.end236_crit_edge

if.then209.if.end236_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end236

if.then219:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  %sub223 = sub i32 %and214, %add212
  %add225 = add i32 %sub223, %145
  %146 = ptrtoint ptr %p_memsz211 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add225, ptr %p_memsz211, align 4
  %147 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr, align 16
  %and227 = and i32 %148, 4095
  %add229 = add i32 %and227, %add225
  store i32 %add229, ptr %p_memsz211, align 4
  %149 = ptrtoint ptr %p_memsz230 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %p_memsz230, align 8
  %add232 = add i32 %add229, %150
  store i32 %add232, ptr %p_memsz211, align 4
  %151 = ptrtoint ptr %nsegs to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %nsegs, align 2
  %dec234 = add i16 %152, -1
  store i16 %dec234, ptr %nsegs, align 2
  br label %for.inc242

if.end236:                                        ; preds = %if.then209.if.end236_crit_edge, %for.body200.if.end236_crit_edge
  %incdec.ptr237 = getelementptr %struct.elf32_fdpic_loadseg, ptr %mseg.0462, i32 1
  %cmp238.not = icmp eq ptr %incdec.ptr237, %add.ptr
  br i1 %cmp238.not, label %if.end236.for.inc242_crit_edge, label %if.then240

if.end236.for.inc242_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc242

if.then240:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #15
  %153 = call ptr @memcpy(ptr %incdec.ptr237, ptr %add.ptr, i32 12)
  br label %for.inc242

for.inc242:                                       ; preds = %if.then240, %if.end236.for.inc242_crit_edge, %if.then219
  %mseg.1 = phi ptr [ %mseg.0462, %if.then219 ], [ %incdec.ptr237, %if.then240 ], [ %add.ptr, %if.end236.for.inc242_crit_edge ]
  %inc243 = add nuw nsw i32 %loop.6461, 1
  %exitcond480.not = icmp eq i32 %inc243, %conv194
  br i1 %exitcond480.not, label %for.inc242.cleanup278_crit_edge, label %for.inc242.for.body200_crit_edge

for.inc242.for.body200_crit_edge:                 ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body200

for.inc242.cleanup278_crit_edge:                  ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup278

do.end274:                                        ; preds = %if.end167.do.end274_crit_edge, %if.then153.do.end274_crit_edge
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %154 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %155, i32 0, i32 11
  %156 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %i_ino, align 8
  %call277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %what, i32 noundef %157) #17
  br label %cleanup278

cleanup278:                                       ; preds = %do.end274, %for.inc242.cleanup278_crit_edge, %for.end192.cleanup278_crit_edge, %if.end131.cleanup278_crit_edge, %clear_user.exit246.i.cleanup278_crit_edge, %do.end117.i.cleanup278_crit_edge, %if.then93.i.cleanup278_crit_edge, %clear_user.exit.i.cleanup278_crit_edge, %do.end78.i.cleanup278_crit_edge, %sw.epilog.i.cleanup278_crit_edge, %if.end8.i.i.cleanup278_crit_edge, %for.end.cleanup278_crit_edge, %entry.cleanup278_crit_edge
  %retval.0 = phi i32 [ -80, %do.end274 ], [ -80, %for.end.cleanup278_crit_edge ], [ -12, %if.end8.i.i.cleanup278_crit_edge ], [ 0, %for.end192.cleanup278_crit_edge ], [ -80, %entry.cleanup278_crit_edge ], [ 0, %if.end131.cleanup278_crit_edge ], [ 0, %for.inc242.cleanup278_crit_edge ], [ -14, %do.end117.i.cleanup278_crit_edge ], [ -14, %do.end78.i.cleanup278_crit_edge ], [ -14, %clear_user.exit246.i.cleanup278_crit_edge ], [ -14, %clear_user.exit.i.cleanup278_crit_edge ], [ %call.i, %sw.epilog.i.cleanup278_crit_edge ], [ -12, %if.then93.i.cleanup278_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allow_write_access(ptr noundef readonly %file) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_writecount = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %i_writecount, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount, ptr %i_writecount, i32 1, ptr elementtype(i32) %i_writecount) #13, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_elf_fdpic_tables(ptr nocapture noundef readonly %bprm, ptr nocapture noundef writeonly %mm, ptr nocapture noundef %exec_params, ptr nocapture noundef %interp_params) unnamed_addr #2 align 64 {
entry:
  %v = alloca %struct.anon.74, align 4
  %v89 = alloca %struct.anon.75, align 4
  %v135 = alloca %struct.anon.77, align 4
  %v154 = alloca %struct.anon.78, align 4
  %v171 = alloca %struct.anon.79, align 4
  %v188 = alloca %struct.anon.80, align 4
  %v205 = alloca %struct.anon.81, align 4
  %v222 = alloca %struct.anon.82, align 4
  %v239 = alloca %struct.anon.83, align 4
  %v256 = alloca %struct.anon.84, align 4
  %v274 = alloca %struct.anon.85, align 4
  %v295 = alloca %struct.anon.86, align 4
  %v312 = alloca %struct.anon.87, align 4
  %v329 = alloca %struct.anon.88, align 4
  %v347 = alloca %struct.anon.89, align 4
  %v367 = alloca %struct.anon.90, align 4
  %v387 = alloca %struct.anon.91, align 4
  %v407 = alloca %struct.anon.92, align 4
  %v427 = alloca %struct.anon.93, align 4
  %v446 = alloca %struct.anon.94, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i1219 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i1219 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  %p2 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  %6 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p2, align 4
  %call3 = tail call i32 @strlen(ptr noundef nonnull @elf_platform) #20
  %add = add i32 %call3, 1
  %sub = sub i32 %7, %add
  %8 = inttoptr i32 %sub to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup617_crit_edge, label %if.then27.i.i, !prof !69

land.rhs16.i.i.cleanup617_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup617

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef nonnull @elf_platform, i32 noundef %add, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %add, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @elf_platform, i32 noundef %add) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull @elf_platform, i32 noundef %add) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %cmp.not, label %if.end16, label %copy_to_user.exit.cleanup617_crit_edge

copy_to_user.exit.cleanup617_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end16:                                         ; preds = %copy_to_user.exit
  %and = and i32 %sub, -8
  %loadmap = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 2
  %10 = ptrtoint ptr %loadmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %loadmap, align 4
  %nsegs = getelementptr inbounds %struct.elf32_fdpic_loadmap, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nsegs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nsegs, align 2
  %conv = zext i16 %13 to i32
  %mul = mul nuw nsw i32 %conv, 12
  %add17 = add nuw nsw i32 %mul, 4
  %sub18 = sub i32 %and, %add17
  %and19 = and i32 %sub18, -8
  %map_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 5
  %14 = ptrtoint ptr %map_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and19, ptr %map_addr, align 4
  %15 = inttoptr i32 %and19 to ptr
  tail call void @__check_object_size(ptr noundef %11, i32 noundef %add17, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i854 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i854, label %if.end16.cleanup617_crit_edge, label %if.end.i.i858

if.end16.cleanup617_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end.i.i858:                                    ; preds = %if.end16
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 %add17, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i856 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i856)
  %cmp.i6.i857 = icmp eq i32 %asmresult.i.i856, 0
  br i1 %cmp.i6.i857, label %copy_to_user.exit863, label %if.end.i.i858.cleanup617_crit_edge

if.end.i.i858.cleanup617_crit_edge:               ; preds = %if.end.i.i858
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

copy_to_user.exit863:                             ; preds = %if.end.i.i858
  %call.i.i.i859 = tail call zeroext i1 @__kasan_check_read(ptr noundef %11, i32 noundef %add17) #13
  %call.i12.i.i860 = tail call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef %11, i32 noundef %add17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i860)
  %cmp22.not = icmp eq i32 %call.i12.i.i860, 0
  br i1 %cmp22.not, label %if.end25, label %copy_to_user.exit863.cleanup617_crit_edge

copy_to_user.exit863.cleanup617_crit_edge:        ; preds = %copy_to_user.exit863
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end25:                                         ; preds = %copy_to_user.exit863
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %mm28 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %mm28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm28, align 8
  %exec_fdpic_loadmap = getelementptr inbounds %struct.anon.10, ptr %20, i32 0, i32 42, i32 4
  %21 = ptrtoint ptr %exec_fdpic_loadmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and19, ptr %exec_fdpic_loadmap, align 4
  %loadmap29 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 2
  %22 = ptrtoint ptr %loadmap29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %loadmap29, align 4
  %tobool30.not = icmp eq ptr %23, null
  br i1 %tobool30.not, label %if.end25.if.end50_crit_edge, label %if.then31

if.end25.if.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then31:                                        ; preds = %if.end25
  %nsegs33 = getelementptr inbounds %struct.elf32_fdpic_loadmap, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %nsegs33 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nsegs33, align 2
  %conv34 = zext i16 %25 to i32
  %mul35 = mul nuw nsw i32 %conv34, 12
  %add36 = add nuw nsw i32 %mul35, 4
  %sub37 = sub i32 %and19, %add36
  %and38 = and i32 %sub37, -8
  %map_addr39 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 5
  %26 = ptrtoint ptr %map_addr39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and38, ptr %map_addr39, align 4
  %27 = inttoptr i32 %and38 to ptr
  tail call void @__check_object_size(ptr noundef nonnull %23, i32 noundef %add36, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i873 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i873, label %if.then31.cleanup617_crit_edge, label %if.end.i.i877

if.then31.cleanup617_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end.i.i877:                                    ; preds = %if.then31
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 %add36, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i875 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i875)
  %cmp.i6.i876 = icmp eq i32 %asmresult.i.i875, 0
  br i1 %cmp.i6.i876, label %copy_to_user.exit882, label %if.end.i.i877.cleanup617_crit_edge

if.end.i.i877.cleanup617_crit_edge:               ; preds = %if.end.i.i877
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

copy_to_user.exit882:                             ; preds = %if.end.i.i877
  %call.i.i.i878 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %23, i32 noundef %add36) #13
  %call.i12.i.i879 = tail call i32 @arm_copy_to_user(ptr noundef %27, ptr noundef nonnull %23, i32 noundef %add36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i879)
  %cmp42.not = icmp eq i32 %call.i12.i.i879, 0
  br i1 %cmp42.not, label %if.end45, label %copy_to_user.exit882.cleanup617_crit_edge

copy_to_user.exit882.cleanup617_crit_edge:        ; preds = %copy_to_user.exit882
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end45:                                         ; preds = %copy_to_user.exit882
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %mm48 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %mm48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mm48, align 8
  %interp_fdpic_loadmap = getelementptr inbounds %struct.anon.10, ptr %32, i32 0, i32 42, i32 5
  %33 = ptrtoint ptr %interp_fdpic_loadmap to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and38, ptr %interp_fdpic_loadmap, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %if.end25.if.end50_crit_edge
  %sp.2 = phi i32 [ %and38, %if.end45 ], [ %and19, %if.end25.if.end50_crit_edge ]
  %have_execfd = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %34 = ptrtoint ptr %have_execfd to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %have_execfd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool57.not = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %tobool57.not, i32 -136, i32 -144
  %envc = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 13
  %35 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %envc, align 4
  %argc = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 12
  %37 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %argc, align 4
  %reass.add = add i32 %38, %36
  %reass.mul = mul i32 %reass.add, -4
  %mul67.neg = add i32 %sp.2, -12
  %sub68 = add i32 %mul67.neg, %spec.select
  %sub69 = add i32 %sub68, %reass.mul
  %and70 = and i32 %sub69, 12
  %sub71 = sub i32 %sp.2, %and70
  %sub73 = and i32 %sub69, -16
  %sub74 = add i32 %sub71, -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #13
  %39 = getelementptr inbounds %struct.anon.74, ptr %v, i32 0, i32 1
  %40 = inttoptr i32 %sub74 to ptr
  %41 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %v, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %39, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i889 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i889, label %if.end50.copy_to_user.exit898.thread_crit_edge, label %if.end.i.i893

if.end50.copy_to_user.exit898.thread_crit_edge:   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit898.thread

if.end.i.i893:                                    ; preds = %if.end50
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i891 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i891)
  %cmp.i6.i892 = icmp eq i32 %asmresult.i.i891, 0
  br i1 %cmp.i6.i892, label %copy_to_user.exit898, label %if.end.i.i893.copy_to_user.exit898.thread_crit_edge

if.end.i.i893.copy_to_user.exit898.thread_crit_edge: ; preds = %if.end.i.i893
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit898.thread

copy_to_user.exit898.thread:                      ; preds = %if.end.i.i893.copy_to_user.exit898.thread_crit_edge, %if.end50.copy_to_user.exit898.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #13
  br label %cleanup617

copy_to_user.exit898:                             ; preds = %if.end.i.i893
  %call.i.i.i894 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef 8) #13
  %call.i12.i.i895 = call i32 @arm_copy_to_user(ptr noundef %40, ptr noundef nonnull %v, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i895)
  %tobool77.not = icmp eq i32 %call.i12.i.i895, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #13
  br i1 %tobool77.not, label %if.then85, label %copy_to_user.exit898.cleanup617_crit_edge

copy_to_user.exit898.cleanup617_crit_edge:        ; preds = %copy_to_user.exit898
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.then85:                                        ; preds = %copy_to_user.exit898
  %sub86 = add i32 %sub71, -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v89) #13
  %44 = getelementptr inbounds %struct.anon.75, ptr %v89, i32 0, i32 1
  %45 = inttoptr i32 %sub86 to ptr
  %46 = ptrtoint ptr %v89 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 15, ptr %v89, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub, ptr %44, align 4
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i905 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i905, label %if.then85.copy_to_user.exit914.thread_crit_edge, label %if.end.i.i909

if.then85.copy_to_user.exit914.thread_crit_edge:  ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit914.thread

if.end.i.i909:                                    ; preds = %if.then85
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %45, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i907 = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i907)
  %cmp.i6.i908 = icmp eq i32 %asmresult.i.i907, 0
  br i1 %cmp.i6.i908, label %copy_to_user.exit914, label %if.end.i.i909.copy_to_user.exit914.thread_crit_edge

if.end.i.i909.copy_to_user.exit914.thread_crit_edge: ; preds = %if.end.i.i909
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit914.thread

copy_to_user.exit914.thread:                      ; preds = %if.end.i.i909.copy_to_user.exit914.thread_crit_edge, %if.then85.copy_to_user.exit914.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v89) #13
  br label %cleanup617

copy_to_user.exit914:                             ; preds = %if.end.i.i909
  %call.i.i.i910 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v89, i32 noundef 8) #13
  %call.i12.i.i911 = call i32 @arm_copy_to_user(ptr noundef %45, ptr noundef nonnull %v89, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i911)
  %tobool94.not = icmp eq i32 %call.i12.i.i911, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v89) #13
  br i1 %tobool94.not, label %if.end125, label %copy_to_user.exit914.cleanup617_crit_edge

copy_to_user.exit914.cleanup617_crit_edge:        ; preds = %copy_to_user.exit914
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end125:                                        ; preds = %copy_to_user.exit914
  %49 = ptrtoint ptr %have_execfd to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load127 = load i8, ptr %have_execfd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load127)
  %tobool130.not = icmp sgt i8 %bf.load127, -1
  br i1 %tobool130.not, label %if.end125.if.end150_crit_edge, label %if.then131

if.end125.if.end150_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end150

if.then131:                                       ; preds = %if.end125
  %sub132 = add i32 %sub71, -24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v135) #13
  %50 = getelementptr inbounds %struct.anon.77, ptr %v135, i32 0, i32 1
  %51 = inttoptr i32 %sub132 to ptr
  %52 = ptrtoint ptr %v135 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %v135, align 4
  %execfd = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 18
  %53 = ptrtoint ptr %execfd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %execfd, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %50, align 4
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i921 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i921, label %if.then131.copy_to_user.exit930.thread_crit_edge, label %if.end.i.i925

if.then131.copy_to_user.exit930.thread_crit_edge: ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit930.thread

if.end.i.i925:                                    ; preds = %if.then131
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %51, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i923 = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i923)
  %cmp.i6.i924 = icmp eq i32 %asmresult.i.i923, 0
  br i1 %cmp.i6.i924, label %copy_to_user.exit930, label %if.end.i.i925.copy_to_user.exit930.thread_crit_edge

if.end.i.i925.copy_to_user.exit930.thread_crit_edge: ; preds = %if.end.i.i925
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit930.thread

copy_to_user.exit930.thread:                      ; preds = %if.end.i.i925.copy_to_user.exit930.thread_crit_edge, %if.then131.copy_to_user.exit930.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v135) #13
  br label %cleanup617

copy_to_user.exit930:                             ; preds = %if.end.i.i925
  %call.i.i.i926 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v135, i32 noundef 8) #13
  %call.i12.i.i927 = call i32 @arm_copy_to_user(ptr noundef %51, ptr noundef nonnull %v135, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i927)
  %tobool140.not = icmp eq i32 %call.i12.i.i927, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v135) #13
  br i1 %tobool140.not, label %copy_to_user.exit930.if.end150_crit_edge, label %copy_to_user.exit930.cleanup617_crit_edge

copy_to_user.exit930.cleanup617_crit_edge:        ; preds = %copy_to_user.exit930
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

copy_to_user.exit930.if.end150_crit_edge:         ; preds = %copy_to_user.exit930
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end150

if.end150:                                        ; preds = %copy_to_user.exit930.if.end150_crit_edge, %if.end125.if.end150_crit_edge
  %csp.2 = phi i32 [ %sub132, %copy_to_user.exit930.if.end150_crit_edge ], [ %sub86, %if.end125.if.end150_crit_edge ]
  %sub151 = add i32 %csp.2, -120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v154) #13
  %57 = getelementptr inbounds %struct.anon.78, ptr %v154, i32 0, i32 1
  %58 = inttoptr i32 %sub151 to ptr
  %59 = ptrtoint ptr %v154 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 16, ptr %v154, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %60 = load i32, ptr @elf_hwcap, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %57, align 4
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i937 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i937, label %if.end150.copy_to_user.exit946.thread_crit_edge, label %if.end.i.i941

if.end150.copy_to_user.exit946.thread_crit_edge:  ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit946.thread

if.end.i.i941:                                    ; preds = %if.end150
  %62 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %58, i32 8, i32 -1226833920) #19
  %asmresult.i.i939 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i939)
  %cmp.i6.i940 = icmp eq i32 %asmresult.i.i939, 0
  br i1 %cmp.i6.i940, label %copy_to_user.exit946, label %if.end.i.i941.copy_to_user.exit946.thread_crit_edge

if.end.i.i941.copy_to_user.exit946.thread_crit_edge: ; preds = %if.end.i.i941
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit946.thread

copy_to_user.exit946.thread:                      ; preds = %if.end.i.i941.copy_to_user.exit946.thread_crit_edge, %if.end150.copy_to_user.exit946.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v154) #13
  br label %cleanup617

copy_to_user.exit946:                             ; preds = %if.end.i.i941
  %call.i.i.i942 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v154, i32 noundef 8) #13
  %call.i12.i.i943 = call i32 @arm_copy_to_user(ptr noundef %58, ptr noundef nonnull %v154, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i943)
  %tobool159.not = icmp eq i32 %call.i12.i.i943, 0
  %. = zext i1 %tobool159.not to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v154) #13
  br i1 %tobool159.not, label %do.body169, label %copy_to_user.exit946.cleanup617_crit_edge

copy_to_user.exit946.cleanup617_crit_edge:        ; preds = %copy_to_user.exit946
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body169:                                       ; preds = %copy_to_user.exit946
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v171) #13
  %63 = getelementptr inbounds %struct.anon.79, ptr %v171, i32 0, i32 1
  %64 = ptrtoint ptr %v171 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 26, ptr %v171, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap2 to i32))
  %65 = load i32, ptr @elf_hwcap2, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %63, align 4
  %add.ptr174 = getelementptr %struct.anon.79, ptr %58, i32 %.
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i953 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i953, label %do.body169.copy_to_user.exit962.thread_crit_edge, label %if.end.i.i957

do.body169.copy_to_user.exit962.thread_crit_edge: ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit962.thread

if.end.i.i957:                                    ; preds = %do.body169
  %67 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr174, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i955 = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i955)
  %cmp.i6.i956 = icmp eq i32 %asmresult.i.i955, 0
  br i1 %cmp.i6.i956, label %copy_to_user.exit962, label %if.end.i.i957.copy_to_user.exit962.thread_crit_edge

if.end.i.i957.copy_to_user.exit962.thread_crit_edge: ; preds = %if.end.i.i957
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit962.thread

copy_to_user.exit962.thread:                      ; preds = %if.end.i.i957.copy_to_user.exit962.thread_crit_edge, %do.body169.copy_to_user.exit962.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v171) #13
  br label %cleanup617

copy_to_user.exit962:                             ; preds = %if.end.i.i957
  %call.i.i.i958 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v171, i32 noundef 8) #13
  %call.i12.i.i959 = call i32 @arm_copy_to_user(ptr noundef %add.ptr174, ptr noundef nonnull %v171, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i959)
  %tobool176.not = icmp eq i32 %call.i12.i.i959, 0
  %nr.1 = select i1 %tobool176.not, i32 2, i32 %.
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v171) #13
  br i1 %tobool176.not, label %do.body186, label %copy_to_user.exit962.cleanup617_crit_edge

copy_to_user.exit962.cleanup617_crit_edge:        ; preds = %copy_to_user.exit962
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body186:                                       ; preds = %copy_to_user.exit962
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v188) #13
  %68 = getelementptr inbounds %struct.anon.80, ptr %v188, i32 0, i32 1
  %69 = ptrtoint ptr %v188 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 6, ptr %v188, align 4
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4096, ptr %68, align 4
  %add.ptr191 = getelementptr %struct.anon.80, ptr %58, i32 %nr.1
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i969 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i969, label %do.body186.copy_to_user.exit978.thread_crit_edge, label %if.end.i.i973

do.body186.copy_to_user.exit978.thread_crit_edge: ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit978.thread

if.end.i.i973:                                    ; preds = %do.body186
  %71 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr191, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i971 = extractvalue { i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i971)
  %cmp.i6.i972 = icmp eq i32 %asmresult.i.i971, 0
  br i1 %cmp.i6.i972, label %copy_to_user.exit978, label %if.end.i.i973.copy_to_user.exit978.thread_crit_edge

if.end.i.i973.copy_to_user.exit978.thread_crit_edge: ; preds = %if.end.i.i973
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit978.thread

copy_to_user.exit978.thread:                      ; preds = %if.end.i.i973.copy_to_user.exit978.thread_crit_edge, %do.body186.copy_to_user.exit978.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v188) #13
  br label %cleanup617

copy_to_user.exit978:                             ; preds = %if.end.i.i973
  %call.i.i.i974 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v188, i32 noundef 8) #13
  %call.i12.i.i975 = call i32 @arm_copy_to_user(ptr noundef %add.ptr191, ptr noundef nonnull %v188, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i975)
  %tobool193.not = icmp eq i32 %call.i12.i.i975, 0
  %inc196 = zext i1 %tobool193.not to i32
  %nr.2 = add nuw nsw i32 %nr.1, %inc196
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v188) #13
  br i1 %tobool193.not, label %do.body203, label %copy_to_user.exit978.cleanup617_crit_edge

copy_to_user.exit978.cleanup617_crit_edge:        ; preds = %copy_to_user.exit978
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body203:                                       ; preds = %copy_to_user.exit978
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v205) #13
  %72 = getelementptr inbounds %struct.anon.81, ptr %v205, i32 0, i32 1
  %73 = ptrtoint ptr %v205 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 17, ptr %v205, align 4
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 100, ptr %72, align 4
  %add.ptr208 = getelementptr %struct.anon.81, ptr %58, i32 %nr.2
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i985 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i985, label %do.body203.copy_to_user.exit994.thread_crit_edge, label %if.end.i.i989

do.body203.copy_to_user.exit994.thread_crit_edge: ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit994.thread

if.end.i.i989:                                    ; preds = %do.body203
  %75 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr208, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i987 = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i987)
  %cmp.i6.i988 = icmp eq i32 %asmresult.i.i987, 0
  br i1 %cmp.i6.i988, label %copy_to_user.exit994, label %if.end.i.i989.copy_to_user.exit994.thread_crit_edge

if.end.i.i989.copy_to_user.exit994.thread_crit_edge: ; preds = %if.end.i.i989
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit994.thread

copy_to_user.exit994.thread:                      ; preds = %if.end.i.i989.copy_to_user.exit994.thread_crit_edge, %do.body203.copy_to_user.exit994.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v205) #13
  br label %cleanup617

copy_to_user.exit994:                             ; preds = %if.end.i.i989
  %call.i.i.i990 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v205, i32 noundef 8) #13
  %call.i12.i.i991 = call i32 @arm_copy_to_user(ptr noundef %add.ptr208, ptr noundef nonnull %v205, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i991)
  %tobool210.not = icmp eq i32 %call.i12.i.i991, 0
  %inc213 = zext i1 %tobool210.not to i32
  %nr.3 = add nuw nsw i32 %nr.2, %inc213
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v205) #13
  br i1 %tobool210.not, label %do.body220, label %copy_to_user.exit994.cleanup617_crit_edge

copy_to_user.exit994.cleanup617_crit_edge:        ; preds = %copy_to_user.exit994
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body220:                                       ; preds = %copy_to_user.exit994
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v222) #13
  %76 = getelementptr inbounds %struct.anon.82, ptr %v222, i32 0, i32 1
  %77 = ptrtoint ptr %v222 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %v222, align 4
  %ph_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 4
  %78 = ptrtoint ptr %ph_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ph_addr, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %76, align 4
  %add.ptr225 = getelementptr %struct.anon.82, ptr %58, i32 %nr.3
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1001 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1001, label %do.body220.copy_to_user.exit1010.thread_crit_edge, label %if.end.i.i1005

do.body220.copy_to_user.exit1010.thread_crit_edge: ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1010.thread

if.end.i.i1005:                                   ; preds = %do.body220
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr225, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1003 = extractvalue { i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1003)
  %cmp.i6.i1004 = icmp eq i32 %asmresult.i.i1003, 0
  br i1 %cmp.i6.i1004, label %copy_to_user.exit1010, label %if.end.i.i1005.copy_to_user.exit1010.thread_crit_edge

if.end.i.i1005.copy_to_user.exit1010.thread_crit_edge: ; preds = %if.end.i.i1005
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1010.thread

copy_to_user.exit1010.thread:                     ; preds = %if.end.i.i1005.copy_to_user.exit1010.thread_crit_edge, %do.body220.copy_to_user.exit1010.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v222) #13
  br label %cleanup617

copy_to_user.exit1010:                            ; preds = %if.end.i.i1005
  %call.i.i.i1006 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v222, i32 noundef 8) #13
  %call.i12.i.i1007 = call i32 @arm_copy_to_user(ptr noundef %add.ptr225, ptr noundef nonnull %v222, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1007)
  %tobool227.not = icmp eq i32 %call.i12.i.i1007, 0
  %inc230 = zext i1 %tobool227.not to i32
  %nr.4 = add nuw nsw i32 %nr.3, %inc230
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v222) #13
  br i1 %tobool227.not, label %do.body237, label %copy_to_user.exit1010.cleanup617_crit_edge

copy_to_user.exit1010.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1010
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body237:                                       ; preds = %copy_to_user.exit1010
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v239) #13
  %82 = getelementptr inbounds %struct.anon.83, ptr %v239, i32 0, i32 1
  %83 = ptrtoint ptr %v239 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %v239, align 4
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 32, ptr %82, align 4
  %add.ptr242 = getelementptr %struct.anon.83, ptr %58, i32 %nr.4
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1017 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1017, label %do.body237.copy_to_user.exit1026.thread_crit_edge, label %if.end.i.i1021

do.body237.copy_to_user.exit1026.thread_crit_edge: ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1026.thread

if.end.i.i1021:                                   ; preds = %do.body237
  %85 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr242, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1019 = extractvalue { i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1019)
  %cmp.i6.i1020 = icmp eq i32 %asmresult.i.i1019, 0
  br i1 %cmp.i6.i1020, label %copy_to_user.exit1026, label %if.end.i.i1021.copy_to_user.exit1026.thread_crit_edge

if.end.i.i1021.copy_to_user.exit1026.thread_crit_edge: ; preds = %if.end.i.i1021
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1026.thread

copy_to_user.exit1026.thread:                     ; preds = %if.end.i.i1021.copy_to_user.exit1026.thread_crit_edge, %do.body237.copy_to_user.exit1026.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v239) #13
  br label %cleanup617

copy_to_user.exit1026:                            ; preds = %if.end.i.i1021
  %call.i.i.i1022 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v239, i32 noundef 8) #13
  %call.i12.i.i1023 = call i32 @arm_copy_to_user(ptr noundef %add.ptr242, ptr noundef nonnull %v239, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1023)
  %tobool244.not = icmp eq i32 %call.i12.i.i1023, 0
  %inc247 = zext i1 %tobool244.not to i32
  %nr.5 = add nuw nsw i32 %nr.4, %inc247
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v239) #13
  br i1 %tobool244.not, label %do.body254, label %copy_to_user.exit1026.cleanup617_crit_edge

copy_to_user.exit1026.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1026
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body254:                                       ; preds = %copy_to_user.exit1026
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v256) #13
  %86 = getelementptr inbounds %struct.anon.84, ptr %v256, i32 0, i32 1
  %87 = ptrtoint ptr %v256 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 5, ptr %v256, align 4
  %e_phnum = getelementptr inbounds %struct.elf32_hdr, ptr %exec_params, i32 0, i32 10
  %88 = ptrtoint ptr %e_phnum to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %e_phnum, align 4
  %conv258 = zext i16 %89 to i32
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv258, ptr %86, align 4
  %add.ptr260 = getelementptr %struct.anon.84, ptr %58, i32 %nr.5
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1033 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1033, label %do.body254.copy_to_user.exit1042.thread_crit_edge, label %if.end.i.i1037

do.body254.copy_to_user.exit1042.thread_crit_edge: ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1042.thread

if.end.i.i1037:                                   ; preds = %do.body254
  %91 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr260, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1035 = extractvalue { i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1035)
  %cmp.i6.i1036 = icmp eq i32 %asmresult.i.i1035, 0
  br i1 %cmp.i6.i1036, label %copy_to_user.exit1042, label %if.end.i.i1037.copy_to_user.exit1042.thread_crit_edge

if.end.i.i1037.copy_to_user.exit1042.thread_crit_edge: ; preds = %if.end.i.i1037
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1042.thread

copy_to_user.exit1042.thread:                     ; preds = %if.end.i.i1037.copy_to_user.exit1042.thread_crit_edge, %do.body254.copy_to_user.exit1042.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v256) #13
  br label %cleanup617

copy_to_user.exit1042:                            ; preds = %if.end.i.i1037
  %call.i.i.i1038 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v256, i32 noundef 8) #13
  %call.i12.i.i1039 = call i32 @arm_copy_to_user(ptr noundef %add.ptr260, ptr noundef nonnull %v256, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1039)
  %tobool262.not = icmp eq i32 %call.i12.i.i1039, 0
  %inc265 = zext i1 %tobool262.not to i32
  %nr.6 = add nuw nsw i32 %nr.5, %inc265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v256) #13
  br i1 %tobool262.not, label %do.body272, label %copy_to_user.exit1042.cleanup617_crit_edge

copy_to_user.exit1042.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1042
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body272:                                       ; preds = %copy_to_user.exit1042
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v274) #13
  %92 = getelementptr inbounds %struct.anon.85, ptr %v274, i32 0, i32 1
  %93 = ptrtoint ptr %v274 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 7, ptr %v274, align 4
  %elfhdr_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 3
  %94 = ptrtoint ptr %elfhdr_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %elfhdr_addr, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %92, align 4
  %add.ptr277 = getelementptr %struct.anon.85, ptr %58, i32 %nr.6
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1049 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1049, label %do.body272.copy_to_user.exit1058.thread_crit_edge, label %if.end.i.i1053

do.body272.copy_to_user.exit1058.thread_crit_edge: ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1058.thread

if.end.i.i1053:                                   ; preds = %do.body272
  %97 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr277, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1051 = extractvalue { i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1051)
  %cmp.i6.i1052 = icmp eq i32 %asmresult.i.i1051, 0
  br i1 %cmp.i6.i1052, label %copy_to_user.exit1058, label %if.end.i.i1053.copy_to_user.exit1058.thread_crit_edge

if.end.i.i1053.copy_to_user.exit1058.thread_crit_edge: ; preds = %if.end.i.i1053
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1058.thread

copy_to_user.exit1058.thread:                     ; preds = %if.end.i.i1053.copy_to_user.exit1058.thread_crit_edge, %do.body272.copy_to_user.exit1058.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v274) #13
  br label %cleanup617

copy_to_user.exit1058:                            ; preds = %if.end.i.i1053
  %call.i.i.i1054 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v274, i32 noundef 8) #13
  %call.i12.i.i1055 = call i32 @arm_copy_to_user(ptr noundef %add.ptr277, ptr noundef nonnull %v274, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1055)
  %tobool279.not = icmp eq i32 %call.i12.i.i1055, 0
  %inc282 = zext i1 %tobool279.not to i32
  %nr.7 = add nuw nsw i32 %nr.6, %inc282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v274) #13
  br i1 %tobool279.not, label %do.end288, label %copy_to_user.exit1058.cleanup617_crit_edge

copy_to_user.exit1058.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1058
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.end288:                                        ; preds = %copy_to_user.exit1058
  %interp_flags = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 17
  %98 = ptrtoint ptr %interp_flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %interp_flags, align 4
  %and289 = lshr i32 %99, 3
  %and289.lobit = and i32 %and289, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v295) #13
  %100 = getelementptr inbounds %struct.anon.86, ptr %v295, i32 0, i32 1
  %101 = ptrtoint ptr %v295 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 8, ptr %v295, align 4
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and289.lobit, ptr %100, align 4
  %add.ptr298 = getelementptr %struct.anon.86, ptr %58, i32 %nr.7
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1065 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1065, label %do.end288.copy_to_user.exit1074.thread_crit_edge, label %if.end.i.i1069

do.end288.copy_to_user.exit1074.thread_crit_edge: ; preds = %do.end288
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1074.thread

if.end.i.i1069:                                   ; preds = %do.end288
  %103 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr298, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1067 = extractvalue { i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1067)
  %cmp.i6.i1068 = icmp eq i32 %asmresult.i.i1067, 0
  br i1 %cmp.i6.i1068, label %copy_to_user.exit1074, label %if.end.i.i1069.copy_to_user.exit1074.thread_crit_edge

if.end.i.i1069.copy_to_user.exit1074.thread_crit_edge: ; preds = %if.end.i.i1069
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1074.thread

copy_to_user.exit1074.thread:                     ; preds = %if.end.i.i1069.copy_to_user.exit1074.thread_crit_edge, %do.end288.copy_to_user.exit1074.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v295) #13
  br label %cleanup617

copy_to_user.exit1074:                            ; preds = %if.end.i.i1069
  %call.i.i.i1070 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v295, i32 noundef 8) #13
  %call.i12.i.i1071 = call i32 @arm_copy_to_user(ptr noundef %add.ptr298, ptr noundef nonnull %v295, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1071)
  %tobool300.not = icmp eq i32 %call.i12.i.i1071, 0
  %inc303 = zext i1 %tobool300.not to i32
  %nr.8 = add nuw nsw i32 %nr.7, %inc303
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v295) #13
  br i1 %tobool300.not, label %do.body310, label %copy_to_user.exit1074.cleanup617_crit_edge

copy_to_user.exit1074.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1074
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body310:                                       ; preds = %copy_to_user.exit1074
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v312) #13
  %104 = getelementptr inbounds %struct.anon.87, ptr %v312, i32 0, i32 1
  %105 = ptrtoint ptr %v312 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 9, ptr %v312, align 4
  %entry_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 6
  %106 = ptrtoint ptr %entry_addr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %entry_addr, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %104, align 4
  %add.ptr315 = getelementptr %struct.anon.87, ptr %58, i32 %nr.8
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1081 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1081, label %do.body310.copy_to_user.exit1090.thread_crit_edge, label %if.end.i.i1085

do.body310.copy_to_user.exit1090.thread_crit_edge: ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1090.thread

if.end.i.i1085:                                   ; preds = %do.body310
  %109 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr315, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1083 = extractvalue { i32, i32 } %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1083)
  %cmp.i6.i1084 = icmp eq i32 %asmresult.i.i1083, 0
  br i1 %cmp.i6.i1084, label %copy_to_user.exit1090, label %if.end.i.i1085.copy_to_user.exit1090.thread_crit_edge

if.end.i.i1085.copy_to_user.exit1090.thread_crit_edge: ; preds = %if.end.i.i1085
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1090.thread

copy_to_user.exit1090.thread:                     ; preds = %if.end.i.i1085.copy_to_user.exit1090.thread_crit_edge, %do.body310.copy_to_user.exit1090.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v312) #13
  br label %cleanup617

copy_to_user.exit1090:                            ; preds = %if.end.i.i1085
  %call.i.i.i1086 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v312, i32 noundef 8) #13
  %call.i12.i.i1087 = call i32 @arm_copy_to_user(ptr noundef %add.ptr315, ptr noundef nonnull %v312, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1087)
  %tobool317.not = icmp eq i32 %call.i12.i.i1087, 0
  %inc320 = zext i1 %tobool317.not to i32
  %nr.9 = add nuw nsw i32 %nr.8, %inc320
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v312) #13
  br i1 %tobool317.not, label %do.body327, label %copy_to_user.exit1090.cleanup617_crit_edge

copy_to_user.exit1090.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1090
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body327:                                       ; preds = %copy_to_user.exit1090
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v329) #13
  %110 = getelementptr inbounds %struct.anon.88, ptr %v329, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %110, align 4, !annotation !68
  %112 = ptrtoint ptr %v329 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 11, ptr %v329, align 4
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %113 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %115 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %115)
  %.unpack = load i32, ptr %uid, align 4
  %116 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call331 = call i32 @from_kuid_munged(ptr noundef %114, [1 x i32] %116) #13
  %117 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call331, ptr %110, align 4
  %add.ptr333 = getelementptr %struct.anon.88, ptr %58, i32 %nr.9
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1097 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1097, label %do.body327.copy_to_user.exit1106.thread_crit_edge, label %if.end.i.i1101

do.body327.copy_to_user.exit1106.thread_crit_edge: ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1106.thread

if.end.i.i1101:                                   ; preds = %do.body327
  %118 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr333, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1099 = extractvalue { i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1099)
  %cmp.i6.i1100 = icmp eq i32 %asmresult.i.i1099, 0
  br i1 %cmp.i6.i1100, label %copy_to_user.exit1106, label %if.end.i.i1101.copy_to_user.exit1106.thread_crit_edge

if.end.i.i1101.copy_to_user.exit1106.thread_crit_edge: ; preds = %if.end.i.i1101
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1106.thread

copy_to_user.exit1106.thread:                     ; preds = %if.end.i.i1101.copy_to_user.exit1106.thread_crit_edge, %do.body327.copy_to_user.exit1106.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v329) #13
  br label %cleanup617

copy_to_user.exit1106:                            ; preds = %if.end.i.i1101
  %call.i.i.i1102 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v329, i32 noundef 8) #13
  %call.i12.i.i1103 = call i32 @arm_copy_to_user(ptr noundef %add.ptr333, ptr noundef nonnull %v329, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1103)
  %tobool335.not = icmp eq i32 %call.i12.i.i1103, 0
  %inc338 = zext i1 %tobool335.not to i32
  %nr.10 = add nuw nsw i32 %nr.9, %inc338
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v329) #13
  br i1 %tobool335.not, label %do.body345, label %copy_to_user.exit1106.cleanup617_crit_edge

copy_to_user.exit1106.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body345:                                       ; preds = %copy_to_user.exit1106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v347) #13
  %119 = getelementptr inbounds %struct.anon.89, ptr %v347, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %119, align 4, !annotation !68
  %121 = ptrtoint ptr %v347 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 12, ptr %v347, align 4
  %122 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %user_ns, align 4
  %euid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %124 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %124)
  %.unpack840 = load i32, ptr %euid, align 4
  %125 = insertvalue [1 x i32] undef, i32 %.unpack840, 0
  %call351 = call i32 @from_kuid_munged(ptr noundef %123, [1 x i32] %125) #13
  %126 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call351, ptr %119, align 4
  %add.ptr353 = getelementptr %struct.anon.89, ptr %58, i32 %nr.10
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1113 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1113, label %do.body345.copy_to_user.exit1122.thread_crit_edge, label %if.end.i.i1117

do.body345.copy_to_user.exit1122.thread_crit_edge: ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1122.thread

if.end.i.i1117:                                   ; preds = %do.body345
  %127 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr353, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1115 = extractvalue { i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1115)
  %cmp.i6.i1116 = icmp eq i32 %asmresult.i.i1115, 0
  br i1 %cmp.i6.i1116, label %copy_to_user.exit1122, label %if.end.i.i1117.copy_to_user.exit1122.thread_crit_edge

if.end.i.i1117.copy_to_user.exit1122.thread_crit_edge: ; preds = %if.end.i.i1117
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1122.thread

copy_to_user.exit1122.thread:                     ; preds = %if.end.i.i1117.copy_to_user.exit1122.thread_crit_edge, %do.body345.copy_to_user.exit1122.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v347) #13
  br label %cleanup617

copy_to_user.exit1122:                            ; preds = %if.end.i.i1117
  %call.i.i.i1118 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v347, i32 noundef 8) #13
  %call.i12.i.i1119 = call i32 @arm_copy_to_user(ptr noundef %add.ptr353, ptr noundef nonnull %v347, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1119)
  %tobool355.not = icmp eq i32 %call.i12.i.i1119, 0
  %inc358 = zext i1 %tobool355.not to i32
  %nr.11 = add nuw nsw i32 %nr.10, %inc358
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v347) #13
  br i1 %tobool355.not, label %do.body365, label %copy_to_user.exit1122.cleanup617_crit_edge

copy_to_user.exit1122.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1122
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body365:                                       ; preds = %copy_to_user.exit1122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v367) #13
  %128 = getelementptr inbounds %struct.anon.90, ptr %v367, i32 0, i32 1
  %129 = ptrtoint ptr %v367 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 13, ptr %v367, align 4
  %130 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %user_ns, align 4
  %gid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %132 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %132)
  %.unpack841 = load i32, ptr %gid, align 4
  %133 = insertvalue [1 x i32] undef, i32 %.unpack841, 0
  %call371 = call i32 @from_kgid_munged(ptr noundef %131, [1 x i32] %133) #13
  %134 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call371, ptr %128, align 4
  %add.ptr373 = getelementptr %struct.anon.90, ptr %58, i32 %nr.11
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1129 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1129, label %do.body365.copy_to_user.exit1138.thread_crit_edge, label %if.end.i.i1133

do.body365.copy_to_user.exit1138.thread_crit_edge: ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1138.thread

if.end.i.i1133:                                   ; preds = %do.body365
  %135 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr373, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1131 = extractvalue { i32, i32 } %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1131)
  %cmp.i6.i1132 = icmp eq i32 %asmresult.i.i1131, 0
  br i1 %cmp.i6.i1132, label %copy_to_user.exit1138, label %if.end.i.i1133.copy_to_user.exit1138.thread_crit_edge

if.end.i.i1133.copy_to_user.exit1138.thread_crit_edge: ; preds = %if.end.i.i1133
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1138.thread

copy_to_user.exit1138.thread:                     ; preds = %if.end.i.i1133.copy_to_user.exit1138.thread_crit_edge, %do.body365.copy_to_user.exit1138.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v367) #13
  br label %cleanup617

copy_to_user.exit1138:                            ; preds = %if.end.i.i1133
  %call.i.i.i1134 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v367, i32 noundef 8) #13
  %call.i12.i.i1135 = call i32 @arm_copy_to_user(ptr noundef %add.ptr373, ptr noundef nonnull %v367, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1135)
  %tobool375.not = icmp eq i32 %call.i12.i.i1135, 0
  %inc378 = zext i1 %tobool375.not to i32
  %nr.12 = add nuw nsw i32 %nr.11, %inc378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v367) #13
  br i1 %tobool375.not, label %do.body385, label %copy_to_user.exit1138.cleanup617_crit_edge

copy_to_user.exit1138.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1138
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body385:                                       ; preds = %copy_to_user.exit1138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v387) #13
  %136 = getelementptr inbounds %struct.anon.91, ptr %v387, i32 0, i32 1
  %137 = ptrtoint ptr %v387 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 14, ptr %v387, align 4
  %138 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %user_ns, align 4
  %egid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 9
  %140 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %140)
  %.unpack842 = load i32, ptr %egid, align 4
  %141 = insertvalue [1 x i32] undef, i32 %.unpack842, 0
  %call391 = call i32 @from_kgid_munged(ptr noundef %139, [1 x i32] %141) #13
  %142 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call391, ptr %136, align 4
  %add.ptr393 = getelementptr %struct.anon.91, ptr %58, i32 %nr.12
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1145 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1145, label %do.body385.copy_to_user.exit1154.thread_crit_edge, label %if.end.i.i1149

do.body385.copy_to_user.exit1154.thread_crit_edge: ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1154.thread

if.end.i.i1149:                                   ; preds = %do.body385
  %143 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr393, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1147 = extractvalue { i32, i32 } %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1147)
  %cmp.i6.i1148 = icmp eq i32 %asmresult.i.i1147, 0
  br i1 %cmp.i6.i1148, label %copy_to_user.exit1154, label %if.end.i.i1149.copy_to_user.exit1154.thread_crit_edge

if.end.i.i1149.copy_to_user.exit1154.thread_crit_edge: ; preds = %if.end.i.i1149
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1154.thread

copy_to_user.exit1154.thread:                     ; preds = %if.end.i.i1149.copy_to_user.exit1154.thread_crit_edge, %do.body385.copy_to_user.exit1154.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v387) #13
  br label %cleanup617

copy_to_user.exit1154:                            ; preds = %if.end.i.i1149
  %call.i.i.i1150 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v387, i32 noundef 8) #13
  %call.i12.i.i1151 = call i32 @arm_copy_to_user(ptr noundef %add.ptr393, ptr noundef nonnull %v387, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1151)
  %tobool395.not = icmp eq i32 %call.i12.i.i1151, 0
  %inc398 = zext i1 %tobool395.not to i32
  %nr.13 = add nuw nsw i32 %nr.12, %inc398
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v387) #13
  br i1 %tobool395.not, label %do.body405, label %copy_to_user.exit1154.cleanup617_crit_edge

copy_to_user.exit1154.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1154
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body405:                                       ; preds = %copy_to_user.exit1154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v407) #13
  %144 = getelementptr inbounds %struct.anon.92, ptr %v407, i32 0, i32 1
  %145 = ptrtoint ptr %v407 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 23, ptr %v407, align 4
  %146 = ptrtoint ptr %have_execfd to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load409 = load i8, ptr %have_execfd, align 4
  %bf.lshr410 = lshr i8 %bf.load409, 5
  %bf.clear = and i8 %bf.lshr410, 1
  %bf.cast411 = zext i8 %bf.clear to i32
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %bf.cast411, ptr %144, align 4
  %add.ptr413 = getelementptr %struct.anon.92, ptr %58, i32 %nr.13
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1161 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1161, label %do.body405.copy_to_user.exit1170.thread_crit_edge, label %if.end.i.i1165

do.body405.copy_to_user.exit1170.thread_crit_edge: ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1170.thread

if.end.i.i1165:                                   ; preds = %do.body405
  %148 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr413, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1163 = extractvalue { i32, i32 } %148, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1163)
  %cmp.i6.i1164 = icmp eq i32 %asmresult.i.i1163, 0
  br i1 %cmp.i6.i1164, label %copy_to_user.exit1170, label %if.end.i.i1165.copy_to_user.exit1170.thread_crit_edge

if.end.i.i1165.copy_to_user.exit1170.thread_crit_edge: ; preds = %if.end.i.i1165
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1170.thread

copy_to_user.exit1170.thread:                     ; preds = %if.end.i.i1165.copy_to_user.exit1170.thread_crit_edge, %do.body405.copy_to_user.exit1170.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v407) #13
  br label %cleanup617

copy_to_user.exit1170:                            ; preds = %if.end.i.i1165
  %call.i.i.i1166 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v407, i32 noundef 8) #13
  %call.i12.i.i1167 = call i32 @arm_copy_to_user(ptr noundef %add.ptr413, ptr noundef nonnull %v407, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1167)
  %tobool415.not = icmp eq i32 %call.i12.i.i1167, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v407) #13
  br i1 %tobool415.not, label %do.body425, label %copy_to_user.exit1170.cleanup617_crit_edge

copy_to_user.exit1170.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1170
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body425:                                       ; preds = %copy_to_user.exit1170
  %inc418 = add nuw nsw i32 %nr.13, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v427) #13
  %149 = getelementptr inbounds %struct.anon.93, ptr %v427, i32 0, i32 1
  %150 = ptrtoint ptr %v427 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 31, ptr %v427, align 4
  %exec = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 20
  %151 = ptrtoint ptr %exec to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %exec, align 4
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %149, align 4
  %add.ptr430 = getelementptr %struct.anon.93, ptr %58, i32 %inc418
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1177 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1177, label %do.body425.copy_to_user.exit1186.thread_crit_edge, label %if.end.i.i1181

do.body425.copy_to_user.exit1186.thread_crit_edge: ; preds = %do.body425
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1186.thread

if.end.i.i1181:                                   ; preds = %do.body425
  %154 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr430, i32 8, i32 -1226833920) #19, !srcloc !82
  %asmresult.i.i1179 = extractvalue { i32, i32 } %154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1179)
  %cmp.i6.i1180 = icmp eq i32 %asmresult.i.i1179, 0
  br i1 %cmp.i6.i1180, label %copy_to_user.exit1186, label %if.end.i.i1181.copy_to_user.exit1186.thread_crit_edge

if.end.i.i1181.copy_to_user.exit1186.thread_crit_edge: ; preds = %if.end.i.i1181
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit1186.thread

copy_to_user.exit1186.thread:                     ; preds = %if.end.i.i1181.copy_to_user.exit1186.thread_crit_edge, %do.body425.copy_to_user.exit1186.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v427) #13
  br label %cleanup617

copy_to_user.exit1186:                            ; preds = %if.end.i.i1181
  %call.i.i.i1182 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v427, i32 noundef 8) #13
  %call.i12.i.i1183 = call i32 @arm_copy_to_user(ptr noundef %add.ptr430, ptr noundef nonnull %v427, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1183)
  %tobool432.not = icmp eq i32 %call.i12.i.i1183, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v427) #13
  br i1 %tobool432.not, label %do.end441, label %copy_to_user.exit1186.cleanup617_crit_edge

copy_to_user.exit1186.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1186
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.end441:                                        ; preds = %copy_to_user.exit1186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v446) #13
  %155 = getelementptr inbounds %struct.anon.94, ptr %v446, i32 0, i32 1
  %156 = ptrtoint ptr %v446 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 33, ptr %v446, align 4
  %157 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task, align 8
  %mm450 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 53
  %159 = ptrtoint ptr %mm450 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mm450, align 8
  %vdso = getelementptr inbounds %struct.anon.10, ptr %160, i32 0, i32 42, i32 3
  %161 = ptrtoint ptr %vdso to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %vdso, align 8
  %163 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %155, align 4
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #13
  %call.i.i1193 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i1193, label %copy_to_user.exit1202.thread, label %copy_to_user.exit1202

copy_to_user.exit1202.thread:                     ; preds = %do.end441
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v446) #13
  br label %cleanup617

copy_to_user.exit1202:                            ; preds = %do.end441
  %call.i.i.i1198 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v446, i32 noundef 8) #13
  %call.i12.i.i1199 = call i32 @arm_copy_to_user(ptr noundef %58, ptr noundef nonnull %v446, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1199)
  %tobool455.not = icmp eq i32 %call.i12.i.i1199, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v446) #13
  br i1 %tobool455.not, label %do.end466, label %copy_to_user.exit1202.cleanup617_crit_edge

copy_to_user.exit1202.cleanup617_crit_edge:       ; preds = %copy_to_user.exit1202
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.end466:                                        ; preds = %copy_to_user.exit1202
  %164 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %envc, align 4
  %add468.neg = mul i32 %165, -4
  %mul469.neg = add i32 %csp.2, -124
  %sub470 = add i32 %mul469.neg, %add468.neg
  %166 = inttoptr i32 %sub470 to ptr
  %167 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %argc, align 4
  %add472.neg = mul i32 %168, -4
  %mul473.neg = add i32 %add472.neg, -4
  %sub474 = add i32 %mul473.neg, %sub470
  %169 = inttoptr i32 %sub474 to ptr
  %sub475 = add i32 %sub474, -4
  %170 = inttoptr i32 %sub475 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 682) #13
  %171 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 4
  %173 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !72
  %and.i = and i32 %173, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %174 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %170, i32 %168, i32 -1226833921) #13, !srcloc !83
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %173) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool483.not = icmp eq i32 %174, 0
  br i1 %tobool483.not, label %do.body486, label %do.end466.cleanup617_crit_edge

do.end466.cleanup617_crit_edge:                   ; preds = %do.end466
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

do.body486:                                       ; preds = %do.end466
  call void @__sanitizer_cov_trace_cmp4(i32 %sub475, i32 %sub73)
  %cmp487.not = icmp eq i32 %sub475, %sub73
  br i1 %cmp487.not, label %do.end500, label %do.body492, !prof !69

do.body492:                                       ; preds = %do.body486
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/binfmt_elf_fdpic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 685, 0\0A.popsection", ""() #13, !srcloc !84
  unreachable

do.end500:                                        ; preds = %do.body486
  %175 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %p2, align 4
  %177 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task, align 8
  %mm504 = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 53
  %179 = ptrtoint ptr %mm504 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mm504, align 8
  %arg_start = getelementptr inbounds %struct.anon.10, ptr %180, i32 0, i32 35
  %181 = ptrtoint ptr %arg_start to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %176, ptr %arg_start, align 8
  %182 = load ptr, ptr %task, align 8
  %mm507 = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 53
  %183 = ptrtoint ptr %mm507 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mm507, align 8
  %arg_start508 = getelementptr inbounds %struct.anon.10, ptr %184, i32 0, i32 35
  %185 = ptrtoint ptr %arg_start508 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arg_start508, align 8
  %187 = inttoptr i32 %186 to ptr
  %188 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp5101301 = icmp sgt i32 %189, 0
  br i1 %cmp5101301, label %do.end500.for.body_crit_edge, label %do.end500.for.end_crit_edge

do.end500.for.end_crit_edge:                      ; preds = %do.end500
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end500.for.body_crit_edge:                     ; preds = %do.end500
  br label %for.body

for.body:                                         ; preds = %if.end535.for.body_crit_edge, %do.end500.for.body_crit_edge
  %argv.01304 = phi ptr [ %incdec.ptr, %if.end535.for.body_crit_edge ], [ %169, %do.end500.for.body_crit_edge ]
  %p.01303 = phi ptr [ %add.ptr536, %if.end535.for.body_crit_edge ], [ %187, %do.end500.for.body_crit_edge ]
  %loop.01302 = phi i32 [ %dec, %if.end535.for.body_crit_edge ], [ %189, %do.end500.for.body_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %argv.01304, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 697) #13
  %190 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i1203 = and i32 %190, -16384
  %191 = inttoptr i32 %and.i.i.i1203 to ptr
  %cpu_domain.i.i1204 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 4
  %192 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i1204) #4, !srcloc !72
  %and.i1205 = and i32 %192, -13
  %or.i1206 = or i32 %and.i1205, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i1206) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %193 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %argv.01304, ptr %p.01303, i32 -1226833921) #13, !srcloc !85
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %192) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool527.not = icmp eq i32 %193, 0
  br i1 %tobool527.not, label %if.end529, label %for.body.cleanup617_crit_edge

for.body.cleanup617_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end529:                                        ; preds = %for.body
  %call530 = call i32 @strnlen_user(ptr noundef %p.01303, i32 noundef 131072) #13
  %194 = add i32 %call530, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %194)
  %195 = icmp ult i32 %194, -131072
  br i1 %195, label %if.end529.cleanup617_crit_edge, label %if.end535

if.end529.cleanup617_crit_edge:                   ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end535:                                        ; preds = %if.end529
  %add.ptr536 = getelementptr i8, ptr %p.01303, i32 %call530
  %dec = add nsw i32 %loop.01302, -1
  %cmp510 = icmp sgt i32 %loop.01302, 1
  br i1 %cmp510, label %if.end535.for.body_crit_edge, label %if.end535.for.end_crit_edge

if.end535.for.end_crit_edge:                      ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end535.for.body_crit_edge:                     ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end535.for.end_crit_edge, %do.end500.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %187, %do.end500.for.end_crit_edge ], [ %add.ptr536, %if.end535.for.end_crit_edge ]
  %argv.0.lcssa = phi ptr [ %169, %do.end500.for.end_crit_edge ], [ %incdec.ptr, %if.end535.for.end_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 704) #13
  %196 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i1207 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i.i1207 to ptr
  %cpu_domain.i.i1208 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 4
  %198 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i1208) #4, !srcloc !72
  %and.i1209 = and i32 %198, -13
  %or.i1210 = or i32 %and.i1209, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i1210) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %199 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %argv.0.lcssa, ptr null, i32 -1226833921) #13, !srcloc !86
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %198) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool552.not = icmp eq i32 %199, 0
  br i1 %tobool552.not, label %if.end554, label %for.end.cleanup617_crit_edge

for.end.cleanup617_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end554:                                        ; preds = %for.end
  %200 = ptrtoint ptr %p.0.lcssa to i32
  %201 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %task, align 8
  %mm557 = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 53
  %203 = ptrtoint ptr %mm557 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mm557, align 8
  %arg_end = getelementptr inbounds %struct.anon.10, ptr %204, i32 0, i32 36
  %205 = ptrtoint ptr %arg_end to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %200, ptr %arg_end, align 4
  %206 = load ptr, ptr %task, align 8
  %mm560 = getelementptr inbounds %struct.task_struct, ptr %206, i32 0, i32 53
  %207 = ptrtoint ptr %mm560 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mm560, align 8
  %env_start = getelementptr inbounds %struct.anon.10, ptr %208, i32 0, i32 37
  %209 = ptrtoint ptr %env_start to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %200, ptr %env_start, align 8
  %210 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %envc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp5631306 = icmp sgt i32 %211, 0
  br i1 %cmp5631306, label %if.end554.for.body565_crit_edge, label %if.end554.for.end595_crit_edge

if.end554.for.end595_crit_edge:                   ; preds = %if.end554
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end595

if.end554.for.body565_crit_edge:                  ; preds = %if.end554
  br label %for.body565

for.body565:                                      ; preds = %if.end591.for.body565_crit_edge, %if.end554.for.body565_crit_edge
  %envp.01309 = phi ptr [ %incdec.ptr569, %if.end591.for.body565_crit_edge ], [ %166, %if.end554.for.body565_crit_edge ]
  %p.11308 = phi ptr [ %add.ptr592, %if.end591.for.body565_crit_edge ], [ %p.0.lcssa, %if.end554.for.body565_crit_edge ]
  %loop.11307 = phi i32 [ %dec594, %if.end591.for.body565_crit_edge ], [ %211, %if.end554.for.body565_crit_edge ]
  %incdec.ptr569 = getelementptr ptr, ptr %envp.01309, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 711) #13
  %212 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i1211 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i.i.i1211 to ptr
  %cpu_domain.i.i1212 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 4
  %214 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i1212) #4, !srcloc !72
  %and.i1213 = and i32 %214, -13
  %or.i1214 = or i32 %and.i1213, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i1214) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %215 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %envp.01309, ptr %p.11308, i32 -1226833921) #13, !srcloc !87
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %214) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool582.not = icmp eq i32 %215, 0
  br i1 %tobool582.not, label %if.end584, label %for.body565.cleanup617_crit_edge

for.body565.cleanup617_crit_edge:                 ; preds = %for.body565
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end584:                                        ; preds = %for.body565
  %call585 = call i32 @strnlen_user(ptr noundef %p.11308, i32 noundef 131072) #13
  %216 = add i32 %call585, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %216)
  %217 = icmp ult i32 %216, -131072
  br i1 %217, label %if.end584.cleanup617_crit_edge, label %if.end591

if.end584.cleanup617_crit_edge:                   ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end591:                                        ; preds = %if.end584
  %add.ptr592 = getelementptr i8, ptr %p.11308, i32 %call585
  %dec594 = add nsw i32 %loop.11307, -1
  %cmp563 = icmp sgt i32 %loop.11307, 1
  br i1 %cmp563, label %if.end591.for.body565_crit_edge, label %if.end591.for.end595_crit_edge

if.end591.for.end595_crit_edge:                   ; preds = %if.end591
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end595

if.end591.for.body565_crit_edge:                  ; preds = %if.end591
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body565

for.end595:                                       ; preds = %if.end591.for.end595_crit_edge, %if.end554.for.end595_crit_edge
  %p.1.lcssa = phi ptr [ %p.0.lcssa, %if.end554.for.end595_crit_edge ], [ %add.ptr592, %if.end591.for.end595_crit_edge ]
  %envp.0.lcssa = phi ptr [ %166, %if.end554.for.end595_crit_edge ], [ %incdec.ptr569, %if.end591.for.end595_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 718) #13
  %218 = call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i1215 = and i32 %218, -16384
  %219 = inttoptr i32 %and.i.i.i1215 to ptr
  %cpu_domain.i.i1216 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 4
  %220 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i1216) #4, !srcloc !72
  %and.i1217 = and i32 %220, -13
  %or.i1218 = or i32 %and.i1217, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i1218) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %221 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %envp.0.lcssa, ptr null, i32 -1226833921) #13, !srcloc !88
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %220) #13, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool611.not = icmp eq i32 %221, 0
  br i1 %tobool611.not, label %if.end613, label %for.end595.cleanup617_crit_edge

for.end595.cleanup617_crit_edge:                  ; preds = %for.end595
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup617

if.end613:                                        ; preds = %for.end595
  call void @__sanitizer_cov_trace_pc() #15
  %222 = ptrtoint ptr %p.1.lcssa to i32
  %223 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task, align 8
  %mm616 = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 53
  %225 = ptrtoint ptr %mm616 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mm616, align 8
  %env_end = getelementptr inbounds %struct.anon.10, ptr %226, i32 0, i32 38
  %227 = ptrtoint ptr %env_end to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %222, ptr %env_end, align 4
  %start_stack = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 34
  %228 = ptrtoint ptr %start_stack to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %sub73, ptr %start_stack, align 4
  br label %cleanup617

cleanup617:                                       ; preds = %if.end613, %for.end595.cleanup617_crit_edge, %if.end584.cleanup617_crit_edge, %for.body565.cleanup617_crit_edge, %for.end.cleanup617_crit_edge, %if.end529.cleanup617_crit_edge, %for.body.cleanup617_crit_edge, %do.end466.cleanup617_crit_edge, %copy_to_user.exit1202.cleanup617_crit_edge, %copy_to_user.exit1202.thread, %copy_to_user.exit1186.cleanup617_crit_edge, %copy_to_user.exit1186.thread, %copy_to_user.exit1170.cleanup617_crit_edge, %copy_to_user.exit1170.thread, %copy_to_user.exit1154.cleanup617_crit_edge, %copy_to_user.exit1154.thread, %copy_to_user.exit1138.cleanup617_crit_edge, %copy_to_user.exit1138.thread, %copy_to_user.exit1122.cleanup617_crit_edge, %copy_to_user.exit1122.thread, %copy_to_user.exit1106.cleanup617_crit_edge, %copy_to_user.exit1106.thread, %copy_to_user.exit1090.cleanup617_crit_edge, %copy_to_user.exit1090.thread, %copy_to_user.exit1074.cleanup617_crit_edge, %copy_to_user.exit1074.thread, %copy_to_user.exit1058.cleanup617_crit_edge, %copy_to_user.exit1058.thread, %copy_to_user.exit1042.cleanup617_crit_edge, %copy_to_user.exit1042.thread, %copy_to_user.exit1026.cleanup617_crit_edge, %copy_to_user.exit1026.thread, %copy_to_user.exit1010.cleanup617_crit_edge, %copy_to_user.exit1010.thread, %copy_to_user.exit994.cleanup617_crit_edge, %copy_to_user.exit994.thread, %copy_to_user.exit978.cleanup617_crit_edge, %copy_to_user.exit978.thread, %copy_to_user.exit962.cleanup617_crit_edge, %copy_to_user.exit962.thread, %copy_to_user.exit946.cleanup617_crit_edge, %copy_to_user.exit946.thread, %copy_to_user.exit930.cleanup617_crit_edge, %copy_to_user.exit930.thread, %copy_to_user.exit914.cleanup617_crit_edge, %copy_to_user.exit914.thread, %copy_to_user.exit898.cleanup617_crit_edge, %copy_to_user.exit898.thread, %copy_to_user.exit882.cleanup617_crit_edge, %if.end.i.i877.cleanup617_crit_edge, %if.then31.cleanup617_crit_edge, %copy_to_user.exit863.cleanup617_crit_edge, %if.end.i.i858.cleanup617_crit_edge, %if.end16.cleanup617_crit_edge, %copy_to_user.exit.cleanup617_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup617_crit_edge
  %retval.24 = phi i32 [ 0, %if.end613 ], [ -14, %copy_to_user.exit1202.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1186.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1170.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1154.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1138.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1122.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1106.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1090.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1074.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1058.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1042.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1026.cleanup617_crit_edge ], [ -14, %copy_to_user.exit1010.cleanup617_crit_edge ], [ -14, %copy_to_user.exit994.cleanup617_crit_edge ], [ -14, %copy_to_user.exit978.cleanup617_crit_edge ], [ -14, %copy_to_user.exit962.cleanup617_crit_edge ], [ -14, %copy_to_user.exit946.cleanup617_crit_edge ], [ -14, %copy_to_user.exit930.cleanup617_crit_edge ], [ -14, %copy_to_user.exit914.cleanup617_crit_edge ], [ -14, %copy_to_user.exit898.cleanup617_crit_edge ], [ -14, %copy_to_user.exit.cleanup617_crit_edge ], [ -14, %copy_to_user.exit863.cleanup617_crit_edge ], [ -14, %copy_to_user.exit882.cleanup617_crit_edge ], [ -14, %do.end466.cleanup617_crit_edge ], [ -14, %for.end.cleanup617_crit_edge ], [ -14, %for.end595.cleanup617_crit_edge ], [ -14, %copy_to_user.exit898.thread ], [ -14, %copy_to_user.exit914.thread ], [ -14, %copy_to_user.exit930.thread ], [ -14, %copy_to_user.exit946.thread ], [ -14, %copy_to_user.exit962.thread ], [ -14, %copy_to_user.exit978.thread ], [ -14, %copy_to_user.exit994.thread ], [ -14, %copy_to_user.exit1010.thread ], [ -14, %copy_to_user.exit1026.thread ], [ -14, %copy_to_user.exit1042.thread ], [ -14, %copy_to_user.exit1058.thread ], [ -14, %copy_to_user.exit1074.thread ], [ -14, %copy_to_user.exit1090.thread ], [ -14, %copy_to_user.exit1106.thread ], [ -14, %copy_to_user.exit1122.thread ], [ -14, %copy_to_user.exit1138.thread ], [ -14, %copy_to_user.exit1154.thread ], [ -14, %copy_to_user.exit1170.thread ], [ -14, %copy_to_user.exit1186.thread ], [ -14, %copy_to_user.exit1202.thread ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup617_crit_edge ], [ -14, %if.end16.cleanup617_crit_edge ], [ -14, %if.end.i.i858.cleanup617_crit_edge ], [ -14, %if.then31.cleanup617_crit_edge ], [ -14, %if.end.i.i877.cleanup617_crit_edge ], [ -22, %if.end584.cleanup617_crit_edge ], [ -14, %for.body565.cleanup617_crit_edge ], [ -22, %if.end529.cleanup617_crit_edge ], [ -14, %for.body.cleanup617_crit_edge ]
  ret i32 %retval.24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @finalize_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elf_check_arch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

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
declare dso_local i32 @dump_vma_snapshot(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @elf_dump_thread_status(i32 noundef %signr, ptr noundef %p, ptr nocapture noundef %sz) unnamed_addr #2 align 64 {
entry:
  %cputime.i = alloca %struct.task_cputime, align 8
  %tmp18.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp19.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp24.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp26.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp28.i = alloca %struct.__kernel_old_timeval, align 8
  %tmp30.i = alloca %struct.__kernel_old_timeval, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @task_user_regset_view(ptr noundef %p) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 312) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.end:                                           ; preds = %entry
  %prstatus = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1
  %conv.i = trunc i32 %signr to i16
  %pr_cursig.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %pr_cursig.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv.i, ptr %pr_cursig.i, align 8
  %sext.i = shl i32 %signr, 16
  %conv1.i = ashr exact i32 %sext.i, 16
  %2 = ptrtoint ptr %prstatus to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv1.i, ptr %prstatus, align 4
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 116, i32 1
  %3 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %signal.i, align 8
  %pr_sigpend.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pr_sigpend.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pr_sigpend.i, align 4
  %blocked.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 113
  %6 = ptrtoint ptr %blocked.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blocked.i, align 8
  %pr_sighold.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %pr_sighold.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pr_sighold.i, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %real_parent.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 71
  %13 = ptrtoint ptr %real_parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %real_parent.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b55.i = load i1, ptr @fill_prstatus.__warned, align 1
  br i1 %.b55.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @fill_prstatus.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1296, ptr noundef nonnull @.str.14) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %call.i56.i = tail call i32 @__task_pid_nr_ns(ptr noundef %14, i32 noundef 0, ptr noundef null) #13
  %pr_ppid.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %pr_ppid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i56.i, ptr %pr_ppid.i, align 8
  %call.i57.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i57.i, label %do.end10.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i60.i

do.end10.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i60.i:                              ; preds = %do.end10.i
  %call1.i58.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call1.i58.i, 0
  br i1 %tobool.not.i59.i, label %land.lhs.true.i60.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i62.i

land.lhs.true.i60.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i62.i:                             ; preds = %land.lhs.true.i60.i
  %.b4.i61.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61.i, label %land.lhs.true2.i62.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i63.i

land.lhs.true2.i62.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i63.i:                                    ; preds = %land.lhs.true2.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i63.i, %land.lhs.true2.i62.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i60.i.rcu_read_unlock.exit.i_crit_edge, %do.end10.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !76
  %16 = tail call i32 @llvm.read_register.i32(metadata !58) #13
  %and.i.i.i.i.i64.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i64.i to ptr
  %preempt_count.i.i.i.i65.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i65.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i65.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call.i66.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p, i32 noundef 0, ptr noundef null) #13
  %pr_pid.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %pr_pid.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i66.i, ptr %pr_pid.i, align 4
  %call.i67.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p, i32 noundef 2, ptr noundef null) #13
  %pr_pgrp.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 6
  %21 = ptrtoint ptr %pr_pgrp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i67.i, ptr %pr_pgrp.i, align 4
  %call.i68.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p, i32 noundef 3, ptr noundef null) #13
  %pr_sid.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 7
  %22 = ptrtoint ptr %pr_sid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call.i68.i, ptr %pr_sid.i, align 8
  %exit_signal.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 59
  %23 = ptrtoint ptr %exit_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %exit_signal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.i = icmp sgt i32 %24, -1
  br i1 %cmp.i.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cputime.i) #13
  %25 = getelementptr inbounds %struct.task_cputime, ptr %cputime.i, i32 0, i32 1
  %26 = call ptr @memset(ptr %cputime.i, i32 255, i32 24)
  call void @thread_group_cputime(ptr noundef %p, ptr noundef nonnull %cputime.i) #13
  %pr_utime.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp18.i) #13
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %25, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp18.i, i64 noundef %28) #13
  %29 = ptrtoint ptr %tmp18.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tmp18.i, align 8
  %31 = ptrtoint ptr %pr_utime.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %pr_utime.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp18.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp19.i) #13
  %32 = ptrtoint ptr %cputime.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cputime.i, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp19.i, i64 noundef %33) #13
  %34 = ptrtoint ptr %tmp19.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tmp19.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp19.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cputime.i) #13
  br label %fill_prstatus.exit

if.else.i:                                        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %utime1.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 86
  %36 = ptrtoint ptr %utime1.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %utime1.i.i, align 8
  %stime2.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 87
  %38 = ptrtoint ptr %stime2.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %stime2.i.i, align 32
  %pr_utime23.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp24.i) #13
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp24.i, i64 noundef %37) #13
  %40 = ptrtoint ptr %tmp24.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tmp24.i, align 8
  %42 = ptrtoint ptr %pr_utime23.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %pr_utime23.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp24.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp26.i) #13
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp26.i, i64 noundef %39) #13
  %43 = ptrtoint ptr %tmp26.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tmp26.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp26.i) #13
  br label %fill_prstatus.exit

fill_prstatus.exit:                               ; preds = %if.else.i, %if.then17.i
  %.sink.i = phi i64 [ %35, %if.then17.i ], [ %44, %if.else.i ]
  %45 = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 9
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %.sink.i, ptr %45, align 4
  %pr_cutime.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp28.i) #13
  %signal29.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %47 = ptrtoint ptr %signal29.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %signal29.i, align 16
  %cutime.i = getelementptr inbounds %struct.signal_struct, ptr %48, i32 0, i32 30
  %49 = ptrtoint ptr %cutime.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %cutime.i, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp28.i, i64 noundef %50) #13
  %51 = ptrtoint ptr %tmp28.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tmp28.i, align 8
  %53 = ptrtoint ptr %pr_cutime.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %pr_cutime.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp28.i) #13
  %pr_cstime.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp30.i) #13
  %54 = ptrtoint ptr %signal29.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %signal29.i, align 16
  %cstime.i = getelementptr inbounds %struct.signal_struct, ptr %55, i32 0, i32 31
  %56 = ptrtoint ptr %cstime.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %cstime.i, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tmp30.i, i64 noundef %57) #13
  %58 = ptrtoint ptr %tmp30.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tmp30.i, align 8
  %60 = ptrtoint ptr %pr_cstime.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %pr_cstime.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp30.i) #13
  %mm = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 53
  %61 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mm, align 8
  %exec_fdpic_loadmap = getelementptr inbounds %struct.anon.10, ptr %62, i32 0, i32 42, i32 4
  %63 = ptrtoint ptr %exec_fdpic_loadmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %exec_fdpic_loadmap, align 4
  %pr_exec_fdpic_loadmap = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %pr_exec_fdpic_loadmap to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %pr_exec_fdpic_loadmap, align 4
  %interp_fdpic_loadmap = getelementptr inbounds %struct.anon.10, ptr %62, i32 0, i32 42, i32 5
  %66 = ptrtoint ptr %interp_fdpic_loadmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %interp_fdpic_loadmap, align 8
  %pr_interp_fdpic_loadmap = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %pr_interp_fdpic_loadmap to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %pr_interp_fdpic_loadmap, align 8
  %regsets = getelementptr inbounds %struct.user_regset_view, ptr %call, i32 0, i32 1
  %69 = ptrtoint ptr %regsets to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regsets, align 4
  %pr_reg = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 1
  %call7 = call i32 @regset_get(ptr noundef %p, ptr noundef %70, i32 noundef 72, ptr noundef %pr_reg) #13
  %notes = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %notes to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.11, ptr %notes, align 4
  %type2.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %72 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %type2.i, align 8
  %datasz.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %73 = ptrtoint ptr %datasz.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 156, ptr %datasz.i, align 4
  %data3.i = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  %74 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %prstatus, ptr %data3.i, align 8
  %num_notes = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %num_notes to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_notes, align 4
  %inc = add i32 %76, 1
  store i32 %inc, ptr %num_notes, align 4
  %77 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sz, align 4
  %add = add i32 %78, 176
  store i32 %add, ptr %sz, align 4
  %n = getelementptr inbounds %struct.user_regset_view, ptr %call, i32 0, i32 2
  %79 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp94 = icmp ugt i32 %80, 1
  br i1 %cmp94, label %fill_prstatus.exit.for.body_crit_edge, label %fill_prstatus.exit.for.end_crit_edge

fill_prstatus.exit.for.end_crit_edge:             ; preds = %fill_prstatus.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

fill_prstatus.exit.for.body_crit_edge:            ; preds = %fill_prstatus.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %fill_prstatus.exit.for.body_crit_edge
  %i.095 = phi i32 [ %inc29, %for.inc.for.body_crit_edge ], [ 1, %fill_prstatus.exit.for.body_crit_edge ]
  %81 = ptrtoint ptr %regsets to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regsets, align 4
  %arrayidx14 = getelementptr %struct.user_regset, ptr %82, i32 %i.095
  %core_note_type = getelementptr %struct.user_regset, ptr %82, i32 %i.095, i32 8
  %83 = ptrtoint ptr %core_note_type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %core_note_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp15.not = icmp eq i32 %84, 2
  br i1 %cmp15.not, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %active = getelementptr %struct.user_regset, ptr %82, i32 %i.095, i32 2
  %85 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %active, align 4
  %tobool18.not = icmp eq ptr %86, null
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %land.lhs.true

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end17
  %call20 = call i32 %86(ptr noundef %p, ptr noundef %arrayidx14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  %fpu = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 2
  %call24 = call i32 @regset_get(ptr noundef %p, ptr noundef %arrayidx14, i32 noundef 116, ptr noundef %fpu) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp25 = icmp sgt i32 %call24, -1
  br i1 %cmp25, label %if.then26, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %pr_fpvalid = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 4
  %87 = ptrtoint ptr %pr_fpvalid to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %pr_fpvalid, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc29 = add nuw i32 %i.095, 1
  %88 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc29, %89
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then26, %if.end23.for.end_crit_edge, %fill_prstatus.exit.for.end_crit_edge
  %pr_fpvalid31 = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 1, i32 4
  %90 = ptrtoint ptr %pr_fpvalid31 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pr_fpvalid31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool32.not = icmp eq i32 %91, 0
  br i1 %tobool32.not, label %for.end.cleanup44_crit_edge, label %if.then33

for.end.cleanup44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup44

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx35 = getelementptr %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 3, i32 1
  %fpu36 = getelementptr inbounds %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.11, ptr %arrayidx35, align 4
  %type2.i82 = getelementptr %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %93 = ptrtoint ptr %type2.i82 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %type2.i82, align 8
  %datasz.i83 = getelementptr %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 2
  %94 = ptrtoint ptr %datasz.i83 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 116, ptr %datasz.i83, align 4
  %data3.i84 = getelementptr %struct.elf_thread_status, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 3
  %95 = ptrtoint ptr %data3.i84 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %fpu36, ptr %data3.i84, align 8
  %96 = ptrtoint ptr %num_notes to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_notes, align 4
  %inc38 = add i32 %97, 1
  store i32 %inc38, ptr %num_notes, align 4
  %98 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sz, align 4
  %add42 = add i32 %99, 136
  store i32 %add42, ptr %sz, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %if.then33, %for.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @writenote(ptr nocapture noundef readonly %men, ptr noundef %cprm) unnamed_addr #2 align 64 {
entry:
  %en = alloca %struct.elf32_note, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %en) #13
  %0 = getelementptr inbounds %struct.elf32_note, ptr %en, i32 0, i32 1
  %1 = getelementptr inbounds %struct.elf32_note, ptr %en, i32 0, i32 2
  %2 = ptrtoint ptr %men to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %men, align 4
  %call = tail call i32 @strlen(ptr noundef %3) #20
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
  %call1 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef nonnull %en, i32 noundef 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %11 = ptrtoint ptr %men to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %men, align 4
  %13 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %en, align 4
  %call4 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef %12, i32 noundef %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true6

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = call i32 @dump_align(ptr noundef %cprm, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.land.end_crit_edge, label %land.lhs.true9

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %data = getelementptr inbounds %struct.memelfnote, ptr %men, i32 0, i32 3
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %datasz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datasz, align 4
  %call11 = call i32 @dump_emit(ptr noundef %cprm, ptr noundef %16, i32 noundef %18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true9.land.end_crit_edge, label %land.rhs

land.lhs.true9.land.end_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = call i32 @dump_align(ptr noundef %cprm, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9.land.end_crit_edge, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %19 = phi i32 [ 0, %land.lhs.true9.land.end_crit_edge ], [ 0, %land.lhs.true6.land.end_crit_edge ], [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %en) #13
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_skip_to(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @elf_fdpic_dump_segments(ptr noundef %cprm, ptr nocapture noundef readonly %vma_meta, i32 noundef %vma_count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vma_count)
  %cmp5 = icmp sgt i32 %vma_count, 0
  br i1 %cmp5, label %for.body.preheader, label %entry.cleanup1_crit_edge

entry.cleanup1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %vma_meta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vma_meta, align 4
  %dump_size9 = getelementptr %struct.core_vma_metadata, ptr %vma_meta, i32 0, i32 3
  %2 = ptrtoint ptr %dump_size9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dump_size9, align 4
  %call10 = tail call i32 @dump_user_range(ptr noundef %cprm, i32 noundef %1, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not11 = icmp eq i32 %call10, 0
  br i1 %tobool.not11, label %for.body.preheader.cleanup1_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.cleanup1_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.0612 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.0612, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %vma_count)
  %exitcond.not = icmp eq i32 %inc, %vma_count
  br i1 %exitcond.not, label %for.cond.cleanup1.loopexit_crit_edge, label %for.body

for.cond.cleanup1.loopexit_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1.loopexit

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr %struct.core_vma_metadata, ptr %vma_meta, i32 %inc
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %dump_size = getelementptr %struct.core_vma_metadata, ptr %vma_meta, i32 %inc, i32 3
  %6 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dump_size, align 4
  %call = tail call i32 @dump_user_range(ptr noundef %cprm, i32 noundef %5, i32 noundef %7) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup1.loopexit_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.cleanup1.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1.loopexit

cleanup1.loopexit:                                ; preds = %for.body.cleanup1.loopexit_crit_edge, %for.cond.cleanup1.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %vma_count)
  %cmp.le = icmp sge i32 %inc, %vma_count
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit, %for.body.preheader.cleanup1_crit_edge, %entry.cleanup1_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup1_crit_edge ], [ false, %for.body.preheader.cleanup1_crit_edge ], [ %cmp.le, %cleanup1.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_user_regset_view(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regset_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_align(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dump_user_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_binfmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__UNIQUE_ID_file249, !1, !"__UNIQUE_ID_file249", i1 false, i1 false}
!1 = !{!"../fs/binfmt_elf_fdpic.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_license250, !1, !"__UNIQUE_ID_license250", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_binfmt_elf_fdpic__251_101_init_elf_fdpic_binfmt1, !4, !"__initcall__kmod_binfmt_elf_fdpic__251_101_init_elf_fdpic_binfmt1", i1 false, i1 false}
!4 = !{!"../fs/binfmt_elf_fdpic.c", i32 101, i32 1}
!5 = !{ptr @__exitcall_exit_elf_fdpic_binfmt, !6, !"__exitcall_exit_elf_fdpic_binfmt", i1 false, i1 false}
!6 = !{!"../fs/binfmt_elf_fdpic.c", i32 102, i32 1}
!7 = !{ptr @elf_fdpic_format, !8, !"elf_fdpic_format", i1 false, i1 false}
!8 = !{!"../fs/binfmt_elf_fdpic.c", i32 81, i32 28}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/binfmt_elf_fdpic.c", i32 386, i32 9}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/binfmt_elf_fdpic.c", i32 392, i32 23}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/binfmt_elf_fdpic.c", i32 394, i32 4}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @load_elf_fdpic_binary._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @load_elf_fdpic_binary._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/binfmt_elf_fdpic.c", i32 106, i32 27}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/binfmt_elf_fdpic.c", i32 914, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @elf_fdpic_map_file._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @elf_fdpic_map_file._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../fs/binfmt_elf_fdpic.c", i32 501, i32 28}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/binfmt_elf_fdpic.c", i32 1536, i32 26}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/binfmt_elf_fdpic.c", i32 1644, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @elf_fdpic_core_dump._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @elf_fdpic_core_dump._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../fs/binfmt_elf_fdpic.c", i32 1296, i32 35}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../fs/binfmt_elf_fdpic.c", i32 1344, i32 33}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/binfmt_elf_fdpic.c", i32 1353, i32 37}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../fs/binfmt_elf_fdpic.c", i32 1358, i32 9}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2148382723, i64 2148382749, i64 2148382778, i64 2148382812, i64 2148382843, i64 2148382866}
!71 = !{i64 2152447340, i64 2152447365}
!72 = !{i64 4942895}
!73 = !{i64 4943092}
!74 = !{i64 2152428325}
!75 = !{i64 2149398882}
!76 = !{i64 2149399148}
!77 = !{i32 0, i32 33}
!78 = !{i64 2154199083, i64 2154199570, i64 2154199120, i64 2154199176, i64 2154199210, i64 2154199234, i64 2154199275, i64 2154199296, i64 2154199324, i64 2154199358}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2152444142, i64 2152444167}
!81 = !{i64 2154192920, i64 2154193200, i64 2154193534, i64 2154193868}
!82 = !{i64 2152448021, i64 2152448046}
!83 = !{i64 2154139687, i64 2154139967, i64 2154140301, i64 2154140635}
!84 = !{i64 2154142925, i64 2154143411, i64 2154142962, i64 2154143018, i64 2154143052, i64 2154143076, i64 2154143117, i64 2154143138, i64 2154143166, i64 2154143200}
!85 = !{i64 2154150166, i64 2154150446, i64 2154150780, i64 2154151114}
!86 = !{i64 2154163189, i64 2154163469, i64 2154163803, i64 2154164137}
!87 = !{i64 2154172118, i64 2154172398, i64 2154172732, i64 2154173066}
!88 = !{i64 2154181080, i64 2154181360, i64 2154181694, i64 2154182028}
