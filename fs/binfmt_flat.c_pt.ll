; ModuleID = '/llk/IR_all_yes/fs/binfmt_flat.c_pt.bc'
source_filename = "../fs/binfmt_flat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lib_info = type { [4 x %struct.anon.68] }
%struct.anon.68 = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.pt_regs = type { [18 x i32] }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.39, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.57 = type { %struct.callback_head }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.61 = type { ptr }

@__initcall__kmod_binfmt_flat__244_1042_init_flat_binfmt1 = internal global ptr @init_flat_binfmt, section ".initcall1.init", align 4
@flat_format = internal global { %struct.linux_binfmt, [36 x i8] } { %struct.linux_binfmt { %struct.list_head zeroinitializer, ptr null, ptr @load_flat_binary, ptr null, ptr @flat_core_dump, i32 4096 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/binfmt_flat.c\00", [47 x i8] zeroinitializer }, align 32
@load_flat_binary.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 1, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"binfmt_flat\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"load_flat_binary\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"start_thread(regs=0x%p, entry=0x%lx, start_stack=0x%lx)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"binfmt_flat: start_thread(regs=0x%p, entry=0x%lx, start_stack=0x%lx)\0A\00", [58 x i8] zeroinitializer }, align 32
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bFLT\00", [27 x i8] zeroinitializer }, align 32
@load_flat_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016binfmt_flat: Loading file: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"load_flat_file\00", [17 x i8] zeroinitializer }, align 32
@load_flat_file._entry_ptr = internal global ptr @load_flat_file._entry, section ".printk_index", align 4
@load_flat_file._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013binfmt_flat: bad flat file version 0x%x (supported 0x%lx and 0x%lx)\0A\00", [57 x i8] zeroinitializer }, align 32
@load_flat_file._entry_ptr.10 = internal global ptr @load_flat_file._entry.8, section ".printk_index", align 4
@load_flat_file._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013binfmt_flat: shared libraries are not available before rev 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@load_flat_file._entry_ptr.13 = internal global ptr @load_flat_file._entry.11, section ".printk_index", align 4
@load_flat_file._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013binfmt_flat: bad header\0A\00", [37 x i8] zeroinitializer }, align 32
@load_flat_file._entry_ptr.16 = internal global ptr @load_flat_file._entry.14, section ".printk_index", align 4
@load_flat_file._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013binfmt_flat: Unable to allocate RAM for process text/data, errno %d\0A\00", [57 x i8] zeroinitializer }, align 32
@load_flat_file._entry_ptr.19 = internal global ptr @load_flat_file._entry.17, section ".printk_index", align 4
@load_flat_file._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013binfmt_flat: Unable to read code+data+bss, errno %d\0A\00", [41 x i8] zeroinitializer }, align 32
@load_flat_file._entry_ptr.22 = internal global ptr @load_flat_file._entry.20, section ".printk_index", align 4
@load_flat_file._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016binfmt_flat: Mapping is %lx, Entry point is %x, data_start is %x\0A\00", [60 x i8] zeroinitializer }, align 32
@load_flat_file._entry_ptr.25 = internal global ptr @load_flat_file._entry.23, section ".printk_index", align 4
@load_flat_file._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016binfmt_flat: %s %s: TEXT=%lx-%lx DATA=%lx-%lx BSS=%lx-%lx\0A\00", [35 x i8] zeroinitializer }, align 32
@load_flat_file._entry_ptr.28 = internal global ptr @load_flat_file._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Lib\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Load\00", [27 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@decompress_exec.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.32, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"decompress_exec\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"decompress_exec(offset=%llx,buf=%p,len=%lx)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"binfmt_flat: decompress_exec(offset=%llx,buf=%p,len=%lx)\0A\00", [38 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.34, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"file too small?\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"binfmt_flat: file too small?\0A\00", [34 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.36, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown compression magic?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"binfmt_flat: unknown compression magic?\0A\00", [55 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.38, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown compression method?\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"binfmt_flat: unknown compression method?\0A\00", [54 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.40, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unknown flags?\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"binfmt_flat: unknown flags?\0A\00", [35 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.42, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"buffer overflow (EXTRA)?\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"binfmt_flat: buffer overflow (EXTRA)?\0A\00", [57 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.44, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buffer overflow (ORIG_NAME)?\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"binfmt_flat: buffer overflow (ORIG_NAME)?\0A\00", [53 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.46, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"buffer overflow (COMMENT)?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"binfmt_flat: buffer overflow (COMMENT)?\0A\00", [55 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.48, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zlib init failed?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"binfmt_flat: zlib init failed?\0A\00", [32 x i8] zeroinitializer }, align 32
@decompress_exec.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.50, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"decompression failed (%d), %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"binfmt_flat: decompression failed (%d), %s\0A\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@calc_reloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013binfmt_flat: reference 0x%lx to shared library %d\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"calc_reloc\00", [21 x i8] zeroinitializer }, align 32
@calc_reloc._entry_ptr = internal global ptr @calc_reloc._entry, section ".printk_index", align 4
@calc_reloc._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013binfmt_flat: reloc address 0x%lx not in same module (%d != %d)\00", [63 x i8] zeroinitializer }, align 32
@calc_reloc._entry_ptr.59 = internal global ptr @calc_reloc._entry.57, section ".printk_index", align 4
@calc_reloc._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013binfmt_flat: failed to load library %d\00", [55 x i8] zeroinitializer }, align 32
@calc_reloc._entry_ptr.62 = internal global ptr @calc_reloc._entry.60, section ".printk_index", align 4
@calc_reloc._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013binfmt_flat: library %d is younger than %d\00", [51 x i8] zeroinitializer }, align 32
@calc_reloc._entry_ptr.65 = internal global ptr @calc_reloc._entry.63, section ".printk_index", align 4
@calc_reloc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013binfmt_flat: reloc outside program 0x%lx (0 - 0x%lx/0x%lx)\00", [35 x i8] zeroinitializer }, align 32
@calc_reloc._entry_ptr.68 = internal global ptr @calc_reloc._entry.66, section ".printk_index", align 4
@calc_reloc._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.56, ptr @.str, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c, killing %s!\0A\00", [47 x i8] zeroinitializer }, align 32
@calc_reloc._entry_ptr.71 = internal global ptr @calc_reloc._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"/lib/lib%d.so\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/asm-generic/flat.h\00", [37 x i8] zeroinitializer }, align 32
@old_reloc.segment = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEXT\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DATA\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BSS\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"*UNKNOWN*\00", [22 x i8] zeroinitializer }, align 32
@old_reloc.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str, ptr @.str.79, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"old_reloc\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Relocation of variable at DATASEG+%x (address %p, currently %lx) into segment %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"binfmt_flat: Relocation of variable at DATASEG+%x (address %p, currently %lx) into segment %s\0A\00", [33 x i8] zeroinitializer }, align 32
@old_reloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013binfmt_flat: Unknown relocation type=%x\0A\00", [53 x i8] zeroinitializer }, align 32
@old_reloc._entry_ptr = internal global ptr @old_reloc._entry, section ".printk_index", align 4
@old_reloc.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str, ptr @.str.82, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Relocation became %lx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"binfmt_flat: Relocation became %lx\0A\00", [60 x i8] zeroinitializer }, align 32
@flat_core_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014binfmt_flat: Process %s:%d received signr %d and should have core dumped\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flat_core_dump\00", [17 x i8] zeroinitializer }, align 32
@flat_core_dump._entry_ptr = internal global ptr @flat_core_dump._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 139, i64 158]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"flat_format\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 102, i32 28 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 978, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1028, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 466, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 479, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 483, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 491, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 520, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 642, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 723, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 755, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 757, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 210, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 234, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 240, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 246, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 252, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 260, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 268, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 276, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 289, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 305, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 230, i32 6 }
@___asan_gen_.234 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 214, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 174, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 342, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 347, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 352, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 358, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 372, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 386, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 911, i32 15 }
@___asan_gen_.282 = private unnamed_addr constant [30 x i8] c"../include/asm-generic/flat.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 13, i32 9 }
@___asan_gen_.284 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 397, i32 21 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 397, i32 35 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 397, i32 43 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 397, i32 51 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 397, i32 58 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 410, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 425, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 430, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [20 x i8] c"../fs/binfmt_flat.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 117, i32 2 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__initcall__kmod_binfmt_flat__244_1042_init_flat_binfmt1, ptr @calc_reloc._entry, ptr @calc_reloc._entry.57, ptr @calc_reloc._entry.60, ptr @calc_reloc._entry.63, ptr @calc_reloc._entry.66, ptr @calc_reloc._entry.69, ptr @calc_reloc._entry_ptr, ptr @calc_reloc._entry_ptr.59, ptr @calc_reloc._entry_ptr.62, ptr @calc_reloc._entry_ptr.65, ptr @calc_reloc._entry_ptr.68, ptr @calc_reloc._entry_ptr.71, ptr @flat_core_dump._entry, ptr @flat_core_dump._entry_ptr, ptr @load_flat_file._entry, ptr @load_flat_file._entry.11, ptr @load_flat_file._entry.14, ptr @load_flat_file._entry.17, ptr @load_flat_file._entry.20, ptr @load_flat_file._entry.23, ptr @load_flat_file._entry.26, ptr @load_flat_file._entry.8, ptr @load_flat_file._entry_ptr, ptr @load_flat_file._entry_ptr.10, ptr @load_flat_file._entry_ptr.13, ptr @load_flat_file._entry_ptr.16, ptr @load_flat_file._entry_ptr.19, ptr @load_flat_file._entry_ptr.22, ptr @load_flat_file._entry_ptr.25, ptr @load_flat_file._entry_ptr.28, ptr @old_reloc._entry, ptr @old_reloc._entry_ptr, ptr @flat_format, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @old_reloc.segment, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flat_format to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_flat_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_flat_file._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_flat_file._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_flat_file._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_flat_file._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_flat_file._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_flat_file._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_flat_file._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_reloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_reloc._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_reloc._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_reloc._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_reloc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_reloc._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_reloc.segment to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_reloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flat_core_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_flat_binfmt() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_binfmt(ptr noundef nonnull @flat_format, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_binfmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_flat_binary(ptr noundef %bprm) #2 align 64 {
entry:
  %libinfo = alloca %struct.lib_info, align 4
  %stack_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %libinfo) #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !154)
  %or = or i32 %0, 16383
  %sub = add nsw i32 %or, -7
  %1 = inttoptr i32 %sub to ptr
  %add.ptr = getelementptr %struct.pt_regs, ptr %1, i32 -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stack_len) #12
  %2 = call ptr @memset(ptr %libinfo, i32 0, i32 112)
  %argc = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 12
  %3 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argc, align 4
  %add = shl i32 %4, 2
  %envc = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 13
  %5 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %envc, align 4
  %add2 = shl i32 %6, 2
  %add4 = add i32 %add, 15
  %add5 = add i32 %add4, %add2
  %and = and i32 %add5, -8
  %7 = ptrtoint ptr %stack_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %stack_len, align 4
  %call = call fastcc i32 @load_flat_file(ptr noundef %bprm, ptr noundef nonnull %libinfo, i32 noundef 0, ptr noundef nonnull %stack_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup164_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup164_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0229 = phi i32 [ %inc31, %for.inc30.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %loaded = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %i.0229, i32 6
  %8 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %loaded, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %for.body.for.inc30_crit_edge, label %for.cond9.preheader

for.body.for.inc30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30

for.cond9.preheader:                              ; preds = %for.body
  %start_data20 = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %i.0229, i32 1
  %10 = ptrtoint ptr %start_data20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_data20, align 4
  %12 = inttoptr i32 %11 to ptr
  br label %for.cond9

for.cond9:                                        ; preds = %cond.end.for.cond9_crit_edge, %for.cond9.preheader
  %j.0 = phi i32 [ %add21, %cond.end.for.cond9_crit_edge ], [ 0, %for.cond9.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.0)
  %exitcond.not = icmp eq i32 %j.0, 4
  br i1 %exitcond.not, label %for.cond9.for.inc30_crit_edge, label %for.body11

for.cond9.for.inc30_crit_edge:                    ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc30

for.body11:                                       ; preds = %for.cond9
  %loaded14 = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %j.0, i32 6
  %13 = ptrtoint ptr %loaded14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %loaded14, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %for.body11.cond.end_crit_edge, label %cond.true

for.body11.cond.end_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  %start_data = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %j.0, i32 1
  %15 = ptrtoint ptr %start_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_data, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body11.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.true ], [ 2146435327, %for.body11.cond.end_crit_edge ]
  %add21 = add nuw nsw i32 %j.0, 1
  %idx.neg = xor i32 %j.0, -1
  %add.ptr22 = getelementptr i32, ptr %12, i32 %idx.neg
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 978) #12
  %17 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !165
  %and.i = and i32 %19, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %20 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr22, i32 %cond, i32 -1226833921) #12, !srcloc !168
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %cond.end.for.cond9_crit_edge, label %cond.end.cleanup164_crit_edge

