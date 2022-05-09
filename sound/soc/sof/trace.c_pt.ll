; ModuleID = '/llk/IR_all_yes/sound/soc/sof/trace.c_pt.bc'
source_filename = "../sound/soc/sof/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_sof_init_trace\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_init_trace\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_init_trace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_init_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_init_trace\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_init_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_trace_notify_for_error\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_trace_notify_for_error\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_trace_notify_for_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_trace_notify_for_error:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_trace_notify_for_error\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_trace_notify_for_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_release_trace\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_release_trace\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_release_trace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_release_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_release_trace\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_release_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_sof_free_trace\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_free_trace\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_free_trace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_free_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_free_trace\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_free_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_ipc_dma_trace_params_ext = type { %struct.sof_ipc_cmd_hdr, %struct.sof_ipc_host_buffer, i32, i64, [8 x i32] }
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_host_buffer = type { %struct.sof_ipc_hdr, i32, i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.snd_sof_dfsentry = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.93 }
%union.anon.93 = type { ptr }
%struct.sof_ipc_dma_trace_posn = type { %struct.sof_ipc_reply, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sof_ipc_trace_filter_elem = type { i32, i32 }
%struct.sof_ipc_trace_filter = type { %struct.sof_ipc_cmd_hdr, i32, [8 x i32], [0 x %struct.sof_ipc_trace_filter_elem] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@snd_sof_init_trace_ipc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: fail in snd_sof_dma_trace_init %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_sof_init_trace_ipc\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/soc/sof/trace.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_sof_init_trace_ipc._entry_ptr = internal global ptr @snd_sof_init_trace_ipc._entry, section ".printk_index", align 4
@snd_sof_init_trace_ipc.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_sof\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: stream_tag: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_sof_init_trace_ipc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error: can't set params for DMA for trace %d\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_sof_init_trace_ipc._entry_ptr.9 = internal global ptr @snd_sof_init_trace_ipc._entry.7, section ".printk_index", align 4
@snd_sof_init_trace_ipc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 435, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: snd_sof_dma_trace_trigger: start: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_sof_init_trace_ipc._entry_ptr.12 = internal global ptr @snd_sof_init_trace_ipc._entry.10, section ".printk_index", align 4
@snd_sof_init_trace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: can't alloc page table for trace %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_sof_init_trace\00", [45 x i8] zeroinitializer }, align 32
@snd_sof_init_trace._entry_ptr = internal global ptr @snd_sof_init_trace._entry, section ".printk_index", align 4
@snd_sof_init_trace._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 472, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: can't alloc buffer for trace %d\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_sof_init_trace._entry_ptr.17 = internal global ptr @snd_sof_init_trace._entry.15, section ".printk_index", align 4
@snd_sof_init_trace.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: dma_trace_pages: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_sof_init_trace.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sdev->trace_sleep\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_snd_sof_init_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_init_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_init_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_init_trace to i32), ptr @__kstrtab_snd_sof_init_trace, ptr @__kstrtabns_snd_sof_init_trace }, section "___ksymtab+snd_sof_init_trace", align 4
@snd_sof_trace_update_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"error: DSP trace buffer overflow %u bytes. Total messages %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_trace_update_pos\00", [39 x i8] zeroinitializer }, align 32
@snd_sof_trace_update_pos._entry_ptr = internal global ptr @snd_sof_trace_update_pos._entry, section ".printk_index", align 4
@__kstrtab_snd_sof_trace_notify_for_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_trace_notify_for_error = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_trace_notify_for_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_trace_notify_for_error to i32), ptr @__kstrtab_snd_sof_trace_notify_for_error, ptr @__kstrtabns_snd_sof_trace_notify_for_error }, section "___ksymtab+snd_sof_trace_notify_for_error", align 4
@snd_sof_release_trace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: snd_sof_dma_trace_trigger: stop: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sof_release_trace\00", [42 x i8] zeroinitializer }, align 32
@snd_sof_release_trace._entry_ptr = internal global ptr @snd_sof_release_trace._entry, section ".printk_index", align 4
@snd_sof_release_trace._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 567, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA_TRACE_FREE failed with error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_sof_release_trace._entry_ptr.26 = internal global ptr @snd_sof_release_trace._entry.24, section ".printk_index", align 4
@snd_sof_release_trace._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 573, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: fail in snd_sof_dma_trace_release %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_sof_release_trace._entry_ptr.29 = internal global ptr @snd_sof_release_trace._entry.27, section ".printk_index", align 4
@__kstrtab_snd_sof_release_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_release_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_release_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_release_trace to i32), ptr @__kstrtab_snd_sof_release_trace, ptr @__kstrtabns_snd_sof_release_trace }, section "___ksymtab+snd_sof_release_trace", align 4
@__kstrtab_snd_sof_free_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_free_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_free_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_free_trace to i32), ptr @__kstrtab_snd_sof_free_trace, ptr @__kstrtabns_snd_sof_free_trace }, section "___ksymtab+snd_sof_free_trace", align 4
@trace_debugfs_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error: fail in %s, %d\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"trace_debugfs_create\00", [43 x i8] zeroinitializer }, align 32
@trace_debugfs_create._entry_ptr = internal global ptr @trace_debugfs_create._entry, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@sof_dfs_trace_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @sof_dfsentry_trace_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr @sof_dfsentry_trace_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@sof_dfs_trace_filter_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @sof_dfsentry_trace_filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sof_dfsentry_trace_filter_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s too long input, %zu > %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sof_dfsentry_trace_filter_write\00", [32 x i8] zeroinitializer }, align 32
@sof_dfsentry_trace_filter_write._entry_ptr = internal global ptr @sof_dfsentry_trace_filter_write._entry, section ".printk_index", align 4
@sof_dfsentry_trace_filter_write._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: fail in trace_filter_parse, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_dfsentry_trace_filter_write._entry_ptr.38 = internal global ptr @sof_dfsentry_trace_filter_write._entry.36, section ".printk_index", align 4
@sof_dfsentry_trace_filter_write._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error: fail in sof_ipc_trace_update_filter %d\0A\00", [49 x i8] zeroinitializer }, align 32
@sof_dfsentry_trace_filter_write._entry_ptr.41 = internal global ptr @sof_dfsentry_trace_filter_write._entry.39, section ".printk_index", align 4
@trace_filter_parse.entry_delimiter = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c";\00", [30 x i8] zeroinitializer }, align 32
@trace_filter_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: %s failed for '%s', %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trace_filter_parse\00", [45 x i8] zeroinitializer }, align 32
@trace_filter_parse._entry_ptr = internal global ptr @trace_filter_parse._entry, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %n\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" %d %x %d %d %n\00", [16 x i8] zeroinitializer }, align 32
@trace_filter_parse_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: invalid trace filter entry '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trace_filter_parse_entry\00", [39 x i8] zeroinitializer }, align 32
@trace_filter_parse_entry._entry_ptr = internal global ptr @trace_filter_parse_entry._entry, section ".printk_index", align 4
@sof_ipc_trace_update_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: enabling device failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sof_ipc_trace_update_filter\00", [36 x i8] zeroinitializer }, align 32
@sof_ipc_trace_update_filter._entry_ptr = internal global ptr @sof_ipc_trace_update_filter._entry, section ".printk_index", align 4
@sof_dfsentry_trace_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: trace IO error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof_dfsentry_trace_read\00", [40 x i8] zeroinitializer }, align 32
@sof_dfsentry_trace_read._entry_ptr = internal global ptr @sof_dfsentry_trace_read._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 416, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 420, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 427, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 434, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 462, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 471, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 483, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 492, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 520, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 553, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 567, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 572, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 364, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 375, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"sof_dfs_trace_fops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 347, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 227, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant [26 x i8] c"sof_dfs_trace_filter_fops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 210, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 175, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 192, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 199, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"entry_delimiter\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 92, i32 20 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 115, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 47, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 51, i32 21 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 53, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 150, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private constant [25 x i8] c"../sound/soc/sof/trace.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 317, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 230, i32 6 }
@___asan_gen_.236 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 214, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 174, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__ksymtab_snd_sof_free_trace, ptr @__ksymtab_snd_sof_init_trace, ptr @__ksymtab_snd_sof_release_trace, ptr @__ksymtab_snd_sof_trace_notify_for_error, ptr @snd_sof_init_trace._entry, ptr @snd_sof_init_trace._entry.15, ptr @snd_sof_init_trace._entry_ptr, ptr @snd_sof_init_trace._entry_ptr.17, ptr @snd_sof_init_trace_ipc._entry, ptr @snd_sof_init_trace_ipc._entry.10, ptr @snd_sof_init_trace_ipc._entry.7, ptr @snd_sof_init_trace_ipc._entry_ptr, ptr @snd_sof_init_trace_ipc._entry_ptr.12, ptr @snd_sof_init_trace_ipc._entry_ptr.9, ptr @snd_sof_release_trace._entry, ptr @snd_sof_release_trace._entry.24, ptr @snd_sof_release_trace._entry.27, ptr @snd_sof_release_trace._entry_ptr, ptr @snd_sof_release_trace._entry_ptr.26, ptr @snd_sof_release_trace._entry_ptr.29, ptr @snd_sof_trace_update_pos._entry, ptr @snd_sof_trace_update_pos._entry_ptr, ptr @sof_dfsentry_trace_filter_write._entry, ptr @sof_dfsentry_trace_filter_write._entry.36, ptr @sof_dfsentry_trace_filter_write._entry.39, ptr @sof_dfsentry_trace_filter_write._entry_ptr, ptr @sof_dfsentry_trace_filter_write._entry_ptr.38, ptr @sof_dfsentry_trace_filter_write._entry_ptr.41, ptr @sof_dfsentry_trace_read._entry, ptr @sof_dfsentry_trace_read._entry_ptr, ptr @sof_ipc_trace_update_filter._entry, ptr @sof_ipc_trace_update_filter._entry_ptr, ptr @trace_debugfs_create._entry, ptr @trace_debugfs_create._entry_ptr, ptr @trace_filter_parse._entry, ptr @trace_filter_parse._entry_ptr, ptr @trace_filter_parse_entry._entry, ptr @trace_filter_parse_entry._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @snd_sof_init_trace.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @sof_dfs_trace_fops, ptr @.str.33, ptr @sof_dfs_trace_filter_fops, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @trace_filter_parse.entry_delimiter, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_init_trace_ipc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_init_trace_ipc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_init_trace_ipc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_init_trace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_init_trace._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_init_trace.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_trace_update_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_release_trace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_release_trace._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_release_trace._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_debugfs_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dfs_trace_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dfs_trace_filter_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dfsentry_trace_filter_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dfsentry_trace_filter_write._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dfsentry_trace_filter_write._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_filter_parse.entry_delimiter to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_filter_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_filter_parse_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_ipc_trace_update_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dfsentry_trace_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_init_trace_ipc(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.sof_ipc_dma_trace_params_ext, align 4
  %ipc_reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params) #12
  %0 = call ptr @memset(ptr %params, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ipc_reply) #12
  %1 = ptrtoint ptr %ipc_reply to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ipc_reply, align 4, !annotation !132
  %2 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %ipc_reply, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !132
  %4 = getelementptr inbounds %struct.sof_ipc_reply, ptr %ipc_reply, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !132
  %dtrace_is_supported = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 51
  %6 = ptrtoint ptr %dtrace_is_supported to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dtrace_is_supported, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtrace_is_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 52
  %8 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dtrace_is_enabled, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %dma_trace_pages = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 48
  %10 = ptrtoint ptr %dma_trace_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_trace_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %params, i32 0, i32 1
  %abi_version = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 31, i32 5, i32 8
  %12 = ptrtoint ptr %abi_version to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %abi_version, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50360319, i32 %13)
  %cmp = icmp ugt i32 %13, 50360319
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 80, ptr %params, align 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1878851584, ptr %cmd, align 4
  %call = tail call i64 @ktime_get() #12
  %timestamp_ns = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, ptr %params, i32 0, i32 3
  %16 = ptrtoint ptr %timestamp_ns to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %call, ptr %timestamp_ns, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 40, ptr %params, align 4
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1878982656, ptr %cmd, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then5
  %addr = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 47, i32 2
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr, align 4
  %phy_addr = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, ptr %params, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %phy_addr, align 4
  %bytes = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 46, i32 3
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes, align 4
  %size16 = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, ptr %params, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %size16, align 4
  %25 = ptrtoint ptr %dma_trace_pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_trace_pages, align 4
  %pages = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, ptr %params, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pages, align 4
  %stream_tag = getelementptr inbounds %struct.sof_ipc_dma_trace_params_ext, ptr %params, i32 0, i32 2
  %28 = ptrtoint ptr %stream_tag to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %stream_tag, align 4
  %host_offset = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 50
  %29 = ptrtoint ptr %host_offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %host_offset, align 4
  %dtrace_draining = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 54
  %30 = ptrtoint ptr %dtrace_draining to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dtrace_draining, align 1
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %31 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %trace_init.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %36, i32 0, i32 52
  %37 = ptrtoint ptr %trace_init.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trace_init.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end14.do.body24_crit_edge, label %snd_sof_dma_trace_init.exit

