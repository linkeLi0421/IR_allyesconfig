; ModuleID = '/llk/IR_all_yes/drivers/char/random.c_pt.bc'
source_filename = "../drivers/char/random.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+add_device_randomness\22, \22a\22\09"
module asm "\09.weak\09__crc_add_device_randomness\09\09\09\09"
module asm "\09.long\09__crc_add_device_randomness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_device_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_device_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_device_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_input_randomness\22, \22a\22\09"
module asm "\09.weak\09__crc_add_input_randomness\09\09\09\09"
module asm "\09.long\09__crc_add_input_randomness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_input_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_input_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_input_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_interrupt_randomness\22, \22a\22\09"
module asm "\09.weak\09__crc_add_interrupt_randomness\09\09\09\09"
module asm "\09.long\09__crc_add_interrupt_randomness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_interrupt_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_interrupt_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_interrupt_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_disk_randomness\22, \22a\22\09"
module asm "\09.weak\09__crc_add_disk_randomness\09\09\09\09"
module asm "\09.long\09__crc_add_disk_randomness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_disk_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_disk_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_disk_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_random_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc_get_random_bytes\09\09\09\09"
module asm "\09.long\09__crc_get_random_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_random_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22get_random_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_get_random_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_random_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_random_bytes\09\09\09\09"
module asm "\09.long\09__crc_wait_for_random_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_random_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_random_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_random_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rng_is_initialized\22, \22a\22\09"
module asm "\09.weak\09__crc_rng_is_initialized\09\09\09\09"
module asm "\09.long\09__crc_rng_is_initialized\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rng_is_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22rng_is_initialized\22\09\09\09\09\09"
module asm "__kstrtabns_rng_is_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+add_random_ready_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_add_random_ready_callback\09\09\09\09"
module asm "\09.long\09__crc_add_random_ready_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_random_ready_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22add_random_ready_callback\22\09\09\09\09\09"
module asm "__kstrtabns_add_random_ready_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+del_random_ready_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_del_random_ready_callback\09\09\09\09"
module asm "\09.long\09__crc_del_random_ready_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_random_ready_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22del_random_ready_callback\22\09\09\09\09\09"
module asm "__kstrtabns_del_random_ready_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_random_bytes_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_get_random_bytes_arch\09\09\09\09"
module asm "\09.long\09__crc_get_random_bytes_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_random_bytes_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22get_random_bytes_arch\22\09\09\09\09\09"
module asm "__kstrtabns_get_random_bytes_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_random_u64\22, \22a\22\09"
module asm "\09.weak\09__crc_get_random_u64\09\09\09\09"
module asm "\09.long\09__crc_get_random_u64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_random_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22get_random_u64\22\09\09\09\09\09"
module asm "__kstrtabns_get_random_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_random_u32\22, \22a\22\09"
module asm "\09.weak\09__crc_get_random_u32\09\09\09\09"
module asm "\09.long\09__crc_get_random_u32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_random_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22get_random_u32\22\09\09\09\09\09"
module asm "__kstrtabns_get_random_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_hwgenerator_randomness\22, \22a\22\09"
module asm "\09.weak\09__crc_add_hwgenerator_randomness\09\09\09\09"
module asm "\09.long\09__crc_add_hwgenerator_randomness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_hwgenerator_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_hwgenerator_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_hwgenerator_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_bootloader_randomness\22, \22a\22\09"
module asm "\09.weak\09__crc_add_bootloader_randomness\09\09\09\09"
module asm "\09.long\09__crc_add_bootloader_randomness\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_bootloader_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_bootloader_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_bootloader_randomness:\09\09\09\09\09"
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
%union.anon.104 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.79 }
%union.anon.79 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.anon.116 = type { %struct.spinlock, i16, i16, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timer_rand_state = type { i32, i32, i32 }
%struct.fast_pool = type { [4 x i32], i32, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.batched_entropy = type { %union.anon.117, i32, %struct.spinlock }
%union.anon.117 = type { [8 x i64] }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_add_device_randomness = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_random__mix_pool_bytes = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_credit_entropy_bits = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_debit_entropy = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_add_input_randomness = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_add_disk_randomness = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_random__get_random_bytes = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_random__extract_entropy = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_urandom_read = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_prandom_u32 = type { %struct.trace_entry, i32, [0 x i8] }
%struct.anon.118 = type { i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.120 = type { i32, %struct.timer_list }
%struct.random_ready_callback = type { %struct.list_head, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%union.anon.119 = type { [8 x i32], [32 x i8] }
%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }

@__tpstrtab_add_device_randomness = internal constant [22 x i8] c"add_device_randomness\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_add_device_randomness = dso_local global %struct.static_call_key { ptr @__traceiter_add_device_randomness }, align 4
@__tracepoint_add_device_randomness = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_add_device_randomness, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_add_device_randomness, ptr null, ptr @__traceiter_add_device_randomness, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_add_device_randomness = internal constant ptr @__tracepoint_add_device_randomness, section "__tracepoints_ptrs", align 4
@__tpstrtab_mix_pool_bytes = internal constant [15 x i8] c"mix_pool_bytes\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mix_pool_bytes = dso_local global %struct.static_call_key { ptr @__traceiter_mix_pool_bytes }, align 4
@__tracepoint_mix_pool_bytes = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mix_pool_bytes, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mix_pool_bytes, ptr null, ptr @__traceiter_mix_pool_bytes, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mix_pool_bytes = internal constant ptr @__tracepoint_mix_pool_bytes, section "__tracepoints_ptrs", align 4
@__tpstrtab_mix_pool_bytes_nolock = internal constant [22 x i8] c"mix_pool_bytes_nolock\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mix_pool_bytes_nolock = dso_local global %struct.static_call_key { ptr @__traceiter_mix_pool_bytes_nolock }, align 4
@__tracepoint_mix_pool_bytes_nolock = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mix_pool_bytes_nolock, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mix_pool_bytes_nolock, ptr null, ptr @__traceiter_mix_pool_bytes_nolock, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mix_pool_bytes_nolock = internal constant ptr @__tracepoint_mix_pool_bytes_nolock, section "__tracepoints_ptrs", align 4
@__tpstrtab_credit_entropy_bits = internal constant [20 x i8] c"credit_entropy_bits\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_credit_entropy_bits = dso_local global %struct.static_call_key { ptr @__traceiter_credit_entropy_bits }, align 4
@__tracepoint_credit_entropy_bits = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_credit_entropy_bits, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_credit_entropy_bits, ptr null, ptr @__traceiter_credit_entropy_bits, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_credit_entropy_bits = internal constant ptr @__tracepoint_credit_entropy_bits, section "__tracepoints_ptrs", align 4
@__tpstrtab_debit_entropy = internal constant [14 x i8] c"debit_entropy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_debit_entropy = dso_local global %struct.static_call_key { ptr @__traceiter_debit_entropy }, align 4
@__tracepoint_debit_entropy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_debit_entropy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_debit_entropy, ptr null, ptr @__traceiter_debit_entropy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_debit_entropy = internal constant ptr @__tracepoint_debit_entropy, section "__tracepoints_ptrs", align 4
@__tpstrtab_add_input_randomness = internal constant [21 x i8] c"add_input_randomness\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_add_input_randomness = dso_local global %struct.static_call_key { ptr @__traceiter_add_input_randomness }, align 4
@__tracepoint_add_input_randomness = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_add_input_randomness, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_add_input_randomness, ptr null, ptr @__traceiter_add_input_randomness, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_add_input_randomness = internal constant ptr @__tracepoint_add_input_randomness, section "__tracepoints_ptrs", align 4
@__tpstrtab_add_disk_randomness = internal constant [20 x i8] c"add_disk_randomness\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_add_disk_randomness = dso_local global %struct.static_call_key { ptr @__traceiter_add_disk_randomness }, align 4
@__tracepoint_add_disk_randomness = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_add_disk_randomness, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_add_disk_randomness, ptr null, ptr @__traceiter_add_disk_randomness, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_add_disk_randomness = internal constant ptr @__tracepoint_add_disk_randomness, section "__tracepoints_ptrs", align 4
@__tpstrtab_get_random_bytes = internal constant [17 x i8] c"get_random_bytes\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_get_random_bytes = dso_local global %struct.static_call_key { ptr @__traceiter_get_random_bytes }, align 4
@__tracepoint_get_random_bytes = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_get_random_bytes, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_get_random_bytes, ptr null, ptr @__traceiter_get_random_bytes, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_get_random_bytes = internal constant ptr @__tracepoint_get_random_bytes, section "__tracepoints_ptrs", align 4
@__tpstrtab_get_random_bytes_arch = internal constant [22 x i8] c"get_random_bytes_arch\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_get_random_bytes_arch = dso_local global %struct.static_call_key { ptr @__traceiter_get_random_bytes_arch }, align 4
@__tracepoint_get_random_bytes_arch = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_get_random_bytes_arch, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_get_random_bytes_arch, ptr null, ptr @__traceiter_get_random_bytes_arch, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_get_random_bytes_arch = internal constant ptr @__tracepoint_get_random_bytes_arch, section "__tracepoints_ptrs", align 4
@__tpstrtab_extract_entropy = internal constant [16 x i8] c"extract_entropy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_extract_entropy = dso_local global %struct.static_call_key { ptr @__traceiter_extract_entropy }, align 4
@__tracepoint_extract_entropy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_extract_entropy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_extract_entropy, ptr null, ptr @__traceiter_extract_entropy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_extract_entropy = internal constant ptr @__tracepoint_extract_entropy, section "__tracepoints_ptrs", align 4
@__tpstrtab_urandom_read = internal constant [13 x i8] c"urandom_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_urandom_read = dso_local global %struct.static_call_key { ptr @__traceiter_urandom_read }, align 4
@__tracepoint_urandom_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_urandom_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_urandom_read, ptr null, ptr @__traceiter_urandom_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_urandom_read = internal constant ptr @__tracepoint_urandom_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_prandom_u32 = internal constant [12 x i8] c"prandom_u32\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_prandom_u32 = dso_local global %struct.static_call_key { ptr @__traceiter_prandom_u32 }, align 4
@__tracepoint_prandom_u32 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_prandom_u32, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_prandom_u32, ptr null, ptr @__traceiter_prandom_u32, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_prandom_u32 = internal constant ptr @__tracepoint_prandom_u32, section "__tracepoints_ptrs", align 4
@str__random__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"random\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_add_device_randomness = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_add_device_randomness = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_add_device_randomness, ptr @perf_trace_add_device_randomness, ptr @trace_event_reg, ptr @trace_event_fields_add_device_randomness, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_add_device_randomness, i64 24), ptr getelementptr (i8, ptr @event_class_add_device_randomness, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_add_device_randomness = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_add_device_randomness, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_add_device_randomness = internal global { [51 x i8], [45 x i8] } { [51 x i8] c"\22bytes %d caller %pS\22, REC->bytes, (void *)REC->IP\00", [45 x i8] zeroinitializer }, align 32
@event_add_device_randomness = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_add_device_randomness, %union.anon.1 { ptr @__tracepoint_add_device_randomness }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_add_device_randomness }, ptr @print_fmt_add_device_randomness, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_add_device_randomness = internal global ptr @event_add_device_randomness, section "_ftrace_events", align 4
@trace_event_fields_random__mix_pool_bytes = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_random__mix_pool_bytes = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_random__mix_pool_bytes, ptr @perf_trace_random__mix_pool_bytes, ptr @trace_event_reg, ptr @trace_event_fields_random__mix_pool_bytes, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_random__mix_pool_bytes, i64 24), ptr getelementptr (i8, ptr @event_class_random__mix_pool_bytes, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_random__mix_pool_bytes = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_random__mix_pool_bytes, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_random__mix_pool_bytes = internal global { [63 x i8], [33 x i8] } { [63 x i8] c"\22input pool: bytes %d caller %pS\22, REC->bytes, (void *)REC->IP\00", [33 x i8] zeroinitializer }, align 32
@event_mix_pool_bytes = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__mix_pool_bytes, %union.anon.1 { ptr @__tracepoint_mix_pool_bytes }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__mix_pool_bytes }, ptr @print_fmt_random__mix_pool_bytes, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mix_pool_bytes = internal global ptr @event_mix_pool_bytes, section "_ftrace_events", align 4
@event_mix_pool_bytes_nolock = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__mix_pool_bytes, %union.anon.1 { ptr @__tracepoint_mix_pool_bytes_nolock }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__mix_pool_bytes }, ptr @print_fmt_random__mix_pool_bytes, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mix_pool_bytes_nolock = internal global ptr @event_mix_pool_bytes_nolock, section "_ftrace_events", align 4
@trace_event_fields_credit_entropy_bits = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_credit_entropy_bits = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_credit_entropy_bits, ptr @perf_trace_credit_entropy_bits, ptr @trace_event_reg, ptr @trace_event_fields_credit_entropy_bits, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_credit_entropy_bits, i64 24), ptr getelementptr (i8, ptr @event_class_credit_entropy_bits, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_credit_entropy_bits = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_credit_entropy_bits, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_credit_entropy_bits = internal global { [98 x i8], [62 x i8] } { [98 x i8] c"\22input pool: bits %d entropy_count %d caller %pS\22, REC->bits, REC->entropy_count, (void *)REC->IP\00", [62 x i8] zeroinitializer }, align 32
@event_credit_entropy_bits = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_credit_entropy_bits, %union.anon.1 { ptr @__tracepoint_credit_entropy_bits }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_credit_entropy_bits }, ptr @print_fmt_credit_entropy_bits, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_credit_entropy_bits = internal global ptr @event_credit_entropy_bits, section "_ftrace_events", align 4
@trace_event_fields_debit_entropy = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_debit_entropy = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_debit_entropy, ptr @perf_trace_debit_entropy, ptr @trace_event_reg, ptr @trace_event_fields_debit_entropy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_debit_entropy, i64 24), ptr getelementptr (i8, ptr @event_class_debit_entropy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_debit_entropy = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_debit_entropy, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_debit_entropy = internal global { [45 x i8], [51 x i8] } { [45 x i8] c"\22input pool: debit_bits %d\22, REC->debit_bits\00", [51 x i8] zeroinitializer }, align 32
@event_debit_entropy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_debit_entropy, %union.anon.1 { ptr @__tracepoint_debit_entropy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_debit_entropy }, ptr @print_fmt_debit_entropy, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_debit_entropy = internal global ptr @event_debit_entropy, section "_ftrace_events", align 4
@trace_event_fields_add_input_randomness = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_add_input_randomness = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_add_input_randomness, ptr @perf_trace_add_input_randomness, ptr @trace_event_reg, ptr @trace_event_fields_add_input_randomness, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_add_input_randomness, i64 24), ptr getelementptr (i8, ptr @event_class_add_input_randomness, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_add_input_randomness = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_add_input_randomness, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_add_input_randomness = internal global { [38 x i8], [58 x i8] } { [38 x i8] c"\22input_pool_bits %d\22, REC->input_bits\00", [58 x i8] zeroinitializer }, align 32
@event_add_input_randomness = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_add_input_randomness, %union.anon.1 { ptr @__tracepoint_add_input_randomness }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_add_input_randomness }, ptr @print_fmt_add_input_randomness, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_add_input_randomness = internal global ptr @event_add_input_randomness, section "_ftrace_events", align 4
@trace_event_fields_add_disk_randomness = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.0 { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_add_disk_randomness = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_add_disk_randomness, ptr @perf_trace_add_disk_randomness, ptr @trace_event_reg, ptr @trace_event_fields_add_disk_randomness, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_add_disk_randomness, i64 24), ptr getelementptr (i8, ptr @event_class_add_disk_randomness, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_add_disk_randomness = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_add_disk_randomness, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_add_disk_randomness = internal global { [135 x i8], [57 x i8] } { [135 x i8] c"\22dev %d,%d input_pool_bits %d\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->input_bits\00", [57 x i8] zeroinitializer }, align 32
@event_add_disk_randomness = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_add_disk_randomness, %union.anon.1 { ptr @__tracepoint_add_disk_randomness }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_add_disk_randomness }, ptr @print_fmt_add_disk_randomness, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_add_disk_randomness = internal global ptr @event_add_disk_randomness, section "_ftrace_events", align 4
@trace_event_fields_random__get_random_bytes = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_random__get_random_bytes = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_random__get_random_bytes, ptr @perf_trace_random__get_random_bytes, ptr @trace_event_reg, ptr @trace_event_fields_random__get_random_bytes, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_random__get_random_bytes, i64 24), ptr getelementptr (i8, ptr @event_class_random__get_random_bytes, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_random__get_random_bytes = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_random__get_random_bytes, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_random__get_random_bytes = internal global { [53 x i8], [43 x i8] } { [53 x i8] c"\22nbytes %d caller %pS\22, REC->nbytes, (void *)REC->IP\00", [43 x i8] zeroinitializer }, align 32
@event_get_random_bytes = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__get_random_bytes, %union.anon.1 { ptr @__tracepoint_get_random_bytes }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__get_random_bytes }, ptr @print_fmt_random__get_random_bytes, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_get_random_bytes = internal global ptr @event_get_random_bytes, section "_ftrace_events", align 4
@event_get_random_bytes_arch = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__get_random_bytes, %union.anon.1 { ptr @__tracepoint_get_random_bytes_arch }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__get_random_bytes }, ptr @print_fmt_random__get_random_bytes, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_get_random_bytes_arch = internal global ptr @event_get_random_bytes_arch, section "_ftrace_events", align 4
@trace_event_fields_random__extract_entropy = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.0 { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_random__extract_entropy = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_random__extract_entropy, ptr @perf_trace_random__extract_entropy, ptr @trace_event_reg, ptr @trace_event_fields_random__extract_entropy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_random__extract_entropy, i64 24), ptr getelementptr (i8, ptr @event_class_random__extract_entropy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_random__extract_entropy = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_random__extract_entropy, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_random__extract_entropy = internal global { [102 x i8], [58 x i8] } { [102 x i8] c"\22input pool: nbytes %d entropy_count %d caller %pS\22, REC->nbytes, REC->entropy_count, (void *)REC->IP\00", [58 x i8] zeroinitializer }, align 32
@event_extract_entropy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__extract_entropy, %union.anon.1 { ptr @__tracepoint_extract_entropy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__extract_entropy }, ptr @print_fmt_random__extract_entropy, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_extract_entropy = internal global ptr @event_extract_entropy, section "_ftrace_events", align 4
@trace_event_fields_urandom_read = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_urandom_read = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_urandom_read, ptr @perf_trace_urandom_read, ptr @trace_event_reg, ptr @trace_event_fields_urandom_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_urandom_read, i64 24), ptr getelementptr (i8, ptr @event_class_urandom_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_urandom_read = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_urandom_read, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_urandom_read = internal global { [117 x i8], [43 x i8] } { [117 x i8] c"\22got_bits %d nonblocking_pool_entropy_left %d input_entropy_left %d\22, REC->got_bits, REC->pool_left, REC->input_left\00", [43 x i8] zeroinitializer }, align 32
@event_urandom_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_urandom_read, %union.anon.1 { ptr @__tracepoint_urandom_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_urandom_read }, ptr @print_fmt_urandom_read, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_urandom_read = internal global ptr @event_urandom_read, section "_ftrace_events", align 4
@trace_event_fields_prandom_u32 = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.0 { %struct.anon { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_prandom_u32 = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_prandom_u32, ptr @perf_trace_prandom_u32, ptr @trace_event_reg, ptr @trace_event_fields_prandom_u32, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_prandom_u32, i64 24), ptr getelementptr (i8, ptr @event_class_prandom_u32, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_prandom_u32 = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_prandom_u32, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_prandom_u32 = internal global { [19 x i8], [45 x i8] } { [19 x i8] c"\22ret=%u\22, REC->ret\00", [45 x i8] zeroinitializer }, align 32
@event_prandom_u32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_prandom_u32, %union.anon.1 { ptr @__tracepoint_prandom_u32 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_prandom_u32 }, ptr @print_fmt_prandom_u32, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_prandom_u32 = internal global ptr @event_prandom_u32, section "_ftrace_events", align 4
@__bpf_trace_tp_map_add_device_randomness = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_add_device_randomness, ptr @__bpf_trace_add_device_randomness, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mix_pool_bytes = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_mix_pool_bytes, ptr @__bpf_trace_random__mix_pool_bytes, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mix_pool_bytes_nolock = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_mix_pool_bytes_nolock, ptr @__bpf_trace_random__mix_pool_bytes, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_credit_entropy_bits = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_credit_entropy_bits, ptr @__bpf_trace_credit_entropy_bits, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_debit_entropy = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_debit_entropy, ptr @__bpf_trace_debit_entropy, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_add_input_randomness = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_add_input_randomness, ptr @__bpf_trace_add_input_randomness, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_add_disk_randomness = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_add_disk_randomness, ptr @__bpf_trace_add_disk_randomness, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_get_random_bytes = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_get_random_bytes, ptr @__bpf_trace_random__get_random_bytes, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_get_random_bytes_arch = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_get_random_bytes_arch, ptr @__bpf_trace_random__get_random_bytes, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_extract_entropy = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_extract_entropy, ptr @__bpf_trace_random__extract_entropy, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_urandom_read = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_urandom_read, ptr @__bpf_trace_urandom_read, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_prandom_u32 = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_prandom_u32, ptr @__bpf_trace_prandom_u32, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__param_str_ratelimit_disable = internal constant [25 x i8] c"random.ratelimit_disable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ratelimit_disable = internal global i32 0, section ".data..read_mostly", align 4
@__param_ratelimit_disable = internal constant %struct.kernel_param { ptr @__param_str_ratelimit_disable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.79 { ptr @ratelimit_disable } }, section "__param", align 4
@__UNIQUE_ID_ratelimit_disabletype339 = internal constant [38 x i8] c"random.parmtype=ratelimit_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ratelimit_disable340 = internal constant [67 x i8] c"random.parm=ratelimit_disable:Disable random ratelimit suppression\00", section ".modinfo", align 1
@__setup_str_parse_trust_cpu = internal constant [17 x i8] c"random.trust_cpu\00", section ".init.rodata", align 1
@__setup_parse_trust_cpu = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_trust_cpu, ptr @parse_trust_cpu, i32 1 }, section ".init.setup", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@crng_init = internal global { i32, [28 x i8] } zeroinitializer, align 32
@input_pool = internal global { %struct.anon.116, [44 x i8] } { %struct.anon.116 { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i16 0, i16 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_add_device_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_device_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_device_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_device_randomness to i32), ptr @__kstrtab_add_device_randomness, ptr @__kstrtabns_add_device_randomness }, section "___ksymtab+add_device_randomness", align 4
@add_input_randomness.last_value = internal global { i8, [31 x i8] } zeroinitializer, align 32
@input_timer_state = internal global { %struct.timer_rand_state, [20 x i8] } { %struct.timer_rand_state { i32 -30000, i32 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_add_input_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_input_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_input_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_input_randomness to i32), ptr @__kstrtab_add_input_randomness, ptr @__kstrtabns_add_input_randomness }, section "___ksymtab_gpl+add_input_randomness", align 4
@irq_randomness = weak dso_local global %struct.fast_pool zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_add_interrupt_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_interrupt_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_interrupt_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_interrupt_randomness to i32), ptr @__kstrtab_add_interrupt_randomness, ptr @__kstrtabns_add_interrupt_randomness }, section "___ksymtab_gpl+add_interrupt_randomness", align 4
@__kstrtab_add_disk_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_disk_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_disk_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_disk_randomness to i32), ptr @__kstrtab_add_disk_randomness, ptr @__kstrtabns_add_disk_randomness }, section "___ksymtab_gpl+add_disk_randomness", align 4
@get_random_bytes.previous = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.get_random_bytes = private unnamed_addr constant [17 x i8] c"get_random_bytes\00", align 1
@__kstrtab_get_random_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_random_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_get_random_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_random_bytes to i32), ptr @__kstrtab_get_random_bytes, ptr @__kstrtabns_get_random_bytes }, section "___ksymtab+get_random_bytes", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/char/random.c\00", [42 x i8] zeroinitializer }, align 32
@crng_init_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.46, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @crng_init_wait, i64 44), ptr getelementptr (i8, ptr @crng_init_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_wait_for_random_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_random_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_random_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_random_bytes to i32), ptr @__kstrtab_wait_for_random_bytes, ptr @__kstrtabns_wait_for_random_bytes }, section "___ksymtab+wait_for_random_bytes", align 4
@__kstrtab_rng_is_initialized = external dso_local constant [0 x i8], align 1
@__kstrtabns_rng_is_initialized = external dso_local constant [0 x i8], align 1
@__ksymtab_rng_is_initialized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rng_is_initialized to i32), ptr @__kstrtab_rng_is_initialized, ptr @__kstrtabns_rng_is_initialized }, section "___ksymtab+rng_is_initialized", align 4
@random_ready_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@random_ready_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @random_ready_list, ptr @random_ready_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_add_random_ready_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_random_ready_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_add_random_ready_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_random_ready_callback to i32), ptr @__kstrtab_add_random_ready_callback, ptr @__kstrtabns_add_random_ready_callback }, section "___ksymtab+add_random_ready_callback", align 4
@__kstrtab_del_random_ready_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_random_ready_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_del_random_ready_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_random_ready_callback to i32), ptr @__kstrtab_del_random_ready_callback, ptr @__kstrtabns_del_random_ready_callback }, section "___ksymtab+del_random_ready_callback", align 4
@__kstrtab_get_random_bytes_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_random_bytes_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_get_random_bytes_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_random_bytes_arch to i32), ptr @__kstrtab_get_random_bytes_arch, ptr @__kstrtabns_get_random_bytes_arch }, section "___ksymtab+get_random_bytes_arch", align 4
@crng_need_final_init = internal global { i1, [31 x i8] } zeroinitializer, align 32
@crng_global_init_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@urandom_warning = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 100, i32 3, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@unseeded_warning = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 100, i32 3, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@random_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @random_read, ptr @random_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @random_poll, ptr @random_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @random_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@urandom_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @urandom_read, ptr @random_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @random_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @random_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_getrandom\00", [44 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__getrandom = internal global %struct.syscall_metadata { ptr @.str.3, i32 -1, i32 3, ptr @types__getrandom, ptr @args__getrandom, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getrandom, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getrandom, i64 20) }, ptr @event_enter__getrandom, ptr @event_exit__getrandom }, align 4
@event_enter__getrandom = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.1 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__getrandom, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getrandom = internal global ptr @event_enter__getrandom, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_getrandom\00", [45 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__getrandom = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.1 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__getrandom, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getrandom = internal global ptr @event_exit__getrandom, section "_ftrace_events", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_getrandom\00", [18 x i8] zeroinitializer }, align 32
@types__getrandom = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.66, ptr @.str.67, ptr @.str.29], [20 x i8] zeroinitializer }, align 32
@args__getrandom = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getrandom = internal global ptr @__syscall_meta__getrandom, section "__syscalls_metadata", align 4
@__initcall__kmod_random__377_2070_random_sysctls_init6 = internal global ptr @random_sysctls_init, section ".initcall6.init", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"batched_entropy_u64.lock\00", [39 x i8] zeroinitializer }, align 32
@batched_entropy_u64 = weak dso_local global %struct.batched_entropy { %union.anon.117 zeroinitializer, i32 0, %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, section ".data..percpu", align 8
@get_random_u64.previous = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.get_random_u64 = private unnamed_addr constant [15 x i8] c"get_random_u64\00", align 1
@__kstrtab_get_random_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_random_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_random_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_random_u64 to i32), ptr @__kstrtab_get_random_u64, ptr @__kstrtabns_get_random_u64 }, section "___ksymtab+get_random_u64", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"batched_entropy_u32.lock\00", [39 x i8] zeroinitializer }, align 32
@batched_entropy_u32 = weak dso_local global %struct.batched_entropy { %union.anon.117 zeroinitializer, i32 0, %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, section ".data..percpu", align 8
@get_random_u32.previous = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__func__.get_random_u32 = private unnamed_addr constant [15 x i8] c"get_random_u32\00", align 1
@__kstrtab_get_random_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_random_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_random_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_random_u32 to i32), ptr @__kstrtab_get_random_u32, ptr @__kstrtabns_get_random_u32 }, section "___ksymtab+get_random_u32", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@random_write_wakeup_bits = internal global { i32, [28 x i8] } { i32 896, [28 x i8] zeroinitializer }, align 32
@random_write_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.81, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @random_write_wait, i64 44), ptr getelementptr (i8, ptr @random_write_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_add_hwgenerator_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_hwgenerator_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_hwgenerator_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_hwgenerator_randomness to i32), ptr @__kstrtab_add_hwgenerator_randomness, ptr @__kstrtabns_add_hwgenerator_randomness }, section "___ksymtab_gpl+add_hwgenerator_randomness", align 4
@__kstrtab_add_bootloader_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_bootloader_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_bootloader_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_bootloader_randomness to i32), ptr @__kstrtab_add_bootloader_randomness, ptr @__kstrtabns_add_bootloader_randomness }, section "___ksymtab_gpl+add_bootloader_randomness", align 4
@__pcpu_unique_irq_randomness = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_batched_entropy_u64 = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_batched_entropy_u32 = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bytes\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IP\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bytes %d caller %pS\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"input pool: bytes %d caller %pS\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bits\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"entropy_count\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"input pool: bits %d entropy_count %d caller %pS\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debit_bits\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"input pool: debit_bits %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"input_bits\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"input_pool_bits %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dev_t\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dev %d,%d input_pool_bits %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nbytes\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nbytes %d caller %pS\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"input pool: nbytes %d entropy_count %d caller %pS\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"got_bits\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pool_left\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"input_left\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"got_bits %d nonblocking_pool_entropy_left %d input_entropy_left %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ret=%u\0A\00", [24 x i8] zeroinitializer }, align 32
@trust_cpu = internal global i8 0, section ".data..ro_after_init", align 1
@crng_slow_load.lfsr = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"primary_crng.lock\00", [46 x i8] zeroinitializer }, align 32
@primary_crng = internal global { { <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, [48 x i8] } { { <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock } { <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236, [12 x i32] zeroinitializer }>, i32 0, %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 3, i8 0, i32 0, i32 0 } } } } }, [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/random.h\00", [34 x i8] zeroinitializer }, align 32
@trace_add_device_randomness.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"input_pool.lock\00", [16 x i8] zeroinitializer }, align 32
@input_pool_data = internal global { [128 x i32], [128 x i8] } zeroinitializer, align 32
@twist_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 997073096, i32 1994146192, i32 1303535960, i32 -306674912, i32 -690576408, i32 -1687895376, i32 -1609899400], [32 x i8] zeroinitializer }, align 32
@trace_add_input_randomness.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@crng_init_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@crng_fast_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015random: fast init done\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"crng_fast_load\00", [17 x i8] zeroinitializer }, align 32
@crng_fast_load._entry_ptr = internal global ptr @crng_fast_load._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@trace_mix_pool_bytes_nolock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@credit_entropy_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014random: negative entropy/overflow: count %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"credit_entropy_bits\00", [44 x i8] zeroinitializer }, align 32
@credit_entropy_bits._entry_ptr = internal global ptr @credit_entropy_bits._entry, section ".printk_index", align 4
@trace_credit_entropy_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_extract_entropy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@account._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014random: negative entropy count: count %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"account\00", [24 x i8] zeroinitializer }, align 32
@account._entry_ptr = internal global ptr @account._entry, section ".printk_index", align 4
@fasync = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@trace_debit_entropy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_add_disk_randomness.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__._warn_unseeded_randomness = private unnamed_addr constant [26 x i8] c"_warn_unseeded_randomness\00", align 1
@_warn_unseeded_randomness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__._warn_unseeded_randomness, ptr @.str, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015random: %s called from %pS with crng_init=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@_warn_unseeded_randomness._entry_ptr = internal global ptr @_warn_unseeded_randomness._entry, section ".printk_index", align 4
@trace_get_random_bytes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"crng_init_wait.lock\00", [44 x i8] zeroinitializer }, align 32
@try_to_generate_entropy.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&stack.timer)\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"random_ready_list_lock\00", [41 x i8] zeroinitializer }, align 32
@trace_get_random_bytes_arch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@crng_finalize_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015random: crng init done\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"crng_finalize_init\00", [45 x i8] zeroinitializer }, align 32
@crng_finalize_init._entry_ptr = internal global ptr @crng_finalize_init._entry, section ".printk_index", align 4
@crng_finalize_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015random: %d get_random_xx warning(s) missed due to ratelimiting\0A\00", [62 x i8] zeroinitializer }, align 32
@crng_finalize_init._entry_ptr.53 = internal global ptr @crng_finalize_init._entry.51, section ".printk_index", align 4
@crng_finalize_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015random: %d urandom warning(s) missed due to ratelimiting\0A\00", [36 x i8] zeroinitializer }, align 32
@crng_finalize_init._entry_ptr.56 = internal global ptr @crng_finalize_init._entry.54, section ".printk_index", align 4
@crng_initialize_primary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015random: crng init done (trusting CPU's manufacturer)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"crng_initialize_primary\00", [40 x i8] zeroinitializer }, align 32
@crng_initialize_primary._entry_ptr = internal global ptr @crng_initialize_primary._entry, section ".printk_index", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/random.h\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\22warn_urandom_randomness\22.lock\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\22warn_unseeded_randomness\22.lock\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@trace_urandom_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@urandom_read.maxwarn = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__func__.urandom_read = private unnamed_addr constant [13 x i8] c"urandom_read\00", align 1
@urandom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @__func__.urandom_read, ptr @.str, i32 1747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015random: %s: uninitialized urandom read (%zd bytes read)\0A\00", [37 x i8] zeroinitializer }, align 32
@urandom_read._entry_ptr = internal global ptr @urandom_read._entry, section ".printk_index", align 4
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kernel/random\00", [18 x i8] zeroinitializer }, align 32
@random_table = internal global { [7 x %struct.ctl_table], [36 x i8] } { [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.73, ptr @sysctl_poolsize, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.74, ptr getelementptr (i8, ptr @input_pool, i64 48), i32 4, i16 292, ptr null, ptr @proc_do_entropy, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.75, ptr @random_write_wakeup_bits, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_write_thresh, ptr @max_write_thresh }, %struct.ctl_table { ptr @.str.76, ptr @random_min_urandom_seed, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.77, ptr @sysctl_bootid, i32 16, i16 292, ptr null, ptr @proc_do_uuid, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.78, ptr null, i32 16, i16 292, ptr null, ptr @proc_do_uuid, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"random_table\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poolsize\00", [23 x i8] zeroinitializer }, align 32
@sysctl_poolsize = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"entropy_avail\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write_wakeup_threshold\00", [41 x i8] zeroinitializer }, align 32
@min_write_thresh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@max_write_thresh = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"urandom_min_reseed_secs\00", [40 x i8] zeroinitializer }, align 32
@random_min_urandom_seed = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"boot_id\00", [24 x i8] zeroinitializer }, align 32
@sysctl_bootid = internal global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uuid\00", [27 x i8] zeroinitializer }, align 32
@proc_do_uuid.bootid_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bootid_spinlock\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pU\00", [28 x i8] zeroinitializer }, align 32
@trace_mix_pool_bytes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"random_write_wait.lock\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 20996, i64 20998, i64 20999, i64 1074024961, i64 1074287107, i64 2147766784]
@___asan_gen_.82 = private unnamed_addr constant [31 x i8] c"str__random__trace_system_name\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 36, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [41 x i8] c"trace_event_fields_add_device_randomness\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_add_device_randomness\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [32 x i8] c"print_fmt_add_device_randomness\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"event_add_device_randomness\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [42 x i8] c"trace_event_fields_random__mix_pool_bytes\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_random__mix_pool_bytes\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [33 x i8] c"print_fmt_random__mix_pool_bytes\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"event_mix_pool_bytes\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 49, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"event_mix_pool_bytes_nolock\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 55, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [39 x i8] c"trace_event_fields_credit_entropy_bits\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_credit_entropy_bits\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [30 x i8] c"print_fmt_credit_entropy_bits\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"event_credit_entropy_bits\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [33 x i8] c"trace_event_fields_debit_entropy\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_debit_entropy\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"print_fmt_debit_entropy\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"event_debit_entropy\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [40 x i8] c"trace_event_fields_add_input_randomness\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_add_input_randomness\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [31 x i8] c"print_fmt_add_input_randomness\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"event_add_input_randomness\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [39 x i8] c"trace_event_fields_add_disk_randomness\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_add_disk_randomness\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [30 x i8] c"print_fmt_add_disk_randomness\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"event_add_disk_randomness\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [44 x i8] c"trace_event_fields_random__get_random_bytes\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_random__get_random_bytes\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [35 x i8] c"print_fmt_random__get_random_bytes\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"event_get_random_bytes\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 151, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant [28 x i8] c"event_get_random_bytes_arch\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 157, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [43 x i8] c"trace_event_fields_random__extract_entropy\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_random__extract_entropy\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [34 x i8] c"print_fmt_random__extract_entropy\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"event_extract_entropy\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 185, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant [32 x i8] c"trace_event_fields_urandom_read\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_urandom_read\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [23 x i8] c"print_fmt_urandom_read\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"event_urandom_read\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"trace_event_fields_prandom_u32\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_prandom_u32\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [22 x i8] c"print_fmt_prandom_u32\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [18 x i8] c"event_prandom_u32\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [10 x i8] c"crng_init\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 467, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"input_pool\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 503, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [11 x i8] c"last_value\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1172, i32 23 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"input_timer_state\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1110, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1472, i32 15 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1545, i32 9 }
@___asan_gen_.229 = private unnamed_addr constant [15 x i8] c"crng_init_wait\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [23 x i8] c"random_ready_list_lock\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [18 x i8] c"random_ready_list\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 443, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant [21 x i8] c"crng_need_final_init\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [22 x i8] c"crng_global_init_time\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 471, i32 22 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"urandom_warning\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 481, i32 31 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"unseeded_warning\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 479, i32 31 }
@___asan_gen_.248 = private unnamed_addr constant [12 x i8] c"random_fops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1882, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant [13 x i8] c"urandom_fops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1892, i32 30 }
@___asan_gen_.257 = private unnamed_addr constant [23 x i8] c"event_enter__getrandom\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"event_exit__getrandom\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"types__getrandom\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [16 x i8] c"args__getrandom\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2091, i32 16 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2099, i32 15 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2116, i32 16 }
@___asan_gen_.284 = private unnamed_addr constant [9 x i8] c"previous\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2123, i32 15 }
@___asan_gen_.287 = private unnamed_addr constant [25 x i8] c"random_write_wakeup_bits\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 366, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant [18 x i8] c"random_write_wait\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 30, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 61, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 82, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 98, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 114, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 133, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 163, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 191, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 213, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [5 x i8] c"lfsr\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 925, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 452, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant [13 x i8] c"primary_crng\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 451, i32 26 }
@___asan_gen_.384 = private unnamed_addr constant [33 x i8] c"../include/trace/events/random.h\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 11, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 108, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 504, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant [16 x i8] c"input_pool_data\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 496, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant [12 x i8] c"twist_table\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 512, i32 18 }
@___asan_gen_.398 = private unnamed_addr constant [14 x i8] c"crng_init_cnt\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 470, i32 12 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 903, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 693, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1305, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant [7 x i8] c"fasync\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 440, i32 30 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1435, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 727, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1514, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 442, i32 8 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 819, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 821, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 826, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 798, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant [26 x i8] c"../include/linux/random.h\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 148, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 482, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 480, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 230, i32 6 }
@___asan_gen_.492 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 214, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 174, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [8 x i8] c"maxwarn\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1741, i32 13 }
@___asan_gen_.500 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1746, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1901, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant [13 x i8] c"random_table\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1998, i32 25 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2067, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2000, i32 15 }
@___asan_gen_.533 = private unnamed_addr constant [16 x i8] c"sysctl_poolsize\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1997, i32 12 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2007, i32 15 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2014, i32 15 }
@___asan_gen_.542 = private unnamed_addr constant [17 x i8] c"min_write_thresh\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1939, i32 12 }
@___asan_gen_.545 = private unnamed_addr constant [17 x i8] c"max_write_thresh\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1940, i32 12 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2023, i32 15 }
@___asan_gen_.551 = private unnamed_addr constant [24 x i8] c"random_min_urandom_seed\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1941, i32 12 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2030, i32 15 }
@___asan_gen_.557 = private unnamed_addr constant [14 x i8] c"sysctl_bootid\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1942, i32 13 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2037, i32 15 }
@___asan_gen_.563 = private unnamed_addr constant [16 x i8] c"bootid_spinlock\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1964, i32 10 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1972, i32 15 }
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private constant [25 x i8] c"../drivers/char/random.c\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 439, i32 8 }
@llvm.compiler.used = appending global [255 x ptr] [ptr @__UNIQUE_ID_ratelimit_disable340, ptr @__UNIQUE_ID_ratelimit_disabletype339, ptr @__bpf_trace_tp_map_add_device_randomness, ptr @__bpf_trace_tp_map_add_disk_randomness, ptr @__bpf_trace_tp_map_add_input_randomness, ptr @__bpf_trace_tp_map_credit_entropy_bits, ptr @__bpf_trace_tp_map_debit_entropy, ptr @__bpf_trace_tp_map_extract_entropy, ptr @__bpf_trace_tp_map_get_random_bytes, ptr @__bpf_trace_tp_map_get_random_bytes_arch, ptr @__bpf_trace_tp_map_mix_pool_bytes, ptr @__bpf_trace_tp_map_mix_pool_bytes_nolock, ptr @__bpf_trace_tp_map_prandom_u32, ptr @__bpf_trace_tp_map_urandom_read, ptr @__event_add_device_randomness, ptr @__event_add_disk_randomness, ptr @__event_add_input_randomness, ptr @__event_credit_entropy_bits, ptr @__event_debit_entropy, ptr @__event_enter__getrandom, ptr @__event_exit__getrandom, ptr @__event_extract_entropy, ptr @__event_get_random_bytes, ptr @__event_get_random_bytes_arch, ptr @__event_mix_pool_bytes, ptr @__event_mix_pool_bytes_nolock, ptr @__event_prandom_u32, ptr @__event_urandom_read, ptr @__initcall__kmod_random__377_2070_random_sysctls_init6, ptr @__ksymtab_add_bootloader_randomness, ptr @__ksymtab_add_device_randomness, ptr @__ksymtab_add_disk_randomness, ptr @__ksymtab_add_hwgenerator_randomness, ptr @__ksymtab_add_input_randomness, ptr @__ksymtab_add_interrupt_randomness, ptr @__ksymtab_add_random_ready_callback, ptr @__ksymtab_del_random_ready_callback, ptr @__ksymtab_get_random_bytes, ptr @__ksymtab_get_random_bytes_arch, ptr @__ksymtab_get_random_u32, ptr @__ksymtab_get_random_u64, ptr @__ksymtab_rng_is_initialized, ptr @__ksymtab_wait_for_random_bytes, ptr @__p_syscall_meta__getrandom, ptr @__param_ratelimit_disable, ptr @__setup_parse_trust_cpu, ptr @__syscall_meta__getrandom, ptr @__tracepoint_add_device_randomness, ptr @__tracepoint_add_disk_randomness, ptr @__tracepoint_add_input_randomness, ptr @__tracepoint_credit_entropy_bits, ptr @__tracepoint_debit_entropy, ptr @__tracepoint_extract_entropy, ptr @__tracepoint_get_random_bytes, ptr @__tracepoint_get_random_bytes_arch, ptr @__tracepoint_mix_pool_bytes, ptr @__tracepoint_mix_pool_bytes_nolock, ptr @__tracepoint_prandom_u32, ptr @__tracepoint_ptr_add_device_randomness, ptr @__tracepoint_ptr_add_disk_randomness, ptr @__tracepoint_ptr_add_input_randomness, ptr @__tracepoint_ptr_credit_entropy_bits, ptr @__tracepoint_ptr_debit_entropy, ptr @__tracepoint_ptr_extract_entropy, ptr @__tracepoint_ptr_get_random_bytes, ptr @__tracepoint_ptr_get_random_bytes_arch, ptr @__tracepoint_ptr_mix_pool_bytes, ptr @__tracepoint_ptr_mix_pool_bytes_nolock, ptr @__tracepoint_ptr_prandom_u32, ptr @__tracepoint_ptr_urandom_read, ptr @__tracepoint_urandom_read, ptr @_warn_unseeded_randomness._entry, ptr @_warn_unseeded_randomness._entry_ptr, ptr @account._entry, ptr @account._entry_ptr, ptr @credit_entropy_bits._entry, ptr @credit_entropy_bits._entry_ptr, ptr @crng_fast_load._entry, ptr @crng_fast_load._entry_ptr, ptr @crng_finalize_init._entry, ptr @crng_finalize_init._entry.51, ptr @crng_finalize_init._entry.54, ptr @crng_finalize_init._entry_ptr, ptr @crng_finalize_init._entry_ptr.53, ptr @crng_finalize_init._entry_ptr.56, ptr @crng_initialize_primary._entry, ptr @crng_initialize_primary._entry_ptr, ptr @event_add_device_randomness, ptr @event_add_disk_randomness, ptr @event_add_input_randomness, ptr @event_class_add_device_randomness, ptr @event_class_add_disk_randomness, ptr @event_class_add_input_randomness, ptr @event_class_credit_entropy_bits, ptr @event_class_debit_entropy, ptr @event_class_prandom_u32, ptr @event_class_random__extract_entropy, ptr @event_class_random__get_random_bytes, ptr @event_class_random__mix_pool_bytes, ptr @event_class_urandom_read, ptr @event_credit_entropy_bits, ptr @event_debit_entropy, ptr @event_enter__getrandom, ptr @event_exit__getrandom, ptr @event_extract_entropy, ptr @event_get_random_bytes, ptr @event_get_random_bytes_arch, ptr @event_mix_pool_bytes, ptr @event_mix_pool_bytes_nolock, ptr @event_prandom_u32, ptr @event_urandom_read, ptr @urandom_read._entry, ptr @urandom_read._entry_ptr, ptr @str__random__trace_system_name, ptr @trace_event_fields_add_device_randomness, ptr @trace_event_type_funcs_add_device_randomness, ptr @print_fmt_add_device_randomness, ptr @trace_event_fields_random__mix_pool_bytes, ptr @trace_event_type_funcs_random__mix_pool_bytes, ptr @print_fmt_random__mix_pool_bytes, ptr @trace_event_fields_credit_entropy_bits, ptr @trace_event_type_funcs_credit_entropy_bits, ptr @print_fmt_credit_entropy_bits, ptr @trace_event_fields_debit_entropy, ptr @trace_event_type_funcs_debit_entropy, ptr @print_fmt_debit_entropy, ptr @trace_event_fields_add_input_randomness, ptr @trace_event_type_funcs_add_input_randomness, ptr @print_fmt_add_input_randomness, ptr @trace_event_fields_add_disk_randomness, ptr @trace_event_type_funcs_add_disk_randomness, ptr @print_fmt_add_disk_randomness, ptr @trace_event_fields_random__get_random_bytes, ptr @trace_event_type_funcs_random__get_random_bytes, ptr @print_fmt_random__get_random_bytes, ptr @trace_event_fields_random__extract_entropy, ptr @trace_event_type_funcs_random__extract_entropy, ptr @print_fmt_random__extract_entropy, ptr @trace_event_fields_urandom_read, ptr @trace_event_type_funcs_urandom_read, ptr @print_fmt_urandom_read, ptr @trace_event_fields_prandom_u32, ptr @trace_event_type_funcs_prandom_u32, ptr @print_fmt_prandom_u32, ptr @crng_init, ptr @input_pool, ptr @add_input_randomness.last_value, ptr @input_timer_state, ptr @get_random_bytes.previous, ptr @.str, ptr @crng_init_wait, ptr @random_ready_list_lock, ptr @random_ready_list, ptr @crng_need_final_init, ptr @crng_global_init_time, ptr @urandom_warning, ptr @unseeded_warning, ptr @random_fops, ptr @urandom_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @types__getrandom, ptr @args__getrandom, ptr @.str.4, ptr @get_random_u64.previous, ptr @.str.5, ptr @get_random_u32.previous, ptr @random_write_wakeup_bits, ptr @random_write_wait, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @crng_slow_load.lfsr, ptr @.str.32, ptr @primary_crng, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @input_pool_data, ptr @twist_table, ptr @crng_init_cnt, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @fasync, ptr @.str.45, ptr @.str.46, ptr @try_to_generate_entropy.__key, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @urandom_read.maxwarn, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @random_table, ptr @.str.72, ptr @.str.73, ptr @sysctl_poolsize, ptr @.str.74, ptr @.str.75, ptr @min_write_thresh, ptr @max_write_thresh, ptr @.str.76, ptr @random_min_urandom_seed, ptr @.str.77, ptr @sysctl_bootid, ptr @.str.78, ptr @proc_do_uuid.bootid_spinlock, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__random__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_add_device_randomness to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_add_device_randomness to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_add_device_randomness to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_add_device_randomness to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_random__mix_pool_bytes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_random__mix_pool_bytes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_random__mix_pool_bytes to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mix_pool_bytes to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mix_pool_bytes_nolock to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_credit_entropy_bits to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_credit_entropy_bits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_credit_entropy_bits to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_credit_entropy_bits to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_debit_entropy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_debit_entropy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_debit_entropy to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_debit_entropy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_add_input_randomness to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_add_input_randomness to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_add_input_randomness to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_add_input_randomness to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_add_disk_randomness to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_add_disk_randomness to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_add_disk_randomness to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_add_disk_randomness to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_random__get_random_bytes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_random__get_random_bytes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_random__get_random_bytes to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_get_random_bytes to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_get_random_bytes_arch to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_random__extract_entropy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_random__extract_entropy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_random__extract_entropy to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_extract_entropy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_urandom_read to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_urandom_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_urandom_read to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_urandom_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_prandom_u32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_prandom_u32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_prandom_u32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_prandom_u32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_pool to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_input_randomness.last_value to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_timer_state to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_random_bytes.previous to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_init_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_ready_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_ready_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_need_final_init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_global_init_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urandom_warning to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unseeded_warning to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urandom_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getrandom to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getrandom to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getrandom to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getrandom to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_random_u64.previous to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_random_u32.previous to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_write_wakeup_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_write_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_slow_load.lfsr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_crng to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_pool_data to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twist_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_init_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_fast_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @credit_entropy_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @account._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fasync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_warn_unseeded_randomness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_to_generate_entropy.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_finalize_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_finalize_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_finalize_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crng_initialize_primary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urandom_read.maxwarn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urandom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_table to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_poolsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_write_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_write_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_min_urandom_seed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_bootid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_do_uuid.bootid_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_getrandom = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_getrandom

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_add_device_randomness(ptr nocapture readnone %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_device_randomness, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %bytes, i32 noundef %IP) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mix_pool_bytes(ptr nocapture readnone %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mix_pool_bytes, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %bytes, i32 noundef %IP) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mix_pool_bytes_nolock(ptr nocapture readnone %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mix_pool_bytes_nolock, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %bytes, i32 noundef %IP) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_credit_entropy_bits(ptr nocapture readnone %__data, i32 noundef %bits, i32 noundef %entropy_count, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_credit_entropy_bits, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %bits, i32 noundef %entropy_count, i32 noundef %IP) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_debit_entropy(ptr nocapture readnone %__data, i32 noundef %debit_bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_debit_entropy, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %debit_bits) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_add_input_randomness(ptr nocapture readnone %__data, i32 noundef %input_bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_input_randomness, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %input_bits) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_add_disk_randomness(ptr nocapture readnone %__data, i32 noundef %dev, i32 noundef %input_bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_disk_randomness, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %dev, i32 noundef %input_bits) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_get_random_bytes(ptr nocapture readnone %__data, i32 noundef %nbytes, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_get_random_bytes, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %nbytes, i32 noundef %IP) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_get_random_bytes_arch(ptr nocapture readnone %__data, i32 noundef %nbytes, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_get_random_bytes_arch, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %nbytes, i32 noundef %IP) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_extract_entropy(ptr nocapture readnone %__data, i32 noundef %nbytes, i32 noundef %entropy_count, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_extract_entropy, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %nbytes, i32 noundef %entropy_count, i32 noundef %IP) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_urandom_read(ptr nocapture readnone %__data, i32 noundef %got_bits, i32 noundef %pool_left, i32 noundef %input_left) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_urandom_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %got_bits, i32 noundef %pool_left, i32 noundef %input_left) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_prandom_u32(ptr nocapture readnone %__data, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_prandom_u32, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, i32 noundef %ret) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_add_device_randomness(ptr noundef %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bytes6 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bytes6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bytes, ptr %bytes6, align 4
  %IP7 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %IP7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %IP, ptr %IP7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_add_device_randomness(ptr noundef %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bytes17 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bytes17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bytes, ptr %bytes17, align 4
  %IP18 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %IP18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %IP, ptr %IP18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_random__mix_pool_bytes(ptr noundef %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bytes6 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bytes6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bytes, ptr %bytes6, align 4
  %IP7 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %IP7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %IP, ptr %IP7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_random__mix_pool_bytes(ptr noundef %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bytes17 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bytes17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bytes, ptr %bytes17, align 4
  %IP18 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %IP18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %IP, ptr %IP18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_credit_entropy_bits(ptr noundef %__data, i32 noundef %bits, i32 noundef %entropy_count, i32 noundef %IP) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bits6 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bits6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bits, ptr %bits6, align 4
  %entropy_count7 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %entropy_count7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %entropy_count, ptr %entropy_count7, align 4
  %IP8 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %IP8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %IP, ptr %IP8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_credit_entropy_bits(ptr noundef %__data, i32 noundef %bits, i32 noundef %entropy_count, i32 noundef %IP) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bits17 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bits17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bits, ptr %bits17, align 4
  %entropy_count18 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %entropy_count18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %entropy_count, ptr %entropy_count18, align 4
  %IP19 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %IP19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %IP, ptr %IP19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_debit_entropy(ptr noundef %__data, i32 noundef %debit_bits) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %debit_bits6 = getelementptr inbounds %struct.trace_event_raw_debit_entropy, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %debit_bits6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %debit_bits, ptr %debit_bits6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_debit_entropy(ptr noundef %__data, i32 noundef %debit_bits) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debit_bits17 = getelementptr inbounds %struct.trace_event_raw_debit_entropy, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %debit_bits17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %debit_bits, ptr %debit_bits17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_add_input_randomness(ptr noundef %__data, i32 noundef %input_bits) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %input_bits6 = getelementptr inbounds %struct.trace_event_raw_add_input_randomness, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %input_bits6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %input_bits, ptr %input_bits6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_add_input_randomness(ptr noundef %__data, i32 noundef %input_bits) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %input_bits17 = getelementptr inbounds %struct.trace_event_raw_add_input_randomness, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %input_bits17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %input_bits, ptr %input_bits17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_add_disk_randomness(ptr noundef %__data, i32 noundef %dev, i32 noundef %input_bits) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev6 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dev, ptr %dev6, align 4
  %input_bits7 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %input_bits7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %input_bits, ptr %input_bits7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_add_disk_randomness(ptr noundef %__data, i32 noundef %dev, i32 noundef %input_bits) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dev17 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dev, ptr %dev17, align 4
  %input_bits18 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %input_bits18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %input_bits, ptr %input_bits18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_random__get_random_bytes(ptr noundef %__data, i32 noundef %nbytes, i32 noundef %IP) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %nbytes6 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %nbytes6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nbytes, ptr %nbytes6, align 4
  %IP7 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %IP7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %IP, ptr %IP7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_random__get_random_bytes(ptr noundef %__data, i32 noundef %nbytes, i32 noundef %IP) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %nbytes17 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %nbytes17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nbytes, ptr %nbytes17, align 4
  %IP18 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %IP18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %IP, ptr %IP18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_random__extract_entropy(ptr noundef %__data, i32 noundef %nbytes, i32 noundef %entropy_count, i32 noundef %IP) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %nbytes6 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %nbytes6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nbytes, ptr %nbytes6, align 4
  %entropy_count7 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %entropy_count7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %entropy_count, ptr %entropy_count7, align 4
  %IP8 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %IP8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %IP, ptr %IP8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_random__extract_entropy(ptr noundef %__data, i32 noundef %nbytes, i32 noundef %entropy_count, i32 noundef %IP) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %nbytes17 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %nbytes17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nbytes, ptr %nbytes17, align 4
  %entropy_count18 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %entropy_count18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %entropy_count, ptr %entropy_count18, align 4
  %IP19 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %IP19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %IP, ptr %IP19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_urandom_read(ptr noundef %__data, i32 noundef %got_bits, i32 noundef %pool_left, i32 noundef %input_left) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %got_bits6 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %got_bits6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %got_bits, ptr %got_bits6, align 4
  %pool_left7 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %pool_left7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pool_left, ptr %pool_left7, align 4
  %input_left8 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %input_left8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %input_left, ptr %input_left8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_urandom_read(ptr noundef %__data, i32 noundef %got_bits, i32 noundef %pool_left, i32 noundef %input_left) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %got_bits17 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %got_bits17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %got_bits, ptr %got_bits17, align 4
  %pool_left18 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %pool_left18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %pool_left, ptr %pool_left18, align 4
  %input_left19 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %input_left19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %input_left, ptr %input_left19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_prandom_u32(ptr noundef %__data, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !437

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !438

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ret6 = getelementptr inbounds %struct.trace_event_raw_prandom_u32, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %ret6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ret, ptr %ret6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_prandom_u32(ptr noundef %__data, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !439
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !427) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ret17 = getelementptr inbounds %struct.trace_event_raw_prandom_u32, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %ret17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ret, ptr %ret17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_add_device_randomness(ptr noundef %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %bytes to i64
  %conv4 = zext i32 %IP to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_random__mix_pool_bytes(ptr noundef %__data, i32 noundef %bytes, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %bytes to i64
  %conv4 = zext i32 %IP to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_credit_entropy_bits(ptr noundef %__data, i32 noundef %bits, i32 noundef %entropy_count, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %bits to i64
  %conv4 = zext i32 %entropy_count to i64
  %conv8 = zext i32 %IP to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_debit_entropy(ptr noundef %__data, i32 noundef %debit_bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %debit_bits to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_add_input_randomness(ptr noundef %__data, i32 noundef %input_bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %input_bits to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_add_disk_randomness(ptr noundef %__data, i32 noundef %dev, i32 noundef %input_bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %dev to i64
  %conv4 = zext i32 %input_bits to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_random__get_random_bytes(ptr noundef %__data, i32 noundef %nbytes, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %nbytes to i64
  %conv4 = zext i32 %IP to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_random__extract_entropy(ptr noundef %__data, i32 noundef %nbytes, i32 noundef %entropy_count, i32 noundef %IP) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %nbytes to i64
  %conv4 = zext i32 %entropy_count to i64
  %conv8 = zext i32 %IP to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_urandom_read(ptr noundef %__data, i32 noundef %got_bits, i32 noundef %pool_left, i32 noundef %input_left) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %got_bits to i64
  %conv4 = zext i32 %pool_left to i64
  %conv8 = zext i32 %input_left to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_prandom_u32(ptr noundef %__data, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %ret to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_trust_cpu(ptr noundef %arg) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool(ptr noundef %arg, ptr noundef nonnull @trust_cpu) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_device_randomness(ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  %time = alloca i32, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %xor = xor i32 %3, %cond
  %4 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xor, ptr %time, align 4
  %5 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %cond.end.if.end_crit_edge, label %land.lhs.true, !prof !437

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool3.not = icmp eq i32 %size, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @crng_slow_load(ptr noundef %buf, i32 noundef %size)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %6 = call ptr @llvm.returnaddress(i32 0)
  %7 = ptrtoint ptr %6 to i32
  call fastcc void @trace_add_device_randomness(i32 noundef %size, i32 noundef %7)
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @input_pool) #14
  %8 = load i16, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 2), align 2
  %conv.i = zext i16 %8 to i32
  %9 = load i16, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 1), align 4
  %conv1.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not49.i = icmp eq i32 %size, 0
  br i1 %tobool.not49.i, label %if.end.while.body.i58.preheader_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.body.i58.preheader_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i58.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %bytes.053.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %buf, %if.end.while.body.i_crit_edge ]
  %input_rotate.052.i = phi i32 [ %and28.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i, %if.end.while.body.i_crit_edge ]
  %i.051.i = phi i32 [ %and.i, %while.body.i.while.body.i_crit_edge ], [ %conv1.i, %if.end.while.body.i_crit_edge ]
  %nbytes.addr.050.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %size, %if.end.while.body.i_crit_edge ]
  %dec.i = add i32 %nbytes.addr.050.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %bytes.053.i, i32 1
  %10 = ptrtoint ptr %bytes.053.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bytes.053.i, align 1
  %conv2.i = zext i8 %11 to i32
  %or.i.i = call i32 @llvm.fshl.i32(i32 %conv2.i, i32 %conv2.i, i32 %input_rotate.052.i) #14
  %sub.i = add nuw nsw i32 %i.051.i, 127
  %and.i = and i32 %sub.i, 127
  %arrayidx.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %xor.i = xor i32 %or.i.i, %13
  %add.i = add nuw nsw i32 %i.051.i, 103
  %and3.i = and i32 %add.i, 127
  %arrayidx4.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and3.i
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %xor5.i = xor i32 %xor.i, %15
  %add6.i = add nuw nsw i32 %i.051.i, 75
  %and7.i = and i32 %add6.i, 127
  %arrayidx8.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and7.i
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %xor9.i = xor i32 %xor5.i, %17
  %add10.i = add nuw nsw i32 %i.051.i, 50
  %and11.i = and i32 %add10.i, 127
  %arrayidx12.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and11.i
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx12.i, align 4
  %xor13.i = xor i32 %xor9.i, %19
  %add14.i = add nuw nsw i32 %i.051.i, 24
  %and15.i = and i32 %add14.i, 127
  %arrayidx16.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and15.i
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16.i, align 4
  %xor17.i = xor i32 %xor13.i, %21
  %and19.i = and i32 %i.051.i, 127
  %arrayidx20.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and19.i
  %22 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx20.i, align 4
  %xor21.i = xor i32 %xor17.i, %23
  %shr.i = lshr i32 %xor21.i, 3
  %and22.i = and i32 %xor21.i, 7
  %arrayidx23.i = getelementptr [8 x i32], ptr @twist_table, i32 0, i32 %and22.i
  %24 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx23.i, align 4
  %xor24.i = xor i32 %shr.i, %25
  store i32 %xor24.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool26.not.i, i32 14, i32 7
  %add27.i = add nuw nsw i32 %cond.i, %input_rotate.052.i
  %and28.i = and i32 %add27.i, 31
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.body.i58.preheader_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.while.body.i58.preheader_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i58.preheader

while.body.i58.preheader:                         ; preds = %while.body.i.while.body.i58.preheader_crit_edge, %if.end.while.body.i58.preheader_crit_edge
  %input_rotate.052.i19.ph = phi i32 [ %conv.i, %if.end.while.body.i58.preheader_crit_edge ], [ %and28.i, %while.body.i.while.body.i58.preheader_crit_edge ]
  %i.051.i20.ph = phi i32 [ %conv1.i, %if.end.while.body.i58.preheader_crit_edge ], [ %and.i, %while.body.i.while.body.i58.preheader_crit_edge ]
  br label %while.body.i58

while.body.i58:                                   ; preds = %while.body.i58.while.body.i58_crit_edge, %while.body.i58.preheader
  %bytes.053.i18 = phi ptr [ %incdec.ptr.i23, %while.body.i58.while.body.i58_crit_edge ], [ %time, %while.body.i58.preheader ]
  %input_rotate.052.i19 = phi i32 [ %and28.i56, %while.body.i58.while.body.i58_crit_edge ], [ %input_rotate.052.i19.ph, %while.body.i58.preheader ]
  %i.051.i20 = phi i32 [ %and.i27, %while.body.i58.while.body.i58_crit_edge ], [ %i.051.i20.ph, %while.body.i58.preheader ]
  %nbytes.addr.050.i21 = phi i32 [ %dec.i22, %while.body.i58.while.body.i58_crit_edge ], [ 4, %while.body.i58.preheader ]
  %dec.i22 = add nsw i32 %nbytes.addr.050.i21, -1
  %incdec.ptr.i23 = getelementptr i8, ptr %bytes.053.i18, i32 1
  %26 = ptrtoint ptr %bytes.053.i18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bytes.053.i18, align 1
  %conv2.i24 = zext i8 %27 to i32
  %or.i.i25 = call i32 @llvm.fshl.i32(i32 %conv2.i24, i32 %conv2.i24, i32 %input_rotate.052.i19) #14
  %sub.i26 = add nuw nsw i32 %i.051.i20, 127
  %and.i27 = and i32 %sub.i26, 127
  %arrayidx.i28 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and.i27
  %28 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i28, align 4
  %xor.i29 = xor i32 %or.i.i25, %29
  %add.i30 = add nuw nsw i32 %i.051.i20, 103
  %and3.i31 = and i32 %add.i30, 127
  %arrayidx4.i32 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and3.i31
  %30 = ptrtoint ptr %arrayidx4.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i32, align 4
  %xor5.i33 = xor i32 %xor.i29, %31
  %add6.i34 = add nuw nsw i32 %i.051.i20, 75
  %and7.i35 = and i32 %add6.i34, 127
  %arrayidx8.i36 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and7.i35
  %32 = ptrtoint ptr %arrayidx8.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx8.i36, align 4
  %xor9.i37 = xor i32 %xor5.i33, %33
  %add10.i38 = add nuw nsw i32 %i.051.i20, 50
  %and11.i39 = and i32 %add10.i38, 127
  %arrayidx12.i40 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and11.i39
  %34 = ptrtoint ptr %arrayidx12.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx12.i40, align 4
  %xor13.i41 = xor i32 %xor9.i37, %35
  %add14.i42 = add nuw nsw i32 %i.051.i20, 24
  %and15.i43 = and i32 %add14.i42, 127
  %arrayidx16.i44 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and15.i43
  %36 = ptrtoint ptr %arrayidx16.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx16.i44, align 4
  %xor17.i45 = xor i32 %xor13.i41, %37
  %and19.i46 = and i32 %i.051.i20, 127
  %arrayidx20.i47 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and19.i46
  %38 = ptrtoint ptr %arrayidx20.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx20.i47, align 4
  %xor21.i48 = xor i32 %xor17.i45, %39
  %shr.i49 = lshr i32 %xor21.i48, 3
  %and22.i50 = and i32 %xor21.i48, 7
  %arrayidx23.i51 = getelementptr [8 x i32], ptr @twist_table, i32 0, i32 %and22.i50
  %40 = ptrtoint ptr %arrayidx23.i51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx23.i51, align 4
  %xor24.i52 = xor i32 %shr.i49, %41
  store i32 %xor24.i52, ptr %arrayidx.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool26.not.i53 = icmp eq i32 %and.i27, 0
  %cond.i54 = select i1 %tobool26.not.i53, i32 14, i32 7
  %add27.i55 = add nuw nsw i32 %cond.i54, %input_rotate.052.i19
  %and28.i56 = and i32 %add27.i55, 31
  %tobool.not.i57 = icmp eq i32 %dec.i22, 0
  br i1 %tobool.not.i57, label %_mix_pool_bytes.exit63, label %while.body.i58.while.body.i58_crit_edge

while.body.i58.while.body.i58_crit_edge:          ; preds = %while.body.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i58

_mix_pool_bytes.exit63:                           ; preds = %while.body.i58
  call void @__sanitizer_cov_trace_pc() #16
  %conv29.i61 = trunc i32 %and28.i56 to i16
  store i16 %conv29.i61, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 2), align 2
  %conv30.i62 = trunc i32 %and.i27 to i16
  store i16 %conv30.i62, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 1), align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @input_pool, i32 noundef %call9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crng_slow_load(ptr nocapture noundef readonly %cp, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !440
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end12, label %do.end12.thread

do.end12:                                         ; preds = %entry
  tail call void @trace_hardirqs_off() #14
  %call15 = tail call i32 @_raw_spin_trylock(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then26, label %do.end12.if.end51_crit_edge

do.end12.if.end51_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.end12.thread:                                  ; preds = %entry
  %call155 = tail call i32 @_raw_spin_trylock(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool16.not6 = icmp eq i32 %call155, 0
  br i1 %tobool16.not6, label %do.end12.thread.do.body28_crit_edge, label %do.end12.thread.if.end51_crit_edge

do.end12.thread.if.end51_crit_edge:               ; preds = %do.end12.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.end12.thread.do.body28_crit_edge:              ; preds = %do.end12.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

if.then26:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %do.end12.thread.do.body28_crit_edge
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !441
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !438

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !442
  br label %cleanup

if.end51:                                         ; preds = %do.end12.thread.if.end51_crit_edge, %do.end12.if.end51_crit_edge
  %2 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp52.not = icmp eq i32 %2, 0
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %0) #14
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %3 = tail call i32 @llvm.umax.i32(i32 %len, i32 32)
  %crng_slow_load.lfsr.promoted = load i8, ptr @crng_slow_load.lfsr, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end55
  %i.09 = phi i32 [ 0, %if.end55 ], [ %inc, %for.body.for.body_crit_edge ]
  %spec.select378 = phi i8 [ %crng_slow_load.lfsr.promoted, %if.end55 ], [ %add, %for.body.for.body_crit_edge ]
  %4 = lshr i8 %spec.select378, 1
  %5 = and i8 %spec.select378, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool65.not = icmp eq i8 %5, 0
  %6 = xor i8 %4, -31
  %spec.select3 = select i1 %tobool65.not, i8 %4, i8 %6
  %rem = and i32 %i.09, 31
  %arrayidx = getelementptr i8, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), i32 %rem
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %rem70 = urem i32 %i.09, %len
  %arrayidx71 = getelementptr i8, ptr %cp, i32 %rem70
  %9 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx71, align 1
  %xor741 = xor i8 %spec.select3, %8
  %xor782 = xor i8 %xor741, %10
  store i8 %xor782, ptr %arrayidx, align 1
  %or = tail call i8 @llvm.fshl.i8(i8 %8, i8 %8, i8 3)
  %add = add i8 %or, %spec.select3
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  store i8 %add, ptr @crng_slow_load.lfsr, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then54, %do.end43
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_add_device_randomness(i32 noundef %bytes, i32 noundef %IP) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_device_randomness, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_add_device_randomness, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !444
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_device_randomness, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %bytes, i32 noundef %IP) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !445
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !445
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_device_randomness, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_add_device_randomness.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_add_device_randomness.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 28, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_input_randomness(i32 noundef %type, i32 noundef %code, i32 noundef %value) #0 align 64 {
entry:
  %sample.i = alloca %struct.anon.118, align 4
  %c.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @add_input_randomness.last_value, align 1
  %conv = zext i8 %0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %value)
  %cmp = icmp eq i32 %conv, %value
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %conv2 = trunc i32 %value to i8
  store i8 %conv2, ptr @add_input_randomness.last_value, align 1
  %shl = shl i32 %type, 4
  %xor = xor i32 %shl, %code
  %shr = lshr i32 %code, 4
  %xor3 = xor i32 %xor, %shr
  %xor4 = xor i32 %xor3, %value
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sample.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %2 = ptrtoint ptr %sample.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %sample.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i) #14
  %3 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %c.i, align 4, !annotation !439
  %call.i = call i32 @read_current_timer(ptr noundef nonnull %c.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.add_timer_randomness.exit_crit_edge

if.end.add_timer_randomness.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %add_timer_randomness.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c.i, align 4
  br label %add_timer_randomness.exit

add_timer_randomness.exit:                        ; preds = %cond.false.i, %if.end.add_timer_randomness.exit_crit_edge
  %cond.i = phi i32 [ %5, %cond.false.i ], [ 0, %if.end.add_timer_randomness.exit_crit_edge ]
  %6 = getelementptr inbounds %struct.anon.118, ptr %sample.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.anon.118, ptr %sample.i, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %7, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xor4, ptr %6, align 4
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %sample.i, i32 noundef 12) #14
  %10 = load volatile i32, ptr @input_timer_state, align 4
  %sub.i = sub i32 %1, %10
  store volatile i32 %1, ptr @input_timer_state, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.timer_rand_state, ptr @input_timer_state, i32 0, i32 1), align 4
  %sub19.i = sub i32 %sub.i, %11
  store volatile i32 %sub.i, ptr getelementptr inbounds (%struct.timer_rand_state, ptr @input_timer_state, i32 0, i32 1), align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.timer_rand_state, ptr @input_timer_state, i32 0, i32 2), align 4
  %sub34.i = sub i32 %sub19.i, %12
  store volatile i32 %sub19.i, ptr getelementptr inbounds (%struct.timer_rand_state, ptr @input_timer_state, i32 0, i32 2), align 4
  %13 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #14
  %14 = call i32 @llvm.abs.i32(i32 %sub19.i, i1 false) #14
  %15 = call i32 @llvm.abs.i32(i32 %sub34.i, i1 false) #14
  %16 = call i32 @llvm.smin.i32(i32 %13, i32 %14) #14
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 %15) #14
  %shr.i = ashr i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool.not.i.i = icmp ult i32 %17, 2
  %18 = call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !448
  %sub.i.i = sub nuw nsw i32 32, %18
  %19 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 11) #14
  %20 = select i1 %tobool.not.i.i, i32 0, i32 %19
  call fastcc void @credit_entropy_bits(i32 noundef %20) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sample.i) #14
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr5 = ashr i32 %21, 3
  call fastcc void @trace_add_input_randomness(i32 noundef %shr5)
  br label %return