cond.end.cleanup164_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

cond.end.for.cond9_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9

for.inc30:                                        ; preds = %for.cond9.for.inc30_crit_edge, %for.body.for.inc30_crit_edge
  %inc31 = add nuw nsw i32 %i.0229, 1
  %exitcond239.not = icmp eq i32 %inc31, 4
  br i1 %exitcond239.not, label %for.end32, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end32:                                        ; preds = %for.inc30
  call void @set_binfmt(ptr noundef nonnull @flat_format) #12
  %21 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i217 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i217 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 62
  %25 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %personality, align 32
  %and34 = and i32 %26, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, i32 67108864, i32 -1226833920
  %call37 = call i32 @setup_arg_pages(ptr noundef %bprm, i32 noundef %cond36, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %for.end32.cleanup164_crit_edge

for.end32.cleanup164_crit_edge:                   ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.then39:                                        ; preds = %for.end32
  %p40 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  %27 = ptrtoint ptr %p40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p40, align 4
  %29 = inttoptr i32 %28 to ptr
  %30 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i234.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i234.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mm.i, align 8
  %start_stack.i = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 34
  %36 = ptrtoint ptr %start_stack.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %start_stack.i, align 4
  %38 = inttoptr i32 %37 to ptr
  %39 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %envc, align 4
  %idx.neg.i = xor i32 %40, -1
  %add.ptr.i = getelementptr i32, ptr %38, i32 %idx.neg.i
  %41 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %argc, align 4
  %idx.neg2.i = xor i32 %42, -1
  %add.ptr3.i = getelementptr i32, ptr %add.ptr.i, i32 %idx.neg2.i
  %add.ptr4.i = getelementptr i32, ptr %add.ptr3.i, i32 -2
  %add.ptr5.i = getelementptr i32, ptr %add.ptr4.i, i32 -1
  %43 = ptrtoint ptr %add.ptr5.i to i32
  %and.i218 = and i32 %43, -8
  store i32 %and.i218, ptr %start_stack.i, align 4
  %44 = load ptr, ptr %task.i, align 8
  %mm12.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 53
  %45 = ptrtoint ptr %mm12.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mm12.i, align 8
  %start_stack13.i = getelementptr inbounds %struct.anon, ptr %46, i32 0, i32 34
  %47 = ptrtoint ptr %start_stack13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %start_stack13.i, align 4
  %49 = inttoptr i32 %48 to ptr
  %50 = load i32, ptr %argc, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 147) #12
  %51 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !165
  %and.i.i = and i32 %53, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %54 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %49, i32 %50, i32 -1226833921) #12, !srcloc !169
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then39.cleanup164_crit_edge

if.then39.cleanup164_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.end.i:                                         ; preds = %if.then39
  %incdec.ptr.i = getelementptr i32, ptr %49, i32 1
  %add.ptr17.i = getelementptr i32, ptr %49, i32 3
  %55 = ptrtoint ptr %add.ptr17.i to i32
  %56 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %argc, align 4
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 153) #12
  %58 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i210.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i210.i to ptr
  %cpu_domain.i.i211.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i211.i) #4, !srcloc !165
  %and.i212.i = and i32 %60, -13
  %or.i213.i = or i32 %and.i212.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i213.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %61 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %incdec.ptr.i, i32 %55, i32 -1226833921) #12, !srcloc !170
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool38.not.i = icmp eq i32 %61, 0
  br i1 %tobool38.not.i, label %cleanup.i, label %if.end.i.cleanup164_crit_edge

if.end.i.cleanup164_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

cleanup.i:                                        ; preds = %if.end.i
  %incdec.ptr25.i = getelementptr i32, ptr %49, i32 2
  %add.ptr20.i = getelementptr i32, ptr %add.ptr17.i, i32 %57
  %add.ptr21.i = getelementptr i32, ptr %add.ptr20.i, i32 1
  %62 = ptrtoint ptr %add.ptr21.i to i32
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 153) #12
  %63 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i214.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i214.i to ptr
  %cpu_domain.i.i215.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i215.i) #4, !srcloc !165
  %and.i216.i = and i32 %65, -13
  %or.i217.i = or i32 %and.i216.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i217.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %66 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %incdec.ptr25.i, i32 %62, i32 -1226833921) #12, !srcloc !171
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool55.not.i = icmp eq i32 %66, 0
  br i1 %tobool55.not.i, label %cleanup.cont.i, label %cleanup.i.cleanup164_crit_edge

cleanup.i.cleanup164_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

cleanup.cont.i:                                   ; preds = %cleanup.i
  %67 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i, align 8
  %mm61.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 53
  %69 = ptrtoint ptr %mm61.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mm61.i, align 8
  %arg_start62.i = getelementptr inbounds %struct.anon, ptr %70, i32 0, i32 35
  %71 = ptrtoint ptr %arg_start62.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %28, ptr %arg_start62.i, align 8
  %72 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp243.i = icmp sgt i32 %73, 0
  br i1 %cmp243.i, label %cleanup.cont.i.for.body.i_crit_edge, label %cleanup.cont.i.for.end.i_crit_edge

cleanup.cont.i.for.end.i_crit_edge:               ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

cleanup.cont.i.for.body.i_crit_edge:              ; preds = %cleanup.cont.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end88.i.for.body.i_crit_edge, %cleanup.cont.i.for.body.i_crit_edge
  %p.0246.i = phi ptr [ %add.ptr89.i, %if.end88.i.for.body.i_crit_edge ], [ %29, %cleanup.cont.i.for.body.i_crit_edge ]
  %sp.2245.i = phi ptr [ %incdec.ptr67.i, %if.end88.i.for.body.i_crit_edge ], [ %add.ptr17.i, %cleanup.cont.i.for.body.i_crit_edge ]
  %i.0244.i = phi i32 [ %dec.i, %if.end88.i.for.body.i_crit_edge ], [ %73, %cleanup.cont.i.for.body.i_crit_edge ]
  %incdec.ptr67.i = getelementptr i32, ptr %sp.2245.i, i32 1
  %74 = ptrtoint ptr %p.0246.i to i32
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 159) #12
  %75 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i218.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i218.i to ptr
  %cpu_domain.i.i219.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 4
  %77 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i219.i) #4, !srcloc !165
  %and.i220.i = and i32 %77, -13
  %or.i221.i = or i32 %and.i220.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i221.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %78 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sp.2245.i, i32 %74, i32 -1226833921) #12, !srcloc !172
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool80.not.i = icmp eq i32 %78, 0
  br i1 %tobool80.not.i, label %if.end82.i, label %for.body.i.cleanup164_crit_edge

for.body.i.cleanup164_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.end82.i:                                       ; preds = %for.body.i
  %call83.i = call i32 @strnlen_user(ptr noundef %p.0246.i, i32 noundef 131072) #12
  %79 = add i32 %call83.i, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %79)
  %80 = icmp ult i32 %79, -131072
  br i1 %80, label %if.end82.i.cleanup164_crit_edge, label %if.end88.i

if.end82.i.cleanup164_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.end88.i:                                       ; preds = %if.end82.i
  %add.ptr89.i = getelementptr i8, ptr %p.0246.i, i32 %call83.i
  %dec.i = add nsw i32 %i.0244.i, -1
  %cmp.i = icmp sgt i32 %i.0244.i, 1
  br i1 %cmp.i, label %if.end88.i.for.body.i_crit_edge, label %if.end88.i.for.end.i_crit_edge

if.end88.i.for.end.i_crit_edge:                   ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end88.i.for.body.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %if.end88.i.for.end.i_crit_edge, %cleanup.cont.i.for.end.i_crit_edge
  %sp.2.lcssa.i = phi ptr [ %add.ptr17.i, %cleanup.cont.i.for.end.i_crit_edge ], [ %incdec.ptr67.i, %if.end88.i.for.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %29, %cleanup.cont.i.for.end.i_crit_edge ], [ %add.ptr89.i, %if.end88.i.for.end.i_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 166) #12
  %81 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i222.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i222.i to ptr
  %cpu_domain.i.i223.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 4
  %83 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i223.i) #4, !srcloc !165
  %and.i224.i = and i32 %83, -13
  %or.i225.i = or i32 %and.i224.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i225.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %84 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sp.2.lcssa.i, i32 0, i32 -1226833921) #12, !srcloc !173
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool106.not.i = icmp eq i32 %84, 0
  br i1 %tobool106.not.i, label %if.end108.i, label %for.end.i.cleanup164_crit_edge

for.end.i.cleanup164_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.end108.i:                                      ; preds = %for.end.i
  %85 = ptrtoint ptr %p.0.lcssa.i to i32
  %86 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task.i, align 8
  %mm111.i = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 53
  %88 = ptrtoint ptr %mm111.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mm111.i, align 8
  %arg_end.i = getelementptr inbounds %struct.anon, ptr %89, i32 0, i32 36
  %90 = ptrtoint ptr %arg_end.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %85, ptr %arg_end.i, align 4
  %91 = load ptr, ptr %task.i, align 8
  %mm114.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 53
  %92 = ptrtoint ptr %mm114.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mm114.i, align 8
  %env_start.i = getelementptr inbounds %struct.anon, ptr %93, i32 0, i32 37
  %94 = ptrtoint ptr %env_start.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %85, ptr %env_start.i, align 8
  %95 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %envc, align 4
  %sp.3248.i = getelementptr i32, ptr %sp.2.lcssa.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp117249.i = icmp sgt i32 %96, 0
  br i1 %cmp117249.i, label %if.end108.i.for.body118.i_crit_edge, label %if.end108.i.for.end147.i_crit_edge

if.end108.i.for.end147.i_crit_edge:               ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end147.i

if.end108.i.for.body118.i_crit_edge:              ; preds = %if.end108.i
  br label %for.body118.i

for.body118.i:                                    ; preds = %if.end143.i.for.body118.i_crit_edge, %if.end108.i.for.body118.i_crit_edge
  %sp.3252.i = phi ptr [ %sp.3.i, %if.end143.i.for.body118.i_crit_edge ], [ %sp.3248.i, %if.end108.i.for.body118.i_crit_edge ]
  %p.1251.i = phi ptr [ %add.ptr144.i, %if.end143.i.for.body118.i_crit_edge ], [ %p.0.lcssa.i, %if.end108.i.for.body118.i_crit_edge ]
  %i.1250.i = phi i32 [ %dec146.i, %if.end143.i.for.body118.i_crit_edge ], [ %96, %if.end108.i.for.body118.i_crit_edge ]
  %97 = ptrtoint ptr %p.1251.i to i32
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 172) #12
  %98 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i226.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i226.i to ptr
  %cpu_domain.i.i227.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 4
  %100 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i227.i) #4, !srcloc !165
  %and.i228.i = and i32 %100, -13
  %or.i229.i = or i32 %and.i228.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i229.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %101 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sp.3252.i, i32 %97, i32 -1226833921) #12, !srcloc !174
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool135.not.i = icmp eq i32 %101, 0
  br i1 %tobool135.not.i, label %if.end137.i, label %for.body118.i.cleanup164_crit_edge

for.body118.i.cleanup164_crit_edge:               ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.end137.i:                                      ; preds = %for.body118.i
  %call138.i = call i32 @strnlen_user(ptr noundef %p.1251.i, i32 noundef 131072) #12
  %102 = add i32 %call138.i, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131072, i32 %102)
  %103 = icmp ult i32 %102, -131072
  br i1 %103, label %if.end137.i.cleanup164_crit_edge, label %if.end143.i

if.end137.i.cleanup164_crit_edge:                 ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.end143.i:                                      ; preds = %if.end137.i
  %add.ptr144.i = getelementptr i8, ptr %p.1251.i, i32 %call138.i
  %dec146.i = add nsw i32 %i.1250.i, -1
  %sp.3.i = getelementptr i32, ptr %sp.3252.i, i32 1
  %cmp117.i = icmp sgt i32 %i.1250.i, 1
  br i1 %cmp117.i, label %if.end143.i.for.body118.i_crit_edge, label %if.end143.i.for.end147.i_crit_edge

if.end143.i.for.end147.i_crit_edge:               ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end147.i

if.end143.i.for.body118.i_crit_edge:              ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body118.i