if.end14.do.body24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

snd_sof_dma_trace_init.exit:                      ; preds = %if.end14
  %call.i = call i32 %38(ptr noundef %sdev, ptr noundef %stream_tag) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %do.end, label %snd_sof_dma_trace_init.exit.do.body24_crit_edge

snd_sof_dma_trace_init.exit.do.body24_crit_edge:  ; preds = %snd_sof_dma_trace_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

do.end:                                           ; preds = %snd_sof_dma_trace_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str, i32 noundef %call.i) #15
  br label %cleanup

do.body24:                                        ; preds = %snd_sof_dma_trace_init.exit.do.body24_crit_edge, %if.end14.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_init_trace_ipc.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_init_trace_ipc, %if.then29)) #12
          to label %do.end34 [label %if.then29], !srcloc !134

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdev, align 4
  %43 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stream_tag, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_init_trace_ipc.__UNIQUE_ID_ddebug249, ptr noundef %42, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %44) #12
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body24
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %45 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ipc, align 4
  %47 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmd, align 4
  %call37 = call i32 @sof_ipc_tx_message(ptr noundef %46, i32 noundef %48, ptr noundef nonnull %params, i32 noundef 80, ptr noundef nonnull %ipc_reply, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end44

do.end42:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.8, i32 noundef %call37) #15
  br label %trace_release

if.end44:                                         ; preds = %do.end34
  %51 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdata.i, align 4
  %desc.i85 = getelementptr inbounds %struct.snd_sof_pdata, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %desc.i85 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc.i85, align 4
  %ops.i86 = getelementptr inbounds %struct.sof_dev_desc, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %ops.i86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i86, align 4
  %trace_trigger.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %56, i32 0, i32 54
  %57 = ptrtoint ptr %trace_trigger.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %trace_trigger.i, align 4
  %tobool.not.i87 = icmp eq ptr %58, null
  br i1 %tobool.not.i87, label %if.end44.if.end52_crit_edge, label %snd_sof_dma_trace_trigger.exit

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