return:                                           ; preds = %add_timer_randomness.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_add_input_randomness(i32 noundef %input_bits) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_input_randomness, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_add_input_randomness, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !449
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_input_randomness, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %input_bits) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !450
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !450
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_input_randomness, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_add_input_randomness.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_add_input_randomness.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 112, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_interrupt_randomness(i32 noundef %irq) #0 align 64 {
entry:
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @irq_randomness to i32)
  %6 = inttoptr i32 %add to ptr
  %add.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %11 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call4 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  br label %if.then

cond.end:                                         ; preds = %entry
  %12 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %cond.end.if.then_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %cond.end.thread
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %reg_idx.i = getelementptr inbounds %struct.fast_pool, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load volatile i16, ptr %reg_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %15)
  %cmp1.i = icmp ugt i16 %15, 17
  %narrow.i = select i1 %cmp1.i, i16 0, i16 %15
  %spec.store.select.i = zext i16 %narrow.i to i32
  %inc.i = add nuw nsw i16 %narrow.i, 1
  %add.ptr.i = getelementptr i32, ptr %9, i32 %spec.store.select.i
  %16 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store volatile i16 %inc.i, ptr %reg_idx.i, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %cond.end.if.end_crit_edge
  %cycles.0 = phi i32 [ %13, %cond.end.if.end_crit_edge ], [ %18, %do.end.i ], [ 0, %if.then.if.end_crit_edge ]
  %xor6 = xor i32 %cycles.0, %irq
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %6, align 4
  %xor8 = xor i32 %xor6, %20
  store i32 %xor8, ptr %6, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11, align 4
  %xor12 = xor i32 %22, %10
  store i32 %xor12, ptr %arrayidx11, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %cond.false16, label %cond.true14