for.end147.i:                                     ; preds = %if.end143.i.for.end147.i_crit_edge, %if.end108.i.for.end147.i_crit_edge
  %p.1.lcssa.i = phi ptr [ %p.0.lcssa.i, %if.end108.i.for.end147.i_crit_edge ], [ %add.ptr144.i, %if.end143.i.for.end147.i_crit_edge ]
  %sp.3.lcssa.i = phi ptr [ %sp.3248.i, %if.end108.i.for.end147.i_crit_edge ], [ %sp.3.i, %if.end143.i.for.end147.i_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 179) #12
  %104 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i230.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i230.i to ptr
  %cpu_domain.i.i231.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i231.i) #4, !srcloc !165
  %and.i232.i = and i32 %106, -13
  %or.i233.i = or i32 %and.i232.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i233.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %107 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %sp.3.lcssa.i, i32 0, i32 -1226833921) #12, !srcloc !175
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool164.not.i = icmp eq i32 %107, 0
  br i1 %tobool164.not.i, label %if.end45, label %for.end147.i.cleanup164_crit_edge

for.end147.i.cleanup164_crit_edge:                ; preds = %for.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

if.end45:                                         ; preds = %for.end147.i
  %108 = ptrtoint ptr %p.1.lcssa.i to i32
  %109 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i, align 8
  %mm169.i = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 53
  %111 = ptrtoint ptr %mm169.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mm169.i, align 8
  %env_end.i = getelementptr inbounds %struct.anon, ptr %112, i32 0, i32 38
  %113 = ptrtoint ptr %env_end.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %108, ptr %env_end.i, align 4
  %entry48 = getelementptr inbounds %struct.anon.68, ptr %libinfo, i32 0, i32 4
  %114 = ptrtoint ptr %entry48 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %entry48, align 4
  %loaded54 = getelementptr inbounds [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 3, i32 6
  %116 = ptrtoint ptr %loaded54 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %loaded54, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool55.not = icmp eq i8 %117, 0
  br i1 %tobool55.not, label %if.end45.for.inc89_crit_edge, label %if.then56

if.end45.for.inc89_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc89

if.then56:                                        ; preds = %if.end45
  %118 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 53
  %120 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mm, align 8
  %start_stack = getelementptr inbounds %struct.anon, ptr %121, i32 0, i32 34
  %122 = ptrtoint ptr %start_stack to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %start_stack, align 4
  %sub59 = add i32 %123, -4
  store i32 %sub59, ptr %start_stack, align 4
  %124 = load ptr, ptr %task, align 8
  %mm62 = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 53
  %125 = ptrtoint ptr %mm62 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mm62, align 8
  %start_stack63 = getelementptr inbounds %struct.anon, ptr %126, i32 0, i32 34
  %127 = ptrtoint ptr %start_stack63 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %start_stack63, align 4
  %129 = inttoptr i32 %128 to ptr
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1016) #12
  %130 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i213 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i213 to ptr
  %cpu_domain.i.i214 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 4
  %132 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i214) #4, !srcloc !165
  %and.i215 = and i32 %132, -13
  %or.i216 = or i32 %and.i215, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i216) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %133 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %129, i32 %115, i32 -1226833921) #12, !srcloc !176
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool79.not = icmp eq i32 %133, 0
  br i1 %tobool79.not, label %cleanup85.thread, label %if.then56.cleanup164_crit_edge

if.then56.cleanup164_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

cleanup85.thread:                                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %entry84 = getelementptr inbounds [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 3, i32 4
  %134 = ptrtoint ptr %entry84 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %entry84, align 4
  br label %for.inc89

for.inc89:                                        ; preds = %cleanup85.thread, %if.end45.for.inc89_crit_edge
  %start_addr.2 = phi i32 [ %115, %if.end45.for.inc89_crit_edge ], [ %135, %cleanup85.thread ]
  %loaded54.1 = getelementptr inbounds [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 2, i32 6
  %136 = ptrtoint ptr %loaded54.1 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %loaded54.1, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool55.not.1 = icmp eq i8 %137, 0
  br i1 %tobool55.not.1, label %for.inc89.for.inc89.1_crit_edge, label %if.then56.1

for.inc89.for.inc89.1_crit_edge:                  ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc89.1

if.then56.1:                                      ; preds = %for.inc89
  %138 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %task, align 8
  %mm.1 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 53
  %140 = ptrtoint ptr %mm.1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mm.1, align 8
  %start_stack.1 = getelementptr inbounds %struct.anon, ptr %141, i32 0, i32 34
  %142 = ptrtoint ptr %start_stack.1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %start_stack.1, align 4
  %sub59.1 = add i32 %143, -4
  store i32 %sub59.1, ptr %start_stack.1, align 4
  %144 = load ptr, ptr %task, align 8
  %mm62.1 = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 53
  %145 = ptrtoint ptr %mm62.1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mm62.1, align 8
  %start_stack63.1 = getelementptr inbounds %struct.anon, ptr %146, i32 0, i32 34
  %147 = ptrtoint ptr %start_stack63.1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %start_stack63.1, align 4
  %149 = inttoptr i32 %148 to ptr
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1016) #12
  %150 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i213.1 = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i213.1 to ptr
  %cpu_domain.i.i214.1 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 4
  %152 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i214.1) #4, !srcloc !165
  %and.i215.1 = and i32 %152, -13
  %or.i216.1 = or i32 %and.i215.1, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i216.1) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %153 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %149, i32 %start_addr.2, i32 -1226833921) #12, !srcloc !176
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %152) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool79.not.1 = icmp eq i32 %153, 0
  br i1 %tobool79.not.1, label %cleanup85.thread.1, label %if.then56.1.cleanup164_crit_edge

if.then56.1.cleanup164_crit_edge:                 ; preds = %if.then56.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

cleanup85.thread.1:                               ; preds = %if.then56.1
  call void @__sanitizer_cov_trace_pc() #14
  %entry84.1 = getelementptr inbounds [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 2, i32 4
  %154 = ptrtoint ptr %entry84.1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %entry84.1, align 4
  br label %for.inc89.1

for.inc89.1:                                      ; preds = %cleanup85.thread.1, %for.inc89.for.inc89.1_crit_edge
  %start_addr.2.1 = phi i32 [ %start_addr.2, %for.inc89.for.inc89.1_crit_edge ], [ %155, %cleanup85.thread.1 ]
  %loaded54.2 = getelementptr inbounds [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 1, i32 6
  %156 = ptrtoint ptr %loaded54.2 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %loaded54.2, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool55.not.2 = icmp eq i8 %157, 0
  br i1 %tobool55.not.2, label %for.inc89.1.for.inc89.2_crit_edge, label %if.then56.2

for.inc89.1.for.inc89.2_crit_edge:                ; preds = %for.inc89.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc89.2

if.then56.2:                                      ; preds = %for.inc89.1
  %158 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %task, align 8
  %mm.2 = getelementptr inbounds %struct.task_struct, ptr %159, i32 0, i32 53
  %160 = ptrtoint ptr %mm.2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mm.2, align 8
  %start_stack.2 = getelementptr inbounds %struct.anon, ptr %161, i32 0, i32 34
  %162 = ptrtoint ptr %start_stack.2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %start_stack.2, align 4
  %sub59.2 = add i32 %163, -4
  store i32 %sub59.2, ptr %start_stack.2, align 4
  %164 = load ptr, ptr %task, align 8
  %mm62.2 = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 53
  %165 = ptrtoint ptr %mm62.2 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mm62.2, align 8
  %start_stack63.2 = getelementptr inbounds %struct.anon, ptr %166, i32 0, i32 34
  %167 = ptrtoint ptr %start_stack63.2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %start_stack63.2, align 4
  %169 = inttoptr i32 %168 to ptr
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1016) #12
  %170 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i213.2 = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i213.2 to ptr
  %cpu_domain.i.i214.2 = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 4
  %172 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i214.2) #4, !srcloc !165
  %and.i215.2 = and i32 %172, -13
  %or.i216.2 = or i32 %and.i215.2, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i216.2) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %173 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %169, i32 %start_addr.2.1, i32 -1226833921) #12, !srcloc !176
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool79.not.2 = icmp eq i32 %173, 0
  br i1 %tobool79.not.2, label %cleanup85.thread.2, label %if.then56.2.cleanup164_crit_edge

if.then56.2.cleanup164_crit_edge:                 ; preds = %if.then56.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup164

cleanup85.thread.2:                               ; preds = %if.then56.2
  call void @__sanitizer_cov_trace_pc() #14
  %entry84.2 = getelementptr inbounds [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 1, i32 4
  %174 = ptrtoint ptr %entry84.2 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %entry84.2, align 4
  br label %for.inc89.2

for.inc89.2:                                      ; preds = %cleanup85.thread.2, %for.inc89.1.for.inc89.2_crit_edge
  %start_addr.2.2 = phi i32 [ %start_addr.2.1, %for.inc89.1.for.inc89.2_crit_edge ], [ %175, %cleanup85.thread.2 ]
  call void @finalize_exec(ptr noundef %bprm) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_flat_binary.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_flat_binary, %if.then97)) #12
          to label %do.end104 [label %if.then97], !srcloc !177

if.then97:                                        ; preds = %for.inc89.2
  call void @__sanitizer_cov_trace_pc() #14
  %176 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %task, align 8
  %mm100 = getelementptr inbounds %struct.task_struct, ptr %177, i32 0, i32 53
  %178 = ptrtoint ptr %mm100 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mm100, align 8
  %start_stack101 = getelementptr inbounds %struct.anon, ptr %179, i32 0, i32 34
  %180 = ptrtoint ptr %start_stack101 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %start_stack101, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @load_flat_binary.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, i32 noundef %start_addr.2.2, i32 noundef %181) #12
  br label %do.end104

do.end104:                                        ; preds = %if.then97, %for.inc89.2
  %arrayidx105 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 7
  %182 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx105, align 4
  %arrayidx107 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 8
  %184 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx107, align 16
  %arrayidx109 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 9
  %186 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx109, align 4
  %188 = call ptr @memset(ptr %add.ptr, i32 0, i32 72)
  %189 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %task, align 8
  %personality113 = getelementptr inbounds %struct.task_struct, ptr %190, i32 0, i32 62
  %191 = ptrtoint ptr %personality113 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %personality113, align 32
  %and114 = and i32 %192, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.end104.if.end129_crit_edge, label %if.then116

do.end104.if.end129_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then116:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #14
  %193 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %183, ptr %arrayidx105, align 4
  %194 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %185, ptr %arrayidx107, align 16
  %195 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %187, ptr %arrayidx109, align 4
  %196 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %task, align 8
  %mm125 = getelementptr inbounds %struct.task_struct, ptr %197, i32 0, i32 53
  %198 = ptrtoint ptr %mm125 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mm125, align 8
  %start_data126 = getelementptr inbounds %struct.anon, ptr %199, i32 0, i32 30
  %200 = ptrtoint ptr %start_data126 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %start_data126, align 4
  %arrayidx128 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 10
  %202 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %arrayidx128, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then116, %do.end104.if.end129_crit_edge
  %203 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %task, align 8
  %personality132 = getelementptr inbounds %struct.task_struct, ptr %204, i32 0, i32 62
  %205 = ptrtoint ptr %personality132 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %personality132, align 32
  %and133 = lshr i32 %206, 19
  %207 = and i32 %and133, 16
  %208 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 16
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %207, ptr %208, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %210 = load i32, ptr @elf_hwcap, align 4
  %and142 = and i32 %210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  %and144 = and i32 %start_addr.2.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  %or.cond = select i1 %tobool143.not, i1 true, i1 %tobool145.not
  br i1 %or.cond, label %if.end129.if.end150_crit_edge, label %if.then146

if.end129.if.end150_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.then146:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  %211 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %208, align 16
  %or149 = or i32 %212, 32
  store i32 %or149, ptr %208, align 16
  br label %if.end150

if.end150:                                        ; preds = %if.then146, %if.end129.if.end150_crit_edge
  %213 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %208, align 16
  %or153 = or i32 %214, 512
  store i32 %or153, ptr %208, align 16
  %and154 = and i32 %start_addr.2.2, -2
  %arrayidx156 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 15
  %215 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %and154, ptr %arrayidx156, align 4
  %216 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %task, align 8
  %mm160 = getelementptr inbounds %struct.task_struct, ptr %217, i32 0, i32 53
  %218 = ptrtoint ptr %mm160 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mm160, align 8
  %start_stack161 = getelementptr inbounds %struct.anon, ptr %219, i32 0, i32 34
  %220 = ptrtoint ptr %start_stack161 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %start_stack161, align 4
  %arrayidx163 = getelementptr %struct.pt_regs, ptr %1, i32 -1, i32 0, i32 13
  %222 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %arrayidx163, align 4
  br label %cleanup164