snd_sof_dma_trace_trigger.exit:                   ; preds = %if.end44
  %call.i88 = call i32 %58(ptr noundef %sdev, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp46 = icmp slt i32 %call.i88, 0
  br i1 %cmp46, label %do.end50, label %snd_sof_dma_trace_trigger.exit.if.end52_crit_edge

snd_sof_dma_trace_trigger.exit.if.end52_crit_edge: ; preds = %snd_sof_dma_trace_trigger.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

do.end50:                                         ; preds = %snd_sof_dma_trace_trigger.exit
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.11, i32 noundef %call.i88) #15
  br label %trace_release

if.end52:                                         ; preds = %snd_sof_dma_trace_trigger.exit.if.end52_crit_edge, %if.end44.if.end52_crit_edge
  %61 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %dtrace_is_enabled, align 1
  br label %cleanup

trace_release:                                    ; preds = %do.end50, %do.end42
  %ret.0 = phi i32 [ %call37, %do.end42 ], [ %call.i88, %do.end50 ]
  %62 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata.i, align 4
  %desc.i92 = getelementptr inbounds %struct.snd_sof_pdata, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %desc.i92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc.i92, align 4
  %ops.i93 = getelementptr inbounds %struct.sof_dev_desc, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %ops.i93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i93, align 4
  %trace_release.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %67, i32 0, i32 53
  %68 = ptrtoint ptr %trace_release.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %trace_release.i, align 4
  %tobool.not.i94 = icmp eq ptr %69, null
  br i1 %tobool.not.i94, label %trace_release.cleanup_crit_edge, label %if.then.i96

trace_release.cleanup_crit_edge:                  ; preds = %trace_release
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i96:                                      ; preds = %trace_release
  call void @__sanitizer_cov_trace_pc() #14
  %call.i95 = call i32 %69(ptr noundef %sdev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i96, %trace_release.cleanup_crit_edge, %if.end52, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end52 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %ret.0, %trace_release.cleanup_crit_edge ], [ %ret.0, %if.then.i96 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ipc_reply) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_tx_message(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_init_trace(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dtrace_is_supported = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 51
  %0 = ptrtoint ptr %dtrace_is_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dtrace_is_supported, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtrace_is_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 52
  %2 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dtrace_is_enabled, align 1
  %3 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev, align 4
  %dmatp = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 47
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %4, i32 noundef 0, i32 noundef 4096, ptr noundef %dmatp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 4
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef %call.i) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dmatb = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 46
  %call.i79 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %6, i32 noundef 0, i32 noundef 65536, ptr noundef %dmatb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp6 = icmp slt i32 %call.i79, 0
  %7 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev, align 4
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16, i32 noundef %call.i79) #15
  br label %page_err

if.end12:                                         ; preds = %if.end3
  %area = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 47, i32 1
  %9 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %area, align 4
  %bytes = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 46, i32 3
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes, align 4
  %call17 = tail call i32 @snd_sof_create_page_table(ptr noundef %8, ptr noundef %dmatb, ptr noundef %10, i32 noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end12.table_err_crit_edge, label %if.end20

if.end12.table_err_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_err

if.end20:                                         ; preds = %if.end12
  %dma_trace_pages = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 48
  %13 = ptrtoint ptr %dma_trace_pages to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call17, ptr %dma_trace_pages, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_init_trace.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_init_trace, %if.then26)) #12
          to label %do.end31 [label %if.then26], !srcloc !134

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  %16 = ptrtoint ptr %dma_trace_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_trace_pages, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_init_trace.__UNIQUE_ID_ddebug250, ptr noundef %15, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, i32 noundef %17) #12
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %if.end20
  %first_boot = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 9
  %18 = ptrtoint ptr %first_boot to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %first_boot, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not = icmp eq i8 %19, 0
  br i1 %tobool32.not, label %do.end31.do.body39_crit_edge, label %if.then33

do.end31.do.body39_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

if.then33:                                        ; preds = %do.end31
  %tobool.not.i = icmp eq ptr %sdev, null
  br i1 %tobool.not.i, label %if.then33.table_err_crit_edge, label %if.end.i

if.then33.table_err_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_err

if.end.i:                                         ; preds = %if.then33
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 44, i32 noundef 3520) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %sdev1.i.i = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %call.i.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %sdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %sdev, ptr %sdev1.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %call.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type.i.i, align 4
  %debugfs_root.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 25
  %24 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debugfs_root.i.i, align 4
  %call2.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 128, ptr noundef %25, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @sof_dfs_trace_filter_fops) #12
  %list.i.i = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %call.i.i.i, i32 0, i32 8
  %dfsentry_list.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 26
  %26 = ptrtoint ptr %dfsentry_list.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dfsentry_list.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %dfsentry_list.i.i, ptr noundef %27) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.end2.i_crit_edge

if.end.i.i.if.end2.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list.i.i, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %call.i.i.i, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dfsentry_list.i.i, ptr %prev3.i.i.i.i, align 4
  %31 = ptrtoint ptr %dfsentry_list.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list.i.i, ptr %dfsentry_list.i.i, align 4
  br label %if.end2.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef -12) #15
  br label %if.end2.i

if.end2.i:                                        ; preds = %do.end.i, %if.end.i.i.i.i, %if.end.i.i.if.end2.i_crit_edge
  %34 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %35, i32 noundef 44, i32 noundef 3520) #12
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.end2.i.table_err_crit_edge, label %trace_debugfs_create.exit

if.end2.i.table_err_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_err

trace_debugfs_create.exit:                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %type.i = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %call.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type.i, align 4
  %area.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 46, i32 1
  %37 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %area.i, align 4
  %39 = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %call.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %39, align 4
  %41 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytes, align 4
  %43 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %call.i.i, align 4
  %sdev9.i = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %call.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %sdev9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %sdev, ptr %sdev9.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 25
  %45 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %debugfs_root.i, align 4
  %call10.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef %46, ptr noundef nonnull %call.i.i, ptr noundef nonnull @sof_dfs_trace_fops) #12
  br label %do.body39

do.body39:                                        ; preds = %trace_debugfs_create.exit, %do.end31.do.body39_crit_edge
  %trace_sleep = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 49
  tail call void @__init_waitqueue_head(ptr noundef %trace_sleep, ptr noundef nonnull @.str.19, ptr noundef nonnull @snd_sof_init_trace.__key) #12
  %call42 = tail call i32 @snd_sof_init_trace_ipc(ptr noundef %sdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.body39.table_err_crit_edge, label %do.body39.cleanup_crit_edge

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body39.table_err_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %table_err

table_err:                                        ; preds = %do.body39.table_err_crit_edge, %if.end2.i.table_err_crit_edge, %if.then33.table_err_crit_edge, %if.end12.table_err_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end12.table_err_crit_edge ], [ %call42, %do.body39.table_err_crit_edge ], [ -12, %if.end2.i.table_err_crit_edge ], [ -22, %if.then33.table_err_crit_edge ]
  %dma_trace_pages46 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 48
  %47 = ptrtoint ptr %dma_trace_pages46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %dma_trace_pages46, align 4
  tail call void @snd_dma_free_pages(ptr noundef %dmatb) #12
  br label %page_err