cond.true14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx15 = getelementptr [18 x i32], ptr %9, i32 0, i32 15
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15, align 4
  br label %cond.end17

cond.false16:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %25 = call ptr @llvm.returnaddress(i32 0)
  %26 = ptrtoint ptr %25 to i32
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.true14
  %cond18 = phi i32 [ %24, %cond.true14 ], [ %26, %cond.false16 ]
  %arrayidx20 = getelementptr [4 x i32], ptr %6, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx20, align 4
  %xor2290 = xor i32 %28, %cond18
  %arrayidx6.i = getelementptr [4 x i32], ptr %6, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx6.i, align 4
  %add.i91 = add i32 %xor12, %xor8
  %add7.i = add i32 %30, %xor2290
  %or.i.i = call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 6) #14
  %or.i84.i = call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 27) #14
  %xor.i = xor i32 %or.i84.i, %add.i91
  %xor9.i = xor i32 %add7.i, %or.i.i
  %add10.i = add i32 %xor9.i, %add.i91
  %add11.i = add i32 %xor.i, %add7.i
  %or.i85.i = call i32 @llvm.fshl.i32(i32 %xor9.i, i32 %xor9.i, i32 16) #14
  %or.i86.i = call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 14) #14
  %xor14.i = xor i32 %or.i86.i, %add10.i
  %xor15.i = xor i32 %or.i85.i, %add11.i
  %add16.i = add i32 %xor15.i, %add10.i
  %add17.i = add i32 %xor14.i, %add11.i
  %or.i87.i = call i32 @llvm.fshl.i32(i32 %xor15.i, i32 %xor15.i, i32 6) #14
  %or.i88.i = call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 27) #14
  %xor20.i = xor i32 %or.i88.i, %add16.i
  %xor21.i = xor i32 %or.i87.i, %add17.i
  %add22.i = add i32 %xor21.i, %add16.i
  %add23.i = add i32 %xor20.i, %add17.i
  %or.i89.i = call i32 @llvm.fshl.i32(i32 %xor21.i, i32 %xor21.i, i32 16) #14
  %or.i90.i = call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 14) #14
  %xor26.i = xor i32 %or.i90.i, %add22.i
  %xor27.i = xor i32 %or.i89.i, %add23.i
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add22.i, ptr %6, align 4
  %32 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %xor27.i, ptr %arrayidx11, align 4
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add23.i, ptr %arrayidx20, align 4
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %xor26.i, ptr %arrayidx6.i, align 4
  %count.i = getelementptr inbounds %struct.fast_pool, ptr %6, i32 0, i32 3
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %count.i, align 2
  %inc.i92 = add i8 %36, 1
  store i8 %inc.i92, ptr %count.i, align 2
  %37 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp29 = icmp eq i32 %37, 0
  br i1 %cmp29, label %if.then33, label %if.end44, !prof !438

if.then33:                                        ; preds = %cond.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %inc.i92)
  %cmp35 = icmp ugt i8 %inc.i92, 63
  br i1 %cmp35, label %land.lhs.true, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then33
  %call38 = call fastcc i32 @crng_fast_load(ptr noundef %6, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %land.lhs.true.cleanup_crit_edge, label %if.then41

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %count.i, align 2
  %last = getelementptr inbounds %struct.fast_pool, ptr %6, i32 0, i32 1
  %39 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %10, ptr %last, align 4
  br label %cleanup

if.end44:                                         ; preds = %cond.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %inc.i92)
  %cmp47 = icmp ult i8 %inc.i92, 64
  br i1 %cmp47, label %land.lhs.true49, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true49:                                  ; preds = %if.end44
  %last50 = getelementptr inbounds %struct.fast_pool, ptr %6, i32 0, i32 1
  %40 = ptrtoint ptr %last50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last50, align 4
  %add51 = sub i32 100, %10
  %sub = add i32 %add51, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp52 = icmp slt i32 %sub, 0
  br i1 %cmp52, label %land.lhs.true49.if.end55_crit_edge, label %land.lhs.true49.cleanup_crit_edge