cleanup164:                                       ; preds = %if.end150, %if.then56.2.cleanup164_crit_edge, %if.then56.1.cleanup164_crit_edge, %if.then56.cleanup164_crit_edge, %for.end147.i.cleanup164_crit_edge, %if.end137.i.cleanup164_crit_edge, %for.body118.i.cleanup164_crit_edge, %for.end.i.cleanup164_crit_edge, %if.end82.i.cleanup164_crit_edge, %for.body.i.cleanup164_crit_edge, %cleanup.i.cleanup164_crit_edge, %if.end.i.cleanup164_crit_edge, %if.then39.cleanup164_crit_edge, %for.end32.cleanup164_crit_edge, %cond.end.cleanup164_crit_edge, %entry.cleanup164_crit_edge
  %retval.7 = phi i32 [ 0, %if.end150 ], [ %call, %entry.cleanup164_crit_edge ], [ -14, %if.end.i.cleanup164_crit_edge ], [ -14, %for.end147.i.cleanup164_crit_edge ], [ -14, %for.end.i.cleanup164_crit_edge ], [ -14, %if.then39.cleanup164_crit_edge ], [ -14, %cleanup.i.cleanup164_crit_edge ], [ %call37, %for.end32.cleanup164_crit_edge ], [ -14, %if.then56.2.cleanup164_crit_edge ], [ -14, %if.then56.1.cleanup164_crit_edge ], [ -14, %if.then56.cleanup164_crit_edge ], [ -22, %if.end137.i.cleanup164_crit_edge ], [ -14, %for.body118.i.cleanup164_crit_edge ], [ -22, %if.end82.i.cleanup164_crit_edge ], [ -14, %for.body.i.cleanup164_crit_edge ], [ -14, %cond.end.cleanup164_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stack_len) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %libinfo) #12
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flat_core_dump(ptr nocapture noundef readonly %cprm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %6 = ptrtoint ptr %cprm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cprm, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %comm, i32 noundef %5, i32 noundef %9) #15
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_flat_file(ptr noundef %bprm, ptr nocapture noundef %libinfo, i32 noundef %id, ptr noundef %extra_stack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22
  %data_start = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 12
  %0 = ptrtoint ptr %data_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_start, align 4
  %data_end = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 16
  %2 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_end, align 4
  %sub = sub i32 %3, %1
  %bss_end = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 20
  %4 = ptrtoint ptr %bss_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bss_end, align 4
  %sub3 = sub i32 %5, %3
  %stack_size = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 24
  %6 = ptrtoint ptr %stack_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stack_size, align 4
  %tobool.not = icmp eq ptr %extra_stack, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %extra_stack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extra_stack, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %extra_stack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stack_len.0 = phi i32 [ %add, %if.then ], [ %7, %entry.if.end_crit_edge ]
  %reloc_count = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 32
  %10 = ptrtoint ptr %reloc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reloc_count, align 4
  %flags4 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 36
  %12 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags4, align 4
  %rev5 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 4
  %14 = ptrtoint ptr %rev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rev5, align 4
  %mul = shl i32 %11, 2
  %add6 = add i32 %mul, %sub
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.5, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup418_crit_edge

if.end.cleanup418_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end10:                                         ; preds = %if.end
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %do.end

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %16 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %filename, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %17) #15
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end10.if.end14_crit_edge
  %18 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %do.end19 [
    i32 4, label %if.end14.if.end22_crit_edge
    i32 2, label %if.end14.if.end22_crit_edge797
  ]

if.end14.if.end22_crit_edge797:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %15, i32 noundef 4, i32 noundef 2) #15
  br label %cleanup418

if.end22:                                         ; preds = %if.end14.if.end22_crit_edge, %if.end14.if.end22_crit_edge797
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp23 = icmp eq i32 %15, 2
  %cmp23.not = xor i1 %cmp23, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp25.not = icmp eq i32 %id, 0
  %or.cond = or i1 %cmp25.not, %cmp23.not
  br i1 %or.cond, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #15
  br label %cleanup418

if.end32:                                         ; preds = %if.end22
  %flags.0 = select i1 %cmp23, i32 0, i32 %13
  %or = or i32 %sub, %1
  %or38 = or i32 %or, %sub3
  %or39 = or i32 %or38, %stack_len.0
  %or40 = or i32 %or39, %add6
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %or40)
  %tobool41.not = icmp ult i32 %or40, 268435456
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %cleanup418

if.end48:                                         ; preds = %if.end32
  %19 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 111
  %23 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %24, i32 0, i32 51, i32 2
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i.i, align 8
  %add53 = add i32 %sub3, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %26)
  %cmp54 = icmp ugt i32 %add53, %26
  br i1 %cmp54, label %if.end48.cleanup418_crit_edge, label %if.end56

if.end48.cleanup418_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end56:                                         ; preds = %if.end48
  br i1 %cmp25.not, label %if.then58, label %if.end56.if.end64_crit_edge

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then58:                                        ; preds = %if.end56
  %call59 = tail call i32 @begin_new_exec(ptr noundef %bprm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.then58.cleanup418_crit_edge

if.then58.cleanup418_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end62:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i685 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i685 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 62
  %31 = ptrtoint ptr %personality to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8388608, ptr %personality, align 32
  tail call void @setup_new_exec(ptr noundef %bprm) #12
  br label %if.end64

if.end64:                                         ; preds = %if.end62, %if.end56.if.end64_crit_edge
  %add65 = add i32 %stack_len.0, %sub3
  %32 = tail call i32 @llvm.umax.i32(i32 %add65, i32 %mul)
  %add70 = add i32 %32, %3
  %add71 = add i32 %add70, 16
  %add72 = add i32 %add70, 4111
  %and73 = and i32 %add72, -4096
  %call74 = tail call i32 @vm_mmap(ptr noundef null, i32 noundef 0, i32 noundef %and73, i32 noundef 7, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end64.if.then79_crit_edge, label %lor.lhs.false

if.end64.if.then79_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

lor.lhs.false:                                    ; preds = %if.end64
  %33 = inttoptr i32 %call74 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call74)
  %cmp76 = icmp ugt i32 %call74, -4096
  br i1 %cmp76, label %lor.lhs.false.if.then79_crit_edge, label %if.end88, !prof !178

lor.lhs.false.if.then79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false.if.then79_crit_edge, %if.end64.if.then79_crit_edge
  %spec.store.select445 = phi i32 [ %call74, %lor.lhs.false.if.then79_crit_edge ], [ -12, %if.end64.if.then79_crit_edge ]
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %spec.store.select445) #15
  br label %cleanup418

if.end88:                                         ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %data_start to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_start, align 4
  %add90 = add nuw i32 %call74, 47
  %add92 = add i32 %add90, %35
  %and93 = and i32 %add92, -32
  %reloc_start = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 28
  %36 = ptrtoint ptr %reloc_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reloc_start, align 4
  %sub94 = sub i32 %37, %1
  %add95 = add i32 %sub94, %and93
  %38 = inttoptr i32 %add95 to ptr
  %and96 = and i32 %flags.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else116, label %if.then98

if.then98:                                        ; preds = %if.end88
  %sub99 = add i32 %1, -64
  %add100 = add i32 %add6, %sub99
  %call101 = tail call noalias ptr @vmalloc(i32 noundef %add100) #16
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.then98.if.then171_crit_edge, label %if.else

if.then98.if.then171_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then171

if.else:                                          ; preds = %if.then98
  %call104 = tail call fastcc i32 @decompress_exec(ptr noundef %bprm, i64 noundef 64, ptr noundef nonnull %call101, i32 noundef %add100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp eq i32 %call104, 0
  br i1 %cmp105, label %land.lhs.true106, label %if.else.if.end114_crit_edge

if.else.if.end114_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

land.lhs.true106:                                 ; preds = %if.else
  %add.ptr = getelementptr i8, ptr %33, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub99)
  %cmp9.i.i = icmp slt i32 %sub99, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %land.lhs.true106
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then113_crit_edge, label %if.then27.i.i, !prof !179

land.rhs16.i.i.if.then113_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then113

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then113

if.then.i.i.i:                                    ; preds = %land.lhs.true106
  tail call void @__check_object_size(ptr noundef nonnull %call101, i32 noundef %sub99, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %sub99, i32 -1226833920) #17, !srcloc !180
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call101, i32 noundef %sub99) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %call101, i32 noundef %sub99) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %sub99, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %sub99, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool108.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool108.not, label %lor.lhs.false109, label %copy_to_user.exit.if.then113_crit_edge

copy_to_user.exit.if.then113_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then113

lor.lhs.false109:                                 ; preds = %copy_to_user.exit
  %40 = inttoptr i32 %and93 to ptr
  %add.ptr110 = getelementptr i8, ptr %call101, i32 %sub99
  tail call void @__check_object_size(ptr noundef %add.ptr110, i32 noundef %add6, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 174) #12
  %call.i.i640 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i640, label %lor.lhs.false109.copy_to_user.exit649_crit_edge, label %if.end.i.i644

lor.lhs.false109.copy_to_user.exit649_crit_edge:  ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit649

if.end.i.i644:                                    ; preds = %lor.lhs.false109
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 %add6, i32 -1226833920) #17, !srcloc !180
  %asmresult.i.i642 = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i642)
  %cmp.i6.i643 = icmp eq i32 %asmresult.i.i642, 0
  br i1 %cmp.i6.i643, label %if.then2.i.i647, label %if.end.i.i644.copy_to_user.exit649_crit_edge

if.end.i.i644.copy_to_user.exit649_crit_edge:     ; preds = %if.end.i.i644
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit649

if.then2.i.i647:                                  ; preds = %if.end.i.i644
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i645 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr110, i32 noundef %add6) #12
  %call.i12.i.i646 = tail call i32 @arm_copy_to_user(ptr noundef %40, ptr noundef %add.ptr110, i32 noundef %add6) #12
  br label %copy_to_user.exit649

copy_to_user.exit649:                             ; preds = %if.then2.i.i647, %if.end.i.i644.copy_to_user.exit649_crit_edge, %lor.lhs.false109.copy_to_user.exit649_crit_edge
  %n.addr.0.i648 = phi i32 [ %add6, %lor.lhs.false109.copy_to_user.exit649_crit_edge ], [ %call.i12.i.i646, %if.then2.i.i647 ], [ %add6, %if.end.i.i644.copy_to_user.exit649_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i648)
  %tobool112.not = icmp eq i32 %n.addr.0.i648, 0
  br i1 %tobool112.not, label %copy_to_user.exit649.if.end114_crit_edge, label %copy_to_user.exit649.if.then113_crit_edge

copy_to_user.exit649.if.then113_crit_edge:        ; preds = %copy_to_user.exit649
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then113

copy_to_user.exit649.if.end114_crit_edge:         ; preds = %copy_to_user.exit649
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then113:                                       ; preds = %copy_to_user.exit649.if.then113_crit_edge, %copy_to_user.exit.if.then113_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then113_crit_edge
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %copy_to_user.exit649.if.end114_crit_edge, %if.else.if.end114_crit_edge
  %result.0 = phi i32 [ -14, %if.then113 ], [ 0, %copy_to_user.exit649.if.end114_crit_edge ], [ %call104, %if.else.if.end114_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call101) #12
  br label %if.end162

if.else116:                                       ; preds = %if.end88
  %and117 = and i32 %flags.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %file145 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %42 = ptrtoint ptr %file145 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %file145, align 4
  %call146 = tail call i32 @read_code(ptr noundef %43, i32 noundef %call74, i64 noundef 0, i32 noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call146)
  %cmp147 = icmp ugt i32 %call146, -4096
  br i1 %tobool118.not, label %if.else144, label %if.then119

if.then119:                                       ; preds = %if.else116
  br i1 %cmp147, label %if.then119.if.then171_crit_edge, label %if.then128, !prof !178

if.then119.if.then171_crit_edge:                  ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then171

if.then128:                                       ; preds = %if.then119
  %call130 = tail call noalias ptr @vmalloc(i32 noundef %add6) #16
  %tobool131.not = icmp eq ptr %call130, null
  br i1 %tobool131.not, label %if.then128.if.then171_crit_edge, label %if.else133

if.then128.if.then171_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then171

if.else133:                                       ; preds = %if.then128
  %conv = zext i32 %1 to i64
  %call134 = tail call fastcc i32 @decompress_exec(ptr noundef %bprm, i64 noundef %conv, ptr noundef nonnull %call130, i32 noundef %add6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %land.lhs.true137, label %if.else133.if.end141_crit_edge

if.else133.if.end141_crit_edge:                   ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

land.lhs.true137:                                 ; preds = %if.else133
  %44 = inttoptr i32 %and93 to ptr
  tail call void @__check_object_size(ptr noundef nonnull %call130, i32 noundef %add6, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 174) #12
  %call.i.i663 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i663, label %land.lhs.true137.copy_to_user.exit672_crit_edge, label %if.end.i.i667

land.lhs.true137.copy_to_user.exit672_crit_edge:  ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit672

if.end.i.i667:                                    ; preds = %land.lhs.true137
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 %add6, i32 -1226833920) #17, !srcloc !180
  %asmresult.i.i665 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i665)
  %cmp.i6.i666 = icmp eq i32 %asmresult.i.i665, 0
  br i1 %cmp.i6.i666, label %if.then2.i.i670, label %if.end.i.i667.copy_to_user.exit672_crit_edge