page_err:                                         ; preds = %table_err, %do.end10
  %ret.1 = phi i32 [ %call.i79, %do.end10 ], [ %ret.0, %table_err ]
  tail call void @snd_dma_free_pages(ptr noundef %dmatp) #12
  br label %cleanup

cleanup:                                          ; preds = %page_err, %do.body39.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.1, %page_err ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_create_page_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_trace_update_pos(ptr noundef %sdev, ptr nocapture noundef readonly %posn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dtrace_is_supported = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 51
  %0 = ptrtoint ptr %dtrace_is_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dtrace_is_supported, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %dtrace_is_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 52
  %2 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dtrace_is_enabled, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %host_offset = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 50
  %4 = ptrtoint ptr %host_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_offset, align 4
  %host_offset2 = getelementptr inbounds %struct.sof_ipc_dma_trace_posn, ptr %posn, i32 0, i32 1
  %6 = ptrtoint ptr %host_offset2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %host_offset2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %if.then3

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %host_offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %host_offset, align 4
  %trace_sleep = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %trace_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %overflow = getelementptr inbounds %struct.sof_ipc_dma_trace_posn, ptr %posn, i32 0, i32 2
  %9 = ptrtoint ptr %overflow to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %overflow, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.not = icmp eq i32 %10, 0
  br i1 %cmp7.not, label %if.end6.return_crit_edge, label %do.end

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 4
  %messages = getelementptr inbounds %struct.sof_ipc_dma_trace_posn, ptr %posn, i32 0, i32 3
  %13 = ptrtoint ptr %messages to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %messages, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %10, i32 noundef %14) #15
  br label %return

return:                                           ; preds = %do.end, %if.end6.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_sof_trace_notify_for_error(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dtrace_is_supported = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 51
  %0 = ptrtoint ptr %dtrace_is_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dtrace_is_supported, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end:                                           ; preds = %entry
  %dtrace_is_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 52
  %2 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dtrace_is_enabled, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dtrace_error = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 53
  %4 = ptrtoint ptr %dtrace_error to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %dtrace_error, align 2
  %trace_sleep = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %trace_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_sof_release_trace(ptr noundef %sdev) #0 align 64 {
entry:
  %hdr = alloca %struct.sof_ipc_cmd_hdr, align 4
  %ipc_reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hdr) #12
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hdr, align 4, !annotation !132
  %1 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ipc_reply) #12
  %3 = ptrtoint ptr %ipc_reply to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ipc_reply, align 4, !annotation !132
  %4 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %ipc_reply, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !132
  %6 = getelementptr inbounds %struct.sof_ipc_reply, ptr %ipc_reply, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !132
  %dtrace_is_supported = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 51
  %8 = ptrtoint ptr %dtrace_is_supported to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dtrace_is_supported, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dtrace_is_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 52
  %10 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dtrace_is_enabled, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %trace_trigger.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 54
  %18 = ptrtoint ptr %trace_trigger.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trace_trigger.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %snd_sof_dma_trace_trigger.exit

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

snd_sof_dma_trace_trigger.exit:                   ; preds = %if.end
  %call.i = tail call i32 %19(ptr noundef %sdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %snd_sof_dma_trace_trigger.exit.if.end3_crit_edge

snd_sof_dma_trace_trigger.exit.if.end3_crit_edge: ; preds = %snd_sof_dma_trace_trigger.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

do.end:                                           ; preds = %snd_sof_dma_trace_trigger.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.22, i32 noundef %call.i) #15
  br label %if.end3

if.end3:                                          ; preds = %do.end, %snd_sof_dma_trace_trigger.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %abi_version = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 31, i32 5, i32 8
  %22 = ptrtoint ptr %abi_version to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %abi_version, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50413567, i32 %23)
  %cmp4 = icmp ugt i32 %23, 50413567
  br i1 %cmp4, label %if.then5, label %if.end3.if.end16_crit_edge

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then5:                                         ; preds = %if.end3
  %24 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %hdr, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1878720512, ptr %1, align 4
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %26 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipc, align 4
  %call8 = call i32 @sof_ipc_tx_message(ptr noundef %27, i32 noundef -1878720512, ptr noundef nonnull %hdr, i32 noundef 8, ptr noundef nonnull %ipc_reply, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.then5.if.end16_crit_edge

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.25, i32 noundef %call8) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then5.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %30 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata.i, align 4
  %desc.i47 = getelementptr inbounds %struct.snd_sof_pdata, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %desc.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc.i47, align 4
  %ops.i48 = getelementptr inbounds %struct.sof_dev_desc, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %ops.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i48, align 4
  %trace_release.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %35, i32 0, i32 53
  %36 = ptrtoint ptr %trace_release.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trace_release.i, align 4
  %tobool.not.i49 = icmp eq ptr %37, null
  br i1 %tobool.not.i49, label %if.end16.if.end24_crit_edge, label %snd_sof_dma_trace_release.exit

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

snd_sof_dma_trace_release.exit:                   ; preds = %if.end16
  %call.i50 = call i32 %37(ptr noundef %sdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp18 = icmp slt i32 %call.i50, 0
  br i1 %cmp18, label %do.end22, label %snd_sof_dma_trace_release.exit.if.end24_crit_edge

snd_sof_dma_trace_release.exit.if.end24_crit_edge: ; preds = %snd_sof_dma_trace_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.end22:                                         ; preds = %snd_sof_dma_trace_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.28, i32 noundef %call.i50) #15
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %snd_sof_dma_trace_release.exit.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %40 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %dtrace_is_enabled, align 1
  %dtrace_draining = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 54
  %41 = ptrtoint ptr %dtrace_draining to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %dtrace_draining, align 1
  %trace_sleep = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 49
  call void @__wake_up(ptr noundef %trace_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ipc_reply) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hdr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_sof_free_trace(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dtrace_is_supported = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 51
  %0 = ptrtoint ptr %dtrace_is_supported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dtrace_is_supported, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end:                                           ; preds = %entry
  tail call void @snd_sof_release_trace(ptr noundef %sdev)
  %dma_trace_pages = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 48
  %2 = ptrtoint ptr %dma_trace_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_trace_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dmatb = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 46
  tail call void @snd_dma_free_pages(ptr noundef %dmatb) #12
  %dmatp = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 47
  tail call void @snd_dma_free_pages(ptr noundef %dmatp) #12
  %4 = ptrtoint ptr %dma_trace_pages to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dma_trace_pages, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_dfsentry_trace_filter_write(ptr nocapture noundef readonly %file, ptr noundef %from, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %reply.i = alloca %struct.sof_ipc_reply, align 4
  %uuid_id.i.i = alloca i32, align 4
  %log_level.i.i = alloca i32, align 4
  %pipe_id.i.i = alloca i32, align 4
  %comp_id.i.i = alloca i32, align 4
  %read.i.i = alloca i32, align 4
  %string.addr.i = alloca ptr, align 4
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sdev1 = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %count)
  %cmp = icmp ugt i32 %count, 1024
  br i1 %cmp, label %do.end, label %if.end8.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %count, i32 noundef 1024) #15
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %add = add nuw nsw i32 %count, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end3

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end8.i
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %count
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %call4 = call i32 @simple_write_to_buffer(ptr noundef nonnull %call9.i, i32 noundef %count, ptr noundef nonnull %pos, ptr noundef %from, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.error_crit_edge, label %if.end7

if.end3.error_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end7:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %string.addr.i)
  %8 = ptrtoint ptr %string.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %string.addr.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end7
  %capacity.044.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end7 ]
  %entry1.043.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call9.i, %if.end7 ]
  %add.i = add i32 %capacity.044.i, 4
  %add.ptr.i = getelementptr i8, ptr %entry1.043.i, i32 1
  %call.i = call ptr @strchr(ptr noundef %add.ptr.i, i32 noundef 59) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8.i.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end8.i.i:                                      ; preds = %while.body.i
  %mul.i = shl i32 %add.i, 3
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #16
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end8.i.i.do.end13_crit_edge, label %if.end8.i.i.while.cond4.i_crit_edge