land.lhs.true49.cleanup_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true49.if.end55_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true49.if.end55_crit_edge, %if.end44.if.end55_crit_edge
  %call.i = call i32 @_raw_spin_trylock(ptr noundef nonnull @input_pool) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %last60 = getelementptr inbounds %struct.fast_pool, ptr %6, i32 0, i32 1
  %42 = ptrtoint ptr %last60 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %10, ptr %last60, align 4
  call fastcc void @__mix_pool_bytes(ptr noundef %6, i32 noundef 16)
  call void @_raw_spin_unlock(ptr noundef nonnull @input_pool) #14
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %count.i, align 2
  call fastcc void @credit_entropy_bits(i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end55.cleanup_crit_edge, %land.lhs.true49.cleanup_crit_edge, %if.then41, %land.lhs.true.cleanup_crit_edge, %if.then33.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crng_fast_load(ptr nocapture noundef readonly %cp, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !440
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end11, label %do.end11.thread

do.end11:                                         ; preds = %entry
  tail call void @trace_hardirqs_off() #14
  %call14 = tail call i32 @_raw_spin_trylock(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then25, label %do.end11.if.end50_crit_edge

do.end11.if.end50_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

do.end11.thread:                                  ; preds = %entry
  %call1483 = tail call i32 @_raw_spin_trylock(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1483)
  %tobool15.not84 = icmp eq i32 %call1483, 0
  br i1 %tobool15.not84, label %do.end11.thread.do.body27_crit_edge, label %do.end11.thread.if.end50_crit_edge

do.end11.thread.if.end50_crit_edge:               ; preds = %do.end11.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

do.end11.thread.do.body27_crit_edge:              ; preds = %do.end11.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27

if.then25:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %do.end11.thread.do.body27_crit_edge
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !441
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool35.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool35.not, label %if.then39, label %do.body27.do.end42_crit_edge, !prof !438

do.body27.do.end42_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27.do.end42_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !442
  br label %cleanup

if.end50:                                         ; preds = %do.end11.thread.if.end50_crit_edge, %do.end11.if.end50_crit_edge
  %2 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp51.not = icmp eq i32 %2, 0
  br i1 %cmp51.not, label %while.cond.preheader, label %if.then53

while.cond.preheader:                             ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp55.not86 = icmp eq i32 %len, 0
  br i1 %cmp55.not86, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %crng_init_cnt.promoted = load i32, ptr @crng_init_cnt, align 4
  %smax = call i32 @llvm.smax.i32(i32 %crng_init_cnt.promoted, i32 64)
  %3 = sub i32 %smax, %crng_init_cnt.promoted
  br label %land.rhs

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %0) #14
  br label %cleanup

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %cp.addr.090 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %cp, %land.rhs.preheader ]
  %len.addr.089 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ %len, %land.rhs.preheader ]
  %ret.088 = phi i32 [ %inc62, %while.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %inc8587 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ %crng_init_cnt.promoted, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.088, i32 %3)
  %exitcond.not = icmp eq i32 %ret.088, %3
  br i1 %exitcond.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %4 = ptrtoint ptr %cp.addr.090 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cp.addr.090, align 1
  %rem = srem i32 %inc8587, 32
  %arrayidx = getelementptr i8, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), i32 %rem
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %xor81 = xor i8 %7, %5
  store i8 %xor81, ptr %arrayidx, align 1
  %incdec.ptr = getelementptr i8, ptr %cp.addr.090, i32 1
  %inc = add nsw i32 %inc8587, 1
  store i32 %inc, ptr @crng_init_cnt, align 4
  %dec = add i32 %len.addr.089, -1
  %inc62 = add nuw i32 %ret.088, 1
  %cmp55.not = icmp eq i32 %dec, 0
  br i1 %cmp55.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc62, %while.body.while.end_crit_edge ], [ %3, %land.rhs.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %0) #14
  %8 = load i32, ptr @crng_init_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %8)
  %cmp63 = icmp sgt i32 %8, 63
  br i1 %cmp63, label %if.then65, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then65:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @invalidate_batched_entropy()
  store i32 1, ptr @crng_init, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %while.end.cleanup_crit_edge, %if.then53, %do.end42
  %retval.0 = phi i32 [ 0, %if.then53 ], [ 0, %do.end42 ], [ %ret.0.lcssa, %if.then65 ], [ %ret.0.lcssa, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mix_pool_bytes(ptr nocapture noundef readonly %in, i32 noundef %nbytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_mix_pool_bytes_nolock(i32 noundef %nbytes, i32 noundef %1)
  %2 = load i16, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 2), align 2
  %conv.i = zext i16 %2 to i32
  %3 = load i16, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 1), align 4
  %conv1.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %tobool.not49.i = icmp eq i32 %nbytes, 0
  br i1 %tobool.not49.i, label %entry._mix_pool_bytes.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry._mix_pool_bytes.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %_mix_pool_bytes.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %bytes.053.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %in, %entry.while.body.i_crit_edge ]
  %input_rotate.052.i = phi i32 [ %and28.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i, %entry.while.body.i_crit_edge ]
  %i.051.i = phi i32 [ %and.i, %while.body.i.while.body.i_crit_edge ], [ %conv1.i, %entry.while.body.i_crit_edge ]
  %nbytes.addr.050.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %nbytes, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %nbytes.addr.050.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %bytes.053.i, i32 1
  %4 = ptrtoint ptr %bytes.053.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bytes.053.i, align 1
  %conv2.i = zext i8 %5 to i32
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %conv2.i, i32 %conv2.i, i32 %input_rotate.052.i) #14
  %sub.i = add nuw nsw i32 %i.051.i, 127
  %and.i = and i32 %sub.i, 127
  %arrayidx.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %xor.i = xor i32 %or.i.i, %7
  %add.i = add nuw nsw i32 %i.051.i, 103
  %and3.i = and i32 %add.i, 127
  %arrayidx4.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %xor5.i = xor i32 %xor.i, %9
  %add6.i = add nuw nsw i32 %i.051.i, 75
  %and7.i = and i32 %add6.i, 127
  %arrayidx8.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and7.i
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8.i, align 4
  %xor9.i = xor i32 %xor5.i, %11
  %add10.i = add nuw nsw i32 %i.051.i, 50
  %and11.i = and i32 %add10.i, 127
  %arrayidx12.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and11.i
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12.i, align 4
  %xor13.i = xor i32 %xor9.i, %13
  %add14.i = add nuw nsw i32 %i.051.i, 24
  %and15.i = and i32 %add14.i, 127
  %arrayidx16.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and15.i
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16.i, align 4
  %xor17.i = xor i32 %xor13.i, %15
  %and19.i = and i32 %i.051.i, 127
  %arrayidx20.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and19.i
  %16 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20.i, align 4
  %xor21.i = xor i32 %xor17.i, %17
  %shr.i = lshr i32 %xor21.i, 3
  %and22.i = and i32 %xor21.i, 7
  %arrayidx23.i = getelementptr [8 x i32], ptr @twist_table, i32 0, i32 %and22.i
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23.i, align 4
  %xor24.i = xor i32 %shr.i, %19
  store i32 %xor24.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool26.not.i, i32 14, i32 7
  %add27.i = add nuw nsw i32 %cond.i, %input_rotate.052.i
  %and28.i = and i32 %add27.i, 31
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i._mix_pool_bytes.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i._mix_pool_bytes.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_mix_pool_bytes.exit

_mix_pool_bytes.exit:                             ; preds = %while.body.i._mix_pool_bytes.exit_crit_edge, %entry._mix_pool_bytes.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %conv1.i, %entry._mix_pool_bytes.exit_crit_edge ], [ %and.i, %while.body.i._mix_pool_bytes.exit_crit_edge ]
  %input_rotate.0.lcssa.i = phi i32 [ %conv.i, %entry._mix_pool_bytes.exit_crit_edge ], [ %and28.i, %while.body.i._mix_pool_bytes.exit_crit_edge ]
  %conv29.i = trunc i32 %input_rotate.0.lcssa.i to i16
  store i16 %conv29.i, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 2), align 2
  %conv30.i = trunc i32 %i.0.lcssa.i to i16
  store i16 %conv30.i, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @credit_entropy_bits(i32 noundef %nbits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %nbits, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbits)
  %tobool.not = icmp eq i32 %nbits, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %retry.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

retry.preheader:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp = icmp slt i32 %shl, 0
  br label %retry

retry:                                            ; preds = %__cmpxchg.exit.retry_crit_edge, %retry.preheader
  %0 = load volatile i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  br i1 %cmp, label %if.then4, label %retry.do.body5_crit_edge

retry.do.body5_crit_edge:                         ; preds = %retry
  br label %do.body5

if.then4:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %0, %shl
  br label %if.end18

do.body5:                                         ; preds = %do.body5.do.body5_crit_edge, %retry.do.body5_crit_edge
  %pnfrac.0 = phi i32 [ %sub11, %do.body5.do.body5_crit_edge ], [ %shl, %retry.do.body5_crit_edge ]
  %entropy_count.0 = phi i32 [ %add10, %do.body5.do.body5_crit_edge ], [ %0, %retry.do.body5_crit_edge ]
  %1 = tail call i32 @llvm.smin.i32(i32 %pnfrac.0, i32 16384)
  %sub = sub i32 32768, %entropy_count.0
  %mul = mul i32 %1, 3
  %mul9 = mul i32 %mul, %sub
  %shr = lshr i32 %mul9, 17
  %add10 = add i32 %shr, %entropy_count.0
  %sub11 = sub i32 %pnfrac.0, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %add10)
  %cmp13 = icmp slt i32 %add10, 32766
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %tobool14 = icmp ne i32 %sub11, 0
  %2 = select i1 %cmp13, i1 %tobool14, i1 false
  br i1 %2, label %do.body5.do.body5_crit_edge, label %do.body5.if.end18_crit_edge, !prof !438

do.body5.if.end18_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

do.body5.do.body5_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

if.end18:                                         ; preds = %do.body5.if.end18_crit_edge, %if.then4
  %entropy_count.1 = phi i32 [ %add, %if.then4 ], [ %add10, %do.body5.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entropy_count.1)
  %cmp19 = icmp slt i32 %entropy_count.1, 0
  br i1 %cmp19, label %do.end35, label %if.else55, !prof !438

do.end35:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 692, i32 noundef 9, ptr noundef null) #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %entropy_count.1) #17
  br label %if.end59

if.else55:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %3 = tail call i32 @llvm.smin.i32(i32 %entropy_count.1, i32 32768)
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %do.end35
  %entropy_count.2 = phi i32 [ 0, %do.end35 ], [ %3, %if.else55 ]
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !451
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), i32 1, i32 3, i32 1) #14
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end59
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), i32 %0, i32 %entropy_count.2) #14, !srcloc !452
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !453
  %cmp79.not = icmp eq i32 %asmresult1.i, %0
  br i1 %cmp79.not, label %if.end81, label %__cmpxchg.exit.retry_crit_edge

__cmpxchg.exit.retry_crit_edge:                   ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

if.end81:                                         ; preds = %__cmpxchg.exit
  %shr82 = ashr i32 %entropy_count.2, 3
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = ptrtoint ptr %5 to i32
  tail call fastcc void @trace_credit_entropy_bits(i32 noundef %nbits, i32 noundef %shr82, i32 noundef %6)
  %7 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp84 = icmp slt i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %entropy_count.2)
  %cmp85 = icmp sgt i32 %entropy_count.2, 1023
  %or.cond = select i1 %cmp84, i1 %cmp85, i1 false
  br i1 %or.cond, label %if.then86, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @crng_reseed()
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end81.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_disk_randomness(ptr noundef readonly %disk) #0 align 64 {
entry:
  %sample.i = alloca %struct.anon.118, align 4
  %c.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %disk, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %random = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 18
  %0 = ptrtoint ptr %random to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %random, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disk, align 8
  %shl.i = shl i32 %3, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 1
  %4 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %5
  %add = add i32 %or.i, 256
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sample.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %sample.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sample.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i) #14
  %8 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %c.i, align 4, !annotation !439
  %call.i = call i32 @read_current_timer(ptr noundef nonnull %c.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.add_timer_randomness.exit_crit_edge

if.end.add_timer_randomness.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %add_timer_randomness.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c.i, align 4
  br label %add_timer_randomness.exit

add_timer_randomness.exit:                        ; preds = %cond.false.i, %if.end.add_timer_randomness.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ 0, %if.end.add_timer_randomness.exit_crit_edge ]
  %11 = getelementptr inbounds %struct.anon.118, ptr %sample.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.anon.118, ptr %sample.i, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #14
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %12, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %11, align 4
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %sample.i, i32 noundef 12) #14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %1, align 4
  %sub.i = sub i32 %6, %16
  store volatile i32 %6, ptr %1, align 4
  %last_delta.i = getelementptr inbounds %struct.timer_rand_state, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %last_delta.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %last_delta.i, align 4
  %sub19.i = sub i32 %sub.i, %18
  store volatile i32 %sub.i, ptr %last_delta.i, align 4
  %last_delta2.i = getelementptr inbounds %struct.timer_rand_state, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %last_delta2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %last_delta2.i, align 4
  %sub34.i = sub i32 %sub19.i, %20
  store volatile i32 %sub19.i, ptr %last_delta2.i, align 4
  %21 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #14
  %22 = call i32 @llvm.abs.i32(i32 %sub19.i, i1 false) #14
  %23 = call i32 @llvm.abs.i32(i32 %sub34.i, i1 false) #14
  %24 = call i32 @llvm.smin.i32(i32 %21, i32 %22) #14
  %25 = call i32 @llvm.smin.i32(i32 %24, i32 %23) #14
  %shr.i = ashr i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %tobool.not.i.i = icmp ult i32 %25, 2
  %26 = call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !448
  %sub.i.i = sub nuw nsw i32 32, %26
  %27 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 11) #14
  %28 = select i1 %tobool.not.i.i, i32 0, i32 %27
  call fastcc void @credit_entropy_bits(i32 noundef %28) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sample.i) #14
  %29 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %disk, align 8
  %shl.i8 = shl i32 %30, 20
  %31 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %first_minor.i, align 4
  %or.i10 = or i32 %shl.i8, %32
  %33 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr = ashr i32 %33, 3
  call fastcc void @trace_add_disk_randomness(i32 noundef %or.i10, i32 noundef %shr)
  br label %return

return:                                           ; preds = %add_timer_randomness.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_add_disk_randomness(i32 noundef %dev, i32 noundef %input_bits) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_disk_randomness, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_add_disk_randomness, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !454
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_disk_randomness, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %dev, i32 noundef %input_bits) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !455
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !455
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_add_disk_randomness, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_add_disk_randomness.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_add_disk_randomness.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 131, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_random_bytes(ptr noundef %buf, i32 noundef %nbytes) #0 align 64 {
entry:
  %tmp.i = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp sgt i32 %1, 1
  br i1 %cmp.i, label %entry._warn_unseeded_randomness.exit_crit_edge, label %lor.lhs.false.i, !prof !437

entry._warn_unseeded_randomness.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = load volatile ptr, ptr @get_random_bytes.previous, align 4
  %cmp3.i = icmp eq ptr %2, %0
  br i1 %cmp3.i, label %lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge, label %do.body8.i

lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

do.body8.i:                                       ; preds = %lor.lhs.false.i
  store volatile ptr %0, ptr @get_random_bytes.previous, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @unseeded_warning, ptr noundef nonnull @__func__._warn_unseeded_randomness) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %do.body8.i._warn_unseeded_randomness.exit_crit_edge, label %do.end17.i

do.body8.i._warn_unseeded_randomness.exit_crit_edge: ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

do.end17.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @crng_init, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.get_random_bytes, ptr noundef %0, i32 noundef %3) #17
  br label %_warn_unseeded_randomness.exit

_warn_unseeded_randomness.exit:                   ; preds = %do.end17.i, %do.body8.i._warn_unseeded_randomness.exit_crit_edge, %lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge, %entry._warn_unseeded_randomness.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp.i) #14
  %4 = call ptr @memset(ptr %tmp.i, i32 255, i32 64)
  %5 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_get_random_bytes(i32 noundef %nbytes, i32 noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %nbytes)
  %cmp29.i = icmp sgt i32 %nbytes, 63
  br i1 %cmp29.i, label %_warn_unseeded_randomness.exit.while.body.i_crit_edge, label %_warn_unseeded_randomness.exit.while.end.i_crit_edge

_warn_unseeded_randomness.exit.while.end.i_crit_edge: ; preds = %_warn_unseeded_randomness.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

_warn_unseeded_randomness.exit.while.body.i_crit_edge: ; preds = %_warn_unseeded_randomness.exit
  br label %while.body.i

while.body.i:                                     ; preds = %extract_crng.exit.i.while.body.i_crit_edge, %_warn_unseeded_randomness.exit.while.body.i_crit_edge
  %nbytes.addr.031.i = phi i32 [ %sub.i, %extract_crng.exit.i.while.body.i_crit_edge ], [ %nbytes, %_warn_unseeded_randomness.exit.while.body.i_crit_edge ]
  %buf.addr.030.i = phi ptr [ %add.ptr.i, %extract_crng.exit.i.while.body.i_crit_edge ], [ %buf, %_warn_unseeded_randomness.exit.while.body.i_crit_edge ]
  %6 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.i.i = icmp sgt i32 %6, 1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %while.body.i.do.body14.i.i.i_crit_edge, !prof !437

while.body.i.do.body14.i.i.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i.i

do.end.i.i.i:                                     ; preds = %while.body.i
  %7 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %8 = load volatile i32, ptr @crng_global_init_time, align 4
  %sub.i.i.i = sub i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp7.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp7.i.i.i, label %do.end.i.i.i.if.then10.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i.i.i.if.then10.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i.i
  %add.i.i.i = add i32 %7, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub8.i.i.i = sub i32 %add.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i.i)
  %cmp9.i.i.i = icmp slt i32 %sub8.i.i.i, 0
  br i1 %cmp9.i.i.i, label %lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i.i

lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge, %do.end.i.i.i.if.then10.i.i.i_crit_edge
  tail call fastcc void @crng_reseed() #14
  br label %do.body14.i.i.i

do.body14.i.i.i:                                  ; preds = %if.then10.i.i.i, %lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge, %while.body.i.do.body14.i.i.i_crit_edge
  %call17.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  tail call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef %buf.addr.030.i, i32 noundef 20) #14
  %10 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp24.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp24.i.i.i, label %if.then26.i.i.i, label %do.body14.i.i.i.extract_crng.exit.i_crit_edge

do.body14.i.i.i.extract_crng.exit.i_crit_edge:    ; preds = %do.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng.exit.i

if.then26.i.i.i:                                  ; preds = %do.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %inc.i.i.i = add i32 %11, 1
  store i32 %inc.i.i.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %extract_crng.exit.i

extract_crng.exit.i:                              ; preds = %if.then26.i.i.i, %do.body14.i.i.i.extract_crng.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %call17.i.i.i) #14
  %add.ptr.i = getelementptr i8, ptr %buf.addr.030.i, i32 64
  %sub.i = add nsw i32 %nbytes.addr.031.i, -64
  %cmp.i1 = icmp sgt i32 %nbytes.addr.031.i, 127
  br i1 %cmp.i1, label %extract_crng.exit.i.while.body.i_crit_edge, label %extract_crng.exit.i.while.end.i_crit_edge

extract_crng.exit.i.while.end.i_crit_edge:        ; preds = %extract_crng.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

extract_crng.exit.i.while.body.i_crit_edge:       ; preds = %extract_crng.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %extract_crng.exit.i.while.end.i_crit_edge, %_warn_unseeded_randomness.exit.while.end.i_crit_edge
  %buf.addr.0.lcssa.i = phi ptr [ %buf, %_warn_unseeded_randomness.exit.while.end.i_crit_edge ], [ %add.ptr.i, %extract_crng.exit.i.while.end.i_crit_edge ]
  %nbytes.addr.0.lcssa.i = phi i32 [ %nbytes, %_warn_unseeded_randomness.exit.while.end.i_crit_edge ], [ %sub.i, %extract_crng.exit.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.0.lcssa.i)
  %cmp1.i = icmp sgt i32 %nbytes.addr.0.lcssa.i, 0
  br i1 %cmp1.i, label %if.then.i, label %while.end.i._get_random_bytes.exit_crit_edge

while.end.i._get_random_bytes.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_get_random_bytes.exit

if.then.i:                                        ; preds = %while.end.i
  %12 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i13.i = icmp sgt i32 %12, 1
  br i1 %cmp.i.i13.i, label %do.end.i.i16.i, label %if.then.i.do.body14.i.i24.i_crit_edge, !prof !437

if.then.i.do.body14.i.i24.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i24.i

do.end.i.i16.i:                                   ; preds = %if.then.i
  %13 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %14 = load volatile i32, ptr @crng_global_init_time, align 4
  %sub.i.i14.i = sub i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i14.i)
  %cmp7.i.i15.i = icmp slt i32 %sub.i.i14.i, 0
  br i1 %cmp7.i.i15.i, label %do.end.i.i16.i.if.then10.i.i21.i_crit_edge, label %lor.lhs.false.i.i20.i

do.end.i.i16.i.if.then10.i.i21.i_crit_edge:       ; preds = %do.end.i.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i21.i

lor.lhs.false.i.i20.i:                            ; preds = %do.end.i.i16.i
  %add.i.i17.i = add i32 %13, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub8.i.i18.i = sub i32 %add.i.i17.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i18.i)
  %cmp9.i.i19.i = icmp slt i32 %sub8.i.i18.i, 0
  br i1 %cmp9.i.i19.i, label %lor.lhs.false.i.i20.i.if.then10.i.i21.i_crit_edge, label %lor.lhs.false.i.i20.i.do.body14.i.i24.i_crit_edge

lor.lhs.false.i.i20.i.do.body14.i.i24.i_crit_edge: ; preds = %lor.lhs.false.i.i20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i24.i

lor.lhs.false.i.i20.i.if.then10.i.i21.i_crit_edge: ; preds = %lor.lhs.false.i.i20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i21.i

if.then10.i.i21.i:                                ; preds = %lor.lhs.false.i.i20.i.if.then10.i.i21.i_crit_edge, %do.end.i.i16.i.if.then10.i.i21.i_crit_edge
  tail call fastcc void @crng_reseed() #14
  br label %do.body14.i.i24.i

do.body14.i.i24.i:                                ; preds = %if.then10.i.i21.i, %lor.lhs.false.i.i20.i.do.body14.i.i24.i_crit_edge, %if.then.i.do.body14.i.i24.i_crit_edge
  %call17.i.i22.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef nonnull %tmp.i, i32 noundef 20) #14
  %16 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24.i.i23.i = icmp eq i32 %16, 0
  br i1 %cmp24.i.i23.i, label %if.then26.i.i26.i, label %do.body14.i.i24.i.extract_crng.exit27.i_crit_edge

do.body14.i.i24.i.extract_crng.exit27.i_crit_edge: ; preds = %do.body14.i.i24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng.exit27.i

if.then26.i.i26.i:                                ; preds = %do.body14.i.i24.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %inc.i.i25.i = add i32 %17, 1
  store i32 %inc.i.i25.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %extract_crng.exit27.i

extract_crng.exit27.i:                            ; preds = %if.then26.i.i26.i, %do.body14.i.i24.i.extract_crng.exit27.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %call17.i.i22.i) #14
  %18 = call ptr @memcpy(ptr %buf.addr.0.lcssa.i, ptr %tmp.i, i32 %nbytes.addr.0.lcssa.i)
  br label %_get_random_bytes.exit

_get_random_bytes.exit:                           ; preds = %extract_crng.exit27.i, %while.end.i._get_random_bytes.exit_crit_edge
  %.sink.i = phi i32 [ %nbytes.addr.0.lcssa.i, %extract_crng.exit27.i ], [ 64, %while.end.i._get_random_bytes.exit_crit_edge ]
  call fastcc void @crng_backtrack_protect(ptr noundef nonnull %tmp.i, i32 noundef %.sink.i) #14
  %19 = call ptr @memset(ptr %tmp.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i) #14, !srcloc !456
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_random_bytes() #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %entry.return_crit_edge, label %entry.do.body_crit_edge, !prof !437

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body:                                          ; preds = %cleanup66.thread.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1545) #14
  %1 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp12 = icmp sgt i32 %1, 1
  br i1 %cmp12, label %do.body.return_crit_edge, label %if.then28

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then28:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call118 = call i32 @prepare_to_wait_event(ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %3 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp31119 = icmp sgt i32 %3, 1
  br i1 %cmp31119, label %if.end60.thread, label %if.then28.if.end54_crit_edge

if.then28.if.end54_crit_edge:                     ; preds = %if.then28
  br label %if.end54

if.end60.thread:                                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  call void @finish_wait(ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.then63

if.end54:                                         ; preds = %cleanup.if.end54_crit_edge, %if.then28.if.end54_crit_edge
  %__ret29.1121 = phi i32 [ %__ret29.1, %cleanup.if.end54_crit_edge ], [ 100, %if.then28.if.end54_crit_edge ]
  %call120 = phi i32 [ %call, %cleanup.if.end54_crit_edge ], [ %call118, %if.then28.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool55.not = icmp eq i32 %call120, 0
  br i1 %tobool55.not, label %cleanup, label %if.end60.thread104

if.end60.thread104:                               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.then63

cleanup:                                          ; preds = %if.end54
  %call58 = call i32 @schedule_timeout(i32 noundef %__ret29.1121) #14
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %4 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp31 = icmp sgt i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool41.not = icmp eq i32 %call58, 0
  %5 = select i1 %cmp31, i1 %tobool41.not, i1 false
  %__ret29.1 = select i1 %5, i32 1, i32 %call58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.1)
  %tobool47.not = icmp eq i32 %__ret29.1, 0
  %6 = select i1 %cmp31, i1 true, i1 %tobool47.not
  br i1 %6, label %if.end60, label %cleanup.if.end54_crit_edge

cleanup.if.end54_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.end60:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.1)
  %tobool62.not = icmp eq i32 %__ret29.1, 0
  br i1 %tobool62.not, label %cleanup66.thread, label %if.end60.if.then63_crit_edge

if.end60.if.then63_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then63

if.then63:                                        ; preds = %if.end60.if.then63_crit_edge, %if.end60.thread104, %if.end60.thread
  %__ret.1101 = phi i32 [ %call120, %if.end60.thread104 ], [ 100, %if.end60.thread ], [ %__ret29.1, %if.end60.if.then63_crit_edge ]
  %7 = call i32 @llvm.smin.i32(i32 %__ret.1101, i32 0)
  br label %return

cleanup66.thread:                                 ; preds = %if.end60
  call fastcc void @try_to_generate_entropy()
  %8 = load i32, ptr @crng_init, align 4
  %cmp70 = icmp slt i32 %8, 2
  br i1 %cmp70, label %cleanup66.thread.do.body_crit_edge, label %cleanup66.thread.return_crit_edge

cleanup66.thread.return_crit_edge:                ; preds = %cleanup66.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

cleanup66.thread.do.body_crit_edge:               ; preds = %cleanup66.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

return:                                           ; preds = %cleanup66.thread.return_crit_edge, %if.then63, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 0, %entry.return_crit_edge ], [ %7, %if.then63 ], [ 0, %cleanup66.thread.return_crit_edge ], [ 0, %do.body.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @try_to_generate_entropy() unnamed_addr #0 align 64 {
entry:
  %stack = alloca %struct.anon.120, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c23 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %stack) #14
  %0 = getelementptr inbounds i8, ptr %stack, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %2 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %5 = ptrtoint ptr %stack to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %stack, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2) #14
  %6 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %c2, align 4, !annotation !439
  %call4 = call i32 @read_current_timer(ptr noundef nonnull %c2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cond.false7, label %cond.end.cond.end8_crit_edge

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %c2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c2, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.end.cond.end8_crit_edge
  %cond9 = phi i32 [ %8, %cond.false7 ], [ 0, %cond.end.cond.end8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %cond9)
  %cmp = icmp eq i32 %cond, %cond9
  br i1 %cmp, label %cond.end8.cleanup_crit_edge, label %do.body

cond.end8.cleanup_crit_edge:                      ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %cond.end8
  %timer = getelementptr inbounds %struct.anon.120, ptr %stack, i32 0, i32 1
  call void @init_timer_on_stack_key(ptr noundef %timer, ptr noundef nonnull @entropy_timer, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @try_to_generate_entropy.__key) #14
  %9 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1036 = icmp slt i32 %9, 2
  br i1 %cmp1036, label %while.body.lr.ph, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body
  %pprev.i.i = getelementptr inbounds %struct.anon.120, ptr %stack, i32 0, i32 1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cond.end29.while.body_crit_edge, %while.body.lr.ph
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.not, label %if.then18, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 1
  %call20 = call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %while.body.if.end21_crit_edge
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %stack, i32 noundef 4)
  call void @schedule() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c23) #14
  %13 = ptrtoint ptr %c23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %c23, align 4, !annotation !439
  %call25 = call i32 @read_current_timer(ptr noundef nonnull %c23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cond.false28, label %if.end21.cond.end29_crit_edge

if.end21.cond.end29_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end29

cond.false28:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %c23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c23, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %if.end21.cond.end29_crit_edge
  %cond30 = phi i32 [ %15, %cond.false28 ], [ 0, %if.end21.cond.end29_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c23) #14
  %16 = ptrtoint ptr %stack to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond30, ptr %stack, align 4
  %17 = load i32, ptr @crng_init, align 4
  %cmp10 = icmp slt i32 %17, 2
  br i1 %cmp10, label %cond.end29.while.body_crit_edge, label %cond.end29.while.end_crit_edge

cond.end29.while.end_crit_edge:                   ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cond.end29.while.body_crit_edge:                  ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cond.end29.while.end_crit_edge, %do.body.while.end_crit_edge
  %call33 = call i32 @del_timer_sync(ptr noundef %timer) #14
  call void @destroy_timer_on_stack(ptr noundef %timer) #14
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %stack, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %cond.end8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %stack) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rng_is_initialized() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_random_ready_callback(ptr noundef %rdy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !437

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %owner2 = getelementptr inbounds %struct.random_ready_callback, ptr %rdy, i32 0, i32 2
  %1 = ptrtoint ptr %owner2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner2, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %2) #14
  br i1 %call, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @random_ready_list_lock) #14
  %3 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp11 = icmp sgt i32 %3, 1
  br i1 %cmp11, label %do.body5.out_crit_edge, label %if.end20, !prof !437