if.end.i.i667.copy_to_user.exit672_crit_edge:     ; preds = %if.end.i.i667
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit672

if.then2.i.i670:                                  ; preds = %if.end.i.i667
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i668 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call130, i32 noundef %add6) #12
  %call.i12.i.i669 = tail call i32 @arm_copy_to_user(ptr noundef %44, ptr noundef nonnull %call130, i32 noundef %add6) #12
  br label %copy_to_user.exit672

copy_to_user.exit672:                             ; preds = %if.then2.i.i670, %if.end.i.i667.copy_to_user.exit672_crit_edge, %land.lhs.true137.copy_to_user.exit672_crit_edge
  %n.addr.0.i671 = phi i32 [ %add6, %land.lhs.true137.copy_to_user.exit672_crit_edge ], [ %call.i12.i.i669, %if.then2.i.i670 ], [ %add6, %if.end.i.i667.copy_to_user.exit672_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i671)
  %tobool139.not = icmp eq i32 %n.addr.0.i671, 0
  %spec.select = select i1 %tobool139.not, i32 0, i32 -14
  br label %if.end141

if.end141:                                        ; preds = %copy_to_user.exit672, %if.else133.if.end141_crit_edge
  %result.2 = phi i32 [ %call134, %if.else133.if.end141_crit_edge ], [ %spec.select, %copy_to_user.exit672 ]
  tail call void @vfree(ptr noundef nonnull %call130) #12
  br label %if.end162

if.else144:                                       ; preds = %if.else116
  br i1 %cmp147, label %if.else144.if.then171_crit_edge, label %if.then155, !prof !178

if.else144.if.then171_crit_edge:                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then171

if.then155:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %file145 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %file145, align 4
  %48 = ptrtoint ptr %data_start to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_start, align 4
  %conv158 = zext i32 %49 to i64
  %call159 = tail call i32 @read_code(ptr noundef %47, i32 noundef %and93, i64 noundef %conv158, i32 noundef %add6) #12
  br label %if.end162

if.end162:                                        ; preds = %if.then155, %if.end141, %if.end114
  %result.4 = phi i32 [ %call159, %if.then155 ], [ %result.0, %if.end114 ], [ %result.2, %if.end141 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %result.4)
  %cmp163 = icmp ugt i32 %result.4, -4096
  br i1 %cmp163, label %if.end162.if.then171_crit_edge, label %if.end181, !prof !178

if.end162.if.then171_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then171

if.then171:                                       ; preds = %if.end162.if.then171_crit_edge, %if.else144.if.then171_crit_edge, %if.then128.if.then171_crit_edge, %if.then119.if.then171_crit_edge, %if.then98.if.then171_crit_edge
  %result.4703 = phi i32 [ %result.4, %if.end162.if.then171_crit_edge ], [ -12, %if.then128.if.then171_crit_edge ], [ -12, %if.then98.if.then171_crit_edge ], [ %call146, %if.else144.if.then171_crit_edge ], [ %call146, %if.then119.if.then171_crit_edge ]
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %result.4703) #15
  %call180 = tail call i32 @vm_munmap(i32 noundef %call74, i32 noundef %add71) #12
  br label %cleanup418

if.end181:                                        ; preds = %if.end162
  %add182 = add nuw i32 %call74, 64
  %add183 = add i32 %call74, %1
  %sub184 = add i32 %1, -64
  br i1 %cmp25.not, label %if.then187, label %if.end181.if.end216_crit_edge

if.end181.if.end216_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end216

if.then187:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  %50 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i686 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i686 to ptr
  %task189 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task189 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task189, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 53
  %54 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mm, align 8
  %start_code190 = getelementptr inbounds %struct.anon, ptr %55, i32 0, i32 28
  %56 = ptrtoint ptr %start_code190 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add182, ptr %start_code190, align 4
  %57 = load ptr, ptr %task189, align 8
  %mm193 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 53
  %58 = ptrtoint ptr %mm193 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mm193, align 8
  %end_code194 = getelementptr inbounds %struct.anon, ptr %59, i32 0, i32 29
  %60 = ptrtoint ptr %end_code194 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add183, ptr %end_code194, align 8
  %61 = load ptr, ptr %task189, align 8
  %mm197 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 53
  %62 = ptrtoint ptr %mm197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mm197, align 8
  %start_data = getelementptr inbounds %struct.anon, ptr %63, i32 0, i32 30
  %64 = ptrtoint ptr %start_data to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and93, ptr %start_data, align 4
  %add198 = add i32 %and93, %sub
  %65 = load ptr, ptr %task189, align 8
  %mm201 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 53
  %66 = ptrtoint ptr %mm201 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mm201, align 8
  %end_data = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 31
  %68 = ptrtoint ptr %end_data to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add198, ptr %end_data, align 8
  %add203 = add i32 %add198, %sub3
  %69 = load ptr, ptr %task189, align 8
  %mm206 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 53
  %70 = ptrtoint ptr %mm206 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mm206, align 8
  %start_brk = getelementptr inbounds %struct.anon, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %start_brk to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add203, ptr %start_brk, align 4
  %73 = load ptr, ptr %task189, align 8
  %mm209 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 53
  %74 = ptrtoint ptr %mm209 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mm209, align 8
  %start_brk210 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 32
  %76 = ptrtoint ptr %start_brk210 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %start_brk210, align 4
  %add211 = add i32 %77, 3
  %and212 = and i32 %add211, -4
  %brk = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 33
  %78 = ptrtoint ptr %brk to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and212, ptr %brk, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.then187, %if.end181.if.end216_crit_edge
  %and217 = and i32 %flags.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.end216.if.end242_crit_edge, label %do.end222

if.end216.if.end242_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = add i32 %and93, %sub
  br label %if.end242

do.end222:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  %entry224 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 8
  %79 = ptrtoint ptr %entry224 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %entry224, align 4
  %and225 = and i32 %80, 16777215
  %81 = ptrtoint ptr %data_start to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_start, align 4
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call74, i32 noundef %and225, i32 noundef %82) #15
  %cond233 = select i1 %cmp25.not, ptr @.str.30, ptr @.str.29
  %filename234 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %83 = ptrtoint ptr %filename234 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %filename234, align 4
  %add235 = add i32 %and93, %sub
  %add238 = add i32 %sub3, 3
  %add239 = add i32 %add238, %add235
  %and240 = and i32 %add239, -4
  %call241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %cond233, ptr noundef %84, i32 noundef %add182, i32 noundef %add183, i32 noundef %and93, i32 noundef %add235, i32 noundef %add235, i32 noundef %and240) #15
  br label %if.end242

if.end242:                                        ; preds = %do.end222, %if.end216.if.end242_crit_edge
  %add247.pre-phi = phi i32 [ %.pre, %if.end216.if.end242_crit_edge ], [ %add235, %do.end222 ]
  %arrayidx = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %id
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add182, ptr %arrayidx, align 4
  %start_data246 = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %id, i32 1
  %86 = ptrtoint ptr %start_data246 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and93, ptr %start_data246, align 4
  %add248 = add i32 %add247.pre-phi, %sub3
  %start_brk251 = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %id, i32 2
  %87 = ptrtoint ptr %start_brk251 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add248, ptr %start_brk251, align 4
  %text_len254 = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %id, i32 3
  %88 = ptrtoint ptr %text_len254 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub184, ptr %text_len254, align 4
  %loaded = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %id, i32 6
  %89 = ptrtoint ptr %loaded to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %loaded, align 4
  %entry257 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 8
  %90 = ptrtoint ptr %entry257 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %entry257, align 4
  %and258 = and i32 %91, 16777215
  %add259 = add i32 %and258, %call74
  %entry262 = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %id, i32 4
  %92 = ptrtoint ptr %entry262 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add259, ptr %entry262, align 4
  %build_date = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 40
  %93 = ptrtoint ptr %build_date to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %build_date, align 4
  %build_date265 = getelementptr [4 x %struct.anon.68], ptr %libinfo, i32 0, i32 %id, i32 5
  %95 = ptrtoint ptr %build_date265 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %build_date265, align 4
  %and266 = and i32 %flags.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %if.end242.if.end304_crit_edge, label %if.then268

if.end242.if.end304_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end304

if.then268:                                       ; preds = %if.end242
  %96 = inttoptr i32 %and93 to ptr
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then268
  %rp.0 = phi ptr [ %96, %if.then268 ], [ %incdec.ptr, %for.inc ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 787) #12
  %97 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 4
  %99 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !165
  %and.i = and i32 %99, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %100 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %rp.0, i32 -1226833921) #12, !srcloc !181
  %asmresult = extractvalue { i32, i32 } %100, 0
  %asmresult271 = extractvalue { i32, i32 } %100, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool273.not = icmp eq i32 %asmresult, 0
  br i1 %tobool273.not, label %if.end275, label %for.cond.cleanup418_crit_edge

for.cond.cleanup418_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end275:                                        ; preds = %for.cond
  %101 = zext i32 %asmresult271 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %asmresult271, label %if.then281 [
    i32 -1, label %if.end275.if.end304_crit_edge
    i32 0, label %if.end275.for.inc_crit_edge
  ]

if.end275.for.inc_crit_edge:                      ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end275.if.end304_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end304

if.then281:                                       ; preds = %if.end275
  %call282 = tail call fastcc i32 @calc_reloc(i32 noundef %asmresult271, ptr noundef %libinfo, i32 noundef %id, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16711935, i32 %call282)
  %cmp283 = icmp eq i32 %call282, -16711935
  br i1 %cmp283, label %if.then281.cleanup418_crit_edge, label %if.end286

if.then281.cleanup418_crit_edge:                  ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end286:                                        ; preds = %if.then281
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 797) #12
  %102 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i673 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i673 to ptr
  %cpu_domain.i.i674 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 4
  %104 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i674) #4, !srcloc !165
  %and.i675 = and i32 %104, -13
  %or.i676 = or i32 %and.i675, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i676) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %105 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %rp.0, i32 %call282, i32 -1226833921) #12, !srcloc !182
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool299.not = icmp eq i32 %105, 0
  br i1 %tobool299.not, label %if.end286.for.inc_crit_edge, label %if.end286.cleanup418_crit_edge

if.end286.cleanup418_crit_edge:                   ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end286.for.inc_crit_edge:                      ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end286.for.inc_crit_edge, %if.end275.for.inc_crit_edge
  %incdec.ptr = getelementptr i32, ptr %rp.0, i32 1
  br label %for.cond

if.end304:                                        ; preds = %if.end275.if.end304_crit_edge, %if.end242.if.end304_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp305 = icmp sgt i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp309734 = icmp sgt i32 %11, 0
  br i1 %cmp305, label %for.cond308.preheader, label %for.cond376.preheader

for.cond376.preheader:                            ; preds = %if.end304
  br i1 %cmp309734, label %for.cond376.preheader.for.body379_crit_edge, label %for.cond376.preheader.if.end403_crit_edge

for.cond376.preheader.if.end403_crit_edge:        ; preds = %for.cond376.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end403

for.cond376.preheader.for.body379_crit_edge:      ; preds = %for.cond376.preheader
  br label %for.body379

for.cond308.preheader:                            ; preds = %if.end304
  br i1 %cmp309734, label %for.cond308.preheader.for.body_crit_edge, label %for.cond308.preheader.if.end403_crit_edge

for.cond308.preheader.if.end403_crit_edge:        ; preds = %for.cond308.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end403

for.cond308.preheader.for.body_crit_edge:         ; preds = %for.cond308.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc373.for.body_crit_edge, %for.cond308.preheader.for.body_crit_edge
  %i.0735 = phi i32 [ %inc, %for.inc373.for.body_crit_edge ], [ 0, %for.cond308.preheader.for.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 824) #12
  %add.ptr316 = getelementptr i32, ptr %38, i32 %i.0735
  %106 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i677 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i677 to ptr
  %cpu_domain.i.i678 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 4
  %108 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i678) #4, !srcloc !165
  %and.i679 = and i32 %108, -13
  %or.i680 = or i32 %and.i679, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i680) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %109 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr316, i32 -1226833921) #12, !srcloc !183
  %asmresult323 = extractvalue { i32, i32 } %109, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult323)
  %tobool326.not = icmp eq i32 %asmresult323, 0
  br i1 %tobool326.not, label %if.end328, label %for.body.cleanup418_crit_edge