if.end8.i.i.while.cond4.i_crit_edge:              ; preds = %if.end8.i.i
  br label %while.cond4.i

if.end8.i.i.do.end13_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

while.cond4.i:                                    ; preds = %trace_filter_parse_entry.exit.i.while.cond4.i_crit_edge, %if.end8.i.i.while.cond4.i_crit_edge
  %cnt.0.i = phi i32 [ %cnt.1.i, %trace_filter_parse_entry.exit.i.while.cond4.i_crit_edge ], [ 0, %if.end8.i.i.while.cond4.i_crit_edge ]
  %call5.i = call ptr @strsep(ptr noundef nonnull %string.addr.i, ptr noundef nonnull @trace_filter_parse.entry_delimiter) #12
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end15, label %while.body7.i

while.body7.i:                                    ; preds = %while.cond4.i
  %call.i.i = call i32 @strlen(ptr noundef nonnull %call5.i) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uuid_id.i.i) #12
  %9 = ptrtoint ptr %uuid_id.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %uuid_id.i.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %log_level.i.i) #12
  %10 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %log_level.i.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i.i) #12
  %11 = ptrtoint ptr %pipe_id.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %pipe_id.i.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i.i) #12
  %12 = ptrtoint ptr %comp_id.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %comp_id.i.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read.i.i) #12
  %13 = ptrtoint ptr %read.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %read.i.i, align 4, !annotation !132
  %call1.i.i55 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.44, ptr noundef nonnull %read.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i55)
  %tobool.not.i.i56 = icmp eq i32 %call1.i.i55, 0
  br i1 %tobool.not.i.i56, label %land.lhs.true.i.i, label %while.body7.i.if.end.i26.i_crit_edge

while.body7.i.if.end.i26.i_crit_edge:             ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i26.i

land.lhs.true.i.i:                                ; preds = %while.body7.i
  %14 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %read.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call.i.i)
  %cmp.i25.i = icmp eq i32 %15, %call.i.i
  br i1 %cmp.i25.i, label %land.lhs.true.i.i.trace_filter_parse_entry.exit.i_crit_edge, label %land.lhs.true.i.i.if.end.i26.i_crit_edge

land.lhs.true.i.i.if.end.i26.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i26.i

land.lhs.true.i.i.trace_filter_parse_entry.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_filter_parse_entry.exit.i

if.end.i26.i:                                     ; preds = %land.lhs.true.i.i.if.end.i26.i_crit_edge, %while.body7.i.if.end.i26.i_crit_edge
  %call2.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.45, ptr noundef nonnull %log_level.i.i, ptr noundef nonnull %uuid_id.i.i, ptr noundef nonnull %pipe_id.i.i, ptr noundef nonnull %comp_id.i.i, ptr noundef nonnull %read.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2.i.i)
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 4
  br i1 %cmp3.not.i.i, label %lor.lhs.false.i.i, label %if.end.i26.i.do.end.i.i_crit_edge

if.end.i26.i.do.end.i.i_crit_edge:                ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i26.i
  %16 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call.i.i)
  %cmp4.not.i.i = icmp eq i32 %17, %call.i.i
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end.i26.i.do.end.i.i_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.46, ptr noundef nonnull %call5.i) #15
  br label %trace_filter_parse_entry.exit.thread.i

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  %20 = ptrtoint ptr %uuid_id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uuid_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp7.not.i.i, label %if.end6.i.i.if.end13.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.end13.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.i, i32 %add.i)
  %cmp.not.i.i.i = icmp slt i32 %cnt.0.i, %add.i
  br i1 %cmp.not.i.i.i, label %trace_filter_append_elem.exit.thread.i.i, label %if.then8.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge

if.then8.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_filter_parse_entry.exit.thread.i

trace_filter_append_elem.exit.thread.i.i:         ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.sof_ipc_trace_filter_elem, ptr %call9.i.i, i32 %cnt.0.i
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %arrayidx.i.i.i, align 8
  %value3.i.i.i = getelementptr %struct.sof_ipc_trace_filter_elem, ptr %call9.i.i, i32 %cnt.0.i, i32 1
  %23 = ptrtoint ptr %value3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %value3.i.i.i, align 4
  %inc.i.i.i = add nsw i32 %cnt.0.i, 1
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %trace_filter_append_elem.exit.thread.i.i, %if.end6.i.i.if.end13.i.i_crit_edge
  %cnt.1.i.i = phi i32 [ %cnt.0.i, %if.end6.i.i.if.end13.i.i_crit_edge ], [ %inc.i.i.i, %trace_filter_append_elem.exit.thread.i.i ]
  %24 = ptrtoint ptr %pipe_id.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pipe_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp14.i.i = icmp sgt i32 %25, -1
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.end13.i.i.if.end20.i.i58_crit_edge

if.end13.i.i.if.end20.i.i58_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i58

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.1.i.i, i32 %add.i)
  %cmp.not.i67.i.i = icmp slt i32 %cnt.1.i.i, %add.i
  br i1 %cmp.not.i67.i.i, label %trace_filter_append_elem.exit73.thread.i.i, label %if.then15.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge

if.then15.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_filter_parse_entry.exit.thread.i

trace_filter_append_elem.exit73.thread.i.i:       ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i68.i.i = getelementptr %struct.sof_ipc_trace_filter_elem, ptr %call9.i.i, i32 %cnt.1.i.i
  %26 = ptrtoint ptr %arrayidx.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %arrayidx.i68.i.i, align 8
  %value3.i69.i.i = getelementptr %struct.sof_ipc_trace_filter_elem, ptr %call9.i.i, i32 %cnt.1.i.i, i32 1
  %27 = ptrtoint ptr %value3.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %value3.i69.i.i, align 4
  %inc.i70.i.i = add nsw i32 %cnt.1.i.i, 1
  br label %if.end20.i.i58

if.end20.i.i58:                                   ; preds = %trace_filter_append_elem.exit73.thread.i.i, %if.end13.i.i.if.end20.i.i58_crit_edge
  %cnt.3.i.i = phi i32 [ %cnt.1.i.i, %if.end13.i.i.if.end20.i.i58_crit_edge ], [ %inc.i70.i.i, %trace_filter_append_elem.exit73.thread.i.i ]
  %28 = ptrtoint ptr %comp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %comp_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp21.i.i57 = icmp sgt i32 %29, -1
  br i1 %cmp21.i.i57, label %if.then22.i.i, label %if.end20.i.i58.if.end27.i.i_crit_edge

if.end20.i.i58.if.end27.i.i_crit_edge:            ; preds = %if.end20.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i58
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.3.i.i, i32 %add.i)
  %cmp.not.i74.i.i = icmp slt i32 %cnt.3.i.i, %add.i
  br i1 %cmp.not.i74.i.i, label %trace_filter_append_elem.exit80.thread.i.i, label %if.then22.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge

if.then22.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge: ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_filter_parse_entry.exit.thread.i