do.body5.out_crit_edge:                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end20:                                         ; preds = %do.body5
  %4 = load ptr, ptr @random_ready_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rdy, ptr noundef nonnull @random_ready_list, ptr noundef %4) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rdy, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %rdy to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %rdy, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %rdy, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @random_ready_list, ptr %prev3.i.i, align 4
  store volatile ptr %rdy, ptr @random_ready_list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end20.out_crit_edge, %do.body5.out_crit_edge
  %owner.0 = phi ptr [ %2, %do.body5.out_crit_edge ], [ null, %if.end20.out_crit_edge ], [ null, %if.end.i.i ]
  %err.0 = phi i32 [ -114, %do.body5.out_crit_edge ], [ 0, %if.end20.out_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @random_ready_list_lock, i32 noundef %call8) #14
  tail call void @module_put(ptr noundef %owner.0) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -114, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @del_random_ready_callback(ptr noundef %rdy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @random_ready_list_lock) #14
  %0 = ptrtoint ptr %rdy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rdy, align 4
  %cmp.i.not = icmp eq ptr %1, %rdy
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rdy) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rdy, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %rdy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdy, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %rdy to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %rdy, ptr %rdy, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %rdy, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rdy, ptr %prev.i3.i, align 4
  %owner7 = getelementptr inbounds %struct.random_ready_callback, ptr %rdy, i32 0, i32 2
  %10 = ptrtoint ptr %owner7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner7, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %owner.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %11, %list_del_init.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @random_ready_list_lock, i32 noundef %call2) #14
  tail call void @module_put(ptr noundef %owner.0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_random_bytes_arch(ptr nocapture readnone %buf, i32 noundef %nbytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_get_random_bytes_arch(i32 noundef %nbytes, i32 noundef %1)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_get_random_bytes_arch(i32 noundef %nbytes, i32 noundef %IP) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_get_random_bytes_arch, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_get_random_bytes_arch, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !457
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_get_random_bytes_arch, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %nbytes, i32 noundef %IP) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !458
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !458
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_get_random_bytes_arch, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_get_random_bytes_arch.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_get_random_bytes_arch.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 161, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rand_initialize() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @init_std_data() #18
  %.b4 = load i1, ptr @crng_need_final_init, align 1
  br i1 %.b4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @crng_finalize_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @crng_initialize_primary() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  store i32 %0, ptr @crng_global_init_time, align 4
  %1 = load i32, ptr @ratelimit_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store i32 0, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @urandom_warning, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @unseeded_warning, i32 0, i32 1), align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_std_data() unnamed_addr #3 section ".init.text" align 64 {
entry:
  %now = alloca i64, align 8
  %rv = alloca i32, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now) #14
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #14
  %0 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i, ptr %now, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rv) #14
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %now, i32 noundef 8)
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 512, %entry ], [ %sub, %cond.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %1 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call3 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.false, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 0, %for.body.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %4 = ptrtoint ptr %rv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %rv, align 4
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %rv, i32 noundef 4)
  %sub = add nsw i32 %i.06, -4
  %cmp = icmp ugt i32 %i.06, 4
  br i1 %cmp, label %cond.end.for.body_crit_edge, label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 110
  %9 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsproxy.i, align 4
  %uts_ns.i = getelementptr inbounds %struct.nsproxy, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %uts_ns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uts_ns.i, align 4
  call fastcc void @mix_pool_bytes(ptr noundef %12, i32 noundef 390)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rv) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crng_finalize_init() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @crng_need_final_init, align 1
  br label %if.end14

if.end:                                           ; preds = %entry
  tail call fastcc void @invalidate_batched_entropy()
  store i32 2, ptr @crng_init, align 4
  store i1 false, ptr @crng_need_final_init, align 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @random_ready_list_lock) #14
  %1 = load ptr, ptr @random_ready_list, align 4
  %cmp11.not26.i = icmp eq ptr %1, @random_ready_list
  br i1 %cmp11.not26.i, label %if.end.process_random_ready_list.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.process_random_ready_list.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_random_ready_list.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %rdy.027.i = phi ptr [ %tmp.0.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %rdy.027.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %rdy.027.i, align 4
  %owner13.i = getelementptr inbounds %struct.random_ready_callback, ptr %rdy.027.i, i32 0, i32 2
  %3 = ptrtoint ptr %owner13.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner13.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rdy.027.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %rdy.027.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %rdy.027.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdy.027.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %11 = ptrtoint ptr %rdy.027.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %rdy.027.i, ptr %rdy.027.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %rdy.027.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rdy.027.i, ptr %prev.i3.i.i, align 4
  %func.i = getelementptr inbounds %struct.random_ready_callback, ptr %rdy.027.i, i32 0, i32 1
  %13 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func.i, align 4
  tail call void %14(ptr noundef %rdy.027.i) #14
  tail call void @module_put(ptr noundef %4) #14
  %cmp11.not.i = icmp eq ptr %tmp.0.i, @random_ready_list
  br i1 %cmp11.not.i, label %list_del_init.exit.i.process_random_ready_list.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

list_del_init.exit.i.process_random_ready_list.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %process_random_ready_list.exit

process_random_ready_list.exit:                   ; preds = %list_del_init.exit.i.process_random_ready_list.exit_crit_edge, %if.end.process_random_ready_list.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @random_ready_list_lock, i32 noundef %call3.i) #14
  tail call void @__wake_up(ptr noundef nonnull @crng_init_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @kill_fasync(ptr noundef nonnull @fasync, i32 noundef 29, i32 noundef 1) #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #17
  %15 = load i32, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @unseeded_warning, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  br i1 %tobool1.not, label %process_random_ready_list.exit.if.end7_crit_edge, label %do.end4

process_random_ready_list.exit.if.end7_crit_edge: ; preds = %process_random_ready_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

do.end4:                                          ; preds = %process_random_ready_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %15) #17
  store i32 0, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @unseeded_warning, i32 0, i32 4), align 4
  br label %if.end7

if.end7:                                          ; preds = %do.end4, %process_random_ready_list.exit.if.end7_crit_edge
  %16 = load i32, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @urandom_warning, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %do.end11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %16) #17
  store i32 0, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @urandom_warning, i32 0, i32 4), align 4
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.end7.if.end14_crit_edge, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crng_initialize_primary() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_extract_entropy(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), i32 noundef 48)
  %call1 = tail call fastcc zeroext i1 @crng_init_try_arch_early() #18
  br i1 %call1, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, ptr @trust_cpu, align 1, !range !459
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %1 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @invalidate_batched_entropy()
  store i32 2, ptr @crng_init, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub4 = add i32 %2, -30001
  store i32 %sub4, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rand_initialize_disk(ptr nocapture noundef writeonly %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -30000, ptr %call7.i.i, align 8
  %random = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 18
  %2 = ptrtoint ptr %random to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %random, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wait_for_random_bytes()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call fastcc i32 @urandom_read_nowarn(ptr noundef %buf, i32 noundef %nbytes)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @write_pool(ptr noundef %buffer, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit14_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit14_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit14

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit14_crit_edge, label %land.lhs.true.i12

land.lhs.true.i.poll_wait.exit14_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit14

land.lhs.true.i12:                                ; preds = %land.lhs.true.i
  tail call void %1(ptr noundef %file, ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %wait) #14
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %wait, align 4
  %tobool1.not.i11 = icmp eq ptr %.pr, null
  br i1 %tobool1.not.i11, label %land.lhs.true.i12.poll_wait.exit14_crit_edge, label %if.then.i13

land.lhs.true.i12.poll_wait.exit14_crit_edge:     ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit14

if.then.i13:                                      ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %.pr(ptr noundef %file, ptr noundef nonnull @random_write_wait, ptr noundef nonnull %wait) #14
  br label %poll_wait.exit14

poll_wait.exit14:                                 ; preds = %if.then.i13, %land.lhs.true.i12.poll_wait.exit14_crit_edge, %land.lhs.true.i.poll_wait.exit14_crit_edge, %entry.poll_wait.exit14_crit_edge
  %3 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  %spec.select = select i1 %cmp, i32 65, i32 0, !prof !437
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr = ashr i32 %4, 3
  %5 = load i32, ptr @random_write_wakeup_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp2 = icmp slt i32 %shr, %5
  %or4 = or i32 %spec.select, 260
  %mask.1 = select i1 %cmp2, i32 %or4, i32 %spec.select
  ret i32 %mask.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_ioctl(ptr nocapture noundef readnone %f, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147200512, label %sw.bb
    i32 1074024961, label %sw.bb3
    i32 1074287107, label %sw.bb21
    i32 20996, label %entry.sw.bb63_crit_edge
    i32 20998, label %entry.sw.bb63_crit_edge134
    i32 20999, label %sw.bb90
  ]

entry.sw.bb63_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb63

entry.sw.bb63_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb63

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr = ashr i32 %2, 3
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1829) #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !460
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  %6 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %shr, i32 -1226833921) #14, !srcloc !463
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #14, !srcloc !461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call4, label %if.end6, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %sw.bb3
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1835) #14
  %7 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i118 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i118 to ptr
  %cpu_domain.i.i119 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i119) #7, !srcloc !460
  %and.i120 = and i32 %9, -13
  %or.i121 = or i32 %and.i120, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i121) #14, !srcloc !461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !464
  %asmresult = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool17.not = icmp eq i32 %asmresult, 0
  br i1 %tobool17.not, label %if.end19, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %asmresult15 = extractvalue { i32, i32 } %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult15)
  %cmp.i = icmp slt i32 %asmresult15, 0
  br i1 %cmp.i, label %if.end19.cleanup_crit_edge, label %if.end.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %11 = tail call i32 @llvm.umin.i32(i32 %asmresult15, i32 4096) #14
  tail call fastcc void @credit_entropy_bits(i32 noundef %11) #14
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %call22 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call22, label %if.end24, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %sw.bb21
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1841) #14
  %incdec.ptr = getelementptr i32, ptr %0, i32 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i122 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i122 to ptr
  %cpu_domain.i.i123 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i123) #7, !srcloc !460
  %and.i124 = and i32 %14, -13
  %or.i125 = or i32 %and.i124, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i125) #14, !srcloc !461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !465
  %asmresult34 = extractvalue { i32, i32 } %15, 0
  %asmresult35 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #14, !srcloc !461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult34)
  %tobool37.not = icmp eq i32 %asmresult34, 0
  br i1 %tobool37.not, label %if.end39, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult35)
  %cmp = icmp slt i32 %asmresult35, 0
  br i1 %cmp, label %if.end39.cleanup_crit_edge, label %if.end41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41:                                         ; preds = %if.end39
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1845) #14
  %16 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i126 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i126 to ptr
  %cpu_domain.i.i127 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i127) #7, !srcloc !460
  %and.i128 = and i32 %18, -13
  %or.i129 = or i32 %and.i128, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i129) #14, !srcloc !461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %incdec.ptr, i32 -1226833921) #14, !srcloc !466
  %asmresult52 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #14, !srcloc !461
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult52)
  %tobool55.not = icmp eq i32 %asmresult52, 0
  br i1 %tobool55.not, label %if.end57, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end57:                                         ; preds = %if.end41
  %asmresult53 = extractvalue { i32, i32 } %19, 1
  %incdec.ptr45 = getelementptr i32, ptr %0, i32 2
  %call58 = tail call fastcc i32 @write_pool(ptr noundef %incdec.ptr45, i32 noundef %asmresult53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.cleanup_crit_edge, label %credit_entropy_bits_safe.exit133

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

credit_entropy_bits_safe.exit133:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %20 = tail call i32 @llvm.umin.i32(i32 %asmresult35, i32 4096) #14
  tail call fastcc void @credit_entropy_bits(i32 noundef %20) #14
  br label %cleanup

sw.bb63:                                          ; preds = %entry.sw.bb63_crit_edge, %entry.sw.bb63_crit_edge134
  %call64 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call64, label %if.end66, label %sw.bb63.cleanup_crit_edge

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end66:                                         ; preds = %sw.bb63
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !467
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3)) #14, !srcloc !468
  %asmresult.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !469
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool86.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool86.not, label %if.end66.cleanup_crit_edge, label %land.lhs.true

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end66
  %22 = load i32, ptr @random_write_wakeup_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool87.not = icmp eq i32 %22, 0
  br i1 %tobool87.not, label %land.lhs.true.cleanup_crit_edge, label %if.then88

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then88:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__wake_up(ptr noundef nonnull @random_write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @kill_fasync(ptr noundef nonnull @fasync, i32 noundef 29, i32 noundef 2) #14
  br label %cleanup

sw.bb90:                                          ; preds = %entry
  %call91 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call91, label %if.end93, label %sw.bb90.cleanup_crit_edge

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end93:                                         ; preds = %sw.bb90
  %23 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp94 = icmp slt i32 %23, 2
  br i1 %cmp94, label %if.end93.cleanup_crit_edge, label %if.end96

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end96:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @crng_reseed()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %24, -1
  store volatile i32 %sub, ptr @crng_global_init_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.end93.cleanup_crit_edge, %sw.bb90.cleanup_crit_edge, %if.then88, %land.lhs.true.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %sw.bb63.cleanup_crit_edge, %credit_entropy_bits_safe.exit133, %if.end57.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %if.end.i, %if.end19.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end96 ], [ 0, %credit_entropy_bits_safe.exit133 ], [ %., %sw.bb ], [ -1, %sw.bb3.cleanup_crit_edge ], [ -14, %if.end6.cleanup_crit_edge ], [ -1, %sw.bb21.cleanup_crit_edge ], [ -14, %if.end24.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ -14, %if.end41.cleanup_crit_edge ], [ %call58, %if.end57.cleanup_crit_edge ], [ -1, %sw.bb63.cleanup_crit_edge ], [ 0, %if.then88 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ], [ -1, %sw.bb90.cleanup_crit_edge ], [ -61, %if.end93.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_fasync(i32 noundef %fd, ptr noundef %filp, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %on, ptr noundef nonnull @fasync) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @urandom_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %entry.if.end7_crit_edge, label %land.lhs.true, !prof !437

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @urandom_read.maxwarn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr @urandom_read.maxwarn, align 4
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @urandom_warning, ptr noundef nonnull @__func__.urandom_read) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %do.end

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %2 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %comm, i32 noundef %nbytes) #17
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call fastcc i32 @urandom_read_nowarn(ptr noundef %buf, i32 noundef %nbytes)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getrandom(i32 noundef %buf, i32 noundef %count, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %flags)
  %tobool.not.i = icmp ugt i32 %flags, 7
  %and1.i = and i32 %flags, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and1.i)
  %cmp.i = icmp eq i32 %and1.i, 6
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %entry.__do_sys_getrandom.exit_crit_edge, label %if.end3.i

entry.__do_sys_getrandom.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__do_sys_getrandom.exit

if.end3.i:                                        ; preds = %entry
  %1 = tail call i32 @llvm.umin.i32(i32 %count, i32 2147483647) #14
  %and7.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %if.end3.i.if.end26.i_crit_edge

if.end3.i.if.end26.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %2 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp9.i = icmp sgt i32 %2, 1
  br i1 %cmp9.i, label %land.lhs.true.i.if.end26.i_crit_edge, label %if.then12.i, !prof !437

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %and13.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then12.i.__do_sys_getrandom.exit_crit_edge

if.then12.i.__do_sys_getrandom.exit_crit_edge:    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__do_sys_getrandom.exit

if.end16.i:                                       ; preds = %if.then12.i
  %call.i = tail call i32 @wait_for_random_bytes() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end26.i_crit_edge, label %if.end16.i.__do_sys_getrandom.exit_crit_edge, !prof !437

if.end16.i.__do_sys_getrandom.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__do_sys_getrandom.exit

if.end16.i.if.end26.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end16.i.if.end26.i_crit_edge, %land.lhs.true.i.if.end26.i_crit_edge, %if.end3.i.if.end26.i_crit_edge
  %call27.i = tail call fastcc i32 @urandom_read_nowarn(ptr noundef %0, i32 noundef %1) #14
  br label %__do_sys_getrandom.exit

__do_sys_getrandom.exit:                          ; preds = %if.end26.i, %if.end16.i.__do_sys_getrandom.exit_crit_edge, %if.then12.i.__do_sys_getrandom.exit_crit_edge, %entry.__do_sys_getrandom.exit_crit_edge
  %retval.0.i = phi i32 [ %call27.i, %if.end26.i ], [ -22, %entry.__do_sys_getrandom.exit_crit_edge ], [ -11, %if.then12.i.__do_sys_getrandom.exit_crit_edge ], [ %call.i, %if.end16.i.__do_sys_getrandom.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @random_sysctls_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.71, ptr noundef nonnull @random_table, ptr noundef nonnull @.str.72) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @get_random_u64() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp sgt i32 %1, 1
  br i1 %cmp.i, label %entry._warn_unseeded_randomness.exit_crit_edge, label %lor.lhs.false.i, !prof !437

entry._warn_unseeded_randomness.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = load volatile ptr, ptr @get_random_u64.previous, align 4
  %cmp3.i = icmp eq ptr %2, %0
  br i1 %cmp3.i, label %lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge, label %do.body8.i

lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

do.body8.i:                                       ; preds = %lor.lhs.false.i
  store volatile ptr %0, ptr @get_random_u64.previous, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @unseeded_warning, ptr noundef nonnull @__func__._warn_unseeded_randomness) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %do.body8.i._warn_unseeded_randomness.exit_crit_edge, label %do.end17.i

do.body8.i._warn_unseeded_randomness.exit_crit_edge: ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

do.end17.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @crng_init, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.get_random_u64, ptr noundef %0, i32 noundef %3) #17
  br label %_warn_unseeded_randomness.exit

_warn_unseeded_randomness.exit:                   ; preds = %do.end17.i, %do.body8.i._warn_unseeded_randomness.exit_crit_edge, %lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge, %entry._warn_unseeded_randomness.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @batched_entropy_u64 to i32)
  %10 = inttoptr i32 %add to ptr
  %batch_lock = getelementptr inbounds %struct.batched_entropy, ptr %10, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %batch_lock) #14
  %position = getelementptr inbounds %struct.batched_entropy, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %position, align 8
  %rem = and i32 %12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %_warn_unseeded_randomness.exit.if.end_crit_edge

_warn_unseeded_randomness.exit.if.end_crit_edge:  ; preds = %_warn_unseeded_randomness.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %_warn_unseeded_randomness.exit
  %13 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp sgt i32 %13, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.do.body14.i.i_crit_edge, !prof !437

if.then.do.body14.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i

do.end.i.i:                                       ; preds = %if.then
  %14 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %15 = load volatile i32, ptr @crng_global_init_time, align 4
  %sub.i.i = sub i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp7.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp7.i.i, label %do.end.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.i.if.then10.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i

lor.lhs.false.i.i:                                ; preds = %do.end.i.i
  %add.i.i = add i32 %14, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub8.i.i = sub i32 %add.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp9.i.i = icmp slt i32 %sub8.i.i, 0
  br i1 %cmp9.i.i, label %lor.lhs.false.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false.i.i.do.body14.i.i_crit_edge

lor.lhs.false.i.i.do.body14.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i

lor.lhs.false.i.i.if.then10.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then10.i.i_crit_edge, %do.end.i.i.if.then10.i.i_crit_edge
  tail call fastcc void @crng_reseed() #14
  br label %do.body14.i.i

do.body14.i.i:                                    ; preds = %if.then10.i.i, %lor.lhs.false.i.i.do.body14.i.i_crit_edge, %if.then.do.body14.i.i_crit_edge
  %call17.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  tail call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef %10, i32 noundef 20) #14
  %17 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24.i.i = icmp eq i32 %17, 0
  br i1 %cmp24.i.i, label %if.then26.i.i, label %do.body14.i.i.extract_crng.exit_crit_edge

do.body14.i.i.extract_crng.exit_crit_edge:        ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng.exit

if.then26.i.i:                                    ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %extract_crng.exit

extract_crng.exit:                                ; preds = %if.then26.i.i, %do.body14.i.i.extract_crng.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %call17.i.i) #14
  %19 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %position, align 8
  br label %if.end

if.end:                                           ; preds = %extract_crng.exit, %_warn_unseeded_randomness.exit.if.end_crit_edge
  %20 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %position, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %position, align 8
  %arrayidx15 = getelementptr [8 x i64], ptr %10, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %batch_lock, i32 noundef %call6) #14
  ret i64 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_random_u32() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp sgt i32 %1, 1
  br i1 %cmp.i, label %entry._warn_unseeded_randomness.exit_crit_edge, label %lor.lhs.false.i, !prof !437

entry._warn_unseeded_randomness.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = load volatile ptr, ptr @get_random_u32.previous, align 4
  %cmp3.i = icmp eq ptr %2, %0
  br i1 %cmp3.i, label %lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge, label %do.body8.i

lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

do.body8.i:                                       ; preds = %lor.lhs.false.i
  store volatile ptr %0, ptr @get_random_u32.previous, align 4
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @unseeded_warning, ptr noundef nonnull @__func__._warn_unseeded_randomness) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %do.body8.i._warn_unseeded_randomness.exit_crit_edge, label %do.end17.i

do.body8.i._warn_unseeded_randomness.exit_crit_edge: ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_warn_unseeded_randomness.exit

do.end17.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @crng_init, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.get_random_u32, ptr noundef %0, i32 noundef %3) #17
  br label %_warn_unseeded_randomness.exit

_warn_unseeded_randomness.exit:                   ; preds = %do.end17.i, %do.body8.i._warn_unseeded_randomness.exit_crit_edge, %lor.lhs.false.i._warn_unseeded_randomness.exit_crit_edge, %entry._warn_unseeded_randomness.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @batched_entropy_u32 to i32)
  %10 = inttoptr i32 %add to ptr
  %batch_lock = getelementptr inbounds %struct.batched_entropy, ptr %10, i32 0, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %batch_lock) #14
  %position = getelementptr inbounds %struct.batched_entropy, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %position, align 8
  %rem = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %_warn_unseeded_randomness.exit.if.end_crit_edge

_warn_unseeded_randomness.exit.if.end_crit_edge:  ; preds = %_warn_unseeded_randomness.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %_warn_unseeded_randomness.exit
  %13 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp sgt i32 %13, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.do.body14.i.i_crit_edge, !prof !437

if.then.do.body14.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i

do.end.i.i:                                       ; preds = %if.then
  %14 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %15 = load volatile i32, ptr @crng_global_init_time, align 4
  %sub.i.i = sub i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp7.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp7.i.i, label %do.end.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.i.if.then10.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i

lor.lhs.false.i.i:                                ; preds = %do.end.i.i
  %add.i.i = add i32 %14, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub8.i.i = sub i32 %add.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp9.i.i = icmp slt i32 %sub8.i.i, 0
  br i1 %cmp9.i.i, label %lor.lhs.false.i.i.if.then10.i.i_crit_edge, label %lor.lhs.false.i.i.do.body14.i.i_crit_edge

lor.lhs.false.i.i.do.body14.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i

lor.lhs.false.i.i.if.then10.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then10.i.i_crit_edge, %do.end.i.i.if.then10.i.i_crit_edge
  tail call fastcc void @crng_reseed() #14
  br label %do.body14.i.i

do.body14.i.i:                                    ; preds = %if.then10.i.i, %lor.lhs.false.i.i.do.body14.i.i_crit_edge, %if.then.do.body14.i.i_crit_edge
  %call17.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  tail call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef %10, i32 noundef 20) #14
  %17 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24.i.i = icmp eq i32 %17, 0
  br i1 %cmp24.i.i, label %if.then26.i.i, label %do.body14.i.i.extract_crng.exit_crit_edge

do.body14.i.i.extract_crng.exit_crit_edge:        ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng.exit

if.then26.i.i:                                    ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %extract_crng.exit

extract_crng.exit:                                ; preds = %if.then26.i.i, %do.body14.i.i.extract_crng.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %call17.i.i) #14
  %19 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %position, align 8
  br label %if.end

if.end:                                           ; preds = %extract_crng.exit, %_warn_unseeded_randomness.exit.if.end_crit_edge
  %20 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %position, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %position, align 8
  %arrayidx15 = getelementptr [16 x i32], ptr %10, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %batch_lock, i32 noundef %call6) #14
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @randomize_page(i32 noundef %start, i32 noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %add = add i32 %start, 4095
  %and1 = and i32 %add, -4096
  %sub.neg = sub i32 %start, %and1
  %sub2 = select i1 %cmp, i32 0, i32 %sub.neg
  %range.addr.0 = add i32 %sub2, %range
  %sub5 = xor i32 %range.addr.0, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %sub5)
  %cmp6 = icmp ugt i32 %and1, %sub5
  %notlhs = sub i32 -4096, %start
  %sub8 = or i32 %notlhs, 4095
  %range.addr.1 = select i1 %cmp6, i32 %sub8, i32 %range.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %range.addr.1)
  %cmp10 = icmp ult i32 %range.addr.1, 4096
  br i1 %cmp10, label %entry.return_crit_edge, label %if.end12

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %shr = lshr i32 %range.addr.1, 12
  %call.i = tail call i32 @get_random_u32() #14
  %rem = urem i32 %call.i, %shr
  %shl = shl nuw i32 %rem, 12
  %add13 = add i32 %shl, %and1
  br label %return

return:                                           ; preds = %if.end12, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add13, %if.end12 ], [ %and1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_hwgenerator_randomness(ptr nocapture noundef readonly %buffer, i32 noundef %count, i32 noundef %entropy) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge, !prof !438

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @crng_fast_load(ptr noundef %buffer, i32 noundef %count)
  tail call fastcc void @mix_pool_bytes(ptr noundef %buffer, i32 noundef %call)
  %sub = sub i32 %count, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool2.not = icmp eq i32 %sub, 0
  br i1 %tobool2.not, label %if.then.return_crit_edge, label %cleanup

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

cleanup:                                          ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call
  %1 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %cleanup.return_crit_edge, label %cleanup.if.end5_crit_edge

cleanup.if.end5_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end5:                                          ; preds = %cleanup.if.end5_crit_edge, %entry.if.end5_crit_edge
  %count.addr.0 = phi i32 [ %sub, %cleanup.if.end5_crit_edge ], [ %count, %entry.if.end5_crit_edge ]
  %buffer.addr.0 = phi ptr [ %add.ptr, %cleanup.if.end5_crit_edge ], [ %buffer, %entry.if.end5_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 2219) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %if.end5.if.end61_crit_edge, label %lor.lhs.false10

if.end5.if.end61_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

lor.lhs.false10:                                  ; preds = %if.end5
  %call11 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %call11, label %lor.lhs.false10.if.end61_crit_edge, label %lor.rhs

lor.lhs.false10.if.end61_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

lor.rhs:                                          ; preds = %lor.lhs.false10
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr = ashr i32 %3, 3
  %4 = load i32, ptr @random_write_wakeup_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %4)
  %cmp12.not = icmp sgt i32 %shr, %4
  br i1 %cmp12.not, label %if.then24, label %lor.rhs.if.end61_crit_edge