for.body.cleanup418_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end328:                                        ; preds = %for.body
  %asmresult324 = extractvalue { i32, i32 } %109, 1
  %call329 = tail call fastcc i32 @calc_reloc(i32 noundef %asmresult324, ptr noundef %libinfo, i32 noundef %id, i32 noundef 1)
  %110 = inttoptr i32 %call329 to ptr
  %cmp330 = icmp eq ptr %110, inttoptr (i32 -16711935 to ptr)
  br i1 %cmp330, label %if.end328.cleanup418_crit_edge, label %if.end333

if.end328.cleanup418_crit_edge:                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end333:                                        ; preds = %if.end328
  tail call void @__might_fault(ptr noundef nonnull @.str.73, i32 noundef 13) #12
  %111 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 4
  %113 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !165
  %and.i.i687 = and i32 %113, -13
  %or.i.i = or i32 %and.i.i687, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %114 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %110, i32 -1226833921) #12, !srcloc !184
  %asmresult.i = extractvalue { i32, i32 } %114, 0
  %asmresult1.i = extractvalue { i32, i32 } %114, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool335.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool335.not, label %if.end343, label %cleanup418.loopexit.split.loop.exit, !prof !179

if.end343:                                        ; preds = %if.end333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp344.not = icmp eq i32 %asmresult1.i, 0
  br i1 %cmp344.not, label %if.end343.for.inc373_crit_edge, label %if.then346

if.end343.for.inc373_crit_edge:                   ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc373

if.then346:                                       ; preds = %if.end343
  %call352 = tail call fastcc i32 @calc_reloc(i32 noundef %asmresult1.i, ptr noundef %libinfo, i32 noundef %id, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16711935, i32 %call352)
  %cmp353 = icmp eq i32 %call352, -16711935
  br i1 %cmp353, label %if.then346.cleanup418_crit_edge, label %if.end356

if.then346.cleanup418_crit_edge:                  ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end356:                                        ; preds = %if.then346
  tail call void @__might_fault(ptr noundef nonnull @.str.73, i32 noundef 22) #12
  %115 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i.i688 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i688 to ptr
  %cpu_domain.i.i.i689 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 4
  %117 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i689) #4, !srcloc !165
  %and.i.i690 = and i32 %117, -13
  %or.i.i691 = or i32 %and.i.i690, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i691) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %118 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %110, i32 %call352, i32 -1226833921) #12, !srcloc !185
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool358.not = icmp eq i32 %118, 0
  br i1 %tobool358.not, label %if.end356.for.inc373_crit_edge, label %if.end356.cleanup418_crit_edge, !prof !179

if.end356.cleanup418_crit_edge:                   ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end356.for.inc373_crit_edge:                   ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc373

for.inc373:                                       ; preds = %if.end356.for.inc373_crit_edge, %if.end343.for.inc373_crit_edge
  %inc = add nuw nsw i32 %i.0735, 1
  %exitcond741.not = icmp eq i32 %inc, %11
  br i1 %exitcond741.not, label %for.inc373.if.end403_crit_edge, label %for.inc373.for.body_crit_edge

for.inc373.for.body_crit_edge:                    ; preds = %for.inc373
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc373.if.end403_crit_edge:                   ; preds = %for.inc373
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end403

for.body379:                                      ; preds = %if.end396.for.body379_crit_edge, %for.cond376.preheader.for.body379_crit_edge
  %i.1725 = phi i32 [ %inc401, %if.end396.for.body379_crit_edge ], [ 0, %for.cond376.preheader.for.body379_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 867) #12
  %add.ptr384 = getelementptr i32, ptr %38, i32 %i.1725
  %119 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i681 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i681 to ptr
  %cpu_domain.i.i682 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 4
  %121 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i682) #4, !srcloc !165
  %and.i683 = and i32 %121, -13
  %or.i684 = or i32 %and.i683, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i684) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %122 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr384, i32 -1226833921) #12, !srcloc !186
  %asmresult391 = extractvalue { i32, i32 } %122, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult391)
  %tobool394.not = icmp eq i32 %asmresult391, 0
  br i1 %tobool394.not, label %if.end396, label %for.body379.cleanup418_crit_edge

for.body379.cleanup418_crit_edge:                 ; preds = %for.body379
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup418

if.end396:                                        ; preds = %for.body379
  %asmresult392 = extractvalue { i32, i32 } %122, 1
  tail call fastcc void @old_reloc(i32 noundef %asmresult392)
  %inc401 = add nuw nsw i32 %i.1725, 1
  %exitcond.not = icmp eq i32 %inc401, %11
  br i1 %exitcond.not, label %if.end396.if.end403_crit_edge, label %if.end396.for.body379_crit_edge

if.end396.for.body379_crit_edge:                  ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body379

if.end396.if.end403_crit_edge:                    ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end403

if.end403:                                        ; preds = %if.end396.if.end403_crit_edge, %for.inc373.if.end403_crit_edge, %for.cond308.preheader.if.end403_crit_edge, %for.cond376.preheader.if.end403_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 6) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 6), align 4
  %call404 = tail call i32 %123(i32 noundef %add182, i32 noundef %add183) #12
  %124 = inttoptr i32 %add247.pre-phi to ptr
  %125 = ptrtoint ptr %start_brk251 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %start_brk251, align 4
  %sub411 = add i32 %and73, %sub3
  %add412 = add i32 %sub411, %call74
  %add413 = sub i32 %add412, %126
  %127 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %124, i32 %add413, i32 -1226833920) #17, !srcloc !187
  %asmresult.i692 = extractvalue { i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i692)
  %cmp.i = icmp eq i32 %asmresult.i692, 0
  br i1 %cmp.i, label %if.then.i694, label %if.end403.clear_user.exit_crit_edge

if.end403.clear_user.exit_crit_edge:              ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_user.exit

if.then.i694:                                     ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #14
  %128 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i.i.i = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 4
  %130 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #4, !srcloc !165
  %and.i.i.i693 = and i32 %130, -13
  %or.i.i.i = or i32 %and.i.i.i693, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %124, i32 noundef %add413) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %clear_user.exit

clear_user.exit:                                  ; preds = %if.then.i694, %if.end403.clear_user.exit_crit_edge
  %n.addr.0.i695 = phi i32 [ %call1.i.i, %if.then.i694 ], [ %add413, %if.end403.clear_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i695)
  %tobool415.not = icmp eq i32 %n.addr.0.i695, 0
  %. = select i1 %tobool415.not, i32 0, i32 -14
  br label %cleanup418

cleanup418.loopexit.split.loop.exit:              ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #14
  %asmresult.i.le = extractvalue { i32, i32 } %114, 0
  br label %cleanup418

cleanup418:                                       ; preds = %cleanup418.loopexit.split.loop.exit, %clear_user.exit, %for.body379.cleanup418_crit_edge, %if.end356.cleanup418_crit_edge, %if.then346.cleanup418_crit_edge, %if.end328.cleanup418_crit_edge, %for.body.cleanup418_crit_edge, %if.end286.cleanup418_crit_edge, %if.then281.cleanup418_crit_edge, %for.cond.cleanup418_crit_edge, %if.then171, %if.then79, %if.then58.cleanup418_crit_edge, %if.end48.cleanup418_crit_edge, %do.end45, %do.end29, %do.end19, %if.end.cleanup418_crit_edge
  %retval.7 = phi i32 [ %., %clear_user.exit ], [ -8, %do.end19 ], [ -8, %do.end29 ], [ -8, %do.end45 ], [ %call59, %if.then58.cleanup418_crit_edge ], [ %spec.store.select445, %if.then79 ], [ %result.4703, %if.then171 ], [ -8, %if.end.cleanup418_crit_edge ], [ -12, %if.end48.cleanup418_crit_edge ], [ %asmresult.i.le, %cleanup418.loopexit.split.loop.exit ], [ %118, %if.end356.cleanup418_crit_edge ], [ -8, %if.then346.cleanup418_crit_edge ], [ -8, %if.end328.cleanup418_crit_edge ], [ -14, %for.body.cleanup418_crit_edge ], [ -14, %for.body379.cleanup418_crit_edge ], [ -8, %if.then281.cleanup418_crit_edge ], [ -14, %for.cond.cleanup418_crit_edge ], [ -14, %if.end286.cleanup418_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_arg_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finalize_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @begin_new_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_new_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decompress_exec(ptr nocapture noundef readonly %bprm, i64 noundef %fpos, ptr noundef %dst, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %fpos.addr = alloca i64, align 8
  %strm = alloca %struct.z_stream_s, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fpos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %fpos, ptr %fpos.addr, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %strm) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %fpos.addr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %fpos.addr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.33, i64 noundef %2, ptr noundef %dst, i32 noundef %len) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = call ptr @memset(ptr %strm, i32 0, i32 48)
  %call4 = tail call i32 @zlib_inflate_workspacesize() #12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call4, i32 noundef 3264) #16
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 8
  %4 = ptrtoint ptr %workspace to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %workspace, align 4
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 4000) #18
  %tobool11.not = icmp eq ptr %call7.i12, null
  br i1 %tobool11.not, label %if.end9.out_free_crit_edge, label %if.end13

if.end9.out_free_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end13:                                         ; preds = %if.end9
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %6 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file, align 4
  %call14 = call i32 @kernel_read(ptr noundef %7, ptr noundef nonnull %call7.i12, i32 noundef 4000, ptr noundef nonnull %fpos.addr) #12
  %8 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i12, ptr %strm, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %9 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call14, ptr %avail_in, align 4
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 2
  %10 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %total_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call14)
  %cmp = icmp slt i32 %call14, 10
  br i1 %cmp, label %do.body16, label %if.end32

do.body16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then28)) #12
          to label %out_free_buf [label %if.then28], !srcloc !177

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.35) #12
  br label %out_free_buf

if.end32:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %call7.i12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %12)
  %cmp33.not = icmp eq i8 %12, 31
  br i1 %cmp33.not, label %lor.lhs.false, label %if.end32.do.body44_crit_edge

if.end32.do.body44_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

lor.lhs.false:                                    ; preds = %if.end32
  %arrayidx35 = getelementptr i8, ptr %call7.i12, i32 1
  %13 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx35, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %14, label %lor.lhs.false.do.body44_crit_edge [
    i8 -117, label %lor.lhs.false.if.end60_crit_edge
    i8 -98, label %lor.lhs.false.if.end60_crit_edge61
  ]

lor.lhs.false.if.end60_crit_edge61:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

lor.lhs.false.if.end60_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

lor.lhs.false.do.body44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

do.body44:                                        ; preds = %lor.lhs.false.do.body44_crit_edge, %if.end32.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then56)) #12
          to label %out_free_buf [label %if.then56], !srcloc !177

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.37) #12
  br label %out_free_buf

if.end60:                                         ; preds = %lor.lhs.false.if.end60_crit_edge, %lor.lhs.false.if.end60_crit_edge61
  %arrayidx61 = getelementptr i8, ptr %call7.i12, i32 2
  %16 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp63.not = icmp eq i8 %17, 8
  br i1 %cmp63.not, label %if.end82, label %do.body66

do.body66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then78)) #12
          to label %out_free_buf [label %if.then78], !srcloc !177

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.39) #12
  br label %out_free_buf

if.end82:                                         ; preds = %if.end60
  %arrayidx83 = getelementptr i8, ptr %call7.i12, i32 3
  %18 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %19 to i32
  %20 = and i32 %conv84, 226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.end113, label %do.body97

do.body97:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then109)) #12
          to label %out_free_buf [label %if.then109], !srcloc !177

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.41) #12
  br label %out_free_buf

if.end113:                                        ; preds = %if.end82
  %and116 = and i32 %conv84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end113.if.end151_crit_edge, label %if.then118

if.end113.if.end151_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then118:                                       ; preds = %if.end113
  %arrayidx119 = getelementptr i8, ptr %call7.i12, i32 10
  %22 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx119, align 2
  %conv120 = zext i8 %23 to i32
  %add = add nuw nsw i32 %conv120, 2
  %arrayidx121 = getelementptr i8, ptr %call7.i12, i32 11
  %24 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv122, 8
  %add123 = add nuw nsw i32 %add, %shl
  %add124 = add nuw nsw i32 %add123, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3989, i32 %add123)
  %cmp125 = icmp ugt i32 %add123, 3989
  br i1 %cmp125, label %do.body134, label %if.then118.if.end151_crit_edge, !prof !178

if.then118.if.end151_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

do.body134:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then146)) #12
          to label %out_free_buf [label %if.then146], !srcloc !177

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.43) #12
  br label %out_free_buf

if.end151:                                        ; preds = %if.then118.if.end151_crit_edge, %if.end113.if.end151_crit_edge
  %ret.0 = phi i32 [ %add124, %if.then118.if.end151_crit_edge ], [ 10, %if.end113.if.end151_crit_edge ]
  %26 = and i8 %19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool155.not = icmp eq i8 %26, 0
  br i1 %tobool155.not, label %if.end151.if.end189_crit_edge, label %if.end151.while.cond_crit_edge