trace_filter_append_elem.exit80.thread.i.i:       ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i75.i.i = getelementptr %struct.sof_ipc_trace_filter_elem, ptr %call9.i.i, i32 %cnt.3.i.i
  %30 = ptrtoint ptr %arrayidx.i75.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %arrayidx.i75.i.i, align 8
  %value3.i76.i.i = getelementptr %struct.sof_ipc_trace_filter_elem, ptr %call9.i.i, i32 %cnt.3.i.i, i32 1
  %31 = ptrtoint ptr %value3.i76.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %value3.i76.i.i, align 4
  %inc.i77.i.i = add nsw i32 %cnt.3.i.i, 1
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %trace_filter_append_elem.exit80.thread.i.i, %if.end20.i.i58.if.end27.i.i_crit_edge
  %cnt.5.i.i = phi i32 [ %cnt.3.i.i, %if.end20.i.i58.if.end27.i.i_crit_edge ], [ %inc.i77.i.i, %trace_filter_append_elem.exit80.thread.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.5.i.i, i32 %add.i)
  %cmp.not.i81.i.i = icmp slt i32 %cnt.5.i.i, %add.i
  br i1 %cmp.not.i81.i.i, label %if.end31.i.i, label %if.end27.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge

if.end27.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_filter_parse_entry.exit.thread.i

if.end31.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %log_level.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %log_level.i.i, align 4
  %arrayidx.i82.i.i = getelementptr %struct.sof_ipc_trace_filter_elem, ptr %call9.i.i, i32 %cnt.5.i.i
  %34 = ptrtoint ptr %arrayidx.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 129, ptr %arrayidx.i82.i.i, align 8
  %value3.i83.i.i = getelementptr %struct.sof_ipc_trace_filter_elem, ptr %call9.i.i, i32 %cnt.5.i.i, i32 1
  %35 = ptrtoint ptr %value3.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %value3.i83.i.i, align 4
  %inc.i84.i.i = add nsw i32 %cnt.5.i.i, 1
  br label %trace_filter_parse_entry.exit.i

trace_filter_parse_entry.exit.thread.i:           ; preds = %if.end27.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge, %if.then22.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge, %if.then15.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge, %if.then8.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i59 = phi i32 [ -22, %do.end.i.i ], [ -12, %if.then8.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge ], [ -12, %if.then15.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge ], [ -12, %if.then22.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge ], [ -12, %if.end27.i.i.trace_filter_parse_entry.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %log_level.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uuid_id.i.i) #12
  br label %do.end.i

trace_filter_parse_entry.exit.i:                  ; preds = %if.end31.i.i, %land.lhs.true.i.i.trace_filter_parse_entry.exit.i_crit_edge
  %cnt.1.i = phi i32 [ %cnt.0.i, %land.lhs.true.i.i.trace_filter_parse_entry.exit.i_crit_edge ], [ %inc.i84.i.i, %if.end31.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %log_level.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uuid_id.i.i) #12
  %cmp.i60 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i60, label %trace_filter_parse_entry.exit.i.do.end.i_crit_edge, label %trace_filter_parse_entry.exit.i.while.cond4.i_crit_edge

trace_filter_parse_entry.exit.i.while.cond4.i_crit_edge: ; preds = %trace_filter_parse_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond4.i

trace_filter_parse_entry.exit.i.do.end.i_crit_edge: ; preds = %trace_filter_parse_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %trace_filter_parse_entry.exit.i.do.end.i_crit_edge, %trace_filter_parse_entry.exit.thread.i
  %retval.0.i31.i = phi i32 [ %retval.0.i.ph.i59, %trace_filter_parse_entry.exit.thread.i ], [ %call.i.i, %trace_filter_parse_entry.exit.i.do.end.i_crit_edge ]
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull %call5.i, i32 noundef %retval.0.i31.i) #15
  br label %do.end13

do.end13:                                         ; preds = %do.end.i, %if.end8.i.i.do.end13_crit_edge
  %elems.1.ph = phi ptr [ %call9.i.i, %do.end.i ], [ null, %if.end8.i.i.do.end13_crit_edge ]
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -12, %if.end8.i.i.do.end13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string.addr.i)
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i.ph) #15
  br label %error

if.end15:                                         ; preds = %while.cond4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.i)
  %tobool16.not = icmp eq i32 %cnt.0.i, 0
  br i1 %tobool16.not, label %if.end15.error_crit_edge, label %if.then17

if.end15.error_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i) #12
  %40 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %reply.i, align 4, !annotation !132
  %41 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %41, align 4, !annotation !132
  %43 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %43, align 4, !annotation !132
  %45 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cnt.0.i, i32 8) #12
  %46 = extractvalue { i32, i1 } %45, 1
  %47 = extractvalue { i32, i1 } %45, 0
  %spec.select.i.i61 = call i32 @llvm.uadd.sat.i32(i32 %47, i32 44) #12
  %retval.0.i.i = select i1 %46, i32 -1, i32 %spec.select.i.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %retval.0.i.i)
  %cmp.i62 = icmp ugt i32 %retval.0.i.i, 384
  br i1 %cmp.i62, label %if.then17.sof_ipc_trace_update_filter.exit.thread_crit_edge, label %if.end8.i.i71

if.then17.sof_ipc_trace_update_filter.exit.thread_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sof_ipc_trace_update_filter.exit.thread

if.end8.i.i71:                                    ; preds = %if.then17
  %call9.i.i70 = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3264) #16
  %tobool.not.i73 = icmp eq ptr %call9.i.i70, null
  br i1 %tobool.not.i73, label %if.end8.i.i71.sof_ipc_trace_update_filter.exit.thread_crit_edge, label %if.end3.i

if.end8.i.i71.sof_ipc_trace_update_filter.exit.thread_crit_edge: ; preds = %if.end8.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %sof_ipc_trace_update_filter.exit.thread

if.end3.i:                                        ; preds = %if.end8.i.i71
  %48 = ptrtoint ptr %call9.i.i70 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i, ptr %call9.i.i70, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i70, i32 0, i32 1
  %49 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1878786048, ptr %cmd.i, align 4
  %elem_cnt.i = getelementptr inbounds %struct.sof_ipc_trace_filter, ptr %call9.i.i70, i32 0, i32 1
  %50 = ptrtoint ptr %elem_cnt.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cnt.0.i, ptr %elem_cnt.i, align 8
  %elems6.i = getelementptr inbounds %struct.sof_ipc_trace_filter, ptr %call9.i.i70, i32 0, i32 3
  %mul.i75 = shl i32 %cnt.0.i, 3
  %51 = call ptr @memcpy(ptr %elems6.i, ptr %call9.i.i, i32 %mul.i75)
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %call.i.i76 = call i32 @__pm_runtime_resume(ptr noundef %53, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i76)
  %cmp8.i = icmp sgt i32 %call.i.i76, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i.i76)
  %cmp9.not.i = icmp eq i32 %call.i.i76, -13
  %or.cond.i = or i1 %cmp8.i, %cmp9.not.i
  br i1 %or.cond.i, label %error.i, label %error.thread.i

error.thread.i:                                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  call fastcc void @pm_runtime_put_noidle(ptr noundef %55) #12
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.48, i32 noundef %call.i.i76) #15
  call void @kfree(ptr noundef nonnull %call9.i.i70) #12
  br label %sof_ipc_trace_update_filter.exit.thread