lor.rhs.if.end61_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then24:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call2693 = call i32 @prepare_to_wait_event(ptr noundef nonnull @random_write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %tobool28.not94 = icmp eq ptr %6, null
  br i1 %tobool28.not94, label %if.then24.for.end_crit_edge, label %if.then24.lor.lhs.false29_crit_edge

if.then24.lor.lhs.false29_crit_edge:              ; preds = %if.then24
  br label %lor.lhs.false29

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

lor.lhs.false29:                                  ; preds = %cleanup57.lor.lhs.false29_crit_edge, %if.then24.lor.lhs.false29_crit_edge
  %call2696 = phi i32 [ %call26, %cleanup57.lor.lhs.false29_crit_edge ], [ %call2693, %if.then24.lor.lhs.false29_crit_edge ]
  %__ret25.095 = phi i32 [ %call56, %cleanup57.lor.lhs.false29_crit_edge ], [ 30000, %if.then24.lor.lhs.false29_crit_edge ]
  %call30 = call zeroext i1 @kthread_should_stop() #14
  br i1 %call30, label %lor.lhs.false29.for.end_crit_edge, label %lor.end34

lor.lhs.false29.for.end_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

lor.end34:                                        ; preds = %lor.lhs.false29
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr32 = ashr i32 %7, 3
  %8 = load i32, ptr @random_write_wakeup_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr32, i32 %8)
  %cmp33 = icmp sle i32 %shr32, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.095)
  %tobool45.not = icmp eq i32 %__ret25.095, 0
  %or.cond = select i1 %cmp33, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %lor.end34.for.end_crit_edge, label %if.end52

lor.end34.for.end_crit_edge:                      ; preds = %lor.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end52:                                         ; preds = %lor.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2696)
  %tobool53.not = icmp eq i32 %call2696, 0
  br i1 %tobool53.not, label %cleanup57, label %if.end52.__out_crit_edge

if.end52.__out_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup57:                                        ; preds = %if.end52
  %call56 = call i32 @schedule_timeout(i32 noundef %__ret25.095) #14
  %call26 = call i32 @prepare_to_wait_event(ptr noundef nonnull @random_write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %tobool28.not = icmp eq ptr %9, null
  br i1 %tobool28.not, label %cleanup57.for.end_crit_edge, label %cleanup57.lor.lhs.false29_crit_edge

cleanup57.lor.lhs.false29_crit_edge:              ; preds = %cleanup57
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false29

cleanup57.for.end_crit_edge:                      ; preds = %cleanup57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup57.for.end_crit_edge, %lor.end34.for.end_crit_edge, %lor.lhs.false29.for.end_crit_edge, %if.then24.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @random_write_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end52.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end61

if.end61:                                         ; preds = %__out, %lor.rhs.if.end61_crit_edge, %lor.lhs.false10.if.end61_crit_edge, %if.end5.if.end61_crit_edge
  call fastcc void @mix_pool_bytes(ptr noundef %buffer.addr.0, i32 noundef %count.addr.0)
  call fastcc void @credit_entropy_bits(i32 noundef %entropy)
  br label %return

return:                                           ; preds = %if.end61, %cleanup.return_crit_edge, %if.then.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mix_pool_bytes(ptr nocapture noundef readonly %in, i32 noundef %nbytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_mix_pool_bytes(i32 noundef %nbytes, i32 noundef %1)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @input_pool) #14
  %2 = load i16, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 2), align 2
  %conv.i = zext i16 %2 to i32
  %3 = load i16, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 1), align 4
  %conv1.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %tobool.not49.i = icmp eq i32 %nbytes, 0
  br i1 %tobool.not49.i, label %entry._mix_pool_bytes.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry._mix_pool_bytes.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %_mix_pool_bytes.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %bytes.053.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %in, %entry.while.body.i_crit_edge ]
  %input_rotate.052.i = phi i32 [ %and28.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i, %entry.while.body.i_crit_edge ]
  %i.051.i = phi i32 [ %and.i, %while.body.i.while.body.i_crit_edge ], [ %conv1.i, %entry.while.body.i_crit_edge ]
  %nbytes.addr.050.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %nbytes, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %nbytes.addr.050.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %bytes.053.i, i32 1
  %4 = ptrtoint ptr %bytes.053.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bytes.053.i, align 1
  %conv2.i = zext i8 %5 to i32
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %conv2.i, i32 %conv2.i, i32 %input_rotate.052.i) #14
  %sub.i = add nuw nsw i32 %i.051.i, 127
  %and.i = and i32 %sub.i, 127
  %arrayidx.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %xor.i = xor i32 %or.i.i, %7
  %add.i = add nuw nsw i32 %i.051.i, 103
  %and3.i = and i32 %add.i, 127
  %arrayidx4.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %xor5.i = xor i32 %xor.i, %9
  %add6.i = add nuw nsw i32 %i.051.i, 75
  %and7.i = and i32 %add6.i, 127
  %arrayidx8.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and7.i
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8.i, align 4
  %xor9.i = xor i32 %xor5.i, %11
  %add10.i = add nuw nsw i32 %i.051.i, 50
  %and11.i = and i32 %add10.i, 127
  %arrayidx12.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and11.i
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12.i, align 4
  %xor13.i = xor i32 %xor9.i, %13
  %add14.i = add nuw nsw i32 %i.051.i, 24
  %and15.i = and i32 %add14.i, 127
  %arrayidx16.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and15.i
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx16.i, align 4
  %xor17.i = xor i32 %xor13.i, %15
  %and19.i = and i32 %i.051.i, 127
  %arrayidx20.i = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %and19.i
  %16 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20.i, align 4
  %xor21.i = xor i32 %xor17.i, %17
  %shr.i = lshr i32 %xor21.i, 3
  %and22.i = and i32 %xor21.i, 7
  %arrayidx23.i = getelementptr [8 x i32], ptr @twist_table, i32 0, i32 %and22.i
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23.i, align 4
  %xor24.i = xor i32 %shr.i, %19
  store i32 %xor24.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool26.not.i, i32 14, i32 7
  %add27.i = add nuw nsw i32 %cond.i, %input_rotate.052.i
  %and28.i = and i32 %add27.i, 31
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i._mix_pool_bytes.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i._mix_pool_bytes.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_mix_pool_bytes.exit

_mix_pool_bytes.exit:                             ; preds = %while.body.i._mix_pool_bytes.exit_crit_edge, %entry._mix_pool_bytes.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %conv1.i, %entry._mix_pool_bytes.exit_crit_edge ], [ %and.i, %while.body.i._mix_pool_bytes.exit_crit_edge ]
  %input_rotate.0.lcssa.i = phi i32 [ %conv.i, %entry._mix_pool_bytes.exit_crit_edge ], [ %and28.i, %while.body.i._mix_pool_bytes.exit_crit_edge ]
  %conv29.i = trunc i32 %input_rotate.0.lcssa.i to i16
  store i16 %conv29.i, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 2), align 2
  %conv30.i = trunc i32 %i.0.lcssa.i to i16
  store i16 %conv30.i, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @input_pool, i32 noundef %call2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_bootloader_randomness(ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %size, 3
  tail call void @add_hwgenerator_randomness(ptr noundef %buf, i32 noundef %size, i32 noundef %mul)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_add_device_randomness(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bytes = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %IP = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %IP to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %IP, align 4
  %6 = inttoptr i32 %5 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, i32 noundef %3, ptr noundef %6) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_random__mix_pool_bytes(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bytes = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %IP = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %IP to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %IP, align 4
  %6 = inttoptr i32 %5 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.11, i32 noundef %3, ptr noundef %6) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_credit_entropy_bits(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bits = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits, align 4
  %entropy_count = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %entropy_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entropy_count, align 4
  %IP = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %IP to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %IP, align 4
  %8 = inttoptr i32 %7 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %5, ptr noundef %8) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_debit_entropy(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %debit_bits = getelementptr inbounds %struct.trace_event_raw_debit_entropy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %debit_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debit_bits, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, i32 noundef %3) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_add_input_randomness(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %input_bits = getelementptr inbounds %struct.trace_event_raw_add_input_randomness, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input_bits, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, i32 noundef %3) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_add_disk_randomness(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %input_bits = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %input_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input_bits, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.21, i32 noundef %shr, i32 noundef %and, i32 noundef %5) #14
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_random__get_random_bytes(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %nbytes = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytes, align 4
  %IP = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %IP to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %IP, align 4
  %6 = inttoptr i32 %5 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, i32 noundef %3, ptr noundef %6) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_random__extract_entropy(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %nbytes = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbytes, align 4
  %entropy_count = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %entropy_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entropy_count, align 4
  %IP = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %IP to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %IP, align 4
  %8 = inttoptr i32 %7 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, i32 noundef %3, i32 noundef %5, ptr noundef %8) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_urandom_read(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %got_bits = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %got_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %got_bits, align 4
  %pool_left = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pool_left to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pool_left, align 4
  %input_left = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %input_left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input_left, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %5, i32 noundef %7) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_prandom_u32(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ret1 = getelementptr inbounds %struct.trace_event_raw_prandom_u32, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, i32 noundef %3) #14
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @invalidate_batched_entropy() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call33 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %0)
  %cmp34 = icmp ult i32 %call33, %0
  br i1 %cmp34, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call35 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call33, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call35
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @batched_entropy_u32 to i32)
  %3 = inttoptr i32 %add to ptr
  %batch_lock = getelementptr inbounds %struct.batched_entropy, ptr %3, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %batch_lock) #14
  %position = getelementptr inbounds %struct.batched_entropy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %position, align 8
  tail call void @_raw_spin_unlock(ptr noundef %batch_lock) #14
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add21 = add i32 %6, ptrtoint (ptr @batched_entropy_u64 to i32)
  %7 = inttoptr i32 %add21 to ptr
  %batch_lock22 = getelementptr inbounds %struct.batched_entropy, ptr %7, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %batch_lock22) #14
  %position23 = getelementptr inbounds %struct.batched_entropy, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %position23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %position23, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %batch_lock22, i32 noundef %call7) #14
  %call = tail call i32 @cpumask_next(i32 noundef %call35, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mix_pool_bytes_nolock(i32 noundef %bytes, i32 noundef %IP) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mix_pool_bytes_nolock, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mix_pool_bytes_nolock, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !470
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mix_pool_bytes_nolock, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %bytes, i32 noundef %IP) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !471
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !471
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mix_pool_bytes_nolock, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mix_pool_bytes_nolock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_mix_pool_bytes_nolock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 59, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_credit_entropy_bits(i32 noundef %bits, i32 noundef %entropy_count, i32 noundef %IP) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_credit_entropy_bits, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_credit_entropy_bits, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !472
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_credit_entropy_bits, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %bits, i32 noundef %entropy_count, i32 noundef %IP) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !473
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !473
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_credit_entropy_bits, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_credit_entropy_bits.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_credit_entropy_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 80, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crng_reseed() unnamed_addr #0 align 64 {
entry:
  %buf = alloca %union.anon.119, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr.i = ashr i32 %1, 3
  %2 = tail call ptr @llvm.returnaddress(i32 0) #14
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_extract_entropy(i32 noundef %shr.i, i32 noundef %3) #14
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %4)
  %cmp.i.i = icmp sgt i32 %4, 32768
  br i1 %cmp.i.i, label %do.body2.i.i, label %entry.retry.i.i_crit_edge, !prof !438

entry.retry.i.i_crit_edge:                        ; preds = %entry
  br label %retry.i.i

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/random.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1299, 0\0A.popsection", ""() #14, !srcloc !474
  unreachable

retry.i.i:                                        ; preds = %__cmpxchg.exit.i.i.retry.i.i_crit_edge, %entry.retry.i.i_crit_edge
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.i.i = icmp slt i32 %5, 0
  br i1 %cmp11.i.i, label %.thread.i.i, label %if.end47.i.i, !prof !438

.thread.i.i:                                      ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1304, i32 noundef 9, ptr noundef null) #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %5) #17
  br label %7

if.end47.i.i:                                     ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2111, i32 %5)
  %cmp49.i.i = icmp ugt i32 %5, 2111
  br i1 %cmp49.i.i, label %if.end47.i.i..thread9.i.i_crit_edge, label %6

if.end47.i.i..thread9.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread9.i.i

6:                                                ; preds = %if.end47.i.i
  %shr12.i.i = lshr i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %cmp50.i.i = icmp ult i32 %5, 1024
  br i1 %cmp50.i.i, label %._crit_edge, label %..thread9.i.i_crit_edge

..thread9.i.i_crit_edge:                          ; preds = %6
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread9.i.i

._crit_edge:                                      ; preds = %6
  call void @__sanitizer_cov_trace_pc() #16
  br label %7

7:                                                ; preds = %._crit_edge, %.thread.i.i
  %entropy_count.048.i.i = phi i32 [ 0, %.thread.i.i ], [ %5, %._crit_edge ]
  br label %.thread9.i.i

.thread9.i.i:                                     ; preds = %7, %..thread9.i.i_crit_edge, %if.end47.i.i..thread9.i.i_crit_edge
  %entropy_count.047.i.i = phi i32 [ %entropy_count.048.i.i, %7 ], [ %5, %..thread9.i.i_crit_edge ], [ %5, %if.end47.i.i..thread9.i.i_crit_edge ]
  %8 = phi i32 [ 0, %7 ], [ %shr12.i.i, %..thread9.i.i_crit_edge ], [ 32, %if.end47.i.i..thread9.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 %8, 6
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %entropy_count.047.i.i, i32 %shl.i.i) #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !475
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %.thread9.i.i
  %10 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), i32 %5, i32 %9) #14, !srcloc !452
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !476
  %cmp75.not.i.i = icmp eq i32 %asmresult1.i.i.i, %5
  br i1 %cmp75.not.i.i, label %if.end77.i.i, label %__cmpxchg.exit.i.i.retry.i.i_crit_edge

__cmpxchg.exit.i.i.retry.i.i_crit_edge:           ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry.i.i

if.end77.i.i:                                     ; preds = %__cmpxchg.exit.i.i
  %mul.i.i = shl nuw nsw i32 %8, 3
  tail call fastcc void @trace_debit_entropy(i32 noundef %mul.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool78.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool78.not.i.i, label %if.end77.i.i.extract_entropy.exit_crit_edge, label %land.lhs.true.i.i

if.end77.i.i.extract_entropy.exit_crit_edge:      ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_entropy.exit

land.lhs.true.i.i:                                ; preds = %if.end77.i.i
  %11 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr79.i.i = ashr i32 %11, 3
  %12 = load i32, ptr @random_write_wakeup_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr79.i.i, i32 %12)
  %cmp80.i.i = icmp slt i32 %shr79.i.i, %12
  br i1 %cmp80.i.i, label %if.then81.i.i, label %land.lhs.true.i.i.extract_entropy.exit_crit_edge

land.lhs.true.i.i.extract_entropy.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_entropy.exit

if.then81.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__wake_up(ptr noundef nonnull @random_write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @kill_fasync(ptr noundef nonnull @fasync, i32 noundef 29, i32 noundef 2) #14
  br label %extract_entropy.exit

extract_entropy.exit:                             ; preds = %if.then81.i.i, %land.lhs.true.i.i.extract_entropy.exit_crit_edge, %if.end77.i.i.extract_entropy.exit_crit_edge
  %call1.i = call fastcc i32 @_extract_entropy(ptr noundef nonnull %buf, i32 noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, 0
  br i1 %cmp, label %extract_entropy.exit.cleanup_crit_edge, label %do.body4

extract_entropy.exit.cleanup_crit_edge:           ; preds = %extract_entropy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body4:                                         ; preds = %extract_entropy.exit
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %13 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call16 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cond.false, label %do.body4.cond.end_crit_edge

do.body4.cond.end_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body4.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.false ], [ 0, %do.body4.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf, align 4
  %xor = xor i32 %17, %cond
  %18 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), align 4
  %xor20 = xor i32 %xor, %18
  store i32 %xor20, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %19 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call16.1 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1)
  %tobool17.not.1 = icmp eq i32 %call16.1, 0
  br i1 %tobool17.not.1, label %cond.false.1, label %cond.end.cond.end.1_crit_edge

cond.end.cond.end.1_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.1

cond.false.1:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c, align 4
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.false.1, %cond.end.cond.end.1_crit_edge
  %cond.1 = phi i32 [ %21, %cond.false.1 ], [ 0, %cond.end.cond.end.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %arrayidx.1 = getelementptr inbounds [8 x i32], ptr %buf, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %xor.1 = xor i32 %23, %cond.1
  %24 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 1), align 4
  %xor20.1 = xor i32 %xor.1, %24
  store i32 %xor20.1, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %25 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call16.2 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.2)
  %tobool17.not.2 = icmp eq i32 %call16.2, 0
  br i1 %tobool17.not.2, label %cond.false.2, label %cond.end.1.cond.end.2_crit_edge

cond.end.1.cond.end.2_crit_edge:                  ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.2

cond.false.2:                                     ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c, align 4
  br label %cond.end.2

cond.end.2:                                       ; preds = %cond.false.2, %cond.end.1.cond.end.2_crit_edge
  %cond.2 = phi i32 [ %27, %cond.false.2 ], [ 0, %cond.end.1.cond.end.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %arrayidx.2 = getelementptr inbounds [8 x i32], ptr %buf, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2, align 4
  %xor.2 = xor i32 %29, %cond.2
  %30 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 2), align 4
  %xor20.2 = xor i32 %xor.2, %30
  store i32 %xor20.2, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %31 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call16.3 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.3)
  %tobool17.not.3 = icmp eq i32 %call16.3, 0
  br i1 %tobool17.not.3, label %cond.false.3, label %cond.end.2.cond.end.3_crit_edge

cond.end.2.cond.end.3_crit_edge:                  ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.3

cond.false.3:                                     ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %c, align 4
  br label %cond.end.3

cond.end.3:                                       ; preds = %cond.false.3, %cond.end.2.cond.end.3_crit_edge
  %cond.3 = phi i32 [ %33, %cond.false.3 ], [ 0, %cond.end.2.cond.end.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %arrayidx.3 = getelementptr inbounds [8 x i32], ptr %buf, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3, align 4
  %xor.3 = xor i32 %35, %cond.3
  %36 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 3), align 4
  %xor20.3 = xor i32 %xor.3, %36
  store i32 %xor20.3, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %37 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call16.4 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.4)
  %tobool17.not.4 = icmp eq i32 %call16.4, 0
  br i1 %tobool17.not.4, label %cond.false.4, label %cond.end.3.cond.end.4_crit_edge

cond.end.3.cond.end.4_crit_edge:                  ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.4

cond.false.4:                                     ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %c, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.4, %cond.end.3.cond.end.4_crit_edge
  %cond.4 = phi i32 [ %39, %cond.false.4 ], [ 0, %cond.end.3.cond.end.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %arrayidx.4 = getelementptr inbounds [8 x i32], ptr %buf, i32 0, i32 4
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.4, align 4
  %xor.4 = xor i32 %41, %cond.4
  %42 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 4), align 4
  %xor20.4 = xor i32 %xor.4, %42
  store i32 %xor20.4, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 4), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %43 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call16.5 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.5)
  %tobool17.not.5 = icmp eq i32 %call16.5, 0
  br i1 %tobool17.not.5, label %cond.false.5, label %cond.end.4.cond.end.5_crit_edge

cond.end.4.cond.end.5_crit_edge:                  ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.5

cond.false.5:                                     ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %c, align 4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.5, %cond.end.4.cond.end.5_crit_edge
  %cond.5 = phi i32 [ %45, %cond.false.5 ], [ 0, %cond.end.4.cond.end.5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %arrayidx.5 = getelementptr inbounds [8 x i32], ptr %buf, i32 0, i32 5
  %46 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.5, align 4
  %xor.5 = xor i32 %47, %cond.5
  %48 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 5), align 4
  %xor20.5 = xor i32 %xor.5, %48
  store i32 %xor20.5, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 5), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %49 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call16.6 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.6)
  %tobool17.not.6 = icmp eq i32 %call16.6, 0
  br i1 %tobool17.not.6, label %cond.false.6, label %cond.end.5.cond.end.6_crit_edge

cond.end.5.cond.end.6_crit_edge:                  ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.6

cond.false.6:                                     ; preds = %cond.end.5
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %c, align 4
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.6, %cond.end.5.cond.end.6_crit_edge
  %cond.6 = phi i32 [ %51, %cond.false.6 ], [ 0, %cond.end.5.cond.end.6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %arrayidx.6 = getelementptr inbounds [8 x i32], ptr %buf, i32 0, i32 6
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.6, align 4
  %xor.6 = xor i32 %53, %cond.6
  %54 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 6), align 4
  %xor20.6 = xor i32 %xor.6, %54
  store i32 %xor20.6, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 6), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %55 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call16.7 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.7)
  %tobool17.not.7 = icmp eq i32 %call16.7, 0
  br i1 %tobool17.not.7, label %cond.false.7, label %cond.end.6.cond.end.7_crit_edge

cond.end.6.cond.end.7_crit_edge:                  ; preds = %cond.end.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.7

cond.false.7:                                     ; preds = %cond.end.6
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %c, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.7, %cond.end.6.cond.end.7_crit_edge
  %cond.7 = phi i32 [ %57, %cond.false.7 ], [ 0, %cond.end.6.cond.end.7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %arrayidx.7 = getelementptr inbounds [8 x i32], ptr %buf, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.7, align 4
  %xor.7 = xor i32 %59, %cond.7
  %60 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 7), align 4
  %xor20.7 = xor i32 %xor.7, %60
  store i32 %xor20.7, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 7), align 4
  %61 = call ptr @memset(ptr %buf, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %buf) #14, !srcloc !456
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  store volatile i32 %62, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %call7) #14
  %63 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp34 = icmp slt i32 %63, 2
  br i1 %cmp34, label %if.then36, label %cond.end.7.cleanup_crit_edge

cond.end.7.cleanup_crit_edge:                     ; preds = %cond.end.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36:                                        ; preds = %cond.end.7
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @crng_finalize_init()
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %cond.end.7.cleanup_crit_edge, %extract_entropy.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_extract_entropy(i32 noundef %entropy_count, i32 noundef %IP) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_extract_entropy, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_extract_entropy, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !477
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_extract_entropy, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef 32, i32 noundef %entropy_count, i32 noundef %IP) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !478
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !478
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !437

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_extract_entropy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_extract_entropy.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_extract_entropy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 189, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_extract_entropy(ptr nocapture noundef writeonly %buf, i32 noundef %nbytes) unnamed_addr #0 align 64 {
entry:
  %state.i = alloca %struct.blake2s_state, align 4
  %hash.i = alloca [32 x i8], align 1
  %tmp = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %tobool.not13 = icmp eq i32 %nbytes, 0
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  br i1 %tobool.not13, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %state.i, i32 48
  %arrayidx3.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 1
  %arrayidx5.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 2
  %arrayidx7.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 3
  %arrayidx9.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 4
  %arrayidx11.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 5
  %arrayidx13.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 6
  %arrayidx15.i.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 7
  %t.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i, i32 0, i32 1
  %buflen.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i, i32 0, i32 4
  %outlen22.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.016 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %ret.015 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %nbytes.addr.014 = phi i32 [ %nbytes, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %state.i) #14
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hash.i) #14
  %3 = call ptr @memset(ptr %hash.i, i32 255, i32 32)
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1795745351, ptr %state.i, align 4
  %5 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1150833019, ptr %arrayidx3.i.i.i, align 4
  %6 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1013904242, ptr %arrayidx5.i.i.i, align 4
  %7 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1521486534, ptr %arrayidx7.i.i.i, align 4
  %8 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1359893119, ptr %arrayidx9.i.i.i, align 4
  %9 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1694144372, ptr %arrayidx11.i.i.i, align 4
  %10 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 528734635, ptr %arrayidx13.i.i.i, align 4
  %11 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1541459225, ptr %arrayidx15.i.i.i, align 4
  %12 = ptrtoint ptr %buflen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %buflen.i.i.i, align 4
  %13 = call ptr @memset(ptr %t.i.i.i, i32 0, i32 16)
  %14 = ptrtoint ptr %outlen22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %outlen22.i.i.i, align 4
  %call6.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @input_pool) #14
  call void @blake2s_update(ptr noundef nonnull %state.i, ptr noundef nonnull @input_pool_data, i32 noundef 512) #14
  call void @blake2s_final(ptr noundef nonnull %state.i, ptr noundef nonnull %hash.i) #14
  call fastcc void @__mix_pool_bytes(ptr noundef nonnull %hash.i, i32 noundef 32) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @input_pool, i32 noundef %call6.i) #14
  %15 = call ptr @memcpy(ptr %tmp, ptr %hash.i, i32 16)
  %16 = call ptr @memset(ptr %hash.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %hash.i) #14, !srcloc !456
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hash.i) #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %state.i) #14
  %17 = call i32 @llvm.smin.i32(i32 %nbytes.addr.014, i32 16)
  %18 = call ptr @memcpy(ptr %buf.addr.016, ptr %tmp, i32 %17)
  %sub = sub i32 %nbytes.addr.014, %17
  %add.ptr = getelementptr i8, ptr %buf.addr.016, i32 %17
  %add = add i32 %ret.015, %17
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %19 = call ptr @memset(ptr %tmp, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp) #14, !srcloc !456
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  ret i32 %ret.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_debit_entropy(i32 noundef %debit_bits) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_debit_entropy, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_debit_entropy, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !479
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_debit_entropy, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %debit_bits) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !480
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !480
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_debit_entropy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_debit_entropy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_debit_entropy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 96, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_block_generic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_get_random_bytes(i32 noundef %nbytes, i32 noundef %IP) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_get_random_bytes, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_get_random_bytes, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !481
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_get_random_bytes, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %nbytes, i32 noundef %IP) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !482
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !482
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_get_random_bytes, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_get_random_bytes.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_get_random_bytes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 155, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crng_backtrack_protect(ptr noundef %tmp, i32 noundef %used) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i = add i32 %used, -1
  %or.i = or i32 %sub.i, 3
  %add.i = add i32 %or.i, 1
  %add1.i = add i32 %or.i, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add1.i)
  %cmp.i = icmp sgt i32 %add1.i, 64
  br i1 %cmp.i, label %if.then.i, label %entry._crng_backtrack_protect.exit_crit_edge

entry._crng_backtrack_protect.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %_crng_backtrack_protect.exit

if.then.i:                                        ; preds = %entry
  %0 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i.i.i = icmp sgt i32 %0, 1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.do.body14.i.i.i_crit_edge, !prof !437