if.end151.while.cond_crit_edge:                   ; preds = %if.end151
  br label %while.cond

if.end151.if.end189_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end151.while.cond_crit_edge
  %ret.1 = phi i32 [ %inc, %land.rhs.while.cond_crit_edge ], [ %ret.0, %if.end151.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %ret.1)
  %exitcond.not = icmp eq i32 %ret.1, 4000
  br i1 %exitcond.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %inc = add nuw nsw i32 %ret.1, 1
  %arrayidx159 = getelementptr i8, ptr %call7.i12, i32 %ret.1
  %27 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx159, align 1
  %cmp161.not = icmp eq i8 %28, 0
  br i1 %cmp161.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %ret.2 = phi i32 [ %inc, %land.rhs.while.end_crit_edge ], [ 4000, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %ret.2)
  %cmp163 = icmp eq i32 %ret.2, 4000
  br i1 %cmp163, label %do.body172, label %while.end.if.end189_crit_edge, !prof !178

while.end.if.end189_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189

do.body172:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then184)) #12
          to label %out_free_buf [label %if.then184], !srcloc !177

if.then184:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.45) #12
  br label %out_free_buf

if.end189:                                        ; preds = %while.end.if.end189_crit_edge, %if.end151.if.end189_crit_edge
  %ret.3 = phi i32 [ %ret.2, %while.end.if.end189_crit_edge ], [ %ret.0, %if.end151.if.end189_crit_edge ]
  %29 = and i8 %19, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool193.not = icmp eq i8 %29, 0
  br i1 %tobool193.not, label %if.end189.if.end233_crit_edge, label %while.cond195.preheader

if.end189.if.end233_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end233

while.cond195.preheader:                          ; preds = %if.end189
  %smax59 = call i32 @llvm.smax.i32(i32 %ret.3, i32 4000)
  br label %while.cond195

while.cond195:                                    ; preds = %land.rhs198.while.cond195_crit_edge, %while.cond195.preheader
  %ret.4 = phi i32 [ %inc199, %land.rhs198.while.cond195_crit_edge ], [ %ret.3, %while.cond195.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.4, i32 %smax59)
  %exitcond60.not = icmp eq i32 %ret.4, %smax59
  br i1 %exitcond60.not, label %while.cond195.while.end206_crit_edge, label %land.rhs198

while.cond195.while.end206_crit_edge:             ; preds = %while.cond195
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end206

land.rhs198:                                      ; preds = %while.cond195
  %inc199 = add nuw nsw i32 %ret.4, 1
  %arrayidx200 = getelementptr i8, ptr %call7.i12, i32 %ret.4
  %30 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx200, align 1
  %cmp202.not = icmp eq i8 %31, 0
  br i1 %cmp202.not, label %land.rhs198.while.end206_crit_edge, label %land.rhs198.while.cond195_crit_edge

land.rhs198.while.cond195_crit_edge:              ; preds = %land.rhs198
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond195

land.rhs198.while.end206_crit_edge:               ; preds = %land.rhs198
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end206

while.end206:                                     ; preds = %land.rhs198.while.end206_crit_edge, %while.cond195.while.end206_crit_edge
  %ret.5 = phi i32 [ %inc199, %land.rhs198.while.end206_crit_edge ], [ %smax59, %while.cond195.while.end206_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %ret.5)
  %cmp207 = icmp eq i32 %ret.5, 4000
  br i1 %cmp207, label %do.body216, label %while.end206.if.end233_crit_edge, !prof !178

while.end206.if.end233_crit_edge:                 ; preds = %while.end206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end233

do.body216:                                       ; preds = %while.end206
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then228)) #12
          to label %out_free_buf [label %if.then228], !srcloc !177

if.then228:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.47) #12
  br label %out_free_buf

if.end233:                                        ; preds = %while.end206.if.end233_crit_edge, %if.end189.if.end233_crit_edge
  %ret.6 = phi i32 [ %ret.5, %while.end206.if.end233_crit_edge ], [ %ret.3, %if.end189.if.end233_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i12, i32 %ret.6
  %32 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %strm, align 4
  %sub = sub i32 %call14, %ret.6
  %33 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %avail_in, align 4
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %34 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dst, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %35 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %len, ptr %avail_out, align 4
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %36 = ptrtoint ptr %total_out to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %total_out, align 4
  %call236 = call i32 @zlib_inflateInit2(ptr noundef nonnull %strm, i32 noundef -15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237.not = icmp eq i32 %call236, 0
  br i1 %cmp237.not, label %while.cond257.preheader, label %do.body240

while.cond257.preheader:                          ; preds = %if.end233
  %call25856 = call i32 @zlib_inflate(ptr noundef nonnull %strm, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25856)
  %cmp25957 = icmp eq i32 %call25856, 0
  br i1 %cmp25957, label %while.cond257.preheader.while.body261_crit_edge, label %while.cond257.preheader.while.end272_crit_edge

while.cond257.preheader.while.end272_crit_edge:   ; preds = %while.cond257.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end272

while.cond257.preheader.while.body261_crit_edge:  ; preds = %while.cond257.preheader
  br label %while.body261

do.body240:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then252)) #12
          to label %out_free_buf [label %if.then252], !srcloc !177

if.then252:                                       ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.49) #12
  br label %out_free_buf

while.body261:                                    ; preds = %if.end267.while.body261_crit_edge, %while.cond257.preheader.while.body261_crit_edge
  %37 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %file, align 4
  %call263 = call i32 @kernel_read(ptr noundef %38, ptr noundef nonnull %call7.i12, i32 noundef 4000, ptr noundef nonnull %fpos.addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call263)
  %cmp264 = icmp slt i32 %call263, 1
  br i1 %cmp264, label %while.body261.while.end272_crit_edge, label %if.end267

while.body261.while.end272_crit_edge:             ; preds = %while.body261
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end272

if.end267:                                        ; preds = %while.body261
  %39 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i12, ptr %strm, align 4
  %40 = ptrtoint ptr %avail_in to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call263, ptr %avail_in, align 4
  %41 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %total_in, align 4
  %call258 = call i32 @zlib_inflate(ptr noundef nonnull %strm, i32 noundef 0) #12
  %cmp259 = icmp eq i32 %call258, 0
  br i1 %cmp259, label %if.end267.while.body261_crit_edge, label %if.end267.while.end272_crit_edge

if.end267.while.end272_crit_edge:                 ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end272

if.end267.while.body261_crit_edge:                ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body261

while.end272:                                     ; preds = %if.end267.while.end272_crit_edge, %while.body261.while.end272_crit_edge, %while.cond257.preheader.while.end272_crit_edge
  %ret.7 = phi i32 [ %call25856, %while.cond257.preheader.while.end272_crit_edge ], [ %call263, %while.body261.while.end272_crit_edge ], [ %call258, %if.end267.while.end272_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7)
  %cmp273 = icmp slt i32 %ret.7, 0
  br i1 %cmp273, label %do.body276, label %while.end272.out_zlib_crit_edge

while.end272.out_zlib_crit_edge:                  ; preds = %while.end272
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_zlib

do.body276:                                       ; preds = %while.end272
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decompress_exec.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decompress_exec, %if.then288)) #12
          to label %out_zlib [label %if.then288], !srcloc !177

if.then288:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  %42 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %msg, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decompress_exec.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.51, i32 noundef %ret.7, ptr noundef %43) #12
  br label %out_zlib

out_zlib:                                         ; preds = %if.then288, %do.body276, %while.end272.out_zlib_crit_edge
  %retval1.0 = phi i32 [ -8, %if.then288 ], [ 0, %while.end272.out_zlib_crit_edge ], [ -8, %do.body276 ]
  %call293 = call i32 @zlib_inflateEnd(ptr noundef nonnull %strm) #12
  br label %out_free_buf

out_free_buf:                                     ; preds = %out_zlib, %if.then252, %do.body240, %if.then228, %do.body216, %if.then184, %do.body172, %if.then146, %do.body134, %if.then109, %do.body97, %if.then78, %do.body66, %if.then56, %do.body44, %if.then28, %do.body16
  %retval1.1 = phi i32 [ -8, %if.then28 ], [ -8, %if.then56 ], [ -8, %if.then78 ], [ -8, %if.then109 ], [ -8, %if.then146 ], [ -8, %if.then184 ], [ -8, %if.then228 ], [ -8, %if.then252 ], [ %retval1.0, %out_zlib ], [ -8, %do.body16 ], [ -8, %do.body44 ], [ -8, %do.body66 ], [ -8, %do.body97 ], [ -8, %do.body134 ], [ -8, %do.body172 ], [ -8, %do.body216 ], [ -8, %do.body240 ]
  call void @kfree(ptr noundef nonnull %call7.i12) #12
  br label %out_free

out_free:                                         ; preds = %out_free_buf, %if.end9.out_free_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %out_free_buf ], [ -12, %if.end9.out_free_crit_edge ]
  %44 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %workspace, align 4
  call void @kfree(ptr noundef %45) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %out_free ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %strm) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_code(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_reloc(i32 noundef %r, ptr nocapture noundef %p, i32 noundef %curid, i32 noundef %internalp) unnamed_addr #2 align 64 {
entry:
  %bprm.i = alloca %struct.linux_binprm, align 4
  %buf.i = alloca [16 x i8], align 1
  %pos.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r)
  %cmp = icmp eq i32 %r, 0
  %shr = lshr i32 %r, 24
  %and1 = and i32 %r, 16777215
  %id.0 = select i1 %cmp, i32 %curid, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %id.0)
  %cmp2 = icmp sgt i32 %id.0, 3
  br i1 %cmp2, label %do.end, label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %and1, i32 noundef %id.0) #15
  br label %do.end80

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0, i32 %curid)
  %cmp5.not = icmp eq i32 %id.0, %curid
  br i1 %cmp5.not, label %if.end4.if.end48_crit_edge, label %if.then6

if.end4.if.end48_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internalp)
  %tobool.not = icmp eq i32 %internalp, 0
  br i1 %tobool.not, label %if.else13, label %do.end10

do.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %and1, i32 noundef %curid, i32 noundef %id.0) #15
  br label %do.end80

if.else13:                                        ; preds = %if.then6
  %loaded = getelementptr [4 x %struct.anon.68], ptr %p, i32 0, i32 %id.0, i32 6
  %0 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %loaded, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool14.not = icmp eq i8 %1, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.else13.if.end24_crit_edge

if.else13.if.end24_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else13
  call void @llvm.lifetime.start.p0(i64 348, ptr nonnull %bprm.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #12
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #12
  %3 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %pos.i, align 8
  %4 = call ptr @memset(ptr %bprm.i, i32 0, i32 348)
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.72, i32 noundef %id.0) #12
  %filename.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm.i, i32 0, i32 14
  %5 = ptrtoint ptr %filename.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf.i, ptr %filename.i, align 4
  %call3.i = call ptr @open_exec(ptr noundef nonnull %buf.i) #12
  %file.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm.i, i32 0, i32 8
  %6 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3.i, ptr %file.i, align 4
  %7 = ptrtoint ptr %call3.i to i32
  %cmp.i138 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %land.lhs.true.load_flat_shared_library.exit_crit_edge, label %if.end.i

land.lhs.true.load_flat_shared_library.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %load_flat_shared_library.exit

if.end.i:                                         ; preds = %land.lhs.true
  %buf9.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm.i, i32 0, i32 22
  %call11.i = call i32 @kernel_read(ptr noundef %call3.i, ptr noundef %buf9.i, i32 noundef 256, ptr noundef nonnull %pos.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11.i)
  %cmp.i = icmp sgt i32 %call11.i, -1
  br i1 %cmp.i, label %if.then12.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = call fastcc i32 @load_flat_file(ptr noundef nonnull %bprm.i, ptr noundef %p, i32 noundef %id.0, ptr noundef null) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i.if.end14.i_crit_edge
  %res.0.i = phi i32 [ %call13.i, %if.then12.i ], [ %call11.i, %if.end.i.if.end14.i_crit_edge ]
  %8 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end14.i.allow_write_access.exit_crit_edge, label %if.then.i

if.end14.i.allow_write_access.exit_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %allow_write_access.exit

if.then.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 42
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #12
  %12 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #12, !srcloc !188
  br label %allow_write_access.exit

allow_write_access.exit:                          ; preds = %if.then.i, %if.end14.i.allow_write_access.exit_crit_edge
  %13 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file.i, align 4
  call void @fput(ptr noundef %14) #12
  br label %load_flat_shared_library.exit

