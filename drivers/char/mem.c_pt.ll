; ModuleID = '/llk/IR_all_yes/drivers/char/mem.c_pt.bc'
source_filename = "../drivers/char/mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.memdev = type { ptr, i16, ptr, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.84 = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.28, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.72, %union.anon.73 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { i64 }
%struct.splice_desc = type { i32, i32, i32, %union.anon.89, i64, ptr, i32, i8 }
%union.anon.89 = type { ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.anon.27 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }

@__initcall__kmod_mem__300_781_chr_dev_init5 = internal global ptr @chr_dev_init, section ".initcall5.init", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@memory_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @memory_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@chr_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to get major %d for memory devs\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chr_dev_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/char/mem.c\00", [45 x i8] zeroinitializer }, align 32
@chr_dev_init._entry_ptr = internal global ptr @chr_dev_init._entry, section ".printk_index", align 4
@chr_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mem_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@devlist = internal constant { [12 x %struct.memdev], [32 x i8] } { [12 x %struct.memdev] [%struct.memdev zeroinitializer, %struct.memdev { ptr @.str, i16 0, ptr @mem_fops, i32 8192 }, %struct.memdev zeroinitializer, %struct.memdev { ptr @.str.4, i16 438, ptr @null_fops, i32 134217728 }, %struct.memdev { ptr @.str.5, i16 0, ptr @port_fops, i32 0 }, %struct.memdev { ptr @.str.6, i16 438, ptr @zero_fops, i32 134217728 }, %struct.memdev zeroinitializer, %struct.memdev { ptr @.str.7, i16 438, ptr @full_fops, i32 0 }, %struct.memdev { ptr @.str.8, i16 438, ptr @random_fops, i32 0 }, %struct.memdev { ptr @.str.9, i16 438, ptr @urandom_fops, i32 0 }, %struct.memdev zeroinitializer, %struct.memdev { ptr @.str.10, i16 420, ptr @kmsg_fops, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mem_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @memory_lseek, ptr @read_mem, ptr @write_mem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmap_mem, i32 0, ptr @open_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@null_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @null_lseek, ptr @read_null, ptr @write_null, ptr @read_iter_null, ptr @write_iter_null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @splice_write_null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@port_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @memory_lseek, ptr @read_port, ptr @write_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@zero_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @null_lseek, ptr @read_zero, ptr @write_null, ptr @read_iter_zero, ptr @write_iter_null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmap_zero, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_unmapped_area_zero, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@full_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @null_lseek, ptr null, ptr @write_full, ptr @read_iter_zero, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"random\00", [25 x i8] zeroinitializer }, align 32
@random_fops = external dso_local constant %struct.file_operations, align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"urandom\00", [24 x i8] zeroinitializer }, align 32
@urandom_fops = external dso_local constant %struct.file_operations, align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kmsg\00", [27 x i8] zeroinitializer }, align 32
@kmsg_fops = external dso_local constant %struct.file_operations, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mmap_mem_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 756, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"memory_fops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 738, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 757, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 759, i32 14 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"mem_class\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 750, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [8 x i8] c"devlist\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 699, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"mem_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 647, i32 52 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 703, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"null_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 659, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 705, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"port_fops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 668, i32 52 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 707, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"zero_fops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 675, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 708, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"full_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 688, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 709, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 710, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 712, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 230, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 214, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 174, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"mmap_mem_ops\00", align 1
@___asan_gen_.89 = private constant [22 x i8] c"../drivers/char/mem.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 356, i32 42 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_mem__300_781_chr_dev_init5, ptr @chr_dev_init._entry, ptr @chr_dev_init._entry_ptr, ptr @.str, ptr @memory_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @chr_dev_init.__key, ptr @mem_class, ptr @devlist, ptr @mem_fops, ptr @.str.4, ptr @null_fops, ptr @.str.5, ptr @port_fops, ptr @.str.6, ptr @zero_fops, ptr @.str.7, ptr @full_fops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mmap_mem_ops], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memory_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chr_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chr_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devlist to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmap_mem_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @phys_mem_access_prot_allowed(ptr noundef %file, i32 noundef %pfn, i32 noundef %size, ptr noundef %vma_prot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chr_dev_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__register_chrdev(i32 noundef 1, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @memory_fops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 1) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @chr_dev_init.__key) #11
  store ptr %call3, ptr @mem_class, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %devnode = getelementptr inbounds %struct.class, ptr %call3, i32 0, i32 6
  %1 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mem_devnode, ptr %devnode, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7
  %minor.023 = phi i32 [ 1, %if.end7 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.memdev], ptr @devlist, i32 0, i32 %minor.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load ptr, ptr @mem_class, align 4
  %or = or i32 %minor.023, 1048576
  %call16 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %4, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull %3) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %minor.023, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 @tty_init() #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5
  %retval.0 = phi i32 [ %0, %if.then5 ], [ %call17, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @mem_devnode(ptr nocapture noundef readonly %dev, ptr noundef writeonly %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mode, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  %2 = lshr i32 1111, %and
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.not = icmp eq i32 %3, 0
  br i1 %tobool2.not.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %mode1 = getelementptr [12 x %struct.memdev], ptr @devlist, i32 0, i32 %and, i32 1
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode1, align 4
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %mode, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr null
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tty_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memory_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = lshr i32 1093, %and.i
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %fops = getelementptr [12 x %struct.memdev], ptr @devlist, i32 0, i32 %and.i, i32 2
  %4 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fops, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 3
  %6 = ptrtoint ptr %f_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %f_op, align 4
  %fmode = getelementptr [12 x %struct.memdev], ptr @devlist, i32 0, i32 %and.i, i32 3
  %7 = ptrtoint ptr %fmode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmode, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %9 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_mode, align 8
  %or = or i32 %10, %8
  store i32 %or, ptr %f_mode, align 8
  %open = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 14
  %11 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %open, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end2.cleanup_crit_edge, label %if.then6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 %12(ptr noundef %inode, ptr noundef %filp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @memory_lseek(ptr nocapture noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #11
  %2 = zext i32 %orig to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %orig, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %entry.sw.bb1_crit_edge
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %3 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %f_pos, align 8
  %add = add i64 %4, %offset
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %offset.addr.0 = phi i64 [ %offset, %entry.sw.bb1_crit_edge ], [ %add, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4096, i64 %offset.addr.0)
  %cmp = icmp ugt i64 %offset.addr.0, -4096
  br i1 %cmp, label %sw.bb1.sw.epilog_crit_edge, label %if.end

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %f_pos2 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %5 = ptrtoint ptr %f_pos2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %offset.addr.0, ptr %f_pos2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i64 [ %offset.addr.0, %if.end ], [ -75, %sw.bb1.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i12 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i12) #11
  ret i64 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_mem(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %2 = icmp ult i64 %1, 4294967296
  br i1 %2, label %if.end, label %entry.cleanup41_crit_edge

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

if.end:                                           ; preds = %entry
  %call = tail call i32 @valid_phys_addr_range(i32 noundef %conv, i32 noundef %count) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup41_crit_edge, label %if.end4

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 4096) #15
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.end4.cleanup41_crit_edge, label %while.cond.preheader

if.end4.cleanup41_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

while.cond.preheader:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.not98 = icmp eq i32 %count, 0
  br i1 %cmp9.not98, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.backedge, %while.cond.preheader.while.body_crit_edge
  %read.0104 = phi i32 [ %add33, %while.body.backedge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %p.0102 = phi i32 [ %add, %while.body.backedge ], [ %conv, %while.cond.preheader.while.body_crit_edge ]
  %count.addr.0101 = phi i32 [ %sub, %while.body.backedge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.addr.099 = phi ptr [ %add.ptr, %while.body.backedge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %and.i = and i32 %p.0102, 4095
  %sub.i = sub nuw nsw i32 4096, %and.i
  %4 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %count.addr.0101) #11
  %shr = lshr i32 %p.0102, 12
  %call.i = tail call i32 @devmem_is_allowed(i32 noundef %shr) #11
  %5 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call.i, label %if.else [
    i32 0, label %while.body.failed_crit_edge
    i32 2, label %if.then18
  ]

while.body.failed_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.then18:                                        ; preds = %while.body
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.099, i32 %4, i32 -1226833920) #16, !srcloc !61
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.then.i75, label %if.then18.failed_crit_edge

if.then18.failed_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.then.i75:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %7 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #6, !srcloc !62
  %and.i.i.i = and i32 %9, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %buf.addr.099, i32 noundef %4) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  br label %if.end29

if.else:                                          ; preds = %while.body
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %p.0102, i32 -2130706432, i32 8454144) #16, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %if.else.failed_crit_edge, label %if.end23

if.else.failed_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end23:                                         ; preds = %if.else
  %11 = inttoptr i32 %10 to ptr
  %call24 = tail call i32 @copy_from_kernel_nofault(ptr noundef nonnull %call7.i, ptr noundef nonnull %11, i32 noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then.i.i.i, label %if.end23.failed_crit_edge

if.end23.failed_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.then.i.i.i:                                    ; preds = %if.end23
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %4, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.failed_crit_edge, label %if.end.i.i

if.then.i.i.i.failed_crit_edge:                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.099, i32 %4, i32 -1226833920) #16, !srcloc !66
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.failed_crit_edge

if.end.i.i.failed_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %4) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.099, ptr noundef nonnull %call7.i, i32 noundef %4) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then2.i.i, %if.then.i75
  %remaining.0 = phi i32 [ %call1.i.i, %if.then.i75 ], [ %call.i12.i.i, %if.then2.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0)
  %tobool30.not = icmp eq i32 %remaining.0, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.failed_crit_edge

if.end29.failed_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end32:                                         ; preds = %if.end29
  %add.ptr = getelementptr i8, ptr %buf.addr.099, i32 %4
  %add = add i32 %4, %p.0102
  %sub = sub i32 %count.addr.0101, %4
  %add33 = add i32 %4, %read.0104
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i77 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i77 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 16384
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %if.end32.if.end.i_crit_edge, label %if.then.i79

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i79:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 103, i32 noundef 0) #11
  %call.i.i78 = tail call i32 @__cond_resched() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i79, %if.end32.if.end.i_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup, label %should_stop_iteration.exit