if.then.i.do.body14.i.i.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i
  %1 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %2 = load volatile i32, ptr @crng_global_init_time, align 4
  %sub.i.i.i = sub i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp7.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp7.i.i.i, label %do.end.i.i.i.if.then10.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i.i.i.if.then10.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i.i
  %add.i.i.i = add i32 %1, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub8.i.i.i = sub i32 %add.i.i.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i.i)
  %cmp9.i.i.i = icmp slt i32 %sub8.i.i.i, 0
  br i1 %cmp9.i.i.i, label %lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i.i

lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge, %do.end.i.i.i.if.then10.i.i.i_crit_edge
  tail call fastcc void @crng_reseed() #14
  br label %do.body14.i.i.i

do.body14.i.i.i:                                  ; preds = %if.then10.i.i.i, %lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge, %if.then.i.do.body14.i.i.i_crit_edge
  %call17.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  tail call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef %tmp, i32 noundef 20) #14
  %4 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp24.i.i.i = icmp eq i32 %4, 0
  br i1 %cmp24.i.i.i, label %if.then26.i.i.i, label %do.body14.i.i.i.extract_crng.exit.i_crit_edge

do.body14.i.i.i.extract_crng.exit.i_crit_edge:    ; preds = %do.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng.exit.i

if.then26.i.i.i:                                  ; preds = %do.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %5 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %extract_crng.exit.i

extract_crng.exit.i:                              ; preds = %if.then26.i.i.i, %do.body14.i.i.i.extract_crng.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %call17.i.i.i) #14
  br label %_crng_backtrack_protect.exit

_crng_backtrack_protect.exit:                     ; preds = %extract_crng.exit.i, %entry._crng_backtrack_protect.exit_crit_edge
  %used.addr.0.i = phi i32 [ 0, %extract_crng.exit.i ], [ %add.i, %entry._crng_backtrack_protect.exit_crit_edge ]
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  %arrayidx.i = getelementptr i8, ptr %tmp, i32 %used.addr.0.i
  %incdec.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %8 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), align 4
  %xor.i = xor i32 %8, %7
  store i32 %xor.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %incdec.ptr.i, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i, align 4
  %11 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 1), align 4
  %xor.1.i = xor i32 %11, %10
  store i32 %xor.1.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 1), align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %incdec.ptr.1.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.1.i, align 4
  %14 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 2), align 4
  %xor.2.i = xor i32 %14, %13
  store i32 %xor.2.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 2), align 4
  %incdec.ptr.3.i = getelementptr i32, ptr %incdec.ptr.2.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr.2.i, align 4
  %17 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 3), align 4
  %xor.3.i = xor i32 %17, %16
  store i32 %xor.3.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 3), align 4
  %incdec.ptr.4.i = getelementptr i32, ptr %incdec.ptr.3.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.3.i, align 4
  %20 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 4), align 4
  %xor.4.i = xor i32 %20, %19
  store i32 %xor.4.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 4), align 4
  %incdec.ptr.5.i = getelementptr i32, ptr %incdec.ptr.4.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.4.i, align 4
  %23 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 5), align 4
  %xor.5.i = xor i32 %23, %22
  store i32 %xor.5.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 5), align 4
  %incdec.ptr.6.i = getelementptr i32, ptr %incdec.ptr.5.i, i32 1
  %24 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr.5.i, align 4
  %26 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 6), align 4
  %xor.6.i = xor i32 %26, %25
  store i32 %xor.6.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 6), align 4
  %27 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %incdec.ptr.6.i, align 4
  %29 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 7), align 4
  %xor.7.i = xor i32 %29, %28
  store i32 %xor.7.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 7), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %call5.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @entropy_timer(ptr nocapture noundef readnone %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @credit_entropy_bits(i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @crng_init_try_arch_early() unnamed_addr #3 section ".init.text" align 64 {
entry:
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 4, %entry ], [ %inc, %cond.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 0
  br i1 %cmp.not.i, label %for.body.arch_get_random_long_early.exit_crit_edge, label %arch_get_random_seed_long_early.exit, !prof !437

for.body.arch_get_random_long_early.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %arch_get_random_long_early.exit

arch_get_random_seed_long_early.exit:             ; preds = %for.body
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 148, i32 noundef 9, ptr noundef null) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %.pr = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i6 = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i6, label %arch_get_random_seed_long_early.exit.arch_get_random_long_early.exit_crit_edge, label %do.end.i7, !prof !437

arch_get_random_seed_long_early.exit.arch_get_random_long_early.exit_crit_edge: ; preds = %arch_get_random_seed_long_early.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %arch_get_random_long_early.exit

do.end.i7:                                        ; preds = %arch_get_random_seed_long_early.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 156, i32 noundef 9, ptr noundef null) #14
  br label %arch_get_random_long_early.exit

arch_get_random_long_early.exit:                  ; preds = %do.end.i7, %arch_get_random_seed_long_early.exit.arch_get_random_long_early.exit_crit_edge, %for.body.arch_get_random_long_early.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %1 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c, align 4, !annotation !439
  %call2 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.false, label %arch_get_random_long_early.exit.cond.end_crit_edge

arch_get_random_long_early.exit.cond.end_crit_edge: ; preds = %arch_get_random_long_early.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %arch_get_random_long_early.exit
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %arch_get_random_long_early.exit.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 0, %arch_get_random_long_early.exit.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %arrayidx = getelementptr [16 x i32], ptr @primary_crng, i32 0, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %xor = xor i32 %5, %cond
  store i32 %xor, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i1 false
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @urandom_read_nowarn(ptr noundef %buf, i32 noundef %nbytes) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %nbytes, i32 33554431)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp.i) #14
  %1 = call ptr @memset(ptr %tmp.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %cmp.i = icmp ugt i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not42.i = icmp eq i32 %0, 0
  br i1 %tobool.not42.i, label %entry.extract_crng_user.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.extract_crng_user.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng_user.exit

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %buf.addr.047.i = phi ptr [ %add.ptr.i, %if.end19.i.while.body.i_crit_edge ], [ %buf, %entry.while.body.i_crit_edge ]
  %i.046.i = phi i32 [ %24, %if.end19.i.while.body.i_crit_edge ], [ 64, %entry.while.body.i_crit_edge ]
  %ret.044.i = phi i32 [ %add.i, %if.end19.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %nbytes.addr.043.i = phi i32 [ %sub.i, %if.end19.i.while.body.i_crit_edge ], [ %0, %entry.while.body.i_crit_edge ]
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end11.i_crit_edge

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %2 = call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 16384
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %7 = call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.then.i.if.then6.i_crit_edge, !prof !437

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6.i

signal_pending.exit.i:                            ; preds = %if.then.i
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool5.not.i, label %if.end10.i, label %signal_pending.exit.i.if.then6.i_crit_edge

signal_pending.exit.i.if.then6.i_crit_edge:       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6.i

if.then6.i:                                       ; preds = %signal_pending.exit.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.044.i)
  %cmp7.i = icmp eq i32 %ret.044.i, 0
  %spec.store.select.i = select i1 %cmp7.i, i32 -512, i32 %ret.044.i
  br label %extract_crng_user.exit

if.end10.i:                                       ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @schedule() #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end10.i, %land.lhs.true.i.if.end11.i_crit_edge, %while.body.i.if.end11.i_crit_edge
  %18 = load i32, ptr @crng_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.i34.i = icmp sgt i32 %18, 1
  br i1 %cmp.i.i34.i, label %do.end.i.i.i, label %if.end11.i.do.body14.i.i.i_crit_edge, !prof !437

if.end11.i.do.body14.i.i.i_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i.i

do.end.i.i.i:                                     ; preds = %if.end11.i
  %19 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %20 = load volatile i32, ptr @crng_global_init_time, align 4
  %sub.i.i.i = sub i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp7.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp7.i.i.i, label %do.end.i.i.i.if.then10.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i.i.i.if.then10.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i.i
  %add.i.i.i = add i32 %19, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub8.i.i.i = sub i32 %add.i.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i.i)
  %cmp9.i.i35.i = icmp slt i32 %sub8.i.i.i, 0
  br i1 %cmp9.i.i35.i, label %lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14.i.i.i

lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then10.i.i.i_crit_edge, %do.end.i.i.i.if.then10.i.i.i_crit_edge
  call fastcc void @crng_reseed() #14
  br label %do.body14.i.i.i

do.body14.i.i.i:                                  ; preds = %if.then10.i.i.i, %lor.lhs.false.i.i.i.do.body14.i.i.i_crit_edge, %if.end11.i.do.body14.i.i.i_crit_edge
  %call17.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef nonnull %tmp.i, i32 noundef 20) #14
  %22 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp24.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp24.i.i.i, label %if.then26.i.i.i, label %do.body14.i.i.i.extract_crng.exit.i_crit_edge

do.body14.i.i.i.extract_crng.exit.i_crit_edge:    ; preds = %do.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng.exit.i

if.then26.i.i.i:                                  ; preds = %do.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %inc.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %extract_crng.exit.i

extract_crng.exit.i:                              ; preds = %if.then26.i.i.i, %do.body14.i.i.i.extract_crng.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %call17.i.i.i) #14
  %24 = call i32 @llvm.smin.i32(i32 %nbytes.addr.043.i, i32 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %24)
  %cmp1.i.i.i = icmp ugt i32 %24, 64
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.then.i.i.i.i, !prof !438

if.then3.i.i.i:                                   ; preds = %extract_crng.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.63, i32 noundef 64, i32 noundef %24) #14
  br label %extract_crng_user.exit

if.then.i.i.i.i:                                  ; preds = %extract_crng.exit.i
  call void @__check_object_size(ptr noundef nonnull %tmp.i, i32 noundef %24, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 174) #14
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.047.i, i32 %24, i32 -1226833920) #21, !srcloc !483
  %asmresult.i.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp.i, i32 noundef %24) #14
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.047.i, ptr noundef nonnull %tmp.i, i32 noundef %24) #14
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %24, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %24, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool17.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %copy_to_user.exit.i.extract_crng_user.exit_crit_edge

copy_to_user.exit.i.extract_crng_user.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng_user.exit

if.end19.i:                                       ; preds = %copy_to_user.exit.i
  %sub.i = sub i32 %nbytes.addr.043.i, %24
  %add.ptr.i = getelementptr i8, ptr %buf.addr.047.i, i32 %24
  %add.i = add i32 %24, %ret.044.i
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end19.i.extract_crng_user.exit_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end19.i.extract_crng_user.exit_crit_edge:      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %extract_crng_user.exit

extract_crng_user.exit:                           ; preds = %if.end19.i.extract_crng_user.exit_crit_edge, %copy_to_user.exit.i.extract_crng_user.exit_crit_edge, %if.then3.i.i.i, %if.then6.i, %entry.extract_crng_user.exit_crit_edge
  %ret.1.i = phi i32 [ %spec.store.select.i, %if.then6.i ], [ 0, %entry.extract_crng_user.exit_crit_edge ], [ -14, %if.then3.i.i.i ], [ -14, %copy_to_user.exit.i.extract_crng_user.exit_crit_edge ], [ %add.i, %if.end19.i.extract_crng_user.exit_crit_edge ]
  %i.1.i = phi i32 [ %i.046.i, %if.then6.i ], [ 64, %entry.extract_crng_user.exit_crit_edge ], [ %24, %if.then3.i.i.i ], [ %24, %if.end19.i.extract_crng_user.exit_crit_edge ], [ %24, %copy_to_user.exit.i.extract_crng_user.exit_crit_edge ]
  call fastcc void @crng_backtrack_protect(ptr noundef nonnull %tmp.i, i32 noundef %i.1.i) #14
  %26 = call ptr @memset(ptr %tmp.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i) #14, !srcloc !456
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp.i) #14
  %mul = shl nuw nsw i32 %0, 3
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.116, ptr @input_pool, i32 0, i32 3), align 4
  %shr = ashr i32 %27, 3
  call fastcc void @trace_urandom_read(i32 noundef %mul, i32 noundef %shr)
  ret i32 %ret.1.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_urandom_read(i32 noundef %got_bits, i32 noundef %input_left) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_urandom_read, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_urandom_read, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !484
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_urandom_read, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %got_bits, i32 noundef 0, i32 noundef %input_left) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !485
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !485
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !437

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_urandom_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_urandom_read.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_urandom_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 211, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_pool(ptr noundef %buffer, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #14
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not32 = icmp eq i32 %count, 0
  br i1 %cmp.not32, label %entry.cleanup10_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup10

while.body:                                       ; preds = %for.body.while.body_crit_edge, %entry.while.body_crit_edge
  %count.addr.034 = phi i32 [ %sub6, %for.body.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %p.033 = phi ptr [ %add.ptr, %for.body.while.body_crit_edge ], [ %buffer, %entry.while.body_crit_edge ]
  %1 = call i32 @llvm.umin.i32(i32 %count.addr.034, i32 64)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %1, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %p.033, i32 %1, i32 -1226833920) #21, !srcloc !486
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !437

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %1) #14
  %3 = call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !460
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !461
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %p.033, i32 noundef %1) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #14, !srcloc !461
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %for.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !437

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i28 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %1, %while.body.if.then11.i.i_crit_edge ], [ %1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %1, %res.0.i.i28
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i28)
  br label %cleanup10

for.body:                                         ; preds = %if.end.i.i
  %sub6 = sub i32 %count.addr.034, %1
  %add.ptr = getelementptr i8, ptr %p.033, i32 %1
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %buf, i32 noundef %1)
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1801, i32 noundef 0) #14
  %call.i = call i32 @__cond_resched() #14
  %cmp.not = icmp eq i32 %sub6, 0
  br i1 %cmp.not, label %for.body.cleanup10_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup10

cleanup10:                                        ; preds = %for.body.cleanup10_crit_edge, %if.then11.i.i, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ -14, %if.then11.i.i ], [ 0, %entry.cleanup10_crit_edge ], [ 0, %for.body.cleanup10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #14
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_do_entropy(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %fake_table = alloca %struct.ctl_table, align 4
  %entropy_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fake_table) #14
  %0 = call ptr @memset(ptr %fake_table, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entropy_count) #14
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %shr = ashr i32 %4, 3
  %5 = ptrtoint ptr %entropy_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %entropy_count, align 4
  %data1 = getelementptr inbounds %struct.ctl_table, ptr %fake_table, i32 0, i32 1
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entropy_count, ptr %data1, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %fake_table, i32 0, i32 2
  %7 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %maxlen, align 4
  %call = call i32 @proc_dointvec(ptr noundef nonnull %fake_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entropy_count) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fake_table) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_do_uuid(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %fake_table = alloca %struct.ctl_table, align 4
  %buf = alloca [64 x i8], align 1
  %tmp_uuid = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fake_table) #14
  %0 = call ptr @memset(ptr %fake_table, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #14
  %1 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_uuid) #14
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %2 = call ptr @memset(ptr %tmp_uuid, i32 255, i32 16)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @generate_random_uuid(ptr noundef nonnull %tmp_uuid) #14
  br label %if.end3

if.else:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @proc_do_uuid.bootid_spinlock) #14
  %arrayidx = getelementptr i8, ptr %4, i32 8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then2, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @generate_random_uuid(ptr noundef nonnull %4) #14
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @proc_do_uuid.bootid_spinlock) #14
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %uuid.0 = phi ptr [ %4, %if.end ], [ %tmp_uuid, %if.then ]
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.80, ptr noundef nonnull %uuid.0)
  %data6 = getelementptr inbounds %struct.ctl_table, ptr %fake_table, i32 0, i32 1
  %7 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %data6, align 4
  %maxlen = getelementptr inbounds %struct.ctl_table, ptr %fake_table, i32 0, i32 2
  %8 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %maxlen, align 4
  %call7 = call i32 @proc_dostring(ptr noundef nonnull %fake_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_uuid) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fake_table) #14
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_uuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mix_pool_bytes(i32 noundef %bytes, i32 noundef %IP) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mix_pool_bytes, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mix_pool_bytes, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !443

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !437

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !487
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mix_pool_bytes, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %bytes, i32 noundef %IP) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !488
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !488
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !437

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !427) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !446
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mix_pool_bytes, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mix_pool_bytes.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_mix_pool_bytes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 53, ptr noundef nonnull @.str.35) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !447
  %38 = tail call i32 @llvm.read_register.i32(metadata !427) #14
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !253, !255, !257, !259, !261, !262, !263, !264, !265, !267, !268, !270, !272, !274, !276, !278, !279, !280, !282, !284, !285, !286, !287, !289, !290, !291, !293, !294, !295, !296, !297, !298, !299, !300, !302, !303, !304, !305, !306, !307, !309, !310, !311, !313, !315, !316, !317, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !332, !334, !336, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !352, !354, !356, !358, !360, !362, !364, !366, !367, !369, !371, !372, !373, !375, !377, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !390, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !418, !420, !421, !422, !424, !426}
!llvm.named.register.sp = !{!427}
!llvm.module.flags = !{!428, !429, !430, !431, !432, !433, !434, !435}
!llvm.ident = !{!436}