load_flat_shared_library.exit:                    ; preds = %allow_write_access.exit, %land.lhs.true.load_flat_shared_library.exit_crit_edge
  %retval.0.i = phi i32 [ %res.0.i, %allow_write_access.exit ], [ %7, %land.lhs.true.load_flat_shared_library.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 348, ptr nonnull %bprm.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp16 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp16, label %do.end20, label %load_flat_shared_library.exit.if.end24_crit_edge

load_flat_shared_library.exit.if.end24_crit_edge: ; preds = %load_flat_shared_library.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.end20:                                         ; preds = %load_flat_shared_library.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %id.0) #15
  br label %do.end80

if.end24:                                         ; preds = %load_flat_shared_library.exit.if.end24_crit_edge, %if.else13.if.end24_crit_edge
  %build_date = getelementptr [4 x %struct.anon.68], ptr %p, i32 0, i32 %id.0, i32 5
  %15 = ptrtoint ptr %build_date to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %build_date, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool27.not = icmp eq i32 %16, 0
  br i1 %tobool27.not, label %if.end24.if.end48_crit_edge, label %land.lhs.true28

if.end24.if.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

land.lhs.true28:                                  ; preds = %if.end24
  %build_date31 = getelementptr [4 x %struct.anon.68], ptr %p, i32 0, i32 %curid, i32 5
  %17 = ptrtoint ptr %build_date31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %build_date31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool32.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp40 = icmp ult i32 %18, %16
  %or.cond = select i1 %tobool32.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %do.end44, label %land.lhs.true28.if.end48_crit_edge

land.lhs.true28.if.end48_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

do.end44:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %id.0, i32 noundef %curid) #15
  br label %do.end80

if.end48:                                         ; preds = %land.lhs.true28.if.end48_crit_edge, %if.end24.if.end48_crit_edge, %if.end4.if.end48_crit_edge
  %start_brk51 = getelementptr [4 x %struct.anon.68], ptr %p, i32 0, i32 %id.0, i32 2
  %19 = ptrtoint ptr %start_brk51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_brk51, align 4
  %start_data54 = getelementptr [4 x %struct.anon.68], ptr %p, i32 0, i32 %id.0, i32 1
  %21 = ptrtoint ptr %start_data54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_data54, align 4
  %text_len60 = getelementptr [4 x %struct.anon.68], ptr %p, i32 0, i32 %id.0, i32 3
  %23 = ptrtoint ptr %text_len60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %text_len60, align 4
  %sub = sub i32 %20, %22
  %add = add i32 %sub, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %add)
  %cmp61 = icmp ugt i32 %and1, %add
  br i1 %cmp61, label %do.end65, label %if.end70

do.end65:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %and1, i32 noundef %add, i32 noundef %24) #15
  br label %do.end80

if.end70:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx50 = getelementptr [4 x %struct.anon.68], ptr %p, i32 0, i32 %id.0
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %24)
  %cmp71 = icmp ult i32 %and1, %24
  %add73 = add i32 %26, %and1
  %sub75 = add i32 %22, %and1
  %add76 = sub i32 %sub75, %24
  %addr.0 = select i1 %cmp71, i32 %add73, i32 %add76
  br label %cleanup

do.end80:                                         ; preds = %do.end65, %do.end44, %do.end20, %do.end10, %do.end
  %27 = call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm) #15
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %call86 = call i32 @send_sig(i32 noundef 11, ptr noundef %32, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end70
  %retval.0 = phi i32 [ -16711935, %do.end80 ], [ %addr.0, %if.end70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @old_reloc(i32 noundef %rl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i82 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i82 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %start_data = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %start_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_data, align 4
  %bf.shl = shl i32 %rl, 2
  %bf.ashr = ashr exact i32 %bf.shl, 2
  %add = add i32 %7, %bf.ashr
  %8 = inttoptr i32 %add to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 408) #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !165
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %8, i32 -1226833921) #12, !srcloc !189
  %asmresult2 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @old_reloc.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@old_reloc, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr = lshr i32 %rl, 30
  %arrayidx = getelementptr [4 x ptr], ptr @old_reloc.segment, i32 0, i32 %bf.lshr
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @old_reloc.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.80, i32 noundef %bf.ashr, ptr noundef %8, i32 noundef %asmresult2, ptr noundef %14) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bf.lshr13 = lshr i32 %rl, 30
  %15 = zext i32 %bf.lshr13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %bf.lshr13, label %do.end31 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb24
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %mm16 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %mm16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm16, align 8
  %start_code = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 28
  %20 = ptrtoint ptr %start_code to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start_code, align 4
  %add17 = add i32 %21, %asmresult2
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %mm21 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 53
  %24 = ptrtoint ptr %mm21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mm21, align 8
  %start_data22 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 30
  %26 = ptrtoint ptr %start_data22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %start_data22, align 4
  %add23 = add i32 %27, %asmresult2
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %mm27 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %mm27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm27, align 8
  %end_data = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 31
  %32 = ptrtoint ptr %end_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end_data, align 8
  %add28 = add i32 %33, %asmresult2
  br label %sw.epilog

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %bf.lshr13) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end31, %sw.bb24, %sw.bb18, %sw.bb
  %val.0 = phi i32 [ %asmresult2, %do.end31 ], [ %add28, %sw.bb24 ], [ %add23, %sw.bb18 ], [ %add17, %sw.bb ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 428) #12
  %34 = tail call i32 @llvm.read_register.i32(metadata !154) #12
  %and.i.i.i75 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i75 to ptr
  %cpu_domain.i.i76 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i76) #4, !srcloc !165
  %and.i77 = and i32 %36, -13
  %or.i78 = or i32 %and.i77, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i78) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %val.0, i32 -1226833921) #12, !srcloc !190
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #12, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @old_reloc.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@old_reloc, %if.then60)) #12
          to label %do.end63 [label %if.then60], !srcloc !177

if.then60:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @old_reloc.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.83, i32 noundef %val.0) #12
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %sw.epilog
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

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
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_binfmt_flat__244_1042_init_flat_binfmt1, !1, !"__initcall__kmod_binfmt_flat__244_1042_init_flat_binfmt1", i1 false, i1 false}
!1 = !{!"../fs/binfmt_flat.c", i32 1042, i32 1}
!2 = !{ptr @flat_format, !3, !"flat_format", i1 false, i1 false}
!3 = !{!"../fs/binfmt_flat.c", i32 102, i32 28}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/binfmt_flat.c", i32 978, i32 8}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/binfmt_flat.c", i32 1028, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @load_flat_binary.__UNIQUE_ID_ddebug243, !7, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/binfmt_flat.c", i32 466, i32 26}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/binfmt_flat.c", i32 479, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @load_flat_file._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @load_flat_file._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/binfmt_flat.c", i32 483, i32 3}
!21 = !{ptr @load_flat_file._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @load_flat_file._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/binfmt_flat.c", i32 491, i32 3}
!25 = !{ptr @load_flat_file._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @load_flat_file._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/binfmt_flat.c", i32 520, i32 3}
!29 = !{ptr @load_flat_file._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @load_flat_file._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/binfmt_flat.c", i32 642, i32 4}
!33 = !{ptr @load_flat_file._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @load_flat_file._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/binfmt_flat.c", i32 723, i32 4}
!37 = !{ptr @load_flat_file._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @load_flat_file._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/binfmt_flat.c", i32 755, i32 3}
!41 = !{ptr @load_flat_file._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @load_flat_file._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/binfmt_flat.c", i32 757, i32 3}
!45 = !{ptr @load_flat_file._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @load_flat_file._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/binfmt_flat.c", i32 210, i32 2}
!51 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug225, !50, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!53 = !{ptr @.str.33, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/binfmt_flat.c", i32 234, i32 3}
!56 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug226, !55, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!57 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/binfmt_flat.c", i32 240, i32 3}
!60 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug227, !59, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!61 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/binfmt_flat.c", i32 246, i32 3}
!64 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug228, !63, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!65 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/binfmt_flat.c", i32 252, i32 3}
!68 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug229, !67, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!69 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/binfmt_flat.c", i32 260, i32 4}
!72 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug230, !71, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!73 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/binfmt_flat.c", i32 268, i32 4}
!76 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug231, !75, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!77 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/binfmt_flat.c", i32 276, i32 4}
!80 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug232, !79, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!81 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/binfmt_flat.c", i32 289, i32 3}
!84 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug233, !83, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!85 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/binfmt_flat.c", i32 305, i32 3}
!88 = !{ptr @decompress_exec.__UNIQUE_ID_ddebug234, !87, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!89 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!92 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/binfmt_flat.c", i32 342, i32 3}
!99 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @calc_reloc._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @calc_reloc._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/binfmt_flat.c", i32 347, i32 4}
!104 = !{ptr @calc_reloc._entry.57, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @calc_reloc._entry_ptr.59, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/binfmt_flat.c", i32 352, i32 4}
!108 = !{ptr @calc_reloc._entry.60, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @calc_reloc._entry_ptr.62, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/binfmt_flat.c", i32 358, i32 4}
!112 = !{ptr @calc_reloc._entry.63, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @calc_reloc._entry_ptr.65, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/binfmt_flat.c", i32 372, i32 3}
!116 = !{ptr @calc_reloc._entry.66, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @calc_reloc._entry_ptr.68, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.70, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/binfmt_flat.c", i32 386, i32 2}
!120 = !{ptr @calc_reloc._entry.69, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @calc_reloc._entry_ptr.71, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.72, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/binfmt_flat.c", i32 911, i32 15}
!124 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/asm-generic/flat.h", i32 13, i32 9}
!126 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/binfmt_flat.c", i32 397, i32 35}
!128 = !{ptr @.str.75, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/binfmt_flat.c", i32 397, i32 43}
!130 = !{ptr @.str.76, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/binfmt_flat.c", i32 397, i32 51}
!132 = !{ptr @.str.77, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/binfmt_flat.c", i32 397, i32 58}
!134 = !{ptr @old_reloc.segment, !135, !"segment", i1 false, i1 false}
!135 = !{!"../fs/binfmt_flat.c", i32 397, i32 21}
!136 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/binfmt_flat.c", i32 410, i32 2}
!138 = !{ptr @.str.79, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @old_reloc.__UNIQUE_ID_ddebug235, !137, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!140 = !{ptr @.str.80, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/binfmt_flat.c", i32 425, i32 3}
!143 = !{ptr @old_reloc._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @old_reloc._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/binfmt_flat.c", i32 430, i32 2}
!147 = !{ptr @old_reloc.__UNIQUE_ID_ddebug236, !146, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!148 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/binfmt_flat.c", i32 117, i32 2}
!151 = !{ptr @.str.85, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @flat_core_dump._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @flat_core_dump._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i8 0, i8 2}
!165 = !{i64 5257054}
!166 = !{i64 5257251}
!167 = !{i64 2152742484}
!168 = !{i64 2153748526, i64 2153748806, i64 2153749140, i64 2153749474}
!169 = !{i64 2153503000, i64 2153503280, i64 2153503614, i64 2153503948}
!170 = !{i64 2153512314, i64 2153512594, i64 2153512928, i64 2153513262}
!171 = !{i64 2153521085, i64 2153521365, i64 2153521699, i64 2153522033}
!172 = !{i64 2153529927, i64 2153530207, i64 2153530541, i64 2153530875}
!173 = !{i64 2153538852, i64 2153539132, i64 2153539466, i64 2153539800}
!174 = !{i64 2153547738, i64 2153548018, i64 2153548352, i64 2153548686}
!175 = !{i64 2153556663, i64 2153556943, i64 2153557277, i64 2153557611}
!176 = !{i64 2153758001, i64 2153758281, i64 2153758615, i64 2153758949}
!177 = !{i64 2148718750, i64 2148718755, i64 2148718768, i64 2148718812, i64 2148718846, i64 2148718867}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{i64 2152762180, i64 2152762205}
!181 = !{i64 2153699853, i64 2153700133, i64 2153700467, i64 2153700801}
!182 = !{i64 2153709313, i64 2153709593, i64 2153709927, i64 2153710261}
!183 = !{i64 2153720816, i64 2153721096, i64 2153721430, i64 2153721764}
!184 = !{i64 2153479662, i64 2153479942, i64 2153480276, i64 2153480610}
!185 = !{i64 2153489284, i64 2153489564, i64 2153489898, i64 2153490232}
!186 = !{i64 2153733313, i64 2153733593, i64 2153733927, i64 2153734261}
!187 = !{i64 2152758301, i64 2152758326}
!188 = !{i64 2148236935, i64 2148236961, i64 2148236990, i64 2148237024, i64 2148237055, i64 2148237078}
!189 = !{i64 2153636980, i64 2153637260, i64 2153637594, i64 2153637928}
!190 = !{i64 2153651303, i64 2153651583, i64 2153651917, i64 2153652251}
