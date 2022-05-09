; ModuleID = '/llk/IR_all_yes/mm/mmap.c_pt.bc'
source_filename = "../mm/mmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vm_get_page_prot\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_get_page_prot\09\09\09\09"
module asm "\09.long\09__crc_vm_get_page_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_get_page_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_get_page_prot\22\09\09\09\09\09"
module asm "__kstrtabns_vm_get_page_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_unmapped_area\22, \22a\22\09"
module asm "\09.weak\09__crc_get_unmapped_area\09\09\09\09"
module asm "\09.long\09__crc_get_unmapped_area\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_unmapped_area:\09\09\09\09\09"
module asm "\09.asciz \09\22get_unmapped_area\22\09\09\09\09\09"
module asm "__kstrtabns_get_unmapped_area:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+find_vma\22, \22a\22\09"
module asm "\09.weak\09__crc_find_vma\09\09\09\09"
module asm "\09.long\09__crc_find_vma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22find_vma\22\09\09\09\09\09"
module asm "__kstrtabns_find_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+find_extend_vma\22, \22a\22\09"
module asm "\09.weak\09__crc_find_extend_vma\09\09\09\09"
module asm "\09.long\09__crc_find_extend_vma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_extend_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22find_extend_vma\22\09\09\09\09\09"
module asm "__kstrtabns_find_extend_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vm_munmap\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_munmap\09\09\09\09"
module asm "\09.long\09__crc_vm_munmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_munmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_munmap\22\09\09\09\09\09"
module asm "__kstrtabns_vm_munmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vm_brk_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_brk_flags\09\09\09\09"
module asm "\09.long\09__crc_vm_brk_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_brk_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_brk_flags\22\09\09\09\09\09"
module asm "__kstrtabns_vm_brk_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vm_brk\22, \22a\22\09"
module asm "\09.weak\09__crc_vm_brk\09\09\09\09"
module asm "\09.long\09__crc_vm_brk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_brk:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_brk\22\09\09\09\09\09"
module asm "__kstrtabns_vm_brk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_vm_unmapped_area = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.40 }
%struct.llist_node = type { ptr }
%union.anon.40 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.15 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vm_unmapped_area_info = type { i32, i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.16, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.69 = type { %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
%struct.anon_vma_name = type { %struct.kref, [0 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.104, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.105, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.106, ptr, %struct.address_space, %struct.list_head, %union.anon.107, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.104 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.105 = type { %struct.callback_head }
%union.anon.106 = type { ptr }
%union.anon.107 = type { ptr }
%struct.mmap_arg_struct = type { i32, i32, i32, i32, i32, i32 }
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.anon.18 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.82, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.82 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.18, i32, ptr, ptr, %union.anon.19, ptr, ptr, ptr, ptr, ptr }
%union.anon.19 = type { i32 }

@__tpstrtab_vm_unmapped_area = internal constant [17 x i8] c"vm_unmapped_area\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vm_unmapped_area = dso_local global %struct.static_call_key { ptr @__traceiter_vm_unmapped_area }, align 4
@__tracepoint_vm_unmapped_area = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_vm_unmapped_area, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_vm_unmapped_area, ptr null, ptr @__traceiter_vm_unmapped_area, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vm_unmapped_area = internal constant ptr @__tracepoint_vm_unmapped_area, section "__tracepoints_ptrs", align 4
@str__mmap__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmap\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_vm_unmapped_area = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.0 { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.0 { %struct.anon { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.0 { %struct.anon { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.0 { %struct.anon { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.0 { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.0 { %struct.anon { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.0 { %struct.anon { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.0 { %struct.anon { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_vm_unmapped_area = internal global %struct.trace_event_class { ptr @str__mmap__trace_system_name, ptr @trace_event_raw_event_vm_unmapped_area, ptr @perf_trace_vm_unmapped_area, ptr @trace_event_reg, ptr @trace_event_fields_vm_unmapped_area, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_vm_unmapped_area, i64 24), ptr getelementptr (i8, ptr @event_class_vm_unmapped_area, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_vm_unmapped_area = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_vm_unmapped_area, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_vm_unmapped_area = internal global { [409 x i8], [103 x i8] } { [409 x i8] c"\22addr=0x%lx err=%ld total_vm=0x%lx flags=0x%lx len=0x%lx lo=0x%lx hi=0x%lx mask=0x%lx ofs=0x%lx\0A\22, __builtin_expect(!!((unsigned long)(void *)(REC->addr) >= (unsigned long)-4095), 0) ? 0 : REC->addr, __builtin_expect(!!((unsigned long)(void *)(REC->addr) >= (unsigned long)-4095), 0) ? REC->addr : 0, REC->total_vm, REC->flags, REC->length, REC->low_limit, REC->high_limit, REC->align_mask, REC->align_offset\00", [103 x i8] zeroinitializer }, align 32
@event_vm_unmapped_area = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_vm_unmapped_area, %union.anon.1 { ptr @__tracepoint_vm_unmapped_area }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_vm_unmapped_area }, ptr @print_fmt_vm_unmapped_area, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_vm_unmapped_area = internal global ptr @event_vm_unmapped_area, section "_ftrace_events", align 4
@__bpf_trace_tp_map_vm_unmapped_area = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_vm_unmapped_area, ptr @__bpf_trace_vm_unmapped_area, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@mmap_rnd_bits_min = dso_local constant { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@mmap_rnd_bits_max = dso_local constant { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@mmap_rnd_bits = dso_local local_unnamed_addr global i32 8, section ".data..read_mostly", align 4
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_rlimit_data = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ignore_rlimit_data = internal constant %struct.kernel_param { ptr @___asan_gen_.98, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @ignore_rlimit_data } }, section "__param", align 4
@protection_map = dso_local local_unnamed_addr global [16 x i32] [i32 2691, i32 899, i32 899, i32 899, i32 387, i32 387, i32 387, i32 387, i32 2691, i32 899, i32 771, i32 771, i32 387, i32 387, i32 259, i32 259], section ".data..ro_after_init", align 4
@__kstrtab_vm_get_page_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_get_page_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_get_page_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_get_page_prot to i32), ptr @__kstrtab_vm_get_page_prot, ptr @__kstrtabns_vm_get_page_prot }, section "___ksymtab+vm_get_page_prot", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_enter_brk\00", [18 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__brk = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 1, ptr @types__brk, ptr @args__brk, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__brk, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__brk, i64 20) }, ptr @event_enter__brk, ptr @event_exit__brk }, align 4
@event_enter__brk = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.1 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__brk, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__brk = internal global ptr @event_enter__brk, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_exit_brk\00", [19 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__brk = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.1 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__brk, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__brk = internal global ptr @event_exit__brk, section "_ftrace_events", align 4
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_brk\00", [24 x i8] zeroinitializer }, align 32
@types__brk = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@args__brk = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__brk = internal global ptr @__syscall_meta__brk, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mm/mmap.c\00", [22 x i8] zeroinitializer }, align 32
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4
@sysctl_overcommit_memory = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_mmap_pgoff\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__mmap_pgoff = internal global %struct.syscall_metadata { ptr @.str.7, i32 -1, i32 6, ptr @types__mmap_pgoff, ptr @args__mmap_pgoff, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mmap_pgoff, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mmap_pgoff, i64 20) }, ptr @event_enter__mmap_pgoff, ptr @event_exit__mmap_pgoff }, align 4
@event_enter__mmap_pgoff = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.1 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__mmap_pgoff, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mmap_pgoff = internal global ptr @event_enter__mmap_pgoff, section "_ftrace_events", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_mmap_pgoff\00", [44 x i8] zeroinitializer }, align 32
@event_exit__mmap_pgoff = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.1 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__mmap_pgoff, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mmap_pgoff = internal global ptr @event_exit__mmap_pgoff, section "_ftrace_events", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_mmap_pgoff\00", [17 x i8] zeroinitializer }, align 32
@types__mmap_pgoff = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.21], [40 x i8] zeroinitializer }, align 32
@args__mmap_pgoff = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.22, ptr @.str.54, ptr @.str.55, ptr @.str.24, ptr @.str.56, ptr @.str.57], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mmap_pgoff = internal global ptr @__syscall_meta__mmap_pgoff, section "__syscalls_metadata", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_old_mmap\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__old_mmap = internal global %struct.syscall_metadata { ptr @.str.10, i32 -1, i32 1, ptr @types__old_mmap, ptr @args__old_mmap, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__old_mmap, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__old_mmap, i64 20) }, ptr @event_enter__old_mmap, ptr @event_exit__old_mmap }, align 4
@event_enter__old_mmap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.1 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__old_mmap, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__old_mmap = internal global ptr @event_enter__old_mmap, section "_ftrace_events", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_old_mmap\00", [46 x i8] zeroinitializer }, align 32
@event_exit__old_mmap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.1 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__old_mmap, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__old_mmap = internal global ptr @event_exit__old_mmap, section "_ftrace_events", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_old_mmap\00", [19 x i8] zeroinitializer }, align 32
@types__old_mmap = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.58], [28 x i8] zeroinitializer }, align 32
@args__old_mmap = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.59], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__old_mmap = internal global ptr @__syscall_meta__old_mmap, section "__syscalls_metadata", align 4
@mmap_region.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_get_unmapped_area = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_unmapped_area = external dso_local constant [0 x i8], align 1
@__ksymtab_get_unmapped_area = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_unmapped_area to i32), ptr @__kstrtab_get_unmapped_area, ptr @__kstrtabns_get_unmapped_area }, section "___ksymtab+get_unmapped_area", align 4
@__kstrtab_find_vma = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_vma = external dso_local constant [0 x i8], align 1
@__ksymtab_find_vma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_vma to i32), ptr @__kstrtab_find_vma, ptr @__kstrtabns_find_vma }, section "___ksymtab+find_vma", align 4
@mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@stack_guard_gap = dso_local global { i32, [28 x i8] } { i32 1048576, [28 x i8] zeroinitializer }, align 32
@__setup_str_cmdline_parse_stack_guard_gap = internal constant [17 x i8] c"stack_guard_gap=\00", section ".init.rodata", align 1
@__setup_cmdline_parse_stack_guard_gap = internal global %struct.obs_kernel_param { ptr @__setup_str_cmdline_parse_stack_guard_gap, ptr @cmdline_parse_stack_guard_gap, i32 0 }, section ".init.setup", align 4
@__kstrtab_find_extend_vma = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_extend_vma = external dso_local constant [0 x i8], align 1
@__ksymtab_find_extend_vma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_extend_vma to i32), ptr @__kstrtab_find_extend_vma, ptr @__kstrtabns_find_extend_vma }, section "___ksymtab_gpl+find_extend_vma", align 4
@__kstrtab_vm_munmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_munmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_munmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_munmap to i32), ptr @__kstrtab_vm_munmap, ptr @__kstrtabns_vm_munmap }, section "___ksymtab+vm_munmap", align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_munmap\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__munmap = internal global %struct.syscall_metadata { ptr @.str.13, i32 -1, i32 2, ptr @types__munmap, ptr @args__munmap, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__munmap, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__munmap, i64 20) }, ptr @event_enter__munmap, ptr @event_exit__munmap }, align 4
@event_enter__munmap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.1 { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__munmap, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__munmap = internal global ptr @event_enter__munmap, section "_ftrace_events", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_munmap\00", [16 x i8] zeroinitializer }, align 32
@event_exit__munmap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.1 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__munmap, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__munmap = internal global ptr @event_exit__munmap, section "_ftrace_events", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_munmap\00", [21 x i8] zeroinitializer }, align 32
@types__munmap = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@args__munmap = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.54], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__munmap = internal global ptr @__syscall_meta__munmap, section "__syscalls_metadata", align 4
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_remap_file_pages\00", [37 x i8] zeroinitializer }, align 32
@__syscall_meta__remap_file_pages = internal global %struct.syscall_metadata { ptr @.str.16, i32 -1, i32 5, ptr @types__remap_file_pages, ptr @args__remap_file_pages, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__remap_file_pages, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__remap_file_pages, i64 20) }, ptr @event_enter__remap_file_pages, ptr @event_exit__remap_file_pages }, align 4
@event_enter__remap_file_pages = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.1 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__remap_file_pages, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__remap_file_pages = internal global ptr @event_enter__remap_file_pages, section "_ftrace_events", align 4
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_remap_file_pages\00", [38 x i8] zeroinitializer }, align 32
@event_exit__remap_file_pages = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.1 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__remap_file_pages, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__remap_file_pages = internal global ptr @event_exit__remap_file_pages, section "_ftrace_events", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_remap_file_pages\00", [43 x i8] zeroinitializer }, align 32
@types__remap_file_pages = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.21], [44 x i8] zeroinitializer }, align 32
@args__remap_file_pages = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.55, ptr @.str.57, ptr @.str.24], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__remap_file_pages = internal global ptr @__syscall_meta__remap_file_pages, section "__syscalls_metadata", align 4
@__kstrtab_vm_brk_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_brk_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_brk_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_brk_flags to i32), ptr @__kstrtab_vm_brk_flags, ptr @__kstrtabns_vm_brk_flags }, section "___ksymtab+vm_brk_flags", align 4
@__kstrtab_vm_brk = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_brk = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_brk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_brk to i32), ptr @__kstrtab_vm_brk, ptr @__kstrtabns_vm_brk }, section "___ksymtab+vm_brk", align 4
@may_expand_vm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@may_expand_vm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 3330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014mmap: %s (%d): VmData %lu exceed data ulimit %lu. Update limits%s.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"may_expand_vm\00", [18 x i8] zeroinitializer }, align 32
@may_expand_vm._entry_ptr = internal global ptr @may_expand_vm._entry, section ".printk_index", align 4
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" or use boot option ignore_rlimit_data\00", [57 x i8] zeroinitializer }, align 32
@special_mapping_vmops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr @special_mapping_close, ptr @special_mapping_split, ptr @special_mapping_mremap, ptr null, ptr @special_mapping_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @special_mapping_name, ptr null }, [40 x i8] zeroinitializer }, align 32
@legacy_special_mapping_vmops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr @special_mapping_close, ptr null, ptr null, ptr null, ptr @special_mapping_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mm_all_locks_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mm_all_locks_mutex, i64 52), ptr getelementptr (i8, ptr @mm_all_locks_mutex, i64 52) }, ptr @mm_all_locks_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.74, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mmap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@__initcall__kmod_mmap__352_3717_init_user_reserve4 = internal global ptr @init_user_reserve, section ".initcall4.init", align 4
@__initcall__kmod_mmap__355_3738_init_admin_reserve4 = internal global ptr @init_admin_reserve, section ".initcall4.init", align 4
@__initcall__kmod_mmap__356_3808_init_reserve_notifier4 = internal global ptr @init_reserve_notifier, section ".initcall4.init", align 4
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"total_vm\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"low_limit\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high_limit\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"align_mask\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"align_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"addr=0x%lx err=%ld total_vm=0x%lx flags=0x%lx len=0x%lx lo=0x%lx hi=0x%lx mask=0x%lx ofs=0x%lx\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"brk\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@validate_mm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\010mmap: map_count %d vm_next %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"validate_mm\00", [20 x i8] zeroinitializer }, align 32
@validate_mm._entry_ptr = internal global ptr @validate_mm._entry, section ".printk_index", align 4
@validate_mm._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\010mmap: mm->highest_vm_end %lx, found %lx\0A\00", [53 x i8] zeroinitializer }, align 32
@validate_mm._entry_ptr.36 = internal global ptr @validate_mm._entry.34, section ".printk_index", align 4
@validate_mm._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\010mmap: map_count %d rb %d\0A\00", [36 x i8] zeroinitializer }, align 32
@validate_mm._entry_ptr.39 = internal global ptr @validate_mm._entry.37, section ".printk_index", align 4
@browse_rb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\010mmap: vm_start %lx < prev %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"browse_rb\00", [22 x i8] zeroinitializer }, align 32
@browse_rb._entry_ptr = internal global ptr @browse_rb._entry, section ".printk_index", align 4
@browse_rb._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\010mmap: vm_start %lx < pend %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@browse_rb._entry_ptr.44 = internal global ptr @browse_rb._entry.42, section ".printk_index", align 4
@browse_rb._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\010mmap: vm_start %lx > vm_end %lx\0A\00", [61 x i8] zeroinitializer }, align 32
@browse_rb._entry_ptr.47 = internal global ptr @browse_rb._entry.45, section ".printk_index", align 4
@browse_rb._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.3, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\010mmap: free gap %lx, correct %lx\0A\00", [61 x i8] zeroinitializer }, align 32
@browse_rb._entry_ptr.50 = internal global ptr @browse_rb._entry.48, section ".printk_index", align 4
@browse_rb._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\010mmap: backwards %d, forwards %d\0A\00", [61 x i8] zeroinitializer }, align 32
@browse_rb._entry_ptr.53 = internal global ptr @browse_rb._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prot\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pgoff\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"struct mmap_arg_struct *\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arg\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/mmap.h\00", [36 x i8] zeroinitializer }, align 32
@trace_vm_unmapped_area.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/mmap_lock.h\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@__do_sys_remap_file_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__do_sys_remap_file_pages._entry = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 2956, ptr null, ptr null }, align 1
@.str.70 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\014mmap: %s (%d) uses deprecated remap_file_pages() syscall. See Documentation/vm/remap_file_pages.rst.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__do_sys_remap_file_pages\00", [38 x i8] zeroinitializer }, align 32
@__do_sys_remap_file_pages._entry_ptr = internal global ptr @__do_sys_remap_file_pages._entry, section ".printk_index", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@special_mapping_mremap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mm_all_locks_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mm_all_locks_mutex\00", [45 x i8] zeroinitializer }, align 32
@sysctl_user_reserve_kbytes = external dso_local local_unnamed_addr global i32, align 4
@vm_zone_stat = external dso_local global [11 x %struct.atomic_t], align 4
@sysctl_admin_reserve_kbytes = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 16, i64 24576, i64 32768, i64 49152]
@___asan_gen_.77 = private unnamed_addr constant [29 x i8] c"str__mmap__trace_system_name\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 36, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [36 x i8] c"trace_event_fields_vm_unmapped_area\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_vm_unmapped_area\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"print_fmt_vm_unmapped_area\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"event_vm_unmapped_area\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"mmap_rnd_bits_min\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 67, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"mmap_rnd_bits_max\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 68, i32 11 }
@___asan_gen_.98 = private constant [19 x i8] c"ignore_rlimit_data\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 77, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"event_enter__brk\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"event_exit__brk\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"types__brk\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"args__brk\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 770, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"event_enter__mmap_pgoff\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"event_exit__mmap_pgoff\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"types__mmap_pgoff\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"args__mmap_pgoff\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [22 x i8] c"event_enter__old_mmap\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [21 x i8] c"event_exit__old_mmap\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"types__old_mmap\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"args__old_mmap\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"stack_guard_gap\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 2549, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c"event_enter__munmap\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"event_exit__munmap\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [14 x i8] c"types__munmap\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [13 x i8] c"args__munmap\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [30 x i8] c"event_enter__remap_file_pages\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [29 x i8] c"event_exit__remap_file_pages\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [24 x i8] c"types__remap_file_pages\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [23 x i8] c"args__remap_file_pages\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 3326, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"special_mapping_vmops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 3389, i32 42 }
@___asan_gen_.230 = private unnamed_addr constant [29 x i8] c"legacy_special_mapping_vmops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 3399, i32 42 }
@___asan_gen_.233 = private unnamed_addr constant [19 x i8] c"mm_all_locks_mutex\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 3694, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 195, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 416, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 420, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 427, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 343, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 348, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 353, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 359, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 374, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1637, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 1654, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 156, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [31 x i8] c"../include/trace/events/mmap.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 10, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 108, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [29 x i8] c"../include/linux/mmap_lock.h\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 155, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 2935, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 2945, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 2955, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1160, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.381 = private constant [13 x i8] c"../mm/mmap.c\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 3508, i32 8 }
@llvm.compiler.used = appending global [150 x ptr] [ptr @__bpf_trace_tp_map_vm_unmapped_area, ptr @__do_sys_remap_file_pages._entry, ptr @__do_sys_remap_file_pages._entry_ptr, ptr @__event_enter__brk, ptr @__event_enter__mmap_pgoff, ptr @__event_enter__munmap, ptr @__event_enter__old_mmap, ptr @__event_enter__remap_file_pages, ptr @__event_exit__brk, ptr @__event_exit__mmap_pgoff, ptr @__event_exit__munmap, ptr @__event_exit__old_mmap, ptr @__event_exit__remap_file_pages, ptr @__event_vm_unmapped_area, ptr @__initcall__kmod_mmap__352_3717_init_user_reserve4, ptr @__initcall__kmod_mmap__355_3738_init_admin_reserve4, ptr @__initcall__kmod_mmap__356_3808_init_reserve_notifier4, ptr @__ksymtab_find_extend_vma, ptr @__ksymtab_find_vma, ptr @__ksymtab_get_unmapped_area, ptr @__ksymtab_vm_brk, ptr @__ksymtab_vm_brk_flags, ptr @__ksymtab_vm_get_page_prot, ptr @__ksymtab_vm_munmap, ptr @__p_syscall_meta__brk, ptr @__p_syscall_meta__mmap_pgoff, ptr @__p_syscall_meta__munmap, ptr @__p_syscall_meta__old_mmap, ptr @__p_syscall_meta__remap_file_pages, ptr @__param_ignore_rlimit_data, ptr @__setup_cmdline_parse_stack_guard_gap, ptr @__syscall_meta__brk, ptr @__syscall_meta__mmap_pgoff, ptr @__syscall_meta__munmap, ptr @__syscall_meta__old_mmap, ptr @__syscall_meta__remap_file_pages, ptr @__tracepoint_ptr_vm_unmapped_area, ptr @__tracepoint_vm_unmapped_area, ptr @browse_rb._entry, ptr @browse_rb._entry.42, ptr @browse_rb._entry.45, ptr @browse_rb._entry.48, ptr @browse_rb._entry.51, ptr @browse_rb._entry_ptr, ptr @browse_rb._entry_ptr.44, ptr @browse_rb._entry_ptr.47, ptr @browse_rb._entry_ptr.50, ptr @browse_rb._entry_ptr.53, ptr @event_class_vm_unmapped_area, ptr @event_enter__brk, ptr @event_enter__mmap_pgoff, ptr @event_enter__munmap, ptr @event_enter__old_mmap, ptr @event_enter__remap_file_pages, ptr @event_exit__brk, ptr @event_exit__mmap_pgoff, ptr @event_exit__munmap, ptr @event_exit__old_mmap, ptr @event_exit__remap_file_pages, ptr @event_vm_unmapped_area, ptr @may_expand_vm._entry, ptr @may_expand_vm._entry_ptr, ptr @validate_mm._entry, ptr @validate_mm._entry.34, ptr @validate_mm._entry.37, ptr @validate_mm._entry_ptr, ptr @validate_mm._entry_ptr.36, ptr @validate_mm._entry_ptr.39, ptr @str__mmap__trace_system_name, ptr @trace_event_fields_vm_unmapped_area, ptr @trace_event_type_funcs_vm_unmapped_area, ptr @print_fmt_vm_unmapped_area, ptr @mmap_rnd_bits_min, ptr @mmap_rnd_bits_max, ptr @ignore_rlimit_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__brk, ptr @args__brk, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @types__mmap_pgoff, ptr @args__mmap_pgoff, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @types__old_mmap, ptr @args__old_mmap, ptr @stack_guard_gap, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @types__munmap, ptr @args__munmap, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @types__remap_file_pages, ptr @args__remap_file_pages, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @special_mapping_vmops, ptr @legacy_special_mapping_vmops, ptr @mm_all_locks_mutex, ptr @mmap_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mmap__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_vm_unmapped_area to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_vm_unmapped_area to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_vm_unmapped_area to i32), i32 409, i32 512, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_vm_unmapped_area to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmap_rnd_bits_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmap_rnd_bits_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_rlimit_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__brk to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__brk to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__brk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__brk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mmap_pgoff to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mmap_pgoff to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mmap_pgoff to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mmap_pgoff to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__old_mmap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__old_mmap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__old_mmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__old_mmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_guard_gap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__munmap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__munmap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__munmap to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__munmap to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__remap_file_pages to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__remap_file_pages to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__remap_file_pages to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__remap_file_pages to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @may_expand_vm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_mapping_vmops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_special_mapping_vmops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_all_locks_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_mm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_mm._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_mm._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @browse_rb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @browse_rb._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @browse_rb._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @browse_rb._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @browse_rb._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_brk = dso_local alias i32 (i32), ptr @__se_sys_brk
@sys_mmap_pgoff = dso_local alias i32 (i32, i32, i32, i32, i32, i32), ptr @__se_sys_mmap_pgoff
@sys_old_mmap = dso_local alias i32 (ptr), ptr @__se_sys_old_mmap
@sys_munmap = dso_local alias i32 (i32, i32), ptr @__se_sys_munmap
@sys_remap_file_pages = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_remap_file_pages

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vm_unmapped_area(ptr nocapture readnone %__data, i32 noundef %addr, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vm_unmapped_area, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %addr, ptr noundef %info) #19
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_vm_unmapped_area(ptr noundef %__data, i32 noundef %addr, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #19
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !228

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !229

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #19
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #19
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %addr6 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %addr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %addr, ptr %addr6, align 4
  %4 = call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i35 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i35 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm, align 8
  %total_vm = getelementptr inbounds %struct.anon.15, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_vm, align 8
  %total_vm8 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %total_vm8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %total_vm8, align 4
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 4
  %flags9 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %flags9, align 4
  %length = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %length10 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %length10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %length10, align 4
  %low_limit = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %low_limit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %low_limit, align 4
  %low_limit11 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %low_limit11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %low_limit11, align 4
  %high_limit = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 3
  %22 = ptrtoint ptr %high_limit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %high_limit, align 4
  %high_limit12 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call3, i32 0, i32 6
  %24 = ptrtoint ptr %high_limit12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %high_limit12, align 4
  %align_mask = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 4
  %25 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %align_mask, align 4
  %align_mask13 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call3, i32 0, i32 7
  %27 = ptrtoint ptr %align_mask13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %align_mask13, align 4
  %align_offset = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 5
  %28 = ptrtoint ptr %align_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %align_offset, align 4
  %align_offset14 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call3, i32 0, i32 8
  %30 = ptrtoint ptr %align_offset14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %align_offset14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_vm_unmapped_area(ptr noundef %__data, i32 noundef %addr, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #19
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #19
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !230
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #19
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #19
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !218) #19
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %addr17 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %addr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %addr, ptr %addr17, align 4
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm, align 8
  %total_vm = getelementptr inbounds %struct.anon.15, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %total_vm, align 8
  %total_vm19 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %total_vm19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %total_vm19, align 4
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %info, align 4
  %flags20 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %flags20, align 4
  %length = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 1
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  %length21 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %length21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %length21, align 4
  %low_limit = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 2
  %41 = ptrtoint ptr %low_limit to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %low_limit, align 4
  %low_limit22 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %low_limit22 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %low_limit22, align 4
  %high_limit = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 3
  %44 = ptrtoint ptr %high_limit to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %high_limit, align 4
  %high_limit23 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %high_limit23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %high_limit23, align 4
  %align_mask = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 4
  %47 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %align_mask, align 4
  %align_mask24 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call13, i32 0, i32 7
  %49 = ptrtoint ptr %align_mask24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %align_mask24, align 4
  %align_offset = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 5
  %50 = ptrtoint ptr %align_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %align_offset, align 4
  %align_offset25 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %call13, i32 0, i32 8
  %52 = ptrtoint ptr %align_offset25 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %align_offset25, align 4
  %53 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rctx, align 4
  %55 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %54, ptr noundef %__data, i64 noundef 1, ptr noundef %56, ptr noundef %11, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_vm_unmapped_area(ptr noundef %__data, i32 noundef %addr, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %conv = zext i32 %addr to i64
  %0 = ptrtoint ptr %info to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vm_get_page_prot(i32 noundef %vm_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %vm_flags, 15
  %arrayidx = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vma_set_page_prot(ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags1, align 4
  %vm_page_prot2 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %2 = ptrtoint ptr %vm_page_prot2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_page_prot2, align 4
  %and.i.i = and i32 %1, 15
  %arrayidx.i.i = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %and.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %and.i2.i = and i32 %3, -61
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i2.i, i32 %3)
  %cmp.i.i = icmp eq i32 %and.i2.i, %3
  %and1.i.i = and i32 %5, -61
  %spec.select.i.i = select i1 %cmp.i.i, i32 %and1.i.i, i32 %5
  %or4.i.i = or i32 %and.i2.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or4.i.i, i32 %3)
  %cmp5.i.i = icmp eq i32 %or4.i.i, %3
  %or8.i.i = or i32 %and1.i.i, 4
  %newprot.addr.1.i.i = select i1 %cmp5.i.i, i32 %or8.i.i, i32 %spec.select.i.i
  %or11.i.i = or i32 %and.i2.i, 1616
  call void @__sanitizer_cov_trace_cmp4(i32 %or11.i.i, i32 %3)
  %cmp12.i.i = icmp eq i32 %or11.i.i, %3
  %and14.i.i = and i32 %newprot.addr.1.i.i, -1661
  %or15.i.i = or i32 %and14.i.i, 1616
  %newprot.addr.2.i.i = select i1 %cmp12.i.i, i32 %or15.i.i, i32 %newprot.addr.1.i.i
  %vm_ops2.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %6 = ptrtoint ptr %vm_ops2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_ops2.i, align 4
  %and.i = and i32 %1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 10
  br i1 %cmp.not.i, label %if.end.i, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body6

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %page_mkwrite.i = getelementptr inbounds %struct.vm_operations_struct, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %page_mkwrite.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page_mkwrite.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %pfn_mkwrite.i = getelementptr inbounds %struct.vm_operations_struct, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %pfn_mkwrite.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pfn_mkwrite.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.end6.i_crit_edge, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

lor.lhs.false.i.if.end6.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6.i

if.end6.i:                                        ; preds = %lor.lhs.false.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %and.i2.i.i = and i32 %newprot.addr.2.i.i, -61
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i2.i.i, i32 %newprot.addr.2.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i2.i.i, %newprot.addr.2.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %and1.i.i, i32 %5
  %or4.i.i.i = or i32 %and.i2.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or4.i.i.i, i32 %newprot.addr.2.i.i)
  %cmp5.i.i.i = icmp eq i32 %or4.i.i.i, %newprot.addr.2.i.i
  %newprot.addr.1.i.i.i = select i1 %cmp5.i.i.i, i32 %or8.i.i, i32 %spec.select.i.i.i
  %or11.i.i.i = or i32 %and.i2.i.i, 1616
  call void @__sanitizer_cov_trace_cmp4(i32 %or11.i.i.i, i32 %newprot.addr.2.i.i)
  %cmp12.i.i.i = icmp eq i32 %or11.i.i.i, %newprot.addr.2.i.i
  %and14.i.i.i = and i32 %newprot.addr.1.i.i.i, -1661
  %or15.i.i.i = or i32 %and14.i.i.i, 1616
  %newprot.addr.2.i.i.i = select i1 %cmp12.i.i.i, i32 %or15.i.i.i, i32 %newprot.addr.1.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %newprot.addr.2.i.i.i, i32 %newprot.addr.2.i.i)
  %cmp7.not.i = icmp eq i32 %newprot.addr.2.i.i.i, %newprot.addr.2.i.i
  %and10.i = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %cmp7.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.end13.i, label %if.end6.i.do.body6_crit_edge

if.end6.i.do.body6_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body6

if.end13.i:                                       ; preds = %if.end6.i
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %12 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_file.i, align 4
  %tobool14.not.i = icmp eq ptr %13, null
  br i1 %tobool14.not.i, label %if.end13.i.do.body6_crit_edge, label %land.lhs.true15.i

if.end13.i.do.body6_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body6

land.lhs.true15.i:                                ; preds = %if.end13.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_mapping.i, align 4
  %tobool17.not.i = icmp eq ptr %15, null
  br i1 %tobool17.not.i, label %land.lhs.true15.i.do.body6_crit_edge, label %vma_wants_writenotify.exit

land.lhs.true15.i.do.body6_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body6

vma_wants_writenotify.exit:                       ; preds = %land.lhs.true15.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i.i = tail call ptr @inode_to_bdi(ptr noundef %17) #19
  %capabilities.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %capabilities.i.i, align 8
  %and.i.i19 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %tobool.not = icmp eq i32 %and.i.i19, 0
  br i1 %tobool.not, label %vma_wants_writenotify.exit.do.body6_crit_edge, label %vma_wants_writenotify.exit.if.then_crit_edge

vma_wants_writenotify.exit.if.then_crit_edge:     ; preds = %vma_wants_writenotify.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then

vma_wants_writenotify.exit.do.body6_crit_edge:    ; preds = %vma_wants_writenotify.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body6

if.then:                                          ; preds = %vma_wants_writenotify.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %and.i.i20 = and i32 %1, 7
  %arrayidx.i.i21 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %and.i.i20
  %20 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i21, align 4
  %and.i2.i22 = and i32 %newprot.addr.2.i.i, -61
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i2.i22, i32 %newprot.addr.2.i.i)
  %cmp.i.i23 = icmp eq i32 %and.i2.i22, %newprot.addr.2.i.i
  %and1.i.i24 = and i32 %21, -61
  %spec.select.i.i25 = select i1 %cmp.i.i23, i32 %and1.i.i24, i32 %21
  %or4.i.i26 = or i32 %and.i2.i22, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or4.i.i26, i32 %newprot.addr.2.i.i)
  %cmp5.i.i27 = icmp eq i32 %or4.i.i26, %newprot.addr.2.i.i
  %or8.i.i28 = or i32 %and1.i.i24, 4
  %newprot.addr.1.i.i29 = select i1 %cmp5.i.i27, i32 %or8.i.i28, i32 %spec.select.i.i25
  %or11.i.i30 = or i32 %and.i2.i22, 1616
  call void @__sanitizer_cov_trace_cmp4(i32 %or11.i.i30, i32 %newprot.addr.2.i.i)
  %cmp12.i.i31 = icmp eq i32 %or11.i.i30, %newprot.addr.2.i.i
  %and14.i.i32 = and i32 %newprot.addr.1.i.i29, -1661
  %or15.i.i33 = or i32 %and14.i.i32, 1616
  %newprot.addr.2.i.i34 = select i1 %cmp12.i.i31, i32 %or15.i.i33, i32 %newprot.addr.1.i.i29
  br label %do.body6

do.body6:                                         ; preds = %if.then, %vma_wants_writenotify.exit.do.body6_crit_edge, %land.lhs.true15.i.do.body6_crit_edge, %if.end13.i.do.body6_crit_edge, %if.end6.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %vm_page_prot.0 = phi i32 [ %newprot.addr.2.i.i34, %if.then ], [ %newprot.addr.2.i.i, %vma_wants_writenotify.exit.do.body6_crit_edge ], [ %newprot.addr.2.i.i, %entry.do.body6_crit_edge ], [ %newprot.addr.2.i.i, %if.end6.i.do.body6_crit_edge ], [ %newprot.addr.2.i.i, %land.lhs.true15.i.do.body6_crit_edge ], [ %newprot.addr.2.i.i, %if.end13.i.do.body6_crit_edge ]
  %22 = ptrtoint ptr %vm_page_prot2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %vm_page_prot.0, ptr %vm_page_prot2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vma_wants_writenotify(ptr nocapture noundef readonly %vma, i32 noundef %vm_page_prot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags1, align 4
  %vm_ops2 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %2 = ptrtoint ptr %vm_ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_ops2, align 4
  %and = and i32 %1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and)
  %cmp.not = icmp eq i32 %and, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %page_mkwrite = getelementptr inbounds %struct.vm_operations_struct, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %page_mkwrite to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page_mkwrite, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %pfn_mkwrite = getelementptr inbounds %struct.vm_operations_struct, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %pfn_mkwrite to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pfn_mkwrite, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false.if.end6_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.end6:                                          ; preds = %lor.lhs.false.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %and.i.i = and i32 %1, 15
  %arrayidx.i.i = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %and.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %and.i2.i = and i32 %vm_page_prot, -61
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i2.i, i32 %vm_page_prot)
  %cmp.i.i = icmp eq i32 %and.i2.i, %vm_page_prot
  %and1.i.i = and i32 %9, -61
  %spec.select.i.i = select i1 %cmp.i.i, i32 %and1.i.i, i32 %9
  %or4.i.i = or i32 %and.i2.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or4.i.i, i32 %vm_page_prot)
  %cmp5.i.i = icmp eq i32 %or4.i.i, %vm_page_prot
  %or8.i.i = or i32 %and1.i.i, 4
  %newprot.addr.1.i.i = select i1 %cmp5.i.i, i32 %or8.i.i, i32 %spec.select.i.i
  %or11.i.i = or i32 %and.i2.i, 1616
  call void @__sanitizer_cov_trace_cmp4(i32 %or11.i.i, i32 %vm_page_prot)
  %cmp12.i.i = icmp eq i32 %or11.i.i, %vm_page_prot
  %and14.i.i = and i32 %newprot.addr.1.i.i, -1661
  %or15.i.i = or i32 %and14.i.i, 1616
  %newprot.addr.2.i.i = select i1 %cmp12.i.i, i32 %or15.i.i, i32 %newprot.addr.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %newprot.addr.2.i.i, i32 %vm_page_prot)
  %cmp7.not = icmp eq i32 %newprot.addr.2.i.i, %vm_page_prot
  %and10 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = select i1 %cmp7.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %10 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_file, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %land.lhs.true15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end13
  %f_mapping = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_mapping, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %land.lhs.true15.cleanup_crit_edge, label %land.rhs

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i = tail call ptr @inode_to_bdi(ptr noundef %15) #19
  %capabilities.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %17, 1
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %land.lhs.true15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %and.i, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unlink_file_vma(ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %i_mmap_rwsem.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 6
  tail call void @down_write(ptr noundef %i_mmap_rwsem.i) #19
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.__remove_shared_vm_struct.exit_crit_edge, label %if.then.i

if.then.__remove_shared_vm_struct.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %__remove_shared_vm_struct.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %i_mmap_writable.i.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %i_mmap_writable.i.i, i32 1, i32 3, i32 1) #19
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i.i, ptr %i_mmap_writable.i.i, i32 1, ptr elementtype(i32) %i_mmap_writable.i.i) #19, !srcloc !231
  br label %__remove_shared_vm_struct.exit

__remove_shared_vm_struct.exit:                   ; preds = %if.then.i, %if.then.__remove_shared_vm_struct.exit_crit_edge
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages.i) #19
  %i_mmap.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 5
  tail call void @vma_interval_tree_remove(ptr noundef %vma, ptr noundef %i_mmap.i) #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages.i) #19
  tail call void @up_write(ptr noundef %i_mmap_rwsem.i) #19
  br label %if.end

if.end:                                           ; preds = %__remove_shared_vm_struct.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_brk(i32 noundef %brk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__do_sys_brk(i32 noundef %brk)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_brk(i32 noundef %brk) unnamed_addr #4 align 64 {
entry:
  %uf = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #21
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uf) #19
  %6 = getelementptr inbounds %struct.list_head, ptr %uf, i32 0, i32 1
  %7 = ptrtoint ptr %uf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %uf, ptr %uf, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %uf, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__do_sys_brk, %if.then.i.i)) #19
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #19
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 15
  %call.i = call i32 @down_write_killable(ptr noundef %mmap_lock.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_sys_brk, %if.then.i4.i)) #19
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !232

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #19
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mmap_write_lock_killable.exit.cleanup64_crit_edge

mmap_write_lock_killable.exit.cleanup64_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup64

if.end:                                           ; preds = %mmap_write_lock_killable.exit
  %brk4 = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 33
  %9 = ptrtoint ptr %brk4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %brk4, align 8
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %brk_randomized = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 65
  %13 = ptrtoint ptr %brk_randomized to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %brk_randomized, align 8
  %14 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool7.not = icmp eq i16 %14, 0
  %start_brk = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 32
  %end_data = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 31
  %min_brk.0.in = select i1 %tobool7.not, ptr %end_data, ptr %start_brk
  %15 = ptrtoint ptr %min_brk.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %min_brk.0 = load i32, ptr %min_brk.0.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %min_brk.0, i32 %brk)
  %cmp = icmp ugt i32 %min_brk.0, %brk
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end11:                                         ; preds = %if.end
  %16 = call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 111
  %20 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 51, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.not.i = icmp eq i32 %23, -1
  br i1 %cmp.not.i, label %if.end11.if.end18_crit_edge, label %if.then.i

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then.i:                                        ; preds = %if.end11
  %start_data = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 30
  %24 = ptrtoint ptr %start_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %start_data, align 4
  %26 = ptrtoint ptr %end_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end_data, align 8
  %28 = ptrtoint ptr %start_brk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start_brk, align 4
  %30 = add i32 %27, %brk
  %31 = add i32 %25, %29
  %add.i = sub i32 %30, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %23)
  %cmp2.i = icmp ugt i32 %add.i, %23
  br i1 %cmp2.i, label %if.then.i.out_crit_edge, label %if.then.i.if.end18_crit_edge

if.then.i.if.end18_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end18:                                         ; preds = %if.then.i.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %add = add i32 %brk, 4095
  %and = and i32 %add, -4096
  %add20 = add i32 %10, 4095
  %and21 = and i32 %add20, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and21)
  %cmp22 = icmp eq i32 %and, %and21
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  %32 = ptrtoint ptr %brk4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %brk, ptr %brk4, align 8
  br label %success

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %brk)
  %cmp27.not = icmp ult i32 %10, %brk
  br i1 %cmp27.not, label %if.end39, label %if.then28

if.then28:                                        ; preds = %if.end25
  %33 = ptrtoint ptr %brk4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %brk, ptr %brk4, align 8
  %sub = sub i32 %and21, %and
  %call30 = call i32 @__do_munmap(ptr noundef %5, i32 noundef %and, i32 noundef %sub, ptr noundef nonnull %uf, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp35 = icmp eq i32 %call30, 1
  br label %success

cleanup:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #21
  %34 = ptrtoint ptr %brk4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %10, ptr %brk4, align 8
  br label %out

if.end39:                                         ; preds = %if.end25
  %call40 = call ptr @find_vma(ptr noundef %5, i32 noundef %and21)
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end39.if.end46_crit_edge, label %land.lhs.true

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end39
  %add42 = add i32 %and, 4096
  %35 = ptrtoint ptr %call40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call40, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call40, i32 0, i32 8
  %37 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vm_flags.i, align 4
  %and.i116 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i, label %land.lhs.true.vm_start_gap.exit_crit_edge, label %if.then.i117

land.lhs.true.vm_start_gap.exit_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit

if.then.i117:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %39 = load i32, ptr @stack_guard_gap, align 4
  %40 = call i32 @llvm.usub.sat.i32(i32 %36, i32 %39) #19
  br label %vm_start_gap.exit

vm_start_gap.exit:                                ; preds = %if.then.i117, %land.lhs.true.vm_start_gap.exit_crit_edge
  %vm_start.0.i = phi i32 [ %40, %if.then.i117 ], [ %36, %land.lhs.true.vm_start_gap.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %vm_start.0.i)
  %cmp44 = icmp ugt i32 %add42, %vm_start.0.i
  br i1 %cmp44, label %vm_start_gap.exit.out_crit_edge, label %vm_start_gap.exit.if.end46_crit_edge

vm_start_gap.exit.if.end46_crit_edge:             ; preds = %vm_start_gap.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end46

vm_start_gap.exit.out_crit_edge:                  ; preds = %vm_start_gap.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end46:                                         ; preds = %vm_start_gap.exit.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %sub47 = sub i32 %and, %and21
  %call48 = call fastcc i32 @do_brk_flags(i32 noundef %and21, i32 noundef %sub47, i32 noundef 0, ptr noundef nonnull %uf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end46.out_crit_edge, label %if.end51

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  %41 = ptrtoint ptr %brk4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %brk, ptr %brk4, align 8
  br label %success

success:                                          ; preds = %if.end51, %cleanup.thread, %if.then23
  %downgraded.2.off0 = phi i1 [ false, %if.then23 ], [ false, %if.end51 ], [ %cmp35, %cleanup.thread ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and21)
  %cmp53 = icmp ugt i32 %and, %and21
  br i1 %cmp53, label %land.rhs, label %success.land.end_crit_edge

success.land.end_crit_edge:                       ; preds = %success
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.rhs:                                         ; preds = %success
  call void @__sanitizer_cov_trace_pc() #21
  %def_flags = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 25
  %42 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %def_flags, align 4
  %and54 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp55 = icmp ne i32 %and54, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %success.land.end_crit_edge
  %44 = phi i1 [ false, %success.land.end_crit_edge ], [ %cmp55, %land.rhs ]
  br i1 %downgraded.2.off0, label %if.then57, label %if.else58

if.then57:                                        ; preds = %land.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_brk, %if.then.i.i119)) #19
          to label %mmap_read_unlock.exit [label %if.then.i.i119], !srcloc !232

if.then.i.i119:                                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #19
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i119, %if.then57
  call void @up_read(ptr noundef %mmap_lock.i) #19
  br label %if.end59

if.else58:                                        ; preds = %land.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_brk, %if.then.i.i121)) #19
          to label %mmap_write_unlock.exit [label %if.then.i.i121], !srcloc !232

if.then.i.i121:                                   ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #19
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i121, %if.else58
  call void @up_write(ptr noundef %mmap_lock.i) #19
  br label %if.end59

if.end59:                                         ; preds = %mmap_write_unlock.exit, %mmap_read_unlock.exit
  call void @userfaultfd_unmap_complete(ptr noundef %5, ptr noundef nonnull %uf) #19
  br i1 %44, label %if.then61, label %if.end59.cleanup64_crit_edge

if.end59.cleanup64_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup64

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #21
  %sub62 = sub i32 %and, %and21
  %call.i123 = call i32 @__mm_populate(i32 noundef %and21, i32 noundef %sub62, i32 noundef 1) #19
  br label %cleanup64

out:                                              ; preds = %if.end46.out_crit_edge, %vm_start_gap.exit.out_crit_edge, %cleanup, %if.then.i.out_crit_edge, %if.end.out_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_brk, %if.then.i.i124)) #19
          to label %mmap_write_unlock.exit126 [label %if.then.i.i124], !srcloc !232

if.then.i.i124:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #19
  br label %mmap_write_unlock.exit126

mmap_write_unlock.exit126:                        ; preds = %if.then.i.i124, %out
  call void @up_write(ptr noundef %mmap_lock.i) #19
  br label %cleanup64

cleanup64:                                        ; preds = %mmap_write_unlock.exit126, %if.then61, %if.end59.cleanup64_crit_edge, %mmap_write_lock_killable.exit.cleanup64_crit_edge
  %retval.0 = phi i32 [ %10, %mmap_write_unlock.exit126 ], [ -4, %mmap_write_lock_killable.exit.cleanup64_crit_edge ], [ %brk, %if.then61 ], [ %brk, %if.end59.cleanup64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uf) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__vma_link_rb(ptr noundef %mm, ptr noundef %vma, ptr nocapture noundef writeonly %rb_link, ptr noundef %rb_parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 2
  %0 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vm_rb.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then
  %rb.addr.08.i.i = phi ptr [ %28, %cleanup.i.i.while.body.i.i_crit_edge ], [ %vm_rb.i, %if.then ]
  %add.ptr.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 -16
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %vm_flags.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 24
  %4 = ptrtoint ptr %vm_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %6 = load i32, ptr @stack_guard_gap, align 4
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %6) #19
  br label %vm_start_gap.exit.i.i.i.i

vm_start_gap.exit.i.i.i.i:                        ; preds = %if.then.i.i.i.i.i, %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge
  %vm_start.0.i.i.i.i.i = phi i32 [ %7, %if.then.i.i.i.i.i ], [ %3, %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge ]
  %vm_prev.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 -4
  %8 = ptrtoint ptr %vm_prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_prev.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i.i, label %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %vm_start_gap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end1.i.i.i.i.i, align 4
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i, i32 %11) #19
  br label %vma_compute_gap.exit.i.i.i

vma_compute_gap.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge
  %gap.0.i.i.i.i = phi i32 [ %vm_start.0.i.i.i.i.i, %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge ], [ %12, %if.then.i.i.i.i ]
  %rb_left.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 8
  %13 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge, label %if.then.i.i.i

vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i

if.then.i.i.i:                                    ; preds = %vma_compute_gap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %rb_subtree_gap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rb_subtree_gap.i.i.i, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %gap.0.i.i.i.i) #19
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then.i.i.i, %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge
  %max.0.i.i.i = phi i32 [ %gap.0.i.i.i.i, %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge ], [ %17, %if.then.i.i.i ]
  %rb_right.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 4
  %18 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_right.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool7.not.i.i.i, label %if.end5.i.i.i.if.end19.i.i.i_crit_edge, label %if.then8.i.i.i

if.end5.i.i.i.if.end19.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %rb_subtree_gap14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb_subtree_gap14.i.i.i, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %max.0.i.i.i) #19
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end5.i.i.i.if.end19.i.i.i_crit_edge
  %max.1.i.i.i = phi i32 [ %max.0.i.i.i, %if.end5.i.i.i.if.end19.i.i.i_crit_edge ], [ %22, %if.then8.i.i.i ]
  %rb_subtree_gap21.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 12
  %23 = ptrtoint ptr %rb_subtree_gap21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rb_subtree_gap21.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %max.1.i.i.i)
  %cmp22.i.i.i = icmp eq i32 %24, %max.1.i.i.i
  br i1 %cmp22.i.i.i, label %if.end19.i.i.i.if.end_crit_edge, label %cleanup.i.i

if.end19.i.i.i.if.end_crit_edge:                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

cleanup.i.i:                                      ; preds = %if.end19.i.i.i
  %25 = ptrtoint ptr %rb_subtree_gap21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %max.1.i.i.i, ptr %rb_subtree_gap21.i.i.i, align 4
  %26 = ptrtoint ptr %rb.addr.08.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rb.addr.08.i.i, align 4
  %and.i.i = and i32 %27, -4
  %28 = inttoptr i32 %and.i.i to ptr
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup.i.i.if.end_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i

cleanup.i.i.if.end_crit_edge:                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %29 = ptrtoint ptr %vm_end1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_end1.i, align 4
  %highest_vm_end = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 7
  %31 = ptrtoint ptr %highest_vm_end to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %highest_vm_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cleanup.i.i.if.end_crit_edge, %if.end19.i.i.i.if.end_crit_edge
  %vm_rb = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 4
  %32 = ptrtoint ptr %rb_parent to i32
  %33 = ptrtoint ptr %vm_rb to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %vm_rb, align 4
  %rb_right.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rb_left.i, align 4
  %36 = ptrtoint ptr %rb_link to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vm_rb, ptr %rb_link, align 4
  %rb_subtree_gap = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 5
  %37 = ptrtoint ptr %rb_subtree_gap to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rb_subtree_gap, align 4
  br label %while.body.i.i15

while.body.i.i15:                                 ; preds = %cleanup.i.i41.while.body.i.i15_crit_edge, %if.end
  %rb.addr.08.i.i10 = phi ptr [ %64, %cleanup.i.i41.while.body.i.i15_crit_edge ], [ %vm_rb, %if.end ]
  %add.ptr.i.i11 = getelementptr i8, ptr %rb.addr.08.i.i10, i32 -16
  %38 = ptrtoint ptr %add.ptr.i.i11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i11, align 4
  %vm_flags.i.i.i.i.i12 = getelementptr i8, ptr %rb.addr.08.i.i10, i32 24
  %40 = ptrtoint ptr %vm_flags.i.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_flags.i.i.i.i.i12, align 4
  %and.i.i.i.i.i13 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i13)
  %tobool.not.i.i.i.i.i14 = icmp eq i32 %and.i.i.i.i.i13, 0
  br i1 %tobool.not.i.i.i.i.i14, label %while.body.i.i15.vm_start_gap.exit.i.i.i.i20_crit_edge, label %if.then.i.i.i.i.i16

while.body.i.i15.vm_start_gap.exit.i.i.i.i20_crit_edge: ; preds = %while.body.i.i15
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i20

if.then.i.i.i.i.i16:                              ; preds = %while.body.i.i15
  call void @__sanitizer_cov_trace_pc() #21
  %42 = load i32, ptr @stack_guard_gap, align 4
  %43 = tail call i32 @llvm.usub.sat.i32(i32 %39, i32 %42) #19
  br label %vm_start_gap.exit.i.i.i.i20

vm_start_gap.exit.i.i.i.i20:                      ; preds = %if.then.i.i.i.i.i16, %while.body.i.i15.vm_start_gap.exit.i.i.i.i20_crit_edge
  %vm_start.0.i.i.i.i.i17 = phi i32 [ %43, %if.then.i.i.i.i.i16 ], [ %39, %while.body.i.i15.vm_start_gap.exit.i.i.i.i20_crit_edge ]
  %vm_prev.i.i.i.i18 = getelementptr i8, ptr %rb.addr.08.i.i10, i32 -4
  %44 = ptrtoint ptr %vm_prev.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vm_prev.i.i.i.i18, align 4
  %tobool.not.i.i.i.i19 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i.i19, label %vm_start_gap.exit.i.i.i.i20.vma_compute_gap.exit.i.i.i26_crit_edge, label %if.then.i.i.i.i22

vm_start_gap.exit.i.i.i.i20.vma_compute_gap.exit.i.i.i26_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i26

if.then.i.i.i.i22:                                ; preds = %vm_start_gap.exit.i.i.i.i20
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i21 = getelementptr inbounds %struct.vm_area_struct, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %vm_end1.i.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vm_end1.i.i.i.i.i21, align 4
  %48 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i17, i32 %47) #19
  br label %vma_compute_gap.exit.i.i.i26

vma_compute_gap.exit.i.i.i26:                     ; preds = %if.then.i.i.i.i22, %vm_start_gap.exit.i.i.i.i20.vma_compute_gap.exit.i.i.i26_crit_edge
  %gap.0.i.i.i.i23 = phi i32 [ %vm_start.0.i.i.i.i.i17, %vm_start_gap.exit.i.i.i.i20.vma_compute_gap.exit.i.i.i26_crit_edge ], [ %48, %if.then.i.i.i.i22 ]
  %rb_left.i.i.i24 = getelementptr i8, ptr %rb.addr.08.i.i10, i32 8
  %49 = ptrtoint ptr %rb_left.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rb_left.i.i.i24, align 4
  %tobool.not.i.i.i25 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i25, label %vma_compute_gap.exit.i.i.i26.if.end5.i.i.i32_crit_edge, label %if.then.i.i.i28

vma_compute_gap.exit.i.i.i26.if.end5.i.i.i32_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i26
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i32

if.then.i.i.i28:                                  ; preds = %vma_compute_gap.exit.i.i.i26
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i27 = getelementptr i8, ptr %50, i32 12
  %51 = ptrtoint ptr %rb_subtree_gap.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rb_subtree_gap.i.i.i27, align 4
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %gap.0.i.i.i.i23) #19
  br label %if.end5.i.i.i32

if.end5.i.i.i32:                                  ; preds = %if.then.i.i.i28, %vma_compute_gap.exit.i.i.i26.if.end5.i.i.i32_crit_edge
  %max.0.i.i.i29 = phi i32 [ %gap.0.i.i.i.i23, %vma_compute_gap.exit.i.i.i26.if.end5.i.i.i32_crit_edge ], [ %53, %if.then.i.i.i28 ]
  %rb_right.i.i.i30 = getelementptr i8, ptr %rb.addr.08.i.i10, i32 4
  %54 = ptrtoint ptr %rb_right.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rb_right.i.i.i30, align 4
  %tobool7.not.i.i.i31 = icmp eq ptr %55, null
  br i1 %tobool7.not.i.i.i31, label %if.end5.i.i.i32.if.end19.i.i.i38_crit_edge, label %if.then8.i.i.i34

if.end5.i.i.i32.if.end19.i.i.i38_crit_edge:       ; preds = %if.end5.i.i.i32
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i38

if.then8.i.i.i34:                                 ; preds = %if.end5.i.i.i32
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i33 = getelementptr i8, ptr %55, i32 12
  %56 = ptrtoint ptr %rb_subtree_gap14.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rb_subtree_gap14.i.i.i33, align 4
  %58 = tail call i32 @llvm.umax.i32(i32 %57, i32 %max.0.i.i.i29) #19
  br label %if.end19.i.i.i38

if.end19.i.i.i38:                                 ; preds = %if.then8.i.i.i34, %if.end5.i.i.i32.if.end19.i.i.i38_crit_edge
  %max.1.i.i.i35 = phi i32 [ %max.0.i.i.i29, %if.end5.i.i.i32.if.end19.i.i.i38_crit_edge ], [ %58, %if.then8.i.i.i34 ]
  %rb_subtree_gap21.i.i.i36 = getelementptr i8, ptr %rb.addr.08.i.i10, i32 12
  %59 = ptrtoint ptr %rb_subtree_gap21.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rb_subtree_gap21.i.i.i36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %max.1.i.i.i35)
  %cmp22.i.i.i37 = icmp eq i32 %60, %max.1.i.i.i35
  br i1 %cmp22.i.i.i37, label %if.end19.i.i.i38.vma_gap_update.exit42_crit_edge, label %cleanup.i.i41

if.end19.i.i.i38.vma_gap_update.exit42_crit_edge: ; preds = %if.end19.i.i.i38
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_gap_update.exit42

cleanup.i.i41:                                    ; preds = %if.end19.i.i.i38
  %61 = ptrtoint ptr %rb_subtree_gap21.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %max.1.i.i.i35, ptr %rb_subtree_gap21.i.i.i36, align 4
  %62 = ptrtoint ptr %rb.addr.08.i.i10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rb.addr.08.i.i10, align 4
  %and.i.i39 = and i32 %63, -4
  %64 = inttoptr i32 %and.i.i39 to ptr
  %cmp.not.i.i40 = icmp eq i32 %and.i.i39, 0
  br i1 %cmp.not.i.i40, label %cleanup.i.i41.vma_gap_update.exit42_crit_edge, label %cleanup.i.i41.while.body.i.i15_crit_edge

cleanup.i.i41.while.body.i.i15_crit_edge:         ; preds = %cleanup.i.i41
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i15

cleanup.i.i41.vma_gap_update.exit42_crit_edge:    ; preds = %cleanup.i.i41
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_gap_update.exit42

vma_gap_update.exit42:                            ; preds = %cleanup.i.i41.vma_gap_update.exit42_crit_edge, %if.end19.i.i.i38.vma_gap_update.exit42_crit_edge
  %mm_rb = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 1
  tail call fastcc void @validate_mm_rb(ptr noundef %mm_rb, ptr noundef null) #19
  tail call void @__rb_insert_augmented(ptr noundef %vm_rb, ptr noundef %mm_rb, ptr noundef nonnull @vma_gap_callbacks_rotate) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vma_adjust(ptr noundef %vma, i32 noundef %start, i32 noundef %end, i32 noundef %pgoff, ptr noundef %insert, ptr noundef readnone %expand) local_unnamed_addr #0 align 64 {
entry:
  %prev.i = alloca ptr, align 4
  %rb_link.i = alloca ptr, align 4
  %rb_parent.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 2
  %2 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_next, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end239_crit_edge, label %land.lhs.true

entry.if.end239_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239

land.lhs.true:                                    ; preds = %entry
  %tobool1.not = icmp eq ptr %insert, null
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end239_crit_edge

land.lhs.true.if.end239_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239

if.then:                                          ; preds = %land.lhs.true
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %end)
  %cmp.not = icmp ugt i32 %7, %end
  br i1 %cmp.not, label %if.else141, label %if.then2

if.then2:                                         ; preds = %if.then
  %cmp3 = icmp eq ptr %3, %expand
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %end)
  %cmp6.not = icmp eq i32 %7, %end
  br i1 %cmp6.not, label %if.then4.if.end_crit_edge, label %do.end, !prof !228

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 770, i32 noundef 9, ptr noundef null) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4.if.end_crit_edge
  %vm_file28 = getelementptr inbounds %struct.vm_area_struct, ptr %expand, i32 0, i32 14
  %8 = ptrtoint ptr %vm_file28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_file28, align 4
  %cmp29.not = icmp eq ptr %5, %9
  br i1 %cmp29.not, label %if.end.if.end220_crit_edge, label %do.end45, !prof !228

if.end.if.end220_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end220

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 777, i32 noundef 9, ptr noundef null) #19
  br label %if.end220

if.else:                                          ; preds = %if.then2
  %cmp63.not = icmp eq ptr %expand, %vma
  br i1 %cmp63.not, label %if.else.if.end85_crit_edge, label %do.end79, !prof !228

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end85

do.end79:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 780, i32 noundef 9, ptr noundef null) #19
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.else.if.end85_crit_edge
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %end)
  %cmp94 = icmp ult i32 %11, %end
  br i1 %cmp94, label %land.rhs, label %if.end132

land.rhs:                                         ; preds = %if.end85
  %vm_next98 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %vm_next98 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_next98, align 4
  %vm_end99 = getelementptr inbounds %struct.vm_area_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %vm_end99 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %end)
  %cmp100.not = icmp eq i32 %15, %end
  br i1 %cmp100.not, label %land.rhs.land.lhs.true135_crit_edge, label %do.end117, !prof !228

land.rhs.land.lhs.true135_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true135

do.end117:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 787, i32 noundef 9, ptr noundef null) #19
  br label %land.lhs.true135

if.end132:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end, align 4
  br label %land.lhs.true222

land.lhs.true135:                                 ; preds = %do.end117, %land.rhs.land.lhs.true135_crit_edge
  %18 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end, align 4
  %anon_vma136 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %anon_vma136 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %anon_vma136, align 4
  %tobool137.not = icmp eq ptr %21, null
  br i1 %tobool137.not, label %if.then138, label %land.lhs.true135.land.lhs.true222_crit_edge

land.lhs.true135.land.lhs.true222_crit_edge:      ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true222

if.then138:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #21
  %vm_next139 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %vm_next139 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm_next139, align 4
  br label %if.end220

if.else141:                                       ; preds = %if.then
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %end)
  %cmp142 = icmp ult i32 %25, %end
  br i1 %cmp142, label %if.then144, label %if.else178

if.then144:                                       ; preds = %if.else141
  %sub = sub i32 %end, %25
  %cmp147.not = icmp eq ptr %expand, %vma
  br i1 %cmp147.not, label %if.then144.land.lhs.true222_crit_edge, label %do.end164, !prof !228

if.then144.land.lhs.true222_crit_edge:            ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true222

do.end164:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 810, i32 noundef 9, ptr noundef null) #19
  br label %land.lhs.true222

if.else178:                                       ; preds = %if.else141
  %vm_end179 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %26 = ptrtoint ptr %vm_end179 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_end179, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %end)
  %cmp180 = icmp ugt i32 %27, %end
  br i1 %cmp180, label %if.then182, label %if.else178.if.end239_crit_edge

if.else178.if.end239_crit_edge:                   ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239

if.then182:                                       ; preds = %if.else178
  %sub184.neg = sub i32 %end, %27
  %cmp187.not = icmp eq ptr %3, %expand
  br i1 %cmp187.not, label %if.then182.if.end220_crit_edge, label %do.end204, !prof !228

if.then182.if.end220_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end220

do.end204:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 820, i32 noundef 9, ptr noundef null) #19
  br label %if.end220

if.end220:                                        ; preds = %do.end204, %if.then182.if.end220_crit_edge, %if.then138, %do.end45, %if.end.if.end220_crit_edge
  %adjust_next.0 = phi i32 [ 0, %if.then138 ], [ %sub184.neg, %do.end204 ], [ %sub184.neg, %if.then182.if.end220_crit_edge ], [ 0, %do.end45 ], [ 0, %if.end.if.end220_crit_edge ]
  %remove_next.1 = phi i32 [ 2, %if.then138 ], [ 0, %do.end204 ], [ 0, %if.then182.if.end220_crit_edge ], [ 3, %do.end45 ], [ 3, %if.end.if.end220_crit_edge ]
  %exporter.0 = phi ptr [ %23, %if.then138 ], [ %vma, %do.end204 ], [ %vma, %if.then182.if.end220_crit_edge ], [ %vma, %do.end45 ], [ %vma, %if.end.if.end220_crit_edge ]
  %importer.0 = phi ptr [ %vma, %if.then138 ], [ %3, %do.end204 ], [ %expand, %if.then182.if.end220_crit_edge ], [ %expand, %do.end45 ], [ %expand, %if.end.if.end220_crit_edge ]
  %next.1 = phi ptr [ %3, %if.then138 ], [ %3, %do.end204 ], [ %expand, %if.then182.if.end220_crit_edge ], [ %vma, %do.end45 ], [ %vma, %if.end.if.end220_crit_edge ]
  %end.addr.1 = phi i32 [ %19, %if.then138 ], [ %end, %do.end204 ], [ %end, %if.then182.if.end220_crit_edge ], [ %end, %do.end45 ], [ %end, %if.end.if.end220_crit_edge ]
  %vma.addr.1 = phi ptr [ %vma, %if.then138 ], [ %vma, %do.end204 ], [ %vma, %if.then182.if.end220_crit_edge ], [ %expand, %do.end45 ], [ %expand, %if.end.if.end220_crit_edge ]
  %tobool221.not = icmp eq ptr %exporter.0, null
  br i1 %tobool221.not, label %if.end220.if.end239_crit_edge, label %if.end220.land.lhs.true222_crit_edge

if.end220.land.lhs.true222_crit_edge:             ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true222

if.end220.if.end239_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239

land.lhs.true222:                                 ; preds = %if.end220.land.lhs.true222_crit_edge, %do.end164, %if.then144.land.lhs.true222_crit_edge, %land.lhs.true135.land.lhs.true222_crit_edge, %if.end132
  %vma.addr.1961 = phi ptr [ %vma.addr.1, %if.end220.land.lhs.true222_crit_edge ], [ %vma, %land.lhs.true135.land.lhs.true222_crit_edge ], [ %vma, %if.end132 ], [ %vma, %do.end164 ], [ %vma, %if.then144.land.lhs.true222_crit_edge ]
  %end.addr.1958 = phi i32 [ %end.addr.1, %if.end220.land.lhs.true222_crit_edge ], [ %19, %land.lhs.true135.land.lhs.true222_crit_edge ], [ %17, %if.end132 ], [ %end, %do.end164 ], [ %end, %if.then144.land.lhs.true222_crit_edge ]
  %next.1955 = phi ptr [ %next.1, %if.end220.land.lhs.true222_crit_edge ], [ %3, %land.lhs.true135.land.lhs.true222_crit_edge ], [ %3, %if.end132 ], [ %3, %do.end164 ], [ %3, %if.then144.land.lhs.true222_crit_edge ]
  %importer.0953 = phi ptr [ %importer.0, %if.end220.land.lhs.true222_crit_edge ], [ %vma, %land.lhs.true135.land.lhs.true222_crit_edge ], [ %vma, %if.end132 ], [ %vma, %do.end164 ], [ %vma, %if.then144.land.lhs.true222_crit_edge ]
  %exporter.0952 = phi ptr [ %exporter.0, %if.end220.land.lhs.true222_crit_edge ], [ %3, %land.lhs.true135.land.lhs.true222_crit_edge ], [ %3, %if.end132 ], [ %3, %do.end164 ], [ %3, %if.then144.land.lhs.true222_crit_edge ]
  %remove_next.1950 = phi i32 [ %remove_next.1, %if.end220.land.lhs.true222_crit_edge ], [ 2, %land.lhs.true135.land.lhs.true222_crit_edge ], [ 1, %if.end132 ], [ 0, %do.end164 ], [ 0, %if.then144.land.lhs.true222_crit_edge ]
  %adjust_next.0947 = phi i32 [ %adjust_next.0, %if.end220.land.lhs.true222_crit_edge ], [ 0, %land.lhs.true135.land.lhs.true222_crit_edge ], [ 0, %if.end132 ], [ %sub, %do.end164 ], [ %sub, %if.then144.land.lhs.true222_crit_edge ]
  %anon_vma223 = getelementptr inbounds %struct.vm_area_struct, ptr %exporter.0952, i32 0, i32 11
  %28 = ptrtoint ptr %anon_vma223 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %anon_vma223, align 4
  %tobool224.not = icmp eq ptr %29, null
  br i1 %tobool224.not, label %land.lhs.true222.if.end239_crit_edge, label %land.lhs.true225

land.lhs.true222.if.end239_crit_edge:             ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239

land.lhs.true225:                                 ; preds = %land.lhs.true222
  %anon_vma226 = getelementptr inbounds %struct.vm_area_struct, ptr %importer.0953, i32 0, i32 11
  %30 = ptrtoint ptr %anon_vma226 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %anon_vma226, align 4
  %tobool227.not = icmp eq ptr %31, null
  br i1 %tobool227.not, label %if.then228, label %land.lhs.true225.if.end239_crit_edge

land.lhs.true225.if.end239_crit_edge:             ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239

if.then228:                                       ; preds = %land.lhs.true225
  %32 = ptrtoint ptr %anon_vma226 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %anon_vma226, align 4
  %call = tail call i32 @anon_vma_clone(ptr noundef %importer.0953, ptr noundef nonnull %exporter.0952) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool231.not = icmp eq i32 %call, 0
  br i1 %tobool231.not, label %if.then228.if.end239_crit_edge, label %if.then228.cleanup450_crit_edge

if.then228.cleanup450_crit_edge:                  ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup450

if.then228.if.end239_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end239

if.end239:                                        ; preds = %if.then228.if.end239_crit_edge, %land.lhs.true225.if.end239_crit_edge, %land.lhs.true222.if.end239_crit_edge, %if.end220.if.end239_crit_edge, %if.else178.if.end239_crit_edge, %land.lhs.true.if.end239_crit_edge, %entry.if.end239_crit_edge
  %adjust_next.1 = phi i32 [ 0, %land.lhs.true.if.end239_crit_edge ], [ 0, %entry.if.end239_crit_edge ], [ %adjust_next.0947, %land.lhs.true225.if.end239_crit_edge ], [ %adjust_next.0947, %if.then228.if.end239_crit_edge ], [ %adjust_next.0947, %land.lhs.true222.if.end239_crit_edge ], [ %adjust_next.0, %if.end220.if.end239_crit_edge ], [ 0, %if.else178.if.end239_crit_edge ]
  %remove_next.2 = phi i32 [ 0, %land.lhs.true.if.end239_crit_edge ], [ 0, %entry.if.end239_crit_edge ], [ %remove_next.1950, %land.lhs.true225.if.end239_crit_edge ], [ %remove_next.1950, %if.then228.if.end239_crit_edge ], [ %remove_next.1950, %land.lhs.true222.if.end239_crit_edge ], [ %remove_next.1, %if.end220.if.end239_crit_edge ], [ 0, %if.else178.if.end239_crit_edge ]
  %next.2 = phi ptr [ %3, %land.lhs.true.if.end239_crit_edge ], [ null, %entry.if.end239_crit_edge ], [ %next.1955, %land.lhs.true225.if.end239_crit_edge ], [ %next.1955, %if.then228.if.end239_crit_edge ], [ %next.1955, %land.lhs.true222.if.end239_crit_edge ], [ %next.1, %if.end220.if.end239_crit_edge ], [ %3, %if.else178.if.end239_crit_edge ]
  %end.addr.2 = phi i32 [ %end, %land.lhs.true.if.end239_crit_edge ], [ %end, %entry.if.end239_crit_edge ], [ %end.addr.1958, %land.lhs.true225.if.end239_crit_edge ], [ %end.addr.1958, %if.then228.if.end239_crit_edge ], [ %end.addr.1958, %land.lhs.true222.if.end239_crit_edge ], [ %end.addr.1, %if.end220.if.end239_crit_edge ], [ %end, %if.else178.if.end239_crit_edge ]
  %vma.addr.2 = phi ptr [ %vma, %land.lhs.true.if.end239_crit_edge ], [ %vma, %entry.if.end239_crit_edge ], [ %vma.addr.1961, %land.lhs.true225.if.end239_crit_edge ], [ %vma.addr.1961, %if.then228.if.end239_crit_edge ], [ %vma.addr.1961, %land.lhs.true222.if.end239_crit_edge ], [ %vma.addr.1, %if.end220.if.end239_crit_edge ], [ %vma, %if.else178.if.end239_crit_edge ]
  %tobool240.not = icmp eq ptr %5, null
  %f_mapping = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 18
  %vm_end243 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.2, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adjust_next.1)
  %tobool244.not = icmp eq i32 %adjust_next.1, 0
  %tobool249.not = icmp eq ptr %insert, null
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %insert, i32 0, i32 14
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %insert, i32 0, i32 8
  %anon_vma253 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.2, i32 0, i32 11
  %anon_vma_chain.i811 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.2, i32 0, i32 10
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.2, i32 0, i32 13
  %shr = ashr i32 %adjust_next.1, 12
  %mm_rb.i = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 1
  %vmacache_seqnum.i.i = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 2
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %insert, i32 0, i32 1
  %map_count.i = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 13
  %vm_rb.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.2, i32 0, i32 4
  %highest_vm_end = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 7
  %vm_next396 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.2, i32 0, i32 2
  br label %again

again:                                            ; preds = %if.then401, %if.end239
  %start_changed.0.off0 = phi i1 [ false, %if.end239 ], [ %start_changed.1.off0, %if.then401 ]
  %end_changed.0.off0 = phi i1 [ false, %if.end239 ], [ %end_changed.1.off0, %if.then401 ]
  %remove_next.3 = phi i32 [ %remove_next.2, %if.end239 ], [ 1, %if.then401 ]
  %root.0 = phi ptr [ null, %if.end239 ], [ %root.1, %if.then401 ]
  %mapping.0 = phi ptr [ null, %if.end239 ], [ %mapping.1, %if.then401 ]
  %next.3 = phi ptr [ %next.2, %if.end239 ], [ %398, %if.then401 ]
  %end.addr.3 = phi i32 [ %end.addr.2, %if.end239 ], [ %400, %if.then401 ]
  br i1 %tobool240.not, label %again.if.end252_crit_edge, label %if.then241

again.if.end252_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end252

if.then241:                                       ; preds = %again
  %33 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_mapping, align 4
  %i_mmap = getelementptr inbounds %struct.address_space, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %vma.addr.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vma.addr.2, align 4
  %37 = ptrtoint ptr %vm_end243 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vm_end243, align 4
  tail call void @uprobe_munmap(ptr noundef %vma.addr.2, i32 noundef %36, i32 noundef %38) #19
  br i1 %tobool244.not, label %if.then241.if.end248_crit_edge, label %if.then245

if.then241.if.end248_crit_edge:                   ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end248

if.then245:                                       ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #21
  %39 = ptrtoint ptr %next.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %next.3, align 4
  %vm_end247 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 1
  %41 = ptrtoint ptr %vm_end247 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vm_end247, align 4
  tail call void @uprobe_munmap(ptr noundef %next.3, i32 noundef %40, i32 noundef %42) #19
  br label %if.end248

if.end248:                                        ; preds = %if.then245, %if.then241.if.end248_crit_edge
  %i_mmap_rwsem.i = getelementptr inbounds %struct.address_space, ptr %34, i32 0, i32 6
  tail call void @down_write(ptr noundef %i_mmap_rwsem.i) #19
  br i1 %tobool249.not, label %if.end248.if.end252_crit_edge, label %if.then250

if.end248.if.end252_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end252

if.then250:                                       ; preds = %if.end248
  %43 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vm_file.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.then250.if.end252_crit_edge, label %if.then.i

if.then250.if.end252_crit_edge:                   ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end252

if.then.i:                                        ; preds = %if.then250
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %44, i32 0, i32 18
  %45 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %f_mapping.i, align 4
  %47 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %i_mmap_writable.i.i = getelementptr inbounds %struct.address_space, ptr %46, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %i_mmap_writable.i.i, i32 1, i32 3, i32 1) #19
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i.i, ptr %i_mmap_writable.i.i, i32 1, ptr elementtype(i32) %i_mmap_writable.i.i) #19, !srcloc !233
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %46, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages.i) #19
  %i_mmap.i = getelementptr inbounds %struct.address_space, ptr %46, i32 0, i32 5
  tail call void @vma_interval_tree_insert(ptr noundef nonnull %insert, ptr noundef %i_mmap.i) #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages.i) #19
  br label %if.end252

if.end252:                                        ; preds = %if.end.i, %if.then250.if.end252_crit_edge, %if.end248.if.end252_crit_edge, %again.if.end252_crit_edge
  %root.1 = phi ptr [ %i_mmap, %if.end248.if.end252_crit_edge ], [ %root.0, %again.if.end252_crit_edge ], [ %i_mmap, %if.then250.if.end252_crit_edge ], [ %i_mmap, %if.end.i ]
  %mapping.1 = phi ptr [ %34, %if.end248.if.end252_crit_edge ], [ %mapping.0, %again.if.end252_crit_edge ], [ %34, %if.then250.if.end252_crit_edge ], [ %34, %if.end.i ]
  %50 = ptrtoint ptr %anon_vma253 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %anon_vma253, align 4
  %tobool254.not = icmp eq ptr %51, null
  br i1 %tobool254.not, label %land.lhs.true255, label %if.then261

land.lhs.true255:                                 ; preds = %if.end252
  br i1 %tobool244.not, label %land.lhs.true255.if.end304_crit_edge, label %if.end259

land.lhs.true255.if.end304_crit_edge:             ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end304

if.end259:                                        ; preds = %land.lhs.true255
  %anon_vma258 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 11
  %52 = ptrtoint ptr %anon_vma258 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %anon_vma258, align 4
  %tobool260.not = icmp eq ptr %53, null
  br i1 %tobool260.not, label %if.end259.if.end304_crit_edge, label %if.end259.land.lhs.true264_crit_edge

if.end259.land.lhs.true264_crit_edge:             ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true264

if.end259.if.end304_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end304

if.then261:                                       ; preds = %if.end252
  br i1 %tobool244.not, label %if.end304.critedge, label %if.then261.land.lhs.true264_crit_edge

if.then261.land.lhs.true264_crit_edge:            ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true264

land.lhs.true264:                                 ; preds = %if.then261.land.lhs.true264_crit_edge, %if.end259.land.lhs.true264_crit_edge
  %anon_vma.0987993 = phi ptr [ %51, %if.then261.land.lhs.true264_crit_edge ], [ %53, %if.end259.land.lhs.true264_crit_edge ]
  %anon_vma265 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 11
  %54 = ptrtoint ptr %anon_vma265 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %anon_vma265, align 4
  %tobool266.not = icmp ne ptr %55, null
  %cmp269 = icmp ne ptr %anon_vma.0987993, %55
  %spec.select = select i1 %tobool266.not, i1 %cmp269, i1 false
  br i1 %spec.select, label %do.end287, label %if.then302.critedge632, !prof !229

do.end287:                                        ; preds = %land.lhs.true264
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 865, i32 noundef 9, ptr noundef null) #19
  %56 = ptrtoint ptr %anon_vma.0987993 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %anon_vma.0987993, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %57, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem.i) #19
  %58 = ptrtoint ptr %anon_vma_chain.i811 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn11.i = load ptr, ptr %anon_vma_chain.i811, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %anon_vma_chain.i811
  br i1 %cmp.not12.i, label %do.end287.if.then302_crit_edge, label %do.end287.for.body.i_crit_edge

do.end287.for.body.i_crit_edge:                   ; preds = %do.end287
  br label %for.body.i

do.end287.if.then302_crit_edge:                   ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then302

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end287.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %do.end287.for.body.i_crit_edge ]
  %avc.0.i = getelementptr i8, ptr %.pn13.i, i32 -8
  %anon_vma.i = getelementptr i8, ptr %.pn13.i, i32 -4
  %59 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %anon_vma.i, align 4
  %rb_root.i = getelementptr inbounds %struct.anon_vma, ptr %60, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %avc.0.i, ptr noundef %rb_root.i) #19
  %61 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %anon_vma_chain.i811
  br i1 %cmp.not.i, label %for.body.i.if.then302_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.if.then302_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then302

if.then302.critedge632:                           ; preds = %land.lhs.true264
  %62 = ptrtoint ptr %anon_vma.0987993 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %anon_vma.0987993, align 4
  %rwsem.i787 = getelementptr inbounds %struct.anon_vma, ptr %63, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem.i787) #19
  %64 = ptrtoint ptr %anon_vma_chain.i811 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn11.i789 = load ptr, ptr %anon_vma_chain.i811, align 4
  %cmp.not12.i790 = icmp eq ptr %.pn11.i789, %anon_vma_chain.i811
  br i1 %cmp.not12.i790, label %if.then302.critedge632.if.then302_crit_edge, label %if.then302.critedge632.for.body.i797_crit_edge

if.then302.critedge632.for.body.i797_crit_edge:   ; preds = %if.then302.critedge632
  br label %for.body.i797

if.then302.critedge632.if.then302_crit_edge:      ; preds = %if.then302.critedge632
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then302

for.body.i797:                                    ; preds = %for.body.i797.for.body.i797_crit_edge, %if.then302.critedge632.for.body.i797_crit_edge
  %.pn13.i791 = phi ptr [ %.pn.i795, %for.body.i797.for.body.i797_crit_edge ], [ %.pn11.i789, %if.then302.critedge632.for.body.i797_crit_edge ]
  %avc.0.i792 = getelementptr i8, ptr %.pn13.i791, i32 -8
  %anon_vma.i793 = getelementptr i8, ptr %.pn13.i791, i32 -4
  %65 = ptrtoint ptr %anon_vma.i793 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %anon_vma.i793, align 4
  %rb_root.i794 = getelementptr inbounds %struct.anon_vma, ptr %66, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %avc.0.i792, ptr noundef %rb_root.i794) #19
  %67 = ptrtoint ptr %.pn13.i791 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i795 = load ptr, ptr %.pn13.i791, align 4
  %cmp.not.i796 = icmp eq ptr %.pn.i795, %anon_vma_chain.i811
  br i1 %cmp.not.i796, label %for.body.i797.if.then302_crit_edge, label %for.body.i797.for.body.i797_crit_edge

for.body.i797.for.body.i797_crit_edge:            ; preds = %for.body.i797
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i797

for.body.i797.if.then302_crit_edge:               ; preds = %for.body.i797
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then302

if.then302:                                       ; preds = %for.body.i797.if.then302_crit_edge, %if.then302.critedge632.if.then302_crit_edge, %for.body.i.if.then302_crit_edge, %do.end287.if.then302_crit_edge
  %anon_vma_chain.i799 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 10
  %68 = ptrtoint ptr %anon_vma_chain.i799 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn11.i800 = load ptr, ptr %anon_vma_chain.i799, align 4
  %cmp.not12.i801 = icmp eq ptr %.pn11.i800, %anon_vma_chain.i799
  br i1 %cmp.not12.i801, label %if.then302.if.end304_crit_edge, label %if.then302.for.body.i808_crit_edge

if.then302.for.body.i808_crit_edge:               ; preds = %if.then302
  br label %for.body.i808

if.then302.if.end304_crit_edge:                   ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end304

for.body.i808:                                    ; preds = %for.body.i808.for.body.i808_crit_edge, %if.then302.for.body.i808_crit_edge
  %.pn13.i802 = phi ptr [ %.pn.i806, %for.body.i808.for.body.i808_crit_edge ], [ %.pn11.i800, %if.then302.for.body.i808_crit_edge ]
  %avc.0.i803 = getelementptr i8, ptr %.pn13.i802, i32 -8
  %anon_vma.i804 = getelementptr i8, ptr %.pn13.i802, i32 -4
  %69 = ptrtoint ptr %anon_vma.i804 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %anon_vma.i804, align 4
  %rb_root.i805 = getelementptr inbounds %struct.anon_vma, ptr %70, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %avc.0.i803, ptr noundef %rb_root.i805) #19
  %71 = ptrtoint ptr %.pn13.i802 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i806 = load ptr, ptr %.pn13.i802, align 4
  %cmp.not.i807 = icmp eq ptr %.pn.i806, %anon_vma_chain.i799
  br i1 %cmp.not.i807, label %for.body.i808.if.end304_crit_edge, label %for.body.i808.for.body.i808_crit_edge

for.body.i808.for.body.i808_crit_edge:            ; preds = %for.body.i808
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i808

for.body.i808.if.end304_crit_edge:                ; preds = %for.body.i808
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end304

if.end304.critedge:                               ; preds = %if.then261
  %72 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %51, align 4
  %rwsem.i810 = getelementptr inbounds %struct.anon_vma, ptr %73, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem.i810) #19
  %74 = ptrtoint ptr %anon_vma_chain.i811 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn11.i812 = load ptr, ptr %anon_vma_chain.i811, align 4
  %cmp.not12.i813 = icmp eq ptr %.pn11.i812, %anon_vma_chain.i811
  br i1 %cmp.not12.i813, label %if.end304.critedge.if.end304_crit_edge, label %if.end304.critedge.for.body.i820_crit_edge

if.end304.critedge.for.body.i820_crit_edge:       ; preds = %if.end304.critedge
  br label %for.body.i820

if.end304.critedge.if.end304_crit_edge:           ; preds = %if.end304.critedge
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end304

for.body.i820:                                    ; preds = %for.body.i820.for.body.i820_crit_edge, %if.end304.critedge.for.body.i820_crit_edge
  %.pn13.i814 = phi ptr [ %.pn.i818, %for.body.i820.for.body.i820_crit_edge ], [ %.pn11.i812, %if.end304.critedge.for.body.i820_crit_edge ]
  %avc.0.i815 = getelementptr i8, ptr %.pn13.i814, i32 -8
  %anon_vma.i816 = getelementptr i8, ptr %.pn13.i814, i32 -4
  %75 = ptrtoint ptr %anon_vma.i816 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %anon_vma.i816, align 4
  %rb_root.i817 = getelementptr inbounds %struct.anon_vma, ptr %76, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %avc.0.i815, ptr noundef %rb_root.i817) #19
  %77 = ptrtoint ptr %.pn13.i814 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i818 = load ptr, ptr %.pn13.i814, align 4
  %cmp.not.i819 = icmp eq ptr %.pn.i818, %anon_vma_chain.i811
  br i1 %cmp.not.i819, label %for.body.i820.if.end304_crit_edge, label %for.body.i820.for.body.i820_crit_edge

for.body.i820.for.body.i820_crit_edge:            ; preds = %for.body.i820
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i820

for.body.i820.if.end304_crit_edge:                ; preds = %for.body.i820
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end304

if.end304:                                        ; preds = %for.body.i820.if.end304_crit_edge, %if.end304.critedge.if.end304_crit_edge, %for.body.i808.if.end304_crit_edge, %if.then302.if.end304_crit_edge, %if.end259.if.end304_crit_edge, %land.lhs.true255.if.end304_crit_edge
  %tobool260.not983 = phi i1 [ true, %if.end259.if.end304_crit_edge ], [ false, %if.then302.if.end304_crit_edge ], [ false, %if.end304.critedge.if.end304_crit_edge ], [ true, %land.lhs.true255.if.end304_crit_edge ], [ false, %for.body.i808.if.end304_crit_edge ], [ false, %for.body.i820.if.end304_crit_edge ]
  %anon_vma.0981 = phi ptr [ null, %if.end259.if.end304_crit_edge ], [ %anon_vma.0987993, %if.then302.if.end304_crit_edge ], [ %51, %if.end304.critedge.if.end304_crit_edge ], [ null, %land.lhs.true255.if.end304_crit_edge ], [ %anon_vma.0987993, %for.body.i808.if.end304_crit_edge ], [ %51, %for.body.i820.if.end304_crit_edge ]
  br i1 %tobool240.not, label %if.end304.if.end310_crit_edge, label %if.then306

if.end304.if.end310_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end310

if.then306:                                       ; preds = %if.end304
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping.1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #19
  tail call void @vma_interval_tree_remove(ptr noundef %vma.addr.2, ptr noundef %root.1) #19
  br i1 %tobool244.not, label %if.then306.if.end310_crit_edge, label %if.then308

if.then306.if.end310_crit_edge:                   ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end310

if.then308:                                       ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @vma_interval_tree_remove(ptr noundef %next.3, ptr noundef %root.1) #19
  br label %if.end310

if.end310:                                        ; preds = %if.then308, %if.then306.if.end310_crit_edge, %if.end304.if.end310_crit_edge
  %78 = ptrtoint ptr %vma.addr.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vma.addr.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %start)
  %cmp312.not = icmp eq i32 %79, %start
  br i1 %cmp312.not, label %if.end310.if.end316_crit_edge, label %if.then314

if.end310.if.end316_crit_edge:                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end316

if.then314:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #21
  %80 = ptrtoint ptr %vma.addr.2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %start, ptr %vma.addr.2, align 4
  br label %if.end316

if.end316:                                        ; preds = %if.then314, %if.end310.if.end316_crit_edge
  %start_changed.1.off0 = phi i1 [ true, %if.then314 ], [ %start_changed.0.off0, %if.end310.if.end316_crit_edge ]
  %81 = ptrtoint ptr %vm_end243 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vm_end243, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %end.addr.3, i32 %82)
  %cmp318.not = icmp eq i32 %end.addr.3, %82
  br i1 %cmp318.not, label %if.end316.if.end322_crit_edge, label %if.then320

if.end316.if.end322_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end322

if.then320:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #21
  %83 = ptrtoint ptr %vm_end243 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %end.addr.3, ptr %vm_end243, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.then320, %if.end316.if.end322_crit_edge
  %end_changed.1.off0 = phi i1 [ true, %if.then320 ], [ %end_changed.0.off0, %if.end316.if.end322_crit_edge ]
  %84 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %pgoff, ptr %vm_pgoff, align 4
  br i1 %tobool244.not, label %if.end329, label %if.end329.thread

if.end329:                                        ; preds = %if.end322
  br i1 %tobool240.not, label %if.end329.if.end337_crit_edge, label %if.end329.if.end334_crit_edge

if.end329.if.end334_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end334

if.end329.if.end337_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end337

if.end329.thread:                                 ; preds = %if.end322
  %85 = ptrtoint ptr %next.3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %next.3, align 4
  %add326 = add i32 %86, %adjust_next.1
  store i32 %add326, ptr %next.3, align 4
  %vm_pgoff327 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 13
  %87 = ptrtoint ptr %vm_pgoff327 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vm_pgoff327, align 4
  %add328 = add i32 %88, %shr
  store i32 %add328, ptr %vm_pgoff327, align 4
  br i1 %tobool240.not, label %if.end329.thread.if.end337_crit_edge, label %if.then333

if.end329.thread.if.end337_crit_edge:             ; preds = %if.end329.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end337

if.then333:                                       ; preds = %if.end329.thread
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @vma_interval_tree_insert(ptr noundef %next.3, ptr noundef %root.1) #19
  br label %if.end334

if.end334:                                        ; preds = %if.then333, %if.end329.if.end334_crit_edge
  tail call void @vma_interval_tree_insert(ptr noundef %vma.addr.2, ptr noundef %root.1) #19
  %i_pages335 = getelementptr inbounds %struct.address_space, ptr %mapping.1, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages335) #19
  br label %if.end337

if.end337:                                        ; preds = %if.end334, %if.end329.thread.if.end337_crit_edge, %if.end329.if.end337_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remove_next.3)
  %tobool338.not = icmp eq i32 %remove_next.3, 0
  br i1 %tobool338.not, label %if.else348, label %if.then339

if.then339:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %remove_next.3)
  %cmp340.not = icmp eq i32 %remove_next.3, 3
  br i1 %cmp340.not, label %if.else343, label %if.then342

if.then342:                                       ; preds = %if.then339
  tail call fastcc void @validate_mm_rb(ptr noundef %mm_rb.i, ptr noundef %next.3) #19
  %vm_rb.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 4
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %rb_right.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rb_right.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 4, i32 2
  %91 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else6.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then342
  %93 = ptrtoint ptr %vm_rb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vm_rb.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %94, -4
  %95 = inttoptr i32 %and.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %rb_left.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rb_left.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp eq ptr %97, %vm_rb.i.i.i
  %rb_right.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %95, i32 0, i32 1
  %spec.select.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, ptr %rb_left.i.i.i.i.i.i, ptr %rb_right.i.i.i.i.i.i
  br label %__rb_change_child.exit.i.i.i.i.i

__rb_change_child.exit.i.i.i.i.i:                 ; preds = %if.then.i.i.i.i.i.i, %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i.i = phi ptr [ %mm_rb.i, %if.then.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ]
  %98 = ptrtoint ptr %rb_left.sink.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %90, ptr %rb_left.sink.i.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %90, null
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then2.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %__rb_change_child.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %99 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %94, ptr %90, align 4
  br label %if.end69.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %__rb_change_child.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %and4.i.i.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i = icmp eq i32 %and4.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %tobool5.not.i.i.i.i.i, ptr null, ptr %95
  br label %if.end69.i.i.i.i.i

if.else6.i.i.i.i.i:                               ; preds = %if.then342
  %tobool7.not.i.i.i.i.i = icmp eq ptr %90, null
  br i1 %tobool7.not.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else12.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.else6.i.i.i.i.i
  %100 = ptrtoint ptr %vm_rb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vm_rb.i.i.i, align 4
  %102 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %92, align 4
  %and11.i.i.i.i.i = and i32 %101, -4
  %103 = inttoptr i32 %and11.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i.i)
  %tobool.not.i2.i.i.i.i.i = icmp eq i32 %and11.i.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i.i.i, label %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge, label %if.then.i7.i.i.i.i.i

if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit9.i.i.i.i.i

if.then.i7.i.i.i.i.i:                             ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i3.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %rb_left.i3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rb_left.i3.i.i.i.i.i, align 4
  %cmp.i4.i.i.i.i.i = icmp eq ptr %105, %vm_rb.i.i.i
  %rb_right.i5.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 1
  %spec.select.i6.i.i.i.i.i = select i1 %cmp.i4.i.i.i.i.i, ptr %rb_left.i3.i.i.i.i.i, ptr %rb_right.i5.i.i.i.i.i
  br label %__rb_change_child.exit9.i.i.i.i.i

__rb_change_child.exit9.i.i.i.i.i:                ; preds = %if.then.i7.i.i.i.i.i, %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i.i.i = phi ptr [ %mm_rb.i, %if.then8.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i.i.i, %if.then.i7.i.i.i.i.i ]
  %106 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %92, ptr %rb_left.sink.i8.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i

if.else12.i.i.i.i.i:                              ; preds = %if.else6.i.i.i.i.i
  %rb_left13.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %90, i32 0, i32 2
  %107 = ptrtoint ptr %rb_left13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rb_left13.i.i.i.i.i, align 4
  %tobool14.not.i.i.i.i.i = icmp eq ptr %108, null
  br i1 %tobool14.not.i.i.i.i.i, label %if.then15.i.i.i.i.i, label %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:  ; preds = %if.else12.i.i.i.i.i
  br label %do.body.i.i.i.i.i

if.then15.i.i.i.i.i:                              ; preds = %if.else12.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_right16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %90, i32 0, i32 1
  %109 = ptrtoint ptr %rb_right16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rb_right16.i.i.i.i.i, align 4
  %rb_subtree_gap.i.i.i.i.i.i = getelementptr %struct.vm_area_struct, ptr %next.3, i32 0, i32 5
  %111 = ptrtoint ptr %rb_subtree_gap.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rb_subtree_gap.i.i.i.i.i.i, align 4
  %rb_subtree_gap4.i.i.i.i.i.i = getelementptr i8, ptr %90, i32 12
  %113 = ptrtoint ptr %rb_subtree_gap4.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %rb_subtree_gap4.i.i.i.i.i.i, align 4
  %.pre.i.i.i.i.i = ptrtoint ptr %90 to i32
  br label %if.end42.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i.i = phi ptr [ %115, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %108, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %90, %if.else12.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %rb_left18.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rb_left18.i.i.i.i.i, align 4
  %tobool19.not.i.i.i.i.i = icmp eq ptr %115, null
  br i1 %tobool19.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i.i.i
  %rb_right20.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %rb_right20.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rb_right20.i.i.i.i.i, align 4
  %rb_left26.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %rb_left26.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %117, ptr %rb_left26.i.i.i.i.i, align 4
  store volatile ptr %90, ptr %rb_right20.i.i.i.i.i, align 4
  %119 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %90, align 4
  %and.i.i.i.i.i.i = and i32 %120, 1
  %121 = ptrtoint ptr %tmp.0.i.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, %121
  store i32 %or.i.i.i.i.i.i, ptr %90, align 4
  %rb_subtree_gap.i10.i.i.i.i.i = getelementptr %struct.vm_area_struct, ptr %next.3, i32 0, i32 5
  %122 = ptrtoint ptr %rb_subtree_gap.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rb_subtree_gap.i10.i.i.i.i.i, align 4
  %rb_subtree_gap4.i11.i.i.i.i.i = getelementptr i8, ptr %tmp.0.i.i.i.i.i, i32 12
  %124 = ptrtoint ptr %rb_subtree_gap4.i11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %rb_subtree_gap4.i11.i.i.i.i.i, align 4
  %cmp.not7.i.i.i.i.i.i = icmp eq ptr %successor.0.i.i.i.i.i, %tmp.0.i.i.i.i.i
  br i1 %cmp.not7.i.i.i.i.i.i, label %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i.i
  br label %while.body.i.i.i.i.i.i

do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge:    ; preds = %do.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge
  %rb.addr.08.i.i.i.i.i.i = phi ptr [ %151, %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i, %do.end.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -16
  %125 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %vm_flags.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 24
  %127 = ptrtoint ptr %vm_flags.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vm_flags.i.i.i.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i.i.i.i = and i32 %128, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.vm_start_gap.exit.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.vm_start_gap.exit.i.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i:                        ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %129 = load i32, ptr @stack_guard_gap, align 4
  %130 = tail call i32 @llvm.usub.sat.i32(i32 %126, i32 %129) #19
  br label %vm_start_gap.exit.i.i.i.i.i.i.i.i

vm_start_gap.exit.i.i.i.i.i.i.i.i:                ; preds = %if.then.i.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.vm_start_gap.exit.i.i.i.i.i.i.i.i_crit_edge
  %vm_start.0.i.i.i.i.i.i.i.i.i = phi i32 [ %130, %if.then.i.i.i.i.i.i.i.i.i ], [ %126, %while.body.i.i.i.i.i.i.vm_start_gap.exit.i.i.i.i.i.i.i.i_crit_edge ]
  %vm_prev.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 -4
  %131 = ptrtoint ptr %vm_prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vm_prev.i.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq ptr %132, null
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %vm_start_gap.exit.i.i.i.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i

vm_start_gap.exit.i.i.i.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i.i.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i:                          ; preds = %vm_start_gap.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %vm_end1.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vm_end1.i.i.i.i.i.i.i.i.i, align 4
  %135 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i.i.i.i.i, i32 %134) #19
  br label %vma_compute_gap.exit.i.i.i.i.i.i.i

vma_compute_gap.exit.i.i.i.i.i.i.i:               ; preds = %if.then.i.i.i.i.i.i.i.i, %vm_start_gap.exit.i.i.i.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i.i.i.i_crit_edge
  %gap.0.i.i.i.i.i.i.i.i = phi i32 [ %vm_start.0.i.i.i.i.i.i.i.i.i, %vm_start_gap.exit.i.i.i.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i.i.i.i_crit_edge ], [ %135, %if.then.i.i.i.i.i.i.i.i ]
  %rb_left.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 8
  %136 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rb_left.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %137, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %vma_compute_gap.exit.i.i.i.i.i.i.i.if.end5.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i

vma_compute_gap.exit.i.i.i.i.i.i.i.if.end5.i.i.i.i.i.i.i_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %vma_compute_gap.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i.i.i.i.i = getelementptr i8, ptr %137, i32 12
  %138 = ptrtoint ptr %rb_subtree_gap.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rb_subtree_gap.i.i.i.i.i.i.i, align 4
  %140 = tail call i32 @llvm.umax.i32(i32 %139, i32 %gap.0.i.i.i.i.i.i.i.i) #19
  br label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i.i.i, %vma_compute_gap.exit.i.i.i.i.i.i.i.if.end5.i.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i.i = phi i32 [ %gap.0.i.i.i.i.i.i.i.i, %vma_compute_gap.exit.i.i.i.i.i.i.i.if.end5.i.i.i.i.i.i.i_crit_edge ], [ %140, %if.then.i.i.i.i.i.i.i ]
  %rb_right.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 4
  %141 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rb_right.i.i.i.i.i.i.i, align 4
  %tobool7.not.i.i.i.i.i.i.i = icmp eq ptr %142, null
  br i1 %tobool7.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.if.end19.i.i.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.if.end19.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i.i.i.i.i

if.then8.i.i.i.i.i.i.i:                           ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i.i.i.i.i = getelementptr i8, ptr %142, i32 12
  %143 = ptrtoint ptr %rb_subtree_gap14.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rb_subtree_gap14.i.i.i.i.i.i.i, align 4
  %145 = tail call i32 @llvm.umax.i32(i32 %144, i32 %max.0.i.i.i.i.i.i.i) #19
  br label %if.end19.i.i.i.i.i.i.i

if.end19.i.i.i.i.i.i.i:                           ; preds = %if.then8.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.end19.i.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.if.end19.i.i.i.i.i.i.i_crit_edge ], [ %145, %if.then8.i.i.i.i.i.i.i ]
  %rb_subtree_gap21.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i, i32 12
  %146 = ptrtoint ptr %rb_subtree_gap21.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rb_subtree_gap21.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %max.1.i.i.i.i.i.i.i)
  %cmp22.i.i.i.i.i.i.i = icmp eq i32 %147, %max.1.i.i.i.i.i.i.i
  br i1 %cmp22.i.i.i.i.i.i.i, label %if.end19.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i

if.end19.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %if.end19.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i

cleanup.i.i.i.i.i.i:                              ; preds = %if.end19.i.i.i.i.i.i.i
  %148 = ptrtoint ptr %rb_subtree_gap21.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %max.1.i.i.i.i.i.i.i, ptr %rb_subtree_gap21.i.i.i.i.i.i.i, align 4
  %149 = ptrtoint ptr %rb.addr.08.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rb.addr.08.i.i.i.i.i.i, align 4
  %and.i12.i.i.i.i.i = and i32 %150, -4
  %151 = inttoptr i32 %and.i12.i.i.i.i.i to ptr
  %cmp.not.i.i.i.i.i.i = icmp eq ptr %tmp.0.i.i.i.i.i, %151
  br i1 %cmp.not.i.i.i.i.i.i, label %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.end19.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge, %if.then15.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %121, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %.pre.i.i.i.i.i, %if.then15.i.i.i.i.i ], [ %121, %if.end19.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %121, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %90, %if.then15.i.i.i.i.i ], [ %successor.0.i.i.i.i.i, %if.end19.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %90, %if.then15.i.i.i.i.i ], [ %tmp.0.i.i.i.i.i, %if.end19.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i.i, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i.i = phi ptr [ %117, %do.end.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %110, %if.then15.i.i.i.i.i ], [ %117, %if.end19.i.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ], [ %117, %cleanup.i.i.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %152 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %rb_left49.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i.i, i32 0, i32 2
  %154 = ptrtoint ptr %rb_left49.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %153, ptr %rb_left49.i.i.i.i.i, align 4
  %155 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %153, align 4
  %and.i13.i.i.i.i.i = and i32 %156, 1
  %or.i14.i.i.i.i.i = or i32 %and.i13.i.i.i.i.i, %.pre-phi.i.i.i.i.i
  store i32 %or.i14.i.i.i.i.i, ptr %153, align 4
  %157 = ptrtoint ptr %vm_rb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %vm_rb.i.i.i, align 4
  %and55.i.i.i.i.i = and i32 %158, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i.i)
  %tobool.not.i15.i.i.i.i.i = icmp eq i32 %and55.i.i.i.i.i, 0
  br i1 %tobool.not.i15.i.i.i.i.i, label %if.end42.i.i.i.i.i.__rb_change_child.exit22.i.i.i.i.i_crit_edge, label %if.then.i20.i.i.i.i.i

if.end42.i.i.i.i.i.__rb_change_child.exit22.i.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit22.i.i.i.i.i

if.then.i20.i.i.i.i.i:                            ; preds = %if.end42.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %159 = inttoptr i32 %and55.i.i.i.i.i to ptr
  %rb_left.i16.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %rb_left.i16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rb_left.i16.i.i.i.i.i, align 4
  %cmp.i17.i.i.i.i.i = icmp eq ptr %161, %vm_rb.i.i.i
  %rb_right.i18.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %159, i32 0, i32 1
  %spec.select.i19.i.i.i.i.i = select i1 %cmp.i17.i.i.i.i.i, ptr %rb_left.i16.i.i.i.i.i, ptr %rb_right.i18.i.i.i.i.i
  br label %__rb_change_child.exit22.i.i.i.i.i

__rb_change_child.exit22.i.i.i.i.i:               ; preds = %if.then.i20.i.i.i.i.i, %if.end42.i.i.i.i.i.__rb_change_child.exit22.i.i.i.i.i_crit_edge
  %rb_left.sink.i21.i.i.i.i.i = phi ptr [ %mm_rb.i, %if.end42.i.i.i.i.i.__rb_change_child.exit22.i.i.i.i.i_crit_edge ], [ %spec.select.i19.i.i.i.i.i, %if.then.i20.i.i.i.i.i ]
  %162 = ptrtoint ptr %rb_left.sink.i21.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %successor.1.i.i.i.i.i, ptr %rb_left.sink.i21.i.i.i.i.i, align 4
  %tobool56.not.i.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i, label %if.else58.i.i.i.i.i, label %if.then57.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %__rb_change_child.exit22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %163 = ptrtoint ptr %parent.0.i.i.i.i.i to i32
  %or.i23.i.i.i.i.i = or i32 %163, 1
  %164 = ptrtoint ptr %child2.0.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or.i23.i.i.i.i.i, ptr %child2.0.i.i.i.i.i, align 4
  br label %if.end66.i.i.i.i.i

if.else58.i.i.i.i.i:                              ; preds = %__rb_change_child.exit22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %165 = ptrtoint ptr %successor.1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %successor.1.i.i.i.i.i, align 4
  %and60.i.i.i.i.i = and i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i.i)
  %tobool61.not.i.i.i.i.i = icmp eq i32 %and60.i.i.i.i.i, 0
  %spec.select1.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i.i
  br label %if.end66.i.i.i.i.i

if.end66.i.i.i.i.i:                               ; preds = %if.else58.i.i.i.i.i, %if.then57.i.i.i.i.i
  %rebalance.1.i.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i.i ], [ %spec.select1.i.i.i.i.i, %if.else58.i.i.i.i.i ]
  %167 = ptrtoint ptr %successor.1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %158, ptr %successor.1.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i

if.end69.i.i.i.i.i:                               ; preds = %if.end66.i.i.i.i.i, %__rb_change_child.exit9.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then2.i.i.i.i.i
  %tmp.1.i.i.i.i.i = phi ptr [ %successor.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ %103, %__rb_change_child.exit9.i.i.i.i.i ], [ %95, %if.else.i.i.i.i.i ], [ %95, %if.then2.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i.i, %if.end66.i.i.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %if.else.i.i.i.i.i ], [ null, %if.then2.i.i.i.i.i ]
  %cmp.not7.i24.i.i.i.i.i = icmp eq ptr %tmp.1.i.i.i.i.i, null
  br i1 %cmp.not7.i24.i.i.i.i.i, label %if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %if.end69.i.i.i.i.i.while.body.i30.i.i.i.i.i_crit_edge

if.end69.i.i.i.i.i.while.body.i30.i.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i
  br label %while.body.i30.i.i.i.i.i

if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i

while.body.i30.i.i.i.i.i:                         ; preds = %cleanup.i56.i.i.i.i.i.while.body.i30.i.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.while.body.i30.i.i.i.i.i_crit_edge
  %rb.addr.08.i25.i.i.i.i.i = phi ptr [ %194, %cleanup.i56.i.i.i.i.i.while.body.i30.i.i.i.i.i_crit_edge ], [ %tmp.1.i.i.i.i.i, %if.end69.i.i.i.i.i.while.body.i30.i.i.i.i.i_crit_edge ]
  %add.ptr.i26.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i, i32 -16
  %168 = ptrtoint ptr %add.ptr.i26.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %add.ptr.i26.i.i.i.i.i, align 4
  %vm_flags.i.i.i.i27.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i, i32 24
  %170 = ptrtoint ptr %vm_flags.i.i.i.i27.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %vm_flags.i.i.i.i27.i.i.i.i.i, align 4
  %and.i.i.i.i28.i.i.i.i.i = and i32 %171, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i28.i.i.i.i.i)
  %tobool.not.i.i.i.i29.i.i.i.i.i = icmp eq i32 %and.i.i.i.i28.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i29.i.i.i.i.i, label %while.body.i30.i.i.i.i.i.vm_start_gap.exit.i.i.i35.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i31.i.i.i.i.i

while.body.i30.i.i.i.i.i.vm_start_gap.exit.i.i.i35.i.i.i.i.i_crit_edge: ; preds = %while.body.i30.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i35.i.i.i.i.i

if.then.i.i.i.i31.i.i.i.i.i:                      ; preds = %while.body.i30.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %172 = load i32, ptr @stack_guard_gap, align 4
  %173 = tail call i32 @llvm.usub.sat.i32(i32 %169, i32 %172) #19
  br label %vm_start_gap.exit.i.i.i35.i.i.i.i.i

vm_start_gap.exit.i.i.i35.i.i.i.i.i:              ; preds = %if.then.i.i.i.i31.i.i.i.i.i, %while.body.i30.i.i.i.i.i.vm_start_gap.exit.i.i.i35.i.i.i.i.i_crit_edge
  %vm_start.0.i.i.i.i32.i.i.i.i.i = phi i32 [ %173, %if.then.i.i.i.i31.i.i.i.i.i ], [ %169, %while.body.i30.i.i.i.i.i.vm_start_gap.exit.i.i.i35.i.i.i.i.i_crit_edge ]
  %vm_prev.i.i.i33.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i, i32 -4
  %174 = ptrtoint ptr %vm_prev.i.i.i33.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %vm_prev.i.i.i33.i.i.i.i.i, align 4
  %tobool.not.i.i.i34.i.i.i.i.i = icmp eq ptr %175, null
  br i1 %tobool.not.i.i.i34.i.i.i.i.i, label %vm_start_gap.exit.i.i.i35.i.i.i.i.i.vma_compute_gap.exit.i.i41.i.i.i.i.i_crit_edge, label %if.then.i.i.i37.i.i.i.i.i

vm_start_gap.exit.i.i.i35.i.i.i.i.i.vma_compute_gap.exit.i.i41.i.i.i.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i35.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i41.i.i.i.i.i

if.then.i.i.i37.i.i.i.i.i:                        ; preds = %vm_start_gap.exit.i.i.i35.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i36.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %vm_end1.i.i.i.i36.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %vm_end1.i.i.i.i36.i.i.i.i.i, align 4
  %178 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i32.i.i.i.i.i, i32 %177) #19
  br label %vma_compute_gap.exit.i.i41.i.i.i.i.i

vma_compute_gap.exit.i.i41.i.i.i.i.i:             ; preds = %if.then.i.i.i37.i.i.i.i.i, %vm_start_gap.exit.i.i.i35.i.i.i.i.i.vma_compute_gap.exit.i.i41.i.i.i.i.i_crit_edge
  %gap.0.i.i.i38.i.i.i.i.i = phi i32 [ %vm_start.0.i.i.i.i32.i.i.i.i.i, %vm_start_gap.exit.i.i.i35.i.i.i.i.i.vma_compute_gap.exit.i.i41.i.i.i.i.i_crit_edge ], [ %178, %if.then.i.i.i37.i.i.i.i.i ]
  %rb_left.i.i39.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i, i32 8
  %179 = ptrtoint ptr %rb_left.i.i39.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rb_left.i.i39.i.i.i.i.i, align 4
  %tobool.not.i.i40.i.i.i.i.i = icmp eq ptr %180, null
  br i1 %tobool.not.i.i40.i.i.i.i.i, label %vma_compute_gap.exit.i.i41.i.i.i.i.i.if.end5.i.i47.i.i.i.i.i_crit_edge, label %if.then.i.i43.i.i.i.i.i

vma_compute_gap.exit.i.i41.i.i.i.i.i.if.end5.i.i47.i.i.i.i.i_crit_edge: ; preds = %vma_compute_gap.exit.i.i41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i47.i.i.i.i.i

if.then.i.i43.i.i.i.i.i:                          ; preds = %vma_compute_gap.exit.i.i41.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i42.i.i.i.i.i = getelementptr i8, ptr %180, i32 12
  %181 = ptrtoint ptr %rb_subtree_gap.i.i42.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %rb_subtree_gap.i.i42.i.i.i.i.i, align 4
  %183 = tail call i32 @llvm.umax.i32(i32 %182, i32 %gap.0.i.i.i38.i.i.i.i.i) #19
  br label %if.end5.i.i47.i.i.i.i.i

if.end5.i.i47.i.i.i.i.i:                          ; preds = %if.then.i.i43.i.i.i.i.i, %vma_compute_gap.exit.i.i41.i.i.i.i.i.if.end5.i.i47.i.i.i.i.i_crit_edge
  %max.0.i.i44.i.i.i.i.i = phi i32 [ %gap.0.i.i.i38.i.i.i.i.i, %vma_compute_gap.exit.i.i41.i.i.i.i.i.if.end5.i.i47.i.i.i.i.i_crit_edge ], [ %183, %if.then.i.i43.i.i.i.i.i ]
  %rb_right.i.i45.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i, i32 4
  %184 = ptrtoint ptr %rb_right.i.i45.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rb_right.i.i45.i.i.i.i.i, align 4
  %tobool7.not.i.i46.i.i.i.i.i = icmp eq ptr %185, null
  br i1 %tobool7.not.i.i46.i.i.i.i.i, label %if.end5.i.i47.i.i.i.i.i.if.end19.i.i53.i.i.i.i.i_crit_edge, label %if.then8.i.i49.i.i.i.i.i

if.end5.i.i47.i.i.i.i.i.if.end19.i.i53.i.i.i.i.i_crit_edge: ; preds = %if.end5.i.i47.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i53.i.i.i.i.i

if.then8.i.i49.i.i.i.i.i:                         ; preds = %if.end5.i.i47.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i48.i.i.i.i.i = getelementptr i8, ptr %185, i32 12
  %186 = ptrtoint ptr %rb_subtree_gap14.i.i48.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rb_subtree_gap14.i.i48.i.i.i.i.i, align 4
  %188 = tail call i32 @llvm.umax.i32(i32 %187, i32 %max.0.i.i44.i.i.i.i.i) #19
  br label %if.end19.i.i53.i.i.i.i.i

if.end19.i.i53.i.i.i.i.i:                         ; preds = %if.then8.i.i49.i.i.i.i.i, %if.end5.i.i47.i.i.i.i.i.if.end19.i.i53.i.i.i.i.i_crit_edge
  %max.1.i.i50.i.i.i.i.i = phi i32 [ %max.0.i.i44.i.i.i.i.i, %if.end5.i.i47.i.i.i.i.i.if.end19.i.i53.i.i.i.i.i_crit_edge ], [ %188, %if.then8.i.i49.i.i.i.i.i ]
  %rb_subtree_gap21.i.i51.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i, i32 12
  %189 = ptrtoint ptr %rb_subtree_gap21.i.i51.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %rb_subtree_gap21.i.i51.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %max.1.i.i50.i.i.i.i.i)
  %cmp22.i.i52.i.i.i.i.i = icmp eq i32 %190, %max.1.i.i50.i.i.i.i.i
  br i1 %cmp22.i.i52.i.i.i.i.i, label %if.end19.i.i53.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %cleanup.i56.i.i.i.i.i

if.end19.i.i53.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %if.end19.i.i53.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i

cleanup.i56.i.i.i.i.i:                            ; preds = %if.end19.i.i53.i.i.i.i.i
  %191 = ptrtoint ptr %rb_subtree_gap21.i.i51.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %max.1.i.i50.i.i.i.i.i, ptr %rb_subtree_gap21.i.i51.i.i.i.i.i, align 4
  %192 = ptrtoint ptr %rb.addr.08.i25.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rb.addr.08.i25.i.i.i.i.i, align 4
  %and.i54.i.i.i.i.i = and i32 %193, -4
  %194 = inttoptr i32 %and.i54.i.i.i.i.i to ptr
  %cmp.not.i55.i.i.i.i.i = icmp eq i32 %and.i54.i.i.i.i.i, 0
  br i1 %cmp.not.i55.i.i.i.i.i, label %cleanup.i56.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, label %cleanup.i56.i.i.i.i.i.while.body.i30.i.i.i.i.i_crit_edge

cleanup.i56.i.i.i.i.i.while.body.i30.i.i.i.i.i_crit_edge: ; preds = %cleanup.i56.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i30.i.i.i.i.i

cleanup.i56.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge: ; preds = %cleanup.i56.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i:                ; preds = %cleanup.i56.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, %if.end19.i.i53.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i_crit_edge
  %tobool.not.i.i.i.i = icmp eq ptr %rebalance.2.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i.if.end344_crit_edge, label %__rb_erase_augmented.exit.i.i.i.i.if.end344.sink.split_crit_edge

__rb_erase_augmented.exit.i.i.i.i.if.end344.sink.split_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end344.sink.split

__rb_erase_augmented.exit.i.i.i.i.if.end344_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end344

if.else343:                                       ; preds = %if.then339
  tail call fastcc void @validate_mm_rb(ptr noundef %mm_rb.i, ptr noundef %vma.addr.2) #19
  %vm_rb.i.i.i634 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 4
  %rb_right.i.i.i.i.i635 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 4, i32 1
  %195 = ptrtoint ptr %rb_right.i.i.i.i.i635 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rb_right.i.i.i.i.i635, align 4
  %rb_left.i.i.i.i.i636 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 4, i32 2
  %197 = ptrtoint ptr %rb_left.i.i.i.i.i636 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rb_left.i.i.i.i.i636, align 4
  %tobool.not.i.i.i.i.i637 = icmp eq ptr %198, null
  br i1 %tobool.not.i.i.i.i.i637, label %if.then.i.i.i.i.i640, label %if.else6.i.i.i.i.i655

if.then.i.i.i.i.i640:                             ; preds = %if.else343
  %199 = ptrtoint ptr %vm_rb.i.i.i634 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %vm_rb.i.i.i634, align 4
  %and.i.i.i.i.i638 = and i32 %200, -4
  %201 = inttoptr i32 %and.i.i.i.i.i638 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i638)
  %tobool.not.i.i.i.i.i.i639 = icmp eq i32 %and.i.i.i.i.i638, 0
  br i1 %tobool.not.i.i.i.i.i.i639, label %if.then.i.i.i.i.i640.__rb_change_child.exit.i.i.i.i.i648_crit_edge, label %if.then.i.i.i.i.i.i645

if.then.i.i.i.i.i640.__rb_change_child.exit.i.i.i.i.i648_crit_edge: ; preds = %if.then.i.i.i.i.i640
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit.i.i.i.i.i648

if.then.i.i.i.i.i.i645:                           ; preds = %if.then.i.i.i.i.i640
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i.i.i.i.i.i641 = getelementptr inbounds %struct.rb_node, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %rb_left.i.i.i.i.i.i641 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rb_left.i.i.i.i.i.i641, align 4
  %cmp.i.i.i.i.i.i642 = icmp eq ptr %203, %vm_rb.i.i.i634
  %rb_right.i.i.i.i.i.i643 = getelementptr inbounds %struct.rb_node, ptr %201, i32 0, i32 1
  %spec.select.i.i.i.i.i.i644 = select i1 %cmp.i.i.i.i.i.i642, ptr %rb_left.i.i.i.i.i.i641, ptr %rb_right.i.i.i.i.i.i643
  br label %__rb_change_child.exit.i.i.i.i.i648

__rb_change_child.exit.i.i.i.i.i648:              ; preds = %if.then.i.i.i.i.i.i645, %if.then.i.i.i.i.i640.__rb_change_child.exit.i.i.i.i.i648_crit_edge
  %rb_left.sink.i.i.i.i.i.i646 = phi ptr [ %mm_rb.i, %if.then.i.i.i.i.i640.__rb_change_child.exit.i.i.i.i.i648_crit_edge ], [ %spec.select.i.i.i.i.i.i644, %if.then.i.i.i.i.i.i645 ]
  %204 = ptrtoint ptr %rb_left.sink.i.i.i.i.i.i646 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %196, ptr %rb_left.sink.i.i.i.i.i.i646, align 4
  %tobool1.not.i.i.i.i.i647 = icmp eq ptr %196, null
  br i1 %tobool1.not.i.i.i.i.i647, label %if.else.i.i.i.i.i653, label %if.then2.i.i.i.i.i649

if.then2.i.i.i.i.i649:                            ; preds = %__rb_change_child.exit.i.i.i.i.i648
  call void @__sanitizer_cov_trace_pc() #21
  %205 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %200, ptr %196, align 4
  br label %if.end69.i.i.i.i.i748

if.else.i.i.i.i.i653:                             ; preds = %__rb_change_child.exit.i.i.i.i.i648
  call void @__sanitizer_cov_trace_pc() #21
  %and4.i.i.i.i.i650 = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i650)
  %tobool5.not.i.i.i.i.i651 = icmp eq i32 %and4.i.i.i.i.i650, 0
  %spec.select.i.i.i.i.i652 = select i1 %tobool5.not.i.i.i.i.i651, ptr null, ptr %201
  br label %if.end69.i.i.i.i.i748

if.else6.i.i.i.i.i655:                            ; preds = %if.else343
  %tobool7.not.i.i.i.i.i654 = icmp eq ptr %196, null
  br i1 %tobool7.not.i.i.i.i.i654, label %if.then8.i.i.i.i.i658, label %if.else12.i.i.i.i.i668

if.then8.i.i.i.i.i658:                            ; preds = %if.else6.i.i.i.i.i655
  %206 = ptrtoint ptr %vm_rb.i.i.i634 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %vm_rb.i.i.i634, align 4
  %208 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %198, align 4
  %and11.i.i.i.i.i656 = and i32 %207, -4
  %209 = inttoptr i32 %and11.i.i.i.i.i656 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i.i656)
  %tobool.not.i2.i.i.i.i.i657 = icmp eq i32 %and11.i.i.i.i.i656, 0
  br i1 %tobool.not.i2.i.i.i.i.i657, label %if.then8.i.i.i.i.i658.__rb_change_child.exit9.i.i.i.i.i665_crit_edge, label %if.then.i7.i.i.i.i.i663

if.then8.i.i.i.i.i658.__rb_change_child.exit9.i.i.i.i.i665_crit_edge: ; preds = %if.then8.i.i.i.i.i658
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit9.i.i.i.i.i665

if.then.i7.i.i.i.i.i663:                          ; preds = %if.then8.i.i.i.i.i658
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i3.i.i.i.i.i659 = getelementptr inbounds %struct.rb_node, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %rb_left.i3.i.i.i.i.i659 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rb_left.i3.i.i.i.i.i659, align 4
  %cmp.i4.i.i.i.i.i660 = icmp eq ptr %211, %vm_rb.i.i.i634
  %rb_right.i5.i.i.i.i.i661 = getelementptr inbounds %struct.rb_node, ptr %209, i32 0, i32 1
  %spec.select.i6.i.i.i.i.i662 = select i1 %cmp.i4.i.i.i.i.i660, ptr %rb_left.i3.i.i.i.i.i659, ptr %rb_right.i5.i.i.i.i.i661
  br label %__rb_change_child.exit9.i.i.i.i.i665

__rb_change_child.exit9.i.i.i.i.i665:             ; preds = %if.then.i7.i.i.i.i.i663, %if.then8.i.i.i.i.i658.__rb_change_child.exit9.i.i.i.i.i665_crit_edge
  %rb_left.sink.i8.i.i.i.i.i664 = phi ptr [ %mm_rb.i, %if.then8.i.i.i.i.i658.__rb_change_child.exit9.i.i.i.i.i665_crit_edge ], [ %spec.select.i6.i.i.i.i.i662, %if.then.i7.i.i.i.i.i663 ]
  %212 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i.i664 to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %198, ptr %rb_left.sink.i8.i.i.i.i.i664, align 4
  br label %if.end69.i.i.i.i.i748

if.else12.i.i.i.i.i668:                           ; preds = %if.else6.i.i.i.i.i655
  %rb_left13.i.i.i.i.i666 = getelementptr inbounds %struct.rb_node, ptr %196, i32 0, i32 2
  %213 = ptrtoint ptr %rb_left13.i.i.i.i.i666 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rb_left13.i.i.i.i.i666, align 4
  %tobool14.not.i.i.i.i.i667 = icmp eq ptr %214, null
  br i1 %tobool14.not.i.i.i.i.i667, label %if.then15.i.i.i.i.i673, label %if.else12.i.i.i.i.i668.do.body.i.i.i.i.i678_crit_edge

if.else12.i.i.i.i.i668.do.body.i.i.i.i.i678_crit_edge: ; preds = %if.else12.i.i.i.i.i668
  br label %do.body.i.i.i.i.i678

if.then15.i.i.i.i.i673:                           ; preds = %if.else12.i.i.i.i.i668
  call void @__sanitizer_cov_trace_pc() #21
  %rb_right16.i.i.i.i.i669 = getelementptr inbounds %struct.rb_node, ptr %196, i32 0, i32 1
  %215 = ptrtoint ptr %rb_right16.i.i.i.i.i669 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rb_right16.i.i.i.i.i669, align 4
  %rb_subtree_gap.i.i.i.i.i.i670 = getelementptr %struct.vm_area_struct, ptr %next.3, i32 0, i32 5
  %217 = ptrtoint ptr %rb_subtree_gap.i.i.i.i.i.i670 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rb_subtree_gap.i.i.i.i.i.i670, align 4
  %rb_subtree_gap4.i.i.i.i.i.i671 = getelementptr i8, ptr %196, i32 12
  %219 = ptrtoint ptr %rb_subtree_gap4.i.i.i.i.i.i671 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %rb_subtree_gap4.i.i.i.i.i.i671, align 4
  %.pre.i.i.i.i.i672 = ptrtoint ptr %196 to i32
  br label %if.end42.i.i.i.i.i728

do.body.i.i.i.i.i678:                             ; preds = %do.body.i.i.i.i.i678.do.body.i.i.i.i.i678_crit_edge, %if.else12.i.i.i.i.i668.do.body.i.i.i.i.i678_crit_edge
  %tmp.0.i.i.i.i.i674 = phi ptr [ %221, %do.body.i.i.i.i.i678.do.body.i.i.i.i.i678_crit_edge ], [ %214, %if.else12.i.i.i.i.i668.do.body.i.i.i.i.i678_crit_edge ]
  %successor.0.i.i.i.i.i675 = phi ptr [ %tmp.0.i.i.i.i.i674, %do.body.i.i.i.i.i678.do.body.i.i.i.i.i678_crit_edge ], [ %196, %if.else12.i.i.i.i.i668.do.body.i.i.i.i.i678_crit_edge ]
  %rb_left18.i.i.i.i.i676 = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i674, i32 0, i32 2
  %220 = ptrtoint ptr %rb_left18.i.i.i.i.i676 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rb_left18.i.i.i.i.i676, align 4
  %tobool19.not.i.i.i.i.i677 = icmp eq ptr %221, null
  br i1 %tobool19.not.i.i.i.i.i677, label %do.end.i.i.i.i.i686, label %do.body.i.i.i.i.i678.do.body.i.i.i.i.i678_crit_edge

do.body.i.i.i.i.i678.do.body.i.i.i.i.i678_crit_edge: ; preds = %do.body.i.i.i.i.i678
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.i.i.i678

do.end.i.i.i.i.i686:                              ; preds = %do.body.i.i.i.i.i678
  %rb_right20.i.i.i.i.i679 = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i674, i32 0, i32 1
  %222 = ptrtoint ptr %rb_right20.i.i.i.i.i679 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rb_right20.i.i.i.i.i679, align 4
  %rb_left26.i.i.i.i.i680 = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i.i675, i32 0, i32 2
  %224 = ptrtoint ptr %rb_left26.i.i.i.i.i680 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %223, ptr %rb_left26.i.i.i.i.i680, align 4
  store volatile ptr %196, ptr %rb_right20.i.i.i.i.i679, align 4
  %225 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %196, align 4
  %and.i.i.i.i.i.i681 = and i32 %226, 1
  %227 = ptrtoint ptr %tmp.0.i.i.i.i.i674 to i32
  %or.i.i.i.i.i.i682 = or i32 %and.i.i.i.i.i.i681, %227
  store i32 %or.i.i.i.i.i.i682, ptr %196, align 4
  %rb_subtree_gap.i10.i.i.i.i.i683 = getelementptr %struct.vm_area_struct, ptr %next.3, i32 0, i32 5
  %228 = ptrtoint ptr %rb_subtree_gap.i10.i.i.i.i.i683 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %rb_subtree_gap.i10.i.i.i.i.i683, align 4
  %rb_subtree_gap4.i11.i.i.i.i.i684 = getelementptr i8, ptr %tmp.0.i.i.i.i.i674, i32 12
  %230 = ptrtoint ptr %rb_subtree_gap4.i11.i.i.i.i.i684 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %rb_subtree_gap4.i11.i.i.i.i.i684, align 4
  %cmp.not7.i.i.i.i.i.i685 = icmp eq ptr %successor.0.i.i.i.i.i675, %tmp.0.i.i.i.i.i674
  br i1 %cmp.not7.i.i.i.i.i.i685, label %do.end.i.i.i.i.i686.if.end42.i.i.i.i.i728_crit_edge, label %do.end.i.i.i.i.i686.while.body.i.i.i.i.i.i692_crit_edge

do.end.i.i.i.i.i686.while.body.i.i.i.i.i.i692_crit_edge: ; preds = %do.end.i.i.i.i.i686
  br label %while.body.i.i.i.i.i.i692

do.end.i.i.i.i.i686.if.end42.i.i.i.i.i728_crit_edge: ; preds = %do.end.i.i.i.i.i686
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i728

while.body.i.i.i.i.i.i692:                        ; preds = %cleanup.i.i.i.i.i.i718.while.body.i.i.i.i.i.i692_crit_edge, %do.end.i.i.i.i.i686.while.body.i.i.i.i.i.i692_crit_edge
  %rb.addr.08.i.i.i.i.i.i687 = phi ptr [ %257, %cleanup.i.i.i.i.i.i718.while.body.i.i.i.i.i.i692_crit_edge ], [ %successor.0.i.i.i.i.i675, %do.end.i.i.i.i.i686.while.body.i.i.i.i.i.i692_crit_edge ]
  %add.ptr.i.i.i.i.i.i688 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i687, i32 -16
  %231 = ptrtoint ptr %add.ptr.i.i.i.i.i.i688 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %add.ptr.i.i.i.i.i.i688, align 4
  %vm_flags.i.i.i.i.i.i.i.i.i689 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i687, i32 24
  %233 = ptrtoint ptr %vm_flags.i.i.i.i.i.i.i.i.i689 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %vm_flags.i.i.i.i.i.i.i.i.i689, align 4
  %and.i.i.i.i.i.i.i.i.i690 = and i32 %234, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i.i690)
  %tobool.not.i.i.i.i.i.i.i.i.i691 = icmp eq i32 %and.i.i.i.i.i.i.i.i.i690, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i691, label %while.body.i.i.i.i.i.i692.vm_start_gap.exit.i.i.i.i.i.i.i.i697_crit_edge, label %if.then.i.i.i.i.i.i.i.i.i693

while.body.i.i.i.i.i.i692.vm_start_gap.exit.i.i.i.i.i.i.i.i697_crit_edge: ; preds = %while.body.i.i.i.i.i.i692
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i.i.i.i.i697

if.then.i.i.i.i.i.i.i.i.i693:                     ; preds = %while.body.i.i.i.i.i.i692
  call void @__sanitizer_cov_trace_pc() #21
  %235 = load i32, ptr @stack_guard_gap, align 4
  %236 = tail call i32 @llvm.usub.sat.i32(i32 %232, i32 %235) #19
  br label %vm_start_gap.exit.i.i.i.i.i.i.i.i697

vm_start_gap.exit.i.i.i.i.i.i.i.i697:             ; preds = %if.then.i.i.i.i.i.i.i.i.i693, %while.body.i.i.i.i.i.i692.vm_start_gap.exit.i.i.i.i.i.i.i.i697_crit_edge
  %vm_start.0.i.i.i.i.i.i.i.i.i694 = phi i32 [ %236, %if.then.i.i.i.i.i.i.i.i.i693 ], [ %232, %while.body.i.i.i.i.i.i692.vm_start_gap.exit.i.i.i.i.i.i.i.i697_crit_edge ]
  %vm_prev.i.i.i.i.i.i.i.i695 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i687, i32 -4
  %237 = ptrtoint ptr %vm_prev.i.i.i.i.i.i.i.i695 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %vm_prev.i.i.i.i.i.i.i.i695, align 4
  %tobool.not.i.i.i.i.i.i.i.i696 = icmp eq ptr %238, null
  br i1 %tobool.not.i.i.i.i.i.i.i.i696, label %vm_start_gap.exit.i.i.i.i.i.i.i.i697.vma_compute_gap.exit.i.i.i.i.i.i.i703_crit_edge, label %if.then.i.i.i.i.i.i.i.i699

vm_start_gap.exit.i.i.i.i.i.i.i.i697.vma_compute_gap.exit.i.i.i.i.i.i.i703_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i.i.i.i.i697
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i.i.i.i.i703

if.then.i.i.i.i.i.i.i.i699:                       ; preds = %vm_start_gap.exit.i.i.i.i.i.i.i.i697
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i.i.i.i.i698 = getelementptr inbounds %struct.vm_area_struct, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %vm_end1.i.i.i.i.i.i.i.i.i698 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %vm_end1.i.i.i.i.i.i.i.i.i698, align 4
  %241 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i.i.i.i.i694, i32 %240) #19
  br label %vma_compute_gap.exit.i.i.i.i.i.i.i703

vma_compute_gap.exit.i.i.i.i.i.i.i703:            ; preds = %if.then.i.i.i.i.i.i.i.i699, %vm_start_gap.exit.i.i.i.i.i.i.i.i697.vma_compute_gap.exit.i.i.i.i.i.i.i703_crit_edge
  %gap.0.i.i.i.i.i.i.i.i700 = phi i32 [ %vm_start.0.i.i.i.i.i.i.i.i.i694, %vm_start_gap.exit.i.i.i.i.i.i.i.i697.vma_compute_gap.exit.i.i.i.i.i.i.i703_crit_edge ], [ %241, %if.then.i.i.i.i.i.i.i.i699 ]
  %rb_left.i.i.i.i.i.i.i701 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i687, i32 8
  %242 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i701 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rb_left.i.i.i.i.i.i.i701, align 4
  %tobool.not.i.i.i.i.i.i.i702 = icmp eq ptr %243, null
  br i1 %tobool.not.i.i.i.i.i.i.i702, label %vma_compute_gap.exit.i.i.i.i.i.i.i703.if.end5.i.i.i.i.i.i.i709_crit_edge, label %if.then.i.i.i.i.i.i.i705

vma_compute_gap.exit.i.i.i.i.i.i.i703.if.end5.i.i.i.i.i.i.i709_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i.i.i.i.i703
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i.i.i.i.i709

if.then.i.i.i.i.i.i.i705:                         ; preds = %vma_compute_gap.exit.i.i.i.i.i.i.i703
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i.i.i.i.i704 = getelementptr i8, ptr %243, i32 12
  %244 = ptrtoint ptr %rb_subtree_gap.i.i.i.i.i.i.i704 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %rb_subtree_gap.i.i.i.i.i.i.i704, align 4
  %246 = tail call i32 @llvm.umax.i32(i32 %245, i32 %gap.0.i.i.i.i.i.i.i.i700) #19
  br label %if.end5.i.i.i.i.i.i.i709

if.end5.i.i.i.i.i.i.i709:                         ; preds = %if.then.i.i.i.i.i.i.i705, %vma_compute_gap.exit.i.i.i.i.i.i.i703.if.end5.i.i.i.i.i.i.i709_crit_edge
  %max.0.i.i.i.i.i.i.i706 = phi i32 [ %gap.0.i.i.i.i.i.i.i.i700, %vma_compute_gap.exit.i.i.i.i.i.i.i703.if.end5.i.i.i.i.i.i.i709_crit_edge ], [ %246, %if.then.i.i.i.i.i.i.i705 ]
  %rb_right.i.i.i.i.i.i.i707 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i687, i32 4
  %247 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i707 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %rb_right.i.i.i.i.i.i.i707, align 4
  %tobool7.not.i.i.i.i.i.i.i708 = icmp eq ptr %248, null
  br i1 %tobool7.not.i.i.i.i.i.i.i708, label %if.end5.i.i.i.i.i.i.i709.if.end19.i.i.i.i.i.i.i715_crit_edge, label %if.then8.i.i.i.i.i.i.i711

if.end5.i.i.i.i.i.i.i709.if.end19.i.i.i.i.i.i.i715_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i709
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i.i.i.i.i715

if.then8.i.i.i.i.i.i.i711:                        ; preds = %if.end5.i.i.i.i.i.i.i709
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i.i.i.i.i710 = getelementptr i8, ptr %248, i32 12
  %249 = ptrtoint ptr %rb_subtree_gap14.i.i.i.i.i.i.i710 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %rb_subtree_gap14.i.i.i.i.i.i.i710, align 4
  %251 = tail call i32 @llvm.umax.i32(i32 %250, i32 %max.0.i.i.i.i.i.i.i706) #19
  br label %if.end19.i.i.i.i.i.i.i715

if.end19.i.i.i.i.i.i.i715:                        ; preds = %if.then8.i.i.i.i.i.i.i711, %if.end5.i.i.i.i.i.i.i709.if.end19.i.i.i.i.i.i.i715_crit_edge
  %max.1.i.i.i.i.i.i.i712 = phi i32 [ %max.0.i.i.i.i.i.i.i706, %if.end5.i.i.i.i.i.i.i709.if.end19.i.i.i.i.i.i.i715_crit_edge ], [ %251, %if.then8.i.i.i.i.i.i.i711 ]
  %rb_subtree_gap21.i.i.i.i.i.i.i713 = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i687, i32 12
  %252 = ptrtoint ptr %rb_subtree_gap21.i.i.i.i.i.i.i713 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %rb_subtree_gap21.i.i.i.i.i.i.i713, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %max.1.i.i.i.i.i.i.i712)
  %cmp22.i.i.i.i.i.i.i714 = icmp eq i32 %253, %max.1.i.i.i.i.i.i.i712
  br i1 %cmp22.i.i.i.i.i.i.i714, label %if.end19.i.i.i.i.i.i.i715.if.end42.i.i.i.i.i728_crit_edge, label %cleanup.i.i.i.i.i.i718

if.end19.i.i.i.i.i.i.i715.if.end42.i.i.i.i.i728_crit_edge: ; preds = %if.end19.i.i.i.i.i.i.i715
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i728

cleanup.i.i.i.i.i.i718:                           ; preds = %if.end19.i.i.i.i.i.i.i715
  %254 = ptrtoint ptr %rb_subtree_gap21.i.i.i.i.i.i.i713 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %max.1.i.i.i.i.i.i.i712, ptr %rb_subtree_gap21.i.i.i.i.i.i.i713, align 4
  %255 = ptrtoint ptr %rb.addr.08.i.i.i.i.i.i687 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %rb.addr.08.i.i.i.i.i.i687, align 4
  %and.i12.i.i.i.i.i716 = and i32 %256, -4
  %257 = inttoptr i32 %and.i12.i.i.i.i.i716 to ptr
  %cmp.not.i.i.i.i.i.i717 = icmp eq ptr %tmp.0.i.i.i.i.i674, %257
  br i1 %cmp.not.i.i.i.i.i.i717, label %cleanup.i.i.i.i.i.i718.if.end42.i.i.i.i.i728_crit_edge, label %cleanup.i.i.i.i.i.i718.while.body.i.i.i.i.i.i692_crit_edge

cleanup.i.i.i.i.i.i718.while.body.i.i.i.i.i.i692_crit_edge: ; preds = %cleanup.i.i.i.i.i.i718
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i.i.i.i.i692

cleanup.i.i.i.i.i.i718.if.end42.i.i.i.i.i728_crit_edge: ; preds = %cleanup.i.i.i.i.i.i718
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i728

if.end42.i.i.i.i.i728:                            ; preds = %cleanup.i.i.i.i.i.i718.if.end42.i.i.i.i.i728_crit_edge, %if.end19.i.i.i.i.i.i.i715.if.end42.i.i.i.i.i728_crit_edge, %do.end.i.i.i.i.i686.if.end42.i.i.i.i.i728_crit_edge, %if.then15.i.i.i.i.i673
  %.pre-phi.i.i.i.i.i719 = phi i32 [ %227, %do.end.i.i.i.i.i686.if.end42.i.i.i.i.i728_crit_edge ], [ %.pre.i.i.i.i.i672, %if.then15.i.i.i.i.i673 ], [ %227, %if.end19.i.i.i.i.i.i.i715.if.end42.i.i.i.i.i728_crit_edge ], [ %227, %cleanup.i.i.i.i.i.i718.if.end42.i.i.i.i.i728_crit_edge ]
  %parent.0.i.i.i.i.i720 = phi ptr [ %tmp.0.i.i.i.i.i674, %do.end.i.i.i.i.i686.if.end42.i.i.i.i.i728_crit_edge ], [ %196, %if.then15.i.i.i.i.i673 ], [ %successor.0.i.i.i.i.i675, %if.end19.i.i.i.i.i.i.i715.if.end42.i.i.i.i.i728_crit_edge ], [ %successor.0.i.i.i.i.i675, %cleanup.i.i.i.i.i.i718.if.end42.i.i.i.i.i728_crit_edge ]
  %successor.1.i.i.i.i.i721 = phi ptr [ %tmp.0.i.i.i.i.i674, %do.end.i.i.i.i.i686.if.end42.i.i.i.i.i728_crit_edge ], [ %196, %if.then15.i.i.i.i.i673 ], [ %tmp.0.i.i.i.i.i674, %if.end19.i.i.i.i.i.i.i715.if.end42.i.i.i.i.i728_crit_edge ], [ %tmp.0.i.i.i.i.i674, %cleanup.i.i.i.i.i.i718.if.end42.i.i.i.i.i728_crit_edge ]
  %child2.0.i.i.i.i.i722 = phi ptr [ %223, %do.end.i.i.i.i.i686.if.end42.i.i.i.i.i728_crit_edge ], [ %216, %if.then15.i.i.i.i.i673 ], [ %223, %if.end19.i.i.i.i.i.i.i715.if.end42.i.i.i.i.i728_crit_edge ], [ %223, %cleanup.i.i.i.i.i.i718.if.end42.i.i.i.i.i728_crit_edge ]
  %258 = ptrtoint ptr %rb_left.i.i.i.i.i636 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %rb_left.i.i.i.i.i636, align 4
  %rb_left49.i.i.i.i.i723 = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i.i721, i32 0, i32 2
  %260 = ptrtoint ptr %rb_left49.i.i.i.i.i723 to i32
  call void @__asan_store4_noabort(i32 %260)
  store volatile ptr %259, ptr %rb_left49.i.i.i.i.i723, align 4
  %261 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %259, align 4
  %and.i13.i.i.i.i.i724 = and i32 %262, 1
  %or.i14.i.i.i.i.i725 = or i32 %and.i13.i.i.i.i.i724, %.pre-phi.i.i.i.i.i719
  store i32 %or.i14.i.i.i.i.i725, ptr %259, align 4
  %263 = ptrtoint ptr %vm_rb.i.i.i634 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %vm_rb.i.i.i634, align 4
  %and55.i.i.i.i.i726 = and i32 %264, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i.i726)
  %tobool.not.i15.i.i.i.i.i727 = icmp eq i32 %and55.i.i.i.i.i726, 0
  br i1 %tobool.not.i15.i.i.i.i.i727, label %if.end42.i.i.i.i.i728.__rb_change_child.exit22.i.i.i.i.i736_crit_edge, label %if.then.i20.i.i.i.i.i733

if.end42.i.i.i.i.i728.__rb_change_child.exit22.i.i.i.i.i736_crit_edge: ; preds = %if.end42.i.i.i.i.i728
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit22.i.i.i.i.i736

if.then.i20.i.i.i.i.i733:                         ; preds = %if.end42.i.i.i.i.i728
  call void @__sanitizer_cov_trace_pc() #21
  %265 = inttoptr i32 %and55.i.i.i.i.i726 to ptr
  %rb_left.i16.i.i.i.i.i729 = getelementptr inbounds %struct.rb_node, ptr %265, i32 0, i32 2
  %266 = ptrtoint ptr %rb_left.i16.i.i.i.i.i729 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %rb_left.i16.i.i.i.i.i729, align 4
  %cmp.i17.i.i.i.i.i730 = icmp eq ptr %267, %vm_rb.i.i.i634
  %rb_right.i18.i.i.i.i.i731 = getelementptr inbounds %struct.rb_node, ptr %265, i32 0, i32 1
  %spec.select.i19.i.i.i.i.i732 = select i1 %cmp.i17.i.i.i.i.i730, ptr %rb_left.i16.i.i.i.i.i729, ptr %rb_right.i18.i.i.i.i.i731
  br label %__rb_change_child.exit22.i.i.i.i.i736

__rb_change_child.exit22.i.i.i.i.i736:            ; preds = %if.then.i20.i.i.i.i.i733, %if.end42.i.i.i.i.i728.__rb_change_child.exit22.i.i.i.i.i736_crit_edge
  %rb_left.sink.i21.i.i.i.i.i734 = phi ptr [ %mm_rb.i, %if.end42.i.i.i.i.i728.__rb_change_child.exit22.i.i.i.i.i736_crit_edge ], [ %spec.select.i19.i.i.i.i.i732, %if.then.i20.i.i.i.i.i733 ]
  %268 = ptrtoint ptr %rb_left.sink.i21.i.i.i.i.i734 to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile ptr %successor.1.i.i.i.i.i721, ptr %rb_left.sink.i21.i.i.i.i.i734, align 4
  %tobool56.not.i.i.i.i.i735 = icmp eq ptr %child2.0.i.i.i.i.i722, null
  br i1 %tobool56.not.i.i.i.i.i735, label %if.else58.i.i.i.i.i742, label %if.then57.i.i.i.i.i738

if.then57.i.i.i.i.i738:                           ; preds = %__rb_change_child.exit22.i.i.i.i.i736
  call void @__sanitizer_cov_trace_pc() #21
  %269 = ptrtoint ptr %parent.0.i.i.i.i.i720 to i32
  %or.i23.i.i.i.i.i737 = or i32 %269, 1
  %270 = ptrtoint ptr %child2.0.i.i.i.i.i722 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %or.i23.i.i.i.i.i737, ptr %child2.0.i.i.i.i.i722, align 4
  br label %if.end66.i.i.i.i.i744

if.else58.i.i.i.i.i742:                           ; preds = %__rb_change_child.exit22.i.i.i.i.i736
  call void @__sanitizer_cov_trace_pc() #21
  %271 = ptrtoint ptr %successor.1.i.i.i.i.i721 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %successor.1.i.i.i.i.i721, align 4
  %and60.i.i.i.i.i739 = and i32 %272, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i.i739)
  %tobool61.not.i.i.i.i.i740 = icmp eq i32 %and60.i.i.i.i.i739, 0
  %spec.select1.i.i.i.i.i741 = select i1 %tobool61.not.i.i.i.i.i740, ptr null, ptr %parent.0.i.i.i.i.i720
  br label %if.end66.i.i.i.i.i744

if.end66.i.i.i.i.i744:                            ; preds = %if.else58.i.i.i.i.i742, %if.then57.i.i.i.i.i738
  %rebalance.1.i.i.i.i.i743 = phi ptr [ null, %if.then57.i.i.i.i.i738 ], [ %spec.select1.i.i.i.i.i741, %if.else58.i.i.i.i.i742 ]
  %273 = ptrtoint ptr %successor.1.i.i.i.i.i721 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %264, ptr %successor.1.i.i.i.i.i721, align 4
  br label %if.end69.i.i.i.i.i748

if.end69.i.i.i.i.i748:                            ; preds = %if.end66.i.i.i.i.i744, %__rb_change_child.exit9.i.i.i.i.i665, %if.else.i.i.i.i.i653, %if.then2.i.i.i.i.i649
  %tmp.1.i.i.i.i.i745 = phi ptr [ %successor.1.i.i.i.i.i721, %if.end66.i.i.i.i.i744 ], [ %209, %__rb_change_child.exit9.i.i.i.i.i665 ], [ %201, %if.else.i.i.i.i.i653 ], [ %201, %if.then2.i.i.i.i.i649 ]
  %rebalance.2.i.i.i.i.i746 = phi ptr [ %rebalance.1.i.i.i.i.i743, %if.end66.i.i.i.i.i744 ], [ null, %__rb_change_child.exit9.i.i.i.i.i665 ], [ %spec.select.i.i.i.i.i652, %if.else.i.i.i.i.i653 ], [ null, %if.then2.i.i.i.i.i649 ]
  %cmp.not7.i24.i.i.i.i.i747 = icmp eq ptr %tmp.1.i.i.i.i.i745, null
  br i1 %cmp.not7.i24.i.i.i.i.i747, label %if.end69.i.i.i.i.i748.__rb_erase_augmented.exit.i.i.i.i782_crit_edge, label %if.end69.i.i.i.i.i748.while.body.i30.i.i.i.i.i754_crit_edge

if.end69.i.i.i.i.i748.while.body.i30.i.i.i.i.i754_crit_edge: ; preds = %if.end69.i.i.i.i.i748
  br label %while.body.i30.i.i.i.i.i754

if.end69.i.i.i.i.i748.__rb_erase_augmented.exit.i.i.i.i782_crit_edge: ; preds = %if.end69.i.i.i.i.i748
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i782

while.body.i30.i.i.i.i.i754:                      ; preds = %cleanup.i56.i.i.i.i.i780.while.body.i30.i.i.i.i.i754_crit_edge, %if.end69.i.i.i.i.i748.while.body.i30.i.i.i.i.i754_crit_edge
  %rb.addr.08.i25.i.i.i.i.i749 = phi ptr [ %300, %cleanup.i56.i.i.i.i.i780.while.body.i30.i.i.i.i.i754_crit_edge ], [ %tmp.1.i.i.i.i.i745, %if.end69.i.i.i.i.i748.while.body.i30.i.i.i.i.i754_crit_edge ]
  %add.ptr.i26.i.i.i.i.i750 = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i749, i32 -16
  %274 = ptrtoint ptr %add.ptr.i26.i.i.i.i.i750 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %add.ptr.i26.i.i.i.i.i750, align 4
  %vm_flags.i.i.i.i27.i.i.i.i.i751 = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i749, i32 24
  %276 = ptrtoint ptr %vm_flags.i.i.i.i27.i.i.i.i.i751 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %vm_flags.i.i.i.i27.i.i.i.i.i751, align 4
  %and.i.i.i.i28.i.i.i.i.i752 = and i32 %277, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i28.i.i.i.i.i752)
  %tobool.not.i.i.i.i29.i.i.i.i.i753 = icmp eq i32 %and.i.i.i.i28.i.i.i.i.i752, 0
  br i1 %tobool.not.i.i.i.i29.i.i.i.i.i753, label %while.body.i30.i.i.i.i.i754.vm_start_gap.exit.i.i.i35.i.i.i.i.i759_crit_edge, label %if.then.i.i.i.i31.i.i.i.i.i755

while.body.i30.i.i.i.i.i754.vm_start_gap.exit.i.i.i35.i.i.i.i.i759_crit_edge: ; preds = %while.body.i30.i.i.i.i.i754
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i35.i.i.i.i.i759

if.then.i.i.i.i31.i.i.i.i.i755:                   ; preds = %while.body.i30.i.i.i.i.i754
  call void @__sanitizer_cov_trace_pc() #21
  %278 = load i32, ptr @stack_guard_gap, align 4
  %279 = tail call i32 @llvm.usub.sat.i32(i32 %275, i32 %278) #19
  br label %vm_start_gap.exit.i.i.i35.i.i.i.i.i759

vm_start_gap.exit.i.i.i35.i.i.i.i.i759:           ; preds = %if.then.i.i.i.i31.i.i.i.i.i755, %while.body.i30.i.i.i.i.i754.vm_start_gap.exit.i.i.i35.i.i.i.i.i759_crit_edge
  %vm_start.0.i.i.i.i32.i.i.i.i.i756 = phi i32 [ %279, %if.then.i.i.i.i31.i.i.i.i.i755 ], [ %275, %while.body.i30.i.i.i.i.i754.vm_start_gap.exit.i.i.i35.i.i.i.i.i759_crit_edge ]
  %vm_prev.i.i.i33.i.i.i.i.i757 = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i749, i32 -4
  %280 = ptrtoint ptr %vm_prev.i.i.i33.i.i.i.i.i757 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %vm_prev.i.i.i33.i.i.i.i.i757, align 4
  %tobool.not.i.i.i34.i.i.i.i.i758 = icmp eq ptr %281, null
  br i1 %tobool.not.i.i.i34.i.i.i.i.i758, label %vm_start_gap.exit.i.i.i35.i.i.i.i.i759.vma_compute_gap.exit.i.i41.i.i.i.i.i765_crit_edge, label %if.then.i.i.i37.i.i.i.i.i761

vm_start_gap.exit.i.i.i35.i.i.i.i.i759.vma_compute_gap.exit.i.i41.i.i.i.i.i765_crit_edge: ; preds = %vm_start_gap.exit.i.i.i35.i.i.i.i.i759
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i41.i.i.i.i.i765

if.then.i.i.i37.i.i.i.i.i761:                     ; preds = %vm_start_gap.exit.i.i.i35.i.i.i.i.i759
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i36.i.i.i.i.i760 = getelementptr inbounds %struct.vm_area_struct, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %vm_end1.i.i.i.i36.i.i.i.i.i760 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %vm_end1.i.i.i.i36.i.i.i.i.i760, align 4
  %284 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i32.i.i.i.i.i756, i32 %283) #19
  br label %vma_compute_gap.exit.i.i41.i.i.i.i.i765

vma_compute_gap.exit.i.i41.i.i.i.i.i765:          ; preds = %if.then.i.i.i37.i.i.i.i.i761, %vm_start_gap.exit.i.i.i35.i.i.i.i.i759.vma_compute_gap.exit.i.i41.i.i.i.i.i765_crit_edge
  %gap.0.i.i.i38.i.i.i.i.i762 = phi i32 [ %vm_start.0.i.i.i.i32.i.i.i.i.i756, %vm_start_gap.exit.i.i.i35.i.i.i.i.i759.vma_compute_gap.exit.i.i41.i.i.i.i.i765_crit_edge ], [ %284, %if.then.i.i.i37.i.i.i.i.i761 ]
  %rb_left.i.i39.i.i.i.i.i763 = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i749, i32 8
  %285 = ptrtoint ptr %rb_left.i.i39.i.i.i.i.i763 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rb_left.i.i39.i.i.i.i.i763, align 4
  %tobool.not.i.i40.i.i.i.i.i764 = icmp eq ptr %286, null
  br i1 %tobool.not.i.i40.i.i.i.i.i764, label %vma_compute_gap.exit.i.i41.i.i.i.i.i765.if.end5.i.i47.i.i.i.i.i771_crit_edge, label %if.then.i.i43.i.i.i.i.i767

vma_compute_gap.exit.i.i41.i.i.i.i.i765.if.end5.i.i47.i.i.i.i.i771_crit_edge: ; preds = %vma_compute_gap.exit.i.i41.i.i.i.i.i765
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i47.i.i.i.i.i771

if.then.i.i43.i.i.i.i.i767:                       ; preds = %vma_compute_gap.exit.i.i41.i.i.i.i.i765
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i42.i.i.i.i.i766 = getelementptr i8, ptr %286, i32 12
  %287 = ptrtoint ptr %rb_subtree_gap.i.i42.i.i.i.i.i766 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %rb_subtree_gap.i.i42.i.i.i.i.i766, align 4
  %289 = tail call i32 @llvm.umax.i32(i32 %288, i32 %gap.0.i.i.i38.i.i.i.i.i762) #19
  br label %if.end5.i.i47.i.i.i.i.i771

if.end5.i.i47.i.i.i.i.i771:                       ; preds = %if.then.i.i43.i.i.i.i.i767, %vma_compute_gap.exit.i.i41.i.i.i.i.i765.if.end5.i.i47.i.i.i.i.i771_crit_edge
  %max.0.i.i44.i.i.i.i.i768 = phi i32 [ %gap.0.i.i.i38.i.i.i.i.i762, %vma_compute_gap.exit.i.i41.i.i.i.i.i765.if.end5.i.i47.i.i.i.i.i771_crit_edge ], [ %289, %if.then.i.i43.i.i.i.i.i767 ]
  %rb_right.i.i45.i.i.i.i.i769 = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i749, i32 4
  %290 = ptrtoint ptr %rb_right.i.i45.i.i.i.i.i769 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rb_right.i.i45.i.i.i.i.i769, align 4
  %tobool7.not.i.i46.i.i.i.i.i770 = icmp eq ptr %291, null
  br i1 %tobool7.not.i.i46.i.i.i.i.i770, label %if.end5.i.i47.i.i.i.i.i771.if.end19.i.i53.i.i.i.i.i777_crit_edge, label %if.then8.i.i49.i.i.i.i.i773

if.end5.i.i47.i.i.i.i.i771.if.end19.i.i53.i.i.i.i.i777_crit_edge: ; preds = %if.end5.i.i47.i.i.i.i.i771
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i53.i.i.i.i.i777

if.then8.i.i49.i.i.i.i.i773:                      ; preds = %if.end5.i.i47.i.i.i.i.i771
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i48.i.i.i.i.i772 = getelementptr i8, ptr %291, i32 12
  %292 = ptrtoint ptr %rb_subtree_gap14.i.i48.i.i.i.i.i772 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %rb_subtree_gap14.i.i48.i.i.i.i.i772, align 4
  %294 = tail call i32 @llvm.umax.i32(i32 %293, i32 %max.0.i.i44.i.i.i.i.i768) #19
  br label %if.end19.i.i53.i.i.i.i.i777

if.end19.i.i53.i.i.i.i.i777:                      ; preds = %if.then8.i.i49.i.i.i.i.i773, %if.end5.i.i47.i.i.i.i.i771.if.end19.i.i53.i.i.i.i.i777_crit_edge
  %max.1.i.i50.i.i.i.i.i774 = phi i32 [ %max.0.i.i44.i.i.i.i.i768, %if.end5.i.i47.i.i.i.i.i771.if.end19.i.i53.i.i.i.i.i777_crit_edge ], [ %294, %if.then8.i.i49.i.i.i.i.i773 ]
  %rb_subtree_gap21.i.i51.i.i.i.i.i775 = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i749, i32 12
  %295 = ptrtoint ptr %rb_subtree_gap21.i.i51.i.i.i.i.i775 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %rb_subtree_gap21.i.i51.i.i.i.i.i775, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %296, i32 %max.1.i.i50.i.i.i.i.i774)
  %cmp22.i.i52.i.i.i.i.i776 = icmp eq i32 %296, %max.1.i.i50.i.i.i.i.i774
  br i1 %cmp22.i.i52.i.i.i.i.i776, label %if.end19.i.i53.i.i.i.i.i777.__rb_erase_augmented.exit.i.i.i.i782_crit_edge, label %cleanup.i56.i.i.i.i.i780

if.end19.i.i53.i.i.i.i.i777.__rb_erase_augmented.exit.i.i.i.i782_crit_edge: ; preds = %if.end19.i.i53.i.i.i.i.i777
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i782

cleanup.i56.i.i.i.i.i780:                         ; preds = %if.end19.i.i53.i.i.i.i.i777
  %297 = ptrtoint ptr %rb_subtree_gap21.i.i51.i.i.i.i.i775 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %max.1.i.i50.i.i.i.i.i774, ptr %rb_subtree_gap21.i.i51.i.i.i.i.i775, align 4
  %298 = ptrtoint ptr %rb.addr.08.i25.i.i.i.i.i749 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %rb.addr.08.i25.i.i.i.i.i749, align 4
  %and.i54.i.i.i.i.i778 = and i32 %299, -4
  %300 = inttoptr i32 %and.i54.i.i.i.i.i778 to ptr
  %cmp.not.i55.i.i.i.i.i779 = icmp eq i32 %and.i54.i.i.i.i.i778, 0
  br i1 %cmp.not.i55.i.i.i.i.i779, label %cleanup.i56.i.i.i.i.i780.__rb_erase_augmented.exit.i.i.i.i782_crit_edge, label %cleanup.i56.i.i.i.i.i780.while.body.i30.i.i.i.i.i754_crit_edge

cleanup.i56.i.i.i.i.i780.while.body.i30.i.i.i.i.i754_crit_edge: ; preds = %cleanup.i56.i.i.i.i.i780
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i30.i.i.i.i.i754

cleanup.i56.i.i.i.i.i780.__rb_erase_augmented.exit.i.i.i.i782_crit_edge: ; preds = %cleanup.i56.i.i.i.i.i780
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i782

__rb_erase_augmented.exit.i.i.i.i782:             ; preds = %cleanup.i56.i.i.i.i.i780.__rb_erase_augmented.exit.i.i.i.i782_crit_edge, %if.end19.i.i53.i.i.i.i.i777.__rb_erase_augmented.exit.i.i.i.i782_crit_edge, %if.end69.i.i.i.i.i748.__rb_erase_augmented.exit.i.i.i.i782_crit_edge
  %tobool.not.i.i.i.i781 = icmp eq ptr %rebalance.2.i.i.i.i.i746, null
  br i1 %tobool.not.i.i.i.i781, label %__rb_erase_augmented.exit.i.i.i.i782.if.end344_crit_edge, label %__rb_erase_augmented.exit.i.i.i.i782.if.end344.sink.split_crit_edge

__rb_erase_augmented.exit.i.i.i.i782.if.end344.sink.split_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i782
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end344.sink.split

__rb_erase_augmented.exit.i.i.i.i782.if.end344_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i782
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end344

if.end344.sink.split:                             ; preds = %__rb_erase_augmented.exit.i.i.i.i782.if.end344.sink.split_crit_edge, %__rb_erase_augmented.exit.i.i.i.i.if.end344.sink.split_crit_edge
  %rebalance.2.i.i.i.i.i746.sink = phi ptr [ %rebalance.2.i.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.i.if.end344.sink.split_crit_edge ], [ %rebalance.2.i.i.i.i.i746, %__rb_erase_augmented.exit.i.i.i.i782.if.end344.sink.split_crit_edge ]
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i.i746.sink, ptr noundef %mm_rb.i, ptr noundef nonnull @vma_gap_callbacks_rotate) #19
  br label %if.end344

if.end344:                                        ; preds = %if.end344.sink.split, %__rb_erase_augmented.exit.i.i.i.i782.if.end344_crit_edge, %__rb_erase_augmented.exit.i.i.i.i.if.end344_crit_edge
  tail call void @__vma_unlink_list(ptr noundef %1, ptr noundef %next.3) #19
  %301 = ptrtoint ptr %vmacache_seqnum.i.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %storemerge.in = load i64, ptr %vmacache_seqnum.i.i, align 8
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %vmacache_seqnum.i.i, align 8
  br i1 %tobool240.not, label %if.end344.if.end367_crit_edge, label %if.then346

if.end344.if.end367_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end367

if.then346:                                       ; preds = %if.end344
  %vm_flags.i822 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 8
  %302 = ptrtoint ptr %vm_flags.i822 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %vm_flags.i822, align 4
  %and.i823 = and i32 %303, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i823)
  %tobool.not.i824 = icmp eq i32 %and.i823, 0
  br i1 %tobool.not.i824, label %if.then346.__remove_shared_vm_struct.exit_crit_edge, label %if.then.i827

if.then346.__remove_shared_vm_struct.exit_crit_edge: ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #21
  br label %__remove_shared_vm_struct.exit

if.then.i827:                                     ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #21
  %i_mmap_writable.i.i825 = getelementptr inbounds %struct.address_space, ptr %mapping.1, i32 0, i32 4
  %call.i.i.i.i826 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i.i825, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %i_mmap_writable.i.i825, i32 1, i32 3, i32 1) #19
  %304 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i.i825, ptr %i_mmap_writable.i.i825, i32 1, ptr elementtype(i32) %i_mmap_writable.i.i825) #19, !srcloc !231
  br label %__remove_shared_vm_struct.exit

__remove_shared_vm_struct.exit:                   ; preds = %if.then.i827, %if.then346.__remove_shared_vm_struct.exit_crit_edge
  %i_pages.i828 = getelementptr inbounds %struct.address_space, ptr %mapping.1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages.i828) #19
  %i_mmap.i829 = getelementptr inbounds %struct.address_space, ptr %mapping.1, i32 0, i32 5
  tail call void @vma_interval_tree_remove(ptr noundef %next.3, ptr noundef %i_mmap.i829) #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages.i828) #19
  br label %if.end367

if.else348:                                       ; preds = %if.end337
  br i1 %tobool249.not, label %if.else351, label %if.then350

if.then350:                                       ; preds = %if.else348
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev.i) #19
  %305 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev.i, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_link.i) #19
  %306 = ptrtoint ptr %rb_link.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_link.i, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_parent.i) #19
  %307 = ptrtoint ptr %rb_parent.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_parent.i, align 4, !annotation !230
  %308 = ptrtoint ptr %insert to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %insert, align 4
  %310 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %vm_end.i, align 4
  %call.i = call fastcc i32 @find_vma_links(ptr noundef %1, i32 noundef %309, i32 noundef %311, ptr noundef nonnull %prev.i, ptr noundef nonnull %rb_link.i, ptr noundef nonnull %rb_parent.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i831 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i831, label %__insert_vm_struct.exit, label %do.body.i

do.body.i:                                        ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #19, !srcloc !234
  unreachable

__insert_vm_struct.exit:                          ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #21
  %312 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %prev.i, align 4
  %314 = ptrtoint ptr %rb_link.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rb_link.i, align 4
  %316 = ptrtoint ptr %rb_parent.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %rb_parent.i, align 4
  tail call void @__vma_link_list(ptr noundef %1, ptr noundef nonnull %insert, ptr noundef %313) #19
  tail call void @__vma_link_rb(ptr noundef %1, ptr noundef nonnull %insert, ptr noundef %315, ptr noundef %317) #19
  %318 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %map_count.i, align 8
  %inc.i = add i32 %319, 1
  store i32 %inc.i, ptr %map_count.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_parent.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_link.i) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev.i) #19
  br label %if.end367

if.else351:                                       ; preds = %if.else348
  br i1 %start_changed.1.off0, label %if.else351.while.body.i.i_crit_edge, label %if.else351.if.end354_crit_edge

if.else351.if.end354_crit_edge:                   ; preds = %if.else351
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end354

if.else351.while.body.i.i_crit_edge:              ; preds = %if.else351
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.else351.while.body.i.i_crit_edge
  %rb.addr.08.i.i = phi ptr [ %346, %cleanup.i.i.while.body.i.i_crit_edge ], [ %vm_rb.i, %if.else351.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 -16
  %320 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %add.ptr.i.i, align 4
  %vm_flags.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 24
  %322 = ptrtoint ptr %vm_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %vm_flags.i.i.i.i.i, align 4
  %and.i.i.i.i.i833 = and i32 %323, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i833)
  %tobool.not.i.i.i.i.i834 = icmp eq i32 %and.i.i.i.i.i833, 0
  br i1 %tobool.not.i.i.i.i.i834, label %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i835

while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i

if.then.i.i.i.i.i835:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %324 = load i32, ptr @stack_guard_gap, align 4
  %325 = tail call i32 @llvm.usub.sat.i32(i32 %321, i32 %324) #19
  br label %vm_start_gap.exit.i.i.i.i

vm_start_gap.exit.i.i.i.i:                        ; preds = %if.then.i.i.i.i.i835, %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge
  %vm_start.0.i.i.i.i.i = phi i32 [ %325, %if.then.i.i.i.i.i835 ], [ %321, %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge ]
  %vm_prev.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 -4
  %326 = ptrtoint ptr %vm_prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %vm_prev.i.i.i.i, align 4
  %tobool.not.i.i.i.i836 = icmp eq ptr %327, null
  br i1 %tobool.not.i.i.i.i836, label %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge, label %if.then.i.i.i.i837

vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i

if.then.i.i.i.i837:                               ; preds = %vm_start_gap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %327, i32 0, i32 1
  %328 = ptrtoint ptr %vm_end1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %vm_end1.i.i.i.i.i, align 4
  %330 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i, i32 %329) #19
  br label %vma_compute_gap.exit.i.i.i

vma_compute_gap.exit.i.i.i:                       ; preds = %if.then.i.i.i.i837, %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge
  %gap.0.i.i.i.i = phi i32 [ %vm_start.0.i.i.i.i.i, %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge ], [ %330, %if.then.i.i.i.i837 ]
  %rb_left.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 8
  %331 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %332, null
  br i1 %tobool.not.i.i.i, label %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge, label %if.then.i.i.i

vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i

if.then.i.i.i:                                    ; preds = %vma_compute_gap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i = getelementptr i8, ptr %332, i32 12
  %333 = ptrtoint ptr %rb_subtree_gap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %rb_subtree_gap.i.i.i, align 4
  %335 = tail call i32 @llvm.umax.i32(i32 %334, i32 %gap.0.i.i.i.i) #19
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then.i.i.i, %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge
  %max.0.i.i.i = phi i32 [ %gap.0.i.i.i.i, %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge ], [ %335, %if.then.i.i.i ]
  %rb_right.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 4
  %336 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %rb_right.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %337, null
  br i1 %tobool7.not.i.i.i, label %if.end5.i.i.i.if.end19.i.i.i_crit_edge, label %if.then8.i.i.i

if.end5.i.i.i.if.end19.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i = getelementptr i8, ptr %337, i32 12
  %338 = ptrtoint ptr %rb_subtree_gap14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %rb_subtree_gap14.i.i.i, align 4
  %340 = tail call i32 @llvm.umax.i32(i32 %339, i32 %max.0.i.i.i) #19
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end5.i.i.i.if.end19.i.i.i_crit_edge
  %max.1.i.i.i = phi i32 [ %max.0.i.i.i, %if.end5.i.i.i.if.end19.i.i.i_crit_edge ], [ %340, %if.then8.i.i.i ]
  %rb_subtree_gap21.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 12
  %341 = ptrtoint ptr %rb_subtree_gap21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %rb_subtree_gap21.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %342, i32 %max.1.i.i.i)
  %cmp22.i.i.i = icmp eq i32 %342, %max.1.i.i.i
  br i1 %cmp22.i.i.i, label %if.end19.i.i.i.if.end354_crit_edge, label %cleanup.i.i

if.end19.i.i.i.if.end354_crit_edge:               ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end354

cleanup.i.i:                                      ; preds = %if.end19.i.i.i
  %343 = ptrtoint ptr %rb_subtree_gap21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %max.1.i.i.i, ptr %rb_subtree_gap21.i.i.i, align 4
  %344 = ptrtoint ptr %rb.addr.08.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %rb.addr.08.i.i, align 4
  %and.i.i = and i32 %345, -4
  %346 = inttoptr i32 %and.i.i to ptr
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup.i.i.if.end354_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i

cleanup.i.i.if.end354_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end354

if.end354:                                        ; preds = %cleanup.i.i.if.end354_crit_edge, %if.end19.i.i.i.if.end354_crit_edge, %if.else351.if.end354_crit_edge
  br i1 %end_changed.1.off0, label %if.then356, label %if.end354.if.end367_crit_edge

if.end354.if.end367_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end367

if.then356:                                       ; preds = %if.end354
  %tobool357.not = icmp eq ptr %next.3, null
  br i1 %tobool357.not, label %if.then358, label %if.else360

if.then358:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #21
  %347 = ptrtoint ptr %vm_end243 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %vm_end243, align 4
  %349 = ptrtoint ptr %highest_vm_end to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %highest_vm_end, align 8
  br label %if.end367

if.else360:                                       ; preds = %if.then356
  br i1 %tobool244.not, label %if.then362, label %if.else360.if.end367_crit_edge

if.else360.if.end367_crit_edge:                   ; preds = %if.else360
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end367

if.then362:                                       ; preds = %if.else360
  %vm_rb.i838 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 4
  br label %while.body.i.i844

while.body.i.i844:                                ; preds = %cleanup.i.i870.while.body.i.i844_crit_edge, %if.then362
  %rb.addr.08.i.i839 = phi ptr [ %376, %cleanup.i.i870.while.body.i.i844_crit_edge ], [ %vm_rb.i838, %if.then362 ]
  %add.ptr.i.i840 = getelementptr i8, ptr %rb.addr.08.i.i839, i32 -16
  %350 = ptrtoint ptr %add.ptr.i.i840 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %add.ptr.i.i840, align 4
  %vm_flags.i.i.i.i.i841 = getelementptr i8, ptr %rb.addr.08.i.i839, i32 24
  %352 = ptrtoint ptr %vm_flags.i.i.i.i.i841 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %vm_flags.i.i.i.i.i841, align 4
  %and.i.i.i.i.i842 = and i32 %353, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i842)
  %tobool.not.i.i.i.i.i843 = icmp eq i32 %and.i.i.i.i.i842, 0
  br i1 %tobool.not.i.i.i.i.i843, label %while.body.i.i844.vm_start_gap.exit.i.i.i.i849_crit_edge, label %if.then.i.i.i.i.i845

while.body.i.i844.vm_start_gap.exit.i.i.i.i849_crit_edge: ; preds = %while.body.i.i844
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i849

if.then.i.i.i.i.i845:                             ; preds = %while.body.i.i844
  call void @__sanitizer_cov_trace_pc() #21
  %354 = load i32, ptr @stack_guard_gap, align 4
  %355 = tail call i32 @llvm.usub.sat.i32(i32 %351, i32 %354) #19
  br label %vm_start_gap.exit.i.i.i.i849

vm_start_gap.exit.i.i.i.i849:                     ; preds = %if.then.i.i.i.i.i845, %while.body.i.i844.vm_start_gap.exit.i.i.i.i849_crit_edge
  %vm_start.0.i.i.i.i.i846 = phi i32 [ %355, %if.then.i.i.i.i.i845 ], [ %351, %while.body.i.i844.vm_start_gap.exit.i.i.i.i849_crit_edge ]
  %vm_prev.i.i.i.i847 = getelementptr i8, ptr %rb.addr.08.i.i839, i32 -4
  %356 = ptrtoint ptr %vm_prev.i.i.i.i847 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %vm_prev.i.i.i.i847, align 4
  %tobool.not.i.i.i.i848 = icmp eq ptr %357, null
  br i1 %tobool.not.i.i.i.i848, label %vm_start_gap.exit.i.i.i.i849.vma_compute_gap.exit.i.i.i855_crit_edge, label %if.then.i.i.i.i851

vm_start_gap.exit.i.i.i.i849.vma_compute_gap.exit.i.i.i855_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i849
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i855

if.then.i.i.i.i851:                               ; preds = %vm_start_gap.exit.i.i.i.i849
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i850 = getelementptr inbounds %struct.vm_area_struct, ptr %357, i32 0, i32 1
  %358 = ptrtoint ptr %vm_end1.i.i.i.i.i850 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %vm_end1.i.i.i.i.i850, align 4
  %360 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i846, i32 %359) #19
  br label %vma_compute_gap.exit.i.i.i855

vma_compute_gap.exit.i.i.i855:                    ; preds = %if.then.i.i.i.i851, %vm_start_gap.exit.i.i.i.i849.vma_compute_gap.exit.i.i.i855_crit_edge
  %gap.0.i.i.i.i852 = phi i32 [ %vm_start.0.i.i.i.i.i846, %vm_start_gap.exit.i.i.i.i849.vma_compute_gap.exit.i.i.i855_crit_edge ], [ %360, %if.then.i.i.i.i851 ]
  %rb_left.i.i.i853 = getelementptr i8, ptr %rb.addr.08.i.i839, i32 8
  %361 = ptrtoint ptr %rb_left.i.i.i853 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %rb_left.i.i.i853, align 4
  %tobool.not.i.i.i854 = icmp eq ptr %362, null
  br i1 %tobool.not.i.i.i854, label %vma_compute_gap.exit.i.i.i855.if.end5.i.i.i861_crit_edge, label %if.then.i.i.i857

vma_compute_gap.exit.i.i.i855.if.end5.i.i.i861_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i855
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i861

if.then.i.i.i857:                                 ; preds = %vma_compute_gap.exit.i.i.i855
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i856 = getelementptr i8, ptr %362, i32 12
  %363 = ptrtoint ptr %rb_subtree_gap.i.i.i856 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %rb_subtree_gap.i.i.i856, align 4
  %365 = tail call i32 @llvm.umax.i32(i32 %364, i32 %gap.0.i.i.i.i852) #19
  br label %if.end5.i.i.i861

if.end5.i.i.i861:                                 ; preds = %if.then.i.i.i857, %vma_compute_gap.exit.i.i.i855.if.end5.i.i.i861_crit_edge
  %max.0.i.i.i858 = phi i32 [ %gap.0.i.i.i.i852, %vma_compute_gap.exit.i.i.i855.if.end5.i.i.i861_crit_edge ], [ %365, %if.then.i.i.i857 ]
  %rb_right.i.i.i859 = getelementptr i8, ptr %rb.addr.08.i.i839, i32 4
  %366 = ptrtoint ptr %rb_right.i.i.i859 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %rb_right.i.i.i859, align 4
  %tobool7.not.i.i.i860 = icmp eq ptr %367, null
  br i1 %tobool7.not.i.i.i860, label %if.end5.i.i.i861.if.end19.i.i.i867_crit_edge, label %if.then8.i.i.i863

if.end5.i.i.i861.if.end19.i.i.i867_crit_edge:     ; preds = %if.end5.i.i.i861
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i867

if.then8.i.i.i863:                                ; preds = %if.end5.i.i.i861
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i862 = getelementptr i8, ptr %367, i32 12
  %368 = ptrtoint ptr %rb_subtree_gap14.i.i.i862 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %rb_subtree_gap14.i.i.i862, align 4
  %370 = tail call i32 @llvm.umax.i32(i32 %369, i32 %max.0.i.i.i858) #19
  br label %if.end19.i.i.i867

if.end19.i.i.i867:                                ; preds = %if.then8.i.i.i863, %if.end5.i.i.i861.if.end19.i.i.i867_crit_edge
  %max.1.i.i.i864 = phi i32 [ %max.0.i.i.i858, %if.end5.i.i.i861.if.end19.i.i.i867_crit_edge ], [ %370, %if.then8.i.i.i863 ]
  %rb_subtree_gap21.i.i.i865 = getelementptr i8, ptr %rb.addr.08.i.i839, i32 12
  %371 = ptrtoint ptr %rb_subtree_gap21.i.i.i865 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %rb_subtree_gap21.i.i.i865, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %372, i32 %max.1.i.i.i864)
  %cmp22.i.i.i866 = icmp eq i32 %372, %max.1.i.i.i864
  br i1 %cmp22.i.i.i866, label %if.end19.i.i.i867.if.end367_crit_edge, label %cleanup.i.i870

if.end19.i.i.i867.if.end367_crit_edge:            ; preds = %if.end19.i.i.i867
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end367

cleanup.i.i870:                                   ; preds = %if.end19.i.i.i867
  %373 = ptrtoint ptr %rb_subtree_gap21.i.i.i865 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %max.1.i.i.i864, ptr %rb_subtree_gap21.i.i.i865, align 4
  %374 = ptrtoint ptr %rb.addr.08.i.i839 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %rb.addr.08.i.i839, align 4
  %and.i.i868 = and i32 %375, -4
  %376 = inttoptr i32 %and.i.i868 to ptr
  %cmp.not.i.i869 = icmp eq i32 %and.i.i868, 0
  br i1 %cmp.not.i.i869, label %cleanup.i.i870.if.end367_crit_edge, label %cleanup.i.i870.while.body.i.i844_crit_edge

cleanup.i.i870.while.body.i.i844_crit_edge:       ; preds = %cleanup.i.i870
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i844

cleanup.i.i870.if.end367_crit_edge:               ; preds = %cleanup.i.i870
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end367

if.end367:                                        ; preds = %cleanup.i.i870.if.end367_crit_edge, %if.end19.i.i.i867.if.end367_crit_edge, %if.else360.if.end367_crit_edge, %if.then358, %if.end354.if.end367_crit_edge, %__insert_vm_struct.exit, %__remove_shared_vm_struct.exit, %if.end344.if.end367_crit_edge
  br i1 %tobool260.not983, label %if.end367.if.end373_crit_edge, label %if.then369

if.end367.if.end373_crit_edge:                    ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end373

if.then369:                                       ; preds = %if.end367
  %377 = ptrtoint ptr %anon_vma_chain.i811 to i32
  call void @__asan_load4_noabort(i32 %377)
  %.pn11.i873 = load ptr, ptr %anon_vma_chain.i811, align 4
  %cmp.not12.i874 = icmp eq ptr %.pn11.i873, %anon_vma_chain.i811
  br i1 %cmp.not12.i874, label %if.then369.anon_vma_interval_tree_post_update_vma.exit_crit_edge, label %if.then369.for.body.i881_crit_edge

if.then369.for.body.i881_crit_edge:               ; preds = %if.then369
  br label %for.body.i881

if.then369.anon_vma_interval_tree_post_update_vma.exit_crit_edge: ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #21
  br label %anon_vma_interval_tree_post_update_vma.exit

for.body.i881:                                    ; preds = %for.body.i881.for.body.i881_crit_edge, %if.then369.for.body.i881_crit_edge
  %.pn13.i875 = phi ptr [ %.pn.i879, %for.body.i881.for.body.i881_crit_edge ], [ %.pn11.i873, %if.then369.for.body.i881_crit_edge ]
  %avc.0.i876 = getelementptr i8, ptr %.pn13.i875, i32 -8
  %anon_vma.i877 = getelementptr i8, ptr %.pn13.i875, i32 -4
  %378 = ptrtoint ptr %anon_vma.i877 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %anon_vma.i877, align 4
  %rb_root.i878 = getelementptr inbounds %struct.anon_vma, ptr %379, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef %avc.0.i876, ptr noundef %rb_root.i878) #19
  %380 = ptrtoint ptr %.pn13.i875 to i32
  call void @__asan_load4_noabort(i32 %380)
  %.pn.i879 = load ptr, ptr %.pn13.i875, align 4
  %cmp.not.i880 = icmp eq ptr %.pn.i879, %anon_vma_chain.i811
  br i1 %cmp.not.i880, label %for.body.i881.anon_vma_interval_tree_post_update_vma.exit_crit_edge, label %for.body.i881.for.body.i881_crit_edge

for.body.i881.for.body.i881_crit_edge:            ; preds = %for.body.i881
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i881

for.body.i881.anon_vma_interval_tree_post_update_vma.exit_crit_edge: ; preds = %for.body.i881
  call void @__sanitizer_cov_trace_pc() #21
  br label %anon_vma_interval_tree_post_update_vma.exit

anon_vma_interval_tree_post_update_vma.exit:      ; preds = %for.body.i881.anon_vma_interval_tree_post_update_vma.exit_crit_edge, %if.then369.anon_vma_interval_tree_post_update_vma.exit_crit_edge
  br i1 %tobool244.not, label %anon_vma_interval_tree_post_update_vma.exit.if.end372_crit_edge, label %if.then371

anon_vma_interval_tree_post_update_vma.exit.if.end372_crit_edge: ; preds = %anon_vma_interval_tree_post_update_vma.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end372

if.then371:                                       ; preds = %anon_vma_interval_tree_post_update_vma.exit
  %anon_vma_chain.i882 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 10
  %381 = ptrtoint ptr %anon_vma_chain.i882 to i32
  call void @__asan_load4_noabort(i32 %381)
  %.pn11.i883 = load ptr, ptr %anon_vma_chain.i882, align 4
  %cmp.not12.i884 = icmp eq ptr %.pn11.i883, %anon_vma_chain.i882
  br i1 %cmp.not12.i884, label %if.then371.if.end372_crit_edge, label %if.then371.for.body.i891_crit_edge

if.then371.for.body.i891_crit_edge:               ; preds = %if.then371
  br label %for.body.i891

if.then371.if.end372_crit_edge:                   ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end372

for.body.i891:                                    ; preds = %for.body.i891.for.body.i891_crit_edge, %if.then371.for.body.i891_crit_edge
  %.pn13.i885 = phi ptr [ %.pn.i889, %for.body.i891.for.body.i891_crit_edge ], [ %.pn11.i883, %if.then371.for.body.i891_crit_edge ]
  %avc.0.i886 = getelementptr i8, ptr %.pn13.i885, i32 -8
  %anon_vma.i887 = getelementptr i8, ptr %.pn13.i885, i32 -4
  %382 = ptrtoint ptr %anon_vma.i887 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %anon_vma.i887, align 4
  %rb_root.i888 = getelementptr inbounds %struct.anon_vma, ptr %383, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef %avc.0.i886, ptr noundef %rb_root.i888) #19
  %384 = ptrtoint ptr %.pn13.i885 to i32
  call void @__asan_load4_noabort(i32 %384)
  %.pn.i889 = load ptr, ptr %.pn13.i885, align 4
  %cmp.not.i890 = icmp eq ptr %.pn.i889, %anon_vma_chain.i882
  br i1 %cmp.not.i890, label %for.body.i891.if.end372_crit_edge, label %for.body.i891.for.body.i891_crit_edge

for.body.i891.for.body.i891_crit_edge:            ; preds = %for.body.i891
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i891

for.body.i891.if.end372_crit_edge:                ; preds = %for.body.i891
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end372

if.end372:                                        ; preds = %for.body.i891.if.end372_crit_edge, %if.then371.if.end372_crit_edge, %anon_vma_interval_tree_post_update_vma.exit.if.end372_crit_edge
  %385 = ptrtoint ptr %anon_vma.0981 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %anon_vma.0981, align 4
  %rwsem.i893 = getelementptr inbounds %struct.anon_vma, ptr %386, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i893) #19
  br label %if.end373

if.end373:                                        ; preds = %if.end372, %if.end367.if.end373_crit_edge
  br i1 %tobool240.not, label %if.end381.thread, label %if.then375

if.then375:                                       ; preds = %if.end373
  %i_mmap_rwsem.i894 = getelementptr inbounds %struct.address_space, ptr %mapping.1, i32 0, i32 6
  tail call void @up_write(ptr noundef %i_mmap_rwsem.i894) #19
  %call376 = tail call i32 @uprobe_mmap(ptr noundef %vma.addr.2) #19
  br i1 %tobool244.not, label %if.then375.if.end381_crit_edge, label %if.then378

if.then375.if.end381_crit_edge:                   ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end381

if.then378:                                       ; preds = %if.then375
  call void @__sanitizer_cov_trace_pc() #21
  %call379 = tail call i32 @uprobe_mmap(ptr noundef %next.3) #19
  br label %if.end381

if.end381:                                        ; preds = %if.then378, %if.then375.if.end381_crit_edge
  br i1 %tobool338.not, label %if.end381.if.end443_crit_edge, label %if.then385.critedge

if.end381.if.end443_crit_edge:                    ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end443

if.end381.thread:                                 ; preds = %if.end373
  br i1 %tobool338.not, label %if.end381.thread.if.end449_crit_edge, label %if.end381.thread.if.end388_crit_edge

if.end381.thread.if.end388_crit_edge:             ; preds = %if.end381.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end388

if.end381.thread.if.end449_crit_edge:             ; preds = %if.end381.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end449

if.then385.critedge:                              ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #21
  %387 = ptrtoint ptr %next.3 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %next.3, align 4
  %vm_end387 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 1
  %389 = ptrtoint ptr %vm_end387 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %vm_end387, align 4
  tail call void @uprobe_munmap(ptr noundef %next.3, i32 noundef %388, i32 noundef %390) #19
  tail call void @fput(ptr noundef nonnull %5) #19
  br label %if.end388

if.end388:                                        ; preds = %if.then385.critedge, %if.end381.thread.if.end388_crit_edge
  %anon_vma389 = getelementptr inbounds %struct.vm_area_struct, ptr %next.3, i32 0, i32 11
  %391 = ptrtoint ptr %anon_vma389 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %anon_vma389, align 4
  %tobool390.not = icmp eq ptr %392, null
  br i1 %tobool390.not, label %if.end388.if.end392_crit_edge, label %if.then391

if.end388.if.end392_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end392

if.then391:                                       ; preds = %if.end388
  %393 = ptrtoint ptr %anon_vma253 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %anon_vma253, align 4
  %cmp.not.i896 = icmp eq ptr %394, %392
  br i1 %cmp.not.i896, label %anon_vma_merge.exit, label %if.then.i897, !prof !228

if.then.i897:                                     ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_vma(ptr noundef %vma.addr.2) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 155, 0\0A.popsection", ""() #19, !srcloc !235
  unreachable

anon_vma_merge.exit:                              ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @unlink_anon_vmas(ptr noundef %next.3) #19
  br label %if.end392

if.end392:                                        ; preds = %anon_vma_merge.exit, %if.end388.if.end392_crit_edge
  %395 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %map_count.i, align 8
  %dec = add i32 %396, -1
  store i32 %dec, ptr %map_count.i, align 8
  tail call void @vm_area_free(ptr noundef %next.3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %remove_next.3)
  %cmp393.not = icmp eq i32 %remove_next.3, 3
  br i1 %cmp393.not, label %if.end392.if.else403_crit_edge, label %if.end398

if.end392.if.else403_crit_edge:                   ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else403

if.end398:                                        ; preds = %if.end392
  %397 = ptrtoint ptr %vm_next396 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %vm_next396, align 4
  %cmp399 = icmp eq i32 %remove_next.3, 2
  br i1 %cmp399, label %if.then401, label %if.end398.if.else403_crit_edge

if.end398.if.else403_crit_edge:                   ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else403

if.then401:                                       ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end402 = getelementptr inbounds %struct.vm_area_struct, ptr %398, i32 0, i32 1
  %399 = ptrtoint ptr %vm_end402 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %vm_end402, align 4
  br label %again

if.else403:                                       ; preds = %if.end398.if.else403_crit_edge, %if.end392.if.else403_crit_edge
  %next.4996 = phi ptr [ %398, %if.end398.if.else403_crit_edge ], [ %vma.addr.2, %if.end392.if.else403_crit_edge ]
  %tobool404.not = icmp eq ptr %next.4996, null
  br i1 %tobool404.not, label %if.else406, label %if.then405

if.then405:                                       ; preds = %if.else403
  %vm_rb.i898 = getelementptr inbounds %struct.vm_area_struct, ptr %next.4996, i32 0, i32 4
  br label %while.body.i.i904

while.body.i.i904:                                ; preds = %cleanup.i.i930.while.body.i.i904_crit_edge, %if.then405
  %rb.addr.08.i.i899 = phi ptr [ %427, %cleanup.i.i930.while.body.i.i904_crit_edge ], [ %vm_rb.i898, %if.then405 ]
  %add.ptr.i.i900 = getelementptr i8, ptr %rb.addr.08.i.i899, i32 -16
  %401 = ptrtoint ptr %add.ptr.i.i900 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %add.ptr.i.i900, align 4
  %vm_flags.i.i.i.i.i901 = getelementptr i8, ptr %rb.addr.08.i.i899, i32 24
  %403 = ptrtoint ptr %vm_flags.i.i.i.i.i901 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %vm_flags.i.i.i.i.i901, align 4
  %and.i.i.i.i.i902 = and i32 %404, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i902)
  %tobool.not.i.i.i.i.i903 = icmp eq i32 %and.i.i.i.i.i902, 0
  br i1 %tobool.not.i.i.i.i.i903, label %while.body.i.i904.vm_start_gap.exit.i.i.i.i909_crit_edge, label %if.then.i.i.i.i.i905

while.body.i.i904.vm_start_gap.exit.i.i.i.i909_crit_edge: ; preds = %while.body.i.i904
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i909

if.then.i.i.i.i.i905:                             ; preds = %while.body.i.i904
  call void @__sanitizer_cov_trace_pc() #21
  %405 = load i32, ptr @stack_guard_gap, align 4
  %406 = tail call i32 @llvm.usub.sat.i32(i32 %402, i32 %405) #19
  br label %vm_start_gap.exit.i.i.i.i909

vm_start_gap.exit.i.i.i.i909:                     ; preds = %if.then.i.i.i.i.i905, %while.body.i.i904.vm_start_gap.exit.i.i.i.i909_crit_edge
  %vm_start.0.i.i.i.i.i906 = phi i32 [ %406, %if.then.i.i.i.i.i905 ], [ %402, %while.body.i.i904.vm_start_gap.exit.i.i.i.i909_crit_edge ]
  %vm_prev.i.i.i.i907 = getelementptr i8, ptr %rb.addr.08.i.i899, i32 -4
  %407 = ptrtoint ptr %vm_prev.i.i.i.i907 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %vm_prev.i.i.i.i907, align 4
  %tobool.not.i.i.i.i908 = icmp eq ptr %408, null
  br i1 %tobool.not.i.i.i.i908, label %vm_start_gap.exit.i.i.i.i909.vma_compute_gap.exit.i.i.i915_crit_edge, label %if.then.i.i.i.i911

vm_start_gap.exit.i.i.i.i909.vma_compute_gap.exit.i.i.i915_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i909
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i915

if.then.i.i.i.i911:                               ; preds = %vm_start_gap.exit.i.i.i.i909
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i910 = getelementptr inbounds %struct.vm_area_struct, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %vm_end1.i.i.i.i.i910 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %vm_end1.i.i.i.i.i910, align 4
  %411 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i906, i32 %410) #19
  br label %vma_compute_gap.exit.i.i.i915

vma_compute_gap.exit.i.i.i915:                    ; preds = %if.then.i.i.i.i911, %vm_start_gap.exit.i.i.i.i909.vma_compute_gap.exit.i.i.i915_crit_edge
  %gap.0.i.i.i.i912 = phi i32 [ %vm_start.0.i.i.i.i.i906, %vm_start_gap.exit.i.i.i.i909.vma_compute_gap.exit.i.i.i915_crit_edge ], [ %411, %if.then.i.i.i.i911 ]
  %rb_left.i.i.i913 = getelementptr i8, ptr %rb.addr.08.i.i899, i32 8
  %412 = ptrtoint ptr %rb_left.i.i.i913 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %rb_left.i.i.i913, align 4
  %tobool.not.i.i.i914 = icmp eq ptr %413, null
  br i1 %tobool.not.i.i.i914, label %vma_compute_gap.exit.i.i.i915.if.end5.i.i.i921_crit_edge, label %if.then.i.i.i917

vma_compute_gap.exit.i.i.i915.if.end5.i.i.i921_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i915
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i921

if.then.i.i.i917:                                 ; preds = %vma_compute_gap.exit.i.i.i915
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i916 = getelementptr i8, ptr %413, i32 12
  %414 = ptrtoint ptr %rb_subtree_gap.i.i.i916 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %rb_subtree_gap.i.i.i916, align 4
  %416 = tail call i32 @llvm.umax.i32(i32 %415, i32 %gap.0.i.i.i.i912) #19
  br label %if.end5.i.i.i921

if.end5.i.i.i921:                                 ; preds = %if.then.i.i.i917, %vma_compute_gap.exit.i.i.i915.if.end5.i.i.i921_crit_edge
  %max.0.i.i.i918 = phi i32 [ %gap.0.i.i.i.i912, %vma_compute_gap.exit.i.i.i915.if.end5.i.i.i921_crit_edge ], [ %416, %if.then.i.i.i917 ]
  %rb_right.i.i.i919 = getelementptr i8, ptr %rb.addr.08.i.i899, i32 4
  %417 = ptrtoint ptr %rb_right.i.i.i919 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %rb_right.i.i.i919, align 4
  %tobool7.not.i.i.i920 = icmp eq ptr %418, null
  br i1 %tobool7.not.i.i.i920, label %if.end5.i.i.i921.if.end19.i.i.i927_crit_edge, label %if.then8.i.i.i923

if.end5.i.i.i921.if.end19.i.i.i927_crit_edge:     ; preds = %if.end5.i.i.i921
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i927

if.then8.i.i.i923:                                ; preds = %if.end5.i.i.i921
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i922 = getelementptr i8, ptr %418, i32 12
  %419 = ptrtoint ptr %rb_subtree_gap14.i.i.i922 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %rb_subtree_gap14.i.i.i922, align 4
  %421 = tail call i32 @llvm.umax.i32(i32 %420, i32 %max.0.i.i.i918) #19
  br label %if.end19.i.i.i927

if.end19.i.i.i927:                                ; preds = %if.then8.i.i.i923, %if.end5.i.i.i921.if.end19.i.i.i927_crit_edge
  %max.1.i.i.i924 = phi i32 [ %max.0.i.i.i918, %if.end5.i.i.i921.if.end19.i.i.i927_crit_edge ], [ %421, %if.then8.i.i.i923 ]
  %rb_subtree_gap21.i.i.i925 = getelementptr i8, ptr %rb.addr.08.i.i899, i32 12
  %422 = ptrtoint ptr %rb_subtree_gap21.i.i.i925 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %rb_subtree_gap21.i.i.i925, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %423, i32 %max.1.i.i.i924)
  %cmp22.i.i.i926 = icmp eq i32 %423, %max.1.i.i.i924
  br i1 %cmp22.i.i.i926, label %if.end19.i.i.i927.if.end443_crit_edge, label %cleanup.i.i930

if.end19.i.i.i927.if.end443_crit_edge:            ; preds = %if.end19.i.i.i927
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end443

cleanup.i.i930:                                   ; preds = %if.end19.i.i.i927
  %424 = ptrtoint ptr %rb_subtree_gap21.i.i.i925 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %max.1.i.i.i924, ptr %rb_subtree_gap21.i.i.i925, align 4
  %425 = ptrtoint ptr %rb.addr.08.i.i899 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %rb.addr.08.i.i899, align 4
  %and.i.i928 = and i32 %426, -4
  %427 = inttoptr i32 %and.i.i928 to ptr
  %cmp.not.i.i929 = icmp eq i32 %and.i.i928, 0
  br i1 %cmp.not.i.i929, label %cleanup.i.i930.if.end443_crit_edge, label %cleanup.i.i930.while.body.i.i904_crit_edge

cleanup.i.i930.while.body.i.i904_crit_edge:       ; preds = %cleanup.i.i930
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i904

cleanup.i.i930.if.end443_crit_edge:               ; preds = %cleanup.i.i930
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end443

if.else406:                                       ; preds = %if.else403
  %428 = ptrtoint ptr %highest_vm_end to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %highest_vm_end, align 8
  %430 = ptrtoint ptr %vm_end243 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %vm_end243, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %429, i32 %431)
  %cmp410.not = icmp eq i32 %429, %431
  br i1 %cmp410.not, label %if.else406.if.end443_crit_edge, label %do.end427, !prof !228

if.else406.if.end443_crit_edge:                   ; preds = %if.else406
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end443

do.end427:                                        ; preds = %if.else406
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1016, i32 noundef 9, ptr noundef null) #19
  br label %if.end443

if.end443:                                        ; preds = %do.end427, %if.else406.if.end443_crit_edge, %cleanup.i.i930.if.end443_crit_edge, %if.end19.i.i.i927.if.end443_crit_edge, %if.end381.if.end443_crit_edge
  %brmerge = select i1 %tobool249.not, i1 true, i1 %tobool240.not
  br i1 %brmerge, label %if.end443.if.end449_crit_edge, label %if.then447

if.end443.if.end449_crit_edge:                    ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end449

if.then447:                                       ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #21
  %call448 = tail call i32 @uprobe_mmap(ptr noundef nonnull %insert) #19
  br label %if.end449

if.end449:                                        ; preds = %if.then447, %if.end443.if.end449_crit_edge, %if.end381.thread.if.end449_crit_edge
  tail call fastcc void @validate_mm(ptr noundef %1)
  br label %cleanup450

cleanup450:                                       ; preds = %if.end449, %if.then228.cleanup450_crit_edge
  %retval.3 = phi i32 [ 0, %if.end449 ], [ %call, %if.then228.cleanup450_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_vma_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_munmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_area_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @validate_mm(ptr noundef %mm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %vma.085 = load ptr, ptr %mm, align 4
  %tobool.not86 = icmp eq ptr %vma.085, null
  br i1 %tobool.not86, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %vma.088 = phi ptr [ %vma.0, %if.end.while.body_crit_edge ], [ %vma.085, %entry.while.body_crit_edge ]
  %i.087 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.088, i32 0, i32 11
  %1 = ptrtoint ptr %anon_vma1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %anon_vma1, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %while.body
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %4, i32 0, i32 1
  tail call void @down_read(ptr noundef %rwsem.i) #19
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, ptr %vma.088, i32 0, i32 10
  %5 = ptrtoint ptr %anon_vma_chain to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn82 = load ptr, ptr %anon_vma_chain, align 4
  %cmp.not83 = icmp eq ptr %.pn82, %anon_vma_chain
  br i1 %cmp.not83, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn84 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn82, %if.then.for.body_crit_edge ]
  %avc.0 = getelementptr i8, ptr %.pn84, i32 -8
  tail call void @anon_vma_interval_tree_verify(ptr noundef %avc.0) #19
  %6 = ptrtoint ptr %.pn84 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn84, align 4
  %cmp.not = icmp eq ptr %.pn, %anon_vma_chain
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %rwsem.i79 = getelementptr inbounds %struct.anon_vma, ptr %8, i32 0, i32 1
  tail call void @up_read(ptr noundef %rwsem.i79) #19
  br label %if.end

if.end:                                           ; preds = %for.end, %while.body.if.end_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.088, i32 0, i32 2
  %inc = add i32 %i.087, 1
  %9 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %9)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %vma.0, null
  br i1 %tobool.not, label %while.end.loopexit, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end.loopexit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.088, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end1.i, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %highest_address.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %11, %while.end.loopexit ]
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %while.end.loopexit ]
  %map_count = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 13
  %12 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %map_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %13)
  %cmp9.not = icmp eq i32 %i.0.lcssa, %13
  br i1 %cmp9.not, label %while.end.if.end14_crit_edge, label %do.end

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %13, i32 noundef %i.0.lcssa) #22
  br label %if.end14

if.end14:                                         ; preds = %do.end, %while.end.if.end14_crit_edge
  %bug.0 = phi i32 [ 1, %do.end ], [ 0, %while.end.if.end14_crit_edge ]
  %highest_vm_end = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 7
  %14 = ptrtoint ptr %highest_vm_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %highest_vm_end, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %highest_address.0.lcssa, i32 %15)
  %cmp15.not = icmp eq i32 %highest_address.0.lcssa, %15
  br i1 %cmp15.not, label %if.end14.if.end23_crit_edge, label %do.end19

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %15, i32 noundef %highest_address.0.lcssa) #22
  br label %if.end23

if.end23:                                         ; preds = %do.end19, %if.end14.if.end23_crit_edge
  %bug.1 = phi i32 [ 1, %do.end19 ], [ %bug.0, %if.end14.if.end23_crit_edge ]
  %mm_rb.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 1
  %call.i = tail call ptr @rb_first(ptr noundef %mm_rb.i) #19
  %tobool.not112.i = icmp eq ptr %call.i, null
  br i1 %tobool.not112.i, label %if.end23.if.end54.thread136.i_crit_edge, label %for.body.lr.ph.i

if.end23.if.end54.thread136.i_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end54.thread136.i

for.body.lr.ph.i:                                 ; preds = %if.end23
  %page_table_lock.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %if.end35.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0117.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end35.i.for.body.i_crit_edge ]
  %bug.0116.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bug.4.i, %if.end35.i.for.body.i_crit_edge ]
  %nd.0115.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call39.i, %if.end35.i.for.body.i_crit_edge ]
  %prev.0114.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %59, %if.end35.i.for.body.i_crit_edge ]
  %pend.0113.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %61, %if.end35.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %nd.0115.i, i32 -16
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %prev.0114.i)
  %cmp.i = icmp ult i32 %17, %prev.0114.i
  br i1 %cmp.i, label %do.end.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %17, i32 noundef %prev.0114.i) #22
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  %bug.1.i = phi i32 [ 1, %do.end.i ], [ %bug.0116.i, %for.body.i.if.end.i_crit_edge ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %pend.0113.i)
  %cmp5.i = icmp ult i32 %19, %pend.0113.i
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %19, i32 noundef %pend.0113.i) #22
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end9.i, %if.end.i.if.end13.i_crit_edge
  %bug.2.i = phi i32 [ 1, %do.end9.i ], [ %bug.1.i, %if.end.i.if.end13.i_crit_edge ]
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %vm_end.i = getelementptr i8, ptr %nd.0115.i, i32 -12
  %22 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp15.i = icmp ugt i32 %21, %23
  br i1 %cmp15.i, label %do.end19.i, label %if.end13.i.if.end24.i_crit_edge

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #21
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %21, i32 noundef %23) #22
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end19.i, %if.end13.i.if.end24.i_crit_edge
  %bug.3.i = phi i32 [ 1, %do.end19.i ], [ %bug.2.i, %if.end13.i.if.end24.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %page_table_lock.i) #19
  %rb_subtree_gap.i = getelementptr i8, ptr %nd.0115.i, i32 12
  %24 = ptrtoint ptr %rb_subtree_gap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rb_subtree_gap.i, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %vm_flags.i.i.i.i = getelementptr i8, ptr %nd.0115.i, i32 24
  %28 = ptrtoint ptr %vm_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end24.i.vm_start_gap.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end24.i.vm_start_gap.exit.i.i.i_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %30 = load i32, ptr @stack_guard_gap, align 4
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %30) #19
  br label %vm_start_gap.exit.i.i.i

vm_start_gap.exit.i.i.i:                          ; preds = %if.then.i.i.i.i, %if.end24.i.vm_start_gap.exit.i.i.i_crit_edge
  %vm_start.0.i.i.i.i = phi i32 [ %31, %if.then.i.i.i.i ], [ %27, %if.end24.i.vm_start_gap.exit.i.i.i_crit_edge ]
  %vm_prev.i.i.i = getelementptr i8, ptr %nd.0115.i, i32 -4
  %32 = ptrtoint ptr %vm_prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vm_prev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %vm_start_gap.exit.i.i.i.vma_compute_gap.exit.i.i_crit_edge, label %if.then.i.i.i

vm_start_gap.exit.i.i.i.vma_compute_gap.exit.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i

if.then.i.i.i:                                    ; preds = %vm_start_gap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %vm_end1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vm_end1.i.i.i.i, align 4
  %36 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i, i32 %35) #19
  br label %vma_compute_gap.exit.i.i

vma_compute_gap.exit.i.i:                         ; preds = %if.then.i.i.i, %vm_start_gap.exit.i.i.i.vma_compute_gap.exit.i.i_crit_edge
  %gap.0.i.i.i = phi i32 [ %vm_start.0.i.i.i.i, %vm_start_gap.exit.i.i.i.vma_compute_gap.exit.i.i_crit_edge ], [ %36, %if.then.i.i.i ]
  %rb_left.i.i = getelementptr i8, ptr %nd.0115.i, i32 8
  %37 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %vma_compute_gap.exit.i.i.if.end4.i.i_crit_edge, label %if.then.i.i

vma_compute_gap.exit.i.i.if.end4.i.i_crit_edge:   ; preds = %vma_compute_gap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %vma_compute_gap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i = getelementptr i8, ptr %38, i32 12
  %39 = ptrtoint ptr %rb_subtree_gap.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rb_subtree_gap.i.i, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %gap.0.i.i.i) #19
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i, %vma_compute_gap.exit.i.i.if.end4.i.i_crit_edge
  %max.0.i.i = phi i32 [ %gap.0.i.i.i, %vma_compute_gap.exit.i.i.if.end4.i.i_crit_edge ], [ %41, %if.then.i.i ]
  %rb_right.i.i = getelementptr i8, ptr %nd.0115.i, i32 4
  %42 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rb_right.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i.i, label %if.end4.i.i.vma_compute_subtree_gap.exit.i_crit_edge, label %if.then7.i.i

if.end4.i.i.vma_compute_subtree_gap.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_subtree_gap.exit.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap13.i.i = getelementptr i8, ptr %43, i32 12
  %44 = ptrtoint ptr %rb_subtree_gap13.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rb_subtree_gap13.i.i, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 %max.0.i.i) #19
  br label %vma_compute_subtree_gap.exit.i

vma_compute_subtree_gap.exit.i:                   ; preds = %if.then7.i.i, %if.end4.i.i.vma_compute_subtree_gap.exit.i_crit_edge
  %max.1.i.i = phi i32 [ %max.0.i.i, %if.end4.i.i.vma_compute_subtree_gap.exit.i_crit_edge ], [ %46, %if.then7.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %max.1.i.i)
  %cmp26.not.i = icmp eq i32 %25, %max.1.i.i
  br i1 %cmp26.not.i, label %vma_compute_subtree_gap.exit.i.if.end35.i_crit_edge, label %do.end30.i

vma_compute_subtree_gap.exit.i.if.end35.i_crit_edge: ; preds = %vma_compute_subtree_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35.i

do.end30.i:                                       ; preds = %vma_compute_subtree_gap.exit.i
  br i1 %tobool.not.i.i.i.i, label %do.end30.i.vm_start_gap.exit.i.i93.i_crit_edge, label %if.then.i.i.i89.i

do.end30.i.vm_start_gap.exit.i.i93.i_crit_edge:   ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i93.i

if.then.i.i.i89.i:                                ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #21
  %47 = load i32, ptr @stack_guard_gap, align 4
  %48 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %47) #19
  br label %vm_start_gap.exit.i.i93.i

vm_start_gap.exit.i.i93.i:                        ; preds = %if.then.i.i.i89.i, %do.end30.i.vm_start_gap.exit.i.i93.i_crit_edge
  %vm_start.0.i.i.i90.i = phi i32 [ %48, %if.then.i.i.i89.i ], [ %27, %do.end30.i.vm_start_gap.exit.i.i93.i_crit_edge ]
  br i1 %tobool.not.i.i.i, label %vm_start_gap.exit.i.i93.i.vma_compute_gap.exit.i99.i_crit_edge, label %if.then.i.i95.i

vm_start_gap.exit.i.i93.i.vma_compute_gap.exit.i99.i_crit_edge: ; preds = %vm_start_gap.exit.i.i93.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i99.i

if.then.i.i95.i:                                  ; preds = %vm_start_gap.exit.i.i93.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i94.i = getelementptr inbounds %struct.vm_area_struct, ptr %33, i32 0, i32 1
  %49 = ptrtoint ptr %vm_end1.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vm_end1.i.i.i94.i, align 4
  %51 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i90.i, i32 %50) #19
  br label %vma_compute_gap.exit.i99.i

vma_compute_gap.exit.i99.i:                       ; preds = %if.then.i.i95.i, %vm_start_gap.exit.i.i93.i.vma_compute_gap.exit.i99.i_crit_edge
  %gap.0.i.i96.i = phi i32 [ %vm_start.0.i.i.i90.i, %vm_start_gap.exit.i.i93.i.vma_compute_gap.exit.i99.i_crit_edge ], [ %51, %if.then.i.i95.i ]
  br i1 %tobool.not.i.i, label %vma_compute_gap.exit.i99.i.if.end4.i105.i_crit_edge, label %if.then.i101.i

vma_compute_gap.exit.i99.i.if.end4.i105.i_crit_edge: ; preds = %vma_compute_gap.exit.i99.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4.i105.i

if.then.i101.i:                                   ; preds = %vma_compute_gap.exit.i99.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i100.i = getelementptr i8, ptr %38, i32 12
  %52 = ptrtoint ptr %rb_subtree_gap.i100.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rb_subtree_gap.i100.i, align 4
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 %gap.0.i.i96.i) #19
  br label %if.end4.i105.i

if.end4.i105.i:                                   ; preds = %if.then.i101.i, %vma_compute_gap.exit.i99.i.if.end4.i105.i_crit_edge
  %max.0.i102.i = phi i32 [ %gap.0.i.i96.i, %vma_compute_gap.exit.i99.i.if.end4.i105.i_crit_edge ], [ %54, %if.then.i101.i ]
  br i1 %tobool6.not.i.i, label %if.end4.i105.i.vma_compute_subtree_gap.exit109.i_crit_edge, label %if.then7.i107.i

if.end4.i105.i.vma_compute_subtree_gap.exit109.i_crit_edge: ; preds = %if.end4.i105.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_subtree_gap.exit109.i

if.then7.i107.i:                                  ; preds = %if.end4.i105.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap13.i106.i = getelementptr i8, ptr %43, i32 12
  %55 = ptrtoint ptr %rb_subtree_gap13.i106.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rb_subtree_gap13.i106.i, align 4
  %57 = tail call i32 @llvm.umax.i32(i32 %56, i32 %max.0.i102.i) #19
  br label %vma_compute_subtree_gap.exit109.i

vma_compute_subtree_gap.exit109.i:                ; preds = %if.then7.i107.i, %if.end4.i105.i.vma_compute_subtree_gap.exit109.i_crit_edge
  %max.1.i108.i = phi i32 [ %max.0.i102.i, %if.end4.i105.i.vma_compute_subtree_gap.exit109.i_crit_edge ], [ %57, %if.then7.i107.i ]
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %25, i32 noundef %max.1.i108.i) #22
  br label %if.end35.i

if.end35.i:                                       ; preds = %vma_compute_subtree_gap.exit109.i, %vma_compute_subtree_gap.exit.i.if.end35.i_crit_edge
  %bug.4.i = phi i32 [ 1, %vma_compute_subtree_gap.exit109.i ], [ %bug.3.i, %vma_compute_subtree_gap.exit.i.if.end35.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %page_table_lock.i) #19
  %inc.i = add i32 %i.0117.i, 1
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i, align 4
  %60 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vm_end.i, align 4
  %call39.i = tail call ptr @rb_next(ptr noundef nonnull %nd.0115.i) #19
  %tobool.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool.not.i, label %if.end35.i.for.body42.i_crit_edge, label %if.end35.i.for.body.i_crit_edge

if.end35.i.for.body.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

if.end35.i.for.body42.i_crit_edge:                ; preds = %if.end35.i
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %if.end35.i.for.body42.i_crit_edge
  %j.0122.i = phi i32 [ %inc43.i, %for.body42.i.for.body42.i_crit_edge ], [ 0, %if.end35.i.for.body42.i_crit_edge ]
  %nd.1121.i = phi ptr [ %call45.i, %for.body42.i.for.body42.i_crit_edge ], [ %nd.0115.i, %if.end35.i.for.body42.i_crit_edge ]
  %inc43.i = add i32 %j.0122.i, 1
  %call45.i = tail call ptr @rb_prev(ptr noundef nonnull %nd.1121.i) #19
  %tobool41.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool41.not.i, label %for.end46.i, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body42.i

for.end46.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0117.i, i32 %j.0122.i)
  %cmp47.not.i = icmp eq i32 %i.0117.i, %j.0122.i
  br i1 %cmp47.not.i, label %if.end54.i, label %if.end54.thread.i

if.end54.thread.i:                                ; preds = %for.end46.i
  call void @__sanitizer_cov_trace_pc() #21
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %inc43.i, i32 noundef %inc.i) #22
  br label %browse_rb.exit

if.end54.i:                                       ; preds = %for.end46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bug.4.i)
  %tobool55.not.i = icmp eq i32 %bug.4.i, 0
  br i1 %tobool55.not.i, label %if.end54.i.if.end54.thread136.i_crit_edge, label %if.end54.i.browse_rb.exit_crit_edge

if.end54.i.browse_rb.exit_crit_edge:              ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %browse_rb.exit

if.end54.i.if.end54.thread136.i_crit_edge:        ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end54.thread136.i

if.end54.thread136.i:                             ; preds = %if.end54.i.if.end54.thread136.i_crit_edge, %if.end23.if.end54.thread136.i_crit_edge
  %i.0.lcssa129134140.i = phi i32 [ %inc.i, %if.end54.i.if.end54.thread136.i_crit_edge ], [ 0, %if.end23.if.end54.thread136.i_crit_edge ]
  br label %browse_rb.exit

browse_rb.exit:                                   ; preds = %if.end54.thread136.i, %if.end54.i.browse_rb.exit_crit_edge, %if.end54.thread.i
  %62 = phi i32 [ -1, %if.end54.thread.i ], [ %i.0.lcssa129134140.i, %if.end54.thread136.i ], [ -1, %if.end54.i.browse_rb.exit_crit_edge ]
  %63 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %map_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp26.not = icmp eq i32 %62, %64
  br i1 %cmp26.not, label %do.body38, label %if.then27

if.then27:                                        ; preds = %browse_rb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp28.not = icmp eq i32 %62, -1
  br i1 %cmp28.not, label %if.then27.if.then43_crit_edge, label %do.end32

if.then27.if.then43_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then43

do.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %64, i32 noundef %62) #22
  br label %if.then43

do.body38:                                        ; preds = %browse_rb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bug.1)
  %tobool39.not = icmp eq i32 %bug.1, 0
  br i1 %tobool39.not, label %do.end52, label %do.body38.if.then43_crit_edge, !prof !228

do.body38.if.then43_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then43

if.then43:                                        ; preds = %do.body38.if.then43_crit_edge, %do.end32, %if.then27.if.then43_crit_edge
  tail call void @dump_mm(ptr noundef %mm) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #19, !srcloc !236
  unreachable

do.end52:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vma_merge(ptr nocapture noundef readonly %mm, ptr noundef %prev, i32 noundef %addr, i32 noundef %end, i32 noundef %vm_flags, ptr noundef readnone %anon_vma, ptr noundef readnone %file, i32 noundef %pgoff, ptr nocapture readnone %policy, [1 x i32] %vm_userfaultfd_ctx.coerce, ptr noundef readonly %anon_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %end, %addr
  %shr = lshr i32 %sub, 12
  %and = and i32 %vm_flags, 268715008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %prev, null
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 2
  %retval.0.in.i = select i1 %tobool.not.i, ptr %mm, ptr %vm_next.i
  %0 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %tobool1.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %retval.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %end)
  %cmp = icmp eq i32 %2, %end
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %retval.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_next, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %next.0 = phi ptr [ %4, %if.then2 ], [ %retval.0.i, %land.lhs.true.if.end3_crit_edge ], [ null, %if.end.if.end3_crit_edge ]
  br i1 %tobool.not.i, label %if.end3.if.end20_crit_edge, label %land.rhs

if.end3.if.end20_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

land.rhs:                                         ; preds = %if.end3
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %addr)
  %cmp5.not = icmp ult i32 %6, %addr
  br i1 %cmp5.not, label %land.rhs.if.end20_crit_edge, label %do.end, !prof !228

land.rhs.if.end20_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1189, i32 noundef 9, ptr noundef null) #19
  br label %if.end20

if.end20:                                         ; preds = %do.end, %land.rhs.if.end20_crit_edge, %if.end3.if.end20_crit_edge
  br i1 %tobool1.not, label %if.end20.if.end54_crit_edge, label %land.rhs29

if.end20.if.end54_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end54

land.rhs29:                                       ; preds = %if.end20
  %vm_end30 = getelementptr inbounds %struct.vm_area_struct, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %end)
  %cmp31 = icmp ult i32 %8, %end
  br i1 %cmp31, label %do.end48, label %land.rhs29.if.end54_crit_edge, !prof !229

land.rhs29.if.end54_crit_edge:                    ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end54

do.end48:                                         ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1190, i32 noundef 9, ptr noundef null) #19
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %land.rhs29.if.end54_crit_edge, %if.end20.if.end54_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %addr)
  %cmp63.not = icmp ugt i32 %end, %addr
  br i1 %cmp63.not, label %if.end54.if.end85_crit_edge, label %do.end79, !prof !228

if.end54.if.end85_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end85

do.end79:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1191, i32 noundef 9, ptr noundef null) #19
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.end54.if.end85_crit_edge
  br i1 %tobool.not.i, label %if.end85.if.end131_crit_edge, label %land.lhs.true94

if.end85.if.end131_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

land.lhs.true94:                                  ; preds = %if.end85
  %vm_end95 = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 1
  %9 = ptrtoint ptr %vm_end95 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_end95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %addr)
  %cmp96 = icmp eq i32 %10, %addr
  br i1 %cmp96, label %land.lhs.true97, label %land.lhs.true94.if.end131_crit_edge

land.lhs.true94.if.end131_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

land.lhs.true97:                                  ; preds = %land.lhs.true94
  %vm_flags1.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 8
  %11 = ptrtoint ptr %vm_flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_flags1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %vm_flags)
  %tobool.not.i.i = icmp eq i32 %12, %vm_flags
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true97.if.end131_crit_edge

land.lhs.true97.if.end131_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

if.end.i.i:                                       ; preds = %land.lhs.true97
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 14
  %13 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_file.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %14, %file
  br i1 %cmp.not.i.i, label %if.end3.i.i, label %if.end.i.i.if.end131_crit_edge

if.end.i.i.if.end131_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

if.end3.i.i:                                      ; preds = %if.end.i.i
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 12
  %15 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge, label %land.lhs.true.i.i

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %close.i.i = getelementptr inbounds %struct.vm_operations_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %close.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %close.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.if.end8.i.i_crit_edge, label %land.lhs.true.i.i.if.end131_crit_edge

land.lhs.true.i.i.if.end131_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %land.lhs.true.i.i.if.end8.i.i_crit_edge, %if.end3.i.i.if.end8.i.i_crit_edge
  %vm_ctx.coerce.fca.0.extract.i.i.i = extractvalue [1 x i32] %vm_userfaultfd_ctx.coerce, 0
  %19 = inttoptr i32 %vm_ctx.coerce.fca.0.extract.i.i.i to ptr
  %vm_userfaultfd_ctx.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 17
  %20 = ptrtoint ptr %vm_userfaultfd_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vm_userfaultfd_ctx.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %21, %19
  br i1 %cmp.i.i.i, label %if.end11.i.i, label %if.end8.i.i.if.end131_crit_edge

if.end8.i.i.if.end131_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %call12.i.i = tail call ptr @anon_vma_name(ptr noundef nonnull %prev) #19
  %cmp.i21.i.i = icmp eq ptr %call12.i.i, %anon_name
  br i1 %cmp.i21.i.i, label %if.end11.i.i.land.lhs.true.i_crit_edge, label %if.end.i.i.i

if.end11.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

if.end.i.i.i:                                     ; preds = %if.end11.i.i
  %tobool.not.i.i.i = icmp eq ptr %call12.i.i, null
  %tobool1.not.i.i.i = icmp eq ptr %anon_name, null
  %or.cond.i.i.i = or i1 %tobool1.not.i.i.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.if.end131_crit_edge, label %anon_vma_name_eq.exit.i.i

if.end.i.i.i.if.end131_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

anon_vma_name_eq.exit.i.i:                        ; preds = %if.end.i.i.i
  %name.i.i.i = getelementptr inbounds %struct.anon_vma_name, ptr %call12.i.i, i32 0, i32 1
  %name2.i.i.i = getelementptr inbounds %struct.anon_vma_name, ptr %anon_name, i32 0, i32 1
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %name.i.i.i, ptr noundef %name2.i.i.i) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %anon_vma_name_eq.exit.i.i.land.lhs.true.i_crit_edge, label %anon_vma_name_eq.exit.i.i.if.end131_crit_edge

anon_vma_name_eq.exit.i.i.if.end131_crit_edge:    ; preds = %anon_vma_name_eq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

anon_vma_name_eq.exit.i.i.land.lhs.true.i_crit_edge: ; preds = %anon_vma_name_eq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %anon_vma_name_eq.exit.i.i.land.lhs.true.i_crit_edge, %if.end11.i.i.land.lhs.true.i_crit_edge
  %anon_vma2.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 11
  %22 = ptrtoint ptr %anon_vma2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %anon_vma2.i, align 4
  %tobool.not.i13.i = icmp eq ptr %anon_vma, null
  %tobool1.not.i.i = icmp eq ptr %23, null
  %or.cond.i.i = or i1 %tobool.not.i13.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false3.i.i, label %land.lhs.true.i.is_mergeable_anon_vma.exit.i_crit_edge

land.lhs.true.i.is_mergeable_anon_vma.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %is_mergeable_anon_vma.exit.i

lor.lhs.false3.i.i:                               ; preds = %land.lhs.true.i
  %anon_vma_chain.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 10
  %24 = ptrtoint ptr %anon_vma_chain.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %anon_vma_chain.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %25, %anon_vma_chain.i.i
  br i1 %cmp.i.not.i.i.i, label %lor.lhs.false3.i.i.is_mergeable_anon_vma.exit.i_crit_edge, label %list_is_singular.exit.i.i

lor.lhs.false3.i.i.is_mergeable_anon_vma.exit.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %is_mergeable_anon_vma.exit.i

list_is_singular.exit.i.i:                        ; preds = %lor.lhs.false3.i.i
  %prev.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %25, %27
  %cmp.i.not.i = icmp eq ptr %23, %anon_vma
  %or.cond.i = select i1 %cmp.i.not.i.i, i1 true, i1 %cmp.i.not.i
  br i1 %or.cond.i, label %list_is_singular.exit.i.i.if.then.i_crit_edge, label %list_is_singular.exit.i.i.if.end131_crit_edge

list_is_singular.exit.i.i.if.end131_crit_edge:    ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

list_is_singular.exit.i.i.if.then.i_crit_edge:    ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

is_mergeable_anon_vma.exit.i:                     ; preds = %lor.lhs.false3.i.i.is_mergeable_anon_vma.exit.i_crit_edge, %land.lhs.true.i.is_mergeable_anon_vma.exit.i_crit_edge
  %cmp.i.not.old.i = icmp eq ptr %23, %anon_vma
  br i1 %cmp.i.not.old.i, label %is_mergeable_anon_vma.exit.i.if.then.i_crit_edge, label %is_mergeable_anon_vma.exit.i.if.end131_crit_edge

is_mergeable_anon_vma.exit.i.if.end131_crit_edge: ; preds = %is_mergeable_anon_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

is_mergeable_anon_vma.exit.i.if.then.i_crit_edge: ; preds = %is_mergeable_anon_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i

if.then.i:                                        ; preds = %is_mergeable_anon_vma.exit.i.if.then.i_crit_edge, %list_is_singular.exit.i.i.if.then.i_crit_edge
  %28 = ptrtoint ptr %vm_end95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_end95, align 4
  %30 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prev, align 4
  %sub.i.i = sub i32 %29, %31
  %shr.i.i = lshr i32 %sub.i.i, 12
  %vm_pgoff6.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 13
  %32 = ptrtoint ptr %vm_pgoff6.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_pgoff6.i, align 4
  %add.i = add i32 %shr.i.i, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %pgoff)
  %cmp.not.i = icmp eq i32 %add.i, %pgoff
  br i1 %cmp.not.i, label %if.then103, label %if.then.i.if.end131_crit_edge

if.then.i.if.end131_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end131

if.then103:                                       ; preds = %if.then.i
  %tobool104.not = icmp eq ptr %next.0, null
  br i1 %tobool104.not, label %if.then103.if.end126_crit_edge, label %land.lhs.true105

if.then103.if.end126_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

land.lhs.true105:                                 ; preds = %if.then103
  %34 = ptrtoint ptr %next.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %next.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %end)
  %cmp107 = icmp eq i32 %35, %end
  br i1 %cmp107, label %land.lhs.true108, label %land.lhs.true105.if.end126_crit_edge

land.lhs.true105.if.end126_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

land.lhs.true108:                                 ; preds = %land.lhs.true105
  %add = add i32 %shr, %pgoff
  %vm_flags1.i.i248 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 8
  %36 = ptrtoint ptr %vm_flags1.i.i248 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vm_flags1.i.i248, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %vm_flags)
  %tobool.not.i.i249 = icmp eq i32 %37, %vm_flags
  br i1 %tobool.not.i.i249, label %if.end.i.i252, label %land.lhs.true108.if.end126_crit_edge

land.lhs.true108.if.end126_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

if.end.i.i252:                                    ; preds = %land.lhs.true108
  %vm_file.i.i250 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 14
  %38 = ptrtoint ptr %vm_file.i.i250 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vm_file.i.i250, align 4
  %cmp.not.i.i251 = icmp eq ptr %39, %file
  br i1 %cmp.not.i.i251, label %if.end3.i.i255, label %if.end.i.i252.if.end126_crit_edge

if.end.i.i252.if.end126_crit_edge:                ; preds = %if.end.i.i252
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

if.end3.i.i255:                                   ; preds = %if.end.i.i252
  %vm_ops.i.i253 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 12
  %40 = ptrtoint ptr %vm_ops.i.i253 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vm_ops.i.i253, align 4
  %tobool4.not.i.i254 = icmp eq ptr %41, null
  br i1 %tobool4.not.i.i254, label %if.end3.i.i255.if.end8.i.i262_crit_edge, label %land.lhs.true.i.i258

if.end3.i.i255.if.end8.i.i262_crit_edge:          ; preds = %if.end3.i.i255
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i262

land.lhs.true.i.i258:                             ; preds = %if.end3.i.i255
  %close.i.i256 = getelementptr inbounds %struct.vm_operations_struct, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %close.i.i256 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %close.i.i256, align 4
  %tobool6.not.i.i257 = icmp eq ptr %43, null
  br i1 %tobool6.not.i.i257, label %land.lhs.true.i.i258.if.end8.i.i262_crit_edge, label %land.lhs.true.i.i258.if.end126_crit_edge

land.lhs.true.i.i258.if.end126_crit_edge:         ; preds = %land.lhs.true.i.i258
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

land.lhs.true.i.i258.if.end8.i.i262_crit_edge:    ; preds = %land.lhs.true.i.i258
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i262

if.end8.i.i262:                                   ; preds = %land.lhs.true.i.i258.if.end8.i.i262_crit_edge, %if.end3.i.i255.if.end8.i.i262_crit_edge
  %vm_userfaultfd_ctx.i.i.i260 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 17
  %44 = ptrtoint ptr %vm_userfaultfd_ctx.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vm_userfaultfd_ctx.i.i.i260, align 4
  %cmp.i.i.i261 = icmp eq ptr %45, %19
  br i1 %cmp.i.i.i261, label %if.end11.i.i265, label %if.end8.i.i262.if.end126_crit_edge

if.end8.i.i262.if.end126_crit_edge:               ; preds = %if.end8.i.i262
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

if.end11.i.i265:                                  ; preds = %if.end8.i.i262
  %call12.i.i263 = tail call ptr @anon_vma_name(ptr noundef nonnull %next.0) #19
  %cmp.i21.i.i264 = icmp eq ptr %call12.i.i263, %anon_name
  br i1 %cmp.i21.i.i264, label %if.end11.i.i265.land.lhs.true.i278_crit_edge, label %if.end.i.i.i269

if.end11.i.i265.land.lhs.true.i278_crit_edge:     ; preds = %if.end11.i.i265
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i278

if.end.i.i.i269:                                  ; preds = %if.end11.i.i265
  %tobool.not.i.i.i266 = icmp eq ptr %call12.i.i263, null
  %tobool1.not.i.i.i267 = icmp eq ptr %anon_name, null
  %or.cond.i.i.i268 = or i1 %tobool1.not.i.i.i267, %tobool.not.i.i.i266
  br i1 %or.cond.i.i.i268, label %if.end.i.i.i269.if.end126_crit_edge, label %anon_vma_name_eq.exit.i.i274

if.end.i.i.i269.if.end126_crit_edge:              ; preds = %if.end.i.i.i269
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

anon_vma_name_eq.exit.i.i274:                     ; preds = %if.end.i.i.i269
  %name.i.i.i270 = getelementptr inbounds %struct.anon_vma_name, ptr %call12.i.i263, i32 0, i32 1
  %name2.i.i.i271 = getelementptr inbounds %struct.anon_vma_name, ptr %anon_name, i32 0, i32 1
  %call.i.i.i272 = tail call i32 @strcmp(ptr noundef %name.i.i.i270, ptr noundef %name2.i.i.i271) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i272)
  %tobool4.not.i.i.i273 = icmp eq i32 %call.i.i.i272, 0
  br i1 %tobool4.not.i.i.i273, label %anon_vma_name_eq.exit.i.i274.land.lhs.true.i278_crit_edge, label %anon_vma_name_eq.exit.i.i274.if.end126_crit_edge

anon_vma_name_eq.exit.i.i274.if.end126_crit_edge: ; preds = %anon_vma_name_eq.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

anon_vma_name_eq.exit.i.i274.land.lhs.true.i278_crit_edge: ; preds = %anon_vma_name_eq.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i278

land.lhs.true.i278:                               ; preds = %anon_vma_name_eq.exit.i.i274.land.lhs.true.i278_crit_edge, %if.end11.i.i265.land.lhs.true.i278_crit_edge
  %anon_vma2.i275 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 11
  %46 = ptrtoint ptr %anon_vma2.i275 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %anon_vma2.i275, align 4
  %tobool1.not.i.i276 = icmp eq ptr %47, null
  %or.cond.i.i277 = or i1 %tobool.not.i13.i, %tobool1.not.i.i276
  br i1 %or.cond.i.i277, label %lor.lhs.false3.i.i282, label %land.lhs.true.i278.is_mergeable_anon_vma.exit.i289_crit_edge

land.lhs.true.i278.is_mergeable_anon_vma.exit.i289_crit_edge: ; preds = %land.lhs.true.i278
  call void @__sanitizer_cov_trace_pc() #21
  br label %is_mergeable_anon_vma.exit.i289

lor.lhs.false3.i.i282:                            ; preds = %land.lhs.true.i278
  %anon_vma_chain.i.i280 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 10
  %48 = ptrtoint ptr %anon_vma_chain.i.i280 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %anon_vma_chain.i.i280, align 4
  %cmp.i.not.i.i.i281 = icmp eq ptr %49, %anon_vma_chain.i.i280
  br i1 %cmp.i.not.i.i.i281, label %lor.lhs.false3.i.i282.is_mergeable_anon_vma.exit.i289_crit_edge, label %list_is_singular.exit.i.i287

lor.lhs.false3.i.i282.is_mergeable_anon_vma.exit.i289_crit_edge: ; preds = %lor.lhs.false3.i.i282
  call void @__sanitizer_cov_trace_pc() #21
  br label %is_mergeable_anon_vma.exit.i289

list_is_singular.exit.i.i287:                     ; preds = %lor.lhs.false3.i.i282
  %prev.i.i.i283 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i283, align 4
  %cmp.i.not.i.i284 = icmp eq ptr %49, %51
  %cmp.i.not.i285 = icmp eq ptr %47, %anon_vma
  %or.cond.i286 = select i1 %cmp.i.not.i.i284, i1 true, i1 %cmp.i.not.i285
  br i1 %or.cond.i286, label %list_is_singular.exit.i.i287.if.then.i290_crit_edge, label %list_is_singular.exit.i.i287.if.end126_crit_edge

list_is_singular.exit.i.i287.if.end126_crit_edge: ; preds = %list_is_singular.exit.i.i287
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

list_is_singular.exit.i.i287.if.then.i290_crit_edge: ; preds = %list_is_singular.exit.i.i287
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i290

is_mergeable_anon_vma.exit.i289:                  ; preds = %lor.lhs.false3.i.i282.is_mergeable_anon_vma.exit.i289_crit_edge, %land.lhs.true.i278.is_mergeable_anon_vma.exit.i289_crit_edge
  %cmp.i.not.old.i288 = icmp eq ptr %47, %anon_vma
  br i1 %cmp.i.not.old.i288, label %is_mergeable_anon_vma.exit.i289.if.then.i290_crit_edge, label %is_mergeable_anon_vma.exit.i289.if.end126_crit_edge

is_mergeable_anon_vma.exit.i289.if.end126_crit_edge: ; preds = %is_mergeable_anon_vma.exit.i289
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

is_mergeable_anon_vma.exit.i289.if.then.i290_crit_edge: ; preds = %is_mergeable_anon_vma.exit.i289
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i290

if.then.i290:                                     ; preds = %is_mergeable_anon_vma.exit.i289.if.then.i290_crit_edge, %list_is_singular.exit.i.i287.if.then.i290_crit_edge
  %vm_pgoff5.i = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 13
  %52 = ptrtoint ptr %vm_pgoff5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vm_pgoff5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %add)
  %cmp.i = icmp eq i32 %53, %add
  br i1 %cmp.i, label %land.lhs.true114, label %if.then.i290.if.end126_crit_edge

if.then.i290.if.end126_crit_edge:                 ; preds = %if.then.i290
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

land.lhs.true114:                                 ; preds = %if.then.i290
  %54 = ptrtoint ptr %anon_vma2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %anon_vma2.i, align 4
  %56 = ptrtoint ptr %anon_vma2.i275 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %anon_vma2.i275, align 4
  %tobool.not.i292 = icmp eq ptr %55, null
  %tobool1.not.i = icmp eq ptr %57, null
  %or.cond.i293 = or i1 %tobool.not.i292, %tobool1.not.i
  %cmp.i295.not = icmp eq ptr %55, %57
  %or.cond = or i1 %cmp.i295.not, %or.cond.i293
  br i1 %or.cond, label %if.then119, label %land.lhs.true114.if.end126_crit_edge

land.lhs.true114.if.end126_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end126

if.then119:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end121 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 1
  %58 = ptrtoint ptr %vm_end121 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vm_end121, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then119, %land.lhs.true114.if.end126_crit_edge, %if.then.i290.if.end126_crit_edge, %is_mergeable_anon_vma.exit.i289.if.end126_crit_edge, %list_is_singular.exit.i.i287.if.end126_crit_edge, %anon_vma_name_eq.exit.i.i274.if.end126_crit_edge, %if.end.i.i.i269.if.end126_crit_edge, %if.end8.i.i262.if.end126_crit_edge, %land.lhs.true.i.i258.if.end126_crit_edge, %if.end.i.i252.if.end126_crit_edge, %land.lhs.true108.if.end126_crit_edge, %land.lhs.true105.if.end126_crit_edge, %if.then103.if.end126_crit_edge
  %end.sink = phi i32 [ %59, %if.then119 ], [ %end, %land.lhs.true114.if.end126_crit_edge ], [ %end, %if.then.i290.if.end126_crit_edge ], [ %end, %is_mergeable_anon_vma.exit.i289.if.end126_crit_edge ], [ %end, %list_is_singular.exit.i.i287.if.end126_crit_edge ], [ %end, %anon_vma_name_eq.exit.i.i274.if.end126_crit_edge ], [ %end, %if.end.i.i.i269.if.end126_crit_edge ], [ %end, %if.end8.i.i262.if.end126_crit_edge ], [ %end, %land.lhs.true.i.i258.if.end126_crit_edge ], [ %end, %if.end.i.i252.if.end126_crit_edge ], [ %end, %land.lhs.true108.if.end126_crit_edge ], [ %end, %land.lhs.true105.if.end126_crit_edge ], [ %end, %if.then103.if.end126_crit_edge ]
  %60 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %60)
  %.sink = load i32, ptr %prev, align 4
  %61 = ptrtoint ptr %vm_pgoff6.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vm_pgoff6.i, align 4
  %call125 = tail call i32 @__vma_adjust(ptr noundef nonnull %prev, i32 noundef %.sink, i32 noundef %end.sink, i32 noundef %62, ptr noundef null, ptr noundef nonnull %prev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool127.not = icmp eq i32 %call125, 0
  %spec.select = select i1 %tobool127.not, ptr %prev, ptr null
  br label %cleanup

if.end131:                                        ; preds = %if.then.i.if.end131_crit_edge, %is_mergeable_anon_vma.exit.i.if.end131_crit_edge, %list_is_singular.exit.i.i.if.end131_crit_edge, %anon_vma_name_eq.exit.i.i.if.end131_crit_edge, %if.end.i.i.i.if.end131_crit_edge, %if.end8.i.i.if.end131_crit_edge, %land.lhs.true.i.i.if.end131_crit_edge, %if.end.i.i.if.end131_crit_edge, %land.lhs.true97.if.end131_crit_edge, %land.lhs.true94.if.end131_crit_edge, %if.end85.if.end131_crit_edge
  %tobool132.not = icmp eq ptr %next.0, null
  br i1 %tobool132.not, label %if.end131.cleanup_crit_edge, label %land.lhs.true133

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true133:                                 ; preds = %if.end131
  %63 = ptrtoint ptr %next.0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %next.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %end)
  %cmp135 = icmp eq i32 %64, %end
  br i1 %cmp135, label %land.lhs.true136, label %land.lhs.true133.cleanup_crit_edge

land.lhs.true133.cleanup_crit_edge:               ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %add139 = add i32 %shr, %pgoff
  %vm_flags1.i.i297 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 8
  %65 = ptrtoint ptr %vm_flags1.i.i297 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vm_flags1.i.i297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %vm_flags)
  %tobool.not.i.i298 = icmp eq i32 %66, %vm_flags
  br i1 %tobool.not.i.i298, label %if.end.i.i301, label %land.lhs.true136.cleanup_crit_edge

land.lhs.true136.cleanup_crit_edge:               ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i301:                                    ; preds = %land.lhs.true136
  %vm_file.i.i299 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 14
  %67 = ptrtoint ptr %vm_file.i.i299 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vm_file.i.i299, align 4
  %cmp.not.i.i300 = icmp eq ptr %68, %file
  br i1 %cmp.not.i.i300, label %if.end3.i.i304, label %if.end.i.i301.cleanup_crit_edge

if.end.i.i301.cleanup_crit_edge:                  ; preds = %if.end.i.i301
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3.i.i304:                                   ; preds = %if.end.i.i301
  %vm_ops.i.i302 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 12
  %69 = ptrtoint ptr %vm_ops.i.i302 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vm_ops.i.i302, align 4
  %tobool4.not.i.i303 = icmp eq ptr %70, null
  br i1 %tobool4.not.i.i303, label %if.end3.i.i304.if.end8.i.i311_crit_edge, label %land.lhs.true.i.i307

if.end3.i.i304.if.end8.i.i311_crit_edge:          ; preds = %if.end3.i.i304
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i311

land.lhs.true.i.i307:                             ; preds = %if.end3.i.i304
  %close.i.i305 = getelementptr inbounds %struct.vm_operations_struct, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %close.i.i305 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %close.i.i305, align 4
  %tobool6.not.i.i306 = icmp eq ptr %72, null
  br i1 %tobool6.not.i.i306, label %land.lhs.true.i.i307.if.end8.i.i311_crit_edge, label %land.lhs.true.i.i307.cleanup_crit_edge

land.lhs.true.i.i307.cleanup_crit_edge:           ; preds = %land.lhs.true.i.i307
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i.i307.if.end8.i.i311_crit_edge:    ; preds = %land.lhs.true.i.i307
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i.i311

if.end8.i.i311:                                   ; preds = %land.lhs.true.i.i307.if.end8.i.i311_crit_edge, %if.end3.i.i304.if.end8.i.i311_crit_edge
  %vm_ctx.coerce.fca.0.extract.i.i.i308 = extractvalue [1 x i32] %vm_userfaultfd_ctx.coerce, 0
  %73 = inttoptr i32 %vm_ctx.coerce.fca.0.extract.i.i.i308 to ptr
  %vm_userfaultfd_ctx.i.i.i309 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 17
  %74 = ptrtoint ptr %vm_userfaultfd_ctx.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vm_userfaultfd_ctx.i.i.i309, align 4
  %cmp.i.i.i310 = icmp eq ptr %75, %73
  br i1 %cmp.i.i.i310, label %if.end11.i.i314, label %if.end8.i.i311.cleanup_crit_edge

if.end8.i.i311.cleanup_crit_edge:                 ; preds = %if.end8.i.i311
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11.i.i314:                                  ; preds = %if.end8.i.i311
  %call12.i.i312 = tail call ptr @anon_vma_name(ptr noundef nonnull %next.0) #19
  %cmp.i21.i.i313 = icmp eq ptr %call12.i.i312, %anon_name
  br i1 %cmp.i21.i.i313, label %if.end11.i.i314.land.lhs.true.i328_crit_edge, label %if.end.i.i.i318

if.end11.i.i314.land.lhs.true.i328_crit_edge:     ; preds = %if.end11.i.i314
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i328

if.end.i.i.i318:                                  ; preds = %if.end11.i.i314
  %tobool.not.i.i.i315 = icmp eq ptr %call12.i.i312, null
  %tobool1.not.i.i.i316 = icmp eq ptr %anon_name, null
  %or.cond.i.i.i317 = or i1 %tobool1.not.i.i.i316, %tobool.not.i.i.i315
  br i1 %or.cond.i.i.i317, label %if.end.i.i.i318.cleanup_crit_edge, label %anon_vma_name_eq.exit.i.i323

if.end.i.i.i318.cleanup_crit_edge:                ; preds = %if.end.i.i.i318
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

anon_vma_name_eq.exit.i.i323:                     ; preds = %if.end.i.i.i318
  %name.i.i.i319 = getelementptr inbounds %struct.anon_vma_name, ptr %call12.i.i312, i32 0, i32 1
  %name2.i.i.i320 = getelementptr inbounds %struct.anon_vma_name, ptr %anon_name, i32 0, i32 1
  %call.i.i.i321 = tail call i32 @strcmp(ptr noundef %name.i.i.i319, ptr noundef %name2.i.i.i320) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i321)
  %tobool4.not.i.i.i322 = icmp eq i32 %call.i.i.i321, 0
  br i1 %tobool4.not.i.i.i322, label %anon_vma_name_eq.exit.i.i323.land.lhs.true.i328_crit_edge, label %anon_vma_name_eq.exit.i.i323.cleanup_crit_edge

anon_vma_name_eq.exit.i.i323.cleanup_crit_edge:   ; preds = %anon_vma_name_eq.exit.i.i323
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

anon_vma_name_eq.exit.i.i323.land.lhs.true.i328_crit_edge: ; preds = %anon_vma_name_eq.exit.i.i323
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i328

land.lhs.true.i328:                               ; preds = %anon_vma_name_eq.exit.i.i323.land.lhs.true.i328_crit_edge, %if.end11.i.i314.land.lhs.true.i328_crit_edge
  %anon_vma2.i324 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 11
  %76 = ptrtoint ptr %anon_vma2.i324 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %anon_vma2.i324, align 4
  %tobool.not.i11.i325 = icmp eq ptr %anon_vma, null
  %tobool1.not.i.i326 = icmp eq ptr %77, null
  %or.cond.i.i327 = or i1 %tobool.not.i11.i325, %tobool1.not.i.i326
  br i1 %or.cond.i.i327, label %lor.lhs.false3.i.i333, label %land.lhs.true.i328.is_mergeable_anon_vma.exit.i340_crit_edge

land.lhs.true.i328.is_mergeable_anon_vma.exit.i340_crit_edge: ; preds = %land.lhs.true.i328
  call void @__sanitizer_cov_trace_pc() #21
  br label %is_mergeable_anon_vma.exit.i340

lor.lhs.false3.i.i333:                            ; preds = %land.lhs.true.i328
  %anon_vma_chain.i.i331 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 10
  %78 = ptrtoint ptr %anon_vma_chain.i.i331 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %anon_vma_chain.i.i331, align 4
  %cmp.i.not.i.i.i332 = icmp eq ptr %79, %anon_vma_chain.i.i331
  br i1 %cmp.i.not.i.i.i332, label %lor.lhs.false3.i.i333.is_mergeable_anon_vma.exit.i340_crit_edge, label %list_is_singular.exit.i.i338

lor.lhs.false3.i.i333.is_mergeable_anon_vma.exit.i340_crit_edge: ; preds = %lor.lhs.false3.i.i333
  call void @__sanitizer_cov_trace_pc() #21
  br label %is_mergeable_anon_vma.exit.i340

list_is_singular.exit.i.i338:                     ; preds = %lor.lhs.false3.i.i333
  %prev.i.i.i334 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 10, i32 1
  %80 = ptrtoint ptr %prev.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i.i334, align 4
  %cmp.i.not.i.i335 = icmp eq ptr %79, %81
  %cmp.i.not.i336 = icmp eq ptr %77, %anon_vma
  %or.cond.i337 = select i1 %cmp.i.not.i.i335, i1 true, i1 %cmp.i.not.i336
  br i1 %or.cond.i337, label %list_is_singular.exit.i.i338.if.then.i343_crit_edge, label %list_is_singular.exit.i.i338.cleanup_crit_edge

list_is_singular.exit.i.i338.cleanup_crit_edge:   ; preds = %list_is_singular.exit.i.i338
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

list_is_singular.exit.i.i338.if.then.i343_crit_edge: ; preds = %list_is_singular.exit.i.i338
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i343

is_mergeable_anon_vma.exit.i340:                  ; preds = %lor.lhs.false3.i.i333.is_mergeable_anon_vma.exit.i340_crit_edge, %land.lhs.true.i328.is_mergeable_anon_vma.exit.i340_crit_edge
  %cmp.i.not.old.i339 = icmp eq ptr %77, %anon_vma
  br i1 %cmp.i.not.old.i339, label %is_mergeable_anon_vma.exit.i340.if.then.i343_crit_edge, label %is_mergeable_anon_vma.exit.i340.cleanup_crit_edge

is_mergeable_anon_vma.exit.i340.cleanup_crit_edge: ; preds = %is_mergeable_anon_vma.exit.i340
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

is_mergeable_anon_vma.exit.i340.if.then.i343_crit_edge: ; preds = %is_mergeable_anon_vma.exit.i340
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i343

if.then.i343:                                     ; preds = %is_mergeable_anon_vma.exit.i340.if.then.i343_crit_edge, %list_is_singular.exit.i.i338.if.then.i343_crit_edge
  %vm_pgoff5.i341 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 13
  %82 = ptrtoint ptr %vm_pgoff5.i341 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vm_pgoff5.i341, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %add139)
  %cmp.i342 = icmp eq i32 %83, %add139
  br i1 %cmp.i342, label %if.then143, label %if.then.i343.cleanup_crit_edge

if.then.i343.cleanup_crit_edge:                   ; preds = %if.then.i343
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then143:                                       ; preds = %if.then.i343
  br i1 %tobool.not.i, label %if.then143.if.else152_crit_edge, label %land.lhs.true145

if.then143.if.else152_crit_edge:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else152

land.lhs.true145:                                 ; preds = %if.then143
  %vm_end146 = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 1
  %84 = ptrtoint ptr %vm_end146 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vm_end146, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %addr)
  %cmp147 = icmp ugt i32 %85, %addr
  br i1 %cmp147, label %if.then148, label %land.lhs.true145.if.else152_crit_edge

land.lhs.true145.if.else152_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else152

if.then148:                                       ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #21
  %86 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %prev, align 4
  %vm_pgoff150 = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 13
  %88 = ptrtoint ptr %vm_pgoff150 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vm_pgoff150, align 4
  %call151 = tail call i32 @__vma_adjust(ptr noundef nonnull %prev, i32 noundef %87, i32 noundef %addr, i32 noundef %89, ptr noundef null, ptr noundef nonnull %next.0)
  br label %if.end157

if.else152:                                       ; preds = %land.lhs.true145.if.else152_crit_edge, %if.then143.if.else152_crit_edge
  %vm_end153 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 1
  %90 = ptrtoint ptr %vm_end153 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vm_end153, align 4
  %92 = ptrtoint ptr %vm_pgoff5.i341 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vm_pgoff5.i341, align 4
  %sub155 = sub i32 %93, %shr
  %call156 = tail call i32 @__vma_adjust(ptr noundef %retval.0.i, i32 noundef %addr, i32 noundef %91, i32 noundef %sub155, ptr noundef null, ptr noundef nonnull %next.0)
  br label %if.end157

if.end157:                                        ; preds = %if.else152, %if.then148
  %err.1 = phi i32 [ %call151, %if.then148 ], [ %call156, %if.else152 ]
  %area.0 = phi ptr [ %retval.0.i, %if.then148 ], [ %next.0, %if.else152 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool158.not = icmp eq i32 %err.1, 0
  %spec.select355 = select i1 %tobool158.not, ptr %area.0, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.then.i343.cleanup_crit_edge, %is_mergeable_anon_vma.exit.i340.cleanup_crit_edge, %list_is_singular.exit.i.i338.cleanup_crit_edge, %anon_vma_name_eq.exit.i.i323.cleanup_crit_edge, %if.end.i.i.i318.cleanup_crit_edge, %if.end8.i.i311.cleanup_crit_edge, %land.lhs.true.i.i307.cleanup_crit_edge, %if.end.i.i301.cleanup_crit_edge, %land.lhs.true136.cleanup_crit_edge, %land.lhs.true133.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %if.end126, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true133.cleanup_crit_edge ], [ null, %if.end131.cleanup_crit_edge ], [ null, %land.lhs.true136.cleanup_crit_edge ], [ null, %if.end.i.i301.cleanup_crit_edge ], [ null, %land.lhs.true.i.i307.cleanup_crit_edge ], [ null, %if.end8.i.i311.cleanup_crit_edge ], [ null, %if.end.i.i.i318.cleanup_crit_edge ], [ null, %anon_vma_name_eq.exit.i.i323.cleanup_crit_edge ], [ null, %list_is_singular.exit.i.i338.cleanup_crit_edge ], [ null, %is_mergeable_anon_vma.exit.i340.cleanup_crit_edge ], [ null, %if.then.i343.cleanup_crit_edge ], [ %spec.select, %if.end126 ], [ %spec.select355, %if.end157 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @find_mergeable_anon_vma(ptr nocapture noundef readonly %vma) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 2
  %0 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then:                                          ; preds = %entry
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.i = icmp eq i32 %3, %5
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

land.lhs.true.i.i:                                ; preds = %if.then
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %6 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_file.i.i, align 4
  %vm_file2.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %vm_file2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_file2.i.i, align 4
  %cmp3.i.i = icmp eq ptr %7, %9
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.end5_crit_edge

land.lhs.true.i.i.if.end5_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %vm_flags.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %10 = ptrtoint ptr %vm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_flags.i.i, align 4
  %vm_flags5.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %vm_flags5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_flags5.i.i, align 4
  %xor.i.i = xor i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor.i.i)
  %tobool.not.i.i = icmp ult i32 %xor.i.i, 8
  br i1 %tobool.not.i.i, label %anon_vma_compatible.exit.i, label %land.lhs.true4.i.i.if.end5_crit_edge

land.lhs.true4.i.i.if.end5_crit_edge:             ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

anon_vma_compatible.exit.i:                       ; preds = %land.lhs.true4.i.i
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_pgoff.i.i, align 4
  %vm_pgoff6.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %16 = ptrtoint ptr %vm_pgoff6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_pgoff6.i.i, align 4
  %18 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vma, align 4
  %sub.i.i = sub i32 %3, %19
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.i.i = add i32 %shr.i.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add.i.i)
  %cmp9.i.not.i = icmp eq i32 %15, %add.i.i
  br i1 %cmp9.i.not.i, label %if.then.i, label %anon_vma_compatible.exit.i.if.end5_crit_edge

anon_vma_compatible.exit.i.if.end5_crit_edge:     ; preds = %anon_vma_compatible.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then.i:                                        ; preds = %anon_vma_compatible.exit.i
  %anon_vma1.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %anon_vma1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %anon_vma1.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.then.i.if.end5_crit_edge, label %land.lhs.true.i

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.then.i
  %anon_vma_chain.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %anon_vma_chain.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %anon_vma_chain.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.if.end5_crit_edge, label %list_is_singular.exit.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

list_is_singular.exit.i:                          ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %cmp.i9.not.i = icmp eq ptr %23, %25
  br i1 %cmp.i9.not.i, label %list_is_singular.exit.i.cleanup_crit_edge, label %list_is_singular.exit.i.if.end5_crit_edge

list_is_singular.exit.i.if.end5_crit_edge:        ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

list_is_singular.exit.i.cleanup_crit_edge:        ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %list_is_singular.exit.i.if.end5_crit_edge, %land.lhs.true.i.if.end5_crit_edge, %if.then.i.if.end5_crit_edge, %anon_vma_compatible.exit.i.if.end5_crit_edge, %land.lhs.true4.i.i.if.end5_crit_edge, %land.lhs.true.i.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 3
  %26 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vm_prev, align 4
  %tobool6.not = icmp eq ptr %27, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %vm_end.i.i22 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %vm_end.i.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_end.i.i22, align 4
  %30 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i.i23 = icmp eq i32 %29, %31
  br i1 %cmp.i.i23, label %land.lhs.true.i.i27, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i.i27:                              ; preds = %if.then7
  %vm_file.i.i24 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 14
  %32 = ptrtoint ptr %vm_file.i.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vm_file.i.i24, align 4
  %vm_file2.i.i25 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %34 = ptrtoint ptr %vm_file2.i.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vm_file2.i.i25, align 4
  %cmp3.i.i26 = icmp eq ptr %33, %35
  br i1 %cmp3.i.i26, label %land.lhs.true4.i.i32, label %land.lhs.true.i.i27.cleanup_crit_edge

land.lhs.true.i.i27.cleanup_crit_edge:            ; preds = %land.lhs.true.i.i27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true4.i.i32:                             ; preds = %land.lhs.true.i.i27
  %vm_flags.i.i28 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 8
  %36 = ptrtoint ptr %vm_flags.i.i28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vm_flags.i.i28, align 4
  %vm_flags5.i.i29 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %38 = ptrtoint ptr %vm_flags5.i.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vm_flags5.i.i29, align 4
  %xor.i.i30 = xor i32 %39, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %xor.i.i30)
  %tobool.not.i.i31 = icmp ult i32 %xor.i.i30, 8
  br i1 %tobool.not.i.i31, label %anon_vma_compatible.exit.i39, label %land.lhs.true4.i.i32.cleanup_crit_edge

land.lhs.true4.i.i32.cleanup_crit_edge:           ; preds = %land.lhs.true4.i.i32
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

anon_vma_compatible.exit.i39:                     ; preds = %land.lhs.true4.i.i32
  %vm_pgoff.i.i33 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %40 = ptrtoint ptr %vm_pgoff.i.i33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_pgoff.i.i33, align 4
  %vm_pgoff6.i.i34 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 13
  %42 = ptrtoint ptr %vm_pgoff6.i.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vm_pgoff6.i.i34, align 4
  %44 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %27, align 4
  %sub.i.i35 = sub i32 %29, %45
  %shr.i.i36 = lshr i32 %sub.i.i35, 12
  %add.i.i37 = add i32 %shr.i.i36, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add.i.i37)
  %cmp9.i.not.i38 = icmp eq i32 %41, %add.i.i37
  br i1 %cmp9.i.not.i38, label %if.then.i42, label %anon_vma_compatible.exit.i39.cleanup_crit_edge

anon_vma_compatible.exit.i39.cleanup_crit_edge:   ; preds = %anon_vma_compatible.exit.i39
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.i42:                                      ; preds = %anon_vma_compatible.exit.i39
  %anon_vma1.i40 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 11
  %46 = ptrtoint ptr %anon_vma1.i40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %anon_vma1.i40, align 4
  %tobool2.not.i41 = icmp eq ptr %47, null
  br i1 %tobool2.not.i41, label %if.then.i42.cleanup.thread.i49_crit_edge, label %land.lhs.true.i45

if.then.i42.cleanup.thread.i49_crit_edge:         ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread.i49

land.lhs.true.i45:                                ; preds = %if.then.i42
  %anon_vma_chain.i43 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 10
  %48 = ptrtoint ptr %anon_vma_chain.i43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %anon_vma_chain.i43, align 4
  %cmp.i.not.i.i44 = icmp eq ptr %49, %anon_vma_chain.i43
  br i1 %cmp.i.not.i.i44, label %land.lhs.true.i45.cleanup.thread.i49_crit_edge, label %list_is_singular.exit.i48

land.lhs.true.i45.cleanup.thread.i49_crit_edge:   ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread.i49

list_is_singular.exit.i48:                        ; preds = %land.lhs.true.i45
  %prev.i.i46 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i.i46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i46, align 4
  %cmp.i9.not.i47 = icmp eq ptr %49, %51
  br i1 %cmp.i9.not.i47, label %list_is_singular.exit.i48.cleanup_crit_edge, label %list_is_singular.exit.i48.cleanup.thread.i49_crit_edge

list_is_singular.exit.i48.cleanup.thread.i49_crit_edge: ; preds = %list_is_singular.exit.i48
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.thread.i49

list_is_singular.exit.i48.cleanup_crit_edge:      ; preds = %list_is_singular.exit.i48
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup.thread.i49:                               ; preds = %list_is_singular.exit.i48.cleanup.thread.i49_crit_edge, %land.lhs.true.i45.cleanup.thread.i49_crit_edge, %if.then.i42.cleanup.thread.i49_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cleanup.thread.i49, %list_is_singular.exit.i48.cleanup_crit_edge, %anon_vma_compatible.exit.i39.cleanup_crit_edge, %land.lhs.true4.i.i32.cleanup_crit_edge, %land.lhs.true.i.i27.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %list_is_singular.exit.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end5.cleanup_crit_edge ], [ %21, %list_is_singular.exit.i.cleanup_crit_edge ], [ %47, %list_is_singular.exit.i48.cleanup_crit_edge ], [ null, %cleanup.thread.i49 ], [ null, %anon_vma_compatible.exit.i39.cleanup_crit_edge ], [ null, %land.lhs.true4.i.i32.cleanup_crit_edge ], [ null, %land.lhs.true.i.i27.cleanup_crit_edge ], [ null, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlock_future_check(ptr nocapture noundef readonly %mm, i32 noundef %flags, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.then:                                          ; preds = %entry
  %shr = lshr i32 %len, 12
  %locked_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 20
  %0 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %locked_vm, align 4
  %add = add i32 %1, %shr
  %2 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 51, i32 8
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 8
  %shr1 = lshr i32 %9, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shr1)
  %cmp = icmp ugt i32 %add, %shr1
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call zeroext i1 @capable(i32 noundef 14) #19
  br i1 %call2, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -11, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_mmap(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flags, i32 noundef %pgoff, ptr nocapture noundef writeonly %populate, ptr noundef %uf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %6 = ptrtoint ptr %populate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %populate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup179_crit_edge, label %if.end

entry.cleanup179_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end:                                           ; preds = %entry
  %and = and i32 %prot, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 62
  %9 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %personality, align 32
  %and5 = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end13_crit_edge, label %if.then7

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %tobool8.not = icmp eq ptr %file, null
  br i1 %tobool8.not, label %if.then7.if.then11_crit_edge, label %land.lhs.true9

if.then7.if.then11_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11

land.lhs.true9:                                   ; preds = %if.then7
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %call10 = tail call zeroext i1 @path_noexec(ptr noundef %f_path) #19
  br i1 %call10, label %land.lhs.true9.if.end13_crit_edge, label %land.lhs.true9.if.then11_crit_edge

land.lhs.true9.if.then11_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true9.if.then11_crit_edge, %if.then7.if.then11_crit_edge
  %or = or i32 %prot, 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true9.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %prot.addr.0 = phi i32 [ %prot, %land.lhs.true9.if.end13_crit_edge ], [ %or, %if.then11 ], [ %prot, %land.lhs.true.if.end13_crit_edge ], [ %prot, %if.end.if.end13_crit_edge ]
  %and14 = lshr i32 %flags, 16
  %11 = and i32 %and14, 16
  %12 = or i32 %11, %flags
  %and19 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

if.then21:                                        ; preds = %if.end13
  %and.i254 = and i32 %addr, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i254)
  %cmp.not.i = icmp eq i32 %and.i254, 0
  br i1 %cmp.not.i, label %if.then21.if.end23_crit_edge, label %land.lhs.true.i

if.then21.if.end23_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

land.lhs.true.i:                                  ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %13 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i254, i32 %13)
  %cmp1.i = icmp ult i32 %and.i254, %13
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end23_crit_edge

land.lhs.true.i.if.end23_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %add.i = add i32 %13, 4095
  %and2.i = and i32 %add.i, -4096
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end23_crit_edge, %if.then21.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %addr.addr.0 = phi i32 [ %addr, %if.end13.if.end23_crit_edge ], [ %and2.i, %if.then.i ], [ %and.i254, %land.lhs.true.i.if.end23_crit_edge ], [ 0, %if.then21.if.end23_crit_edge ]
  %add = add i32 %len, 4095
  %and24 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.cleanup179_crit_edge, label %if.end27

if.end23.cleanup179_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end27:                                         ; preds = %if.end23
  %shr = lshr i32 %add, 12
  %14 = xor i32 %pgoff, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %14)
  %cmp = icmp ugt i32 %shr, %14
  br i1 %cmp, label %if.end27.cleanup179_crit_edge, label %if.end30

if.end27.cleanup179_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end30:                                         ; preds = %if.end27
  %map_count = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 13
  %15 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %map_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_max_map_count to i32))
  %17 = load i32, ptr @sysctl_max_map_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp31 = icmp sgt i32 %16, %17
  br i1 %cmp31, label %if.end30.cleanup179_crit_edge, label %if.end33

if.end30.cleanup179_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not.i = icmp ne i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %addr.addr.0)
  %cmp.i = icmp ult i32 %addr.addr.0, 8192
  %spec.select.i = and i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end33.cleanup179_crit_edge, label %if.end.i

if.end33.cleanup179_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %and24)
  %cmp2.i = icmp ugt i32 %and24, -1226833920
  br i1 %cmp2.i, label %if.end.i.cleanup179_crit_edge, label %if.end4.i

if.end.i.cleanup179_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end4.i:                                        ; preds = %if.end.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mm.i, align 8
  %get_unmapped_area.i = getelementptr inbounds %struct.anon.15, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %get_unmapped_area.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_unmapped_area.i, align 8
  %tobool5.not.i = icmp eq ptr %file, null
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  %f_op.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %26 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_op.i, align 4
  %get_unmapped_area7.i = getelementptr inbounds %struct.file_operations, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %get_unmapped_area7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_unmapped_area7.i, align 4
  %tobool8.not.i = icmp eq ptr %29, null
  %spec.select52.i = select i1 %tobool8.not.i, ptr %25, ptr %29
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  %and13.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %spec.select53.i = select i1 %tobool14.not.i, i32 %pgoff, i32 0
  %spec.select54.i = select i1 %tobool14.not.i, ptr %25, ptr @shmem_get_unmapped_area
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then6.i
  %pgoff.addr.0.i = phi i32 [ %pgoff, %if.then6.i ], [ %spec.select53.i, %if.else.i ]
  %get_area.0.i = phi ptr [ %spec.select52.i, %if.then6.i ], [ %spec.select54.i, %if.else.i ]
  %call18.i = tail call i32 %get_area.0.i(ptr noundef %file, i32 noundef %addr.addr.0, i32 noundef %and24, i32 noundef %pgoff.addr.0.i, i32 noundef %12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call18.i)
  %cmp19.i = icmp ugt i32 %call18.i, -4096
  br i1 %cmp19.i, label %if.end17.i.cleanup179_crit_edge, label %if.end23.i, !prof !229

if.end17.i.cleanup179_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end23.i:                                       ; preds = %if.end17.i
  %sub.i = sub nuw i32 -1226833920, %and24
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %sub.i)
  %cmp24.i = icmp ugt i32 %call18.i, %sub.i
  br i1 %cmp24.i, label %if.end23.i.cleanup179_crit_edge, label %if.end26.i

if.end23.i.cleanup179_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end26.i:                                       ; preds = %if.end23.i
  %and27.i = and i32 %call18.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.cleanup179_crit_edge

if.end26.i.cleanup179_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end30.i:                                       ; preds = %if.end26.i
  %call31.i = tail call i32 @security_mmap_addr(i32 noundef %call18.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end39_crit_edge, label %get_unmapped_area.exit

if.end30.i.if.end39_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end39

get_unmapped_area.exit:                           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call31.i)
  %cmp35 = icmp ugt i32 %call31.i, -4096
  br i1 %cmp35, label %get_unmapped_area.exit.cleanup179_crit_edge, label %get_unmapped_area.exit.if.end39_crit_edge, !prof !229

get_unmapped_area.exit.if.end39_crit_edge:        ; preds = %get_unmapped_area.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end39

get_unmapped_area.exit.cleanup179_crit_edge:      ; preds = %get_unmapped_area.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end39:                                         ; preds = %get_unmapped_area.exit.if.end39_crit_edge, %if.end30.i.if.end39_crit_edge
  %retval.0.i256276 = phi i32 [ %call31.i, %get_unmapped_area.exit.if.end39_crit_edge ], [ %call18.i, %if.end30.i.if.end39_crit_edge ]
  %and40 = and i32 %flags, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  %call.i = tail call ptr @find_vma(ptr noundef %5, i32 noundef %retval.0.i256276) #19
  %tobool.not.i257 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i257, label %if.then42.if.end48_crit_edge, label %land.lhs.true.i259

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

land.lhs.true.i259:                               ; preds = %if.then42
  %add43 = add i32 %retval.0.i256276, %and24
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add43)
  %cmp.not.i258 = icmp ult i32 %31, %add43
  br i1 %cmp.not.i258, label %land.lhs.true.i259.cleanup179_crit_edge, label %land.lhs.true.i259.if.end48_crit_edge

land.lhs.true.i259.if.end48_crit_edge:            ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end48

land.lhs.true.i259.cleanup179_crit_edge:          ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end48:                                         ; preds = %land.lhs.true.i259.if.end48_crit_edge, %if.then42.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %or5.i = and i32 %prot.addr.0, 7
  %or.i = and i32 %flags, 8448
  %and3.i = shl i32 %flags, 4
  %mul4.i = and i32 %and3.i, 8388608
  %or5.i261 = or i32 %mul4.i, %or.i
  %or57 = or i32 %or5.i261, %or5.i
  %def_flags = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 25
  %32 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %def_flags, align 4
  %or58 = or i32 %or57, %33
  %or61 = or i32 %or58, 112
  %and62 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end48.if.end68_crit_edge, label %if.then64

if.end48.if.end68_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68

if.then64:                                        ; preds = %if.end48
  %call65 = tail call zeroext i1 @can_do_mlock() #19
  br i1 %call65, label %if.then64.if.end68_crit_edge, label %if.then64.cleanup179_crit_edge

if.then64.cleanup179_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.then64.if.end68_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68

if.end68:                                         ; preds = %if.then64.if.end68_crit_edge, %if.end48.if.end68_crit_edge
  %and.i262 = and i32 %or58, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i262)
  %tobool.not.i263 = icmp eq i32 %and.i262, 0
  br i1 %tobool.not.i263, label %if.end68.if.end72_crit_edge, label %if.then.i266

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end72

if.then.i266:                                     ; preds = %if.end68
  %locked_vm.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 20
  %34 = ptrtoint ptr %locked_vm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %locked_vm.i, align 4
  %add.i264 = add i32 %35, %shr
  %36 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 111
  %40 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %41, i32 0, i32 51, i32 8
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %shr1.i = lshr i32 %43, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i264, i32 %shr1.i)
  %cmp.i265 = icmp ugt i32 %add.i264, %shr1.i
  br i1 %cmp.i265, label %land.lhs.true.i267, label %if.then.i266.if.end72_crit_edge

if.then.i266.if.end72_crit_edge:                  ; preds = %if.then.i266
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end72

land.lhs.true.i267:                               ; preds = %if.then.i266
  %call2.i = tail call zeroext i1 @capable(i32 noundef 14) #19
  br i1 %call2.i, label %land.lhs.true.i267.if.end72_crit_edge, label %land.lhs.true.i267.cleanup179_crit_edge

land.lhs.true.i267.cleanup179_crit_edge:          ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

land.lhs.true.i267.if.end72_crit_edge:            ; preds = %land.lhs.true.i267
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true.i267.if.end72_crit_edge, %if.then.i266.if.end72_crit_edge, %if.end68.if.end72_crit_edge
  br i1 %tobool5.not.i, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.end72
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %44 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f_inode.i, align 8
  %call76 = tail call fastcc zeroext i1 @file_mmap_ok(ptr noundef nonnull %file, ptr noundef %45, i32 noundef %pgoff, i32 noundef %and24)
  br i1 %call76, label %if.end78, label %if.then74.cleanup179_crit_edge

if.then74.cleanup179_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end78:                                         ; preds = %if.then74
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %46 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f_op, align 4
  %mmap_supported_flags = getelementptr inbounds %struct.file_operations, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %mmap_supported_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mmap_supported_flags, align 4
  %and80 = and i32 %flags, 15
  %50 = zext i32 %and80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and80, label %if.end78.cleanup179_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %if.end78.sw.bb82_crit_edge
    i32 2, label %if.end78.sw.bb115_crit_edge
  ]

if.end78.sw.bb115_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb115

if.end78.sw.bb82_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb82

if.end78.cleanup179_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

sw.bb:                                            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #21
  %and81 = and i32 %12, 2080897331
  br label %sw.bb82

sw.bb82:                                          ; preds = %sw.bb, %if.end78.sw.bb82_crit_edge
  %flags.addr.1 = phi i32 [ %12, %if.end78.sw.bb82_crit_edge ], [ %and81, %sw.bb ]
  %51 = and i32 %49, -2080897332
  %neg = xor i32 %51, -2080897332
  %and83 = and i32 %flags.addr.1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end86, label %sw.bb82.cleanup179_crit_edge

sw.bb82.cleanup179_crit_edge:                     ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end86:                                         ; preds = %sw.bb82
  %and87 = and i32 %prot.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.if.end98_crit_edge, label %if.then89

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end98

if.then89:                                        ; preds = %if.end86
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %52 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %f_mode, align 8
  %and90 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.then89.cleanup179_crit_edge, label %if.end93

if.then89.cleanup179_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end93:                                         ; preds = %if.then89
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %54 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %f_mapping, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_flags, align 4
  %and94 = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end98_crit_edge, label %if.end93.cleanup179_crit_edge

if.end93.cleanup179_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end98

if.end98:                                         ; preds = %if.end93.if.end98_crit_edge, %if.end86.if.end98_crit_edge
  %i_flags99 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 4
  %60 = ptrtoint ptr %i_flags99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_flags99, align 4
  %and100 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end98.if.end107_crit_edge, label %land.lhs.true102

if.end98.if.end107_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end107

land.lhs.true102:                                 ; preds = %if.end98
  %f_mode103 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %62 = ptrtoint ptr %f_mode103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %f_mode103, align 8
  %and104 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %land.lhs.true102.if.end107_crit_edge, label %land.lhs.true102.cleanup179_crit_edge

land.lhs.true102.cleanup179_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

land.lhs.true102.if.end107_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end107

if.end107:                                        ; preds = %land.lhs.true102.if.end107_crit_edge, %if.end98.if.end107_crit_edge
  %or108 = or i32 %or58, 248
  %f_mode109 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %64 = ptrtoint ptr %f_mode109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %f_mode109, align 8
  %and110 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  %and113 = and i32 %or108, -41
  %spec.select251 = select i1 %tobool111.not, i32 %and113, i32 %or108
  br label %sw.bb115

sw.bb115:                                         ; preds = %if.end107, %if.end78.sw.bb115_crit_edge
  %flags.addr.2 = phi i32 [ %12, %if.end78.sw.bb115_crit_edge ], [ %flags.addr.1, %if.end107 ]
  %vm_flags.0 = phi i32 [ %or61, %if.end78.sw.bb115_crit_edge ], [ %spec.select251, %if.end107 ]
  %f_mode116 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %66 = ptrtoint ptr %f_mode116 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %f_mode116, align 8
  %and117 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %sw.bb115.cleanup179_crit_edge, label %if.end120

sw.bb115.cleanup179_crit_edge:                    ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end120:                                        ; preds = %sw.bb115
  %f_path121 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %call122 = tail call zeroext i1 @path_noexec(ptr noundef %f_path121) #19
  br i1 %call122, label %if.then123, label %if.end120.if.end129_crit_edge

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end129

if.then123:                                       ; preds = %if.end120
  %and124 = and i32 %vm_flags.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end127, label %if.then123.cleanup179_crit_edge

if.then123.cleanup179_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end127:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #21
  %and128 = and i32 %vm_flags.0, -65
  br label %if.end129

if.end129:                                        ; preds = %if.end127, %if.end120.if.end129_crit_edge
  %vm_flags.1 = phi i32 [ %and128, %if.end127 ], [ %vm_flags.0, %if.end120.if.end129_crit_edge ]
  %68 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %f_op, align 4
  %mmap = getelementptr inbounds %struct.file_operations, ptr %69, i32 0, i32 12
  %70 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmap, align 4
  %tobool131.not = icmp eq ptr %71, null
  br i1 %tobool131.not, label %if.end129.cleanup179_crit_edge, label %cleanup

if.end129.cleanup179_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

cleanup:                                          ; preds = %if.end129
  %and134 = and i32 %vm_flags.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %cleanup.if.end150_crit_edge, label %cleanup.cleanup179_crit_edge

cleanup.cleanup179_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

cleanup.if.end150_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end150

if.else:                                          ; preds = %if.end72
  %and139 = and i32 %flags, 15
  %72 = zext i32 %and139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %and139, label %if.else.cleanup179_crit_edge [
    i32 1, label %sw.bb140
    i32 2, label %sw.bb146
  ]

if.else.cleanup179_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

sw.bb140:                                         ; preds = %if.else
  %and141 = and i32 %or58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end144, label %sw.bb140.cleanup179_crit_edge

sw.bb140.cleanup179_crit_edge:                    ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.end144:                                        ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #21
  %or145 = or i32 %or58, 248
  br label %if.end150

sw.bb146:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %shr147 = lshr i32 %retval.0.i256276, 12
  br label %if.end150

if.end150:                                        ; preds = %sw.bb146, %if.end144, %cleanup.if.end150_crit_edge
  %flags.addr.4 = phi i32 [ %flags.addr.2, %cleanup.if.end150_crit_edge ], [ %12, %sw.bb146 ], [ %12, %if.end144 ]
  %pgoff.addr.0 = phi i32 [ %pgoff, %cleanup.if.end150_crit_edge ], [ %shr147, %sw.bb146 ], [ 0, %if.end144 ]
  %vm_flags.3 = phi i32 [ %vm_flags.1, %cleanup.if.end150_crit_edge ], [ %or61, %sw.bb146 ], [ %or145, %if.end144 ]
  %and151 = and i32 %flags.addr.4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end150.if.end163_crit_edge, label %if.then153

if.end150.if.end163_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end163

if.then153:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_overcommit_memory to i32))
  %73 = load i32, ptr @sysctl_overcommit_memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp154.not = icmp eq i32 %73, 2
  %or156 = or i32 %vm_flags.3, 2097152
  %spec.select253 = select i1 %cmp154.not, i32 %vm_flags.3, i32 %or156
  br label %if.end163

if.end163:                                        ; preds = %if.then153, %if.end150.if.end163_crit_edge
  %vm_flags.5 = phi i32 [ %spec.select253, %if.then153 ], [ %vm_flags.3, %if.end150.if.end163_crit_edge ]
  %call164 = tail call i32 @mmap_region(ptr noundef %file, i32 noundef %retval.0.i256276, i32 noundef %and24, i32 noundef %vm_flags.5, i32 noundef %pgoff.addr.0, ptr noundef %uf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call164)
  %cmp165 = icmp ugt i32 %call164, -4096
  br i1 %cmp165, label %if.end163.cleanup179_crit_edge, label %land.lhs.true172, !prof !229

if.end163.cleanup179_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

land.lhs.true172:                                 ; preds = %if.end163
  %and173 = and i32 %vm_flags.5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp ne i32 %and173, 0
  %and175 = and i32 %flags.addr.4, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and175)
  %cmp176 = icmp eq i32 %and175, 32768
  %or.cond = select i1 %tobool174.not, i1 true, i1 %cmp176
  br i1 %or.cond, label %if.then177, label %land.lhs.true172.cleanup179_crit_edge

land.lhs.true172.cleanup179_crit_edge:            ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup179

if.then177:                                       ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #21
  %74 = ptrtoint ptr %populate to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and24, ptr %populate, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %if.then177, %land.lhs.true172.cleanup179_crit_edge, %if.end163.cleanup179_crit_edge, %sw.bb140.cleanup179_crit_edge, %if.else.cleanup179_crit_edge, %cleanup.cleanup179_crit_edge, %if.end129.cleanup179_crit_edge, %if.then123.cleanup179_crit_edge, %sw.bb115.cleanup179_crit_edge, %land.lhs.true102.cleanup179_crit_edge, %if.end93.cleanup179_crit_edge, %if.then89.cleanup179_crit_edge, %sw.bb82.cleanup179_crit_edge, %if.end78.cleanup179_crit_edge, %if.then74.cleanup179_crit_edge, %land.lhs.true.i267.cleanup179_crit_edge, %if.then64.cleanup179_crit_edge, %land.lhs.true.i259.cleanup179_crit_edge, %get_unmapped_area.exit.cleanup179_crit_edge, %if.end26.i.cleanup179_crit_edge, %if.end23.i.cleanup179_crit_edge, %if.end17.i.cleanup179_crit_edge, %if.end.i.cleanup179_crit_edge, %if.end33.cleanup179_crit_edge, %if.end30.cleanup179_crit_edge, %if.end27.cleanup179_crit_edge, %if.end23.cleanup179_crit_edge, %entry.cleanup179_crit_edge
  %retval.1 = phi i32 [ -22, %cleanup.cleanup179_crit_edge ], [ -22, %entry.cleanup179_crit_edge ], [ -12, %if.end23.cleanup179_crit_edge ], [ -75, %if.end27.cleanup179_crit_edge ], [ -12, %if.end30.cleanup179_crit_edge ], [ %call31.i, %get_unmapped_area.exit.cleanup179_crit_edge ], [ -1, %if.then64.cleanup179_crit_edge ], [ -22, %sw.bb140.cleanup179_crit_edge ], [ -22, %if.else.cleanup179_crit_edge ], [ %call164, %land.lhs.true172.cleanup179_crit_edge ], [ %call164, %if.then177 ], [ %call164, %if.end163.cleanup179_crit_edge ], [ -17, %land.lhs.true.i259.cleanup179_crit_edge ], [ -11, %land.lhs.true.i267.cleanup179_crit_edge ], [ -22, %if.end26.i.cleanup179_crit_edge ], [ -12, %if.end23.i.cleanup179_crit_edge ], [ %call18.i, %if.end17.i.cleanup179_crit_edge ], [ -12, %if.end.i.cleanup179_crit_edge ], [ -22, %if.end33.cleanup179_crit_edge ], [ -22, %if.end78.cleanup179_crit_edge ], [ -19, %if.end129.cleanup179_crit_edge ], [ -1, %if.then123.cleanup179_crit_edge ], [ -13, %sw.bb115.cleanup179_crit_edge ], [ -13, %land.lhs.true102.cleanup179_crit_edge ], [ -26, %if.end93.cleanup179_crit_edge ], [ -13, %if.then89.cleanup179_crit_edge ], [ -95, %sw.bb82.cleanup179_crit_edge ], [ -75, %if.then74.cleanup179_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_noexec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_unmapped_area(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %addr)
  %cmp = icmp ult i32 %addr, 8192
  %spec.select = and i1 %cmp, %tobool.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %len)
  %cmp2 = icmp ugt i32 %len, -1226833920
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
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
  %get_unmapped_area = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %get_unmapped_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_unmapped_area, align 8
  %tobool5.not = icmp eq ptr %file, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %8 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_op, align 4
  %get_unmapped_area7 = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %get_unmapped_area7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_unmapped_area7, align 4
  %tobool8.not = icmp eq ptr %11, null
  %spec.select52 = select i1 %tobool8.not, ptr %7, ptr %11
  br label %if.end17

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  %and13 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select53 = select i1 %tobool14.not, i32 %pgoff, i32 0
  %spec.select54 = select i1 %tobool14.not, ptr %7, ptr @shmem_get_unmapped_area
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then6
  %pgoff.addr.0 = phi i32 [ %pgoff, %if.then6 ], [ %spec.select53, %if.else ]
  %get_area.0 = phi ptr [ %spec.select52, %if.then6 ], [ %spec.select54, %if.else ]
  %call18 = tail call i32 %get_area.0(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff.addr.0, i32 noundef %flags) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call18)
  %cmp19 = icmp ugt i32 %call18, -4096
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end23, !prof !229

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %sub = sub nuw i32 -1226833920, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %sub)
  %cmp24 = icmp ugt i32 %call18, %sub
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %and27 = and i32 %call18, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  %call31 = tail call i32 @security_mmap_addr(i32 noundef %call18) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %call18.call31 = select i1 %tobool32.not, i32 %call18, i32 %call31
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18.call31, %if.end30 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @can_do_mlock() local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @file_mmap_ok(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %inode, i32 noundef %pgoff, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %2, label %file_mmap_size_max.exit [
    i16 -32768, label %entry.file_mmap_size_max.exit.thread_crit_edge
    i16 24576, label %entry.file_mmap_size_max.exit.thread_crit_edge19
    i16 -16384, label %entry.file_mmap_size_max.exit.thread_crit_edge20
  ]

entry.file_mmap_size_max.exit.thread_crit_edge20: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %file_mmap_size_max.exit.thread

entry.file_mmap_size_max.exit.thread_crit_edge19: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %file_mmap_size_max.exit.thread

entry.file_mmap_size_max.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %file_mmap_size_max.exit.thread

file_mmap_size_max.exit.thread:                   ; preds = %entry.file_mmap_size_max.exit.thread_crit_edge, %entry.file_mmap_size_max.exit.thread_crit_edge19, %entry.file_mmap_size_max.exit.thread_crit_edge20
  %conv14 = zext i32 %len to i64
  br label %if.end

file_mmap_size_max.exit:                          ; preds = %entry
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode.i, align 8
  %and16.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp eq i32 %and16.i, 0
  %..i = select i1 %tobool.not.i, i64 4294967295, i64 0
  %conv = zext i32 %len to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %..i, i64 %conv)
  %cmp = icmp ult i64 %..i, %conv
  %or.cond = and i1 %tobool.not.i, %cmp
  br i1 %or.cond, label %file_mmap_size_max.exit.cleanup_crit_edge, label %file_mmap_size_max.exit.if.end_crit_edge

file_mmap_size_max.exit.if.end_crit_edge:         ; preds = %file_mmap_size_max.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

file_mmap_size_max.exit.cleanup_crit_edge:        ; preds = %file_mmap_size_max.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %file_mmap_size_max.exit.if.end_crit_edge, %file_mmap_size_max.exit.thread
  %conv18 = phi i64 [ %conv14, %file_mmap_size_max.exit.thread ], [ %conv, %file_mmap_size_max.exit.if.end_crit_edge ]
  %retval.0.i17 = phi i64 [ 17592186040320, %file_mmap_size_max.exit.thread ], [ %..i, %file_mmap_size_max.exit.if.end_crit_edge ]
  %sub = sub nsw i64 %retval.0.i17, %conv18
  %conv3 = zext i32 %pgoff to i64
  %shr = lshr i64 %sub, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv3)
  %cmp4 = icmp uge i64 %shr, %conv3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %file_mmap_size_max.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %file_mmap_size_max.exit.cleanup_crit_edge ], [ %cmp4, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmap_region(ptr noundef %file, i32 noundef %addr, i32 noundef %len, i32 noundef %vm_flags, i32 noundef %pgoff, ptr noundef %uf) local_unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  %rb_link = alloca ptr, align 4
  %rb_parent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #19
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_link) #19
  %7 = ptrtoint ptr %rb_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_link, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_parent) #19
  %8 = ptrtoint ptr %rb_parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_parent, align 4, !annotation !230
  %shr = lshr i32 %len, 12
  %call2 = tail call zeroext i1 @may_expand_vm(ptr noundef %5, i32 noundef %vm_flags, i32 noundef %shr)
  %.pre = add i32 %len, %addr
  br i1 %call2, label %entry.while.cond.i.preheader_crit_edge, label %if.then

entry.while.cond.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i.preheader

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @find_vma(ptr noundef %5, i32 noundef %addr) #19
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.count_vma_pages_range.exit_crit_edge, label %land.lhs.true.i.i

if.then.count_vma_pages_range.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %count_vma_pages_range.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %.pre)
  %cmp.not.i.i = icmp ult i32 %10, %.pre
  br i1 %cmp.not.i.i, label %if.end.i, label %land.lhs.true.i.i.count_vma_pages_range.exit_crit_edge

land.lhs.true.i.i.count_vma_pages_range.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %count_vma_pages_range.exit

if.end.i:                                         ; preds = %land.lhs.true.i.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_end.i, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %.pre) #19
  %14 = tail call i32 @llvm.umax.i32(i32 %10, i32 %addr) #19
  %sub.i = sub i32 %13, %14
  %shr.i = lshr i32 %sub.i, 12
  %vma.0.in52.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %vma.0.in52.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %vma.053.i = load ptr, ptr %vma.0.in52.i, align 4
  %tobool7.not54.i = icmp eq ptr %vma.053.i, null
  br i1 %tobool7.not54.i, label %if.end.i.count_vma_pages_range.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.count_vma_pages_range.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %count_vma_pages_range.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %vma.056.i = phi ptr [ %vma.0.i, %cleanup.i.for.body.i_crit_edge ], [ %vma.053.i, %if.end.i.for.body.i_crit_edge ]
  %nr_pages.055.i = phi i32 [ %add.i, %cleanup.i.for.body.i_crit_edge ], [ %shr.i, %if.end.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %vma.056.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vma.056.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %.pre)
  %cmp9.i = icmp ugt i32 %17, %.pre
  br i1 %cmp9.i, label %for.body.i.count_vma_pages_range.exit_crit_edge, label %cleanup.i

for.body.i.count_vma_pages_range.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %count_vma_pages_range.exit

cleanup.i:                                        ; preds = %for.body.i
  %vm_end12.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.056.i, i32 0, i32 1
  %18 = ptrtoint ptr %vm_end12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end12.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %.pre) #19
  %sub20.i = sub i32 %20, %17
  %shr21.i = lshr i32 %sub20.i, 12
  %add.i = add i32 %shr21.i, %nr_pages.055.i
  %vma.0.in.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.056.i, i32 0, i32 2
  %21 = ptrtoint ptr %vma.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %vma.0.i = load ptr, ptr %vma.0.in.i, align 4
  %tobool7.not.i = icmp eq ptr %vma.0.i, null
  br i1 %tobool7.not.i, label %cleanup.i.count_vma_pages_range.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

cleanup.i.count_vma_pages_range.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %count_vma_pages_range.exit

count_vma_pages_range.exit:                       ; preds = %cleanup.i.count_vma_pages_range.exit_crit_edge, %for.body.i.count_vma_pages_range.exit_crit_edge, %if.end.i.count_vma_pages_range.exit_crit_edge, %land.lhs.true.i.i.count_vma_pages_range.exit_crit_edge, %if.then.count_vma_pages_range.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %land.lhs.true.i.i.count_vma_pages_range.exit_crit_edge ], [ 0, %if.then.count_vma_pages_range.exit_crit_edge ], [ %shr.i, %if.end.i.count_vma_pages_range.exit_crit_edge ], [ %nr_pages.055.i, %for.body.i.count_vma_pages_range.exit_crit_edge ], [ %add.i, %cleanup.i.count_vma_pages_range.exit_crit_edge ]
  %sub = sub i32 %shr, %retval.0.i
  %call5 = tail call zeroext i1 @may_expand_vm(ptr noundef %5, i32 noundef %vm_flags, i32 noundef %sub)
  br i1 %call5, label %count_vma_pages_range.exit.while.cond.i.preheader_crit_edge, label %count_vma_pages_range.exit.cleanup178_crit_edge

count_vma_pages_range.exit.cleanup178_crit_edge:  ; preds = %count_vma_pages_range.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup178

count_vma_pages_range.exit.while.cond.i.preheader_crit_edge: ; preds = %count_vma_pages_range.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %count_vma_pages_range.exit.while.cond.i.preheader_crit_edge, %entry.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %call.i = call fastcc i32 @find_vma_links(ptr noundef %5, i32 noundef %addr, i32 noundef %.pre, ptr noundef nonnull %prev, ptr noundef nonnull %rb_link, ptr noundef nonnull %rb_parent) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call.i.i288 = tail call i32 @__do_munmap(ptr noundef %5, i32 noundef %addr, i32 noundef %len, ptr noundef %uf, i1 noundef zeroext false) #19
  %tobool2.not.i = icmp eq i32 %call.i.i288, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.cleanup178_crit_edge

while.body.i.cleanup178_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup178

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i

if.end10:                                         ; preds = %while.cond.i
  %and.i290 = and i32 %vm_flags, 2097162
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i290)
  %cmp.i.not = icmp eq i32 %and.i290, 2
  br i1 %cmp.i.not, label %if.then13, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  %call15 = tail call i32 @security_vm_enough_memory_mm(ptr noundef %5, i32 noundef %shr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.cleanup178_crit_edge

if.then13.cleanup178_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup178

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #21
  %or = or i32 %vm_flags, 1048576
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end10.if.end19_crit_edge
  %charged.0 = phi i32 [ %shr, %if.end18 ], [ 0, %if.end10.if.end19_crit_edge ]
  %vm_flags.addr.0 = phi i32 [ %or, %if.end18 ], [ %vm_flags, %if.end10.if.end19_crit_edge ]
  %22 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev, align 4
  %call21 = tail call ptr @vma_merge(ptr noundef %5, ptr noundef %23, i32 noundef %addr, i32 noundef %.pre, i32 noundef %vm_flags.addr.0, ptr noundef null, ptr noundef %file, i32 noundef %pgoff, ptr undef, [1 x i32] zeroinitializer, ptr noundef null)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end24, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end24:                                         ; preds = %if.end19
  %call25 = tail call ptr @vm_area_alloc(ptr noundef %5) #19
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.unacct_error_crit_edge, label %if.end28

if.end24.unacct_error_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %unacct_error

if.end28:                                         ; preds = %if.end24
  %24 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %addr, ptr %call25, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call25, i32 0, i32 1
  %25 = ptrtoint ptr %vm_end to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.pre, ptr %vm_end, align 4
  %vm_flags30 = getelementptr inbounds %struct.vm_area_struct, ptr %call25, i32 0, i32 8
  %26 = ptrtoint ptr %vm_flags30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %vm_flags.addr.0, ptr %vm_flags30, align 4
  %and.i291 = and i32 %vm_flags.addr.0, 15
  %arrayidx.i = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %and.i291
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %call25, i32 0, i32 7
  %29 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %vm_page_prot, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call25, i32 0, i32 13
  %30 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %pgoff, ptr %vm_pgoff, align 4
  %tobool32.not = icmp eq ptr %file, null
  %and113 = and i32 %vm_flags.addr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end28
  br i1 %tobool114.not, label %if.then33.if.end40_crit_edge, label %if.then35

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40

if.then35:                                        ; preds = %if.then33
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %31 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_mapping, align 4
  %call36 = tail call fastcc i32 @mapping_map_writable(ptr noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end40_crit_edge, label %if.then35.free_vma_crit_edge

if.then35.free_vma_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_vma

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40

if.end40:                                         ; preds = %if.then35.if.end40_crit_edge, %if.then33.if.end40_crit_edge
  %f_count.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #19
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #19, !srcloc !233
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call25, i32 0, i32 14
  %34 = ptrtoint ptr %vm_file to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %file, ptr %vm_file, align 4
  %f_op.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %35 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_op.i, align 4
  %mmap.i = getelementptr inbounds %struct.file_operations, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmap.i, align 4
  %call.i292 = tail call i32 %38(ptr noundef nonnull %file, ptr noundef nonnull %call25) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %tobool43.not = icmp eq i32 %call.i292, 0
  br i1 %tobool43.not, label %if.end45, label %unmap_and_free_vma

if.end45:                                         ; preds = %if.end40
  %39 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %addr)
  %cmp.not = icmp eq i32 %40, %addr
  br i1 %cmp.not, label %if.end45.if.end76_crit_edge, label %land.rhs

if.end45.if.end76_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end76

land.rhs:                                         ; preds = %if.end45
  %.b286 = load i1, ptr @mmap_region.__already_done, align 1
  br i1 %.b286, label %land.rhs.if.end76_crit_edge, label %if.then54, !prof !228

land.rhs.if.end76_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end76

if.then54:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @mmap_region.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1804, i32 noundef 9, ptr noundef null) #19
  br label %if.end76

if.end76:                                         ; preds = %if.then54, %land.rhs.if.end76_crit_edge, %if.end45.if.end76_crit_edge
  %41 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call25, align 4
  %43 = ptrtoint ptr %vm_flags30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vm_flags30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %vm_flags.addr.0, i32 %44)
  %cmp86.not = icmp ne i32 %vm_flags.addr.0, %44
  %tobool88 = icmp ne ptr %23, null
  %or.cond300 = and i1 %tobool88, %cmp86.not
  br i1 %or.cond300, label %if.then96, label %if.end76.if.end111_crit_edge, !prof !237

if.end76.if.end111_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end111

if.then96:                                        ; preds = %if.end76
  %45 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vm_end, align 4
  %47 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vm_file, align 4
  %49 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vm_pgoff, align 4
  %call105 = tail call ptr @vma_merge(ptr noundef %5, ptr noundef nonnull %23, i32 noundef %42, i32 noundef %46, i32 noundef %44, ptr noundef null, ptr noundef %48, i32 noundef %50, ptr undef, [1 x i32] zeroinitializer, ptr noundef null)
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %if.then96.if.end111_crit_edge, label %if.then107

if.then96.if.end111_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end111

if.then107:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #21
  %51 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vm_file, align 4
  tail call void @fput(ptr noundef %52) #19
  tail call void @vm_area_free(ptr noundef nonnull %call25) #19
  %vm_flags109 = getelementptr inbounds %struct.vm_area_struct, ptr %call105, i32 0, i32 8
  %53 = ptrtoint ptr %vm_flags109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vm_flags109, align 4
  br label %unmap_writable

if.end111:                                        ; preds = %if.then96.if.end111_crit_edge, %if.end76.if.end111_crit_edge
  %55 = ptrtoint ptr %vm_flags30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vm_flags30, align 4
  br label %if.end122

if.else:                                          ; preds = %if.end28
  br i1 %tobool114.not, label %if.else120, label %if.then115

if.then115:                                       ; preds = %if.else
  %call116 = tail call i32 @shmem_zero_setup(ptr noundef nonnull %call25) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then115.if.end122_crit_edge, label %if.then115.free_vma_crit_edge

if.then115.free_vma_crit_edge:                    ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_vma

if.then115.if.end122_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end122

if.else120:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %call25, i32 0, i32 12
  %57 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %vm_ops.i, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.else120, %if.then115.if.end122_crit_edge, %if.end111
  %vm_flags.addr.1 = phi i32 [ %56, %if.end111 ], [ %vm_flags.addr.0, %if.then115.if.end122_crit_edge ], [ %vm_flags.addr.0, %if.else120 ]
  %addr.addr.0 = phi i32 [ %42, %if.end111 ], [ %addr, %if.then115.if.end122_crit_edge ], [ %addr, %if.else120 ]
  %58 = ptrtoint ptr %rb_link to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rb_link, align 4
  %60 = ptrtoint ptr %rb_parent to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rb_parent, align 4
  tail call fastcc void @vma_link(ptr noundef %5, ptr noundef nonnull %call25, ptr noundef %23, ptr noundef %59, ptr noundef %61)
  br label %unmap_writable

unmap_writable:                                   ; preds = %if.end122, %if.then107
  %vma.0 = phi ptr [ %call105, %if.then107 ], [ %call25, %if.end122 ]
  %vm_flags.addr.2 = phi i32 [ %54, %if.then107 ], [ %vm_flags.addr.1, %if.end122 ]
  %addr.addr.1 = phi i32 [ %42, %if.then107 ], [ %addr.addr.0, %if.end122 ]
  %and131 = and i32 %vm_flags.addr.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  %or.cond = select i1 %tobool32.not, i1 true, i1 %tobool132.not
  br i1 %or.cond, label %unmap_writable.if.end135_crit_edge, label %if.then133

unmap_writable.if.end135_crit_edge:               ; preds = %unmap_writable
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end135

if.then133:                                       ; preds = %unmap_writable
  call void @__sanitizer_cov_trace_pc() #21
  %f_mapping134 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %62 = ptrtoint ptr %f_mapping134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %f_mapping134, align 4
  %i_mmap_writable.i = getelementptr inbounds %struct.address_space, ptr %63, i32 0, i32 4
  %call.i.i.i293 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %i_mmap_writable.i, i32 1, i32 3, i32 1) #19
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i, ptr %i_mmap_writable.i, i32 1, ptr elementtype(i32) %i_mmap_writable.i) #19, !srcloc !231
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %unmap_writable.if.end135_crit_edge
  %vm_file136 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 14
  %65 = ptrtoint ptr %vm_file136 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vm_file136, align 4
  br label %out

out:                                              ; preds = %if.end135, %if.end19.out_crit_edge
  %vma.1 = phi ptr [ %call21, %if.end19.out_crit_edge ], [ %vma.0, %if.end135 ]
  %vm_flags.addr.3 = phi i32 [ %vm_flags.addr.0, %if.end19.out_crit_edge ], [ %vm_flags.addr.2, %if.end135 ]
  %addr.addr.2 = phi i32 [ %addr, %if.end19.out_crit_edge ], [ %addr.addr.1, %if.end135 ]
  %file.addr.0 = phi ptr [ %file, %if.end19.out_crit_edge ], [ %66, %if.end135 ]
  tail call void @perf_event_mmap(ptr noundef nonnull %vma.1) #19
  %total_vm.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 19
  %67 = ptrtoint ptr %total_vm.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %total_vm.i, align 8
  %add.i294 = add i32 %68, %shr
  store volatile i32 %add.i294, ptr %total_vm.i, align 8
  %and.i.i = and i32 %vm_flags.addr.3, 262
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 4
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  %exec_vm.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 23
  %69 = ptrtoint ptr %exec_vm.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %exec_vm.i, align 4
  %add8.i = add i32 %70, %shr
  store i32 %add8.i, ptr %exec_vm.i, align 4
  br label %vm_stat_account.exit

if.else.i:                                        ; preds = %out
  %and.i27.i = and i32 %vm_flags.addr.3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i)
  %cmp.i28.not.i = icmp eq i32 %and.i27.i, 0
  br i1 %cmp.i28.not.i, label %if.else12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %stack_vm.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 24
  %71 = ptrtoint ptr %stack_vm.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stack_vm.i, align 8
  %add11.i = add i32 %72, %shr
  store i32 %add11.i, ptr %stack_vm.i, align 8
  br label %vm_stat_account.exit

if.else12.i:                                      ; preds = %if.else.i
  %and.i29.i = and i32 %vm_flags.addr.3, 266
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i29.i)
  %cmp.i30.i = icmp eq i32 %and.i29.i, 2
  br i1 %cmp.i30.i, label %if.then14.i, label %if.else12.i.vm_stat_account.exit_crit_edge

if.else12.i.vm_stat_account.exit_crit_edge:       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_stat_account.exit

if.then14.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #21
  %data_vm.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 22
  %73 = ptrtoint ptr %data_vm.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_vm.i, align 8
  %add15.i = add i32 %74, %shr
  store i32 %add15.i, ptr %data_vm.i, align 8
  br label %vm_stat_account.exit

vm_stat_account.exit:                             ; preds = %if.then14.i, %if.else12.i.vm_stat_account.exit_crit_edge, %if.then10.i, %if.then.i
  %and138 = and i32 %vm_flags.addr.3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %vm_stat_account.exit.if.end159_crit_edge, label %if.then140

vm_stat_account.exit.if.end159_crit_edge:         ; preds = %vm_stat_account.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end159

if.then140:                                       ; preds = %vm_stat_account.exit
  %and141 = and i32 %vm_flags.addr.3, 268715008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %lor.lhs.false, label %if.then140.if.then152_crit_edge

if.then140.if.then152_crit_edge:                  ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then152

lor.lhs.false:                                    ; preds = %if.then140
  %75 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task, align 8
  %mm149 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 53
  %77 = ptrtoint ptr %mm149 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mm149, align 8
  %call150 = tail call ptr @get_gate_vma(ptr noundef %78) #19
  %cmp151 = icmp eq ptr %vma.1, %call150
  br i1 %cmp151, label %lor.lhs.false.if.then152_crit_edge, label %if.else155

lor.lhs.false.if.then152_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then152

if.then152:                                       ; preds = %lor.lhs.false.if.then152_crit_edge, %if.then140.if.then152_crit_edge
  %vm_flags153 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1, i32 0, i32 8
  %79 = ptrtoint ptr %vm_flags153 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vm_flags153, align 4
  %and154 = and i32 %80, -532481
  store i32 %and154, ptr %vm_flags153, align 4
  br label %if.end159

if.else155:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  %locked_vm = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 20
  %81 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %locked_vm, align 4
  %add157 = add i32 %82, %shr
  store i32 %add157, ptr %locked_vm, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.else155, %if.then152, %vm_stat_account.exit.if.end159_crit_edge
  %tobool160.not = icmp eq ptr %file.addr.0, null
  br i1 %tobool160.not, label %if.end159.if.end163_crit_edge, label %if.then161

if.end159.if.end163_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end163

if.then161:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #21
  %call162 = tail call i32 @uprobe_mmap(ptr noundef nonnull %vma.1) #19
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end159.if.end163_crit_edge
  tail call void @vma_set_page_prot(ptr noundef nonnull %vma.1)
  br label %cleanup178

unmap_and_free_vma:                               ; preds = %if.end40
  %83 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vm_file, align 4
  tail call void @fput(ptr noundef %84) #19
  %85 = ptrtoint ptr %vm_file to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %vm_file, align 4
  %86 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %call25, align 4
  %88 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vm_end, align 4
  tail call fastcc void @unmap_region(ptr noundef %5, ptr noundef nonnull %call25, ptr noundef %23, i32 noundef %87, i32 noundef %89)
  br i1 %tobool114.not, label %unmap_and_free_vma.free_vma_crit_edge, label %if.then172

unmap_and_free_vma.free_vma_crit_edge:            ; preds = %unmap_and_free_vma
  call void @__sanitizer_cov_trace_pc() #21
  br label %free_vma

if.then172:                                       ; preds = %unmap_and_free_vma
  call void @__sanitizer_cov_trace_pc() #21
  %f_mapping173 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %90 = ptrtoint ptr %f_mapping173 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %f_mapping173, align 4
  %i_mmap_writable.i295 = getelementptr inbounds %struct.address_space, ptr %91, i32 0, i32 4
  %call.i.i.i296 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i295, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %i_mmap_writable.i295, i32 1, i32 3, i32 1) #19
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i295, ptr %i_mmap_writable.i295, i32 1, ptr elementtype(i32) %i_mmap_writable.i295) #19, !srcloc !231
  br label %free_vma

free_vma:                                         ; preds = %if.then172, %unmap_and_free_vma.free_vma_crit_edge, %if.then115.free_vma_crit_edge, %if.then35.free_vma_crit_edge
  %error.1 = phi i32 [ %call36, %if.then35.free_vma_crit_edge ], [ %call.i292, %if.then172 ], [ %call.i292, %unmap_and_free_vma.free_vma_crit_edge ], [ %call116, %if.then115.free_vma_crit_edge ]
  %charged.1 = phi i32 [ %charged.0, %if.then35.free_vma_crit_edge ], [ 0, %if.then172 ], [ 0, %unmap_and_free_vma.free_vma_crit_edge ], [ %charged.0, %if.then115.free_vma_crit_edge ]
  tail call void @vm_area_free(ptr noundef nonnull %call25) #19
  br label %unacct_error

unacct_error:                                     ; preds = %free_vma, %if.end24.unacct_error_crit_edge
  %error.2 = phi i32 [ %error.1, %free_vma ], [ -12, %if.end24.unacct_error_crit_edge ]
  %charged.2 = phi i32 [ %charged.1, %free_vma ], [ %charged.0, %if.end24.unacct_error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %charged.2)
  %tobool175.not = icmp eq i32 %charged.2, 0
  br i1 %tobool175.not, label %unacct_error.cleanup178_crit_edge, label %if.then176

unacct_error.cleanup178_crit_edge:                ; preds = %unacct_error
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup178

if.then176:                                       ; preds = %unacct_error
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i297 = sub nsw i32 0, %charged.2
  %conv.i.i = sext i32 %sub.i297 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %93 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %93) #19
  br label %cleanup178

cleanup178:                                       ; preds = %if.then176, %unacct_error.cleanup178_crit_edge, %if.end163, %if.then13.cleanup178_crit_edge, %while.body.i.cleanup178_crit_edge, %count_vma_pages_range.exit.cleanup178_crit_edge
  %retval.1 = phi i32 [ %addr.addr.2, %if.end163 ], [ -12, %count_vma_pages_range.exit.cleanup178_crit_edge ], [ -12, %if.then13.cleanup178_crit_edge ], [ %error.2, %if.then176 ], [ %error.2, %unacct_error.cleanup178_crit_edge ], [ -12, %while.body.i.cleanup178_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_parent) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_link) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #19
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_mmap_pgoff(i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flags, i32 noundef %fd, i32 noundef %pgoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call ptr @fget(i32 noundef %fd) #19
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup35_crit_edge, label %if.end

if.then.cleanup35_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup35

if.end:                                           ; preds = %if.then
  %and4 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %out_fput, label %if.end.if.then33_crit_edge, !prof !228

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then33

if.else:                                          ; preds = %entry
  %and10 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %out_fput.thread58, label %if.else.cleanup35_crit_edge

if.else.cleanup35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup35

out_fput.thread58:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %call3160 = tail call i32 @vm_mmap_pgoff(ptr noundef null, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flags, i32 noundef %pgoff) #19
  br label %cleanup35

out_fput:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call31 = tail call i32 @vm_mmap_pgoff(ptr noundef nonnull %call, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flags, i32 noundef %pgoff) #19
  br label %if.then33

if.then33:                                        ; preds = %out_fput, %if.end.if.then33_crit_edge
  %retval1.057 = phi i32 [ %call31, %out_fput ], [ -22, %if.end.if.then33_crit_edge ]
  tail call void @fput(ptr noundef nonnull %call) #19
  br label %cleanup35

cleanup35:                                        ; preds = %if.then33, %out_fput.thread58, %if.else.cleanup35_crit_edge, %if.then.cleanup35_crit_edge
  %retval.1 = phi i32 [ -9, %if.then.cleanup35_crit_edge ], [ %retval1.057, %if.then33 ], [ -22, %if.else.cleanup35_crit_edge ], [ %call3160, %out_fput.thread58 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap_pgoff(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mmap_pgoff(i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flags, i32 noundef %fd, i32 noundef %pgoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i = tail call ptr @fget(i32 noundef %fd) #19
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.__do_sys_mmap_pgoff.exit_crit_edge, label %if.end.i.i

if.then.i.i.__do_sys_mmap_pgoff.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__do_sys_mmap_pgoff.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  %and4.i.i = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %out_fput.i.i, label %if.end.i.i.if.then33.i.i_crit_edge, !prof !228

if.end.i.i.if.then33.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then33.i.i

if.else.i.i:                                      ; preds = %entry
  %and10.i.i = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %out_fput.thread58.i.i, label %if.else.i.i.__do_sys_mmap_pgoff.exit_crit_edge

if.else.i.i.__do_sys_mmap_pgoff.exit_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__do_sys_mmap_pgoff.exit

out_fput.thread58.i.i:                            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call3160.i.i = tail call i32 @vm_mmap_pgoff(ptr noundef null, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flags, i32 noundef %pgoff) #19
  br label %__do_sys_mmap_pgoff.exit

out_fput.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call31.i.i = tail call i32 @vm_mmap_pgoff(ptr noundef nonnull %call.i.i, i32 noundef %addr, i32 noundef %len, i32 noundef %prot, i32 noundef %flags, i32 noundef %pgoff) #19
  br label %if.then33.i.i

if.then33.i.i:                                    ; preds = %out_fput.i.i, %if.end.i.i.if.then33.i.i_crit_edge
  %retval1.057.i.i = phi i32 [ %call31.i.i, %out_fput.i.i ], [ -22, %if.end.i.i.if.then33.i.i_crit_edge ]
  tail call void @fput(ptr noundef nonnull %call.i.i) #19
  br label %__do_sys_mmap_pgoff.exit

__do_sys_mmap_pgoff.exit:                         ; preds = %if.then33.i.i, %out_fput.thread58.i.i, %if.else.i.i.__do_sys_mmap_pgoff.exit_crit_edge, %if.then.i.i.__do_sys_mmap_pgoff.exit_crit_edge
  %retval.1.i.i = phi i32 [ -9, %if.then.i.i.__do_sys_mmap_pgoff.exit_crit_edge ], [ %retval1.057.i.i, %if.then33.i.i ], [ -22, %if.else.i.i.__do_sys_mmap_pgoff.exit_crit_edge ], [ %call3160.i.i, %out_fput.thread58.i.i ]
  ret i32 %retval.1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_mmap(i32 noundef %arg) #0 align 64 {
entry:
  %a.i = alloca %struct.mmap_arg_struct, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a.i) #19
  %1 = getelementptr inbounds %struct.mmap_arg_struct, ptr %a.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mmap_arg_struct, ptr %a.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mmap_arg_struct, ptr %a.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mmap_arg_struct, ptr %a.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.mmap_arg_struct, ptr %a.i, i32 0, i32 5
  %6 = call ptr @memset(ptr %a.i, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.62, i32 noundef 156) #19
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #19
  br i1 %call.i.i.i, label %entry.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.if.then11.i.i.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 24, i32 -1226833920) #24, !srcloc !238
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !228

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %a.i, i32 noundef 24) #19
  %8 = call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #13, !srcloc !239
  %and.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #19, !srcloc !240
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !241
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %a.i, ptr noundef %0, i32 noundef 24) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #19, !srcloc !240
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #19, !srcloc !241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !228

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %entry.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 24, %entry.if.then11.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 24, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %a.i, i32 %sub.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %__do_sys_old_mmap.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %and.i = and i32 %13, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.__do_sys_old_mmap.exit_crit_edge

if.end.i.__do_sys_old_mmap.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__do_sys_old_mmap.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %a.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %a.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %shr.i = lshr i32 %13, 12
  %and.i.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i6.i, label %if.else.i.i

if.then.i6.i:                                     ; preds = %if.end3.i
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 4
  %call.i.i = call ptr @fget(i32 noundef %23) #19
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i.i, label %if.then.i6.i.__do_sys_old_mmap.exit_crit_edge, label %if.end.i.i

if.then.i6.i.__do_sys_old_mmap.exit_crit_edge:    ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__do_sys_old_mmap.exit

if.end.i.i:                                       ; preds = %if.then.i6.i
  %and4.i.i = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %out_fput.i.i, label %if.end.i.i.if.then33.i.i_crit_edge, !prof !228

if.end.i.i.if.then33.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then33.i.i

if.else.i.i:                                      ; preds = %if.end3.i
  %and10.i.i = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %out_fput.thread58.i.i, label %if.else.i.i.__do_sys_old_mmap.exit_crit_edge

if.else.i.i.__do_sys_old_mmap.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__do_sys_old_mmap.exit

out_fput.thread58.i.i:                            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call3160.i.i = call i32 @vm_mmap_pgoff(ptr noundef null, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %shr.i) #19
  br label %__do_sys_old_mmap.exit

out_fput.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call31.i.i = call i32 @vm_mmap_pgoff(ptr noundef nonnull %call.i.i, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %shr.i) #19
  br label %if.then33.i.i

if.then33.i.i:                                    ; preds = %out_fput.i.i, %if.end.i.i.if.then33.i.i_crit_edge
  %retval1.057.i.i = phi i32 [ %call31.i.i, %out_fput.i.i ], [ -22, %if.end.i.i.if.then33.i.i_crit_edge ]
  call void @fput(ptr noundef nonnull %call.i.i) #19
  br label %__do_sys_old_mmap.exit

__do_sys_old_mmap.exit:                           ; preds = %if.then33.i.i, %out_fput.thread58.i.i, %if.else.i.i.__do_sys_old_mmap.exit_crit_edge, %if.then.i6.i.__do_sys_old_mmap.exit_crit_edge, %if.end.i.__do_sys_old_mmap.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -22, %if.end.i.__do_sys_old_mmap.exit_crit_edge ], [ -9, %if.then.i6.i.__do_sys_old_mmap.exit_crit_edge ], [ %retval1.057.i.i, %if.then33.i.i ], [ -22, %if.else.i.i.__do_sys_old_mmap.exit_crit_edge ], [ %call3160.i.i, %out_fput.thread58.i.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a.i) #19
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @may_expand_vm(ptr nocapture noundef readonly %mm, i32 noundef %flags, i32 noundef %npages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %total_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 19
  %0 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_vm, align 8
  %add = add i32 %1, %npages
  %2 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 51, i32 9
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 8
  %shr = lshr i32 %9, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shr)
  %cmp = icmp ugt i32 %add, %shr
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  %and.i = and i32 %flags, 266
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 2
  br i1 %cmp.i, label %land.lhs.true, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end
  %data_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 22
  %10 = ptrtoint ptr %data_vm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_vm, align 8
  %add2 = add i32 %11, %npages
  %12 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i50 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i50 to ptr
  %task.i51 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i51, align 8
  %signal.i.i52 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 111
  %16 = ptrtoint ptr %signal.i.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal.i.i52, align 16
  %arrayidx.i.i53 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 51, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i53, align 8
  %shr4 = lshr i32 %19, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %shr4)
  %cmp5 = icmp ugt i32 %add2, %shr4
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.then6:                                         ; preds = %land.lhs.true
  %20 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i54 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i54 to ptr
  %task.i55 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i55, align 8
  %signal.i.i56 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 111
  %24 = ptrtoint ptr %signal.i.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signal.i.i56, align 16
  %arrayidx.i.i57 = getelementptr %struct.signal_struct, ptr %25, i32 0, i32 51, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp8 = icmp eq i32 %27, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.then6.land.end_crit_edge

if.then6.land.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.lhs.true9:                                   ; preds = %if.then6
  %28 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i58 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i58 to ptr
  %task.i59 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i59, align 8
  %signal.i.i60 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 111
  %32 = ptrtoint ptr %signal.i.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %signal.i.i60, align 16
  %rlim_max.i.i = getelementptr %struct.signal_struct, ptr %33, i32 0, i32 51, i32 2, i32 1
  %34 = ptrtoint ptr %rlim_max.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %rlim_max.i.i, align 4
  %shr13 = lshr i32 %35, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %shr13)
  %cmp14.not = icmp ugt i32 %add2, %shr13
  br i1 %cmp14.not, label %land.lhs.true9.land.end_crit_edge, label %land.lhs.true9.return_crit_edge

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

land.lhs.true9.land.end_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.end:                                         ; preds = %land.lhs.true9.land.end_crit_edge, %if.then6.land.end_crit_edge
  %.b49 = load i1, ptr @may_expand_vm.__already_done, align 1
  br i1 %.b49, label %land.end.if.end30_crit_edge, label %if.then21, !prof !228

land.end.if.end30_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then21:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @may_expand_vm.__already_done, align 1
  %36 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i61 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i61 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid, align 8
  %shl = shl i32 %add2, 12
  %signal.i.i64 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 111
  %42 = ptrtoint ptr %signal.i.i64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %signal.i.i64, align 16
  %arrayidx.i.i65 = getelementptr %struct.signal_struct, ptr %43, i32 0, i32 51, i32 2
  %44 = ptrtoint ptr %arrayidx.i.i65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i.i65, align 8
  %46 = load i8, ptr @ignore_rlimit_data, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool28.not = icmp eq i8 %46, 0
  %cond = select i1 %tobool28.not, ptr @.str.20, ptr @.str.19
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm, i32 noundef %41, i32 noundef %shl, i32 noundef %45, ptr noundef nonnull %cond) #22
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %land.end.if.end30_crit_edge
  %47 = load i8, ptr @ignore_rlimit_data, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool38.not = icmp eq i8 %47, 0
  br i1 %tobool38.not, label %if.end30.return_crit_edge, label %if.end30.if.end41_crit_edge

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.end30.return_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end41:                                         ; preds = %if.end30.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end.if.end41_crit_edge
  br label %return

return:                                           ; preds = %if.end41, %if.end30.return_crit_edge, %land.lhs.true9.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end41 ], [ false, %entry.return_crit_edge ], [ true, %land.lhs.true9.return_crit_edge ], [ false, %if.end30.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_vm_enough_memory_mm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_area_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mapping_map_writable(ptr noundef %mapping) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %i_mmap_writable = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable, i32 noundef 4) #19
  %0 = ptrtoint ptr %i_mmap_writable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_mmap_writable, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %entry
  %c.0.i.i = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i)
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.atomic_inc_unless_negative.exit_crit_edge, label %do.cond3.i.i, !prof !229

do.body1.i.i.atomic_inc_unless_negative.exit_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %atomic_inc_unless_negative.exit

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !243
  tail call void @llvm.prefetch.p0(ptr %i_mmap_writable, i32 1, i32 3, i32 1) #19
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable, ptr %i_mmap_writable, i32 %c.0.i.i, i32 %add.i.i, ptr elementtype(i32) %i_mmap_writable) #19, !srcloc !244
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !245
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.atomic_inc_unless_negative.exit_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !228

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body1.i.i

arch_atomic_cmpxchg.exit.i.i.i.atomic_inc_unless_negative.exit_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %atomic_inc_unless_negative.exit

atomic_inc_unless_negative.exit:                  ; preds = %arch_atomic_cmpxchg.exit.i.i.i.atomic_inc_unless_negative.exit_crit_edge, %do.body1.i.i.atomic_inc_unless_negative.exit_crit_edge
  %c.0.i.i.lobit = ashr i32 %c.0.i.i, 31
  ret i32 %c.0.i.i.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_zero_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vma_link(ptr noundef %mm, ptr noundef %vma, ptr noundef %prev, ptr nocapture noundef writeonly %rb_link, ptr noundef %rb_parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %i_mmap_rwsem.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 6
  tail call void @down_write(ptr noundef %i_mmap_rwsem.i) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mapping.0 = phi ptr [ %3, %if.then ], [ null, %entry.if.end_crit_edge ]
  tail call void @__vma_link_list(ptr noundef %mm, ptr noundef %vma, ptr noundef %prev) #19
  tail call void @__vma_link_rb(ptr noundef %mm, ptr noundef %vma, ptr noundef %rb_link, ptr noundef %rb_parent) #19
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.__vma_link_file.exit_crit_edge, label %if.then.i

if.end.__vma_link_file.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %__vma_link_file.exit

if.then.i:                                        ; preds = %if.end
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_mapping.i, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %i_mmap_writable.i.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %i_mmap_writable.i.i, i32 1, i32 3, i32 1) #19
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i.i, ptr %i_mmap_writable.i.i, i32 1, ptr elementtype(i32) %i_mmap_writable.i.i) #19, !srcloc !233
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages.i) #19
  %i_mmap.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 5
  tail call void @vma_interval_tree_insert(ptr noundef %vma, ptr noundef %i_mmap.i) #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages.i) #19
  br label %__vma_link_file.exit

__vma_link_file.exit:                             ; preds = %if.end.i, %if.end.__vma_link_file.exit_crit_edge
  %tobool2.not = icmp eq ptr %mapping.0, null
  br i1 %tobool2.not, label %__vma_link_file.exit.if.end4_crit_edge, label %if.then3

__vma_link_file.exit.if.end4_crit_edge:           ; preds = %__vma_link_file.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4

if.then3:                                         ; preds = %__vma_link_file.exit
  call void @__sanitizer_cov_trace_pc() #21
  %i_mmap_rwsem.i12 = getelementptr inbounds %struct.address_space, ptr %mapping.0, i32 0, i32 6
  tail call void @up_write(ptr noundef %i_mmap_rwsem.i12) #19
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %__vma_link_file.exit.if.end4_crit_edge
  %map_count = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 13
  %11 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %map_count, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %map_count, align 8
  tail call fastcc void @validate_mm(ptr noundef %mm)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vm_stat_account(ptr noundef %mm, i32 noundef %flags, i32 noundef %npages) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %total_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 19
  %0 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %total_vm, align 8
  %add = add i32 %1, %npages
  store volatile i32 %add, ptr %total_vm, align 8
  %and.i = and i32 %flags, 262
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %exec_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 23
  %2 = ptrtoint ptr %exec_vm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exec_vm, align 4
  %add8 = add i32 %3, %npages
  store i32 %add8, ptr %exec_vm, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %and.i27 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %cmp.i28.not = icmp eq i32 %and.i27, 0
  br i1 %cmp.i28.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %stack_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 24
  %4 = ptrtoint ptr %stack_vm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stack_vm, align 8
  %add11 = add i32 %5, %npages
  store i32 %add11, ptr %stack_vm, align 8
  br label %if.end17

if.else12:                                        ; preds = %if.else
  %and.i29 = and i32 %flags, 266
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i29)
  %cmp.i30 = icmp eq i32 %and.i29, 2
  br i1 %cmp.i30, label %if.then14, label %if.else12.if.end17_crit_edge

if.else12.if.end17_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then14:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #21
  %data_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 22
  %6 = ptrtoint ptr %data_vm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_vm, align 8
  %add15 = add i32 %7, %npages
  store i32 %add15, ptr %data_vm, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else12.if.end17_crit_edge, %if.then10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unmap_region(ptr noundef %mm, ptr noundef %vma, ptr noundef readonly %prev, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  %tlb = alloca %struct.mmu_gather, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %prev, null
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 2
  %retval.0.in.i = select i1 %tobool.not.i, ptr %mm, ptr %vm_next.i
  %0 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tlb) #19
  %1 = call ptr @memset(ptr %tlb, i32 255, i32 68)
  tail call void @lru_add_drain() #19
  call void @tlb_gather_mmu(ptr noundef nonnull %tlb, ptr noundef %mm) #19
  %rss_stat.i.i.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 40
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i.i, i32 noundef 4) #19
  %2 = ptrtoint ptr %rss_stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rss_stat.i.i.i, align 4
  %4 = call i32 @llvm.smax.i32(i32 %3, i32 0) #19
  %arrayidx.i.i.i = getelementptr %struct.anon.15, ptr %mm, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #19
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0) #19
  %add.i.i = add nuw i32 %7, %4
  %arrayidx.i9.i.i = getelementptr %struct.anon.15, ptr %mm, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i.i, i32 noundef 4) #19
  %8 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i9.i.i, align 4
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 0) #19
  %add3.i.i = add i32 %add.i.i, %10
  %hiwater_rss.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 17
  %11 = ptrtoint ptr %hiwater_rss.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hiwater_rss.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add3.i.i)
  %cmp.i = icmp ult i32 %12, %add3.i.i
  br i1 %cmp.i, label %if.then.i, label %entry.update_hiwater_rss.exit_crit_edge

entry.update_hiwater_rss.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %update_hiwater_rss.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %13 = ptrtoint ptr %hiwater_rss.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add3.i.i, ptr %hiwater_rss.i, align 8
  br label %update_hiwater_rss.exit

update_hiwater_rss.exit:                          ; preds = %if.then.i, %entry.update_hiwater_rss.exit_crit_edge
  call void @unmap_vmas(ptr noundef nonnull %tlb, ptr noundef %vma, i32 noundef %start, i32 noundef %end) #19
  br i1 %tobool.not.i, label %update_hiwater_rss.exit.cond.end_crit_edge, label %cond.true

update_hiwater_rss.exit.cond.end_crit_edge:       ; preds = %update_hiwater_rss.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

cond.true:                                        ; preds = %update_hiwater_rss.exit
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %prev, i32 0, i32 1
  %14 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %update_hiwater_rss.exit.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.true ], [ 8192, %update_hiwater_rss.exit.cond.end_crit_edge ]
  %tobool1.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool1.not, label %cond.end.cond.end4_crit_edge, label %cond.true2

cond.end.cond.end4_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end4

cond.true2:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.true2, %cond.end.cond.end4_crit_edge
  %cond5 = phi i32 [ %17, %cond.true2 ], [ 0, %cond.end.cond.end4_crit_edge ]
  call void @free_pgtables(ptr noundef nonnull %tlb, ptr noundef %vma, i32 noundef %cond, i32 noundef %cond5) #19
  call void @tlb_finish_mmu(ptr noundef nonnull %tlb) #19
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tlb) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vm_unmapped_area(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i6 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i6 to ptr
  %task.i7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i7, align 8
  %mm1.i8 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm1.i8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm1.i8, align 8
  %length2.i9 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %length2.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length2.i9, align 4
  %align_mask.i10 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 4
  %10 = ptrtoint ptr %align_mask.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align_mask.i10, align 4
  %add.i11 = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i11, i32 %9)
  %cmp.i12 = icmp ult i32 %add.i11, %9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i12, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %high_limit4.i = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %high_limit4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %high_limit4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add.i11)
  %cmp5.i = icmp ult i32 %13, %add.i11
  br i1 %cmp5.i, label %if.end.i.if.end_crit_edge, label %if.end7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  %sub.i = sub i32 %13, %add.i11
  %low_limit8.i = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %low_limit8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %low_limit8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub.i)
  %cmp9.i = icmp ugt i32 %15, %sub.i
  br i1 %cmp9.i, label %if.end7.i.if.end_crit_edge, label %if.end11.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end11.i:                                       ; preds = %if.end7.i
  %add13.i = add i32 %15, %add.i11
  %highest_vm_end.i = getelementptr inbounds %struct.anon.15, ptr %7, i32 0, i32 7
  %16 = ptrtoint ptr %highest_vm_end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %highest_vm_end.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub.i)
  %cmp14.not.i = icmp ugt i32 %17, %sub.i
  br i1 %cmp14.not.i, label %do.end.i, label %if.end11.i.found_highest.i_crit_edge

if.end11.i.found_highest.i_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %found_highest.i

do.end.i:                                         ; preds = %if.end11.i
  %mm_rb.i = getelementptr inbounds %struct.anon.15, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %mm_rb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %mm_rb.i, align 4
  %cmp17.i = icmp eq ptr %19, null
  br i1 %cmp17.i, label %do.end.i.if.end_crit_edge, label %if.end19.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end19.i:                                       ; preds = %do.end.i
  %rb_subtree_gap.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %rb_subtree_gap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb_subtree_gap.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i11)
  %cmp23.i = icmp ult i32 %21, %add.i11
  br i1 %cmp23.i, label %if.end19.i.if.end_crit_edge, label %if.end19.i.while.cond.i_crit_edge

if.end19.i.while.cond.i_crit_edge:                ; preds = %if.end19.i
  br label %while.cond.i

if.end19.i.if.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end19.i.while.cond.i_crit_edge
  %.pn.pn.i = phi ptr [ %.pn.pn.i.be, %while.cond.i.backedge ], [ %19, %if.end19.i.while.cond.i_crit_edge ]
  %vma.0.i = getelementptr i8, ptr %.pn.pn.i, i32 -16
  %vm_prev.i = getelementptr i8, ptr %.pn.pn.i, i32 -4
  %22 = ptrtoint ptr %vm_prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm_prev.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %while.cond.i.land.lhs.true.i_crit_edge, label %cond.end.i

while.cond.i.land.lhs.true.i_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

cond.end.i:                                       ; preds = %while.cond.i
  %vm_end1.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %vm_end1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_end1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %sub.i)
  %cmp28.not.i = icmp ugt i32 %25, %sub.i
  br i1 %cmp28.not.i, label %cond.end.i.check_current.i.preheader_crit_edge, label %cond.end.i.land.lhs.true.i_crit_edge

cond.end.i.land.lhs.true.i_crit_edge:             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i

cond.end.i.check_current.i.preheader_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_current.i.preheader

land.lhs.true.i:                                  ; preds = %cond.end.i.land.lhs.true.i_crit_edge, %while.cond.i.land.lhs.true.i_crit_edge
  %cond217.i = phi i32 [ %25, %cond.end.i.land.lhs.true.i_crit_edge ], [ 0, %while.cond.i.land.lhs.true.i_crit_edge ]
  %rb_right.i = getelementptr i8, ptr %.pn.pn.i, i32 4
  %26 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rb_right.i, align 4
  %tobool29.not.i = icmp eq ptr %27, null
  br i1 %tobool29.not.i, label %land.lhs.true.i.check_current.i.preheader_crit_edge, label %if.then30.i

land.lhs.true.i.check_current.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_current.i.preheader

if.then30.i:                                      ; preds = %land.lhs.true.i
  %rb_subtree_gap36.i = getelementptr i8, ptr %27, i32 12
  %28 = ptrtoint ptr %rb_subtree_gap36.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rb_subtree_gap36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add.i11)
  %cmp37.not.i = icmp ult i32 %29, %add.i11
  br i1 %cmp37.not.i, label %if.then30.i.check_current.i.preheader_crit_edge, label %if.then30.i.while.cond.i.backedge_crit_edge

if.then30.i.while.cond.i.backedge_crit_edge:      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i.backedge

if.then30.i.check_current.i.preheader_crit_edge:  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_current.i.preheader

while.cond.i.backedge:                            ; preds = %if.then55.i.while.cond.i.backedge_crit_edge, %if.then30.i.while.cond.i.backedge_crit_edge
  %.pn.pn.i.be = phi ptr [ %27, %if.then30.i.while.cond.i.backedge_crit_edge ], [ %37, %if.then55.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

check_current.i.preheader:                        ; preds = %if.then30.i.check_current.i.preheader_crit_edge, %land.lhs.true.i.check_current.i.preheader_crit_edge, %cond.end.i.check_current.i.preheader_crit_edge
  %gap_start.0.i.ph = phi i32 [ %25, %cond.end.i.check_current.i.preheader_crit_edge ], [ %cond217.i, %land.lhs.true.i.check_current.i.preheader_crit_edge ], [ %cond217.i, %if.then30.i.check_current.i.preheader_crit_edge ]
  br label %check_current.i

check_current.i:                                  ; preds = %check_current.i.backedge, %check_current.i.preheader
  %gap_start.0.i = phi i32 [ %gap_start.0.i.ph, %check_current.i.preheader ], [ %gap_start.0.i.be, %check_current.i.backedge ]
  %vma.3.i = phi ptr [ %vma.0.i, %check_current.i.preheader ], [ %add.ptr79.i, %check_current.i.backedge ]
  %30 = ptrtoint ptr %vma.3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vma.3.i, align 4
  %vm_flags.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.3.i, i32 0, i32 8
  %32 = ptrtoint ptr %vm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_flags.i.i, align 4
  %and.i213.i = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i213.i)
  %tobool.not.i.i = icmp eq i32 %and.i213.i, 0
  br i1 %tobool.not.i.i, label %check_current.i.vm_start_gap.exit.i_crit_edge, label %if.then.i.i

check_current.i.vm_start_gap.exit.i_crit_edge:    ; preds = %check_current.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i

if.then.i.i:                                      ; preds = %check_current.i
  call void @__sanitizer_cov_trace_pc() #21
  %34 = load i32, ptr @stack_guard_gap, align 4
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %31, i32 %34) #19
  br label %vm_start_gap.exit.i

vm_start_gap.exit.i:                              ; preds = %if.then.i.i, %check_current.i.vm_start_gap.exit.i_crit_edge
  %vm_start.0.i.i = phi i32 [ %35, %if.then.i.i ], [ %31, %check_current.i.vm_start_gap.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %vm_start.0.i.i, i32 %add13.i)
  %cmp42.i = icmp ult i32 %vm_start.0.i.i, %add13.i
  br i1 %cmp42.i, label %vm_start_gap.exit.i.if.end_crit_edge, label %if.end44.i

vm_start_gap.exit.i.if.end_crit_edge:             ; preds = %vm_start_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end44.i:                                       ; preds = %vm_start_gap.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %gap_start.0.i, i32 %sub.i)
  %cmp45.not.i = icmp ugt i32 %gap_start.0.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %vm_start.0.i.i, i32 %gap_start.0.i)
  %cmp47.i = icmp ule i32 %vm_start.0.i.i, %gap_start.0.i
  %or.cond.i = select i1 %cmp45.not.i, i1 true, i1 %cmp47.i
  %sub49.i = sub i32 %vm_start.0.i.i, %gap_start.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub49.i, i32 %add.i11)
  %cmp50.not.i = icmp ult i32 %sub49.i, %add.i11
  %or.cond212.i = select i1 %or.cond.i, i1 true, i1 %cmp50.not.i
  br i1 %or.cond212.i, label %if.end52.i, label %found.i

if.end52.i:                                       ; preds = %if.end44.i
  %rb_left.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.3.i, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rb_left.i, align 4
  %tobool54.not.i = icmp eq ptr %37, null
  br i1 %tobool54.not.i, label %if.end52.i.while.cond69.i.preheader_crit_edge, label %if.then55.i

if.end52.i.while.cond69.i.preheader_crit_edge:    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond69.i.preheader

if.then55.i:                                      ; preds = %if.end52.i
  %rb_subtree_gap61.i = getelementptr i8, ptr %37, i32 12
  %38 = ptrtoint ptr %rb_subtree_gap61.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rb_subtree_gap61.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add.i11)
  %cmp62.not.i = icmp ult i32 %39, %add.i11
  br i1 %cmp62.not.i, label %if.then55.i.while.cond69.i.preheader_crit_edge, label %if.then55.i.while.cond.i.backedge_crit_edge

if.then55.i.while.cond.i.backedge_crit_edge:      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i.backedge

if.then55.i.while.cond69.i.preheader_crit_edge:   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond69.i.preheader

while.cond69.i.preheader:                         ; preds = %if.then55.i.while.cond69.i.preheader_crit_edge, %if.end52.i.while.cond69.i.preheader_crit_edge
  br label %while.cond69.i

while.cond69.i:                                   ; preds = %if.end74.i.while.cond69.i_crit_edge, %while.cond69.i.preheader
  %vma.6.i = phi ptr [ %add.ptr79.i, %if.end74.i.while.cond69.i_crit_edge ], [ %vma.3.i, %while.cond69.i.preheader ]
  %vm_rb71.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.6.i, i32 0, i32 4
  %40 = ptrtoint ptr %vm_rb71.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_rb71.i, align 4
  %and.i = and i32 %41, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool72.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool72.not.i, label %while.cond69.i.if.end_crit_edge, label %if.end74.i

while.cond69.i.if.end_crit_edge:                  ; preds = %while.cond69.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end74.i:                                       ; preds = %while.cond69.i
  %42 = inttoptr i32 %and.i to ptr
  %add.ptr79.i = getelementptr i8, ptr %42, i32 -16
  %rb_right81.i = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %rb_right81.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rb_right81.i, align 4
  %cmp82.i = icmp eq ptr %vm_rb71.i, %44
  br i1 %cmp82.i, label %if.then83.i, label %if.end74.i.while.cond69.i_crit_edge

if.end74.i.while.cond69.i_crit_edge:              ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond69.i

if.then83.i:                                      ; preds = %if.end74.i
  %45 = inttoptr i32 %and.i to ptr
  %vm_prev84.i = getelementptr i8, ptr %45, i32 -4
  %46 = ptrtoint ptr %vm_prev84.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vm_prev84.i, align 4
  %tobool85.not.i = icmp eq ptr %47, null
  br i1 %tobool85.not.i, label %if.then83.i.check_current.i.backedge_crit_edge, label %cond.true86.i

if.then83.i.check_current.i.backedge_crit_edge:   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_current.i.backedge

cond.true86.i:                                    ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i214.i = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %vm_end1.i214.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vm_end1.i214.i, align 4
  br label %check_current.i.backedge

check_current.i.backedge:                         ; preds = %cond.true86.i, %if.then83.i.check_current.i.backedge_crit_edge
  %gap_start.0.i.be = phi i32 [ %49, %cond.true86.i ], [ 0, %if.then83.i.check_current.i.backedge_crit_edge ]
  br label %check_current.i

found.i:                                          ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #21
  %50 = tail call i32 @llvm.umin.i32(i32 %vm_start.0.i.i, i32 %13) #19
  br label %found_highest.i

found_highest.i:                                  ; preds = %found.i, %if.end11.i.found_highest.i_crit_edge
  %gap_end.0.i = phi i32 [ %13, %if.end11.i.found_highest.i_crit_edge ], [ %50, %found.i ]
  %gap_start.3.i = phi i32 [ %17, %if.end11.i.found_highest.i_crit_edge ], [ %gap_start.0.i, %found.i ]
  %sub102.i = sub i32 %gap_end.0.i, %9
  %align_offset.i = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 5
  %51 = ptrtoint ptr %align_offset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %align_offset.i, align 4
  %sub103.i = sub i32 %sub102.i, %52
  %and105.i = and i32 %sub103.i, %11
  %sub106.i = sub i32 %sub102.i, %and105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub106.i, i32 %15)
  %cmp109.i = icmp ult i32 %sub106.i, %15
  br i1 %cmp109.i, label %do.body113.i, label %do.body122.i, !prof !229

do.body113.i:                                     ; preds = %found_highest.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2095, 0\0A.popsection", ""() #19, !srcloc !246
  unreachable

do.body122.i:                                     ; preds = %found_highest.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub106.i, i32 %gap_start.3.i)
  %cmp123.i = icmp ult i32 %sub106.i, %gap_start.3.i
  br i1 %cmp123.i, label %do.body131.i, label %do.body122.i.if.end_crit_edge, !prof !229

do.body122.i.if.end_crit_edge:                    ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.body131.i:                                     ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2096, 0\0A.popsection", ""() #19, !srcloc !247
  unreachable

if.else:                                          ; preds = %entry
  br i1 %cmp.i12, label %if.else.if.end_crit_edge, label %if.end.i15

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i15:                                       ; preds = %if.else
  %high_limit4.i13 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 3
  %53 = ptrtoint ptr %high_limit4.i13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %high_limit4.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add.i11)
  %cmp5.i14 = icmp ult i32 %54, %add.i11
  br i1 %cmp5.i14, label %if.end.i15.if.end_crit_edge, label %if.end7.i17

if.end.i15.if.end_crit_edge:                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end7.i17:                                      ; preds = %if.end.i15
  %sub.i16 = sub i32 %54, %add.i11
  %low_limit9.i = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 2
  %55 = ptrtoint ptr %low_limit9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %low_limit9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %sub.i16)
  %cmp10.i = icmp ugt i32 %56, %sub.i16
  br i1 %cmp10.i, label %if.end7.i17.if.end_crit_edge, label %if.end12.i

if.end7.i17.if.end_crit_edge:                     ; preds = %if.end7.i17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end12.i:                                       ; preds = %if.end7.i17
  %add14.i = add i32 %56, %add.i11
  %mm_rb.i18 = getelementptr inbounds %struct.anon.15, ptr %7, i32 0, i32 1
  %57 = ptrtoint ptr %mm_rb.i18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %mm_rb.i18, align 4
  %cmp15.i = icmp eq ptr %58, null
  br i1 %cmp15.i, label %if.end12.i.check_highest.i_crit_edge, label %if.end17.i

if.end12.i.check_highest.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_highest.i

if.end17.i:                                       ; preds = %if.end12.i
  %rb_subtree_gap.i19 = getelementptr i8, ptr %58, i32 12
  %59 = ptrtoint ptr %rb_subtree_gap.i19 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rb_subtree_gap.i19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add.i11)
  %cmp21.i = icmp ult i32 %60, %add.i11
  br i1 %cmp21.i, label %if.end17.i.check_highest.i_crit_edge, label %if.end17.i.while.cond.i24_crit_edge

if.end17.i.while.cond.i24_crit_edge:              ; preds = %if.end17.i
  br label %while.cond.i24

if.end17.i.check_highest.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_highest.i

while.cond.i24:                                   ; preds = %while.cond.i24.backedge, %if.end17.i.while.cond.i24_crit_edge
  %.pn.pn.i20 = phi ptr [ %.pn.pn.i20.be, %while.cond.i24.backedge ], [ %58, %if.end17.i.while.cond.i24_crit_edge ]
  %vma.0.i21 = getelementptr i8, ptr %.pn.pn.i20, i32 -16
  %61 = ptrtoint ptr %vma.0.i21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vma.0.i21, align 4
  %vm_flags.i.i22 = getelementptr i8, ptr %.pn.pn.i20, i32 24
  %63 = ptrtoint ptr %vm_flags.i.i22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vm_flags.i.i22, align 4
  %and.i209.i = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209.i)
  %tobool.not.i.i23 = icmp eq i32 %and.i209.i, 0
  br i1 %tobool.not.i.i23, label %while.cond.i24.vm_start_gap.exit.i27_crit_edge, label %if.then.i.i25

while.cond.i24.vm_start_gap.exit.i27_crit_edge:   ; preds = %while.cond.i24
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i27

if.then.i.i25:                                    ; preds = %while.cond.i24
  call void @__sanitizer_cov_trace_pc() #21
  %65 = load i32, ptr @stack_guard_gap, align 4
  %66 = tail call i32 @llvm.usub.sat.i32(i32 %62, i32 %65) #19
  br label %vm_start_gap.exit.i27

vm_start_gap.exit.i27:                            ; preds = %if.then.i.i25, %while.cond.i24.vm_start_gap.exit.i27_crit_edge
  %vm_start.0.i.i26 = phi i32 [ %66, %if.then.i.i25 ], [ %62, %while.cond.i24.vm_start_gap.exit.i27_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %vm_start.0.i.i26, i32 %add14.i)
  %cmp25.not.i = icmp ult i32 %vm_start.0.i.i26, %add14.i
  br i1 %cmp25.not.i, label %vm_start_gap.exit.i27.if.end36.i_crit_edge, label %land.lhs.true.i30

vm_start_gap.exit.i27.if.end36.i_crit_edge:       ; preds = %vm_start_gap.exit.i27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36.i

land.lhs.true.i30:                                ; preds = %vm_start_gap.exit.i27
  %rb_left.i28 = getelementptr i8, ptr %.pn.pn.i20, i32 8
  %67 = ptrtoint ptr %rb_left.i28 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rb_left.i28, align 4
  %tobool.not.i29 = icmp eq ptr %68, null
  br i1 %tobool.not.i29, label %land.lhs.true.i30.if.end36.i_crit_edge, label %if.then26.i

land.lhs.true.i30.if.end36.i_crit_edge:           ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36.i

if.then26.i:                                      ; preds = %land.lhs.true.i30
  %rb_subtree_gap32.i = getelementptr i8, ptr %68, i32 12
  %69 = ptrtoint ptr %rb_subtree_gap32.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rb_subtree_gap32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %add.i11)
  %cmp33.not.i = icmp ult i32 %70, %add.i11
  br i1 %cmp33.not.i, label %if.then26.i.if.end36.i_crit_edge, label %if.then26.i.while.cond.i24.backedge_crit_edge

if.then26.i.while.cond.i24.backedge_crit_edge:    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i24.backedge

if.then26.i.if.end36.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36.i

while.cond.i24.backedge:                          ; preds = %if.then53.i.while.cond.i24.backedge_crit_edge, %if.then26.i.while.cond.i24.backedge_crit_edge
  %.pn.pn.i20.be = phi ptr [ %68, %if.then26.i.while.cond.i24.backedge_crit_edge ], [ %76, %if.then53.i.while.cond.i24.backedge_crit_edge ]
  br label %while.cond.i24

if.end36.i:                                       ; preds = %if.then26.i.if.end36.i_crit_edge, %land.lhs.true.i30.if.end36.i_crit_edge, %vm_start_gap.exit.i27.if.end36.i_crit_edge
  %vm_prev.i33 = getelementptr i8, ptr %.pn.pn.i20, i32 -4
  %71 = ptrtoint ptr %vm_prev.i33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vm_prev.i33, align 4
  %tobool37.not.i = icmp eq ptr %72, null
  br i1 %tobool37.not.i, label %if.end36.i.if.end42.i.preheader_crit_edge, label %cond.end.i35

if.end36.i.if.end42.i.preheader_crit_edge:        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.preheader

cond.end.i35:                                     ; preds = %if.end36.i
  %vm_end1.i.i34 = getelementptr inbounds %struct.vm_area_struct, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %vm_end1.i.i34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vm_end1.i.i34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %sub.i16)
  %cmp40233.i = icmp ugt i32 %74, %sub.i16
  br i1 %cmp40233.i, label %cond.end.i35.if.end_crit_edge, label %cond.end.i35.if.end42.i.preheader_crit_edge

cond.end.i35.if.end42.i.preheader_crit_edge:      ; preds = %cond.end.i35
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.preheader

cond.end.i35.if.end_crit_edge:                    ; preds = %cond.end.i35
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end42.i.preheader:                             ; preds = %cond.end.i35.if.end42.i.preheader_crit_edge, %if.end36.i.if.end42.i.preheader_crit_edge
  %gap_start.0235.i.ph = phi i32 [ 0, %if.end36.i.if.end42.i.preheader_crit_edge ], [ %74, %cond.end.i35.if.end42.i.preheader_crit_edge ]
  br label %if.end42.i

check_current.loopexit.i36:                       ; preds = %if.then.i214.i, %if.then81.i.check_current.loopexit.i36_crit_edge
  %gap_end.2.ph.i = phi i32 [ %94, %if.then.i214.i ], [ %90, %if.then81.i.check_current.loopexit.i36_crit_edge ]
  %cmp40.i = icmp ugt i32 %88, %sub.i16
  br i1 %cmp40.i, label %check_current.loopexit.i36.if.end_crit_edge, label %check_current.loopexit.i36.if.end42.i_crit_edge

check_current.loopexit.i36.if.end42.i_crit_edge:  ; preds = %check_current.loopexit.i36
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i

check_current.loopexit.i36.if.end_crit_edge:      ; preds = %check_current.loopexit.i36
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end42.i:                                       ; preds = %check_current.loopexit.i36.if.end42.i_crit_edge, %if.end42.i.preheader
  %vma.3236.i = phi ptr [ %add.ptr77.i, %check_current.loopexit.i36.if.end42.i_crit_edge ], [ %vma.0.i21, %if.end42.i.preheader ]
  %gap_start.0235.i = phi i32 [ %88, %check_current.loopexit.i36.if.end42.i_crit_edge ], [ %gap_start.0235.i.ph, %if.end42.i.preheader ]
  %gap_end.0234.i = phi i32 [ %gap_end.2.ph.i, %check_current.loopexit.i36.if.end42.i_crit_edge ], [ %vm_start.0.i.i26, %if.end42.i.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %gap_end.0234.i, i32 %add14.i)
  %cmp43.not.i = icmp ult i32 %gap_end.0234.i, %add14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %gap_end.0234.i, i32 %gap_start.0235.i)
  %cmp45.i = icmp ule i32 %gap_end.0234.i, %gap_start.0235.i
  %or.cond.i37 = select i1 %cmp43.not.i, i1 true, i1 %cmp45.i
  %sub47.i = sub i32 %gap_end.0234.i, %gap_start.0235.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub47.i, i32 %add.i11)
  %cmp48.not.i = icmp ult i32 %sub47.i, %add.i11
  %or.cond208.i = select i1 %or.cond.i37, i1 true, i1 %cmp48.not.i
  br i1 %or.cond208.i, label %if.end50.i, label %if.end42.i.found.i44_crit_edge

if.end42.i.found.i44_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %found.i44

if.end50.i:                                       ; preds = %if.end42.i
  %rb_right.i38 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.3236.i, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %rb_right.i38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rb_right.i38, align 4
  %tobool52.not.i = icmp eq ptr %76, null
  br i1 %tobool52.not.i, label %if.end50.i.while.cond67.i.preheader_crit_edge, label %if.then53.i

if.end50.i.while.cond67.i.preheader_crit_edge:    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond67.i.preheader

if.then53.i:                                      ; preds = %if.end50.i
  %rb_subtree_gap59.i = getelementptr i8, ptr %76, i32 12
  %77 = ptrtoint ptr %rb_subtree_gap59.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rb_subtree_gap59.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add.i11)
  %cmp60.not.i = icmp ult i32 %78, %add.i11
  br i1 %cmp60.not.i, label %if.then53.i.while.cond67.i.preheader_crit_edge, label %if.then53.i.while.cond.i24.backedge_crit_edge

if.then53.i.while.cond.i24.backedge_crit_edge:    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i24.backedge

if.then53.i.while.cond67.i.preheader_crit_edge:   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond67.i.preheader

while.cond67.i.preheader:                         ; preds = %if.then53.i.while.cond67.i.preheader_crit_edge, %if.end50.i.while.cond67.i.preheader_crit_edge
  br label %while.cond67.i

while.cond67.i:                                   ; preds = %if.end72.i.while.cond67.i_crit_edge, %while.cond67.i.preheader
  %vma.6.i39 = phi ptr [ %add.ptr77.i, %if.end72.i.while.cond67.i_crit_edge ], [ %vma.3236.i, %while.cond67.i.preheader ]
  %vm_rb69.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.6.i39, i32 0, i32 4
  %79 = ptrtoint ptr %vm_rb69.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vm_rb69.i, align 4
  %and.i40 = and i32 %80, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool70.not.i = icmp eq i32 %and.i40, 0
  br i1 %tobool70.not.i, label %while.cond67.i.check_highest.i_crit_edge, label %if.end72.i

while.cond67.i.check_highest.i_crit_edge:         ; preds = %while.cond67.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_highest.i

if.end72.i:                                       ; preds = %while.cond67.i
  %81 = inttoptr i32 %and.i40 to ptr
  %add.ptr77.i = getelementptr i8, ptr %81, i32 -16
  %rb_left79.i = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %rb_left79.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rb_left79.i, align 4
  %cmp80.i = icmp eq ptr %vm_rb69.i, %83
  br i1 %cmp80.i, label %if.then81.i, label %if.end72.i.while.cond67.i_crit_edge

if.end72.i.while.cond67.i_crit_edge:              ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond67.i

if.then81.i:                                      ; preds = %if.end72.i
  %84 = inttoptr i32 %and.i40 to ptr
  %vm_prev82.i = getelementptr i8, ptr %84, i32 -4
  %85 = ptrtoint ptr %vm_prev82.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vm_prev82.i, align 4
  %vm_end1.i210.i = getelementptr inbounds %struct.vm_area_struct, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %vm_end1.i210.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vm_end1.i210.i, align 4
  %89 = ptrtoint ptr %add.ptr77.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr77.i, align 4
  %vm_flags.i211.i = getelementptr i8, ptr %84, i32 24
  %91 = ptrtoint ptr %vm_flags.i211.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vm_flags.i211.i, align 4
  %and.i212.i = and i32 %92, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i212.i)
  %tobool.not.i213.i = icmp eq i32 %and.i212.i, 0
  br i1 %tobool.not.i213.i, label %if.then81.i.check_current.loopexit.i36_crit_edge, label %if.then.i214.i

if.then81.i.check_current.loopexit.i36_crit_edge: ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %check_current.loopexit.i36

if.then.i214.i:                                   ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #21
  %93 = load i32, ptr @stack_guard_gap, align 4
  %94 = tail call i32 @llvm.usub.sat.i32(i32 %90, i32 %93) #19
  br label %check_current.loopexit.i36

check_highest.i:                                  ; preds = %while.cond67.i.check_highest.i_crit_edge, %if.end17.i.check_highest.i_crit_edge, %if.end12.i.check_highest.i_crit_edge
  %highest_vm_end.i41 = getelementptr inbounds %struct.anon.15, ptr %7, i32 0, i32 7
  %95 = ptrtoint ptr %highest_vm_end.i41 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %highest_vm_end.i41, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %sub.i16)
  %cmp89.i = icmp ugt i32 %96, %sub.i16
  br i1 %cmp89.i, label %check_highest.i.if.end_crit_edge, label %check_highest.i.found.i44_crit_edge

check_highest.i.found.i44_crit_edge:              ; preds = %check_highest.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %found.i44

check_highest.i.if.end_crit_edge:                 ; preds = %check_highest.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

found.i44:                                        ; preds = %check_highest.i.found.i44_crit_edge, %if.end42.i.found.i44_crit_edge
  %gap_end.3.i = phi i32 [ -1, %check_highest.i.found.i44_crit_edge ], [ %gap_end.0234.i, %if.end42.i.found.i44_crit_edge ]
  %gap_start.3.i42 = phi i32 [ %96, %check_highest.i.found.i44_crit_edge ], [ %gap_start.0235.i, %if.end42.i.found.i44_crit_edge ]
  %97 = tail call i32 @llvm.umax.i32(i32 %gap_start.3.i42, i32 %56) #19
  %align_offset.i43 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %info, i32 0, i32 5
  %98 = ptrtoint ptr %align_offset.i43 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %align_offset.i43, align 4
  %sub97.i = sub i32 %99, %97
  %and99.i = and i32 %sub97.i, %11
  %add100.i = add i32 %and99.i, %97
  %add103.i = add i32 %add100.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add103.i, i32 %54)
  %cmp105.i = icmp ugt i32 %add103.i, %54
  br i1 %cmp105.i, label %do.body109.i, label %do.body118.i, !prof !229

do.body109.i:                                     ; preds = %found.i44
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1996, 0\0A.popsection", ""() #19, !srcloc !248
  unreachable

do.body118.i:                                     ; preds = %found.i44
  call void @__sanitizer_cov_trace_cmp4(i32 %add103.i, i32 %gap_end.3.i)
  %cmp121.i = icmp ugt i32 %add103.i, %gap_end.3.i
  br i1 %cmp121.i, label %do.body129.i, label %do.body118.i.if.end_crit_edge, !prof !229

do.body118.i.if.end_crit_edge:                    ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.body129.i:                                     ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1997, 0\0A.popsection", ""() #19, !srcloc !249
  unreachable

if.end:                                           ; preds = %do.body118.i.if.end_crit_edge, %check_highest.i.if.end_crit_edge, %check_current.loopexit.i36.if.end_crit_edge, %cond.end.i35.if.end_crit_edge, %if.end7.i17.if.end_crit_edge, %if.end.i15.if.end_crit_edge, %if.else.if.end_crit_edge, %do.body122.i.if.end_crit_edge, %while.cond69.i.if.end_crit_edge, %vm_start_gap.exit.i.if.end_crit_edge, %if.end19.i.if.end_crit_edge, %do.end.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %addr.0 = phi i32 [ -12, %if.then.if.end_crit_edge ], [ -12, %if.end.i.if.end_crit_edge ], [ -12, %if.end7.i.if.end_crit_edge ], [ -12, %do.end.i.if.end_crit_edge ], [ -12, %if.end19.i.if.end_crit_edge ], [ %sub106.i, %do.body122.i.if.end_crit_edge ], [ -12, %if.else.if.end_crit_edge ], [ -12, %if.end.i15.if.end_crit_edge ], [ -12, %if.end7.i17.if.end_crit_edge ], [ -12, %check_highest.i.if.end_crit_edge ], [ %add100.i, %do.body118.i.if.end_crit_edge ], [ -12, %check_current.loopexit.i36.if.end_crit_edge ], [ -12, %cond.end.i35.if.end_crit_edge ], [ -12, %while.cond69.i.if.end_crit_edge ], [ -12, %vm_start_gap.exit.i.if.end_crit_edge ]
  tail call fastcc void @trace_vm_unmapped_area(i32 noundef %addr.0, ptr noundef %info)
  ret i32 %addr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_vm_unmapped_area(i32 noundef %addr, ptr noundef %info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vm_unmapped_area, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_vm_unmapped_area, %do.body)) #19
          to label %if.end48 [label %do.body], !srcloc !232

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !228

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !250
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vm_unmapped_area, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %addr, ptr noundef %info) #19
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !251
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !251
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !228

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 108, i32 noundef 9, ptr noundef null) #19
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !252
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vm_unmapped_area, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_vm_unmapped_area.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @trace_vm_unmapped_area.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 44, ptr noundef nonnull @.str.64) #19
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !253
  %38 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_mmap_addr(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_vma(ptr noundef %mm, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !229

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 155, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #19
  %1 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !229

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_mm(ptr noundef %mm) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #19, !srcloc !254
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  %call = tail call ptr @vmacache_find(ptr noundef %mm, i32 noundef %addr) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %mmap_assert_locked.exit.cleanup14_crit_edge, !prof !229

mmap_assert_locked.exit.cleanup14_crit_edge:      ; preds = %mmap_assert_locked.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

if.end:                                           ; preds = %mmap_assert_locked.exit
  %mm_rb = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 1
  %3 = ptrtoint ptr %mm_rb to i32
  call void @__asan_load4_noabort(i32 %3)
  %rb_node.034 = load ptr, ptr %mm_rb, align 4
  %tobool4.not35 = icmp eq ptr %rb_node.034, null
  br i1 %tobool4.not35, label %if.end.cleanup14_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %rb_node.037 = phi ptr [ %rb_node.0, %cleanup.while.body_crit_edge ], [ %rb_node.034, %if.end.while.body_crit_edge ]
  %vma.036 = phi ptr [ %vma.1, %cleanup.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %rb_node.037, i32 -16
  %vm_end = getelementptr i8, ptr %rb_node.037, i32 -12
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %addr)
  %cmp = icmp ugt i32 %5, %addr
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp7.not = icmp ugt i32 %7, %addr
  br i1 %cmp7.not, label %if.end9, label %if.then6.while.end_crit_edge

if.then6.while.end_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb_node.037, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb_node.037, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end9
  %vma.1 = phi ptr [ %add.ptr, %if.end9 ], [ %vma.036, %if.else ]
  %rb_node.1.in = phi ptr [ %rb_left, %if.end9 ], [ %rb_right, %if.else ]
  %8 = ptrtoint ptr %rb_node.1.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %rb_node.0 = load ptr, ptr %rb_node.1.in, align 4
  %tobool4.not = icmp eq ptr %rb_node.0, null
  br i1 %tobool4.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then6.while.end_crit_edge
  %vma.3 = phi ptr [ %vma.1, %cleanup.while.end_crit_edge ], [ %add.ptr, %if.then6.while.end_crit_edge ]
  %tobool11.not = icmp eq ptr %vma.3, null
  br i1 %tobool11.not, label %while.end.cleanup14_crit_edge, label %if.then12

while.end.cleanup14_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

if.then12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @vmacache_update(i32 noundef %addr, ptr noundef nonnull %vma.3) #19
  br label %cleanup14

cleanup14:                                        ; preds = %if.then12, %while.end.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %mmap_assert_locked.exit.cleanup14_crit_edge
  %retval.0 = phi ptr [ %call, %mmap_assert_locked.exit.cleanup14_crit_edge ], [ %vma.3, %if.then12 ], [ null, %while.end.cleanup14_crit_edge ], [ null, %if.end.cleanup14_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmacache_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmacache_update(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_vma_prev(ptr noundef %mm, i32 noundef %addr, ptr nocapture noundef writeonly %pprev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_vma(ptr noundef %mm, i32 noundef %addr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_prev, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %mm_rb = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 1
  %call1 = tail call ptr @rb_last(ptr noundef %mm_rb) #19
  %tobool2.not = icmp eq ptr %call1, null
  %add.ptr = getelementptr i8, ptr %call1, i32 -16
  %spec.select = select i1 %tobool2.not, ptr null, ptr %add.ptr
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %spec.select, %if.else ], [ %1, %if.then ]
  %2 = ptrtoint ptr %pprev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %storemerge, ptr %pprev, align 4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @expand_downwards(ptr noundef %vma, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %and = and i32 %address, -4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %2 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %2)
  %cmp = icmp ult i32 %and, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 3
  %3 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_prev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_flags, align 4
  %and1 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and.i = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond = and i1 %tobool2.not, %tobool.i
  br i1 %or.cond, label %if.then4, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %and, %8
  %9 = load i32, ptr @stack_guard_gap, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp5 = icmp ult i32 %sub, %9
  br i1 %cmp5, label %if.then4.cleanup_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %10 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %anon_vma.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %anon_vma_prepare.exit, label %if.end8.if.end14_crit_edge, !prof !229

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

anon_vma_prepare.exit:                            ; preds = %if.end8
  %call.i = tail call i32 @__anon_vma_prepare(ptr noundef %vma) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %anon_vma_prepare.exit.if.end14_crit_edge, label %anon_vma_prepare.exit.cleanup_crit_edge, !prof !228

anon_vma_prepare.exit.cleanup_crit_edge:          ; preds = %anon_vma_prepare.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

anon_vma_prepare.exit.if.end14_crit_edge:         ; preds = %anon_vma_prepare.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.end14:                                         ; preds = %anon_vma_prepare.exit.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %12 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %anon_vma.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %15, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem.i) #19
  %16 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and)
  %cmp15 = icmp ugt i32 %17, %and
  br i1 %cmp15, label %if.then16, label %if.end14.if.end38_crit_edge

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then16:                                        ; preds = %if.end14
  %sub20 = sub i32 %17, %and
  %shr = lshr i32 %sub20, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %18 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %19)
  %cmp21.not = icmp ugt i32 %shr, %19
  br i1 %cmp21.not, label %if.then16.if.end38_crit_edge, label %if.then22

if.then16.if.end38_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then22:                                        ; preds = %if.then16
  %vm_end17 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %20 = ptrtoint ptr %vm_end17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_end17, align 4
  %22 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm_mm, align 4
  %vm_flags.i82 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %24 = ptrtoint ptr %vm_flags.i82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_flags.i82, align 4
  %call.i83 = tail call zeroext i1 @may_expand_vm(ptr noundef %23, i32 noundef %25, i32 noundef %shr) #19
  br i1 %call.i83, label %if.end.i84, label %if.then22.if.end38_crit_edge

if.then22.if.end38_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.end.i84:                                       ; preds = %if.then22
  %sub18 = sub i32 %21, %and
  %26 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 111
  %30 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %31, i32 0, i32 51, i32 3
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub18)
  %cmp.i = icmp ult i32 %33, %sub18
  br i1 %cmp.i, label %if.end.i84.if.end38_crit_edge, label %if.end3.i

if.end.i84.if.end38_crit_edge:                    ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.end3.i:                                        ; preds = %if.end.i84
  %34 = ptrtoint ptr %vm_flags.i82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vm_flags.i82, align 4
  %and.i85 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %if.end3.i.cond.end.i_crit_edge, label %if.then5.i

if.end3.i.cond.end.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i

if.then5.i:                                       ; preds = %if.end3.i
  %locked_vm.i = getelementptr inbounds %struct.anon.15, ptr %23, i32 0, i32 20
  %36 = ptrtoint ptr %locked_vm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %locked_vm.i, align 4
  %add.i = add i32 %37, %shr
  %38 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i41.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i41.i to ptr
  %task.i42.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i42.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i42.i, align 8
  %signal.i.i43.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 111
  %42 = ptrtoint ptr %signal.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %signal.i.i43.i, align 16
  %arrayidx.i.i44.i = getelementptr %struct.signal_struct, ptr %43, i32 0, i32 51, i32 8
  %44 = ptrtoint ptr %arrayidx.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i.i44.i, align 8
  %shr.i = lshr i32 %45, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shr.i)
  %cmp7.i = icmp ugt i32 %add.i, %shr.i
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then5.i.cond.end.i_crit_edge

if.then5.i.cond.end.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i

land.lhs.true.i:                                  ; preds = %if.then5.i
  %call8.i = tail call zeroext i1 @capable(i32 noundef 14) #19
  br i1 %call8.i, label %land.lhs.true.i.cond.end.i_crit_edge, label %land.lhs.true.i.if.end38_crit_edge

land.lhs.true.i.if.end38_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i

cond.end.i:                                       ; preds = %land.lhs.true.i.cond.end.i_crit_edge, %if.then5.i.cond.end.i_crit_edge, %if.end3.i.cond.end.i_crit_edge
  %call21.i = tail call i32 @security_vm_enough_memory_mm(ptr noundef %23, i32 noundef %shr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then25, label %cond.end.i.if.end38_crit_edge

cond.end.i.if.end38_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then25:                                        ; preds = %cond.end.i
  %page_table_lock = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %page_table_lock) #19
  %46 = ptrtoint ptr %vm_flags.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vm_flags.i82, align 4
  %and27 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then25.if.end30_crit_edge, label %if.then29

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #21
  %locked_vm = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 20
  %48 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %locked_vm, align 4
  %add = add i32 %49, %shr
  store i32 %add, ptr %locked_vm, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then25.if.end30_crit_edge
  %50 = ptrtoint ptr %vm_flags.i82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vm_flags.i82, align 4
  %total_vm.i = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 19
  %52 = ptrtoint ptr %total_vm.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %total_vm.i, align 8
  %add.i87 = add i32 %53, %shr
  store volatile i32 %add.i87, ptr %total_vm.i, align 8
  %and.i.i = and i32 %51, 262
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 4
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %exec_vm.i = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 23
  %54 = ptrtoint ptr %exec_vm.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %exec_vm.i, align 4
  %add8.i = add i32 %55, %shr
  store i32 %add8.i, ptr %exec_vm.i, align 4
  br label %vm_stat_account.exit

if.else.i:                                        ; preds = %if.end30
  %and.i27.i = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i)
  %cmp.i28.not.i = icmp eq i32 %and.i27.i, 0
  br i1 %cmp.i28.not.i, label %if.else12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %stack_vm.i = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 24
  %56 = ptrtoint ptr %stack_vm.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stack_vm.i, align 8
  %add11.i = add i32 %57, %shr
  store i32 %add11.i, ptr %stack_vm.i, align 8
  br label %vm_stat_account.exit

if.else12.i:                                      ; preds = %if.else.i
  %and.i29.i = and i32 %51, 266
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i29.i)
  %cmp.i30.i = icmp eq i32 %and.i29.i, 2
  br i1 %cmp.i30.i, label %if.then14.i, label %if.else12.i.vm_stat_account.exit_crit_edge

if.else12.i.vm_stat_account.exit_crit_edge:       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_stat_account.exit

if.then14.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #21
  %data_vm.i = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 22
  %58 = ptrtoint ptr %data_vm.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_vm.i, align 8
  %add15.i = add i32 %59, %shr
  store i32 %add15.i, ptr %data_vm.i, align 8
  br label %vm_stat_account.exit

vm_stat_account.exit:                             ; preds = %if.then14.i, %if.else12.i.vm_stat_account.exit_crit_edge, %if.then10.i, %if.then.i
  %anon_vma_chain.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 10
  %60 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn11.i = load ptr, ptr %anon_vma_chain.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %anon_vma_chain.i
  br i1 %cmp.not12.i, label %vm_stat_account.exit.anon_vma_interval_tree_pre_update_vma.exit_crit_edge, label %vm_stat_account.exit.for.body.i_crit_edge

vm_stat_account.exit.for.body.i_crit_edge:        ; preds = %vm_stat_account.exit
  br label %for.body.i

vm_stat_account.exit.anon_vma_interval_tree_pre_update_vma.exit_crit_edge: ; preds = %vm_stat_account.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %anon_vma_interval_tree_pre_update_vma.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vm_stat_account.exit.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %vm_stat_account.exit.for.body.i_crit_edge ]
  %avc.0.i = getelementptr i8, ptr %.pn13.i, i32 -8
  %anon_vma.i88 = getelementptr i8, ptr %.pn13.i, i32 -4
  %61 = ptrtoint ptr %anon_vma.i88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %anon_vma.i88, align 4
  %rb_root.i = getelementptr inbounds %struct.anon_vma, ptr %62, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %avc.0.i, ptr noundef %rb_root.i) #19
  %63 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %anon_vma_chain.i
  br i1 %cmp.not.i, label %for.body.i.anon_vma_interval_tree_pre_update_vma.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.anon_vma_interval_tree_pre_update_vma.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %anon_vma_interval_tree_pre_update_vma.exit

anon_vma_interval_tree_pre_update_vma.exit:       ; preds = %for.body.i.anon_vma_interval_tree_pre_update_vma.exit_crit_edge, %vm_stat_account.exit.anon_vma_interval_tree_pre_update_vma.exit_crit_edge
  %64 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and, ptr %vma, align 4
  %65 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vm_pgoff, align 4
  %sub34 = sub i32 %66, %shr
  store i32 %sub34, ptr %vm_pgoff, align 4
  %67 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn11.i90 = load ptr, ptr %anon_vma_chain.i, align 4
  %cmp.not12.i91 = icmp eq ptr %.pn11.i90, %anon_vma_chain.i
  br i1 %cmp.not12.i91, label %anon_vma_interval_tree_pre_update_vma.exit.anon_vma_interval_tree_post_update_vma.exit_crit_edge, label %anon_vma_interval_tree_pre_update_vma.exit.for.body.i98_crit_edge

anon_vma_interval_tree_pre_update_vma.exit.for.body.i98_crit_edge: ; preds = %anon_vma_interval_tree_pre_update_vma.exit
  br label %for.body.i98

anon_vma_interval_tree_pre_update_vma.exit.anon_vma_interval_tree_post_update_vma.exit_crit_edge: ; preds = %anon_vma_interval_tree_pre_update_vma.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %anon_vma_interval_tree_post_update_vma.exit

for.body.i98:                                     ; preds = %for.body.i98.for.body.i98_crit_edge, %anon_vma_interval_tree_pre_update_vma.exit.for.body.i98_crit_edge
  %.pn13.i92 = phi ptr [ %.pn.i96, %for.body.i98.for.body.i98_crit_edge ], [ %.pn11.i90, %anon_vma_interval_tree_pre_update_vma.exit.for.body.i98_crit_edge ]
  %avc.0.i93 = getelementptr i8, ptr %.pn13.i92, i32 -8
  %anon_vma.i94 = getelementptr i8, ptr %.pn13.i92, i32 -4
  %68 = ptrtoint ptr %anon_vma.i94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %anon_vma.i94, align 4
  %rb_root.i95 = getelementptr inbounds %struct.anon_vma, ptr %69, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef %avc.0.i93, ptr noundef %rb_root.i95) #19
  %70 = ptrtoint ptr %.pn13.i92 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.i96 = load ptr, ptr %.pn13.i92, align 4
  %cmp.not.i97 = icmp eq ptr %.pn.i96, %anon_vma_chain.i
  br i1 %cmp.not.i97, label %for.body.i98.anon_vma_interval_tree_post_update_vma.exit_crit_edge, label %for.body.i98.for.body.i98_crit_edge

for.body.i98.for.body.i98_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i98

for.body.i98.anon_vma_interval_tree_post_update_vma.exit_crit_edge: ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #21
  br label %anon_vma_interval_tree_post_update_vma.exit

anon_vma_interval_tree_post_update_vma.exit:      ; preds = %for.body.i98.anon_vma_interval_tree_post_update_vma.exit_crit_edge, %anon_vma_interval_tree_pre_update_vma.exit.anon_vma_interval_tree_post_update_vma.exit_crit_edge
  %vm_rb.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %anon_vma_interval_tree_post_update_vma.exit
  %rb.addr.08.i.i = phi ptr [ %97, %cleanup.i.i.while.body.i.i_crit_edge ], [ %vm_rb.i, %anon_vma_interval_tree_post_update_vma.exit ]
  %add.ptr.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 -16
  %71 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i, align 4
  %vm_flags.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 24
  %73 = ptrtoint ptr %vm_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vm_flags.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %75 = load i32, ptr @stack_guard_gap, align 4
  %76 = tail call i32 @llvm.usub.sat.i32(i32 %72, i32 %75) #19
  br label %vm_start_gap.exit.i.i.i.i

vm_start_gap.exit.i.i.i.i:                        ; preds = %if.then.i.i.i.i.i, %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge
  %vm_start.0.i.i.i.i.i = phi i32 [ %76, %if.then.i.i.i.i.i ], [ %72, %while.body.i.i.vm_start_gap.exit.i.i.i.i_crit_edge ]
  %vm_prev.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 -4
  %77 = ptrtoint ptr %vm_prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vm_prev.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i.i.i, label %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %vm_start_gap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %vm_end1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vm_end1.i.i.i.i.i, align 4
  %81 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i, i32 %80) #19
  br label %vma_compute_gap.exit.i.i.i

vma_compute_gap.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge
  %gap.0.i.i.i.i = phi i32 [ %vm_start.0.i.i.i.i.i, %vm_start_gap.exit.i.i.i.i.vma_compute_gap.exit.i.i.i_crit_edge ], [ %81, %if.then.i.i.i.i ]
  %rb_left.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 8
  %82 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rb_left.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i.i, label %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge, label %if.then.i.i.i

vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i

if.then.i.i.i:                                    ; preds = %vma_compute_gap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i = getelementptr i8, ptr %83, i32 12
  %84 = ptrtoint ptr %rb_subtree_gap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rb_subtree_gap.i.i.i, align 4
  %86 = tail call i32 @llvm.umax.i32(i32 %85, i32 %gap.0.i.i.i.i) #19
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then.i.i.i, %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge
  %max.0.i.i.i = phi i32 [ %gap.0.i.i.i.i, %vma_compute_gap.exit.i.i.i.if.end5.i.i.i_crit_edge ], [ %86, %if.then.i.i.i ]
  %rb_right.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 4
  %87 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rb_right.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %88, null
  br i1 %tobool7.not.i.i.i, label %if.end5.i.i.i.if.end19.i.i.i_crit_edge, label %if.then8.i.i.i

if.end5.i.i.i.if.end19.i.i.i_crit_edge:           ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i = getelementptr i8, ptr %88, i32 12
  %89 = ptrtoint ptr %rb_subtree_gap14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rb_subtree_gap14.i.i.i, align 4
  %91 = tail call i32 @llvm.umax.i32(i32 %90, i32 %max.0.i.i.i) #19
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end5.i.i.i.if.end19.i.i.i_crit_edge
  %max.1.i.i.i = phi i32 [ %max.0.i.i.i, %if.end5.i.i.i.if.end19.i.i.i_crit_edge ], [ %91, %if.then8.i.i.i ]
  %rb_subtree_gap21.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i, i32 12
  %92 = ptrtoint ptr %rb_subtree_gap21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rb_subtree_gap21.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %max.1.i.i.i)
  %cmp22.i.i.i = icmp eq i32 %93, %max.1.i.i.i
  br i1 %cmp22.i.i.i, label %if.end19.i.i.i.vma_gap_update.exit_crit_edge, label %cleanup.i.i

if.end19.i.i.i.vma_gap_update.exit_crit_edge:     ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_gap_update.exit

cleanup.i.i:                                      ; preds = %if.end19.i.i.i
  %94 = ptrtoint ptr %rb_subtree_gap21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %max.1.i.i.i, ptr %rb_subtree_gap21.i.i.i, align 4
  %95 = ptrtoint ptr %rb.addr.08.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rb.addr.08.i.i, align 4
  %and.i.i99 = and i32 %96, -4
  %97 = inttoptr i32 %and.i.i99 to ptr
  %cmp.not.i.i = icmp eq i32 %and.i.i99, 0
  br i1 %cmp.not.i.i, label %cleanup.i.i.vma_gap_update.exit_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i

cleanup.i.i.vma_gap_update.exit_crit_edge:        ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_gap_update.exit

vma_gap_update.exit:                              ; preds = %cleanup.i.i.vma_gap_update.exit_crit_edge, %if.end19.i.i.i.vma_gap_update.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %page_table_lock) #19
  tail call void @perf_event_mmap(ptr noundef %vma) #19
  br label %if.end38

if.end38:                                         ; preds = %vma_gap_update.exit, %cond.end.i.if.end38_crit_edge, %land.lhs.true.i.if.end38_crit_edge, %if.end.i84.if.end38_crit_edge, %if.then22.if.end38_crit_edge, %if.then16.if.end38_crit_edge, %if.end14.if.end38_crit_edge
  %error.1 = phi i32 [ 0, %if.end14.if.end38_crit_edge ], [ 0, %vma_gap_update.exit ], [ -12, %if.then16.if.end38_crit_edge ], [ -12, %if.then22.if.end38_crit_edge ], [ -12, %if.end.i84.if.end38_crit_edge ], [ -12, %land.lhs.true.i.if.end38_crit_edge ], [ -12, %cond.end.i.if.end38_crit_edge ]
  %98 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %anon_vma.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %rwsem.i100 = getelementptr inbounds %struct.anon_vma, ptr %101, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i100) #19
  tail call fastcc void @validate_mm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %anon_vma_prepare.exit.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %if.end38 ], [ -1, %entry.cleanup_crit_edge ], [ -12, %if.then4.cleanup_crit_edge ], [ -12, %anon_vma_prepare.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdline_parse_stack_guard_gap(ptr noundef %p) #8 section ".init.text" align 64 {
entry:
  %endptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endptr) #19
  %0 = ptrtoint ptr %endptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endptr, align 4, !annotation !230
  %call = call i32 @simple_strtoul(ptr noundef %p, ptr noundef nonnull %endptr, i32 noundef 10) #19
  %1 = ptrtoint ptr %endptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %endptr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %shl = shl i32 %call, 12
  store i32 %shl, ptr @stack_guard_gap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endptr) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @expand_stack(ptr noundef %vma, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @expand_downwards(ptr noundef %vma, i32 noundef %address)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_extend_vma(ptr noundef %mm, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, -4096
  %call = tail call ptr @find_vma(ptr noundef %mm, i32 noundef %and)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %and)
  %cmp.not = icmp ugt i32 %1, %and
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %and3 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call.i = tail call i32 @expand_downwards(ptr noundef nonnull %call, i32 noundef %and) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %and13 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %call16 = tail call i32 @populate_vma_page_range(ptr noundef nonnull %call, i32 noundef %and, i32 noundef %1, ptr noundef null) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ null, %if.end2.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ %call, %if.then15 ], [ %call, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @populate_vma_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__split_vma(ptr nocapture readnone %mm, ptr noundef %vma, i32 noundef %addr, i32 noundef %new_below) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %0 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %may_split = getelementptr inbounds %struct.vm_operations_struct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %may_split to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %may_split, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %vma, i32 noundef %addr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call ptr @vm_area_dup(ptr noundef %vma) #19
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_below)
  %tobool12.not = icmp eq i32 %new_below, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call8, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %addr, ptr %vm_end, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %5 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %addr, ptr %call8, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = sub i32 %addr, %7
  %shr = lshr i32 %sub, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call8, i32 0, i32 13
  %8 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff, align 4
  %add = add i32 %shr, %9
  store i32 %add, ptr %vm_pgoff, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %call20 = tail call i32 @anon_vma_clone(ptr noundef nonnull %call8, ptr noundef %vma) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.out_free_mpol_crit_edge

if.end15.out_free_mpol_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free_mpol

if.end23:                                         ; preds = %if.end15
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call8, i32 0, i32 14
  %10 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_file, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  %f_count.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #19
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #19, !srcloc !233
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %vm_ops29 = getelementptr inbounds %struct.vm_area_struct, ptr %call8, i32 0, i32 12
  %13 = ptrtoint ptr %vm_ops29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_ops29, align 4
  %tobool30.not = icmp eq ptr %14, null
  br i1 %tobool30.not, label %if.end28.if.end37_crit_edge, label %land.lhs.true31

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

land.lhs.true31:                                  ; preds = %if.end28
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool33.not = icmp eq ptr %16, null
  br i1 %tobool33.not, label %land.lhs.true31.if.end37_crit_edge, label %if.then34

land.lhs.true31.if.end37_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #21
  tail call void %16(ptr noundef nonnull %call8) #19
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true31.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  br i1 %tobool12.not, label %if.else47, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end40 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %17 = ptrtoint ptr %vm_end40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_end40, align 4
  %vm_pgoff41 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %19 = ptrtoint ptr %vm_pgoff41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_pgoff41, align 4
  %21 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call8, align 4
  %sub43 = sub i32 %addr, %22
  %shr44 = lshr i32 %sub43, 12
  %add45 = add i32 %shr44, %20
  %call.i = tail call i32 @__vma_adjust(ptr noundef %vma, i32 noundef %addr, i32 noundef %18, i32 noundef %add45, ptr noundef nonnull %call8, ptr noundef null) #19
  br label %if.end51

if.else47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  %23 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vma, align 4
  %vm_pgoff49 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %25 = ptrtoint ptr %vm_pgoff49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_pgoff49, align 4
  %call.i124 = tail call i32 @__vma_adjust(ptr noundef %vma, i32 noundef %24, i32 noundef %addr, i32 noundef %26, ptr noundef nonnull %call8, ptr noundef null) #19
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.then39
  %err.0 = phi i32 [ %call.i, %if.then39 ], [ %call.i124, %if.else47 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool52.not = icmp eq i32 %err.0, 0
  br i1 %tobool52.not, label %if.end51.cleanup_crit_edge, label %if.end54

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end54:                                         ; preds = %if.end51
  %27 = ptrtoint ptr %vm_ops29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_ops29, align 4
  %tobool56.not = icmp eq ptr %28, null
  br i1 %tobool56.not, label %if.end54.if.end63_crit_edge, label %land.lhs.true57

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end63

land.lhs.true57:                                  ; preds = %if.end54
  %close = getelementptr inbounds %struct.vm_operations_struct, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %close, align 4
  %tobool59.not = icmp eq ptr %30, null
  br i1 %tobool59.not, label %land.lhs.true57.if.end63_crit_edge, label %if.then60

land.lhs.true57.if.end63_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end63

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #21
  tail call void %30(ptr noundef nonnull %call8) #19
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %land.lhs.true57.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  %31 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vm_file, align 4
  %tobool65.not = icmp eq ptr %32, null
  br i1 %tobool65.not, label %if.end63.if.end68_crit_edge, label %if.then66

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @fput(ptr noundef nonnull %32) #19
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63.if.end68_crit_edge
  tail call void @unlink_anon_vmas(ptr noundef nonnull %call8) #19
  br label %out_free_mpol

out_free_mpol:                                    ; preds = %if.end68, %if.end15.out_free_mpol_crit_edge
  %err.1 = phi i32 [ %call20, %if.end15.out_free_mpol_crit_edge ], [ %err.0, %if.end68 ]
  tail call void @vm_area_free(ptr noundef nonnull %call8) #19
  br label %cleanup

cleanup:                                          ; preds = %out_free_mpol, %if.end51.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_free_mpol ], [ %call, %if.then.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_area_dup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_anon_vmas(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @split_vma(ptr nocapture noundef readonly %mm, ptr noundef %vma, i32 noundef %addr, i32 noundef %new_below) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %map_count = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 13
  %0 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_max_map_count to i32))
  %2 = load i32, ptr @sysctl_max_map_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp slt i32 %1, %2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 @__split_vma(ptr undef, ptr noundef %vma, i32 noundef %addr, i32 noundef %new_below)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__do_munmap(ptr noundef %mm, i32 noundef %start, i32 noundef %len, ptr noundef %uf, i1 noundef zeroext %downgrade) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %start)
  %cmp = icmp ugt i32 %start, -1226833920
  %or.cond = or i1 %cmp, %tobool.not
  %sub = sub i32 -1226833920, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp2 = icmp ult i32 %sub, %len
  %or.cond121 = or i1 %cmp2, %or.cond
  br i1 %or.cond121, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.end:                                           ; preds = %entry
  %add = add i32 %len, 4095
  %and3 = and i32 %add, -4096
  %add4 = add i32 %and3, %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp5 = icmp eq i32 %and3, 0
  br i1 %cmp5, label %if.end.cleanup61_crit_edge, label %if.end7

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.end7:                                          ; preds = %if.end
  %call.i = tail call ptr @find_vma(ptr noundef %mm, i32 noundef %start) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup61_crit_edge, label %land.lhs.true.i

if.end7.cleanup61_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

land.lhs.true.i:                                  ; preds = %if.end7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add4)
  %cmp.not.i = icmp ult i32 %1, %add4
  br i1 %cmp.not.i, label %if.end10, label %land.lhs.true.i.cleanup61_crit_edge

land.lhs.true.i.cleanup61_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.end10:                                         ; preds = %land.lhs.true.i
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_prev, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %start)
  %cmp11 = icmp ult i32 %5, %start
  br i1 %cmp11, label %if.then12, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.then12:                                        ; preds = %if.end10
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %7)
  %cmp13 = icmp ult i32 %add4, %7
  br i1 %cmp13, label %land.lhs.true, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then12
  %map_count = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 13
  %8 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_max_map_count to i32))
  %10 = load i32, ptr @sysctl_max_map_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp14.not = icmp slt i32 %9, %10
  br i1 %cmp14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup61_crit_edge

land.lhs.true.cleanup61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %call17 = tail call i32 @__split_vma(ptr undef, ptr noundef nonnull %call.i, i32 noundef %start, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup.if.end21_crit_edge, label %cleanup.cleanup61_crit_edge

cleanup.cleanup61_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

cleanup.if.end21_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.end21:                                         ; preds = %cleanup.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %prev.1 = phi ptr [ %call.i, %cleanup.if.end21_crit_edge ], [ %3, %if.end10.if.end21_crit_edge ]
  %call22 = tail call ptr @find_vma(ptr noundef %mm, i32 noundef %add4)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.if.end36_crit_edge, label %land.lhs.true24

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36

land.lhs.true24:                                  ; preds = %if.end21
  %11 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %12)
  %cmp26 = icmp ugt i32 %add4, %12
  br i1 %cmp26, label %if.then27, label %land.lhs.true24.if.end36_crit_edge

land.lhs.true24.if.end36_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36

if.then27:                                        ; preds = %land.lhs.true24
  %call29 = tail call i32 @__split_vma(ptr undef, ptr noundef nonnull %call22, i32 noundef %add4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then27.if.end36_crit_edge, label %if.then27.cleanup61_crit_edge

if.then27.cleanup61_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end36

if.end36:                                         ; preds = %if.then27.if.end36_crit_edge, %land.lhs.true24.if.end36_crit_edge, %if.end21.if.end36_crit_edge
  %tobool.not.i122 = icmp eq ptr %prev.1, null
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev.1, i32 0, i32 2
  %retval.0.in.i = select i1 %tobool.not.i122, ptr %mm, ptr %vm_next.i
  %13 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %tobool38.not = icmp eq ptr %uf, null
  br i1 %tobool38.not, label %if.end36.if.end50_crit_edge, label %if.then41, !prof !228

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.then41:                                        ; preds = %if.end36
  %call43 = tail call i32 @userfaultfd_unmap_prep(ptr noundef %retval.0.i, i32 noundef %start, i32 noundef %add4, ptr noundef nonnull %uf) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then41.if.end50_crit_edge, label %if.then41.cleanup61_crit_edge

if.then41.cleanup61_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.then41.if.end50_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.end50:                                         ; preds = %if.then41.if.end50_crit_edge, %if.end36.if.end50_crit_edge
  %locked_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 20
  %14 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %locked_vm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool51.not = icmp eq i32 %15, 0
  %tobool.not9.i = icmp eq ptr %retval.0.i, null
  %or.cond150 = select i1 %tobool51.not, i1 true, i1 %tobool.not9.i
  br i1 %or.cond150, label %if.end50.if.end53_crit_edge, label %land.rhs.lr.ph.i

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end53

land.rhs.lr.ph.i:                                 ; preds = %if.end50
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %retval.0.i, i32 0, i32 6
  %16 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vm_mm.i, align 4
  %locked_vm.i = getelementptr inbounds %struct.anon.15, ptr %17, i32 0, i32 20
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %tmp.010.i = phi ptr [ %retval.0.i, %land.rhs.lr.ph.i ], [ %30, %if.end.i.land.rhs.i_crit_edge ]
  %18 = ptrtoint ptr %tmp.010.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp.010.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add4)
  %cmp.i = icmp ult i32 %19, %add4
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.if.end53_crit_edge

land.rhs.i.if.end53_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end53

while.body.i:                                     ; preds = %land.rhs.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.010.i, i32 0, i32 8
  %20 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.010.i, i32 0, i32 1
  %22 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_end.i.i, align 4
  %sub.i.i = sub i32 %23, %19
  %shr.i.i = lshr i32 %sub.i.i, 12
  %24 = ptrtoint ptr %locked_vm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %locked_vm.i, align 4
  %sub.i = sub i32 %25, %shr.i.i
  store i32 %sub.i, ptr %locked_vm.i, align 4
  %26 = ptrtoint ptr %tmp.010.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp.010.i, align 4
  %28 = load i32, ptr %vm_end.i.i, align 4
  tail call void @munlock_vma_pages_range(ptr noundef nonnull %tmp.010.i, i32 noundef %27, i32 noundef %28) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %vm_next.i123 = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.010.i, i32 0, i32 2
  %29 = ptrtoint ptr %vm_next.i123 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vm_next.i123, align 4
  %tobool.not.i124 = icmp eq ptr %30, null
  br i1 %tobool.not.i124, label %if.end.i.if.end53_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs.i

if.end.i.if.end53_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end53

if.end53:                                         ; preds = %if.end.i.if.end53_crit_edge, %land.rhs.i.if.end53_crit_edge, %if.end50.if.end53_crit_edge
  %vm_prev.i = getelementptr inbounds %struct.vm_area_struct, ptr %retval.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %vm_prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %vm_prev.i, align 4
  %mm_rb.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 1
  %map_count.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 13
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i128.do.body.i_crit_edge, %if.end53
  %vma.addr.0.i = phi ptr [ %retval.0.i, %if.end53 ], [ %141, %land.rhs.i128.do.body.i_crit_edge ]
  tail call fastcc void @validate_mm_rb(ptr noundef %mm_rb.i, ptr noundef %vma.addr.0.i) #19
  %vm_rb.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i, i32 0, i32 4
  %rb_right.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %rb_right.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rb_right.i.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %rb_left.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rb_left.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.else6.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %do.body.i
  %36 = ptrtoint ptr %vm_rb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vm_rb.i.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %37, -4
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rb_left.i.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i.i = icmp eq ptr %40, %vm_rb.i.i.i.i
  %rb_right.i.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  %spec.select.i.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i.i, ptr %rb_left.i.i.i.i.i.i.i, ptr %rb_right.i.i.i.i.i.i.i
  br label %__rb_change_child.exit.i.i.i.i.i.i

__rb_change_child.exit.i.i.i.i.i.i:               ; preds = %if.then.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i.i.i = phi ptr [ %mm_rb.i, %if.then.i.i.i.i.i.i.__rb_change_child.exit.i.i.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i ]
  %41 = ptrtoint ptr %rb_left.sink.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %33, ptr %rb_left.sink.i.i.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i, label %if.then2.i.i.i.i.i.i

if.then2.i.i.i.i.i.i:                             ; preds = %__rb_change_child.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %37, ptr %33, align 4
  br label %if.end69.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %__rb_change_child.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %and4.i.i.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i.i = icmp eq i32 %and4.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %tobool5.not.i.i.i.i.i.i, ptr null, ptr %38
  br label %if.end69.i.i.i.i.i.i

if.else6.i.i.i.i.i.i:                             ; preds = %do.body.i
  %tobool7.not.i.i.i.i.i.i = icmp eq ptr %33, null
  br i1 %tobool7.not.i.i.i.i.i.i, label %if.then8.i.i.i.i.i.i, label %if.else12.i.i.i.i.i.i

if.then8.i.i.i.i.i.i:                             ; preds = %if.else6.i.i.i.i.i.i
  %43 = ptrtoint ptr %vm_rb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vm_rb.i.i.i.i, align 4
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %35, align 4
  %and11.i.i.i.i.i.i = and i32 %44, -4
  %46 = inttoptr i32 %and11.i.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i.i.i)
  %tobool.not.i2.i.i.i.i.i.i = icmp eq i32 %and11.i.i.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i.i.i.i, label %if.then8.i.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i.i_crit_edge, label %if.then.i7.i.i.i.i.i.i

if.then8.i.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit9.i.i.i.i.i.i

if.then.i7.i.i.i.i.i.i:                           ; preds = %if.then8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.i3.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %rb_left.i3.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rb_left.i3.i.i.i.i.i.i, align 4
  %cmp.i4.i.i.i.i.i.i = icmp eq ptr %48, %vm_rb.i.i.i.i
  %rb_right.i5.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %46, i32 0, i32 1
  %spec.select.i6.i.i.i.i.i.i = select i1 %cmp.i4.i.i.i.i.i.i, ptr %rb_left.i3.i.i.i.i.i.i, ptr %rb_right.i5.i.i.i.i.i.i
  br label %__rb_change_child.exit9.i.i.i.i.i.i

__rb_change_child.exit9.i.i.i.i.i.i:              ; preds = %if.then.i7.i.i.i.i.i.i, %if.then8.i.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i.i.i.i = phi ptr [ %mm_rb.i, %if.then8.i.i.i.i.i.i.__rb_change_child.exit9.i.i.i.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i.i.i.i, %if.then.i7.i.i.i.i.i.i ]
  %49 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %35, ptr %rb_left.sink.i8.i.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i.i

if.else12.i.i.i.i.i.i:                            ; preds = %if.else6.i.i.i.i.i.i
  %rb_left13.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  %50 = ptrtoint ptr %rb_left13.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rb_left13.i.i.i.i.i.i, align 4
  %tobool14.not.i.i.i.i.i.i = icmp eq ptr %51, null
  br i1 %tobool14.not.i.i.i.i.i.i, label %if.then15.i.i.i.i.i.i, label %if.else12.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

if.else12.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %if.else12.i.i.i.i.i.i
  br label %do.body.i.i.i.i.i.i

if.then15.i.i.i.i.i.i:                            ; preds = %if.else12.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_right16.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  %52 = ptrtoint ptr %rb_right16.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rb_right16.i.i.i.i.i.i, align 4
  %rb_subtree_gap.i.i.i.i.i.i.i = getelementptr %struct.vm_area_struct, ptr %vma.addr.0.i, i32 0, i32 5
  %54 = ptrtoint ptr %rb_subtree_gap.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rb_subtree_gap.i.i.i.i.i.i.i, align 4
  %rb_subtree_gap4.i.i.i.i.i.i.i = getelementptr i8, ptr %33, i32 12
  %56 = ptrtoint ptr %rb_subtree_gap4.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rb_subtree_gap4.i.i.i.i.i.i.i, align 4
  %.pre.i.i.i.i.i.i = ptrtoint ptr %33 to i32
  br label %if.end42.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.else12.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i.i.i = phi ptr [ %58, %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ], [ %51, %if.else12.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i.i, %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ], [ %33, %if.else12.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %rb_left18.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rb_left18.i.i.i.i.i.i, align 4
  %tobool19.not.i.i.i.i.i.i = icmp eq ptr %58, null
  br i1 %tobool19.not.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %do.body.i.i.i.i.i.i
  %rb_right20.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %rb_right20.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rb_right20.i.i.i.i.i.i, align 4
  %rb_left26.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %rb_left26.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %60, ptr %rb_left26.i.i.i.i.i.i, align 4
  store volatile ptr %33, ptr %rb_right20.i.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %33, align 4
  %and.i.i.i.i.i.i.i = and i32 %63, 1
  %64 = ptrtoint ptr %tmp.0.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, %64
  store i32 %or.i.i.i.i.i.i.i, ptr %33, align 4
  %rb_subtree_gap.i10.i.i.i.i.i.i = getelementptr %struct.vm_area_struct, ptr %vma.addr.0.i, i32 0, i32 5
  %65 = ptrtoint ptr %rb_subtree_gap.i10.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rb_subtree_gap.i10.i.i.i.i.i.i, align 4
  %rb_subtree_gap4.i11.i.i.i.i.i.i = getelementptr i8, ptr %tmp.0.i.i.i.i.i.i, i32 12
  %67 = ptrtoint ptr %rb_subtree_gap4.i11.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rb_subtree_gap4.i11.i.i.i.i.i.i, align 4
  %cmp.not7.i.i.i.i.i.i.i = icmp eq ptr %successor.0.i.i.i.i.i.i, %tmp.0.i.i.i.i.i.i
  br i1 %cmp.not7.i.i.i.i.i.i.i, label %do.end.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge

do.end.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i.i.i
  br label %while.body.i.i.i.i.i.i.i

do.end.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i:                         ; preds = %cleanup.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge
  %rb.addr.08.i.i.i.i.i.i.i = phi ptr [ %94, %cleanup.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i.i, %do.end.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i, i32 -16
  %68 = ptrtoint ptr %add.ptr.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i.i.i.i.i.i, align 4
  %vm_flags.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i, i32 24
  %70 = ptrtoint ptr %vm_flags.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vm_flags.i.i.i.i.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %71, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.i.vm_start_gap.exit.i.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i.vm_start_gap.exit.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i.i:                      ; preds = %while.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %72 = load i32, ptr @stack_guard_gap, align 4
  %73 = tail call i32 @llvm.usub.sat.i32(i32 %69, i32 %72) #19
  br label %vm_start_gap.exit.i.i.i.i.i.i.i.i.i

vm_start_gap.exit.i.i.i.i.i.i.i.i.i:              ; preds = %if.then.i.i.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.vm_start_gap.exit.i.i.i.i.i.i.i.i.i_crit_edge
  %vm_start.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %73, %if.then.i.i.i.i.i.i.i.i.i.i ], [ %69, %while.body.i.i.i.i.i.i.i.vm_start_gap.exit.i.i.i.i.i.i.i.i.i_crit_edge ]
  %vm_prev.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i, i32 -4
  %74 = ptrtoint ptr %vm_prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vm_prev.i.i.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %vm_start_gap.exit.i.i.i.i.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i.i

vm_start_gap.exit.i.i.i.i.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i.i.i.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i.i:                        ; preds = %vm_start_gap.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %vm_end1.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vm_end1.i.i.i.i.i.i.i.i.i.i, align 4
  %78 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i.i.i.i.i.i, i32 %77) #19
  br label %vma_compute_gap.exit.i.i.i.i.i.i.i.i

vma_compute_gap.exit.i.i.i.i.i.i.i.i:             ; preds = %if.then.i.i.i.i.i.i.i.i.i, %vm_start_gap.exit.i.i.i.i.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i.i.i.i.i_crit_edge
  %gap.0.i.i.i.i.i.i.i.i.i = phi i32 [ %vm_start.0.i.i.i.i.i.i.i.i.i.i, %vm_start_gap.exit.i.i.i.i.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i.i.i.i.i_crit_edge ], [ %78, %if.then.i.i.i.i.i.i.i.i.i ]
  %rb_left.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i, i32 8
  %79 = ptrtoint ptr %rb_left.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rb_left.i.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %vma_compute_gap.exit.i.i.i.i.i.i.i.i.if.end5.i.i.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i.i.i

vma_compute_gap.exit.i.i.i.i.i.i.i.i.if.end5.i.i.i.i.i.i.i.i_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i.i:                          ; preds = %vma_compute_gap.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i.i.i.i.i.i = getelementptr i8, ptr %80, i32 12
  %81 = ptrtoint ptr %rb_subtree_gap.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rb_subtree_gap.i.i.i.i.i.i.i.i, align 4
  %83 = tail call i32 @llvm.umax.i32(i32 %82, i32 %gap.0.i.i.i.i.i.i.i.i.i) #19
  br label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i.i.i.i, %vma_compute_gap.exit.i.i.i.i.i.i.i.i.if.end5.i.i.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i.i.i = phi i32 [ %gap.0.i.i.i.i.i.i.i.i.i, %vma_compute_gap.exit.i.i.i.i.i.i.i.i.if.end5.i.i.i.i.i.i.i.i_crit_edge ], [ %83, %if.then.i.i.i.i.i.i.i.i ]
  %rb_right.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i, i32 4
  %84 = ptrtoint ptr %rb_right.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rb_right.i.i.i.i.i.i.i.i, align 4
  %tobool7.not.i.i.i.i.i.i.i.i = icmp eq ptr %85, null
  br i1 %tobool7.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.if.end19.i.i.i.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i.if.end19.i.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i.i.i.i.i.i

if.then8.i.i.i.i.i.i.i.i:                         ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i.i.i.i.i.i = getelementptr i8, ptr %85, i32 12
  %86 = ptrtoint ptr %rb_subtree_gap14.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rb_subtree_gap14.i.i.i.i.i.i.i.i, align 4
  %88 = tail call i32 @llvm.umax.i32(i32 %87, i32 %max.0.i.i.i.i.i.i.i.i) #19
  br label %if.end19.i.i.i.i.i.i.i.i

if.end19.i.i.i.i.i.i.i.i:                         ; preds = %if.then8.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.if.end19.i.i.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.if.end19.i.i.i.i.i.i.i.i_crit_edge ], [ %88, %if.then8.i.i.i.i.i.i.i.i ]
  %rb_subtree_gap21.i.i.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i.i.i.i.i, i32 12
  %89 = ptrtoint ptr %rb_subtree_gap21.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rb_subtree_gap21.i.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %max.1.i.i.i.i.i.i.i.i)
  %cmp22.i.i.i.i.i.i.i.i = icmp eq i32 %90, %max.1.i.i.i.i.i.i.i.i
  br i1 %cmp22.i.i.i.i.i.i.i.i, label %if.end19.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.i

if.end19.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge: ; preds = %if.end19.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.i:                            ; preds = %if.end19.i.i.i.i.i.i.i.i
  %91 = ptrtoint ptr %rb_subtree_gap21.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %max.1.i.i.i.i.i.i.i.i, ptr %rb_subtree_gap21.i.i.i.i.i.i.i.i, align 4
  %92 = ptrtoint ptr %rb.addr.08.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rb.addr.08.i.i.i.i.i.i.i, align 4
  %and.i12.i.i.i.i.i.i = and i32 %93, -4
  %94 = inttoptr i32 %and.i12.i.i.i.i.i.i to ptr
  %cmp.not.i.i.i.i.i.i.i = icmp eq ptr %tmp.0.i.i.i.i.i.i, %94
  br i1 %cmp.not.i.i.i.i.i.i.i, label %cleanup.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.i.i.while.body.i.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42.i.i.i.i.i.i

if.end42.i.i.i.i.i.i:                             ; preds = %cleanup.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge, %if.end19.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge, %if.then15.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i = phi i32 [ %64, %do.end.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ], [ %.pre.i.i.i.i.i.i, %if.then15.i.i.i.i.i.i ], [ %64, %if.end19.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ], [ %64, %cleanup.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i.i, %do.end.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ], [ %33, %if.then15.i.i.i.i.i.i ], [ %successor.0.i.i.i.i.i.i, %if.end19.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i.i.i, %cleanup.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i.i.i, %do.end.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ], [ %33, %if.then15.i.i.i.i.i.i ], [ %tmp.0.i.i.i.i.i.i, %if.end19.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i.i.i, %cleanup.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i.i.i = phi ptr [ %60, %do.end.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ], [ %53, %if.then15.i.i.i.i.i.i ], [ %60, %if.end19.i.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ], [ %60, %cleanup.i.i.i.i.i.i.i.if.end42.i.i.i.i.i.i_crit_edge ]
  %95 = ptrtoint ptr %rb_left.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rb_left.i.i.i.i.i.i, align 4
  %rb_left49.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %rb_left49.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %96, ptr %rb_left49.i.i.i.i.i.i, align 4
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %96, align 4
  %and.i13.i.i.i.i.i.i = and i32 %99, 1
  %or.i14.i.i.i.i.i.i = or i32 %and.i13.i.i.i.i.i.i, %.pre-phi.i.i.i.i.i.i
  store i32 %or.i14.i.i.i.i.i.i, ptr %96, align 4
  %100 = ptrtoint ptr %vm_rb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vm_rb.i.i.i.i, align 4
  %and55.i.i.i.i.i.i = and i32 %101, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i.i.i)
  %tobool.not.i15.i.i.i.i.i.i = icmp eq i32 %and55.i.i.i.i.i.i, 0
  br i1 %tobool.not.i15.i.i.i.i.i.i, label %if.end42.i.i.i.i.i.i.__rb_change_child.exit22.i.i.i.i.i.i_crit_edge, label %if.then.i20.i.i.i.i.i.i

if.end42.i.i.i.i.i.i.__rb_change_child.exit22.i.i.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_change_child.exit22.i.i.i.i.i.i

if.then.i20.i.i.i.i.i.i:                          ; preds = %if.end42.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %102 = inttoptr i32 %and55.i.i.i.i.i.i to ptr
  %rb_left.i16.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %rb_left.i16.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rb_left.i16.i.i.i.i.i.i, align 4
  %cmp.i17.i.i.i.i.i.i = icmp eq ptr %104, %vm_rb.i.i.i.i
  %rb_right.i18.i.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %102, i32 0, i32 1
  %spec.select.i19.i.i.i.i.i.i = select i1 %cmp.i17.i.i.i.i.i.i, ptr %rb_left.i16.i.i.i.i.i.i, ptr %rb_right.i18.i.i.i.i.i.i
  br label %__rb_change_child.exit22.i.i.i.i.i.i

__rb_change_child.exit22.i.i.i.i.i.i:             ; preds = %if.then.i20.i.i.i.i.i.i, %if.end42.i.i.i.i.i.i.__rb_change_child.exit22.i.i.i.i.i.i_crit_edge
  %rb_left.sink.i21.i.i.i.i.i.i = phi ptr [ %mm_rb.i, %if.end42.i.i.i.i.i.i.__rb_change_child.exit22.i.i.i.i.i.i_crit_edge ], [ %spec.select.i19.i.i.i.i.i.i, %if.then.i20.i.i.i.i.i.i ]
  %105 = ptrtoint ptr %rb_left.sink.i21.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %successor.1.i.i.i.i.i.i, ptr %rb_left.sink.i21.i.i.i.i.i.i, align 4
  %tobool56.not.i.i.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i.i.i, label %if.else58.i.i.i.i.i.i, label %if.then57.i.i.i.i.i.i

if.then57.i.i.i.i.i.i:                            ; preds = %__rb_change_child.exit22.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %106 = ptrtoint ptr %parent.0.i.i.i.i.i.i to i32
  %or.i23.i.i.i.i.i.i = or i32 %106, 1
  %107 = ptrtoint ptr %child2.0.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or.i23.i.i.i.i.i.i, ptr %child2.0.i.i.i.i.i.i, align 4
  br label %if.end66.i.i.i.i.i.i

if.else58.i.i.i.i.i.i:                            ; preds = %__rb_change_child.exit22.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %108 = ptrtoint ptr %successor.1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %successor.1.i.i.i.i.i.i, align 4
  %and60.i.i.i.i.i.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i.i.i)
  %tobool61.not.i.i.i.i.i.i = icmp eq i32 %and60.i.i.i.i.i.i, 0
  %spec.select1.i.i.i.i.i.i = select i1 %tobool61.not.i.i.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i.i.i
  br label %if.end66.i.i.i.i.i.i

if.end66.i.i.i.i.i.i:                             ; preds = %if.else58.i.i.i.i.i.i, %if.then57.i.i.i.i.i.i
  %rebalance.1.i.i.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i.i.i ], [ %spec.select1.i.i.i.i.i.i, %if.else58.i.i.i.i.i.i ]
  %110 = ptrtoint ptr %successor.1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %101, ptr %successor.1.i.i.i.i.i.i, align 4
  br label %if.end69.i.i.i.i.i.i

if.end69.i.i.i.i.i.i:                             ; preds = %if.end66.i.i.i.i.i.i, %__rb_change_child.exit9.i.i.i.i.i.i, %if.else.i.i.i.i.i.i, %if.then2.i.i.i.i.i.i
  %tmp.1.i.i.i.i.i.i = phi ptr [ %successor.1.i.i.i.i.i.i, %if.end66.i.i.i.i.i.i ], [ %46, %__rb_change_child.exit9.i.i.i.i.i.i ], [ %38, %if.else.i.i.i.i.i.i ], [ %38, %if.then2.i.i.i.i.i.i ]
  %rebalance.2.i.i.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i.i.i, %if.end66.i.i.i.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %if.else.i.i.i.i.i.i ], [ null, %if.then2.i.i.i.i.i.i ]
  %cmp.not7.i24.i.i.i.i.i.i = icmp eq ptr %tmp.1.i.i.i.i.i.i, null
  br i1 %cmp.not7.i24.i.i.i.i.i.i, label %if.end69.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge, label %if.end69.i.i.i.i.i.i.while.body.i30.i.i.i.i.i.i_crit_edge

if.end69.i.i.i.i.i.i.while.body.i30.i.i.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i.i
  br label %while.body.i30.i.i.i.i.i.i

if.end69.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i.i

while.body.i30.i.i.i.i.i.i:                       ; preds = %cleanup.i56.i.i.i.i.i.i.while.body.i30.i.i.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.i.while.body.i30.i.i.i.i.i.i_crit_edge
  %rb.addr.08.i25.i.i.i.i.i.i = phi ptr [ %137, %cleanup.i56.i.i.i.i.i.i.while.body.i30.i.i.i.i.i.i_crit_edge ], [ %tmp.1.i.i.i.i.i.i, %if.end69.i.i.i.i.i.i.while.body.i30.i.i.i.i.i.i_crit_edge ]
  %add.ptr.i26.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i.i, i32 -16
  %111 = ptrtoint ptr %add.ptr.i26.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i26.i.i.i.i.i.i, align 4
  %vm_flags.i.i.i.i27.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i.i, i32 24
  %113 = ptrtoint ptr %vm_flags.i.i.i.i27.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vm_flags.i.i.i.i27.i.i.i.i.i.i, align 4
  %and.i.i.i.i28.i.i.i.i.i.i = and i32 %114, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i28.i.i.i.i.i.i)
  %tobool.not.i.i.i.i29.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i28.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i29.i.i.i.i.i.i, label %while.body.i30.i.i.i.i.i.i.vm_start_gap.exit.i.i.i35.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i31.i.i.i.i.i.i

while.body.i30.i.i.i.i.i.i.vm_start_gap.exit.i.i.i35.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i30.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i35.i.i.i.i.i.i

if.then.i.i.i.i31.i.i.i.i.i.i:                    ; preds = %while.body.i30.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %115 = load i32, ptr @stack_guard_gap, align 4
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %112, i32 %115) #19
  br label %vm_start_gap.exit.i.i.i35.i.i.i.i.i.i

vm_start_gap.exit.i.i.i35.i.i.i.i.i.i:            ; preds = %if.then.i.i.i.i31.i.i.i.i.i.i, %while.body.i30.i.i.i.i.i.i.vm_start_gap.exit.i.i.i35.i.i.i.i.i.i_crit_edge
  %vm_start.0.i.i.i.i32.i.i.i.i.i.i = phi i32 [ %116, %if.then.i.i.i.i31.i.i.i.i.i.i ], [ %112, %while.body.i30.i.i.i.i.i.i.vm_start_gap.exit.i.i.i35.i.i.i.i.i.i_crit_edge ]
  %vm_prev.i.i.i33.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i.i, i32 -4
  %117 = ptrtoint ptr %vm_prev.i.i.i33.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vm_prev.i.i.i33.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i34.i.i.i.i.i.i = icmp eq ptr %118, null
  br i1 %tobool.not.i.i.i34.i.i.i.i.i.i, label %vm_start_gap.exit.i.i.i35.i.i.i.i.i.i.vma_compute_gap.exit.i.i41.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i37.i.i.i.i.i.i

vm_start_gap.exit.i.i.i35.i.i.i.i.i.i.vma_compute_gap.exit.i.i41.i.i.i.i.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i35.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i41.i.i.i.i.i.i

if.then.i.i.i37.i.i.i.i.i.i:                      ; preds = %vm_start_gap.exit.i.i.i35.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i36.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %vm_end1.i.i.i.i36.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %vm_end1.i.i.i.i36.i.i.i.i.i.i, align 4
  %121 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i32.i.i.i.i.i.i, i32 %120) #19
  br label %vma_compute_gap.exit.i.i41.i.i.i.i.i.i

vma_compute_gap.exit.i.i41.i.i.i.i.i.i:           ; preds = %if.then.i.i.i37.i.i.i.i.i.i, %vm_start_gap.exit.i.i.i35.i.i.i.i.i.i.vma_compute_gap.exit.i.i41.i.i.i.i.i.i_crit_edge
  %gap.0.i.i.i38.i.i.i.i.i.i = phi i32 [ %vm_start.0.i.i.i.i32.i.i.i.i.i.i, %vm_start_gap.exit.i.i.i35.i.i.i.i.i.i.vma_compute_gap.exit.i.i41.i.i.i.i.i.i_crit_edge ], [ %121, %if.then.i.i.i37.i.i.i.i.i.i ]
  %rb_left.i.i39.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i.i, i32 8
  %122 = ptrtoint ptr %rb_left.i.i39.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rb_left.i.i39.i.i.i.i.i.i, align 4
  %tobool.not.i.i40.i.i.i.i.i.i = icmp eq ptr %123, null
  br i1 %tobool.not.i.i40.i.i.i.i.i.i, label %vma_compute_gap.exit.i.i41.i.i.i.i.i.i.if.end5.i.i47.i.i.i.i.i.i_crit_edge, label %if.then.i.i43.i.i.i.i.i.i

vma_compute_gap.exit.i.i41.i.i.i.i.i.i.if.end5.i.i47.i.i.i.i.i.i_crit_edge: ; preds = %vma_compute_gap.exit.i.i41.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i47.i.i.i.i.i.i

if.then.i.i43.i.i.i.i.i.i:                        ; preds = %vma_compute_gap.exit.i.i41.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i42.i.i.i.i.i.i = getelementptr i8, ptr %123, i32 12
  %124 = ptrtoint ptr %rb_subtree_gap.i.i42.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rb_subtree_gap.i.i42.i.i.i.i.i.i, align 4
  %126 = tail call i32 @llvm.umax.i32(i32 %125, i32 %gap.0.i.i.i38.i.i.i.i.i.i) #19
  br label %if.end5.i.i47.i.i.i.i.i.i

if.end5.i.i47.i.i.i.i.i.i:                        ; preds = %if.then.i.i43.i.i.i.i.i.i, %vma_compute_gap.exit.i.i41.i.i.i.i.i.i.if.end5.i.i47.i.i.i.i.i.i_crit_edge
  %max.0.i.i44.i.i.i.i.i.i = phi i32 [ %gap.0.i.i.i38.i.i.i.i.i.i, %vma_compute_gap.exit.i.i41.i.i.i.i.i.i.if.end5.i.i47.i.i.i.i.i.i_crit_edge ], [ %126, %if.then.i.i43.i.i.i.i.i.i ]
  %rb_right.i.i45.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i.i, i32 4
  %127 = ptrtoint ptr %rb_right.i.i45.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rb_right.i.i45.i.i.i.i.i.i, align 4
  %tobool7.not.i.i46.i.i.i.i.i.i = icmp eq ptr %128, null
  br i1 %tobool7.not.i.i46.i.i.i.i.i.i, label %if.end5.i.i47.i.i.i.i.i.i.if.end19.i.i53.i.i.i.i.i.i_crit_edge, label %if.then8.i.i49.i.i.i.i.i.i

if.end5.i.i47.i.i.i.i.i.i.if.end19.i.i53.i.i.i.i.i.i_crit_edge: ; preds = %if.end5.i.i47.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i53.i.i.i.i.i.i

if.then8.i.i49.i.i.i.i.i.i:                       ; preds = %if.end5.i.i47.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i48.i.i.i.i.i.i = getelementptr i8, ptr %128, i32 12
  %129 = ptrtoint ptr %rb_subtree_gap14.i.i48.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rb_subtree_gap14.i.i48.i.i.i.i.i.i, align 4
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 %max.0.i.i44.i.i.i.i.i.i) #19
  br label %if.end19.i.i53.i.i.i.i.i.i

if.end19.i.i53.i.i.i.i.i.i:                       ; preds = %if.then8.i.i49.i.i.i.i.i.i, %if.end5.i.i47.i.i.i.i.i.i.if.end19.i.i53.i.i.i.i.i.i_crit_edge
  %max.1.i.i50.i.i.i.i.i.i = phi i32 [ %max.0.i.i44.i.i.i.i.i.i, %if.end5.i.i47.i.i.i.i.i.i.if.end19.i.i53.i.i.i.i.i.i_crit_edge ], [ %131, %if.then8.i.i49.i.i.i.i.i.i ]
  %rb_subtree_gap21.i.i51.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i25.i.i.i.i.i.i, i32 12
  %132 = ptrtoint ptr %rb_subtree_gap21.i.i51.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rb_subtree_gap21.i.i51.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %max.1.i.i50.i.i.i.i.i.i)
  %cmp22.i.i52.i.i.i.i.i.i = icmp eq i32 %133, %max.1.i.i50.i.i.i.i.i.i
  br i1 %cmp22.i.i52.i.i.i.i.i.i, label %if.end19.i.i53.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge, label %cleanup.i56.i.i.i.i.i.i

if.end19.i.i53.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge: ; preds = %if.end19.i.i53.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i.i

cleanup.i56.i.i.i.i.i.i:                          ; preds = %if.end19.i.i53.i.i.i.i.i.i
  %134 = ptrtoint ptr %rb_subtree_gap21.i.i51.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %max.1.i.i50.i.i.i.i.i.i, ptr %rb_subtree_gap21.i.i51.i.i.i.i.i.i, align 4
  %135 = ptrtoint ptr %rb.addr.08.i25.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rb.addr.08.i25.i.i.i.i.i.i, align 4
  %and.i54.i.i.i.i.i.i = and i32 %136, -4
  %137 = inttoptr i32 %and.i54.i.i.i.i.i.i to ptr
  %cmp.not.i55.i.i.i.i.i.i = icmp eq i32 %and.i54.i.i.i.i.i.i, 0
  br i1 %cmp.not.i55.i.i.i.i.i.i, label %cleanup.i56.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge, label %cleanup.i56.i.i.i.i.i.i.while.body.i30.i.i.i.i.i.i_crit_edge

cleanup.i56.i.i.i.i.i.i.while.body.i30.i.i.i.i.i.i_crit_edge: ; preds = %cleanup.i56.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i30.i.i.i.i.i.i

cleanup.i56.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge: ; preds = %cleanup.i56.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__rb_erase_augmented.exit.i.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i.i:              ; preds = %cleanup.i56.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge, %if.end19.i.i53.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge, %if.end69.i.i.i.i.i.i.__rb_erase_augmented.exit.i.i.i.i.i_crit_edge
  %tobool.not.i.i.i.i.i = icmp eq ptr %rebalance.2.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %__rb_erase_augmented.exit.i.i.i.i.i.vma_rb_erase.exit.i_crit_edge, label %if.then.i.i.i.i.i

__rb_erase_augmented.exit.i.i.i.i.i.vma_rb_erase.exit.i_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_rb_erase.exit.i

if.then.i.i.i.i.i:                                ; preds = %__rb_erase_augmented.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i.i.i, ptr noundef %mm_rb.i, ptr noundef nonnull @vma_gap_callbacks_rotate) #19
  br label %vma_rb_erase.exit.i

vma_rb_erase.exit.i:                              ; preds = %if.then.i.i.i.i.i, %__rb_erase_augmented.exit.i.i.i.i.i.vma_rb_erase.exit.i_crit_edge
  %138 = ptrtoint ptr %map_count.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %map_count.i, align 8
  %dec.i = add i32 %139, -1
  store i32 %dec.i, ptr %map_count.i, align 8
  %vm_next1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i, i32 0, i32 2
  %140 = ptrtoint ptr %vm_next1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %vm_next1.i, align 4
  %tobool2.not.i = icmp eq ptr %141, null
  br i1 %tobool2.not.i, label %if.else.critedge.i, label %land.rhs.i128

land.rhs.i128:                                    ; preds = %vma_rb_erase.exit.i
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %cmp.i127 = icmp ult i32 %143, %add4
  br i1 %cmp.i127, label %land.rhs.i128.do.body.i_crit_edge, label %if.then.critedge.i

land.rhs.i128.do.body.i_crit_edge:                ; preds = %land.rhs.i128
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

if.then.critedge.i:                               ; preds = %land.rhs.i128
  %vm_next1.i.le = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i, i32 0, i32 2
  %144 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %retval.0.in.i, align 4
  %vm_prev4.i = getelementptr inbounds %struct.vm_area_struct, ptr %141, i32 0, i32 3
  %145 = ptrtoint ptr %vm_prev4.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %prev.1, ptr %vm_prev4.i, align 4
  %vm_rb.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %141, i32 0, i32 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.then.critedge.i
  %rb.addr.08.i.i.i = phi ptr [ %172, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %vm_rb.i.i, %if.then.critedge.i ]
  %add.ptr.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 -16
  %146 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr.i.i.i, align 4
  %vm_flags.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 24
  %148 = ptrtoint ptr %vm_flags.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vm_flags.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i44.i = and i32 %149, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i44.i)
  %tobool.not.i.i.i.i.i45.i = icmp eq i32 %and.i.i.i.i.i44.i, 0
  br i1 %tobool.not.i.i.i.i.i45.i, label %while.body.i.i.i.vm_start_gap.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i46.i

while.body.i.i.i.vm_start_gap.exit.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i.i.i.i

if.then.i.i.i.i.i46.i:                            ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %150 = load i32, ptr @stack_guard_gap, align 4
  %151 = tail call i32 @llvm.usub.sat.i32(i32 %147, i32 %150) #19
  br label %vm_start_gap.exit.i.i.i.i.i

vm_start_gap.exit.i.i.i.i.i:                      ; preds = %if.then.i.i.i.i.i46.i, %while.body.i.i.i.vm_start_gap.exit.i.i.i.i.i_crit_edge
  %vm_start.0.i.i.i.i.i.i = phi i32 [ %151, %if.then.i.i.i.i.i46.i ], [ %147, %while.body.i.i.i.vm_start_gap.exit.i.i.i.i.i_crit_edge ]
  %vm_prev.i.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 -4
  %152 = ptrtoint ptr %vm_prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %vm_prev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i47.i = icmp eq ptr %153, null
  br i1 %tobool.not.i.i.i.i47.i, label %vm_start_gap.exit.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i48.i

vm_start_gap.exit.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i_crit_edge: ; preds = %vm_start_gap.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i.i.i.i

if.then.i.i.i.i48.i:                              ; preds = %vm_start_gap.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %vm_end1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %vm_end1.i.i.i.i.i.i, align 4
  %156 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i.i.i.i, i32 %155) #19
  br label %vma_compute_gap.exit.i.i.i.i

vma_compute_gap.exit.i.i.i.i:                     ; preds = %if.then.i.i.i.i48.i, %vm_start_gap.exit.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i_crit_edge
  %gap.0.i.i.i.i.i = phi i32 [ %vm_start.0.i.i.i.i.i.i, %vm_start_gap.exit.i.i.i.i.i.vma_compute_gap.exit.i.i.i.i_crit_edge ], [ %156, %if.then.i.i.i.i48.i ]
  %rb_left.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 8
  %157 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %158, null
  br i1 %tobool.not.i.i.i.i, label %vma_compute_gap.exit.i.i.i.i.if.end5.i.i.i.i_crit_edge, label %if.then.i.i.i.i

vma_compute_gap.exit.i.i.i.i.if.end5.i.i.i.i_crit_edge: ; preds = %vma_compute_gap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %vma_compute_gap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i.i.i.i = getelementptr i8, ptr %158, i32 12
  %159 = ptrtoint ptr %rb_subtree_gap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rb_subtree_gap.i.i.i.i, align 4
  %161 = tail call i32 @llvm.umax.i32(i32 %160, i32 %gap.0.i.i.i.i.i) #19
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %vma_compute_gap.exit.i.i.i.i.if.end5.i.i.i.i_crit_edge
  %max.0.i.i.i.i = phi i32 [ %gap.0.i.i.i.i.i, %vma_compute_gap.exit.i.i.i.i.if.end5.i.i.i.i_crit_edge ], [ %161, %if.then.i.i.i.i ]
  %rb_right.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 4
  %162 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rb_right.i.i.i.i, align 4
  %tobool7.not.i.i.i.i = icmp eq ptr %163, null
  br i1 %tobool7.not.i.i.i.i, label %if.end5.i.i.i.i.if.end19.i.i.i.i_crit_edge, label %if.then8.i.i.i.i

if.end5.i.i.i.i.if.end19.i.i.i.i_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i.i.i.i = getelementptr i8, ptr %163, i32 12
  %164 = ptrtoint ptr %rb_subtree_gap14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rb_subtree_gap14.i.i.i.i, align 4
  %166 = tail call i32 @llvm.umax.i32(i32 %165, i32 %max.0.i.i.i.i) #19
  br label %if.end19.i.i.i.i

if.end19.i.i.i.i:                                 ; preds = %if.then8.i.i.i.i, %if.end5.i.i.i.i.if.end19.i.i.i.i_crit_edge
  %max.1.i.i.i.i = phi i32 [ %max.0.i.i.i.i, %if.end5.i.i.i.i.if.end19.i.i.i.i_crit_edge ], [ %166, %if.then8.i.i.i.i ]
  %rb_subtree_gap21.i.i.i.i = getelementptr i8, ptr %rb.addr.08.i.i.i, i32 12
  %167 = ptrtoint ptr %rb_subtree_gap21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rb_subtree_gap21.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %max.1.i.i.i.i)
  %cmp22.i.i.i.i = icmp eq i32 %168, %max.1.i.i.i.i
  br i1 %cmp22.i.i.i.i, label %if.end19.i.i.i.i.vma_gap_update.exit.i_crit_edge, label %cleanup.i.i.i

if.end19.i.i.i.i.vma_gap_update.exit.i_crit_edge: ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_gap_update.exit.i

cleanup.i.i.i:                                    ; preds = %if.end19.i.i.i.i
  %169 = ptrtoint ptr %rb_subtree_gap21.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %max.1.i.i.i.i, ptr %rb_subtree_gap21.i.i.i.i, align 4
  %170 = ptrtoint ptr %rb.addr.08.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rb.addr.08.i.i.i, align 4
  %and.i.i.i = and i32 %171, -4
  %172 = inttoptr i32 %and.i.i.i to ptr
  %cmp.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i.vma_gap_update.exit.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.i.i.i

cleanup.i.i.i.vma_gap_update.exit.i_crit_edge:    ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_gap_update.exit.i

vma_gap_update.exit.i:                            ; preds = %cleanup.i.i.i.vma_gap_update.exit.i_crit_edge, %if.end19.i.i.i.i.vma_gap_update.exit.i_crit_edge
  %173 = ptrtoint ptr %vm_next1.i.le to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %vm_next1.i.le, align 4
  %vmacache_seqnum.i.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 2
  %174 = ptrtoint ptr %vmacache_seqnum.i.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %vmacache_seqnum.i.i, align 8
  %inc.i.i = add i64 %175, 1
  store i64 %inc.i.i, ptr %vmacache_seqnum.i.i, align 8
  %vm_flags.i129 = getelementptr inbounds %struct.vm_area_struct, ptr %141, i32 0, i32 8
  %176 = ptrtoint ptr %vm_flags.i129 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %vm_flags.i129, align 4
  %and.i130 = and i32 %177, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool12.not.i = icmp eq i32 %and.i130, 0
  %or.cond151 = and i1 %tobool12.not.i, %downgrade
  br i1 %or.cond151, label %vma_gap_update.exit.i.if.then58_crit_edge, label %vma_gap_update.exit.i.if.end59_crit_edge

vma_gap_update.exit.i.if.end59_crit_edge:         ; preds = %vma_gap_update.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end59

vma_gap_update.exit.i.if.then58_crit_edge:        ; preds = %vma_gap_update.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then58

if.else.critedge.i:                               ; preds = %vma_rb_erase.exit.i
  %vm_next1.i.le160 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i, i32 0, i32 2
  %178 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %retval.0.in.i, align 4
  br i1 %tobool.not.i122, label %if.else.critedge.i.cond.end8.i_crit_edge, label %cond.true6.i

if.else.critedge.i.cond.end8.i_crit_edge:         ; preds = %if.else.critedge.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end8.i

cond.true6.i:                                     ; preds = %if.else.critedge.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %prev.1, i32 0, i32 1
  %179 = ptrtoint ptr %vm_end1.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %vm_end1.i.i, align 4
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.true6.i, %if.else.critedge.i.cond.end8.i_crit_edge
  %cond9.i = phi i32 [ %180, %cond.true6.i ], [ 0, %if.else.critedge.i.cond.end8.i_crit_edge ]
  %highest_vm_end.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 7
  %181 = ptrtoint ptr %highest_vm_end.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %cond9.i, ptr %highest_vm_end.i, align 8
  %182 = ptrtoint ptr %vm_next1.i.le160 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %vm_next1.i.le160, align 4
  %vmacache_seqnum.i49.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 2
  %183 = ptrtoint ptr %vmacache_seqnum.i49.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %vmacache_seqnum.i49.i, align 8
  %inc.i50.i = add i64 %184, 1
  store i64 %inc.i50.i, ptr %vmacache_seqnum.i49.i, align 8
  br i1 %downgrade, label %cond.end8.i.if.then58_crit_edge, label %cond.end8.i.if.end59_crit_edge

cond.end8.i.if.end59_crit_edge:                   ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end59

cond.end8.i.if.then58_crit_edge:                  ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then58

if.then58:                                        ; preds = %cond.end8.i.if.then58_crit_edge, %vma_gap_update.exit.i.if.then58_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_munmap, %if.then.i.i)) #19
          to label %mmap_write_downgrade.exit [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #19
  br label %mmap_write_downgrade.exit

mmap_write_downgrade.exit:                        ; preds = %if.then.i.i, %if.then58
  %mmap_lock.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15
  tail call void @downgrade_write(ptr noundef %mmap_lock.i) #19
  br label %if.end59

if.end59:                                         ; preds = %mmap_write_downgrade.exit, %cond.end8.i.if.end59_crit_edge, %vma_gap_update.exit.i.if.end59_crit_edge
  %spec.select149 = phi i32 [ 1, %mmap_write_downgrade.exit ], [ 0, %cond.end8.i.if.end59_crit_edge ], [ 0, %vma_gap_update.exit.i.if.end59_crit_edge ]
  tail call fastcc void @unmap_region(ptr noundef %mm, ptr noundef %retval.0.i, ptr noundef %prev.1, i32 noundef %start, i32 noundef %add4)
  %hiwater_vm.i.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 18
  %185 = ptrtoint ptr %hiwater_vm.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %hiwater_vm.i.i, align 4
  %total_vm.i.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 19
  %187 = ptrtoint ptr %total_vm.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %total_vm.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %188)
  %cmp.i.i = icmp ult i32 %186, %188
  br i1 %cmp.i.i, label %if.then.i.i132, label %if.end59.update_hiwater_vm.exit.i_crit_edge

if.end59.update_hiwater_vm.exit.i_crit_edge:      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #21
  br label %update_hiwater_vm.exit.i

if.then.i.i132:                                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #21
  %189 = ptrtoint ptr %hiwater_vm.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %hiwater_vm.i.i, align 4
  br label %update_hiwater_vm.exit.i

update_hiwater_vm.exit.i:                         ; preds = %if.then.i.i132, %if.end59.update_hiwater_vm.exit.i_crit_edge
  %stack_vm.i.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 24
  %data_vm.i.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 22
  %exec_vm.i.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 23
  br label %do.body.i141

do.body.i141:                                     ; preds = %remove_vma.exit.i.do.body.i141_crit_edge, %update_hiwater_vm.exit.i
  %vma.addr.0.i133 = phi ptr [ %retval.0.i, %update_hiwater_vm.exit.i ], [ %205, %remove_vma.exit.i.do.body.i141_crit_edge ]
  %nr_accounted.0.i = phi i32 [ 0, %update_hiwater_vm.exit.i ], [ %spec.select.i, %remove_vma.exit.i.do.body.i141_crit_edge ]
  %vm_end.i.i134 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i133, i32 0, i32 1
  %190 = ptrtoint ptr %vm_end.i.i134 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %vm_end.i.i134, align 4
  %192 = ptrtoint ptr %vma.addr.0.i133 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %vma.addr.0.i133, align 4
  %sub.i.i135 = sub i32 %191, %193
  %shr.i.i136 = lshr i32 %sub.i.i135, 12
  %vm_flags.i137 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i133, i32 0, i32 8
  %194 = ptrtoint ptr %vm_flags.i137 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %vm_flags.i137, align 4
  %and.i138 = and i32 %195, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139 = icmp eq i32 %and.i138, 0
  %add.i = select i1 %tobool.not.i139, i32 0, i32 %shr.i.i136
  %spec.select.i = add i32 %add.i, %nr_accounted.0.i
  %196 = ptrtoint ptr %total_vm.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %total_vm.i.i, align 8
  %add.i.i = sub i32 %197, %shr.i.i136
  store volatile i32 %add.i.i, ptr %total_vm.i.i, align 8
  %and.i.i.i140 = and i32 %195, 262
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i.i140)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i140, 4
  br i1 %cmp.i.i.i, label %if.then.i13.i, label %if.else.i.i

if.then.i13.i:                                    ; preds = %do.body.i141
  call void @__sanitizer_cov_trace_pc() #21
  %198 = ptrtoint ptr %exec_vm.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %exec_vm.i.i, align 4
  %add8.i.i = sub i32 %199, %shr.i.i136
  store i32 %add8.i.i, ptr %exec_vm.i.i, align 4
  br label %vm_stat_account.exit.i

if.else.i.i:                                      ; preds = %do.body.i141
  %and.i27.i.i = and i32 %195, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i.i)
  %cmp.i28.not.i.i = icmp eq i32 %and.i27.i.i, 0
  br i1 %cmp.i28.not.i.i, label %if.else12.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %200 = ptrtoint ptr %stack_vm.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %stack_vm.i.i, align 8
  %add11.i.i = sub i32 %201, %shr.i.i136
  store i32 %add11.i.i, ptr %stack_vm.i.i, align 8
  br label %vm_stat_account.exit.i

if.else12.i.i:                                    ; preds = %if.else.i.i
  %and.i29.i.i = and i32 %195, 266
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i29.i.i)
  %cmp.i30.i.i = icmp eq i32 %and.i29.i.i, 2
  br i1 %cmp.i30.i.i, label %if.then14.i.i, label %if.else12.i.i.vm_stat_account.exit.i_crit_edge

if.else12.i.i.vm_stat_account.exit.i_crit_edge:   ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_stat_account.exit.i

if.then14.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %202 = ptrtoint ptr %data_vm.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %data_vm.i.i, align 8
  %add15.i.i = sub i32 %203, %shr.i.i136
  store i32 %add15.i.i, ptr %data_vm.i.i, align 8
  br label %vm_stat_account.exit.i

vm_stat_account.exit.i:                           ; preds = %if.then14.i.i, %if.else12.i.i.vm_stat_account.exit.i_crit_edge, %if.then10.i.i, %if.then.i13.i
  %vm_next.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i133, i32 0, i32 2
  %204 = ptrtoint ptr %vm_next.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %vm_next.i.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 183) #19
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i133, i32 0, i32 12
  %206 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %207, null
  br i1 %tobool.not.i.i, label %vm_stat_account.exit.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

vm_stat_account.exit.i.if.end.i.i_crit_edge:      ; preds = %vm_stat_account.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %vm_stat_account.exit.i
  %close.i.i = getelementptr inbounds %struct.vm_operations_struct, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %close.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %close.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %209, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i14.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i

if.then.i14.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void %209(ptr noundef %vma.addr.0.i133) #19
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i14.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %vm_stat_account.exit.i.if.end.i.i_crit_edge
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0.i133, i32 0, i32 14
  %210 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %vm_file.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %211, null
  br i1 %tobool8.not.i.i, label %if.end.i.i.remove_vma.exit.i_crit_edge, label %if.then9.i.i

if.end.i.i.remove_vma.exit.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove_vma.exit.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @fput(ptr noundef nonnull %211) #19
  br label %remove_vma.exit.i

remove_vma.exit.i:                                ; preds = %if.then9.i.i, %if.end.i.i.remove_vma.exit.i_crit_edge
  tail call void @vm_area_free(ptr noundef %vma.addr.0.i133) #19
  %tobool3.not.i = icmp eq ptr %205, null
  br i1 %tobool3.not.i, label %remove_vma_list.exit, label %remove_vma.exit.i.do.body.i141_crit_edge

remove_vma.exit.i.do.body.i141_crit_edge:         ; preds = %remove_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i141

remove_vma_list.exit:                             ; preds = %remove_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i15.i = sub i32 0, %spec.select.i
  %conv.i.i.i = sext i32 %sub.i15.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %212 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i.i, i32 noundef %212) #19
  tail call fastcc void @validate_mm(ptr noundef %mm) #19
  br label %cleanup61

cleanup61:                                        ; preds = %remove_vma_list.exit, %if.then41.cleanup61_crit_edge, %if.then27.cleanup61_crit_edge, %cleanup.cleanup61_crit_edge, %land.lhs.true.cleanup61_crit_edge, %land.lhs.true.i.cleanup61_crit_edge, %if.end7.cleanup61_crit_edge, %if.end.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.5 = phi i32 [ %spec.select149, %remove_vma_list.exit ], [ %call43, %if.then41.cleanup61_crit_edge ], [ %call29, %if.then27.cleanup61_crit_edge ], [ %call17, %cleanup.cleanup61_crit_edge ], [ -22, %entry.cleanup61_crit_edge ], [ -22, %if.end.cleanup61_crit_edge ], [ 0, %land.lhs.true.i.cleanup61_crit_edge ], [ 0, %if.end7.cleanup61_crit_edge ], [ -12, %land.lhs.true.cleanup61_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @userfaultfd_unmap_prep(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_munmap(ptr noundef %mm, i32 noundef %start, i32 noundef %len, ptr noundef %uf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__do_munmap(ptr noundef %mm, i32 noundef %start, i32 noundef %len, ptr noundef %uf, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vm_munmap(i32 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__vm_munmap(i32 noundef %start, i32 noundef %len, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vm_munmap(i32 noundef %start, i32 noundef %len, i1 noundef zeroext %downgrade) unnamed_addr #0 align 64 {
entry:
  %uf = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uf) #19
  %6 = getelementptr inbounds %struct.list_head, ptr %uf, i32 0, i32 1
  %7 = ptrtoint ptr %uf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %uf, ptr %uf, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %uf, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__vm_munmap, %if.then.i.i)) #19
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #19
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 15
  %call.i = call i32 @down_write_killable(ptr noundef %mmap_lock.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__vm_munmap, %if.then.i4.i)) #19
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !232

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #19
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %mmap_write_lock_killable.exit
  %call4 = call i32 @__do_munmap(ptr noundef %5, i32 noundef %start, i32 noundef %len, ptr noundef nonnull %uf, i1 noundef zeroext %downgrade)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__vm_munmap, %if.then.i.i14)) #19
          to label %mmap_read_unlock.exit [label %if.then.i.i14], !srcloc !232

if.then.i.i14:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #19
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i14, %if.then5
  call void @up_read(ptr noundef %mmap_lock.i) #19
  br label %if.end6

if.else:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__vm_munmap, %if.then.i.i16)) #19
          to label %mmap_write_unlock.exit [label %if.then.i.i16], !srcloc !232

if.then.i.i16:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #19
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i16, %if.else
  call void @up_write(ptr noundef %mmap_lock.i) #19
  br label %if.end6

if.end6:                                          ; preds = %mmap_write_unlock.exit, %mmap_read_unlock.exit
  %ret.0 = phi i32 [ 0, %mmap_read_unlock.exit ], [ %call4, %mmap_write_unlock.exit ]
  call void @userfaultfd_unmap_complete(ptr noundef %5, ptr noundef nonnull %uf) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %mmap_write_lock_killable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uf) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_munmap(i32 noundef %addr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @__vm_munmap(i32 noundef %addr, i32 noundef %len, i1 noundef zeroext true) #19
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_remap_file_pages(i32 noundef %start, i32 noundef %size, i32 noundef %prot, i32 noundef %pgoff, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__do_sys_remap_file_pages(i32 noundef %start, i32 noundef %size, i32 noundef %prot, i32 noundef %pgoff, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_remap_file_pages(i32 noundef %start, i32 noundef %size, i32 noundef %prot, i32 noundef %pgoff, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  %populate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #21
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %populate) #19
  %6 = ptrtoint ptr %populate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %populate, align 4
  %.b153 = load i1, ptr @__do_sys_remap_file_pages.__already_done, align 1
  br i1 %.b153, label %entry.if.end_crit_edge, label %if.then, !prof !228

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__do_sys_remap_file_pages.__already_done, align 1
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm, i32 noundef %8) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prot)
  %tobool18.not = icmp eq i32 %prot, 0
  br i1 %tobool18.not, label %if.end20, label %if.end.cleanup102_crit_edge

if.end.cleanup102_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup102

if.end20:                                         ; preds = %if.end
  %and = and i32 %start, -4096
  %and21 = and i32 %size, -4096
  %add = add i32 %and21, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %and)
  %cmp.not = icmp ule i32 %add, %and
  %shr = lshr i32 %size, 12
  %9 = xor i32 %pgoff, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp25 = icmp ugt i32 %shr, %9
  %or.cond = or i1 %cmp.not, %cmp25
  br i1 %or.cond, label %if.end20.cleanup102_crit_edge, label %if.end27

if.end20.cleanup102_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup102

if.end27:                                         ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__do_sys_remap_file_pages, %if.then.i.i)) #19
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #19
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end27
  %mmap_lock.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_sys_remap_file_pages, %if.then.i4.i)) #19
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !232

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #19
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end31, label %mmap_write_lock_killable.exit.cleanup102_crit_edge

mmap_write_lock_killable.exit.cleanup102_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup102

if.end31:                                         ; preds = %mmap_write_lock_killable.exit
  %call.i155 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %and) #19
  %tobool.not.i = icmp eq ptr %call.i155, null
  br i1 %tobool.not.i, label %if.end31.out_crit_edge, label %land.lhs.true.i

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

land.lhs.true.i:                                  ; preds = %if.end31
  %10 = ptrtoint ptr %call.i155 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i155, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and)
  %cmp.i156 = icmp ugt i32 %11, %and
  br i1 %cmp.i156, label %land.lhs.true.i.out_crit_edge, label %lor.lhs.false

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call.i155, i32 0, i32 8
  %12 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_flags, align 4
  %and34 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %lor.lhs.false.out_crit_edge, label %if.end37

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end37:                                         ; preds = %lor.lhs.false
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call.i155, i32 0, i32 1
  %14 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp39 = icmp ugt i32 %add, %15
  br i1 %cmp39, label %for.cond.preheader, label %if.end37.if.end64_crit_edge

if.end37.if.end64_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64

for.cond.preheader:                               ; preds = %if.end37
  %vm_file46 = getelementptr inbounds %struct.vm_area_struct, ptr %call.i155, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %if.end54.for.cond_crit_edge, %for.cond.preheader
  %call32.pn = phi ptr [ %next.0, %if.end54.for.cond_crit_edge ], [ %call.i155, %for.cond.preheader ]
  %next.0.in = getelementptr inbounds %struct.vm_area_struct, ptr %call32.pn, i32 0, i32 2
  %16 = ptrtoint ptr %next.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %next.0 = load ptr, ptr %next.0.in, align 4
  %tobool41.not = icmp eq ptr %next.0, null
  br i1 %tobool41.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.body:                                         ; preds = %for.cond
  %17 = ptrtoint ptr %next.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %next.0, align 4
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 3
  %19 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vm_prev, align 4
  %vm_end42 = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %vm_end42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_end42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp43.not = icmp eq i32 %18, %22
  br i1 %cmp43.not, label %if.end45, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end45:                                         ; preds = %for.body
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 14
  %23 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_file, align 4
  %25 = ptrtoint ptr %vm_file46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vm_file46, align 4
  %cmp47.not = icmp eq ptr %24, %26
  br i1 %cmp47.not, label %if.end49, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end49:                                         ; preds = %if.end45
  %vm_flags50 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 8
  %27 = ptrtoint ptr %vm_flags50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_flags50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %13)
  %cmp52.not = icmp eq i32 %28, %13
  br i1 %cmp52.not, label %if.end54, label %if.end49.out_crit_edge

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end54:                                         ; preds = %if.end49
  %vm_end56 = getelementptr inbounds %struct.vm_area_struct, ptr %next.0, i32 0, i32 1
  %29 = ptrtoint ptr %vm_end56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_end56, align 4
  %cmp57.not = icmp ugt i32 %add, %30
  br i1 %cmp57.not, label %if.end54.for.cond_crit_edge, label %if.end54.if.end64_crit_edge

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64

if.end54.for.cond_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond

if.end64:                                         ; preds = %if.end54.if.end64_crit_edge, %if.end37.if.end64_crit_edge
  %or77 = and i32 %13, 7
  %and78 = and i32 %flags, 65536
  %and81 = and i32 %13, 8192
  %31 = or i32 %and78, %and81
  %spec.select = or i32 %31, 32785
  %vm_file86 = getelementptr inbounds %struct.vm_area_struct, ptr %call.i155, i32 0, i32 14
  %32 = ptrtoint ptr %vm_file86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vm_file86, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %33, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #19
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #19, !srcloc !233
  %35 = ptrtoint ptr %vm_file86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vm_file86, align 4
  %call89 = call i32 @do_mmap(ptr noundef %36, i32 noundef %and, i32 noundef %and21, i32 noundef %or77, i32 noundef %spec.select, i32 noundef %pgoff, ptr noundef nonnull %populate, ptr noundef null)
  tail call void @fput(ptr noundef %33) #19
  br label %out

out:                                              ; preds = %if.end64, %if.end49.out_crit_edge, %if.end45.out_crit_edge, %for.body.out_crit_edge, %for.cond.out_crit_edge, %lor.lhs.false.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end31.out_crit_edge
  %ret.0 = phi i32 [ %call89, %if.end64 ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end31.out_crit_edge ], [ -22, %land.lhs.true.i.out_crit_edge ], [ -22, %for.body.out_crit_edge ], [ -22, %if.end45.out_crit_edge ], [ -22, %if.end49.out_crit_edge ], [ -22, %for.cond.out_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_remap_file_pages, %if.then.i.i157)) #19
          to label %mmap_write_unlock.exit [label %if.then.i.i157], !srcloc !232

if.then.i.i157:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #19
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i157, %out
  tail call void @up_write(ptr noundef %mmap_lock.i) #19
  %37 = ptrtoint ptr %populate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %populate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool90.not = icmp eq i32 %38, 0
  br i1 %tobool90.not, label %mmap_write_unlock.exit.if.end92_crit_edge, label %if.then91

mmap_write_unlock.exit.if.end92_crit_edge:        ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end92

if.then91:                                        ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call.i159 = tail call i32 @__mm_populate(i32 noundef %ret.0, i32 noundef %38, i32 noundef 1) #19
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %mmap_write_unlock.exit.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %ret.0)
  %cmp93 = icmp ugt i32 %ret.0, -4096
  %spec.store.select = select i1 %cmp93, i32 %ret.0, i32 0, !prof !229
  br label %cleanup102

cleanup102:                                       ; preds = %if.end92, %mmap_write_lock_killable.exit.cleanup102_crit_edge, %if.end20.cleanup102_crit_edge, %if.end.cleanup102_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end92 ], [ -22, %if.end.cleanup102_crit_edge ], [ -22, %if.end20.cleanup102_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup102_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %populate) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vm_brk_flags(i32 noundef %addr, i32 noundef %request, i32 noundef %flags) #0 align 64 {
entry:
  %uf = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uf) #19
  %6 = getelementptr inbounds %struct.list_head, ptr %uf, i32 0, i32 1
  %7 = ptrtoint ptr %uf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %uf, ptr %uf, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %uf, ptr %6, align 4
  %add = add i32 %request, 4095
  %and = and i32 %add, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %request)
  %cmp = icmp ult i32 %and, %request
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@vm_brk_flags, %if.then.i.i)) #19
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #19
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end3
  %mmap_lock.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 15
  %call.i = call i32 @down_write_killable(ptr noundef %mmap_lock.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@vm_brk_flags, %if.then.i4.i)) #19
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !232

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #19
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %mmap_write_lock_killable.exit
  %call8 = call fastcc i32 @do_brk_flags(i32 noundef %addr, i32 noundef %and, i32 noundef %flags, ptr noundef nonnull %uf)
  %def_flags = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 25
  %9 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def_flags, align 4
  %and9 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp ne i32 %and9, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@vm_brk_flags, %if.then.i.i28)) #19
          to label %mmap_write_unlock.exit [label %if.then.i.i28], !srcloc !232

if.then.i.i28:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #19
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i28, %if.end7
  call void @up_write(ptr noundef %mmap_lock.i) #19
  call void @userfaultfd_unmap_complete(ptr noundef %5, ptr noundef nonnull %uf) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool12.not = icmp eq i32 %call8, 0
  %or.cond = select i1 %cmp10.not, i1 %tobool12.not, i1 false
  br i1 %or.cond, label %if.then13, label %mmap_write_unlock.exit.cleanup_crit_edge

mmap_write_unlock.exit.cleanup_crit_edge:         ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then13:                                        ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call.i30 = call i32 @__mm_populate(i32 noundef %addr, i32 noundef %and, i32 noundef 1) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %mmap_write_unlock.exit.cleanup_crit_edge, %mmap_write_lock_killable.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ], [ 0, %if.then13 ], [ %call8, %mmap_write_unlock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uf) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_brk_flags(i32 noundef %addr, i32 noundef %len, i32 noundef %flags, ptr noundef %uf) unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  %rb_link = alloca ptr, align 4
  %rb_parent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #19
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_link) #19
  %7 = ptrtoint ptr %rb_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_link, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_parent) #19
  %8 = ptrtoint ptr %rb_parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_parent, align 4, !annotation !230
  %shr = lshr i32 %addr, 12
  %and = and i32 %flags, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %personality = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62
  %9 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %personality, align 32
  %and4 = lshr i32 %10, 20
  %11 = and i32 %and4, 4
  %def_flags = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 25
  %12 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %def_flags, align 4
  %or8 = or i32 %13, %flags
  %or9 = or i32 %or8, %11
  %or10 = or i32 %or9, 1048691
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %addr)
  %cmp.i = icmp ult i32 %addr, 8192
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %len)
  %cmp2.i = icmp ugt i32 %len, -1226833920
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %get_unmapped_area.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %get_unmapped_area.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_unmapped_area.i, align 8
  %call18.i = tail call i32 %15(ptr noundef null, i32 noundef %addr, i32 noundef %len, i32 noundef 0, i32 noundef 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call18.i)
  %cmp19.i = icmp ugt i32 %call18.i, -4096
  br i1 %cmp19.i, label %if.end4.i.cleanup_crit_edge, label %if.end23.i, !prof !229

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end23.i:                                       ; preds = %if.end4.i
  %sub.i = sub nuw i32 -1226833920, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %sub.i)
  %cmp24.i = icmp ugt i32 %call18.i, %sub.i
  br i1 %cmp24.i, label %if.end23.i.cleanup_crit_edge, label %if.end26.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end26.i:                                       ; preds = %if.end23.i
  %and27.i = and i32 %call18.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.cleanup_crit_edge

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end30.i:                                       ; preds = %if.end26.i
  %call31.i = tail call i32 @security_mmap_addr(i32 noundef %call18.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call31.i)
  %cmp12 = icmp ugt i32 %call31.i, -4096
  br i1 %cmp12, label %if.end30.i.cleanup_crit_edge, label %if.end16, !prof !237

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end16:                                         ; preds = %if.end30.i
  %16 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %def_flags, align 4
  %and.i115 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i, label %if.end16.if.end21_crit_edge, label %if.then.i

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.then.i:                                        ; preds = %if.end16
  %shr.i = lshr i32 %len, 12
  %locked_vm.i = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 20
  %18 = ptrtoint ptr %locked_vm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %locked_vm.i, align 4
  %add.i = add i32 %19, %shr.i
  %20 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 111
  %24 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %25, i32 0, i32 51, i32 8
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %shr1.i = lshr i32 %27, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shr1.i)
  %cmp.i116 = icmp ugt i32 %add.i, %shr1.i
  br i1 %cmp.i116, label %land.lhs.true.i, label %if.then.i.if.end21_crit_edge

if.then.i.if.end21_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call zeroext i1 @capable(i32 noundef 14) #19
  br i1 %call2.i, label %land.lhs.true.i.if.end21_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true.i.if.end21_crit_edge, %if.then.i.if.end21_crit_edge, %if.end16.if.end21_crit_edge
  %add.i119 = add i32 %len, %addr
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end21
  %call.i = call fastcc i32 @find_vma_links(ptr noundef %5, i32 noundef %addr, i32 noundef %add.i119, ptr noundef nonnull %prev, ptr noundef nonnull %rb_link, ptr noundef nonnull %rb_parent) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i120 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i120, label %if.end25, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call.i.i = tail call i32 @__do_munmap(ptr noundef %5, i32 noundef %addr, i32 noundef %len, ptr noundef %uf, i1 noundef zeroext false) #19
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.cond.i

if.end25:                                         ; preds = %while.cond.i
  %shr26 = lshr i32 %len, 12
  %call27 = tail call zeroext i1 @may_expand_vm(ptr noundef %5, i32 noundef %or10, i32 noundef %shr26)
  br i1 %call27, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %map_count = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 13
  %28 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %map_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_max_map_count to i32))
  %30 = load i32, ptr @sysctl_max_map_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %cmp30 = icmp sgt i32 %29, %30
  br i1 %cmp30, label %if.end29.cleanup_crit_edge, label %if.end32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %call34 = tail call i32 @security_vm_enough_memory_mm(ptr noundef %5, i32 noundef %shr26) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev, align 4
  %call38 = tail call ptr @vma_merge(ptr noundef %5, ptr noundef %32, i32 noundef %addr, i32 noundef %add.i119, i32 noundef %or10, ptr noundef null, ptr noundef null, i32 noundef %shr, ptr undef, [1 x i32] zeroinitializer, ptr noundef null)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end41, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end41:                                         ; preds = %if.end37
  %call42 = tail call ptr @vm_area_alloc(ptr noundef %5) #19
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i122 = sub nsw i32 0, %shr26
  %conv.i.i = sext i32 %sub.i122 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %33 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %33) #19
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %call42, i32 0, i32 12
  %34 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %vm_ops.i, align 4
  %35 = ptrtoint ptr %call42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %addr, ptr %call42, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call42, i32 0, i32 1
  %36 = ptrtoint ptr %vm_end to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i119, ptr %vm_end, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call42, i32 0, i32 13
  %37 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr, ptr %vm_pgoff, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call42, i32 0, i32 8
  %38 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or10, ptr %vm_flags, align 4
  %and.i123 = and i32 %or10, 15
  %arrayidx.i = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %and.i123
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %call42, i32 0, i32 7
  %41 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %vm_page_prot, align 4
  %42 = ptrtoint ptr %rb_link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rb_link, align 4
  %44 = ptrtoint ptr %rb_parent to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rb_parent, align 4
  tail call fastcc void @vma_link(ptr noundef %5, ptr noundef nonnull %call42, ptr noundef %32, ptr noundef %43, ptr noundef %45)
  br label %out

out:                                              ; preds = %if.end46, %if.end37.out_crit_edge
  %vma.0 = phi ptr [ %call38, %if.end37.out_crit_edge ], [ %call42, %if.end46 ]
  tail call void @perf_event_mmap(ptr noundef nonnull %vma.0) #19
  %total_vm = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 19
  %46 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %total_vm, align 8
  %add50 = add i32 %47, %shr26
  store i32 %add50, ptr %total_vm, align 8
  %data_vm = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 22
  %48 = ptrtoint ptr %data_vm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_vm, align 8
  %add52 = add i32 %49, %shr26
  store i32 %add52, ptr %data_vm, align 8
  %and53 = and i32 %or8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %out.cleanup_crit_edge, label %if.then55

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then55:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  %locked_vm = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 20
  %50 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %locked_vm, align 4
  %add57 = add i32 %51, %shr26
  store i32 %add57, ptr %locked_vm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %out.cleanup_crit_edge, %if.then44, %if.end32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then44 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %out.cleanup_crit_edge ], [ -11, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end26.i.cleanup_crit_edge ], [ -12, %if.end23.i.cleanup_crit_edge ], [ %call18.i, %if.end4.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call31.i, %if.end30.i.cleanup_crit_edge ], [ -12, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_parent) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_link) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @userfaultfd_unmap_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vm_brk(i32 noundef %addr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vm_brk_flags(i32 noundef %addr, i32 noundef %len, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_mmap(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  %tlb = alloca %struct.mmu_gather, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tlb) #19
  %0 = call ptr @memset(ptr %tlb, i32 255, i32 68)
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 49
  %1 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %2, null
  br i1 %tobool.i.not.i, label %entry.mmu_notifier_release.exit_crit_edge, label %if.then.i

entry.mmu_notifier_release.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %mmu_notifier_release.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmu_notifier_release(ptr noundef %mm) #19
  br label %mmu_notifier_release.exit

mmu_notifier_release.exit:                        ; preds = %if.then.i, %entry.mmu_notifier_release.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 43
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %mmu_notifier_release.exit.if.end_crit_edge, label %if.then, !prof !228

mmu_notifier_release.exit.if.end_crit_edge:       ; preds = %mmu_notifier_release.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %mmu_notifier_release.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call2 = tail call zeroext i1 @__oom_reap_task_mm(ptr noundef %mm) #19
  tail call void @_set_bit(i32 noundef 21, ptr noundef %flags.i) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %mmu_notifier_release.exit.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@exit_mmap, %if.then.i.i)) #19
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext true) #19
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock.i) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@exit_mmap, %if.then.i3.i)) #19
          to label %mmap_write_lock.exit [label %if.then.i3.i], !srcloc !232

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext true, i1 noundef zeroext true) #19
  br label %mmap_write_lock.exit

mmap_write_lock.exit:                             ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %locked_vm = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 20
  %6 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %locked_vm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %mmap_write_lock.exit.if.end5_crit_edge, label %if.then4

mmap_write_lock.exit.if.end5_crit_edge:           ; preds = %mmap_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then4:                                         ; preds = %mmap_write_lock.exit
  %8 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm, align 8
  %tobool.not9.i = icmp eq ptr %9, null
  br i1 %tobool.not9.i, label %if.then4.if.then8_crit_edge, label %land.rhs.lr.ph.i

if.then4.if.then8_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8

land.rhs.lr.ph.i:                                 ; preds = %if.then4
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_mm.i, align 4
  %locked_vm.i = getelementptr inbounds %struct.anon.15, ptr %11, i32 0, i32 20
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %tmp.010.i = phi ptr [ %9, %land.rhs.lr.ph.i ], [ %24, %if.end.i.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %tmp.010.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp.010.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not = icmp eq i32 %13, -1
  br i1 %cmp.i.not, label %land.rhs.i.if.end5_crit_edge, label %while.body.i

land.rhs.i.if.end5_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

while.body.i:                                     ; preds = %land.rhs.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.010.i, i32 0, i32 8
  %14 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i40

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i40:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.010.i, i32 0, i32 1
  %16 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end.i.i, align 4
  %sub.i.i = sub i32 %17, %13
  %shr.i.i = lshr i32 %sub.i.i, 12
  %18 = ptrtoint ptr %locked_vm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %locked_vm.i, align 4
  %sub.i = sub i32 %19, %shr.i.i
  store i32 %sub.i, ptr %locked_vm.i, align 4
  %20 = ptrtoint ptr %tmp.010.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp.010.i, align 4
  %22 = load i32, ptr %vm_end.i.i, align 4
  tail call void @munlock_vma_pages_range(ptr noundef nonnull %tmp.010.i, i32 noundef %21, i32 noundef %22) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i40, %while.body.i.if.end.i_crit_edge
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.010.i, i32 0, i32 2
  %23 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_next.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i.if.end5_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %land.rhs.i.if.end5_crit_edge, %mmap_write_lock.exit.if.end5_crit_edge
  %25 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load ptr, ptr %mm, align 8
  %tobool7.not = icmp eq ptr %.pr, null
  br i1 %tobool7.not, label %if.end5.if.then8_crit_edge, label %if.end9

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then8

if.then8:                                         ; preds = %if.end5.if.then8_crit_edge, %if.then4.if.then8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@exit_mmap, %if.then.i.i41)) #19
          to label %mmap_write_unlock.exit [label %if.then.i.i41], !srcloc !232

if.then.i.i41:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #19
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i41, %if.then8
  tail call void @up_write(ptr noundef %mmap_lock.i) #19
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call void @lru_add_drain() #19
  tail call void @flush_cache_mm(ptr noundef %mm) #19
  call void @tlb_gather_mmu_fullmm(ptr noundef nonnull %tlb, ptr noundef %mm) #19
  call void @unmap_vmas(ptr noundef nonnull %tlb, ptr noundef nonnull %.pr, i32 noundef 0, i32 noundef -1) #19
  call void @free_pgtables(ptr noundef nonnull %tlb, ptr noundef nonnull %.pr, i32 noundef 8192, i32 noundef 0) #19
  call void @tlb_finish_mmu(ptr noundef nonnull %tlb) #19
  br label %while.body

while.body:                                       ; preds = %remove_vma.exit.while.body_crit_edge, %if.end9
  %vma.055 = phi ptr [ %.pr, %if.end9 ], [ %33, %remove_vma.exit.while.body_crit_edge ]
  %nr_accounted.054 = phi i32 [ 0, %if.end9 ], [ %nr_accounted.1, %remove_vma.exit.while.body_crit_edge ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.055, i32 0, i32 8
  %26 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_flags, align 4
  %and = and i32 %27, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %while.body.if.end14_crit_edge, label %if.then12

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.055, i32 0, i32 1
  %28 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_end.i, align 4
  %30 = ptrtoint ptr %vma.055 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vma.055, align 4
  %sub.i43 = sub i32 %29, %31
  %shr.i = lshr i32 %sub.i43, 12
  %add = add i32 %shr.i, %nr_accounted.054
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %while.body.if.end14_crit_edge
  %nr_accounted.1 = phi i32 [ %add, %if.then12 ], [ %nr_accounted.054, %while.body.if.end14_crit_edge ]
  %vm_next.i44 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.055, i32 0, i32 2
  %32 = ptrtoint ptr %vm_next.i44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vm_next.i44, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 183) #19
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.055, i32 0, i32 12
  %34 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vm_ops.i, align 4
  %tobool.not.i45 = icmp eq ptr %35, null
  br i1 %tobool.not.i45, label %if.end14.if.end.i47_crit_edge, label %land.lhs.true.i

if.end14.if.end.i47_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i47

land.lhs.true.i:                                  ; preds = %if.end14
  %close.i = getelementptr inbounds %struct.vm_operations_struct, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %close.i, align 4
  %tobool5.not.i = icmp eq ptr %37, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end.i47_crit_edge, label %if.then.i46

land.lhs.true.i.if.end.i47_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i47

if.then.i46:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  call void %37(ptr noundef nonnull %vma.055) #19
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i46, %land.lhs.true.i.if.end.i47_crit_edge, %if.end14.if.end.i47_crit_edge
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.055, i32 0, i32 14
  %38 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vm_file.i, align 4
  %tobool8.not.i = icmp eq ptr %39, null
  br i1 %tobool8.not.i, label %if.end.i47.remove_vma.exit_crit_edge, label %if.then9.i

if.end.i47.remove_vma.exit_crit_edge:             ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #21
  br label %remove_vma.exit

if.then9.i:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #21
  call void @fput(ptr noundef nonnull %39) #19
  br label %remove_vma.exit

remove_vma.exit:                                  ; preds = %if.then9.i, %if.end.i47.remove_vma.exit_crit_edge
  call void @vm_area_free(ptr noundef nonnull %vma.055) #19
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 3187, i32 noundef 0) #19
  %call.i = call i32 @__cond_resched() #19
  %tobool10.not = icmp eq ptr %33, null
  br i1 %tobool10.not, label %while.end, label %remove_vma.exit.while.body_crit_edge

remove_vma.exit.while.body_crit_edge:             ; preds = %remove_vma.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.end:                                        ; preds = %remove_vma.exit
  %40 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@exit_mmap, %if.then.i.i48)) #19
          to label %mmap_write_unlock.exit50 [label %if.then.i.i48], !srcloc !232

if.then.i.i48:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #19
  br label %mmap_write_unlock.exit50

mmap_write_unlock.exit50:                         ; preds = %if.then.i.i48, %while.end
  call void @up_write(ptr noundef %mmap_lock.i) #19
  %sub.i51 = sub i32 0, %nr_accounted.1
  %conv.i.i = sext i32 %sub.i51 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %41 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %41) #19
  br label %cleanup

cleanup:                                          ; preds = %mmap_write_unlock.exit50, %mmap_write_unlock.exit
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tlb) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__oom_reap_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu_fullmm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_vmas(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pgtables(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @insert_vm_struct(ptr noundef %mm, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  %rb_link = alloca ptr, align 4
  %rb_parent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #19
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_link) #19
  %1 = ptrtoint ptr %rb_link to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_link, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_parent) #19
  %2 = ptrtoint ptr %rb_parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_parent, align 4, !annotation !230
  %3 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %5 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_end, align 4
  %call = call fastcc i32 @find_vma_links(ptr noundef %mm, i32 noundef %4, i32 noundef %6, ptr noundef nonnull %prev, ptr noundef nonnull %rb_link, ptr noundef nonnull %rb_parent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %7 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_flags, align 4
  %and = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_end, align 4
  %11 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %10, %12
  %shr.i = lshr i32 %sub.i, 12
  %call3 = tail call i32 @security_vm_enough_memory_mm(ptr noundef %mm, i32 noundef %shr.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %13 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_ops.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end21

do.body:                                          ; preds = %if.end6
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %15 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %anon_vma, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %do.end19, label %do.body13, !prof !228

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3223, 0\0A.popsection", ""() #19, !srcloc !255
  unreachable

do.end19:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %17 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vma, align 4
  %shr = lshr i32 %18, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %19 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %vm_pgoff, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end6.if.end21_crit_edge
  %20 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev, align 4
  %22 = ptrtoint ptr %rb_link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rb_link, align 4
  %24 = ptrtoint ptr %rb_parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rb_parent, align 4
  tail call fastcc void @vma_link(ptr noundef %mm, ptr noundef %vma, ptr noundef %21, ptr noundef %23, ptr noundef %25)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_parent) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_link) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_vma_links(ptr noundef %mm, i32 noundef %addr, i32 noundef %end, ptr nocapture noundef writeonly %pprev, ptr nocapture noundef writeonly %rb_link, ptr nocapture noundef writeonly %rb_parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !229

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 155, i32 noundef 9, ptr noundef null) #19
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #19
  %1 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !229

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_mm(ptr noundef %mm) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #19, !srcloc !254
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  %mm_rb = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 1
  %3 = ptrtoint ptr %mm_rb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mm_rb, align 4
  %tobool.not3239 = icmp eq ptr %4, null
  br i1 %tobool.not3239, label %mmap_assert_locked.exit.while.end_crit_edge, label %mmap_assert_locked.exit.while.body.lr.ph_crit_edge

mmap_assert_locked.exit.while.body.lr.ph_crit_edge: ; preds = %mmap_assert_locked.exit
  br label %while.body.lr.ph

mmap_assert_locked.exit.while.end_crit_edge:      ; preds = %mmap_assert_locked.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.else.while.body.lr.ph_crit_edge, %mmap_assert_locked.exit.while.body.lr.ph_crit_edge
  %5 = phi ptr [ %12, %if.else.while.body.lr.ph_crit_edge ], [ %4, %mmap_assert_locked.exit.while.body.lr.ph_crit_edge ]
  %rb_prev.0.ph40 = phi ptr [ %8, %if.else.while.body.lr.ph_crit_edge ], [ null, %mmap_assert_locked.exit.while.body.lr.ph_crit_edge ]
  br label %while.body

while.cond:                                       ; preds = %cleanup
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  %6 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_left, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.end.loopexit, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %8 = phi ptr [ %5, %while.body.lr.ph ], [ %7, %while.cond.while.body_crit_edge ]
  %vm_end = getelementptr i8, ptr %8, i32 -12
  %9 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %addr)
  %cmp = icmp ugt i32 %10, %addr
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %while.body
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rb_right, align 4
  %tobool.not32 = icmp eq ptr %12, null
  br i1 %tobool.not32, label %while.end.loopexit50, label %if.else.while.body.lr.ph_crit_edge

if.else.while.body.lr.ph_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body.lr.ph

cleanup:                                          ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %8, i32 -16
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %end)
  %cmp1 = icmp ult i32 %14, %end
  br i1 %cmp1, label %cleanup.cleanup10_crit_edge, label %while.cond

cleanup.cleanup10_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup10

while.end.loopexit:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #21
  %rb_left.le = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %while.end

while.end.loopexit50:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %rb_right.le = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit50, %while.end.loopexit, %mmap_assert_locked.exit.while.end_crit_edge
  %rb_prev.0.ph.lcssa31 = phi ptr [ null, %mmap_assert_locked.exit.while.end_crit_edge ], [ %rb_prev.0.ph40, %while.end.loopexit ], [ %8, %while.end.loopexit50 ]
  %__rb_parent.0.lcssa = phi ptr [ null, %mmap_assert_locked.exit.while.end_crit_edge ], [ %8, %while.end.loopexit ], [ %8, %while.end.loopexit50 ]
  %__rb_link.0.lcssa = phi ptr [ %mm_rb, %mmap_assert_locked.exit.while.end_crit_edge ], [ %rb_left.le, %while.end.loopexit ], [ %rb_right.le, %while.end.loopexit50 ]
  %tobool4.not = icmp eq ptr %rb_prev.0.ph.lcssa31, null
  %add.ptr8 = getelementptr i8, ptr %rb_prev.0.ph.lcssa31, i32 -16
  %spec.select = select i1 %tobool4.not, ptr null, ptr %add.ptr8
  %15 = ptrtoint ptr %pprev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.select, ptr %pprev, align 4
  %16 = ptrtoint ptr %rb_link to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %__rb_link.0.lcssa, ptr %rb_link, align 4
  %17 = ptrtoint ptr %rb_parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %__rb_parent.0.lcssa, ptr %rb_parent, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %while.end, %cleanup.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %while.end ], [ -12, %cleanup.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @copy_vma(ptr nocapture noundef %vmap, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, ptr nocapture noundef writeonly %need_rmap_locks) local_unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  %rb_link = alloca ptr, align 4
  %rb_parent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmap, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #19
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_link) #19
  %7 = ptrtoint ptr %rb_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_link, align 4, !annotation !230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb_parent) #19
  %8 = ptrtoint ptr %rb_parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %rb_parent, align 4, !annotation !230
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_ops.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %land.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.end:                                         ; preds = %entry
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %anon_vma, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then, label %land.end.if.end_crit_edge, !prof !229

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #21
  %shr = lshr i32 %addr, 12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = phi i1 [ true, %if.then ], [ false, %land.end.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %pgoff.addr.0 = phi i32 [ %shr, %if.then ], [ %pgoff, %land.end.if.end_crit_edge ], [ %pgoff, %entry.if.end_crit_edge ]
  %add = add i32 %len, %addr
  %call4 = call fastcc i32 @find_vma_links(ptr noundef %5, i32 noundef %addr, i32 noundef %add, ptr noundef nonnull %prev, ptr noundef nonnull %rb_link, ptr noundef nonnull %rb_parent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_flags, align 4
  %anon_vma9 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %anon_vma9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %anon_vma9, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vm_file, align 4
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 17
  %call10 = tail call ptr @anon_vma_name(ptr noundef %1) #19
  %22 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack = load i32, ptr %vm_userfaultfd_ctx, align 4
  %23 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call11 = tail call ptr @vma_merge(ptr noundef %5, ptr noundef %15, i32 noundef %addr, i32 noundef %add, i32 noundef %17, ptr noundef %19, ptr noundef %21, i32 noundef %pgoff.addr.0, ptr undef, [1 x i32] %23, ptr noundef %call10)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end7
  %24 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %25)
  %cmp.not = icmp ult i32 %3, %25
  br i1 %cmp.not, label %if.then13.if.end40_crit_edge, label %land.rhs15

if.then13.if.end40_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40

land.rhs15:                                       ; preds = %if.then13
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call11, i32 0, i32 1
  %26 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %27)
  %cmp16 = icmp ult i32 %3, %27
  br i1 %cmp16, label %do.body, label %land.rhs15.if.end40_crit_edge, !prof !229

land.rhs15.if.end40_crit_edge:                    ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end40

do.body:                                          ; preds = %land.rhs15
  br i1 %13, label %do.end39, label %if.then32, !prof !228

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_vma(ptr noundef nonnull %call11) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3278, 0\0A.popsection", ""() #19, !srcloc !256
  unreachable

do.end39:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %vmap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call11, ptr %vmap, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %land.rhs15.if.end40_crit_edge, %if.then13.if.end40_crit_edge
  %vma.0 = phi ptr [ %call11, %do.end39 ], [ %1, %land.rhs15.if.end40_crit_edge ], [ %1, %if.then13.if.end40_crit_edge ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call11, i32 0, i32 13
  %29 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_pgoff, align 4
  %vm_pgoff41 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 13
  %31 = ptrtoint ptr %vm_pgoff41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_pgoff41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp42 = icmp ule i32 %30, %32
  %frombool = zext i1 %cmp42 to i8
  br label %if.end72

if.else:                                          ; preds = %if.end7
  %call43 = tail call ptr @vm_area_dup(ptr noundef %1) #19
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.else.cleanup_crit_edge, label %if.end46

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end46:                                         ; preds = %if.else
  %33 = ptrtoint ptr %call43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %addr, ptr %call43, align 4
  %vm_end49 = getelementptr inbounds %struct.vm_area_struct, ptr %call43, i32 0, i32 1
  %34 = ptrtoint ptr %vm_end49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %vm_end49, align 4
  %vm_pgoff50 = getelementptr inbounds %struct.vm_area_struct, ptr %call43, i32 0, i32 13
  %35 = ptrtoint ptr %vm_pgoff50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %pgoff.addr.0, ptr %vm_pgoff50, align 4
  %call55 = tail call i32 @anon_vma_clone(ptr noundef nonnull %call43, ptr noundef %1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %out_free_mempol

if.end58:                                         ; preds = %if.end46
  %vm_file59 = getelementptr inbounds %struct.vm_area_struct, ptr %call43, i32 0, i32 14
  %36 = ptrtoint ptr %vm_file59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vm_file59, align 4
  %tobool60.not = icmp eq ptr %37, null
  br i1 %tobool60.not, label %if.end58.if.end64_crit_edge, label %if.then61

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #21
  %f_count.i = getelementptr inbounds %struct.file, ptr %37, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #19
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #19, !srcloc !233
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58.if.end64_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %call43, i32 0, i32 12
  %39 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vm_ops, align 4
  %tobool65.not = icmp eq ptr %40, null
  br i1 %tobool65.not, label %if.end64.if.end71_crit_edge, label %land.lhs.true

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end64
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool67.not = icmp eq ptr %42, null
  br i1 %tobool67.not, label %land.lhs.true.if.end71_crit_edge, label %if.then68

land.lhs.true.if.end71_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  tail call void %42(ptr noundef nonnull %call43) #19
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %land.lhs.true.if.end71_crit_edge, %if.end64.if.end71_crit_edge
  %43 = ptrtoint ptr %rb_link to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rb_link, align 4
  %45 = ptrtoint ptr %rb_parent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rb_parent, align 4
  tail call fastcc void @vma_link(ptr noundef %5, ptr noundef nonnull %call43, ptr noundef %15, ptr noundef %44, ptr noundef %46)
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end40
  %storemerge = phi i8 [ 0, %if.end71 ], [ %frombool, %if.end40 ]
  %new_vma.0 = phi ptr [ %call43, %if.end71 ], [ %call11, %if.end40 ]
  %47 = ptrtoint ptr %need_rmap_locks to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %storemerge, ptr %need_rmap_locks, align 1
  br label %cleanup

out_free_mempol:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @vm_area_free(ptr noundef nonnull %call43) #19
  br label %cleanup

cleanup:                                          ; preds = %out_free_mempol, %if.end72, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %new_vma.0, %if.end72 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ null, %out_free_mempol ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_parent) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb_link) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #19
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vma_is_special_mapping(ptr nocapture noundef readonly %vma, ptr noundef readnone %sm) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %cmp = icmp eq ptr %1, %sm
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %2 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_ops, align 4
  %cmp1 = icmp eq ptr %3, @special_mapping_vmops
  %cmp3 = icmp eq ptr %3, @legacy_special_mapping_vmops
  %spec.select = or i1 %cmp1, %cmp3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %spec.select, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_install_special_mapping(ptr noundef %mm, i32 noundef %addr, i32 noundef %len, i32 noundef %vm_flags, ptr noundef %spec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__install_special_mapping(ptr noundef %mm, i32 noundef %addr, i32 noundef %len, i32 noundef %vm_flags, ptr noundef %spec, ptr noundef nonnull @special_mapping_vmops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__install_special_mapping(ptr noundef %mm, i32 noundef %addr, i32 noundef %len, i32 noundef %vm_flags, ptr noundef %priv, ptr noundef %ops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vm_area_alloc(ptr noundef %mm) #19
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !229

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %call, align 4
  %add = add i32 %len, %addr
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %vm_end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %vm_end, align 4
  %def_flags = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 25
  %2 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %def_flags, align 4
  %or = or i32 %3, %vm_flags
  %or3 = or i32 %or, 262144
  %vm_flags5 = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or3, ptr %vm_flags5, align 4
  %and.i = and i32 %or, 15
  %arrayidx.i = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %and.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vm_page_prot, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %priv, ptr %vm_private_data, align 4
  %call8 = tail call i32 @insert_vm_struct(ptr noundef %mm, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %out

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %vm_flags5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_flags5, align 4
  %shr = lshr i32 %len, 12
  %total_vm.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 19
  %12 = ptrtoint ptr %total_vm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %total_vm.i, align 8
  %add.i = add i32 %13, %shr
  store volatile i32 %add.i, ptr %total_vm.i, align 8
  %and.i.i = and i32 %11, 262
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 4
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  %exec_vm.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 23
  %14 = ptrtoint ptr %exec_vm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %exec_vm.i, align 4
  %add8.i = add i32 %15, %shr
  store i32 %add8.i, ptr %exec_vm.i, align 4
  br label %vm_stat_account.exit

if.else.i:                                        ; preds = %if.end11
  %and.i27.i = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i)
  %cmp.i28.not.i = icmp eq i32 %and.i27.i, 0
  br i1 %cmp.i28.not.i, label %if.else12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  %stack_vm.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 24
  %16 = ptrtoint ptr %stack_vm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stack_vm.i, align 8
  %add11.i = add i32 %17, %shr
  store i32 %add11.i, ptr %stack_vm.i, align 8
  br label %vm_stat_account.exit

if.else12.i:                                      ; preds = %if.else.i
  %and.i29.i = and i32 %11, 266
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i29.i)
  %cmp.i30.i = icmp eq i32 %and.i29.i, 2
  br i1 %cmp.i30.i, label %if.then14.i, label %if.else12.i.vm_stat_account.exit_crit_edge

if.else12.i.vm_stat_account.exit_crit_edge:       ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_stat_account.exit

if.then14.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #21
  %data_vm.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 22
  %18 = ptrtoint ptr %data_vm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_vm.i, align 8
  %add15.i = add i32 %19, %shr
  store i32 %add15.i, ptr %data_vm.i, align 8
  br label %vm_stat_account.exit

vm_stat_account.exit:                             ; preds = %if.then14.i, %if.else12.i.vm_stat_account.exit_crit_edge, %if.then10.i, %if.then.i
  tail call void @perf_event_mmap(ptr noundef nonnull %call) #19
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @vm_area_free(ptr noundef nonnull %call) #19
  %20 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %vm_stat_account.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %20, %out ], [ %call, %vm_stat_account.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @install_special_mapping(ptr noundef %mm, i32 noundef %addr, i32 noundef %len, i32 noundef %vm_flags, ptr noundef %pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__install_special_mapping(ptr noundef %mm, i32 noundef %addr, i32 noundef %len, i32 noundef %vm_flags, ptr noundef %pages, ptr noundef nonnull @legacy_special_mapping_vmops)
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %0, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mm_take_all_locks(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mm_take_all_locks, %if.then.i.i)) #19
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #19
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15
  %call.i = tail call i32 @down_read_trylock(ptr noundef %mmap_lock.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp ne i32 %call.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mm_take_all_locks, %if.then.i5.i)) #19
          to label %mmap_read_trylock.exit [label %if.then.i5.i], !srcloc !232

if.then.i5.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #19
  br label %mmap_read_trylock.exit

mmap_read_trylock.exit:                           ; preds = %if.then.i5.i, %__mmap_lock_trace_start_locking.exit.i
  br i1 %cmp.i, label %do.body2, label %do.end7, !prof !229

do.body2:                                         ; preds = %mmap_read_trylock.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3593, 0\0A.popsection", ""() #19, !srcloc !257
  unreachable

do.end7:                                          ; preds = %mmap_read_trylock.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @mm_all_locks_mutex, i32 noundef 0) #19
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %vma.0130 = load ptr, ptr %mm, align 4
  %tobool8.not131 = icmp eq ptr %vma.0130, null
  br i1 %tobool8.not131, label %do.end7.cleanup_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond:                                         ; preds = %signal_pending.exit
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0132, i32 0, i32 2
  %1 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %1)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool8.not = icmp eq ptr %vma.0, null
  br i1 %tobool8.not, label %for.cond24.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond24.preheader:                             ; preds = %for.cond
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %vma.1133.pr = load ptr, ptr %mm, align 4
  %tobool25.not134 = icmp eq ptr %vma.1133.pr, null
  br i1 %tobool25.not134, label %for.cond24.preheader.cleanup_crit_edge, label %for.body26.lr.ph

for.cond24.preheader.cleanup_crit_edge:           ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %dep_map.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15, i32 6
  br label %for.body26

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end7.for.body_crit_edge
  %vma.0132 = phi ptr [ %vma.0, %for.cond.for.body_crit_edge ], [ %vma.0130, %do.end7.for.body_crit_edge ]
  %3 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %for.body.out_unlock_crit_edge, !prof !228

for.body.out_unlock_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock

signal_pending.exit:                              ; preds = %for.body
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool11.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool11.not, label %for.cond, label %signal_pending.exit.out_unlock_crit_edge

signal_pending.exit.out_unlock_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock

for.cond49.preheader:                             ; preds = %for.inc45
  %14 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %14)
  %vma.2139.pr = load ptr, ptr %mm, align 4
  %tobool50.not140 = icmp eq ptr %vma.2139.pr, null
  br i1 %tobool50.not140, label %for.cond49.preheader.cleanup_crit_edge, label %for.body51.lr.ph

for.cond49.preheader.cleanup_crit_edge:           ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body51.lr.ph:                                 ; preds = %for.cond49.preheader
  %dep_map.i120 = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15, i32 6
  br label %for.body51

for.body26:                                       ; preds = %for.inc45.for.body26_crit_edge, %for.body26.lr.ph
  %vma.1135 = phi ptr [ %vma.1133.pr, %for.body26.lr.ph ], [ %vma.1, %for.inc45.for.body26_crit_edge ]
  %15 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i104 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i104 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task28, align 8
  %stack.i.i105 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %stack.i.i105 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stack.i.i105, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i106 = icmp eq i32 %23, 0
  br i1 %tobool.not.i106, label %signal_pending.exit110, label %for.body26.out_unlock_crit_edge, !prof !228

for.body26.out_unlock_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock

signal_pending.exit110:                           ; preds = %for.body26
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %20, align 4
  %and1.i.i.i.i.i107 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i107)
  %tobool30.not = icmp eq i32 %and1.i.i.i.i.i107, 0
  br i1 %tobool30.not, label %if.end32, label %signal_pending.exit110.out_unlock_crit_edge

signal_pending.exit110.out_unlock_crit_edge:      ; preds = %signal_pending.exit110
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock

if.end32:                                         ; preds = %signal_pending.exit110
  %vm_file33 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1135, i32 0, i32 14
  %26 = ptrtoint ptr %vm_file33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vm_file33, align 4
  %tobool34.not = icmp eq ptr %27, null
  br i1 %tobool34.not, label %if.end32.for.inc45_crit_edge, label %land.lhs.true35

if.end32.for.inc45_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc45

land.lhs.true35:                                  ; preds = %if.end32
  %f_mapping37 = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %f_mapping37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_mapping37, align 4
  %tobool38.not = icmp eq ptr %29, null
  br i1 %tobool38.not, label %land.lhs.true35.for.inc45_crit_edge, label %land.lhs.true39

land.lhs.true35.for.inc45_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc45

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %flags.i = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i111 = icmp eq i32 %32, 0
  br i1 %tobool.not.i111, label %if.then.i, label %land.lhs.true39.for.inc45_crit_edge

land.lhs.true39.for.inc45_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc45

if.then.i:                                        ; preds = %land.lhs.true39
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3546, 0\0A.popsection", ""() #19, !srcloc !258
  unreachable

do.body7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  %i_mmap_rwsem.i = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 6
  tail call void @_down_write_nest_lock(ptr noundef %i_mmap_rwsem.i, ptr noundef %dep_map.i) #19
  br label %for.inc45

for.inc45:                                        ; preds = %do.body7.i, %land.lhs.true39.for.inc45_crit_edge, %land.lhs.true35.for.inc45_crit_edge, %if.end32.for.inc45_crit_edge
  %vm_next46 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1135, i32 0, i32 2
  %33 = ptrtoint ptr %vm_next46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %vma.1 = load ptr, ptr %vm_next46, align 4
  %tobool25.not = icmp eq ptr %vma.1, null
  br i1 %tobool25.not, label %for.cond49.preheader, label %for.inc45.for.body26_crit_edge

for.inc45.for.body26_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body26

for.body51:                                       ; preds = %for.inc74.for.body51_crit_edge, %for.body51.lr.ph
  %vma.2141 = phi ptr [ %vma.2139.pr, %for.body51.lr.ph ], [ %vma.2, %for.inc74.for.body51_crit_edge ]
  %34 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i112 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i112 to ptr
  %task53 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task53, align 8
  %stack.i.i113 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %stack.i.i113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stack.i.i113, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i114 = icmp eq i32 %42, 0
  br i1 %tobool.not.i114, label %signal_pending.exit118, label %for.body51.out_unlock_crit_edge, !prof !228

for.body51.out_unlock_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock

signal_pending.exit118:                           ; preds = %for.body51
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %39, align 4
  %and1.i.i.i.i.i115 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i115)
  %tobool55.not = icmp eq i32 %and1.i.i.i.i.i115, 0
  br i1 %tobool55.not, label %if.end57, label %signal_pending.exit118.out_unlock_crit_edge

signal_pending.exit118.out_unlock_crit_edge:      ; preds = %signal_pending.exit118
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_unlock

if.end57:                                         ; preds = %signal_pending.exit118
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma.2141, i32 0, i32 11
  %45 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %anon_vma, align 4
  %tobool58.not = icmp eq ptr %46, null
  br i1 %tobool58.not, label %if.end57.for.inc74_crit_edge, label %if.then59

if.end57.for.inc74_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc74

if.then59:                                        ; preds = %if.end57
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, ptr %vma.2141, i32 0, i32 10
  %47 = ptrtoint ptr %anon_vma_chain to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn136 = load ptr, ptr %anon_vma_chain, align 4
  %cmp.not137 = icmp eq ptr %.pn136, %anon_vma_chain
  br i1 %cmp.not137, label %if.then59.for.inc74_crit_edge, label %if.then59.for.body64_crit_edge

if.then59.for.body64_crit_edge:                   ; preds = %if.then59
  br label %for.body64

if.then59.for.inc74_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc74

for.body64:                                       ; preds = %vm_lock_anon_vma.exit.for.body64_crit_edge, %if.then59.for.body64_crit_edge
  %.pn138 = phi ptr [ %.pn, %vm_lock_anon_vma.exit.for.body64_crit_edge ], [ %.pn136, %if.then59.for.body64_crit_edge ]
  %anon_vma65 = getelementptr i8, ptr %.pn138, i32 -4
  %48 = ptrtoint ptr %anon_vma65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %anon_vma65, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %rb_root.i = getelementptr inbounds %struct.anon_vma, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %rb_root.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %rb_root.i, align 4
  %and1.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i119 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i119, label %do.body.i121, label %for.body64.vm_lock_anon_vma.exit_crit_edge

for.body64.vm_lock_anon_vma.exit_crit_edge:       ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_lock_anon_vma.exit

do.body.i121:                                     ; preds = %for.body64
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %51, i32 0, i32 1
  tail call void @_down_write_nest_lock(ptr noundef %rwsem.i, ptr noundef %dep_map.i120) #19
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %49, align 4
  %rb_root4.i = getelementptr inbounds %struct.anon_vma, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %rb_root4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rb_root4.i, align 4
  %or.i.i = or i32 %57, 1
  store i32 %or.i.i, ptr %rb_root4.i, align 4
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool8.not.i, label %do.body.i121.vm_lock_anon_vma.exit_crit_edge, label %do.body10.i

do.body.i121.vm_lock_anon_vma.exit_crit_edge:     ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_lock_anon_vma.exit

do.body10.i:                                      ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3529, 0\0A.popsection", ""() #19, !srcloc !259
  unreachable

vm_lock_anon_vma.exit:                            ; preds = %do.body.i121.vm_lock_anon_vma.exit_crit_edge, %for.body64.vm_lock_anon_vma.exit_crit_edge
  %58 = ptrtoint ptr %.pn138 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn = load ptr, ptr %.pn138, align 4
  %cmp.not = icmp eq ptr %.pn, %anon_vma_chain
  br i1 %cmp.not, label %vm_lock_anon_vma.exit.for.inc74_crit_edge, label %vm_lock_anon_vma.exit.for.body64_crit_edge

vm_lock_anon_vma.exit.for.body64_crit_edge:       ; preds = %vm_lock_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body64

vm_lock_anon_vma.exit.for.inc74_crit_edge:        ; preds = %vm_lock_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc74

for.inc74:                                        ; preds = %vm_lock_anon_vma.exit.for.inc74_crit_edge, %if.then59.for.inc74_crit_edge, %if.end57.for.inc74_crit_edge
  %vm_next75 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.2141, i32 0, i32 2
  %59 = ptrtoint ptr %vm_next75 to i32
  call void @__asan_load4_noabort(i32 %59)
  %vma.2 = load ptr, ptr %vm_next75, align 4
  %tobool50.not = icmp eq ptr %vma.2, null
  br i1 %tobool50.not, label %for.inc74.cleanup_crit_edge, label %for.inc74.for.body51_crit_edge

for.inc74.for.body51_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body51

for.inc74.cleanup_crit_edge:                      ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

out_unlock:                                       ; preds = %signal_pending.exit118.out_unlock_crit_edge, %for.body51.out_unlock_crit_edge, %signal_pending.exit110.out_unlock_crit_edge, %for.body26.out_unlock_crit_edge, %signal_pending.exit.out_unlock_crit_edge, %for.body.out_unlock_crit_edge
  tail call void @mm_drop_all_locks(ptr noundef %mm)
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %for.inc74.cleanup_crit_edge, %for.cond49.preheader.cleanup_crit_edge, %for.cond24.preheader.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %out_unlock ], [ 0, %for.cond49.preheader.cleanup_crit_edge ], [ 0, %for.cond24.preheader.cleanup_crit_edge ], [ 0, %do.end7.cleanup_crit_edge ], [ 0, %for.inc74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mm_drop_all_locks(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mm_drop_all_locks, %if.then.i.i)) #19
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !232

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #19
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 15
  %call.i = tail call i32 @down_read_trylock(ptr noundef %mmap_lock.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp ne i32 %call.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mm_drop_all_locks, %if.then.i5.i)) #19
          to label %mmap_read_trylock.exit [label %if.then.i5.i], !srcloc !232

if.then.i5.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #19
  br label %mmap_read_trylock.exit

mmap_read_trylock.exit:                           ; preds = %if.then.i5.i, %__mmap_lock_trace_start_locking.exit.i
  br i1 %cmp.i, label %do.body2, label %do.body8, !prof !229

do.body2:                                         ; preds = %mmap_read_trylock.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3673, 0\0A.popsection", ""() #19, !srcloc !260
  unreachable

do.body8:                                         ; preds = %mmap_read_trylock.exit
  %call9 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @mm_all_locks_mutex) #19
  br i1 %call9, label %for.cond.preheader, label %do.body19, !prof !228

for.cond.preheader:                               ; preds = %do.body8
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %vma.067 = load ptr, ptr %mm, align 4
  %tobool28.not68 = icmp eq ptr %vma.067, null
  br i1 %tobool28.not68, label %for.cond.preheader.for.end51_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end51_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end51

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3674, 0\0A.popsection", ""() #19, !srcloc !261
  unreachable

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %vma.069 = phi ptr [ %vma.0, %for.inc50.for.body_crit_edge ], [ %vma.067, %for.cond.preheader.for.body_crit_edge ]
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma.069, i32 0, i32 11
  %1 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %anon_vma, align 4
  %tobool29.not = icmp eq ptr %2, null
  br i1 %tobool29.not, label %for.body.if.end42_crit_edge, label %if.then30

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42

if.then30:                                        ; preds = %for.body
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, ptr %vma.069, i32 0, i32 10
  %3 = ptrtoint ptr %anon_vma_chain to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn64 = load ptr, ptr %anon_vma_chain, align 4
  %cmp.not65 = icmp eq ptr %.pn64, %anon_vma_chain
  br i1 %cmp.not65, label %if.then30.if.end42_crit_edge, label %if.then30.for.body35_crit_edge

if.then30.for.body35_crit_edge:                   ; preds = %if.then30
  br label %for.body35

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42

for.body35:                                       ; preds = %vm_unlock_anon_vma.exit.for.body35_crit_edge, %if.then30.for.body35_crit_edge
  %.pn66 = phi ptr [ %.pn, %vm_unlock_anon_vma.exit.for.body35_crit_edge ], [ %.pn64, %if.then30.for.body35_crit_edge ]
  %anon_vma36 = getelementptr i8, ptr %.pn66, i32 -4
  %4 = ptrtoint ptr %anon_vma36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %anon_vma36, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %rb_root.i = getelementptr inbounds %struct.anon_vma, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %rb_root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %rb_root.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %for.body35.vm_unlock_anon_vma.exit_crit_edge, label %if.end.i

for.body35.vm_unlock_anon_vma.exit_crit_edge:     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_unlock_anon_vma.exit

if.end.i:                                         ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #21
  %and.i.i = and i32 %9, -2
  %10 = ptrtoint ptr %rb_root.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i.i, ptr %rb_root.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %rwsem.i.i = getelementptr inbounds %struct.anon_vma, ptr %12, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i.i) #19
  br label %vm_unlock_anon_vma.exit

vm_unlock_anon_vma.exit:                          ; preds = %if.end.i, %for.body35.vm_unlock_anon_vma.exit_crit_edge
  %13 = ptrtoint ptr %.pn66 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn66, align 4
  %cmp.not = icmp eq ptr %.pn, %anon_vma_chain
  br i1 %cmp.not, label %vm_unlock_anon_vma.exit.if.end42_crit_edge, label %vm_unlock_anon_vma.exit.for.body35_crit_edge

vm_unlock_anon_vma.exit.for.body35_crit_edge:     ; preds = %vm_unlock_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body35

vm_unlock_anon_vma.exit.if.end42_crit_edge:       ; preds = %vm_unlock_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42

if.end42:                                         ; preds = %vm_unlock_anon_vma.exit.if.end42_crit_edge, %if.then30.if.end42_crit_edge, %for.body.if.end42_crit_edge
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma.069, i32 0, i32 14
  %14 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm_file, align 4
  %tobool43.not = icmp eq ptr %15, null
  br i1 %tobool43.not, label %if.end42.for.inc50_crit_edge, label %land.lhs.true

if.end42.for.inc50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc50

land.lhs.true:                                    ; preds = %if.end42
  %f_mapping = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_mapping, align 4
  %tobool45.not = icmp eq ptr %17, null
  br i1 %tobool45.not, label %land.lhs.true.for.inc50_crit_edge, label %if.then46

land.lhs.true.for.inc50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc50

if.then46:                                        ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i63 = icmp eq i32 %20, 0
  br i1 %tobool.not.i63, label %if.then46.for.inc50_crit_edge, label %if.then.i

if.then46.for.inc50_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc50

if.then.i:                                        ; preds = %if.then46
  %i_mmap_rwsem.i.i = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 6
  tail call void @up_write(ptr noundef %i_mmap_rwsem.i.i) #19
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body.i, label %if.then.i.for.inc50_crit_edge

if.then.i.for.inc50_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc50

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3660, 0\0A.popsection", ""() #19, !srcloc !262
  unreachable

for.inc50:                                        ; preds = %if.then.i.for.inc50_crit_edge, %if.then46.for.inc50_crit_edge, %land.lhs.true.for.inc50_crit_edge, %if.end42.for.inc50_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.069, i32 0, i32 2
  %21 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %21)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool28.not = icmp eq ptr %vma.0, null
  br i1 %tobool28.not, label %for.inc50.for.end51_crit_edge, label %for.inc50.for.body_crit_edge

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc50.for.end51_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end51

for.end51:                                        ; preds = %for.inc50.for.end51_crit_edge, %for.cond.preheader.for.end51_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mm_all_locks_mutex) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mmap_init() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__percpu_counter_init(ptr noundef nonnull @vm_committed_as, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @mmap_init.__key) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !228

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3695, 0\0A.popsection", ""() #19, !srcloc !263
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_user_reserve() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %0 = load volatile i32, ptr @vm_zone_stat, align 4
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 0) #19
  %2 = lshr i32 %1, 3
  %div3 = and i32 %2, 134217727
  %3 = tail call i32 @llvm.umin.i32(i32 %div3, i32 131072)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @sysctl_user_reserve_kbytes to i32))
  store i32 %3, ptr @sysctl_user_reserve_kbytes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_admin_reserve() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_zone_stat, i32 noundef 4) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_zone_stat to i32))
  %0 = load volatile i32, ptr @vm_zone_stat, align 4
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 0) #19
  %2 = lshr i32 %1, 3
  %div3 = and i32 %2, 134217727
  %3 = tail call i32 @llvm.umin.i32(i32 %div3, i32 8192)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @sysctl_admin_reserve_kbytes to i32))
  store i32 %3, ptr @sysctl_admin_reserve_kbytes, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @init_reserve_notifier() #11 section ".meminit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_vm_unmapped_area(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %3)
  %cmp1 = icmp ugt i32 %3, -4096
  %spec.select = select i1 %cmp1, i32 0, i32 %3, !prof !229
  br i1 %cmp1, label %cond.true12, label %if.end.cond.end15_crit_edge, !prof !229

if.end.cond.end15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end15

cond.true12:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true12, %if.end.cond.end15_crit_edge
  %cond16 = phi i32 [ %3, %cond.true12 ], [ 0, %if.end.cond.end15_crit_edge ]
  %total_vm = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_vm, align 4
  %flags17 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags17, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %low_limit = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %low_limit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %low_limit, align 4
  %high_limit = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %high_limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %high_limit, align 4
  %align_mask = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %align_mask, align 4
  %align_offset = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %align_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %align_offset, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.30, i32 noundef %spec.select, i32 noundef %cond16, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #19
  %call18 = tail call i32 @trace_handle_return(ptr noundef %seq) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %cond.end15 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @validate_mm_rb(ptr noundef %root, ptr noundef readnone %ignore) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rb_first(ptr noundef %root) #19
  %tobool.not17 = icmp eq ptr %call, null
  br i1 %tobool.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %do.end10.for.body_crit_edge, %entry.for.body_crit_edge
  %nd.018 = phi ptr [ %call11, %do.end10.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %nd.018, i32 -16
  %cmp.not = icmp eq ptr %add.ptr, %ignore
  br i1 %cmp.not, label %for.body.do.end10_crit_edge, label %land.rhs

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end10

land.rhs:                                         ; preds = %for.body
  %rb_subtree_gap = getelementptr i8, ptr %nd.018, i32 12
  %0 = ptrtoint ptr %rb_subtree_gap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rb_subtree_gap, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %vm_flags.i.i.i = getelementptr i8, ptr %nd.018, i32 24
  %4 = ptrtoint ptr %vm_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags.i.i.i, align 4
  %and.i.i.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.vm_start_gap.exit.i.i_crit_edge, label %if.then.i.i.i

land.rhs.vm_start_gap.exit.i.i_crit_edge:         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  %6 = load i32, ptr @stack_guard_gap, align 4
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %6) #19
  br label %vm_start_gap.exit.i.i

vm_start_gap.exit.i.i:                            ; preds = %if.then.i.i.i, %land.rhs.vm_start_gap.exit.i.i_crit_edge
  %vm_start.0.i.i.i = phi i32 [ %7, %if.then.i.i.i ], [ %3, %land.rhs.vm_start_gap.exit.i.i_crit_edge ]
  %vm_prev.i.i = getelementptr i8, ptr %nd.018, i32 -4
  %8 = ptrtoint ptr %vm_prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_prev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %vm_start_gap.exit.i.i.vma_compute_gap.exit.i_crit_edge, label %if.then.i.i

vm_start_gap.exit.i.i.vma_compute_gap.exit.i_crit_edge: ; preds = %vm_start_gap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i

if.then.i.i:                                      ; preds = %vm_start_gap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end1.i.i.i, align 4
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i, i32 %11) #19
  br label %vma_compute_gap.exit.i

vma_compute_gap.exit.i:                           ; preds = %if.then.i.i, %vm_start_gap.exit.i.i.vma_compute_gap.exit.i_crit_edge
  %gap.0.i.i = phi i32 [ %vm_start.0.i.i.i, %vm_start_gap.exit.i.i.vma_compute_gap.exit.i_crit_edge ], [ %12, %if.then.i.i ]
  %rb_left.i = getelementptr i8, ptr %nd.018, i32 8
  %13 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %vma_compute_gap.exit.i.if.end4.i_crit_edge, label %if.then.i

vma_compute_gap.exit.i.if.end4.i_crit_edge:       ; preds = %vma_compute_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end4.i

if.then.i:                                        ; preds = %vma_compute_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %rb_subtree_gap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rb_subtree_gap.i, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %gap.0.i.i) #19
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %vma_compute_gap.exit.i.if.end4.i_crit_edge
  %max.0.i = phi i32 [ %gap.0.i.i, %vma_compute_gap.exit.i.if.end4.i_crit_edge ], [ %17, %if.then.i ]
  %rb_right.i = getelementptr i8, ptr %nd.018, i32 4
  %18 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_right.i, align 4
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %if.end4.i.vma_compute_subtree_gap.exit_crit_edge, label %if.then7.i

if.end4.i.vma_compute_subtree_gap.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_subtree_gap.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap13.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %rb_subtree_gap13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb_subtree_gap13.i, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %max.0.i) #19
  br label %vma_compute_subtree_gap.exit

vma_compute_subtree_gap.exit:                     ; preds = %if.then7.i, %if.end4.i.vma_compute_subtree_gap.exit_crit_edge
  %max.1.i = phi i32 [ %max.0.i, %if.end4.i.vma_compute_subtree_gap.exit_crit_edge ], [ %22, %if.then7.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max.1.i)
  %cmp2.not = icmp eq i32 %1, %max.1.i
  br i1 %cmp2.not, label %vma_compute_subtree_gap.exit.do.end10_crit_edge, label %if.then, !prof !228

vma_compute_subtree_gap.exit.do.end10_crit_edge:  ; preds = %vma_compute_subtree_gap.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end10

if.then:                                          ; preds = %vma_compute_subtree_gap.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_vma(ptr noundef %add.ptr) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 389, 0\0A.popsection", ""() #19, !srcloc !264
  unreachable

do.end10:                                         ; preds = %vma_compute_subtree_gap.exit.do.end10_crit_edge, %for.body.do.end10_crit_edge
  %call11 = tail call ptr @rb_next(ptr noundef nonnull %nd.018) #19
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %do.end10.for.end_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %do.end10.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vma_gap_callbacks_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rb_old, i32 -16
  %rb_subtree_gap = getelementptr i8, ptr %rb_old, i32 12
  %0 = ptrtoint ptr %rb_subtree_gap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rb_subtree_gap, align 4
  %rb_subtree_gap4 = getelementptr i8, ptr %rb_new, i32 12
  %2 = ptrtoint ptr %rb_subtree_gap4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rb_subtree_gap4, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %vm_flags.i.i.i = getelementptr i8, ptr %rb_old, i32 24
  %5 = ptrtoint ptr %vm_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_flags.i.i.i, align 4
  %and.i.i.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.vm_start_gap.exit.i.i_crit_edge, label %if.then.i.i.i

entry.vm_start_gap.exit.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %vm_start_gap.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %7 = load i32, ptr @stack_guard_gap, align 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 %7) #19
  br label %vm_start_gap.exit.i.i

vm_start_gap.exit.i.i:                            ; preds = %if.then.i.i.i, %entry.vm_start_gap.exit.i.i_crit_edge
  %vm_start.0.i.i.i = phi i32 [ %8, %if.then.i.i.i ], [ %4, %entry.vm_start_gap.exit.i.i_crit_edge ]
  %vm_prev.i.i = getelementptr i8, ptr %rb_old, i32 -4
  %9 = ptrtoint ptr %vm_prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_prev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %vm_start_gap.exit.i.i.vma_compute_gap.exit.i_crit_edge, label %if.then.i.i

vm_start_gap.exit.i.i.vma_compute_gap.exit.i_crit_edge: ; preds = %vm_start_gap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_compute_gap.exit.i

if.then.i.i:                                      ; preds = %vm_start_gap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %vm_end1.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %vm_end1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_end1.i.i.i, align 4
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %vm_start.0.i.i.i, i32 %12) #19
  br label %vma_compute_gap.exit.i

vma_compute_gap.exit.i:                           ; preds = %if.then.i.i, %vm_start_gap.exit.i.i.vma_compute_gap.exit.i_crit_edge
  %gap.0.i.i = phi i32 [ %vm_start.0.i.i.i, %vm_start_gap.exit.i.i.vma_compute_gap.exit.i_crit_edge ], [ %13, %if.then.i.i ]
  %rb_left.i = getelementptr i8, ptr %rb_old, i32 8
  %14 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %vma_compute_gap.exit.i.if.end5.i_crit_edge, label %if.then.i

vma_compute_gap.exit.i.if.end5.i_crit_edge:       ; preds = %vma_compute_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i

if.then.i:                                        ; preds = %vma_compute_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap.i = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %rb_subtree_gap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb_subtree_gap.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %gap.0.i.i) #19
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %vma_compute_gap.exit.i.if.end5.i_crit_edge
  %max.0.i = phi i32 [ %gap.0.i.i, %vma_compute_gap.exit.i.if.end5.i_crit_edge ], [ %18, %if.then.i ]
  %rb_right.i = getelementptr i8, ptr %rb_old, i32 4
  %19 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rb_right.i, align 4
  %tobool7.not.i = icmp eq ptr %20, null
  br i1 %tobool7.not.i, label %if.end5.i.vma_gap_callbacks_compute_max.exit_crit_edge, label %if.then8.i

if.end5.i.vma_gap_callbacks_compute_max.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %vma_gap_callbacks_compute_max.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  %rb_subtree_gap14.i = getelementptr i8, ptr %20, i32 12
  %21 = ptrtoint ptr %rb_subtree_gap14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rb_subtree_gap14.i, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 %max.0.i) #19
  br label %vma_gap_callbacks_compute_max.exit

vma_gap_callbacks_compute_max.exit:               ; preds = %if.then8.i, %if.end5.i.vma_gap_callbacks_compute_max.exit_crit_edge
  %max.1.i = phi i32 [ %max.0.i, %if.end5.i.vma_gap_callbacks_compute_max.exit_crit_edge ], [ %23, %if.then8.i ]
  %24 = ptrtoint ptr %rb_subtree_gap to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %max.1.i, ptr %rb_subtree_gap, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_unlink_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_link_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_verify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__anon_vma_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @munlock_vma_pages_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @special_mapping_close(ptr nocapture noundef %vma) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @special_mapping_split(ptr nocapture noundef readnone %vma, i32 noundef %addr) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_mapping_mremap(ptr noundef %new_vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %new_vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !218) #19
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm, align 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %new_vma, i32 0, i32 6
  %8 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_mm, align 4
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.end37, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @special_mapping_mremap.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !228

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @special_mapping_mremap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3369, i32 noundef 9, ptr noundef null) #19
  br label %cleanup

if.end37:                                         ; preds = %entry
  %mremap = getelementptr inbounds %struct.vm_special_mapping, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %mremap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mremap, align 4
  %tobool38.not = icmp eq ptr %11, null
  br i1 %tobool38.not, label %if.end37.cleanup_crit_edge, label %if.then39

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  %call41 = tail call i32 %11(ptr noundef %1, ptr noundef %new_vma) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end37.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.then39 ], [ -14, %if.then ], [ 0, %if.end37.cleanup_crit_edge ], [ -14, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @special_mapping_fault(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_ops, align 4
  %cmp = icmp eq ptr %3, @legacy_special_mapping_vmops
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end7

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_private_data, align 4
  %fault = getelementptr inbounds %struct.vm_special_mapping, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fault, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %pages6 = getelementptr inbounds %struct.vm_special_mapping, ptr %5, i32 0, i32 1
  br label %if.end7

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call i32 %7(ptr noundef %5, ptr noundef %1, ptr noundef %vmf) #19
  br label %cleanup16

if.end7:                                          ; preds = %cleanup.thread, %entry.if.end7_crit_edge
  %pages.1.in = phi ptr [ %pages6, %cleanup.thread ], [ %vm_private_data, %entry.if.end7_crit_edge ]
  %8 = ptrtoint ptr %pages.1.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %pages.1 = load ptr, ptr %pages.1.in, align 4
  %pgoff8 = getelementptr inbounds %struct.anon.18, ptr %vmf, i32 0, i32 2
  %9 = ptrtoint ptr %pgoff8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pgoff8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not38 = icmp eq i32 %10, 0
  br i1 %tobool9.not38, label %if.end7.for.end_crit_edge, label %land.rhs.preheader

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

land.rhs.preheader:                               ; preds = %if.end7
  %11 = shl i32 %10, 2
  %uglygep = getelementptr i8, ptr %pages.1, i32 %11
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.preheader
  %pages.240 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %pages.1, %land.rhs.preheader ]
  %pgoff.039 = phi i32 [ %dec, %for.body.land.rhs_crit_edge ], [ %10, %land.rhs.preheader ]
  %12 = ptrtoint ptr %pages.240 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages.240, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.rhs.cleanup16_crit_edge, label %for.body

land.rhs.cleanup16_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup16

for.body:                                         ; preds = %land.rhs
  %dec = add i32 %pgoff.039, -1
  %incdec.ptr = getelementptr ptr, ptr %pages.240, i32 1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %pages.2.lcssa = phi ptr [ %pages.1, %if.end7.for.end_crit_edge ], [ %uglygep, %for.body.for.end_crit_edge ]
  %14 = ptrtoint ptr %pages.2.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %pages.2.lcssa, align 4
  %tobool11.not = icmp eq ptr %.pr, null
  br i1 %tobool11.not, label %for.end.cleanup16_crit_edge, label %if.then12

for.end.cleanup16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup16

if.then12:                                        ; preds = %for.end
  %15 = getelementptr inbounds %struct.page, ptr %.pr, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !228

if.then.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %.pr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #19
  %20 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %21, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !229

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.72) #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #19, !srcloc !265
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #19
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #19
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #19, !srcloc !233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@special_mapping_fault, %if.then.i.i.i.i)) #19
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !232

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__page_ref_mod(ptr noundef %19, i32 noundef 1) #19
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page13 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %23 = ptrtoint ptr %page13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.pr, ptr %page13, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %get_page.exit, %for.end.cleanup16_crit_edge, %land.rhs.cleanup16_crit_edge, %cleanup
  %retval.1 = phi i32 [ 0, %get_page.exit ], [ %call, %cleanup ], [ 2, %for.end.cleanup16_crit_edge ], [ 2, %land.rhs.cleanup16_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @special_mapping_name(ptr nocapture noundef readonly %vma) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_down_write_nest_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { cold nounwind }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !92, !94, !95, !96, !97, !98, !99, !100, !102, !104, !106, !108, !110, !111, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !178, !179, !181, !183, !184, !185, !186, !187, !189, !190, !192, !193, !194, !195, !196, !197, !198, !199, !200, !202, !203, !204, !205, !206, !208, !210, !212, !214, !216, !217}
!llvm.named.register.sp = !{!218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__tracepoint_vm_unmapped_area, !1, !"__tracepoint_vm_unmapped_area", i1 false, i1 false}
!1 = !{!"../include/trace/events/mmap.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_vm_unmapped_area, !1, !"__tracepoint_ptr_vm_unmapped_area", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_vm_unmapped_area, !1, !"__SCK__tp_func_vm_unmapped_area", i1 false, i1 false}
!4 = !{ptr @event_class_vm_unmapped_area, !1, !"event_class_vm_unmapped_area", i1 false, i1 false}
!5 = !{ptr @event_vm_unmapped_area, !1, !"event_vm_unmapped_area", i1 false, i1 false}
!6 = !{ptr @__event_vm_unmapped_area, !1, !"__event_vm_unmapped_area", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_vm_unmapped_area, !1, !"__bpf_trace_tp_map_vm_unmapped_area", i1 false, i1 false}
!8 = !{ptr @mmap_rnd_bits_min, !9, !"mmap_rnd_bits_min", i1 false, i1 false}
!9 = !{!"../mm/mmap.c", i32 67, i32 11}
!10 = !{ptr @mmap_rnd_bits_max, !11, !"mmap_rnd_bits_max", i1 false, i1 false}
!11 = !{!"../mm/mmap.c", i32 68, i32 11}
!12 = !{ptr @mmap_rnd_bits, !13, !"mmap_rnd_bits", i1 false, i1 false}
!13 = !{!"../mm/mmap.c", i32 69, i32 5}
!14 = !{ptr @__param_ignore_rlimit_data, !15, !"__param_ignore_rlimit_data", i1 false, i1 false}
!15 = !{!"../mm/mmap.c", i32 78, i32 1}
!16 = !{ptr @protection_map, !17, !"protection_map", i1 false, i1 false}
!17 = !{!"../mm/mmap.c", i32 104, i32 10}
!18 = !{ptr @__ksymtab_vm_get_page_prot, !19, !"__ksymtab_vm_get_page_prot", i1 false, i1 false}
!19 = !{!"../mm/mmap.c", i32 124, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/mmap.c", i32 195, i32 1}
!22 = !{ptr @event_enter__brk, !21, !"event_enter__brk", i1 false, i1 false}
!23 = !{ptr @__event_enter__brk, !21, !"__event_enter__brk", i1 false, i1 false}
!24 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__brk, !21, !"event_exit__brk", i1 false, i1 false}
!26 = !{ptr @__event_exit__brk, !21, !"__event_exit__brk", i1 false, i1 false}
!27 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__brk, !21, !"__syscall_meta__brk", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__brk, !21, !"__p_syscall_meta__brk", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/mmap.c", i32 770, i32 5}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/mmap.c", i32 1622, i32 29}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/mmap.c", i32 1637, i32 1}
!36 = !{ptr @event_enter__mmap_pgoff, !35, !"event_enter__mmap_pgoff", i1 false, i1 false}
!37 = !{ptr @__event_enter__mmap_pgoff, !35, !"__event_enter__mmap_pgoff", i1 false, i1 false}
!38 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @event_exit__mmap_pgoff, !35, !"event_exit__mmap_pgoff", i1 false, i1 false}
!40 = !{ptr @__event_exit__mmap_pgoff, !35, !"__event_exit__mmap_pgoff", i1 false, i1 false}
!41 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__syscall_meta__mmap_pgoff, !35, !"__syscall_meta__mmap_pgoff", i1 false, i1 false}
!43 = !{ptr @__p_syscall_meta__mmap_pgoff, !35, !"__p_syscall_meta__mmap_pgoff", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../mm/mmap.c", i32 1654, i32 1}
!46 = !{ptr @event_enter__old_mmap, !45, !"event_enter__old_mmap", i1 false, i1 false}
!47 = !{ptr @__event_enter__old_mmap, !45, !"__event_enter__old_mmap", i1 false, i1 false}
!48 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @event_exit__old_mmap, !45, !"event_exit__old_mmap", i1 false, i1 false}
!50 = !{ptr @__event_exit__old_mmap, !45, !"__event_exit__old_mmap", i1 false, i1 false}
!51 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__syscall_meta__old_mmap, !45, !"__syscall_meta__old_mmap", i1 false, i1 false}
!53 = !{ptr @__p_syscall_meta__old_mmap, !45, !"__p_syscall_meta__old_mmap", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../mm/mmap.c", i32 1804, i32 3}
!56 = !{ptr @__ksymtab_get_unmapped_area, !57, !"__ksymtab_get_unmapped_area", i1 false, i1 false}
!57 = !{!"../mm/mmap.c", i32 2276, i32 1}
!58 = !{ptr @__ksymtab_find_vma, !59, !"__ksymtab_find_vma", i1 false, i1 false}
!59 = !{!"../mm/mmap.c", i32 2311, i32 1}
!60 = !{ptr @stack_guard_gap, !61, !"stack_guard_gap", i1 false, i1 false}
!61 = !{!"../mm/mmap.c", i32 2549, i32 15}
!62 = !{ptr @__setup_cmdline_parse_stack_guard_gap, !63, !"__setup_cmdline_parse_stack_guard_gap", i1 false, i1 false}
!63 = !{!"../mm/mmap.c", i32 2562, i32 1}
!64 = !{ptr @__ksymtab_find_extend_vma, !65, !"__ksymtab_find_extend_vma", i1 false, i1 false}
!65 = !{!"../mm/mmap.c", i32 2615, i32 1}
!66 = !{ptr @__ksymtab_vm_munmap, !67, !"__ksymtab_vm_munmap", i1 false, i1 false}
!67 = !{!"../mm/mmap.c", i32 2933, i32 1}
!68 = !{ptr @.str.11, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../mm/mmap.c", i32 2935, i32 1}
!70 = !{ptr @event_enter__munmap, !69, !"event_enter__munmap", i1 false, i1 false}
!71 = !{ptr @__event_enter__munmap, !69, !"__event_enter__munmap", i1 false, i1 false}
!72 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @event_exit__munmap, !69, !"event_exit__munmap", i1 false, i1 false}
!74 = !{ptr @__event_exit__munmap, !69, !"__event_exit__munmap", i1 false, i1 false}
!75 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__syscall_meta__munmap, !69, !"__syscall_meta__munmap", i1 false, i1 false}
!77 = !{ptr @__p_syscall_meta__munmap, !69, !"__p_syscall_meta__munmap", i1 false, i1 false}
!78 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../mm/mmap.c", i32 2945, i32 1}
!80 = !{ptr @event_enter__remap_file_pages, !79, !"event_enter__remap_file_pages", i1 false, i1 false}
!81 = !{ptr @__event_enter__remap_file_pages, !79, !"__event_enter__remap_file_pages", i1 false, i1 false}
!82 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @event_exit__remap_file_pages, !79, !"event_exit__remap_file_pages", i1 false, i1 false}
!84 = !{ptr @__event_exit__remap_file_pages, !79, !"__event_exit__remap_file_pages", i1 false, i1 false}
!85 = !{ptr @.str.16, !79, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__syscall_meta__remap_file_pages, !79, !"__syscall_meta__remap_file_pages", i1 false, i1 false}
!87 = !{ptr @__p_syscall_meta__remap_file_pages, !79, !"__p_syscall_meta__remap_file_pages", i1 false, i1 false}
!88 = !{ptr @__ksymtab_vm_brk_flags, !89, !"__ksymtab_vm_brk_flags", i1 false, i1 false}
!89 = !{!"../mm/mmap.c", i32 3120, i32 1}
!90 = !{ptr @__ksymtab_vm_brk, !91, !"__ksymtab_vm_brk", i1 false, i1 false}
!91 = !{!"../mm/mmap.c", i32 3126, i32 1}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../mm/mmap.c", i32 3326, i32 3}
!94 = !{ptr @.str.17, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @may_expand_vm._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @may_expand_vm._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mmap_init.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../mm/mmap.c", i32 3694, i32 8}
!102 = !{ptr @__initcall__kmod_mmap__352_3717_init_user_reserve4, !103, !"__initcall__kmod_mmap__352_3717_init_user_reserve4", i1 false, i1 false}
!103 = !{!"../mm/mmap.c", i32 3717, i32 1}
!104 = !{ptr @__initcall__kmod_mmap__355_3738_init_admin_reserve4, !105, !"__initcall__kmod_mmap__355_3738_init_admin_reserve4", i1 false, i1 false}
!105 = !{!"../mm/mmap.c", i32 3738, i32 1}
!106 = !{ptr @__initcall__kmod_mmap__356_3808_init_reserve_notifier4, !107, !"__initcall__kmod_mmap__356_3808_init_reserve_notifier4", i1 false, i1 false}
!107 = !{!"../mm/mmap.c", i32 3808, i32 1}
!108 = !{ptr @ignore_rlimit_data, !109, !"ignore_rlimit_data", i1 false, i1 false}
!109 = !{!"../mm/mmap.c", i32 77, i32 13}
!110 = !{ptr @__tpstrtab_vm_unmapped_area, !1, !"__tpstrtab_vm_unmapped_area", i1 false, i1 false}
!111 = !{ptr @str__mmap__trace_system_name, !112, !"str__mmap__trace_system_name", i1 false, i1 false}
!112 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!113 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @trace_event_fields_vm_unmapped_area, !1, !"trace_event_fields_vm_unmapped_area", i1 false, i1 false}
!123 = !{ptr @trace_event_type_funcs_vm_unmapped_area, !1, !"trace_event_type_funcs_vm_unmapped_area", i1 false, i1 false}
!124 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @print_fmt_vm_unmapped_area, !1, !"print_fmt_vm_unmapped_area", i1 false, i1 false}
!126 = !{ptr @___asan_gen_.98, !15, !"__param_str_ignore_rlimit_data", i1 false, i1 false}
!127 = !{ptr @types__brk, !21, !"types__brk", i1 false, i1 false}
!128 = !{ptr @.str.31, !21, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @args__brk, !21, !"args__brk", i1 false, i1 false}
!130 = distinct !{null, !131, !"vma_gap_callbacks", i1 false, i1 false}
!131 = !{!"../mm/mmap.c", i32 437, i32 1}
!132 = !{ptr @.str.32, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../mm/mmap.c", i32 416, i32 3}
!134 = !{ptr @.str.33, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @validate_mm._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @validate_mm._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../mm/mmap.c", i32 420, i32 3}
!139 = !{ptr @validate_mm._entry.34, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @validate_mm._entry_ptr.36, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.38, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../mm/mmap.c", i32 427, i32 4}
!143 = !{ptr @validate_mm._entry.37, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @validate_mm._entry_ptr.39, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.40, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../mm/mmap.c", i32 343, i32 4}
!147 = !{ptr @.str.41, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @browse_rb._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @browse_rb._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.43, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../mm/mmap.c", i32 348, i32 4}
!152 = !{ptr @browse_rb._entry.42, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @browse_rb._entry_ptr.44, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.46, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../mm/mmap.c", i32 353, i32 4}
!156 = !{ptr @browse_rb._entry.45, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @browse_rb._entry_ptr.47, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.49, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../mm/mmap.c", i32 359, i32 4}
!160 = !{ptr @browse_rb._entry.48, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @browse_rb._entry_ptr.50, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.52, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../mm/mmap.c", i32 374, i32 3}
!164 = !{ptr @browse_rb._entry.51, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @browse_rb._entry_ptr.53, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @types__mmap_pgoff, !35, !"types__mmap_pgoff", i1 false, i1 false}
!167 = !{ptr @.str.54, !35, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.55, !35, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.56, !35, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.57, !35, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @args__mmap_pgoff, !35, !"args__mmap_pgoff", i1 false, i1 false}
!172 = !{ptr @.str.58, !45, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @types__old_mmap, !45, !"types__old_mmap", i1 false, i1 false}
!174 = !{ptr @.str.59, !45, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @args__old_mmap, !45, !"args__old_mmap", i1 false, i1 false}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!178 = distinct !{null, !177, !"<string literal>", i1 false, i1 false}
!179 = distinct !{null, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!181 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!183 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!184 = !{ptr @.str.63, !1, !"<string literal>", i1 false, i1 false}
!185 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!186 = !{ptr @.str.64, !1, !"<string literal>", i1 false, i1 false}
!187 = distinct !{null, !188, !"__already_done", i1 false, i1 false}
!188 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!189 = !{ptr @.str.65, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.66, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../include/linux/mmap_lock.h", i32 155, i32 2}
!192 = !{ptr @__setup_str_cmdline_parse_stack_guard_gap, !63, !"__setup_str_cmdline_parse_stack_guard_gap", i1 false, i1 false}
!193 = !{ptr @.str.67, !69, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @types__munmap, !69, !"types__munmap", i1 false, i1 false}
!195 = !{ptr @args__munmap, !69, !"args__munmap", i1 false, i1 false}
!196 = !{ptr @types__remap_file_pages, !79, !"types__remap_file_pages", i1 false, i1 false}
!197 = !{ptr @.str.68, !79, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.69, !79, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @args__remap_file_pages, !79, !"args__remap_file_pages", i1 false, i1 false}
!200 = distinct !{null, !201, !"__already_done", i1 false, i1 false}
!201 = !{!"../mm/mmap.c", i32 2955, i32 2}
!202 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @__do_sys_remap_file_pages._entry, !201, !"_entry", i1 false, i1 false}
!205 = !{ptr @__do_sys_remap_file_pages._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @special_mapping_vmops, !207, !"special_mapping_vmops", i1 false, i1 false}
!207 = !{!"../mm/mmap.c", i32 3389, i32 42}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../mm/mmap.c", i32 3369, i32 6}
!210 = !{ptr @.str.72, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!212 = !{ptr @legacy_special_mapping_vmops, !213, !"legacy_special_mapping_vmops", i1 false, i1 false}
!213 = !{!"../mm/mmap.c", i32 3399, i32 42}
!214 = !{ptr @.str.73, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../mm/mmap.c", i32 3508, i32 8}
!216 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @mm_all_locks_mutex, !215, !"mm_all_locks_mutex", i1 false, i1 false}
!218 = !{!"sp"}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{!"branch_weights", i32 2000, i32 1}
!229 = !{!"branch_weights", i32 1, i32 2000}
!230 = !{!"auto-init"}
!231 = !{i64 2148314695, i64 2148314721, i64 2148314750, i64 2148314784, i64 2148314815, i64 2148314838}
!232 = !{i64 2148794045, i64 2148794050, i64 2148794063, i64 2148794107, i64 2148794141, i64 2148794162}
!233 = !{i64 2148312230, i64 2148312256, i64 2148312285, i64 2148312319, i64 2148312350, i64 2148312373}
!234 = !{i64 2156578325, i64 2156578799, i64 2156578362, i64 2156578418, i64 2156578452, i64 2156578476, i64 2156578517, i64 2156578538, i64 2156578566, i64 2156578600}
!235 = !{i64 2155705812, i64 2155706297, i64 2155705849, i64 2155705905, i64 2155705939, i64 2155705963, i64 2155706004, i64 2155706025, i64 2155706053, i64 2155706087}
!236 = !{i64 2156548750, i64 2156549224, i64 2156548787, i64 2156548843, i64 2156548877, i64 2156548901, i64 2156548942, i64 2156548963, i64 2156548991, i64 2156549025}
!237 = !{!"branch_weights", i32 1, i32 4001}
!238 = !{i64 2152679849, i64 2152679874}
!239 = !{i64 5175404}
!240 = !{i64 5175601}
!241 = !{i64 2152660834}
!242 = !{i8 0, i8 2}
!243 = !{i64 2148414053}
!244 = !{i64 795966, i64 795990, i64 796011, i64 796028, i64 796045}
!245 = !{i64 2148414279}
!246 = !{i64 2156657938, i64 2156658413, i64 2156657975, i64 2156658031, i64 2156658065, i64 2156658089, i64 2156658130, i64 2156658151, i64 2156658179, i64 2156658213}
!247 = !{i64 2156659538, i64 2156660013, i64 2156659575, i64 2156659631, i64 2156659665, i64 2156659689, i64 2156659730, i64 2156659751, i64 2156659779, i64 2156659813}
!248 = !{i64 2156645157, i64 2156645632, i64 2156645194, i64 2156645250, i64 2156645284, i64 2156645308, i64 2156645349, i64 2156645370, i64 2156645398, i64 2156645432}
!249 = !{i64 2156646802, i64 2156647277, i64 2156646839, i64 2156646895, i64 2156646929, i64 2156646953, i64 2156646994, i64 2156647015, i64 2156647043, i64 2156647077}
!250 = !{i64 2156104358}
!251 = !{i64 2156104573}
!252 = !{i64 2150028452}
!253 = !{i64 2150029488}
!254 = !{i64 2153683776, i64 2153684266, i64 2153683813, i64 2153683869, i64 2153683903, i64 2153683927, i64 2153683968, i64 2153683989, i64 2153684017, i64 2153684051}
!255 = !{i64 2156717329, i64 2156717804, i64 2156717366, i64 2156717422, i64 2156717456, i64 2156717480, i64 2156717521, i64 2156717542, i64 2156717570, i64 2156717604}
!256 = !{i64 2156719178, i64 2156719653, i64 2156719215, i64 2156719271, i64 2156719305, i64 2156719329, i64 2156719370, i64 2156719391, i64 2156719419, i64 2156719453}
!257 = !{i64 2156741868, i64 2156742343, i64 2156741905, i64 2156741961, i64 2156741995, i64 2156742019, i64 2156742060, i64 2156742081, i64 2156742109, i64 2156742143}
!258 = !{i64 2156739965, i64 2156740440, i64 2156740002, i64 2156740058, i64 2156740092, i64 2156740116, i64 2156740157, i64 2156740178, i64 2156740206, i64 2156740240}
!259 = !{i64 2156738351, i64 2156738826, i64 2156738388, i64 2156738444, i64 2156738478, i64 2156738502, i64 2156738543, i64 2156738564, i64 2156738592, i64 2156738626}
!260 = !{i64 2156750196, i64 2156750671, i64 2156750233, i64 2156750289, i64 2156750323, i64 2156750347, i64 2156750388, i64 2156750409, i64 2156750437, i64 2156750471}
!261 = !{i64 2156751799, i64 2156752274, i64 2156751836, i64 2156751892, i64 2156751926, i64 2156751950, i64 2156751991, i64 2156752012, i64 2156752040, i64 2156752074}
!262 = !{i64 2156748625, i64 2156749100, i64 2156748662, i64 2156748718, i64 2156748752, i64 2156748776, i64 2156748817, i64 2156748838, i64 2156748866, i64 2156748900}
!263 = !{i64 2156757425, i64 2156757900, i64 2156757462, i64 2156757518, i64 2156757552, i64 2156757576, i64 2156757617, i64 2156757638, i64 2156757666, i64 2156757700}
!264 = !{i64 2156538626, i64 2156539100, i64 2156538663, i64 2156538719, i64 2156538753, i64 2156538777, i64 2156538818, i64 2156538839, i64 2156538867, i64 2156538901}
!265 = !{i64 2153779058, i64 2153779542, i64 2153779095, i64 2153779151, i64 2153779185, i64 2153779209, i64 2153779250, i64 2153779271, i64 2153779299, i64 2153779333}