should_stop_iteration.exit:                       ; preds = %if.end.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 116, i32 1
  %26 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %signal.i.i.i, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %phi.cmp.i.not = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %phi.cmp.i.not, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %should_stop_iteration.exit.while.end_crit_edge, label %should_stop_iteration.exit.while.body.backedge_crit_edge

should_stop_iteration.exit.while.body.backedge_crit_edge: ; preds = %should_stop_iteration.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.backedge

should_stop_iteration.exit.while.end_crit_edge:   ; preds = %should_stop_iteration.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9.not.old = icmp eq i32 %sub, 0
  br i1 %cmp9.not.old, label %cleanup.while.end_crit_edge, label %cleanup.while.body.backedge_crit_edge

cleanup.while.body.backedge_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.backedge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.backedge:                              ; preds = %cleanup.while.body.backedge_crit_edge, %should_stop_iteration.exit.while.body.backedge_crit_edge
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %should_stop_iteration.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %read.2 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add33, %should_stop_iteration.exit.while.end_crit_edge ], [ %add33, %cleanup.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  %conv39 = sext i32 %read.2 to i64
  %29 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ppos, align 8
  %add40 = add i64 %30, %conv39
  store i64 %add40, ptr %ppos, align 8
  br label %cleanup41

failed:                                           ; preds = %if.end29.failed_crit_edge, %if.end.i.i.failed_crit_edge, %if.then.i.i.i.failed_crit_edge, %if.end23.failed_crit_edge, %if.else.failed_crit_edge, %if.then18.failed_crit_edge, %while.body.failed_crit_edge
  %err.0.ph.ph = phi i32 [ -14, %if.end29.failed_crit_edge ], [ -14, %if.end23.failed_crit_edge ], [ -14, %if.else.failed_crit_edge ], [ -1, %while.body.failed_crit_edge ], [ -14, %if.then18.failed_crit_edge ], [ -14, %if.then.i.i.i.failed_crit_edge ], [ -14, %if.end.i.i.failed_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup41

cleanup41:                                        ; preds = %failed, %while.end, %if.end4.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ %err.0.ph.ph, %failed ], [ %read.2, %while.end ], [ 0, %entry.cleanup41_crit_edge ], [ -14, %if.end.cleanup41_crit_edge ], [ -12, %if.end4.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_mem(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %2 = icmp ult i64 %1, 4294967296
  br i1 %2, label %if.end, label %entry.cleanup38_crit_edge

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end:                                           ; preds = %entry
  %conv = trunc i64 %1 to i32
  %call = tail call i32 @valid_phys_addr_range(i32 noundef %conv, i32 noundef %count) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup38_crit_edge, label %while.cond.preheader

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5.not111 = icmp eq i32 %count, 0
  br i1 %cmp5.not111, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.backedge, %while.cond.preheader.while.body_crit_edge
  %written.0117 = phi i32 [ %add32, %while.body.backedge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %p.0115 = phi i32 [ %add30, %while.body.backedge ], [ %conv, %while.cond.preheader.while.body_crit_edge ]
  %count.addr.0114 = phi i32 [ %sub31, %while.body.backedge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.addr.0112 = phi ptr [ %add.ptr, %while.body.backedge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %and.i = and i32 %p.0115, 4095
  %sub.i = sub nuw nsw i32 4096, %and.i
  %3 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %count.addr.0114) #11
  %shr = lshr i32 %p.0115, 12
  %call.i = tail call i32 @devmem_is_allowed(i32 noundef %shr) #11
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call.i, label %while.body.if.end29_crit_edge [
    i32 0, label %while.body.cleanup38_crit_edge
    i32 1, label %if.then14
  ]

while.body.cleanup38_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then14:                                        ; preds = %while.body
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %p.0115, i32 -2130706432, i32 8454144) #16, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0117)
  %tobool18.not = icmp eq i32 %written.0117, 0
  br i1 %tobool18.not, label %if.then17.cleanup38_crit_edge, label %if.then17.while.end_crit_edge

if.then17.while.end_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then17.cleanup38_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end21:                                         ; preds = %if.then14
  %6 = inttoptr i32 %5 to ptr
  tail call void @__check_object_size(ptr noundef nonnull %6, i32 noundef %3, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end21.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end21.if.then11.i.i_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end21
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0112, i32 %3, i32 -1226833920) #16, !srcloc !67
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !68

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %6, i32 noundef %3) #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !62
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %buf.addr.0112, i32 noundef %3) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end29_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !68

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i.if.end29_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end21.if.then11.i.i_crit_edge
  %res.0.i.i76 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %3, %if.end21.if.then11.i.i_crit_edge ], [ %3, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %11 = inttoptr i32 %5 to ptr
  %sub.i.i = sub i32 %3, %res.0.i.i76
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i76)
  %sub = sub i32 %3, %res.0.i.i76
  %add = add i32 %sub, %written.0117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool25.not = icmp eq i32 %add, 0
  br i1 %tobool25.not, label %if.then11.i.i.cleanup38_crit_edge, label %if.then11.i.i.while.end_crit_edge

if.then11.i.i.while.end_crit_edge:                ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then11.i.i.cleanup38_crit_edge:                ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end29:                                         ; preds = %if.end.i.i.if.end29_crit_edge, %while.body.if.end29_crit_edge
  %add.ptr = getelementptr i8, ptr %buf.addr.0112, i32 %3
  %add30 = add i32 %3, %p.0115
  %sub31 = sub i32 %count.addr.0114, %3
  %add32 = add i32 %3, %written.0117
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 16384
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %if.end29.if.end.i_crit_edge, label %if.then.i73

if.end29.if.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i73:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 103, i32 noundef 0) #11
  %call.i.i72 = tail call i32 @__cond_resched() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i73, %if.end29.if.end.i_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup, label %should_stop_iteration.exit