error.i:                                          ; preds = %if.end3.i
  %ipc.i = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 13
  %58 = ptrtoint ptr %ipc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ipc.i, align 4
  %60 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cmd.i, align 4
  %62 = ptrtoint ptr %call9.i.i70 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call9.i.i70, align 128
  %call18.i = call i32 @sof_ipc_tx_message(ptr noundef %59, i32 noundef %61, ptr noundef nonnull %call9.i.i70, i32 noundef %63, ptr noundef nonnull %reply.i, i32 noundef 12) #12
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %call.i48.i = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 12, i32 22
  %66 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store volatile i64 %call.i48.i, ptr %last_busy.i.i, align 8
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  %call.i49.i = call i32 @__pm_runtime_suspend(ptr noundef %68, i32 noundef 13) #12
  call void @kfree(ptr noundef nonnull %call9.i.i70) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool22.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool22.not.i, label %cond.false.i, label %error.i.sof_ipc_trace_update_filter.exit_crit_edge

error.i.sof_ipc_trace_update_filter.exit_crit_edge: ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sof_ipc_trace_update_filter.exit

cond.false.i:                                     ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %43, align 4
  br label %sof_ipc_trace_update_filter.exit

sof_ipc_trace_update_filter.exit.thread:          ; preds = %error.thread.i, %if.end8.i.i71.sof_ipc_trace_update_filter.exit.thread_crit_edge, %if.then17.sof_ipc_trace_update_filter.exit.thread_crit_edge
  %retval.0.i77.ph = phi i32 [ %call.i.i76, %error.thread.i ], [ -12, %if.end8.i.i71.sof_ipc_trace_update_filter.exit.thread_crit_edge ], [ -22, %if.then17.sof_ipc_trace_update_filter.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #12
  br label %do.end23

sof_ipc_trace_update_filter.exit:                 ; preds = %cond.false.i, %error.i.sof_ipc_trace_update_filter.exit_crit_edge
  %retval.0.i77 = phi i32 [ %70, %cond.false.i ], [ %call18.i, %error.i.sof_ipc_trace_update_filter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i77)
  %cmp19 = icmp slt i32 %retval.0.i77, 0
  br i1 %cmp19, label %sof_ipc_trace_update_filter.exit.do.end23_crit_edge, label %sof_ipc_trace_update_filter.exit.error_crit_edge

sof_ipc_trace_update_filter.exit.error_crit_edge: ; preds = %sof_ipc_trace_update_filter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

sof_ipc_trace_update_filter.exit.do.end23_crit_edge: ; preds = %sof_ipc_trace_update_filter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

do.end23:                                         ; preds = %sof_ipc_trace_update_filter.exit.do.end23_crit_edge, %sof_ipc_trace_update_filter.exit.thread
  %retval.0.i7791 = phi i32 [ %retval.0.i77.ph, %sof_ipc_trace_update_filter.exit.thread ], [ %retval.0.i77, %sof_ipc_trace_update_filter.exit.do.end23_crit_edge ]
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i7791) #15
  br label %error

error:                                            ; preds = %do.end23, %sof_ipc_trace_update_filter.exit.error_crit_edge, %if.end15.error_crit_edge, %do.end13, %if.end3.error_crit_edge
  %elems.2 = phi ptr [ null, %if.end3.error_crit_edge ], [ %elems.1.ph, %do.end13 ], [ %call9.i.i, %if.end15.error_crit_edge ], [ %call9.i.i, %do.end23 ], [ %call9.i.i, %sof_ipc_trace_update_filter.exit.error_crit_edge ]
  %ret.0 = phi i32 [ %call4, %if.end3.error_crit_edge ], [ %retval.0.i.ph, %do.end13 ], [ %count, %if.end15.error_crit_edge ], [ %retval.0.i7791, %do.end23 ], [ %count, %sof_ipc_trace_update_filter.exit.error_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #12
  call void @kfree(ptr noundef %elems.2) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end8.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %error ], [ -12, %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #12, !srcloc !136
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_dfsentry_trace_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sdev1 = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev1, align 4
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %dtrace_error = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 53
  %8 = ptrtoint ptr %dtrace_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %dtrace_error, align 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else170

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else170:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %cmp172 = icmp ult i64 %5, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !138

if.then176:                                       ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #14
  %conv177 = trunc i64 %5 to i32
  %rem178 = urem i32 %conv177, %7
  br label %if.end186

if.else182:                                       ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %5) #18, !srcloc !139
  %asmresult.i325 = extractvalue { i64, i64 } %9, 0
  %shr.i = lshr i64 %asmresult.i325, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then176
  %__rem.0 = phi i32 [ %rem178, %if.then176 ], [ %conv.i, %if.else182 ]
  %conv188 = zext i32 %__rem.0 to i64
  %call199 = tail call fastcc i32 @sof_wait_trace_avail(ptr noundef %3, i64 noundef %conv188, i32 noundef %7)
  %10 = ptrtoint ptr %dtrace_error to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dtrace_error, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool201.not = icmp eq i8 %11, 0
  br i1 %tobool201.not, label %if.end203, label %do.end

do.end:                                           ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.50) #15
  br label %cleanup

if.end203:                                        ; preds = %if.end186
  %conv190 = zext i32 %7 to i64
  %sub191 = sub nsw i64 %conv190, %conv188
  %conv189 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub191, i64 %conv189)
  %cmp192 = icmp slt i64 %sub191, %conv189
  %conv197 = trunc i64 %sub191 to i32
  %spec.select = select i1 %cmp192, i32 %conv197, i32 %count
  %14 = tail call i32 @llvm.umin.i32(i32 %call199, i32 %spec.select)
  %15 = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %__rem.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.i.i = icmp slt i32 %14, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end203
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !138

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end203
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %14, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %14, i32 -1226833920) #18, !srcloc !140
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %14) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %add.ptr, i32 noundef %14) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %14, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %14, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool211.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool211.not, label %if.end213, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end213:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv214 = zext i32 %14 to i64
  %19 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ppos, align 8
  %add215 = add i64 %20, %conv214
  store i64 %add215, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end213, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %14, %if.end213 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sof_dfsentry_trace_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %sdev1 = getelementptr inbounds %struct.snd_sof_dfsentry, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev1, align 4
  %dtrace_is_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dtrace_is_enabled, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %host_offset = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 50
  %6 = ptrtoint ptr %host_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %host_offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_wait_trace_avail(ptr noundef %sdev, i64 noundef %pos, i32 noundef %buffer_size) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #12
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %host_offset1.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 50
  %2 = getelementptr inbounds i8, ptr %wait, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %host_offset1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %host_offset1.i, align 4
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %pos)
  %cmp.i = icmp slt i64 %conv.i, %pos
  br i1 %cmp.i, label %entry.sof_trace_avail.exit_crit_edge, label %if.end.i

entry.sof_trace_avail.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sof_trace_avail.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %pos)
  %cmp5.i = icmp sgt i64 %conv.i, %pos
  br i1 %cmp5.i, label %if.end.i.sof_trace_avail.exit_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.sof_trace_avail.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sof_trace_avail.exit

sof_trace_avail.exit:                             ; preds = %if.end.i.sof_trace_avail.exit_crit_edge, %entry.sof_trace_avail.exit_crit_edge
  %buffer_size.sink = phi i32 [ %buffer_size, %entry.sof_trace_avail.exit_crit_edge ], [ %5, %if.end.i.sof_trace_avail.exit_crit_edge ]
  %6 = trunc i64 %pos to i32
  %conv4.i = sub i32 %buffer_size.sink, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i)
  %tobool.not = icmp eq i32 %conv4.i, 0
  br i1 %tobool.not, label %sof_trace_avail.exit.if.end_crit_edge, label %sof_trace_avail.exit.cleanup_crit_edge