!0 = !{ptr @__tracepoint_add_device_randomness, !1, !"__tracepoint_add_device_randomness", i1 false, i1 false}
!1 = !{!"../include/trace/events/random.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_add_device_randomness, !1, !"__tracepoint_ptr_add_device_randomness", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_add_device_randomness, !1, !"__SCK__tp_func_add_device_randomness", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mix_pool_bytes, !5, !"__tracepoint_mix_pool_bytes", i1 false, i1 false}
!5 = !{!"../include/trace/events/random.h", i32 49, i32 1}
!6 = !{ptr @__tracepoint_ptr_mix_pool_bytes, !5, !"__tracepoint_ptr_mix_pool_bytes", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mix_pool_bytes, !5, !"__SCK__tp_func_mix_pool_bytes", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mix_pool_bytes_nolock, !9, !"__tracepoint_mix_pool_bytes_nolock", i1 false, i1 false}
!9 = !{!"../include/trace/events/random.h", i32 55, i32 1}
!10 = !{ptr @__tracepoint_ptr_mix_pool_bytes_nolock, !9, !"__tracepoint_ptr_mix_pool_bytes_nolock", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mix_pool_bytes_nolock, !9, !"__SCK__tp_func_mix_pool_bytes_nolock", i1 false, i1 false}
!12 = !{ptr @__tracepoint_credit_entropy_bits, !13, !"__tracepoint_credit_entropy_bits", i1 false, i1 false}
!13 = !{!"../include/trace/events/random.h", i32 61, i32 1}
!14 = !{ptr @__tracepoint_ptr_credit_entropy_bits, !13, !"__tracepoint_ptr_credit_entropy_bits", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_credit_entropy_bits, !13, !"__SCK__tp_func_credit_entropy_bits", i1 false, i1 false}
!16 = !{ptr @__tracepoint_debit_entropy, !17, !"__tracepoint_debit_entropy", i1 false, i1 false}
!17 = !{!"../include/trace/events/random.h", i32 82, i32 1}
!18 = !{ptr @__tracepoint_ptr_debit_entropy, !17, !"__tracepoint_ptr_debit_entropy", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_debit_entropy, !17, !"__SCK__tp_func_debit_entropy", i1 false, i1 false}
!20 = !{ptr @__tracepoint_add_input_randomness, !21, !"__tracepoint_add_input_randomness", i1 false, i1 false}
!21 = !{!"../include/trace/events/random.h", i32 98, i32 1}
!22 = !{ptr @__tracepoint_ptr_add_input_randomness, !21, !"__tracepoint_ptr_add_input_randomness", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_add_input_randomness, !21, !"__SCK__tp_func_add_input_randomness", i1 false, i1 false}
!24 = !{ptr @__tracepoint_add_disk_randomness, !25, !"__tracepoint_add_disk_randomness", i1 false, i1 false}
!25 = !{!"../include/trace/events/random.h", i32 114, i32 1}
!26 = !{ptr @__tracepoint_ptr_add_disk_randomness, !25, !"__tracepoint_ptr_add_disk_randomness", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_add_disk_randomness, !25, !"__SCK__tp_func_add_disk_randomness", i1 false, i1 false}
!28 = !{ptr @__tracepoint_get_random_bytes, !29, !"__tracepoint_get_random_bytes", i1 false, i1 false}
!29 = !{!"../include/trace/events/random.h", i32 151, i32 1}
!30 = !{ptr @__tracepoint_ptr_get_random_bytes, !29, !"__tracepoint_ptr_get_random_bytes", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_get_random_bytes, !29, !"__SCK__tp_func_get_random_bytes", i1 false, i1 false}
!32 = !{ptr @__tracepoint_get_random_bytes_arch, !33, !"__tracepoint_get_random_bytes_arch", i1 false, i1 false}
!33 = !{!"../include/trace/events/random.h", i32 157, i32 1}
!34 = !{ptr @__tracepoint_ptr_get_random_bytes_arch, !33, !"__tracepoint_ptr_get_random_bytes_arch", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_get_random_bytes_arch, !33, !"__SCK__tp_func_get_random_bytes_arch", i1 false, i1 false}
!36 = !{ptr @__tracepoint_extract_entropy, !37, !"__tracepoint_extract_entropy", i1 false, i1 false}
!37 = !{!"../include/trace/events/random.h", i32 185, i32 1}
!38 = !{ptr @__tracepoint_ptr_extract_entropy, !37, !"__tracepoint_ptr_extract_entropy", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_extract_entropy, !37, !"__SCK__tp_func_extract_entropy", i1 false, i1 false}
!40 = !{ptr @__tracepoint_urandom_read, !41, !"__tracepoint_urandom_read", i1 false, i1 false}
!41 = !{!"../include/trace/events/random.h", i32 191, i32 1}
!42 = !{ptr @__tracepoint_ptr_urandom_read, !41, !"__tracepoint_ptr_urandom_read", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_urandom_read, !41, !"__SCK__tp_func_urandom_read", i1 false, i1 false}
!44 = !{ptr @__tracepoint_prandom_u32, !45, !"__tracepoint_prandom_u32", i1 false, i1 false}
!45 = !{!"../include/trace/events/random.h", i32 213, i32 1}
!46 = !{ptr @__tracepoint_ptr_prandom_u32, !45, !"__tracepoint_ptr_prandom_u32", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_prandom_u32, !45, !"__SCK__tp_func_prandom_u32", i1 false, i1 false}
!48 = !{ptr @event_class_add_device_randomness, !1, !"event_class_add_device_randomness", i1 false, i1 false}
!49 = !{ptr @event_add_device_randomness, !1, !"event_add_device_randomness", i1 false, i1 false}
!50 = !{ptr @__event_add_device_randomness, !1, !"__event_add_device_randomness", i1 false, i1 false}
!51 = !{ptr @event_class_random__mix_pool_bytes, !52, !"event_class_random__mix_pool_bytes", i1 false, i1 false}
!52 = !{!"../include/trace/events/random.h", i32 30, i32 1}
!53 = !{ptr @event_mix_pool_bytes, !5, !"event_mix_pool_bytes", i1 false, i1 false}
!54 = !{ptr @__event_mix_pool_bytes, !5, !"__event_mix_pool_bytes", i1 false, i1 false}
!55 = !{ptr @event_mix_pool_bytes_nolock, !9, !"event_mix_pool_bytes_nolock", i1 false, i1 false}
!56 = !{ptr @__event_mix_pool_bytes_nolock, !9, !"__event_mix_pool_bytes_nolock", i1 false, i1 false}
!57 = !{ptr @event_class_credit_entropy_bits, !13, !"event_class_credit_entropy_bits", i1 false, i1 false}
!58 = !{ptr @event_credit_entropy_bits, !13, !"event_credit_entropy_bits", i1 false, i1 false}
!59 = !{ptr @__event_credit_entropy_bits, !13, !"__event_credit_entropy_bits", i1 false, i1 false}
!60 = !{ptr @event_class_debit_entropy, !17, !"event_class_debit_entropy", i1 false, i1 false}
!61 = !{ptr @event_debit_entropy, !17, !"event_debit_entropy", i1 false, i1 false}
!62 = !{ptr @__event_debit_entropy, !17, !"__event_debit_entropy", i1 false, i1 false}
!63 = !{ptr @event_class_add_input_randomness, !21, !"event_class_add_input_randomness", i1 false, i1 false}
!64 = !{ptr @event_add_input_randomness, !21, !"event_add_input_randomness", i1 false, i1 false}
!65 = !{ptr @__event_add_input_randomness, !21, !"__event_add_input_randomness", i1 false, i1 false}
!66 = !{ptr @event_class_add_disk_randomness, !25, !"event_class_add_disk_randomness", i1 false, i1 false}
!67 = !{ptr @event_add_disk_randomness, !25, !"event_add_disk_randomness", i1 false, i1 false}
!68 = !{ptr @__event_add_disk_randomness, !25, !"__event_add_disk_randomness", i1 false, i1 false}
!69 = !{ptr @event_class_random__get_random_bytes, !70, !"event_class_random__get_random_bytes", i1 false, i1 false}
!70 = !{!"../include/trace/events/random.h", i32 133, i32 1}
!71 = !{ptr @event_get_random_bytes, !29, !"event_get_random_bytes", i1 false, i1 false}
!72 = !{ptr @__event_get_random_bytes, !29, !"__event_get_random_bytes", i1 false, i1 false}
!73 = !{ptr @event_get_random_bytes_arch, !33, !"event_get_random_bytes_arch", i1 false, i1 false}
!74 = !{ptr @__event_get_random_bytes_arch, !33, !"__event_get_random_bytes_arch", i1 false, i1 false}
!75 = !{ptr @event_class_random__extract_entropy, !76, !"event_class_random__extract_entropy", i1 false, i1 false}
!76 = !{!"../include/trace/events/random.h", i32 163, i32 1}
!77 = !{ptr @event_extract_entropy, !37, !"event_extract_entropy", i1 false, i1 false}
!78 = !{ptr @__event_extract_entropy, !37, !"__event_extract_entropy", i1 false, i1 false}
!79 = !{ptr @event_class_urandom_read, !41, !"event_class_urandom_read", i1 false, i1 false}
!80 = !{ptr @event_urandom_read, !41, !"event_urandom_read", i1 false, i1 false}
!81 = !{ptr @__event_urandom_read, !41, !"__event_urandom_read", i1 false, i1 false}
!82 = !{ptr @event_class_prandom_u32, !45, !"event_class_prandom_u32", i1 false, i1 false}
!83 = !{ptr @event_prandom_u32, !45, !"event_prandom_u32", i1 false, i1 false}
!84 = !{ptr @__event_prandom_u32, !45, !"__event_prandom_u32", i1 false, i1 false}
!85 = !{ptr @__bpf_trace_tp_map_add_device_randomness, !1, !"__bpf_trace_tp_map_add_device_randomness", i1 false, i1 false}
!86 = !{ptr @__bpf_trace_tp_map_mix_pool_bytes, !5, !"__bpf_trace_tp_map_mix_pool_bytes", i1 false, i1 false}
!87 = !{ptr @__bpf_trace_tp_map_mix_pool_bytes_nolock, !9, !"__bpf_trace_tp_map_mix_pool_bytes_nolock", i1 false, i1 false}
!88 = !{ptr @__bpf_trace_tp_map_credit_entropy_bits, !13, !"__bpf_trace_tp_map_credit_entropy_bits", i1 false, i1 false}
!89 = !{ptr @__bpf_trace_tp_map_debit_entropy, !17, !"__bpf_trace_tp_map_debit_entropy", i1 false, i1 false}
!90 = !{ptr @__bpf_trace_tp_map_add_input_randomness, !21, !"__bpf_trace_tp_map_add_input_randomness", i1 false, i1 false}
!91 = !{ptr @__bpf_trace_tp_map_add_disk_randomness, !25, !"__bpf_trace_tp_map_add_disk_randomness", i1 false, i1 false}
!92 = !{ptr @__bpf_trace_tp_map_get_random_bytes, !29, !"__bpf_trace_tp_map_get_random_bytes", i1 false, i1 false}
!93 = !{ptr @__bpf_trace_tp_map_get_random_bytes_arch, !33, !"__bpf_trace_tp_map_get_random_bytes_arch", i1 false, i1 false}
!94 = !{ptr @__bpf_trace_tp_map_extract_entropy, !37, !"__bpf_trace_tp_map_extract_entropy", i1 false, i1 false}
!95 = !{ptr @__bpf_trace_tp_map_urandom_read, !41, !"__bpf_trace_tp_map_urandom_read", i1 false, i1 false}
!96 = !{ptr @__bpf_trace_tp_map_prandom_u32, !45, !"__bpf_trace_tp_map_prandom_u32", i1 false, i1 false}
!97 = !{ptr @__param_ratelimit_disable, !98, !"__param_ratelimit_disable", i1 false, i1 false}
!98 = !{!"../drivers/char/random.c", i32 486, i32 1}
!99 = !{ptr @__UNIQUE_ID_ratelimit_disabletype339, !98, !"__UNIQUE_ID_ratelimit_disabletype339", i1 false, i1 false}
!100 = !{ptr @__UNIQUE_ID_ratelimit_disable340, !101, !"__UNIQUE_ID_ratelimit_disable340", i1 false, i1 false}
!101 = !{!"../drivers/char/random.c", i32 487, i32 1}
!102 = !{ptr @__setup_parse_trust_cpu, !103, !"__setup_parse_trust_cpu", i1 false, i1 false}
!103 = !{!"../drivers/char/random.c", i32 745, i32 1}
!104 = !{ptr @__ksymtab_add_device_randomness, !105, !"__ksymtab_add_device_randomness", i1 false, i1 false}
!105 = !{!"../drivers/char/random.c", i32 1108, i32 1}
!106 = !{ptr @add_input_randomness.last_value, !107, !"last_value", i1 false, i1 false}
!107 = !{!"../drivers/char/random.c", i32 1172, i32 23}
!108 = !{ptr @__ksymtab_add_input_randomness, !109, !"__ksymtab_add_input_randomness", i1 false, i1 false}
!109 = !{!"../drivers/char/random.c", i32 1183, i32 1}
!110 = !{ptr @__ksymtab_add_interrupt_randomness, !111, !"__ksymtab_add_interrupt_randomness", i1 false, i1 false}
!111 = !{!"../drivers/char/random.c", i32 1270, i32 1}
!112 = !{ptr @__ksymtab_add_disk_randomness, !113, !"__ksymtab_add_disk_randomness", i1 false, i1 false}
!113 = !{!"../drivers/char/random.c", i32 1281, i32 1}
!114 = !{ptr @get_random_bytes.previous, !115, !"previous", i1 false, i1 false}
!115 = !{!"../drivers/char/random.c", i32 1472, i32 15}
!116 = !{ptr @__func__.get_random_bytes, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/char/random.c", i32 1474, i32 2}
!118 = !{ptr @__ksymtab_get_random_bytes, !119, !"__ksymtab_get_random_bytes", i1 false, i1 false}
!119 = !{!"../drivers/char/random.c", i32 1477, i32 1}
!120 = !{ptr @.str, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/char/random.c", i32 1545, i32 9}
!122 = !{ptr @__ksymtab_wait_for_random_bytes, !123, !"__ksymtab_wait_for_random_bytes", i1 false, i1 false}
!123 = !{!"../drivers/char/random.c", i32 1554, i32 1}
!124 = !{ptr @__ksymtab_rng_is_initialized, !125, !"__ksymtab_rng_is_initialized", i1 false, i1 false}
!125 = !{!"../drivers/char/random.c", i32 1569, i32 1}
!126 = !{ptr @__ksymtab_add_random_ready_callback, !127, !"__ksymtab_add_random_ready_callback", i1 false, i1 false}
!127 = !{!"../drivers/char/random.c", i32 1608, i32 1}
!128 = !{ptr @__ksymtab_del_random_ready_callback, !129, !"__ksymtab_del_random_ready_callback", i1 false, i1 false}
!129 = !{!"../drivers/char/random.c", i32 1627, i32 1}
!130 = !{ptr @__ksymtab_get_random_bytes_arch, !131, !"__ksymtab_get_random_bytes_arch", i1 false, i1 false}
!131 = !{!"../drivers/char/random.c", i32 1661, i32 1}
!132 = !{ptr @random_fops, !133, !"random_fops", i1 false, i1 false}
!133 = !{!"../drivers/char/random.c", i32 1882, i32 30}
!134 = !{ptr @urandom_fops, !135, !"urandom_fops", i1 false, i1 false}
!135 = !{!"../drivers/char/random.c", i32 1892, i32 30}
!136 = !{ptr @.str.1, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/char/random.c", i32 1901, i32 1}
!138 = !{ptr @event_enter__getrandom, !137, !"event_enter__getrandom", i1 false, i1 false}
!139 = !{ptr @__event_enter__getrandom, !137, !"__event_enter__getrandom", i1 false, i1 false}
!140 = !{ptr @.str.2, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @event_exit__getrandom, !137, !"event_exit__getrandom", i1 false, i1 false}
!142 = !{ptr @__event_exit__getrandom, !137, !"__event_exit__getrandom", i1 false, i1 false}
!143 = !{ptr @.str.3, !137, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @__syscall_meta__getrandom, !137, !"__syscall_meta__getrandom", i1 false, i1 false}
!145 = !{ptr @__p_syscall_meta__getrandom, !137, !"__p_syscall_meta__getrandom", i1 false, i1 false}
!146 = !{ptr @__initcall__kmod_random__377_2070_random_sysctls_init6, !147, !"__initcall__kmod_random__377_2070_random_sysctls_init6", i1 false, i1 false}
!147 = !{!"../drivers/char/random.c", i32 2070, i32 1}
!148 = !{ptr @.str.4, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/char/random.c", i32 2091, i32 16}
!150 = !{ptr @batched_entropy_u64, !151, !"batched_entropy_u64", i1 false, i1 false}
!151 = !{!"../drivers/char/random.c", i32 2090, i32 8}
!152 = !{ptr @get_random_u64.previous, !153, !"previous", i1 false, i1 false}
!153 = !{!"../drivers/char/random.c", i32 2099, i32 15}
!154 = !{ptr @__func__.get_random_u64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/char/random.c", i32 2101, i32 2}
!156 = !{ptr @__ksymtab_get_random_u64, !157, !"__ksymtab_get_random_u64", i1 false, i1 false}
!157 = !{!"../drivers/char/random.c", i32 2113, i32 1}
!158 = !{ptr @.str.5, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/char/random.c", i32 2116, i32 16}
!160 = !{ptr @batched_entropy_u32, !161, !"batched_entropy_u32", i1 false, i1 false}
!161 = !{!"../drivers/char/random.c", i32 2115, i32 8}
!162 = !{ptr @get_random_u32.previous, !163, !"previous", i1 false, i1 false}
!163 = !{!"../drivers/char/random.c", i32 2123, i32 15}
!164 = !{ptr @__func__.get_random_u32, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/char/random.c", i32 2125, i32 2}
!166 = !{ptr @__ksymtab_get_random_u32, !167, !"__ksymtab_get_random_u32", i1 false, i1 false}
!167 = !{!"../drivers/char/random.c", i32 2137, i32 1}
!168 = !{ptr @__ksymtab_add_hwgenerator_randomness, !169, !"__ksymtab_add_hwgenerator_randomness", i1 false, i1 false}
!169 = !{!"../drivers/char/random.c", i32 2223, i32 1}
!170 = !{ptr @__ksymtab_add_bootloader_randomness, !171, !"__ksymtab_add_bootloader_randomness", i1 false, i1 false}
!171 = !{!"../drivers/char/random.c", i32 2237, i32 1}
!172 = !{ptr @ratelimit_disable, !173, !"ratelimit_disable", i1 false, i1 false}
!173 = !{!"../drivers/char/random.c", i32 484, i32 12}
!174 = !{ptr @__pcpu_unique_irq_randomness, !175, !"__pcpu_unique_irq_randomness", i1 false, i1 false}
!175 = !{!"../drivers/char/random.c", i32 1185, i32 8}
!176 = !{ptr @irq_randomness, !175, !"irq_randomness", i1 false, i1 false}
!177 = !{ptr @__pcpu_unique_batched_entropy_u64, !151, !"__pcpu_unique_batched_entropy_u64", i1 false, i1 false}
!178 = !{ptr @__pcpu_unique_batched_entropy_u32, !161, !"__pcpu_unique_batched_entropy_u32", i1 false, i1 false}
!179 = !{ptr @__tpstrtab_add_device_randomness, !1, !"__tpstrtab_add_device_randomness", i1 false, i1 false}
!180 = !{ptr @__tpstrtab_mix_pool_bytes, !5, !"__tpstrtab_mix_pool_bytes", i1 false, i1 false}
!181 = !{ptr @__tpstrtab_mix_pool_bytes_nolock, !9, !"__tpstrtab_mix_pool_bytes_nolock", i1 false, i1 false}
!182 = !{ptr @__tpstrtab_credit_entropy_bits, !13, !"__tpstrtab_credit_entropy_bits", i1 false, i1 false}
!183 = !{ptr @__tpstrtab_debit_entropy, !17, !"__tpstrtab_debit_entropy", i1 false, i1 false}
!184 = !{ptr @__tpstrtab_add_input_randomness, !21, !"__tpstrtab_add_input_randomness", i1 false, i1 false}
!185 = !{ptr @__tpstrtab_add_disk_randomness, !25, !"__tpstrtab_add_disk_randomness", i1 false, i1 false}
!186 = !{ptr @__tpstrtab_get_random_bytes, !29, !"__tpstrtab_get_random_bytes", i1 false, i1 false}
!187 = !{ptr @__tpstrtab_get_random_bytes_arch, !33, !"__tpstrtab_get_random_bytes_arch", i1 false, i1 false}
!188 = !{ptr @__tpstrtab_extract_entropy, !37, !"__tpstrtab_extract_entropy", i1 false, i1 false}
!189 = !{ptr @__tpstrtab_urandom_read, !41, !"__tpstrtab_urandom_read", i1 false, i1 false}
!190 = !{ptr @__tpstrtab_prandom_u32, !45, !"__tpstrtab_prandom_u32", i1 false, i1 false}
!191 = !{ptr @str__random__trace_system_name, !192, !"str__random__trace_system_name", i1 false, i1 false}
!192 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!193 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @trace_event_fields_add_device_randomness, !1, !"trace_event_fields_add_device_randomness", i1 false, i1 false}
!198 = !{ptr @trace_event_type_funcs_add_device_randomness, !1, !"trace_event_type_funcs_add_device_randomness", i1 false, i1 false}
!199 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @print_fmt_add_device_randomness, !1, !"print_fmt_add_device_randomness", i1 false, i1 false}
!201 = !{ptr @trace_event_fields_random__mix_pool_bytes, !52, !"trace_event_fields_random__mix_pool_bytes", i1 false, i1 false}
!202 = !{ptr @trace_event_type_funcs_random__mix_pool_bytes, !52, !"trace_event_type_funcs_random__mix_pool_bytes", i1 false, i1 false}
!203 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @print_fmt_random__mix_pool_bytes, !52, !"print_fmt_random__mix_pool_bytes", i1 false, i1 false}
!205 = !{ptr @.str.12, !13, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.13, !13, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @trace_event_fields_credit_entropy_bits, !13, !"trace_event_fields_credit_entropy_bits", i1 false, i1 false}
!208 = !{ptr @trace_event_type_funcs_credit_entropy_bits, !13, !"trace_event_type_funcs_credit_entropy_bits", i1 false, i1 false}
!209 = !{ptr @.str.14, !13, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @print_fmt_credit_entropy_bits, !13, !"print_fmt_credit_entropy_bits", i1 false, i1 false}
!211 = !{ptr @.str.15, !17, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @trace_event_fields_debit_entropy, !17, !"trace_event_fields_debit_entropy", i1 false, i1 false}
!213 = !{ptr @trace_event_type_funcs_debit_entropy, !17, !"trace_event_type_funcs_debit_entropy", i1 false, i1 false}
!214 = !{ptr @.str.16, !17, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @print_fmt_debit_entropy, !17, !"print_fmt_debit_entropy", i1 false, i1 false}
!216 = !{ptr @.str.17, !21, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @trace_event_fields_add_input_randomness, !21, !"trace_event_fields_add_input_randomness", i1 false, i1 false}
!218 = !{ptr @trace_event_type_funcs_add_input_randomness, !21, !"trace_event_type_funcs_add_input_randomness", i1 false, i1 false}
!219 = !{ptr @.str.18, !21, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @print_fmt_add_input_randomness, !21, !"print_fmt_add_input_randomness", i1 false, i1 false}
!221 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.20, !25, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @trace_event_fields_add_disk_randomness, !25, !"trace_event_fields_add_disk_randomness", i1 false, i1 false}
!224 = !{ptr @trace_event_type_funcs_add_disk_randomness, !25, !"trace_event_type_funcs_add_disk_randomness", i1 false, i1 false}
!225 = !{ptr @.str.21, !25, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @print_fmt_add_disk_randomness, !25, !"print_fmt_add_disk_randomness", i1 false, i1 false}
!227 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @trace_event_fields_random__get_random_bytes, !70, !"trace_event_fields_random__get_random_bytes", i1 false, i1 false}
!229 = !{ptr @trace_event_type_funcs_random__get_random_bytes, !70, !"trace_event_type_funcs_random__get_random_bytes", i1 false, i1 false}
!230 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @print_fmt_random__get_random_bytes, !70, !"print_fmt_random__get_random_bytes", i1 false, i1 false}
!232 = !{ptr @trace_event_fields_random__extract_entropy, !76, !"trace_event_fields_random__extract_entropy", i1 false, i1 false}
!233 = !{ptr @trace_event_type_funcs_random__extract_entropy, !76, !"trace_event_type_funcs_random__extract_entropy", i1 false, i1 false}
!234 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @print_fmt_random__extract_entropy, !76, !"print_fmt_random__extract_entropy", i1 false, i1 false}
!236 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @trace_event_fields_urandom_read, !41, !"trace_event_fields_urandom_read", i1 false, i1 false}
!240 = !{ptr @trace_event_type_funcs_urandom_read, !41, !"trace_event_type_funcs_urandom_read", i1 false, i1 false}
!241 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @print_fmt_urandom_read, !41, !"print_fmt_urandom_read", i1 false, i1 false}
!243 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @trace_event_fields_prandom_u32, !45, !"trace_event_fields_prandom_u32", i1 false, i1 false}
!246 = !{ptr @trace_event_type_funcs_prandom_u32, !45, !"trace_event_type_funcs_prandom_u32", i1 false, i1 false}
!247 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @print_fmt_prandom_u32, !45, !"print_fmt_prandom_u32", i1 false, i1 false}
!249 = !{ptr @__param_str_ratelimit_disable, !98, !"__param_str_ratelimit_disable", i1 false, i1 false}
!250 = !{ptr @__setup_str_parse_trust_cpu, !103, !"__setup_str_parse_trust_cpu", i1 false, i1 false}
!251 = !{ptr @trust_cpu, !252, !"trust_cpu", i1 false, i1 false}
!252 = !{!"../drivers/char/random.c", i32 740, i32 13}
!253 = !{ptr @crng_init, !254, !"crng_init", i1 false, i1 false}
!254 = !{!"../drivers/char/random.c", i32 467, i32 12}
!255 = !{ptr @crng_slow_load.lfsr, !256, !"lfsr", i1 false, i1 false}
!256 = !{!"../drivers/char/random.c", i32 925, i32 12}
!257 = !{ptr @.str.32, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/char/random.c", i32 452, i32 10}
!259 = !{ptr @primary_crng, !260, !"primary_crng", i1 false, i1 false}
!260 = !{!"../drivers/char/random.c", i32 451, i32 26}
!261 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!262 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!263 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!264 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!265 = distinct !{null, !266, !"__already_done", i1 false, i1 false}
!266 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!267 = !{ptr @.str.36, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.37, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/char/random.c", i32 504, i32 10}
!270 = !{ptr @input_pool, !271, !"input_pool", i1 false, i1 false}
!271 = !{!"../drivers/char/random.c", i32 503, i32 3}
!272 = !{ptr @input_pool_data, !273, !"input_pool_data", i1 false, i1 false}
!273 = !{!"../drivers/char/random.c", i32 496, i32 12}
!274 = !{ptr @twist_table, !275, !"twist_table", i1 false, i1 false}
!275 = !{!"../drivers/char/random.c", i32 512, i32 18}
!276 = !{ptr @input_timer_state, !277, !"input_timer_state", i1 false, i1 false}
!277 = !{!"../drivers/char/random.c", i32 1110, i32 32}
!278 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!279 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!280 = distinct !{null, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!282 = !{ptr @.str.39, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/char/random.c", i32 903, i32 3}
!284 = !{ptr @.str.40, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @crng_fast_load._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @crng_fast_load._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @crng_init_cnt, !288, !"crng_init_cnt", i1 false, i1 false}
!288 = !{!"../drivers/char/random.c", i32 470, i32 12}
!289 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!290 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!291 = !{ptr @.str.41, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/char/random.c", i32 693, i32 3}
!293 = !{ptr @.str.42, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @credit_entropy_bits._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @credit_entropy_bits._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!297 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!298 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!299 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!300 = !{ptr @.str.43, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/char/random.c", i32 1305, i32 3}
!302 = !{ptr @.str.44, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @account._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @account._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!306 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!307 = !{ptr @fasync, !308, !"fasync", i1 false, i1 false}
!308 = !{!"../drivers/char/random.c", i32 440, i32 30}
!309 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!310 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!311 = !{ptr @__func__._warn_unseeded_randomness, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/char/random.c", i32 1434, i32 6}
!313 = !{ptr @.str.45, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/char/random.c", i32 1435, i32 3}
!315 = !{ptr @_warn_unseeded_randomness._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @_warn_unseeded_randomness._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!318 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!319 = !{ptr @.str.46, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/char/random.c", i32 727, i32 8}
!321 = !{ptr @crng_init_wait, !320, !"crng_init_wait", i1 false, i1 false}
!322 = !{ptr @try_to_generate_entropy.__key, !323, !"__key", i1 false, i1 false}
!323 = !{!"../drivers/char/random.c", i32 1514, i32 2}
!324 = !{ptr @.str.47, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.48, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/char/random.c", i32 442, i32 8}
!327 = !{ptr @random_ready_list_lock, !326, !"random_ready_list_lock", i1 false, i1 false}
!328 = !{ptr @random_ready_list, !329, !"random_ready_list", i1 false, i1 false}
!329 = !{!"../drivers/char/random.c", i32 443, i32 8}
!330 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!331 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!332 = distinct !{null, !333, !"crng_need_final_init", i1 false, i1 false}
!333 = !{!"../drivers/char/random.c", i32 468, i32 13}
!334 = !{ptr @.str.49, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/char/random.c", i32 819, i32 2}
!336 = !{ptr @.str.50, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @crng_finalize_init._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @crng_finalize_init._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.52, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/char/random.c", i32 821, i32 3}
!341 = !{ptr @crng_finalize_init._entry.51, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @crng_finalize_init._entry_ptr.53, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.55, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/char/random.c", i32 826, i32 3}
!345 = !{ptr @crng_finalize_init._entry.54, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @crng_finalize_init._entry_ptr.56, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.57, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/char/random.c", i32 798, i32 3}
!349 = !{ptr @.str.58, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @crng_initialize_primary._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @crng_initialize_primary._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.59, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../include/linux/random.h", i32 148, i32 2}
!354 = !{ptr @crng_global_init_time, !355, !"crng_global_init_time", i1 false, i1 false}
!355 = !{!"../drivers/char/random.c", i32 471, i32 22}
!356 = !{ptr @.str.60, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/char/random.c", i32 482, i32 2}
!358 = !{ptr @urandom_warning, !359, !"urandom_warning", i1 false, i1 false}
!359 = !{!"../drivers/char/random.c", i32 481, i32 31}
!360 = !{ptr @.str.61, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/char/random.c", i32 480, i32 2}
!362 = !{ptr @unseeded_warning, !363, !"unseeded_warning", i1 false, i1 false}
!363 = !{!"../drivers/char/random.c", i32 479, i32 31}
!364 = distinct !{null, !365, !"__already_done", i1 false, i1 false}
!365 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!366 = !{ptr @.str.62, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.63, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!369 = !{ptr @.str.64, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!371 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!372 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!373 = !{ptr @urandom_read.maxwarn, !374, !"maxwarn", i1 false, i1 false}
!374 = !{!"../drivers/char/random.c", i32 1741, i32 13}
!375 = !{ptr @__func__.urandom_read, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/char/random.c", i32 1745, i32 7}
!377 = !{ptr @.str.65, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/char/random.c", i32 1746, i32 4}
!379 = !{ptr @urandom_read._entry, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @urandom_read._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @types__getrandom, !137, !"types__getrandom", i1 false, i1 false}
!384 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @args__getrandom, !137, !"args__getrandom", i1 false, i1 false}
!388 = !{ptr @.str.71, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/char/random.c", i32 2067, i32 2}
!390 = !{ptr @.str.72, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.73, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/char/random.c", i32 2000, i32 15}
!393 = !{ptr @.str.74, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/char/random.c", i32 2007, i32 15}
!395 = !{ptr @.str.75, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/char/random.c", i32 2014, i32 15}
!397 = !{ptr @.str.76, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/char/random.c", i32 2023, i32 15}
!399 = !{ptr @.str.77, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/char/random.c", i32 2030, i32 15}
!401 = !{ptr @.str.78, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/char/random.c", i32 2037, i32 15}
!403 = !{ptr @random_table, !404, !"random_table", i1 false, i1 false}
!404 = !{!"../drivers/char/random.c", i32 1998, i32 25}
!405 = !{ptr @sysctl_poolsize, !406, !"sysctl_poolsize", i1 false, i1 false}
!406 = !{!"../drivers/char/random.c", i32 1997, i32 12}
!407 = !{ptr @min_write_thresh, !408, !"min_write_thresh", i1 false, i1 false}
!408 = !{!"../drivers/char/random.c", i32 1939, i32 12}
!409 = !{ptr @max_write_thresh, !410, !"max_write_thresh", i1 false, i1 false}
!410 = !{!"../drivers/char/random.c", i32 1940, i32 12}
!411 = !{ptr @random_min_urandom_seed, !412, !"random_min_urandom_seed", i1 false, i1 false}
!412 = !{!"../drivers/char/random.c", i32 1941, i32 12}
!413 = !{ptr @sysctl_bootid, !414, !"sysctl_bootid", i1 false, i1 false}
!414 = !{!"../drivers/char/random.c", i32 1942, i32 13}
!415 = !{ptr @.str.79, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/char/random.c", i32 1964, i32 10}
!417 = !{ptr @proc_do_uuid.bootid_spinlock, !416, !"bootid_spinlock", i1 false, i1 false}
!418 = !{ptr @.str.80, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/char/random.c", i32 1972, i32 15}
!420 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!421 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!422 = !{ptr @random_write_wakeup_bits, !423, !"random_write_wakeup_bits", i1 false, i1 false}
!423 = !{!"../drivers/char/random.c", i32 366, i32 12}
!424 = !{ptr @.str.81, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/char/random.c", i32 439, i32 8}
!426 = !{ptr @random_write_wait, !425, !"random_write_wait", i1 false, i1 false}
!427 = !{!"sp"}
!428 = !{i32 1, !"wchar_size", i32 2}
!429 = !{i32 1, !"min_enum_size", i32 4}
!430 = !{i32 8, !"branch-target-enforcement", i32 0}
!431 = !{i32 8, !"sign-return-address", i32 0}
!432 = !{i32 8, !"sign-return-address-all", i32 0}
!433 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!434 = !{i32 7, !"uwtable", i32 1}
!435 = !{i32 7, !"frame-pointer", i32 2}
!436 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!437 = !{!"branch_weights", i32 2000, i32 1}
!438 = !{!"branch_weights", i32 1, i32 2000}
!439 = !{!"auto-init"}
!440 = !{i64 880682, i64 880743}
!441 = !{i64 883414}
!442 = !{i64 883699}
!443 = !{i64 2148299817, i64 2148299822, i64 2148299835, i64 2148299879, i64 2148299913, i64 2148299934}
!444 = !{i64 2155290854}
!445 = !{i64 2155291077}
!446 = !{i64 2149322497}
!447 = !{i64 2149323533}
!448 = !{i32 0, i32 33}
!449 = !{i64 2155377321}
!450 = !{i64 2155377544}
!451 = !{i64 2156223881}
!452 = !{i64 995916, i64 995937, i64 995960, i64 995979, i64 995998}
!453 = !{i64 2156224297}
!454 = !{i64 2155398032}
!455 = !{i64 2155398263}
!456 = !{i64 2149260508}
!457 = !{i64 2155431108}
!458 = !{i64 2155431333}
!459 = !{i8 0, i8 2}
!460 = !{i64 5420515}
!461 = !{i64 5420712}
!462 = !{i64 2152905945}
!463 = !{i64 2156351411, i64 2156351691, i64 2156352025, i64 2156352359}
!464 = !{i64 2156363633, i64 2156363913, i64 2156364247, i64 2156364581}
!465 = !{i64 2156376586, i64 2156376866, i64 2156377200, i64 2156377534}
!466 = !{i64 2156388753, i64 2156389033, i64 2156389367, i64 2156389701}
!467 = !{i64 2156393992}
!468 = !{i64 993192, i64 993209, i64 993233, i64 993259, i64 993277}
!469 = !{i64 2156394335}
!470 = !{i64 2155327809}
!471 = !{i64 2155328032}
!472 = !{i64 2155344880}
!473 = !{i64 2155345127}
!474 = !{i64 2156299605, i64 2156300092, i64 2156299642, i64 2156299698, i64 2156299732, i64 2156299756, i64 2156299797, i64 2156299818, i64 2156299846, i64 2156299880}
!475 = !{i64 2156309404}
!476 = !{i64 2156309820}
!477 = !{i64 2155448086}
!478 = !{i64 2155448329}
!479 = !{i64 2155361212}
!480 = !{i64 2155361421}
!481 = !{i64 2155414573}
!482 = !{i64 2155414788}
!483 = !{i64 2152925641, i64 2152925666}
!484 = !{i64 2155468843}
!485 = !{i64 2155469092}
!486 = !{i64 2152924960, i64 2152924985}
!487 = !{i64 2155307357}
!488 = !{i64 2155307566}