should_stop_iteration.exit:                       ; preds = %if.end.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 116, i32 1
  %26 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %signal.i.i.i, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %phi.cmp.i.not = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %cmp5.not = icmp eq i32 %sub31, 0
  %or.cond = select i1 %phi.cmp.i.not, i1 true, i1 %cmp5.not
  br i1 %or.cond, label %should_stop_iteration.exit.while.end_crit_edge, label %should_stop_iteration.exit.while.body.backedge_crit_edge

should_stop_iteration.exit.while.body.backedge_crit_edge: ; preds = %should_stop_iteration.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.backedge

should_stop_iteration.exit.while.end_crit_edge:   ; preds = %should_stop_iteration.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %cmp5.not.old = icmp eq i32 %sub31, 0
  br i1 %cmp5.not.old, label %cleanup.while.end_crit_edge, label %cleanup.while.body.backedge_crit_edge

cleanup.while.body.backedge_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.backedge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.backedge:                              ; preds = %cleanup.while.body.backedge_crit_edge, %should_stop_iteration.exit.while.body.backedge_crit_edge
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %should_stop_iteration.exit.while.end_crit_edge, %if.then11.i.i.while.end_crit_edge, %if.then17.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %written.2 = phi i32 [ %add, %if.then11.i.i.while.end_crit_edge ], [ %written.0117, %if.then17.while.end_crit_edge ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add32, %should_stop_iteration.exit.while.end_crit_edge ], [ %add32, %cleanup.while.end_crit_edge ]
  %conv36 = sext i32 %written.2 to i64
  %29 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ppos, align 8
  %add37 = add i64 %30, %conv36
  store i64 %add37, ptr %ppos, align 8
  br label %cleanup38