sof_trace_avail.exit.cleanup_crit_edge:           ; preds = %sof_trace_avail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sof_trace_avail.exit.if.end_crit_edge:            ; preds = %sof_trace_avail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %sof_trace_avail.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %dtrace_is_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 52
  %7 = ptrtoint ptr %dtrace_is_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dtrace_is_enabled, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %dtrace_draining = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 54
  %9 = ptrtoint ptr %dtrace_draining to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dtrace_draining, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then3

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dtrace_draining to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %dtrace_draining, align 1
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !122) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %0, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @default_wake_function, ptr %1, align 4
  br label %__here

__here:                                           ; preds = %if.end5
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@sof_wait_trace_avail, %__here) to i32), ptr %task_state_change, align 4
  %22 = load ptr, ptr %task, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %22, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  %trace_sleep = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 49
  call void @add_wait_queue(ptr noundef %trace_sleep, ptr noundef nonnull %wait) #12
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %__here.if.end77_crit_edge, !prof !138

__here.if.end77_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

signal_pending.exit:                              ; preds = %__here
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool74.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool74.not, label %if.then75, label %signal_pending.exit.if.end77_crit_edge

signal_pending.exit.if.end77_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then75:                                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call76 = call i32 @schedule_timeout(i32 noundef 2147483647) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %signal_pending.exit.if.end77_crit_edge, %__here.if.end77_crit_edge
  call void @remove_wait_queue(ptr noundef %trace_sleep, ptr noundef nonnull %wait) #12
  %33 = ptrtoint ptr %host_offset1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %host_offset1.i, align 4
  %conv.i95 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i95, i64 %pos)
  %cmp.i96 = icmp slt i64 %conv.i95, %pos
  br i1 %cmp.i96, label %if.then.i98, label %if.end.i100

if.then.i98:                                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %35 = trunc i64 %pos to i32
  %conv4.i97 = sub i32 %buffer_size, %35
  br label %cleanup

if.end.i100:                                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i95, i64 %pos)
  %cmp5.i99 = icmp sgt i64 %conv.i95, %pos
  br i1 %cmp5.i99, label %if.then7.i102, label %if.end.i100.cleanup_crit_edge

if.end.i100.cleanup_crit_edge:                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i102:                                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #14
  %36 = trunc i64 %pos to i32
  %conv9.i101 = sub i32 %34, %36
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i102, %if.end.i100.cleanup_crit_edge, %if.then.i98, %if.then3, %sof_trace_avail.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %conv4.i, %sof_trace_avail.exit.cleanup_crit_edge ], [ %conv4.i97, %if.then.i98 ], [ %conv9.i101, %if.then7.i102 ], [ 0, %if.end.i100.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !111, !112, !113, !115, !117, !118, !120}
!llvm.named.register.sp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/trace.c", i32 416, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_sof_init_trace_ipc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_sof_init_trace_ipc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/trace.c", i32 420, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_sof_init_trace_ipc.__UNIQUE_ID_ddebug249, !9, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/trace.c", i32 427, i32 3}
!14 = !{ptr @snd_sof_init_trace_ipc._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @snd_sof_init_trace_ipc._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/trace.c", i32 434, i32 3}
!18 = !{ptr @snd_sof_init_trace_ipc._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @snd_sof_init_trace_ipc._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/trace.c", i32 462, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @snd_sof_init_trace._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @snd_sof_init_trace._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/trace.c", i32 471, i32 3}
!27 = !{ptr @snd_sof_init_trace._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @snd_sof_init_trace._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/sof/trace.c", i32 483, i32 2}
!31 = !{ptr @snd_sof_init_trace.__UNIQUE_ID_ddebug250, !30, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!32 = !{ptr @snd_sof_init_trace.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../sound/soc/sof/trace.c", i32 492, i32 2}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__ksymtab_snd_sof_init_trace, !36, !"__ksymtab_snd_sof_init_trace", i1 false, i1 false}
!36 = !{!"../sound/soc/sof/trace.c", i32 506, i32 1}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/sof/trace.c", i32 520, i32 3}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @snd_sof_trace_update_pos._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @snd_sof_trace_update_pos._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__ksymtab_snd_sof_trace_notify_for_error, !43, !"__ksymtab_snd_sof_trace_notify_for_error", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/trace.c", i32 538, i32 1}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/trace.c", i32 553, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @snd_sof_release_trace._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @snd_sof_release_trace._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sof/trace.c", i32 567, i32 4}
!51 = !{ptr @snd_sof_release_trace._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @snd_sof_release_trace._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/trace.c", i32 572, i32 3}
!55 = !{ptr @snd_sof_release_trace._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @snd_sof_release_trace._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__ksymtab_snd_sof_release_trace, !58, !"__ksymtab_snd_sof_release_trace", i1 false, i1 false}
!58 = !{!"../sound/soc/sof/trace.c", i32 579, i32 1}
!59 = !{ptr @__ksymtab_snd_sof_free_trace, !60, !"__ksymtab_snd_sof_free_trace", i1 false, i1 false}
!60 = !{!"../sound/soc/sof/trace.c", i32 594, i32 1}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/sof/trace.c", i32 364, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @trace_debugfs_create._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @trace_debugfs_create._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sof/trace.c", i32 375, i32 22}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/sof/trace.c", i32 227, i32 22}
!70 = !{ptr @sof_dfs_trace_filter_fops, !71, !"sof_dfs_trace_filter_fops", i1 false, i1 false}
!71 = !{!"../sound/soc/sof/trace.c", i32 210, i32 37}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/trace.c", i32 175, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sof_dfsentry_trace_filter_write._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sof_dfsentry_trace_filter_write._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/sof/trace.c", i32 192, i32 3}
!79 = !{ptr @sof_dfsentry_trace_filter_write._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sof_dfsentry_trace_filter_write._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/sof/trace.c", i32 199, i32 4}
!83 = !{ptr @sof_dfsentry_trace_filter_write._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @sof_dfsentry_trace_filter_write._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @trace_filter_parse.entry_delimiter, !86, !"entry_delimiter", i1 false, i1 false}
!86 = !{!"../sound/soc/sof/trace.c", i32 92, i32 20}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/sof/trace.c", i32 115, i32 4}
!89 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @trace_filter_parse._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @trace_filter_parse._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/sof/trace.c", i32 47, i32 21}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/sof/trace.c", i32 51, i32 21}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/sof/trace.c", i32 53, i32 3}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @trace_filter_parse_entry._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @trace_filter_parse_entry._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/sof/trace.c", i32 150, i32 3}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sof_ipc_trace_update_filter._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @sof_ipc_trace_update_filter._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @sof_dfs_trace_fops, !107, !"sof_dfs_trace_fops", i1 false, i1 false}
!107 = !{!"../sound/soc/sof/trace.c", i32 347, i32 37}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/sof/trace.c", i32 317, i32 3}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sof_dfsentry_trace_read._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @sof_dfsentry_trace_read._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../sound/soc/sof/trace.c", i32 276, i32 2}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!117 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!122 = !{!"sp"}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"auto-init"}
!133 = !{i8 0, i8 2}
!134 = !{i64 2148501595, i64 2148501600, i64 2148501613, i64 2148501657, i64 2148501691, i64 2148501712}
!135 = !{i64 2148676416}
!136 = !{i64 1163016, i64 1163041, i64 1163063, i64 1163079, i64 1163091, i64 1163111, i64 1163135, i64 1163151, i64 1163163}
!137 = !{i64 2148676604}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2148526782, i64 2148527062, i64 2148527396, i64 2148527730}
!140 = !{i64 2152190157, i64 2152190182}
!141 = !{i64 2155852657}