cleanup38:                                        ; preds = %while.end, %if.then11.i.i.cleanup38_crit_edge, %if.then17.cleanup38_crit_edge, %while.body.cleanup38_crit_edge, %if.end.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.2 = phi i32 [ %written.2, %while.end ], [ -27, %entry.cleanup38_crit_edge ], [ -14, %if.end.cleanup38_crit_edge ], [ -14, %if.then17.cleanup38_crit_edge ], [ -14, %if.then11.i.i.cleanup38_crit_edge ], [ -1, %while.body.cleanup38_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmap_mem(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub = sub i32 %1, %3
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %5)
  %6 = icmp ugt i32 %5, 1048575
  %shl = shl i32 %5, 12
  %7 = sub i32 0, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %7)
  %cmp3 = icmp ugt i32 %shl, %7
  %or.cond = select i1 %6, i1 true, i1 %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call = tail call i32 @valid_mmap_phys_addr_range(i32 noundef %5, i32 noundef %sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff, align 4
  %conv.i = zext i32 %9 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %conv1.i = zext i32 %sub to i64
  %add.i = add nuw nsw i64 %shl.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp10.not.i = icmp eq i32 %1, %3
  br i1 %cmp10.not.i, label %if.end8.if.end17_crit_edge, label %if.end8.while.body.i_crit_edge

if.end8.while.body.i_crit_edge:                   ; preds = %if.end8
  br label %while.body.i

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end8.while.body.i_crit_edge
  %cursor.012.i = phi i64 [ %add3.i, %if.end.i.while.body.i_crit_edge ], [ %shl.i, %if.end8.while.body.i_crit_edge ]
  %pfn.addr.011.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ %9, %if.end8.while.body.i_crit_edge ]
  %call.i = tail call i32 @devmem_is_allowed(i32 noundef %pfn.addr.011.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %add3.i = add nuw nsw i64 %cursor.012.i, 4096
  %inc.i = add i32 %pfn.addr.011.i, 1
  %cmp.i = icmp ult i64 %add3.i, %add.i
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end17_crit_edge

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end17:                                         ; preds = %if.end.i.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %10 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %call19 = tail call i32 @phys_mem_access_prot_allowed(ptr noundef %file, i32 noundef %11, i32 noundef %sub, ptr noundef %vm_page_prot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_pgoff, align 4
  %14 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_page_prot, align 4
  %call25 = tail call i32 @phys_mem_access_prot(ptr noundef %file, i32 noundef %13, i32 noundef %sub, i32 noundef %15) #11
  %16 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call25, ptr %vm_page_prot, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %17 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mmap_mem_ops, ptr %vm_ops, align 4
  %18 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vma, align 4
  %20 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_pgoff, align 4
  %call30 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %19, i32 noundef %21, i32 noundef %sub, i32 noundef %call25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %. = select i1 %tobool31.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ %., %if.end22 ], [ -1, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_port(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 17) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @security_locked_down(i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 1
  br i1 %cmp.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call ptr @iomem_get_mapping() #11
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %f_mapping, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @valid_phys_addr_range(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devmem_is_allowed(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @valid_mmap_phys_addr_range(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phys_mem_access_prot(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iomem_get_mapping() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i64 @null_lseek(ptr nocapture noundef writeonly %file, i64 noundef %offset, i32 noundef %orig) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %0 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %f_pos, align 8
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @read_null(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @write_null(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @read_iter_null(ptr nocapture noundef readnone %iocb, ptr nocapture noundef readnone %to) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_iter_null(ptr nocapture noundef readnone %iocb, ptr noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  tail call void @iov_iter_advance(ptr noundef %from, i32 noundef %1) #11
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @splice_write_null(ptr noundef %pipe, ptr noundef %out, ptr noundef %ppos, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @splice_from_pipe(ptr noundef %pipe, ptr noundef %out, ptr noundef %ppos, i32 noundef %len, i32 noundef %flags, ptr noundef nonnull @pipe_to_null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_from_pipe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pipe_to_null(ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %buf, ptr nocapture noundef readonly %sd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.splice_desc, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_port(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #16, !srcloc !69
  %asmresult = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4.not31 = icmp ne i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %conv)
  %cmp632 = icmp ult i32 %conv, 65536
  %or.cond33 = select i1 %cmp4.not31, i1 %cmp632, i1 false
  br i1 %or.cond33, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec36.in = phi i32 [ %dec36, %if.end16.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %i.035 = phi i32 [ %inc, %if.end16.while.body_crit_edge ], [ %conv, %while.cond.preheader.while.body_crit_edge ]
  %tmp.034 = phi ptr [ %incdec.ptr, %if.end16.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %add = or i32 %i.035, -18874368
  %3 = inttoptr i32 %add to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #11, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !71
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 414) #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !62
  %and.i = and i32 %7, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %8 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %tmp.034, i8 %4, i32 -1226833921) #11, !srcloc !72
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13 = icmp slt i32 %8, 0
  br i1 %cmp13, label %while.body.cleanup_crit_edge, label %if.end16

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %while.body
  %dec36 = add i32 %dec36.in, -1
  %inc = add nuw nsw i32 %i.035, 1
  %incdec.ptr = getelementptr i8, ptr %tmp.034, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36)
  %cmp4.not = icmp ne i32 %dec36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %i.035)
  %cmp6 = icmp ult i32 %i.035, 65535
  %or.cond = select i1 %cmp4.not, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end16.while.body_crit_edge, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %tmp.0.lcssa = phi ptr [ %buf, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr, %if.end16.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ %conv, %while.cond.preheader.while.end_crit_edge ], [ %inc, %if.end16.while.end_crit_edge ]
  %conv17 = zext i32 %i.0.lcssa to i64
  %9 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv17, ptr %ppos, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %tmp.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %while.end ], [ -14, %entry.cleanup_crit_edge ], [ -14, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_port(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #16, !srcloc !73
  %asmresult = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %while.cond.preheader, label %entry.cleanup21_crit_edge

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

while.cond.preheader:                             ; preds = %entry
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4.not46 = icmp ne i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %conv)
  %cmp647 = icmp ult i32 %conv, 65536
  %or.cond48 = select i1 %cmp4.not46, i1 %cmp647, i1 false
  br i1 %or.cond48, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec51.in = phi i32 [ %dec51, %cleanup.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %i.050 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ %conv, %while.cond.preheader.while.body_crit_edge ]
  %tmp.049 = phi ptr [ %incdec.ptr, %cleanup.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 434) #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !62
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %tmp.049, i32 -1226833921) #11, !srcloc !74
  %asmresult9 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult9)
  %tobool.not = icmp eq i32 %asmresult9, 0
  br i1 %tobool.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %while.body
  %cmp14 = icmp ugt ptr %tmp.049, %buf
  br i1 %cmp14, label %if.then13.while.end_crit_edge, label %if.then13.cleanup21_crit_edge

if.then13.cleanup21_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup21

if.then13.while.end_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup:                                          ; preds = %while.body
  %dec51 = add i32 %dec51.in, -1
  %asmresult10 = extractvalue { i32, i32 } %6, 1
  %conv11 = trunc i32 %asmresult10 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !75
  tail call void @arm_heavy_mb() #11
  %add = or i32 %i.050, -18874368
  %7 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv11) #11, !srcloc !76
  %inc = add nuw nsw i32 %i.050, 1
  %incdec.ptr = getelementptr i8, ptr %tmp.049, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51)
  %cmp4.not = icmp ne i32 %dec51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %i.050)
  %cmp6 = icmp ult i32 %i.050, 65535
  %or.cond = select i1 %cmp4.not, i1 %cmp6, i1 false
  br i1 %or.cond, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then13.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %tmp.044 = phi ptr [ %tmp.049, %if.then13.while.end_crit_edge ], [ %buf, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr, %cleanup.while.end_crit_edge ]
  %i.042 = phi i32 [ %i.050, %if.then13.while.end_crit_edge ], [ %conv, %while.cond.preheader.while.end_crit_edge ], [ %inc, %cleanup.while.end_crit_edge ]
  %conv20 = zext i32 %i.042 to i64
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv20, ptr %ppos, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %tmp.044 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup21

cleanup21:                                        ; preds = %while.end, %if.then13.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.2 = phi i32 [ %sub.ptr.sub, %while.end ], [ -14, %entry.cleanup21_crit_edge ], [ -14, %if.then13.cleanup21_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_zero(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not45 = icmp eq i32 %count, 0
  br i1 %tobool.not45, label %entry.cleanup17_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %count.addr.047 = phi i32 [ %sub8, %cleanup.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %cleared.046 = phi i32 [ %add7, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %0 = tail call i32 @llvm.umin.i32(i32 %count.addr.047, i32 4096)
  %add.ptr = getelementptr i8, ptr %buf, i32 %cleared.046
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %0, i32 -1226833920) #16, !srcloc !61
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %clear_user.exit, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

clear_user.exit:                                  ; preds = %while.body
  %2 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #6, !srcloc !62
  %and.i.i.i = and i32 %4, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %add.ptr, i32 noundef %0) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool1.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool1.not, label %if.end6, label %clear_user.exit.if.then_crit_edge, !prof !68

clear_user.exit.if.then_crit_edge:                ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %clear_user.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  %n.addr.0.i32 = phi i32 [ %call1.i.i, %clear_user.exit.if.then_crit_edge ], [ %0, %while.body.if.then_crit_edge ]
  %sub = sub i32 %0, %n.addr.0.i32
  %add = add i32 %sub, %cleared.046
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool4.not = icmp eq i32 %add, 0
  br i1 %tobool4.not, label %if.then.cleanup17_crit_edge, label %if.then.cleanup.thread_crit_edge

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then.cleanup17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.end6:                                          ; preds = %clear_user.exit
  %add7 = add i32 %0, %cleared.046
  %sub8 = sub i32 %count.addr.047, %0
  %5 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stack.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end6.cleanup.thread_crit_edge, !prof !68

if.end6.cleanup.thread_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

signal_pending.exit:                              ; preds = %if.end6
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and1.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool11.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool11.not, label %cleanup, label %signal_pending.exit.cleanup.thread_crit_edge

signal_pending.exit.cleanup.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %signal_pending.exit.cleanup.thread_crit_edge, %if.end6.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %cleared.1.ph = phi i32 [ %add, %if.then.cleanup.thread_crit_edge ], [ %add7, %if.end6.cleanup.thread_crit_edge ], [ %add7, %signal_pending.exit.cleanup.thread_crit_edge ]
  br label %cleanup17

cleanup:                                          ; preds = %signal_pending.exit
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 528, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  %tobool.not = icmp eq i32 %sub8, 0
  br i1 %tobool.not, label %cleanup.cleanup17_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.cleanup17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup.cleanup17_crit_edge, %cleanup.thread, %if.then.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.2 = phi i32 [ %cleared.1.ph, %cleanup.thread ], [ -14, %if.then.cleanup17_crit_edge ], [ 0, %entry.cleanup17_crit_edge ], [ %add7, %cleanup.cleanup17_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_iter_zero(ptr nocapture noundef readonly %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not58 = icmp eq i32 %1, 0
  br i1 %tobool.not58, label %entry.cleanup32_crit_edge, label %while.body.lr.ph

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

while.body.lr.ph:                                 ; preds = %entry
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %25, %cleanup.while.body_crit_edge ]
  %written.059 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 4096)
  %call2 = tail call i32 @iov_iter_zero(i32 noundef %3, ptr noundef %iter) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %while.body
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end8_crit_edge, label %if.then6

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.059)
  %tobool7.not = icmp eq i32 %written.059, 0
  %spec.select = select i1 %tobool7.not, i32 -14, i32 %written.059
  br label %cleanup32

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %while.body.if.end8_crit_edge
  %add = add i32 %call2, %written.059
  %6 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end8.if.then12_crit_edge, !prof !68

if.end8.if.then12_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

signal_pending.exit:                              ; preds = %if.end8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %11, align 4
  %and1.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool11.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool11.not, label %if.end18, label %signal_pending.exit.if.then12_crit_edge

signal_pending.exit.if.then12_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %signal_pending.exit.if.then12_crit_edge, %if.end8.if.then12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool13.not = icmp eq i32 %add, 0
  %spec.select45 = select i1 %tobool13.not, i32 -512, i32 %add
  br label %cleanup32

if.end18:                                         ; preds = %signal_pending.exit
  %17 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 16384
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %22 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ki_flags, align 8
  %and = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end29, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool24.not = icmp eq i32 %add, 0
  %spec.select46 = select i1 %tobool24.not, i32 -11, i32 %add
  br label %cleanup32

if.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 502, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end18.cleanup_crit_edge
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 8
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %cleanup.cleanup32_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.cleanup32_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup.cleanup32_crit_edge, %if.then23, %if.then12, %if.then6, %entry.cleanup32_crit_edge
  %retval.2 = phi i32 [ %spec.select, %if.then6 ], [ %spec.select46, %if.then23 ], [ %spec.select45, %if.then12 ], [ 0, %entry.cleanup32_crit_edge ], [ %add, %cleanup.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmap_zero(ptr nocapture noundef readnone %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @shmem_zero_setup(ptr noundef %vma) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %2 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vm_ops.i, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_unmapped_area_zero(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @shmem_get_unmapped_area(ptr noundef null, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #11
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
  %get_unmapped_area = getelementptr inbounds %struct.anon.27, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %get_unmapped_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_unmapped_area, align 8
  %call2 = tail call i32 %7(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_zero_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @write_full(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -28
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_mem__300_781_chr_dev_init5, !1, !"__initcall__kmod_mem__300_781_chr_dev_init5", i1 false, i1 false}
!1 = !{!"../drivers/char/mem.c", i32 781, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/char/mem.c", i32 756, i32 33}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/char/mem.c", i32 757, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @chr_dev_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @chr_dev_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @chr_dev_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/char/mem.c", i32 759, i32 14}
!12 = !{ptr @memory_fops, !13, !"memory_fops", i1 false, i1 false}
!13 = !{!"../drivers/char/mem.c", i32 738, i32 37}
!14 = !{ptr @mem_class, !15, !"mem_class", i1 false, i1 false}
!15 = !{!"../drivers/char/mem.c", i32 750, i32 22}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/mem.c", i32 703, i32 11}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/mem.c", i32 705, i32 11}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/mem.c", i32 707, i32 11}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/mem.c", i32 708, i32 11}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/char/mem.c", i32 709, i32 11}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/mem.c", i32 710, i32 11}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/mem.c", i32 712, i32 11}
!30 = !{ptr @devlist, !31, !"devlist", i1 false, i1 false}
!31 = !{!"../drivers/char/mem.c", i32 699, i32 3}
!32 = !{ptr @mem_fops, !33, !"mem_fops", i1 false, i1 false}
!33 = !{!"../drivers/char/mem.c", i32 647, i32 52}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!41 = !{ptr @mmap_mem_ops, !42, !"mmap_mem_ops", i1 false, i1 false}
!42 = !{!"../drivers/char/mem.c", i32 356, i32 42}
!43 = !{ptr @null_fops, !44, !"null_fops", i1 false, i1 false}
!44 = !{!"../drivers/char/mem.c", i32 659, i32 37}
!45 = !{ptr @port_fops, !46, !"port_fops", i1 false, i1 false}
!46 = !{!"../drivers/char/mem.c", i32 668, i32 52}
!47 = !{ptr @zero_fops, !48, !"zero_fops", i1 false, i1 false}
!48 = !{!"../drivers/char/mem.c", i32 675, i32 37}
!49 = !{ptr @full_fops, !50, !"full_fops", i1 false, i1 false}
!50 = !{!"../drivers/char/mem.c", i32 688, i32 37}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2152737138, i64 2152737163}
!62 = !{i64 5235891}
!63 = !{i64 5236088}
!64 = !{i64 2152721321}
!65 = !{i64 2149087201, i64 2149087224, i64 2149087256, i64 2149087288, i64 2149087326, i64 2149087356}
!66 = !{i64 2152741017, i64 2152741042}
!67 = !{i64 2152740336, i64 2152740361}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2155254056, i64 2155254081}
!70 = !{i64 6671994}
!71 = !{i64 2155256193}
!72 = !{i64 2155257408, i64 2155257688, i64 2155258022, i64 2155258356}
!73 = !{i64 2155264409, i64 2155264434}
!74 = !{i64 2155268433, i64 2155268713, i64 2155269047, i64 2155269381}
!75 = !{i64 2155277324}
!76 = !{i64 6671599}
