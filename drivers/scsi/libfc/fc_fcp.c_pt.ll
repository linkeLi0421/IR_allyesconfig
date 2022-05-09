; ModuleID = '/llk/IR_all_yes/drivers/scsi/libfc/fc_fcp.c_pt.bc'
source_filename = "../drivers/scsi/libfc/fc_fcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fc_queuecommand\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_queuecommand\09\09\09\09"
module asm "\09.long\09__crc_fc_queuecommand\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_queuecommand:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_queuecommand\22\09\09\09\09\09"
module asm "__kstrtabns_fc_queuecommand:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_eh_abort\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_eh_abort\09\09\09\09"
module asm "\09.long\09__crc_fc_eh_abort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_eh_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_eh_abort\22\09\09\09\09\09"
module asm "__kstrtabns_fc_eh_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_eh_device_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_eh_device_reset\09\09\09\09"
module asm "\09.long\09__crc_fc_eh_device_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_eh_device_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_eh_device_reset\22\09\09\09\09\09"
module asm "__kstrtabns_fc_eh_device_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_eh_host_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_eh_host_reset\09\09\09\09"
module asm "\09.long\09__crc_fc_eh_host_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_eh_host_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_eh_host_reset\22\09\09\09\09\09"
module asm "__kstrtabns_fc_eh_host_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_slave_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_slave_alloc\09\09\09\09"
module asm "\09.long\09__crc_fc_slave_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_slave_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_slave_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_fc_slave_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_fcp_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_fcp_destroy\09\09\09\09"
module asm "\09.long\09__crc_fc_fcp_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_fcp_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_fcp_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_fc_fcp_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_fcp_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_fcp_init\09\09\09\09"
module asm "\09.long\09__crc_fc_fcp_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_fcp_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_fcp_init\22\09\09\09\09\09"
module asm "__kstrtabns_fc_fcp_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.fc_fcp_pkt = type { %struct.spinlock, %struct.refcount_struct, i32, ptr, %struct.list_head, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.fcp_cmnd, i32, i16, i16, ptr, ptr, %struct.timer_list, i32, i32, i32, ptr, %struct.completion }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_fcp_internal = type { ptr, %struct.spinlock, %struct.list_head, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { %union.anon.79, %union.anon.82, %union.anon.83, [48 x i8], %union.anon.84, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.86, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr, %union.anon.81 }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.88, i32, i32, i32, i16, i16, %union.anon.90, i32, %union.anon.91, %union.anon.92, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.88 = type { i32 }
%union.anon.90 = type { i32 }
%union.anon.91 = type { i32 }
%union.anon.92 = type { i16 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.fc_rport_libfc_priv = type { ptr, i32, i16, i32, i32 }
%struct.fcp_txrdy = type { i32, i32, [4 x i8] }
%struct.fc_seq = type { i8, i16, i16, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.9, %union.anon.55, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.55 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.75, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.75 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fc_els_ls_rjt = type { i8, [4 x i8], i8, i8, i8 }
%struct.fc_els_rec_acc = type { i8, [3 x i8], i16, i16, i8, [3 x i8], i8, [3 x i8], i32, i32 }
%struct.fcp_srr = type { i8, [3 x i8], i16, i16, i32, i8, [3 x i8] }

@fc_queuecommand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1893, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"libfc: queue full, reducing can_queue to %d.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fc_queuecommand\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/libfc/fc_fcp.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fc_queuecommand._entry_ptr = internal global ptr @fc_queuecommand._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_fc_queuecommand = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_queuecommand = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_queuecommand = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_queuecommand to i32), ptr @__kstrtab_fc_queuecommand, ptr @__kstrtabns_fc_queuecommand }, section "___ksymtab+fc_queuecommand", align 4
@__kstrtab_fc_eh_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_eh_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_eh_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_eh_abort to i32), ptr @__kstrtab_fc_eh_abort, ptr @__kstrtabns_fc_eh_abort }, section "___ksymtab+fc_eh_abort", align 4
@fc_debug_logging = external dso_local local_unnamed_addr global i32, align 4
@fc_eh_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016host%u: scsi: Resetting rport (%6.6x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc_eh_device_reset\00", [45 x i8] zeroinitializer }, align 32
@fc_eh_device_reset._entry_ptr = internal global ptr @fc_eh_device_reset._entry, section ".printk_index", align 4
@fc_eh_device_reset._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 2177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014libfc: could not allocate scsi_pkt\0A\00", [58 x i8] zeroinitializer }, align 32
@fc_eh_device_reset._entry_ptr.9 = internal global ptr @fc_eh_device_reset._entry.7, section ".printk_index", align 4
@__kstrtab_fc_eh_device_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_eh_device_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_eh_device_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_eh_device_reset to i32), ptr @__kstrtab_fc_eh_device_reset, ptr @__kstrtabns_fc_eh_device_reset }, section "___ksymtab+fc_eh_device_reset", align 4
@fc_eh_host_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 2210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016host%u: scsi: Resetting host\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_eh_host_reset\00", [47 x i8] zeroinitializer }, align 32
@fc_eh_host_reset._entry_ptr = internal global ptr @fc_eh_host_reset._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fc_eh_host_reset._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 2220, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"libfc: Host reset succeeded on port (%6.6x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fc_eh_host_reset._entry_ptr.15 = internal global ptr @fc_eh_host_reset._entry.12, section ".printk_index", align 4
@fc_eh_host_reset._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 2225, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"libfc: Host reset failed, port (%6.6x) is not ready.\0A\00", [42 x i8] zeroinitializer }, align 32
@fc_eh_host_reset._entry_ptr.18 = internal global ptr @fc_eh_host_reset._entry.16, section ".printk_index", align 4
@__kstrtab_fc_eh_host_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_eh_host_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_eh_host_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_eh_host_reset to i32), ptr @__kstrtab_fc_eh_host_reset, ptr @__kstrtabns_fc_eh_host_reset }, section "___ksymtab+fc_eh_host_reset", align 4
@__kstrtab_fc_slave_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_slave_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_slave_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_slave_alloc to i32), ptr @__kstrtab_fc_slave_alloc, ptr @__kstrtabns_fc_slave_alloc }, section "___ksymtab+fc_slave_alloc", align 4
@fc_fcp_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 2260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013libfc: Leaked SCSI packets when destroying port (%6.6x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fc_fcp_destroy\00", [17 x i8] zeroinitializer }, align 32
@fc_fcp_destroy._entry_ptr = internal global ptr @fc_fcp_destroy._entry, section ".printk_index", align 4
@__kstrtab_fc_fcp_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_fcp_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_fcp_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_fcp_destroy to i32), ptr @__kstrtab_fc_fcp_destroy, ptr @__kstrtabns_fc_fcp_destroy }, section "___ksymtab+fc_fcp_destroy", align 4
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"libfc_fcp_pkt\00", [18 x i8] zeroinitializer }, align 32
@scsi_pkt_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fc_setup_fcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 2277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013libfc: Unable to allocate SRB cache, module load failed!\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fc_setup_fcp\00", [19 x i8] zeroinitializer }, align 32
@fc_setup_fcp._entry_ptr = internal global ptr @fc_setup_fcp._entry, section ".printk_index", align 4
@fc_fcp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&si->scsi_queue_lock\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_fc_fcp_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_fcp_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_fcp_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_fcp_init to i32), ptr @__kstrtab_fc_fcp_init, ptr @__kstrtabns_fc_fcp_init }, section "___ksymtab+fc_fcp_init", align 4
@fc_fcp_pkt_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&fsp->timer)\00", [18 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_alloc.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fsp->scsi_pkt_lock\00", [44 x i8] zeroinitializer }, align 32
@fc_fcp_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: lport state %d, ignoring r_ctl %x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_fcp_recv\00", [20 x i8] zeroinitializer }, align 32
@fc_fcp_recv._entry_ptr = internal global ptr @fc_fcp_recv._entry, section ".printk_index", align 4
@fc_fcp_recv._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016host%u: fcp: %6.6x: lport state %d, ignoring r_ctl %x\0A\00", [39 x i8] zeroinitializer }, align 32
@fc_fcp_recv._entry_ptr.32 = internal global ptr @fc_fcp_recv._entry.30, section ".printk_index", align 4
@fc_fcp_recv._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: command aborted, ignoring r_ctl %x\0A\00", [55 x i8] zeroinitializer }, align 32
@fc_fcp_recv._entry_ptr.35 = internal global ptr @fc_fcp_recv._entry.33, section ".printk_index", align 4
@fc_fcp_recv._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016host%u: fcp: %6.6x: command aborted, ignoring r_ctl %x\0A\00", [38 x i8] zeroinitializer }, align 32
@fc_fcp_recv._entry_ptr.38 = internal global ptr @fc_fcp_recv._entry.36, section ".printk_index", align 4
@fc_fcp_recv._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: unexpected frame.  r_ctl %x\0A\00", [62 x i8] zeroinitializer }, align 32
@fc_fcp_recv._entry_ptr.41 = internal global ptr @fc_fcp_recv._entry.39, section ".printk_index", align 4
@fc_fcp_recv._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.2, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016host%u: fcp: %6.6x: unexpected frame.  r_ctl %x\0A\00", [45 x i8] zeroinitializer }, align 32
@fc_fcp_recv._entry_ptr.44 = internal global ptr @fc_fcp_recv._entry.42, section ".printk_index", align 4
@fc_fcp_complete_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: data underrun, xfer %zx data %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fc_fcp_complete_locked\00", [41 x i8] zeroinitializer }, align 32
@fc_fcp_complete_locked._entry_ptr = internal global ptr @fc_fcp_complete_locked._entry, section ".printk_index", align 4
@fc_fcp_complete_locked._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016host%u: fcp: %6.6x: data underrun, xfer %zx data %x\0A\00", [41 x i8] zeroinitializer }, align 32
@fc_fcp_complete_locked._entry_ptr.49 = internal global ptr @fc_fcp_complete_locked._entry.47, section ".printk_index", align 4
@fc_fcp_frame_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 449, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"libfc: Could not allocate frame, reducing can_queue to %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc_fcp_frame_alloc\00", [45 x i8] zeroinitializer }, align 32
@fc_fcp_frame_alloc._entry_ptr = internal global ptr @fc_fcp_frame_alloc._entry, section ".printk_index", align 4
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@fc_io_compl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_ERROR to scsi-ml due to FC_ERROR\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_io_compl\00", [20 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr = internal global ptr @fc_io_compl._entry, section ".printk_index", align 4
@fc_io_compl._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 2006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016host%u: fcp: %6.6x: Returning DID_ERROR to scsi-ml due to FC_ERROR\0A\00", [58 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.57 = internal global ptr @fc_io_compl._entry.55, section ".printk_index", align 4
@fc_io_compl._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_ERROR to scsi-ml due to FC_DATA_UNDRUN (trans)\0A\00", [61 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.60 = internal global ptr @fc_io_compl._entry.58, section ".printk_index", align 4
@fc_io_compl._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016host%u: fcp: %6.6x: Returning DID_ERROR to scsi-ml due to FC_DATA_UNDRUN (trans)\0A\00", [44 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.63 = internal global ptr @fc_io_compl._entry.61, section ".printk_index", align 4
@fc_io_compl._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.2, i32 2027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_ERROR to scsi-ml due to FC_DATA_UNDRUN (scsi)\0A\00", [62 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.66 = internal global ptr @fc_io_compl._entry.64, section ".printk_index", align 4
@fc_io_compl._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.54, ptr @.str.2, i32 2027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016host%u: fcp: %6.6x: Returning DID_ERROR to scsi-ml due to FC_DATA_UNDRUN (scsi)\0A\00", [45 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.69 = internal global ptr @fc_io_compl._entry.67, section ".printk_index", align 4
@fc_io_compl._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.54, ptr @.str.2, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_ERROR to scsi-ml due to FC_DATA_OVRRUN\0A\00", [37 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.72 = internal global ptr @fc_io_compl._entry.70, section ".printk_index", align 4
@fc_io_compl._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.54, ptr @.str.2, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016host%u: fcp: %6.6x: Returning DID_ERROR to scsi-ml due to FC_DATA_OVRRUN\0A\00", [52 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.75 = internal global ptr @fc_io_compl._entry.73, section ".printk_index", align 4
@fc_io_compl._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.54, ptr @.str.2, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_TIME_OUT to scsi-ml due to FC_CMD_ABORTED\0A\00", [34 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.78 = internal global ptr @fc_io_compl._entry.76, section ".printk_index", align 4
@fc_io_compl._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.54, ptr @.str.2, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016host%u: fcp: %6.6x: Returning DID_TIME_OUT to scsi-ml due to FC_CMD_ABORTED\0A\00", [49 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.81 = internal global ptr @fc_io_compl._entry.79, section ".printk_index", align 4
@fc_io_compl._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.54, ptr @.str.2, i32 2046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_ERROR to scsi-ml due to FC_CMD_ABORTED\0A\00", [37 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.84 = internal global ptr @fc_io_compl._entry.82, section ".printk_index", align 4
@fc_io_compl._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.54, ptr @.str.2, i32 2046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016host%u: fcp: %6.6x: Returning DID_ERROR to scsi-ml due to FC_CMD_ABORTED\0A\00", [52 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.87 = internal global ptr @fc_io_compl._entry.85, section ".printk_index", align 4
@fc_io_compl._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.54, ptr @.str.2, i32 2053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_RESET to scsi-ml due to FC_CMD_RESET\0A\00", [39 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.90 = internal global ptr @fc_io_compl._entry.88, section ".printk_index", align 4
@fc_io_compl._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.54, ptr @.str.2, i32 2053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016host%u: fcp: %6.6x: Returning DID_RESET to scsi-ml due to FC_CMD_RESET\0A\00", [54 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.93 = internal global ptr @fc_io_compl._entry.91, section ".printk_index", align 4
@fc_io_compl._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.54, ptr @.str.2, i32 2058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_SOFT_ERROR to scsi-ml due to FC_TRANS_RESET\0A\00", [32 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.96 = internal global ptr @fc_io_compl._entry.94, section ".printk_index", align 4
@fc_io_compl._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.54, ptr @.str.2, i32 2058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016host%u: fcp: %6.6x: Returning DID_SOFT_ERROR to scsi-ml due to FC_TRANS_RESET\0A\00", [47 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.99 = internal global ptr @fc_io_compl._entry.97, section ".printk_index", align 4
@fc_io_compl._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.54, ptr @.str.2, i32 2063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_NO_CONNECT to scsi-ml due to FC_HRD_ERROR\0A\00", [34 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.102 = internal global ptr @fc_io_compl._entry.100, section ".printk_index", align 4
@fc_io_compl._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.54, ptr @.str.2, i32 2063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016host%u: fcp: %6.6x: Returning DID_NO_CONNECT to scsi-ml due to FC_HRD_ERROR\0A\00", [49 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.105 = internal global ptr @fc_io_compl._entry.103, section ".printk_index", align 4
@fc_io_compl._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.54, ptr @.str.2, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_PARITY to scsi-ml due to FC_CRC_ERROR\0A\00", [38 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.108 = internal global ptr @fc_io_compl._entry.106, section ".printk_index", align 4
@fc_io_compl._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.54, ptr @.str.2, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016host%u: fcp: %6.6x: Returning DID_PARITY to scsi-ml due to FC_CRC_ERROR\0A\00", [53 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.111 = internal global ptr @fc_io_compl._entry.109, section ".printk_index", align 4
@fc_io_compl._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.54, ptr @.str.2, i32 2073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_BUS_BUSY to scsi-ml due to FC_TIMED_OUT\0A\00", [36 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.114 = internal global ptr @fc_io_compl._entry.112, section ".printk_index", align 4
@fc_io_compl._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.54, ptr @.str.2, i32 2073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016host%u: fcp: %6.6x: Returning DID_BUS_BUSY to scsi-ml due to FC_TIMED_OUT\0A\00", [51 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.117 = internal global ptr @fc_io_compl._entry.115, section ".printk_index", align 4
@fc_io_compl._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.54, ptr @.str.2, i32 2078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: Returning DID_ERROR to scsi-ml due to unknown error\0A\00", [38 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.120 = internal global ptr @fc_io_compl._entry.118, section ".printk_index", align 4
@fc_io_compl._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.54, ptr @.str.2, i32 2078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016host%u: fcp: %6.6x: Returning DID_ERROR to scsi-ml due to unknown error\0A\00", [53 x i8] zeroinitializer }, align 32
@fc_io_compl._entry_ptr.123 = internal global ptr @fc_io_compl._entry.121, section ".printk_index", align 4
@fc_fcp_can_queue_ramp_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"libfc: increased can_queue to %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fc_fcp_can_queue_ramp_up\00", [39 x i8] zeroinitializer }, align 32
@fc_fcp_can_queue_ramp_up._entry_ptr = internal global ptr @fc_fcp_can_queue_ramp_up._entry, section ".printk_index", align 4
@fc_fcp_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: xfer-ready past end. seq_blen %zx offset %zx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_fcp_send_data\00", [47 x i8] zeroinitializer }, align 32
@fc_fcp_send_data._entry_ptr = internal global ptr @fc_fcp_send_data._entry, section ".printk_index", align 4
@fc_fcp_send_data._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016host%u: fcp: %6.6x: xfer-ready past end. seq_blen %zx offset %zx\0A\00", [60 x i8] zeroinitializer }, align 32
@fc_fcp_send_data._entry_ptr.130 = internal global ptr @fc_fcp_send_data._entry.128, section ".printk_index", align 4
@fc_fcp_send_data._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: xfer-ready non-contiguous. seq_blen %zx offset %zx\0A\00", [39 x i8] zeroinitializer }, align 32
@fc_fcp_send_data._entry_ptr.133 = internal global ptr @fc_fcp_send_data._entry.131, section ".printk_index", align 4
@fc_fcp_send_data._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.127, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016host%u: fcp: %6.6x: xfer-ready non-contiguous. seq_blen %zx offset %zx\0A\00", [54 x i8] zeroinitializer }, align 32
@fc_fcp_send_data._entry_ptr.136 = internal global ptr @fc_fcp_send_data._entry.134, section ".printk_index", align 4
@fc_fcp_send_data._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.127, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: fsp=%p:lso:blen=%zx lso_max=0x%x t_blen=%zx\0A\00", [46 x i8] zeroinitializer }, align 32
@fc_fcp_send_data._entry_ptr.139 = internal global ptr @fc_fcp_send_data._entry.137, section ".printk_index", align 4
@fc_fcp_send_data._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.127, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016host%u: fcp: %6.6x: fsp=%p:lso:blen=%zx lso_max=0x%x t_blen=%zx\0A\00", [61 x i8] zeroinitializer }, align 32
@fc_fcp_send_data._entry_ptr.142 = internal global ptr @fc_fcp_send_data._entry.140, section ".printk_index", align 4
@.str.143 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@fc_fcp_recv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: DDP I/O in fc_fcp_recv_data set ERROR\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_fcp_recv_data\00", [47 x i8] zeroinitializer }, align 32
@fc_fcp_recv_data._entry_ptr = internal global ptr @fc_fcp_recv_data._entry, section ".printk_index", align 4
@fc_fcp_recv_data._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016host%u: fcp: %6.6x: DDP I/O in fc_fcp_recv_data set ERROR\0A\00", [35 x i8] zeroinitializer }, align 32
@fc_fcp_recv_data._entry_ptr.148 = internal global ptr @fc_fcp_recv_data._entry.146, section ".printk_index", align 4
@fc_fcp_recv_data._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: data received past end. len %zx offset %zx data_len %x\0A\00", [35 x i8] zeroinitializer }, align 32
@fc_fcp_recv_data._entry_ptr.151 = internal global ptr @fc_fcp_recv_data._entry.149, section ".printk_index", align 4
@fc_fcp_recv_data._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016host%u: fcp: %6.6x: data received past end. len %zx offset %zx data_len %x\0A\00", [50 x i8] zeroinitializer }, align 32
@fc_fcp_recv_data._entry_ptr.154 = internal global ptr @fc_fcp_recv_data._entry.152, section ".printk_index", align 4
@fc_fcp_recv_data._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.145, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014libfc: CRC error on data frame for port (%6.6x)\0A\00", [45 x i8] zeroinitializer }, align 32
@fc_fcp_recv_data._entry_ptr.157 = internal global ptr @fc_fcp_recv_data._entry.155, section ".printk_index", align 4
@fc_fcp_recv_data._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.145, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: complete out-of-order sequence\0A\00", [59 x i8] zeroinitializer }, align 32
@fc_fcp_recv_data._entry_ptr.160 = internal global ptr @fc_fcp_recv_data._entry.158, section ".printk_index", align 4
@fc_fcp_recv_data._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.145, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016host%u: fcp: %6.6x: complete out-of-order sequence\0A\00", [42 x i8] zeroinitializer }, align 32
@fc_fcp_recv_data._entry_ptr.163 = internal global ptr @fc_fcp_recv_data._entry.161, section ".printk_index", align 4
@fc_fcp_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.2, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: start recovery code %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fc_fcp_recovery\00", [16 x i8] zeroinitializer }, align 32
@fc_fcp_recovery._entry_ptr = internal global ptr @fc_fcp_recovery._entry, section ".printk_index", align 4
@fc_fcp_recovery._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.165, ptr @.str.2, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016host%u: fcp: %6.6x: start recovery code %x\0A\00", [50 x i8] zeroinitializer }, align 32
@fc_fcp_recovery._entry_ptr.168 = internal global ptr @fc_fcp_recovery._entry.166, section ".printk_index", align 4
@fc_fcp_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: tgt %6.6x queue busy retry\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc_fcp_resp\00", [20 x i8] zeroinitializer }, align 32
@fc_fcp_resp._entry_ptr = internal global ptr @fc_fcp_resp._entry, section ".printk_index", align 4
@fc_fcp_resp._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016host%u: fcp: %6.6x: tgt %6.6x queue busy retry\0A\00", [46 x i8] zeroinitializer }, align 32
@fc_fcp_resp._entry_ptr.173 = internal global ptr @fc_fcp_resp._entry.171, section ".printk_index", align 4
@fc_fcp_resp._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.170, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: tgt %6.6x xfer len %zx data underrun len %x, data len %x\0A\00", [33 x i8] zeroinitializer }, align 32
@fc_fcp_resp._entry_ptr.176 = internal global ptr @fc_fcp_resp._entry.174, section ".printk_index", align 4
@fc_fcp_resp._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.170, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016host%u: fcp: %6.6x: tgt %6.6x xfer len %zx data underrun len %x, data len %x\0A\00", [48 x i8] zeroinitializer }, align 32
@fc_fcp_resp._entry_ptr.179 = internal global ptr @fc_fcp_resp._entry.177, section ".printk_index", align 4
@fc_fcp_resp._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.170, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: tgt %6.6x xfer len %zx greater than expected, len %x, data len %x\0A\00", [56 x i8] zeroinitializer }, align 32
@fc_fcp_resp._entry_ptr.182 = internal global ptr @fc_fcp_resp._entry.180, section ".printk_index", align 4
@fc_fcp_resp._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.170, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016host%u: fcp: %6.6x: tgt %6.6x xfer len %zx greater than expected, len %x, data len %x\0A\00", [39 x i8] zeroinitializer }, align 32
@fc_fcp_resp._entry_ptr.185 = internal global ptr @fc_fcp_resp._entry.183, section ".printk_index", align 4
@fc_fcp_resp._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.170, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: short FCP response. flags 0x%x len %u respl %u snsl %u\0A\00", [35 x i8] zeroinitializer }, align 32
@fc_fcp_resp._entry_ptr.188 = internal global ptr @fc_fcp_resp._entry.186, section ".printk_index", align 4
@fc_fcp_resp._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.170, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016host%u: fcp: %6.6x: short FCP response. flags 0x%x len %u respl %u snsl %u\0A\00", [50 x i8] zeroinitializer }, align 32
@fc_fcp_resp._entry_ptr.191 = internal global ptr @fc_fcp_resp._entry.189, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: pkt abort state %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_fcp_pkt_abort\00", [47 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr = internal global ptr @fc_fcp_pkt_abort._entry, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016host%u: fcp: %6.6x: pkt abort state %x\0A\00", [54 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.196 = internal global ptr @fc_fcp_pkt_abort._entry.194, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.193, ptr @.str.2, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: failed to send abort\0A\00", [37 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.199 = internal global ptr @fc_fcp_pkt_abort._entry.197, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.193, ptr @.str.2, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016host%u: fcp: %6.6x: failed to send abort\0A\00", [52 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.202 = internal global ptr @fc_fcp_pkt_abort._entry.200, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.193, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: target abort cmd  completed\0A\00", [62 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.205 = internal global ptr @fc_fcp_pkt_abort._entry.203, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.193, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016host%u: fcp: %6.6x: target abort cmd  completed\0A\00", [45 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.208 = internal global ptr @fc_fcp_pkt_abort._entry.206, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.193, ptr @.str.2, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: target abort cmd  failed\0A\00", [33 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.211 = internal global ptr @fc_fcp_pkt_abort._entry.209, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.193, ptr @.str.2, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016host%u: fcp: %6.6x: target abort cmd  failed\0A\00", [48 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.214 = internal global ptr @fc_fcp_pkt_abort._entry.212, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.193, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: target abort cmd  passed\0A\00", [33 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.217 = internal global ptr @fc_fcp_pkt_abort._entry.215, section ".printk_index", align 4
@fc_fcp_pkt_abort._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.193, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016host%u: fcp: %6.6x: target abort cmd  passed\0A\00", [48 x i8] zeroinitializer }, align 32
@fc_fcp_pkt_abort._entry_ptr.220 = internal global ptr @fc_fcp_pkt_abort._entry.218, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.221 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@fc_lun_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.2, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016host%u: scsi: lun reset failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fc_lun_reset\00", [19 x i8] zeroinitializer }, align 32
@fc_lun_reset._entry_ptr = internal global ptr @fc_lun_reset._entry, section ".printk_index", align 4
@fc_lun_reset._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str.2, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016host%u: scsi: lun reset to lun %u completed\0A\00", [49 x i8] zeroinitializer }, align 32
@fc_lun_reset._entry_ptr.226 = internal global ptr @fc_lun_reset._entry.224, section ".printk_index", align 4
@fc_fcp_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: fcp timeout, resetting timer delay %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fc_fcp_timeout\00", [17 x i8] zeroinitializer }, align 32
@fc_fcp_timeout._entry_ptr = internal global ptr @fc_fcp_timeout._entry, section ".printk_index", align 4
@fc_fcp_timeout._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.228, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016host%u: fcp: %6.6x: fcp timeout, resetting timer delay %d\0A\00", [35 x i8] zeroinitializer }, align 32
@fc_fcp_timeout._entry_ptr.231 = internal global ptr @fc_fcp_timeout._entry.229, section ".printk_index", align 4
@fc_fcp_timeout._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.228, ptr @.str.2, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: fcp timeout, delay %d flags %x state %x\0A\00", [50 x i8] zeroinitializer }, align 32
@fc_fcp_timeout._entry_ptr.234 = internal global ptr @fc_fcp_timeout._entry.232, section ".printk_index", align 4
@fc_fcp_timeout._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.228, ptr @.str.2, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016host%u: fcp: %6.6x: fcp timeout, delay %d flags %x state %x\0A\00", [33 x i8] zeroinitializer }, align 32
@fc_fcp_timeout._entry_ptr.237 = internal global ptr @fc_fcp_timeout._entry.235, section ".printk_index", align 4
@fc_fcp_rec_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.2, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: device %x invalid REC reject %d/%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fc_fcp_rec_resp\00", [16 x i8] zeroinitializer }, align 32
@fc_fcp_rec_resp._entry_ptr = internal global ptr @fc_fcp_rec_resp._entry, section ".printk_index", align 4
@fc_fcp_rec_resp._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.239, ptr @.str.2, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016host%u: fcp: %6.6x: device %x invalid REC reject %d/%d\0A\00", [38 x i8] zeroinitializer }, align 32
@fc_fcp_rec_resp._entry_ptr.242 = internal global ptr @fc_fcp_rec_resp._entry.240, section ".printk_index", align 4
@fc_fcp_rec_resp._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.239, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: device does not support REC\0A\00", [62 x i8] zeroinitializer }, align 32
@fc_fcp_rec_resp._entry_ptr.245 = internal global ptr @fc_fcp_rec_resp._entry.243, section ".printk_index", align 4
@fc_fcp_rec_resp._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.239, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016host%u: fcp: %6.6x: device does not support REC\0A\00", [45 x i8] zeroinitializer }, align 32
@fc_fcp_rec_resp._entry_ptr.248 = internal global ptr @fc_fcp_rec_resp._entry.246, section ".printk_index", align 4
@fc_fcp_rec_resp._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.239, ptr @.str.2, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: device %x REC reject %d/%d\0A\00", [63 x i8] zeroinitializer }, align 32
@fc_fcp_rec_resp._entry_ptr.251 = internal global ptr @fc_fcp_rec_resp._entry.249, section ".printk_index", align 4
@fc_fcp_rec_resp._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.239, ptr @.str.2, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016host%u: fcp: %6.6x: device %x REC reject %d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@fc_fcp_rec_resp._entry_ptr.254 = internal global ptr @fc_fcp_rec_resp._entry.252, section ".printk_index", align 4
@fc_fcp_rec_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.256, ptr @.str.2, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: REC %p fid %6.6x exchange closed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_fcp_rec_error\00", [47 x i8] zeroinitializer }, align 32
@fc_fcp_rec_error._entry_ptr = internal global ptr @fc_fcp_rec_error._entry, section ".printk_index", align 4
@fc_fcp_rec_error._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.256, ptr @.str.2, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016host%u: fcp: %6.6x: REC %p fid %6.6x exchange closed\0A\00", [40 x i8] zeroinitializer }, align 32
@fc_fcp_rec_error._entry_ptr.259 = internal global ptr @fc_fcp_rec_error._entry.257, section ".printk_index", align 4
@fc_fcp_rec_error._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.256, ptr @.str.2, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: REC %p fid %6.6x error unexpected error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@fc_fcp_rec_error._entry_ptr.262 = internal global ptr @fc_fcp_rec_error._entry.260, section ".printk_index", align 4
@fc_fcp_rec_error._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.256, ptr @.str.2, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016host%u: fcp: %6.6x: REC %p fid %6.6x error unexpected error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@fc_fcp_rec_error._entry_ptr.265 = internal global ptr @fc_fcp_rec_error._entry.263, section ".printk_index", align 4
@fc_fcp_rec_error._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.256, ptr @.str.2, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: REC %p fid %6.6x exchange timeout retry %d/%d\0A\00", [44 x i8] zeroinitializer }, align 32
@fc_fcp_rec_error._entry_ptr.268 = internal global ptr @fc_fcp_rec_error._entry.266, section ".printk_index", align 4
@fc_fcp_rec_error._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.256, ptr @.str.2, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016host%u: fcp: %6.6x: REC %p fid %6.6x exchange timeout retry %d/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@fc_fcp_rec_error._entry_ptr.271 = internal global ptr @fc_fcp_rec_error._entry.269, section ".printk_index", align 4
@fc_fcp_srr_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.273, ptr @.str.2, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: SRR timeout, retries %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_fcp_srr_error\00", [47 x i8] zeroinitializer }, align 32
@fc_fcp_srr_error._entry_ptr = internal global ptr @fc_fcp_srr_error._entry, section ".printk_index", align 4
@fc_fcp_srr_error._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.273, ptr @.str.2, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016host%u: fcp: %6.6x: SRR timeout, retries %d\0A\00", [49 x i8] zeroinitializer }, align 32
@fc_fcp_srr_error._entry_ptr.276 = internal global ptr @fc_fcp_srr_error._entry.274, section ".printk_index", align 4
@fc_fcp_srr_error._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.273, ptr @.str.2, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016host%u: fcp: %6.6x: xid %04x-%04x: SRR error, exchange closed\0A\00", [63 x i8] zeroinitializer }, align 32
@fc_fcp_srr_error._entry_ptr.279 = internal global ptr @fc_fcp_srr_error._entry.277, section ".printk_index", align 4
@fc_fcp_srr_error._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.273, ptr @.str.2, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016host%u: fcp: %6.6x: SRR error, exchange closed\0A\00", [46 x i8] zeroinitializer }, align 32
@fc_fcp_srr_error._entry_ptr.282 = internal global ptr @fc_fcp_srr_error._entry.280, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 11]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.285 = internal global [4 x i64] [i64 2, i64 8, i64 132, i64 133]
@__sancov_gen_cov_switch_values.286 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.287 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.288 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.289 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.290 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.291 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 9, i64 11]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1890, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2173, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2177, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2210, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2219, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2223, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2259, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2272, i32 38 }
@___asan_gen_.362 = private unnamed_addr constant [16 x i8] c"scsi_pkt_cachep\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 33, i32 27 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2276, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2313, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 146, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 148, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 796, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 809, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 840, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1005, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 447, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 254, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2005, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2018, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2026, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2036, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2042, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2045, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2052, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2057, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2062, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2067, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2072, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 2077, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 381, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 618, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 624, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 636, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1160, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 505, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 514, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 544, i32 5 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 573, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1699, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 947, i32 5 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 951, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 959, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 968, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1254, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1256, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1261, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1275, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1277, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.834 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 87, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1348, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1356, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1435, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1441, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1535, i32 4 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1541, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1552, i32 4 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1662, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1668, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1678, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1825, i32 3 }
@___asan_gen_.977 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.980 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.981 = private constant [31 x i8] c"../drivers/scsi/libfc/fc_fcp.c\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 1832, i32 3 }
@llvm.compiler.used = appending global [334 x ptr] [ptr @__ksymtab_fc_eh_abort, ptr @__ksymtab_fc_eh_device_reset, ptr @__ksymtab_fc_eh_host_reset, ptr @__ksymtab_fc_fcp_destroy, ptr @__ksymtab_fc_fcp_init, ptr @__ksymtab_fc_queuecommand, ptr @__ksymtab_fc_slave_alloc, ptr @fc_eh_device_reset._entry, ptr @fc_eh_device_reset._entry.7, ptr @fc_eh_device_reset._entry_ptr, ptr @fc_eh_device_reset._entry_ptr.9, ptr @fc_eh_host_reset._entry, ptr @fc_eh_host_reset._entry.12, ptr @fc_eh_host_reset._entry.16, ptr @fc_eh_host_reset._entry_ptr, ptr @fc_eh_host_reset._entry_ptr.15, ptr @fc_eh_host_reset._entry_ptr.18, ptr @fc_fcp_can_queue_ramp_up._entry, ptr @fc_fcp_can_queue_ramp_up._entry_ptr, ptr @fc_fcp_complete_locked._entry, ptr @fc_fcp_complete_locked._entry.47, ptr @fc_fcp_complete_locked._entry_ptr, ptr @fc_fcp_complete_locked._entry_ptr.49, ptr @fc_fcp_destroy._entry, ptr @fc_fcp_destroy._entry_ptr, ptr @fc_fcp_frame_alloc._entry, ptr @fc_fcp_frame_alloc._entry_ptr, ptr @fc_fcp_pkt_abort._entry, ptr @fc_fcp_pkt_abort._entry.194, ptr @fc_fcp_pkt_abort._entry.197, ptr @fc_fcp_pkt_abort._entry.200, ptr @fc_fcp_pkt_abort._entry.203, ptr @fc_fcp_pkt_abort._entry.206, ptr @fc_fcp_pkt_abort._entry.209, ptr @fc_fcp_pkt_abort._entry.212, ptr @fc_fcp_pkt_abort._entry.215, ptr @fc_fcp_pkt_abort._entry.218, ptr @fc_fcp_pkt_abort._entry_ptr, ptr @fc_fcp_pkt_abort._entry_ptr.196, ptr @fc_fcp_pkt_abort._entry_ptr.199, ptr @fc_fcp_pkt_abort._entry_ptr.202, ptr @fc_fcp_pkt_abort._entry_ptr.205, ptr @fc_fcp_pkt_abort._entry_ptr.208, ptr @fc_fcp_pkt_abort._entry_ptr.211, ptr @fc_fcp_pkt_abort._entry_ptr.214, ptr @fc_fcp_pkt_abort._entry_ptr.217, ptr @fc_fcp_pkt_abort._entry_ptr.220, ptr @fc_fcp_rec_error._entry, ptr @fc_fcp_rec_error._entry.257, ptr @fc_fcp_rec_error._entry.260, ptr @fc_fcp_rec_error._entry.263, ptr @fc_fcp_rec_error._entry.266, ptr @fc_fcp_rec_error._entry.269, ptr @fc_fcp_rec_error._entry_ptr, ptr @fc_fcp_rec_error._entry_ptr.259, ptr @fc_fcp_rec_error._entry_ptr.262, ptr @fc_fcp_rec_error._entry_ptr.265, ptr @fc_fcp_rec_error._entry_ptr.268, ptr @fc_fcp_rec_error._entry_ptr.271, ptr @fc_fcp_rec_resp._entry, ptr @fc_fcp_rec_resp._entry.240, ptr @fc_fcp_rec_resp._entry.243, ptr @fc_fcp_rec_resp._entry.246, ptr @fc_fcp_rec_resp._entry.249, ptr @fc_fcp_rec_resp._entry.252, ptr @fc_fcp_rec_resp._entry_ptr, ptr @fc_fcp_rec_resp._entry_ptr.242, ptr @fc_fcp_rec_resp._entry_ptr.245, ptr @fc_fcp_rec_resp._entry_ptr.248, ptr @fc_fcp_rec_resp._entry_ptr.251, ptr @fc_fcp_rec_resp._entry_ptr.254, ptr @fc_fcp_recovery._entry, ptr @fc_fcp_recovery._entry.166, ptr @fc_fcp_recovery._entry_ptr, ptr @fc_fcp_recovery._entry_ptr.168, ptr @fc_fcp_recv._entry, ptr @fc_fcp_recv._entry.30, ptr @fc_fcp_recv._entry.33, ptr @fc_fcp_recv._entry.36, ptr @fc_fcp_recv._entry.39, ptr @fc_fcp_recv._entry.42, ptr @fc_fcp_recv._entry_ptr, ptr @fc_fcp_recv._entry_ptr.32, ptr @fc_fcp_recv._entry_ptr.35, ptr @fc_fcp_recv._entry_ptr.38, ptr @fc_fcp_recv._entry_ptr.41, ptr @fc_fcp_recv._entry_ptr.44, ptr @fc_fcp_recv_data._entry, ptr @fc_fcp_recv_data._entry.146, ptr @fc_fcp_recv_data._entry.149, ptr @fc_fcp_recv_data._entry.152, ptr @fc_fcp_recv_data._entry.155, ptr @fc_fcp_recv_data._entry.158, ptr @fc_fcp_recv_data._entry.161, ptr @fc_fcp_recv_data._entry_ptr, ptr @fc_fcp_recv_data._entry_ptr.148, ptr @fc_fcp_recv_data._entry_ptr.151, ptr @fc_fcp_recv_data._entry_ptr.154, ptr @fc_fcp_recv_data._entry_ptr.157, ptr @fc_fcp_recv_data._entry_ptr.160, ptr @fc_fcp_recv_data._entry_ptr.163, ptr @fc_fcp_resp._entry, ptr @fc_fcp_resp._entry.171, ptr @fc_fcp_resp._entry.174, ptr @fc_fcp_resp._entry.177, ptr @fc_fcp_resp._entry.180, ptr @fc_fcp_resp._entry.183, ptr @fc_fcp_resp._entry.186, ptr @fc_fcp_resp._entry.189, ptr @fc_fcp_resp._entry_ptr, ptr @fc_fcp_resp._entry_ptr.173, ptr @fc_fcp_resp._entry_ptr.176, ptr @fc_fcp_resp._entry_ptr.179, ptr @fc_fcp_resp._entry_ptr.182, ptr @fc_fcp_resp._entry_ptr.185, ptr @fc_fcp_resp._entry_ptr.188, ptr @fc_fcp_resp._entry_ptr.191, ptr @fc_fcp_send_data._entry, ptr @fc_fcp_send_data._entry.128, ptr @fc_fcp_send_data._entry.131, ptr @fc_fcp_send_data._entry.134, ptr @fc_fcp_send_data._entry.137, ptr @fc_fcp_send_data._entry.140, ptr @fc_fcp_send_data._entry_ptr, ptr @fc_fcp_send_data._entry_ptr.130, ptr @fc_fcp_send_data._entry_ptr.133, ptr @fc_fcp_send_data._entry_ptr.136, ptr @fc_fcp_send_data._entry_ptr.139, ptr @fc_fcp_send_data._entry_ptr.142, ptr @fc_fcp_srr_error._entry, ptr @fc_fcp_srr_error._entry.274, ptr @fc_fcp_srr_error._entry.277, ptr @fc_fcp_srr_error._entry.280, ptr @fc_fcp_srr_error._entry_ptr, ptr @fc_fcp_srr_error._entry_ptr.276, ptr @fc_fcp_srr_error._entry_ptr.279, ptr @fc_fcp_srr_error._entry_ptr.282, ptr @fc_fcp_timeout._entry, ptr @fc_fcp_timeout._entry.229, ptr @fc_fcp_timeout._entry.232, ptr @fc_fcp_timeout._entry.235, ptr @fc_fcp_timeout._entry_ptr, ptr @fc_fcp_timeout._entry_ptr.231, ptr @fc_fcp_timeout._entry_ptr.234, ptr @fc_fcp_timeout._entry_ptr.237, ptr @fc_io_compl._entry, ptr @fc_io_compl._entry.100, ptr @fc_io_compl._entry.103, ptr @fc_io_compl._entry.106, ptr @fc_io_compl._entry.109, ptr @fc_io_compl._entry.112, ptr @fc_io_compl._entry.115, ptr @fc_io_compl._entry.118, ptr @fc_io_compl._entry.121, ptr @fc_io_compl._entry.55, ptr @fc_io_compl._entry.58, ptr @fc_io_compl._entry.61, ptr @fc_io_compl._entry.64, ptr @fc_io_compl._entry.67, ptr @fc_io_compl._entry.70, ptr @fc_io_compl._entry.73, ptr @fc_io_compl._entry.76, ptr @fc_io_compl._entry.79, ptr @fc_io_compl._entry.82, ptr @fc_io_compl._entry.85, ptr @fc_io_compl._entry.88, ptr @fc_io_compl._entry.91, ptr @fc_io_compl._entry.94, ptr @fc_io_compl._entry.97, ptr @fc_io_compl._entry_ptr, ptr @fc_io_compl._entry_ptr.102, ptr @fc_io_compl._entry_ptr.105, ptr @fc_io_compl._entry_ptr.108, ptr @fc_io_compl._entry_ptr.111, ptr @fc_io_compl._entry_ptr.114, ptr @fc_io_compl._entry_ptr.117, ptr @fc_io_compl._entry_ptr.120, ptr @fc_io_compl._entry_ptr.123, ptr @fc_io_compl._entry_ptr.57, ptr @fc_io_compl._entry_ptr.60, ptr @fc_io_compl._entry_ptr.63, ptr @fc_io_compl._entry_ptr.66, ptr @fc_io_compl._entry_ptr.69, ptr @fc_io_compl._entry_ptr.72, ptr @fc_io_compl._entry_ptr.75, ptr @fc_io_compl._entry_ptr.78, ptr @fc_io_compl._entry_ptr.81, ptr @fc_io_compl._entry_ptr.84, ptr @fc_io_compl._entry_ptr.87, ptr @fc_io_compl._entry_ptr.90, ptr @fc_io_compl._entry_ptr.93, ptr @fc_io_compl._entry_ptr.96, ptr @fc_io_compl._entry_ptr.99, ptr @fc_lun_reset._entry, ptr @fc_lun_reset._entry.224, ptr @fc_lun_reset._entry_ptr, ptr @fc_lun_reset._entry_ptr.226, ptr @fc_queuecommand._entry, ptr @fc_queuecommand._entry_ptr, ptr @fc_setup_fcp._entry, ptr @fc_setup_fcp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @scsi_pkt_cachep, ptr @.str.22, ptr @.str.23, ptr @fc_fcp_init.__key, ptr @.str.24, ptr @fc_fcp_pkt_alloc.__key, ptr @.str.25, ptr @fc_fcp_pkt_alloc.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @init_completion.__key, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.255, ptr @.str.256, ptr @.str.258, ptr @.str.261, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @.str.272, ptr @.str.273, ptr @.str.275, ptr @.str.278, ptr @.str.281], section "llvm.metadata"
@0 = internal global [230 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_queuecommand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_eh_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_eh_device_reset._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_eh_host_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_eh_host_reset._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_eh_host_reset._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_pkt_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_setup_fcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_alloc.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_complete_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_complete_locked._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_frame_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_io_compl._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_can_queue_ramp_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_send_data._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_send_data._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_send_data._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_send_data._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_send_data._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv_data._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv_data._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv_data._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv_data._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv_data._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recv_data._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_recovery._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_resp._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_resp._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_resp._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_resp._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_resp._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_resp._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_resp._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_pkt_abort._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_lun_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_lun_reset._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_timeout._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_timeout._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_timeout._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_resp._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_resp._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_resp._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_resp._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_resp._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_error._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_error._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_error._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_error._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_rec_error._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_srr_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_srr_error._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_srr_error._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_fcp_srr_error._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fcp_ddp_setup(ptr nocapture noundef %fsp, i16 noundef zeroext %xid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 64
  %req_flags = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 11
  %2 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %lro_enabled = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %lro_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %lro_enabled, align 8
  %5 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true2

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true2:                                   ; preds = %land.lhs.true
  %ddp_setup = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %ddp_setup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddp_setup, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true2.if.end11_crit_edge, label %if.then

land.lhs.true2.if.end11_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true2
  %cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 3
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 4
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdb.i, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 17, i32 0, i32 1
  %12 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nents.i, align 4
  %call8 = tail call i32 %7(ptr noundef %1, i16 noundef zeroext %xid, ptr noundef %11, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.if.end11_crit_edge, label %if.then10

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %xfer_ddp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 17
  %14 = ptrtoint ptr %xfer_ddp to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %xid, ptr %xfer_ddp, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then.if.end11_crit_edge, %land.lhs.true2.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fcp_ddp_done(ptr noundef %fsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fsp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %xfer_ddp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 17
  %0 = ptrtoint ptr %xfer_ddp to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %xfer_ddp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp = icmp eq i16 %1, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %2 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lp, align 64
  %ddp_done = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %ddp_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddp_done, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %5(ptr noundef %3, i16 noundef zeroext %1) #10
  %xfer_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %6 = ptrtoint ptr %xfer_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %xfer_len, align 4
  %7 = ptrtoint ptr %xfer_ddp to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %xfer_ddp, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_queuecommand(ptr noundef %shost, ptr noundef %sc_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call2 = tail call i32 @scsi_is_fc_rport(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %parent.i109 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55, i32 1
  %8 = ptrtoint ptr %parent.i109 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i109, align 8
  %parent6 = getelementptr i8, ptr %9, i32 136
  %10 = ptrtoint ptr %parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent6, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -240
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %port_state.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 8
  %12 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_state.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %cond.end.if.then_crit_edge [
    i32 2, label %cond.end.sw.bb.i_crit_edge
    i32 11, label %cond.end.sw.bb.i_crit_edge128
    i32 4, label %sw.bb6.i
  ]

cond.end.sw.bb.i_crit_edge128:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cond.end.sw.bb.i_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb.i:                                          ; preds = %cond.end.sw.bb.i_crit_edge, %cond.end.sw.bb.i_crit_edge128
  %roles.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 7
  %15 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags.i, align 8
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  %..i = select i1 %tobool2.not.i, i32 65536, i32 786432
  br label %if.then

sw.bb6.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags7.i = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 14
  %20 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags7.i, align 8
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not.i = icmp eq i8 %22, 0
  %.17.i = select i1 %tobool10.not.i, i32 786432, i32 983040
  br label %if.then

if.then:                                          ; preds = %sw.bb6.i, %if.else.i, %cond.end.if.then_crit_edge
  %result.0.i.ph = phi i32 [ 65536, %cond.end.if.then_crit_edge ], [ %.17.i, %sw.bb6.i ], [ %..i, %if.else.i ]
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 24
  %23 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %result.0.i.ph, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %sc_cmd) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 11
  %24 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dd_data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool9.not = icmp eq ptr %27, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %result11 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 24
  %28 = ptrtoint ptr %result11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 786432, ptr %result11, align 4
  tail call void @scsi_done(ptr noundef %sc_cmd) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %30)
  %cmp.i = icmp eq i32 %30, 14
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end12.if.then15_crit_edge

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

land.lhs.true.i:                                  ; preds = %if.end12
  %link_up.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 3
  %31 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %link_up.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i111 = icmp eq i8 %32, 0
  br i1 %tobool.not.i111, label %land.lhs.true.i.if.then15_crit_edge, label %fc_fcp_lport_queue_ready.exit

land.lhs.true.i.if.then15_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

fc_fcp_lport_queue_ready.exit:                    ; preds = %land.lhs.true.i
  %qfull.i = getelementptr inbounds %struct.fc_lport, ptr %hostdata.i, i32 0, i32 11
  %33 = ptrtoint ptr %qfull.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %qfull.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool1.not.i.not = icmp eq i8 %34, 0
  br i1 %tobool1.not.i.not, label %if.end23, label %fc_fcp_lport_queue_ready.exit.if.then15_crit_edge

fc_fcp_lport_queue_ready.exit.if.then15_crit_edge: ; preds = %fc_fcp_lport_queue_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %fc_fcp_lport_queue_ready.exit.if.then15_crit_edge, %land.lhs.true.i.if.then15_crit_edge, %if.end12.if.then15_crit_edge
  %qfull = getelementptr inbounds %struct.fc_lport, ptr %hostdata.i, i32 0, i32 11
  %35 = ptrtoint ptr %qfull to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %qfull, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool16.not = icmp eq i8 %36, 0
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %if.then17

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.then15
  %scsi_priv.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3
  %37 = ptrtoint ptr %scsi_priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scsi_priv.i, align 8
  %39 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hostdata.i, align 8
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #10
  %last_can_queue_ramp_down_time.i = getelementptr inbounds %struct.fc_fcp_internal, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %last_can_queue_ramp_down_time.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last_can_queue_ramp_down_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i112 = icmp eq i32 %44, 0
  br i1 %tobool.not.i112, label %if.then17.do.end_crit_edge, label %land.lhs.true.i114

if.then17.do.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true.i114:                               ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -6000, %44
  %sub.i113 = add i32 %add.neg.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i113)
  %cmp6.i = icmp slt i32 %sub.i113, 0
  br i1 %cmp6.i, label %fc_fcp_can_queue_ramp_down.exit, label %land.lhs.true.i114.do.end_crit_edge

land.lhs.true.i114.do.end_crit_edge:              ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

fc_fcp_can_queue_ramp_down.exit:                  ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hostdata.i, align 8
  %host_lock17.i = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %host_lock17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host_lock17.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %call2.i) #10
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true.i114.do.end_crit_edge, %if.then17.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %last_can_queue_ramp_down_time.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_can_queue_ramp_down_time.i, align 4
  %52 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hostdata.i, align 8
  %can_queue10.i = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 26
  %54 = ptrtoint ptr %can_queue10.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %can_queue10.i, align 4
  %shr.i = ashr i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %tobool11.not.inv.i = icmp ugt i32 %55, 1
  %spec.store.select.i = select i1 %tobool11.not.inv.i, i32 %shr.i, i32 1
  %56 = ptrtoint ptr %can_queue10.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.store.select.i, ptr %can_queue10.i, align 4
  %57 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hostdata.i, align 8
  %host_lock17.i126 = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %host_lock17.i126 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %host_lock17.i126, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %call2.i) #10
  %61 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hostdata.i, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %62, i32 0, i32 49
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %62, i32 0, i32 26
  %63 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %can_queue, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str, i32 noundef %64) #13
  br label %cleanup

if.end23:                                         ; preds = %fc_fcp_lport_queue_ready.exit
  %call24 = tail call fastcc ptr @fc_fcp_pkt_alloc(ptr noundef %hostdata.i, i32 noundef 2592)
  %cmp = icmp eq ptr %call24, null
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 3
  %65 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %sc_cmd, ptr %cmd, align 4
  %rport27 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 18
  %66 = ptrtoint ptr %rport27 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cond, ptr %rport27, align 128
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 17, i32 1
  %67 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length.i, align 4
  %data_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 2
  %69 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %data_len, align 16
  %xfer_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 13
  %70 = ptrtoint ptr %xfer_len to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %xfer_len, align 4
  %stats33 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 0, i32 5
  %71 = ptrtoint ptr %stats33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stats33, align 8
  %73 = ptrtoint ptr %72 to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %77, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !414
  %78 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i115 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i115 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx, align 4
  %add = add i32 %83, %73
  %84 = inttoptr i32 %add to ptr
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 15
  %85 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sc_data_direction, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.283)
  switch i32 %86, label %if.else53 [
    i32 2, label %if.then41
    i32 1, label %if.then47
  ]

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 11
  %88 = ptrtoint ptr %req_flags to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %req_flags, align 4
  %InputRequests = getelementptr inbounds %struct.fc_stats, ptr %84, i32 0, i32 14
  %89 = ptrtoint ptr %InputRequests to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %InputRequests, align 8
  %inc = add i64 %90, 1
  store i64 %inc, ptr %InputRequests, align 8
  %91 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len, align 16
  %InputBytes = getelementptr inbounds %struct.fc_stats, ptr %84, i32 0, i32 17
  br label %do.body58

if.then47:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags48 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 11
  %93 = ptrtoint ptr %req_flags48 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %req_flags48, align 4
  %OutputRequests = getelementptr inbounds %struct.fc_stats, ptr %84, i32 0, i32 15
  %94 = ptrtoint ptr %OutputRequests to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %OutputRequests, align 8
  %inc49 = add i64 %95, 1
  store i64 %inc49, ptr %OutputRequests, align 8
  %96 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_len, align 16
  %OutputBytes = getelementptr inbounds %struct.fc_stats, ptr %84, i32 0, i32 18
  br label %do.body58

if.else53:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %req_flags54 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 11
  %98 = ptrtoint ptr %req_flags54 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %req_flags54, align 4
  %ControlRequests = getelementptr inbounds %struct.fc_stats, ptr %84, i32 0, i32 16
  br label %do.body58

do.body58:                                        ; preds = %if.else53, %if.then47, %if.then41
  %InputBytes.sink127 = phi ptr [ %InputBytes, %if.then41 ], [ %ControlRequests, %if.else53 ], [ %OutputBytes, %if.then47 ]
  %conv.sink.shrunk = phi i32 [ %92, %if.then41 ], [ 1, %if.else53 ], [ %97, %if.then47 ]
  %conv.sink = zext i32 %conv.sink.shrunk to i64
  %99 = ptrtoint ptr %InputBytes.sink127 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %InputBytes.sink127, align 8
  %add43 = add i64 %100, %conv.sink
  store i64 %add43, ptr %InputBytes.sink127, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !415
  %101 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i107 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i107 to ptr
  %preempt_count.i.i108 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i108 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i108, align 4
  %sub.i = add i32 %104, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i108, align 4
  %scsi_priv.i116 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3
  %105 = ptrtoint ptr %scsi_priv.i116 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %scsi_priv.i116, align 8
  %107 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cmd, align 4
  %SCp.i = getelementptr inbounds %struct.scsi_cmnd, ptr %108, i32 0, i32 22
  %109 = ptrtoint ptr %SCp.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call24, ptr %SCp.i, align 4
  %110 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %data_len, align 16
  %cdb_cmd.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 14
  %fc_dl.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 14, i32 6
  %112 = ptrtoint ptr %fc_dl.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %fc_dl.i, align 4
  %req_flags.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 11
  %113 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %req_flags.i, align 4
  %115 = trunc i32 %114 to i8
  %conv.i = and i8 %115, 3
  %fc_flags.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 14, i32 4
  %116 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.i, ptr %fc_flags.i, align 1
  %117 = load ptr, ptr %cmd, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %119, i32 0, i32 18
  %120 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %lun.i, align 8
  tail call void @int_to_scsilun(i64 noundef %121, ptr noundef %cdb_cmd.i) #10
  %fc_cdb.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 14, i32 5
  %122 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cmd, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %123, i32 0, i32 16
  %124 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cmnd.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %123, i32 0, i32 14
  %126 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %cmd_len.i, align 4
  %conv7.i = zext i16 %127 to i32
  %128 = call ptr @memcpy(ptr %fc_cdb.i, ptr %125, i32 %conv7.i)
  %scsi_queue_lock.i = getelementptr inbounds %struct.fc_fcp_internal, ptr %106, i32 0, i32 1
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %scsi_queue_lock.i) #10
  %list.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 4
  %scsi_pkt_queue.i = getelementptr inbounds %struct.fc_fcp_internal, ptr %106, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.fc_fcp_internal, ptr %106, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %130, ptr noundef %scsi_pkt_queue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body58.list_add_tail.exit.i_crit_edge

do.body58.list_add_tail.exit.i_crit_edge:         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %list.i, ptr %prev.i.i, align 4
  %132 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %scsi_pkt_queue.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev3.i.i.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %list.i, ptr %130, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body58.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_queue_lock.i, i32 noundef %call10.i) #10
  %fcp_cmd_send.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 10
  %135 = ptrtoint ptr %fcp_cmd_send.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fcp_cmd_send.i, align 4
  %call14.i = tail call i32 %136(ptr noundef %hostdata.i, ptr noundef nonnull %call24, ptr noundef nonnull @fc_fcp_recv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i117 = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i117, label %list_add_tail.exit.i.cleanup_crit_edge, label %do.body18.i, !prof !416

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body18.i:                                      ; preds = %list_add_tail.exit.i
  %call26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %scsi_queue_lock.i) #10
  %137 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cmd, align 4
  %SCp32.i = getelementptr inbounds %struct.scsi_cmnd, ptr %138, i32 0, i32 22
  %139 = ptrtoint ptr %SCp32.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %SCp32.i, align 4
  %call.i.i58.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #10
  br i1 %call.i.i58.i, label %if.end.i.i59.i, label %do.body18.i.if.then64_crit_edge

do.body18.i.if.then64_crit_edge:                  ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.end.i.i59.i:                                   ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %prev.i.i.i, align 4
  %142 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %prev1.i.i.i.i, align 4
  %145 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %143, ptr %141, align 4
  br label %if.then64

if.then64:                                        ; preds = %if.end.i.i59.i, %do.body18.i.if.then64_crit_edge
  %146 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i60.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %prev.i60.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i60.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_queue_lock.i, i32 noundef %call26.i) #10
  %state = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 6
  %148 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %state, align 4
  %ref_cnt.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %149 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !416

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call24, i32 0, i32 5
  %150 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %lp.i, align 64
  %scsi_priv.i119 = getelementptr inbounds %struct.fc_lport, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %scsi_priv.i119 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %scsi_priv.i119, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  tail call void @mempool_free(ptr noundef nonnull %call24, ptr noundef %155) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %list_add_tail.exit.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end, %fc_fcp_can_queue_ramp_down.exit, %if.then15.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 4181, %fc_fcp_can_queue_ramp_down.exit ], [ 4181, %do.end ], [ 4181, %if.then15.cleanup_crit_edge ], [ 4181, %if.end23.cleanup_crit_edge ], [ 4181, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 4181, %if.then10.i.i.i.i ], [ 4181, %if.then.i ], [ 0, %list_add_tail.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_fc_rport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fc_fcp_can_queue_ramp_down(ptr nocapture noundef readonly %lport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_priv = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 5
  %0 = ptrtoint ptr %scsi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_priv, align 8
  %2 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lport, align 8
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %last_can_queue_ramp_down_time = getelementptr inbounds %struct.fc_fcp_internal, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last_can_queue_ramp_down_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_can_queue_ramp_down_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -6000, %7
  %sub = add i32 %add.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 0
  br i1 %cmp6, label %land.lhs.true.unlock_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %last_can_queue_ramp_down_time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_can_queue_ramp_down_time, align 4
  %11 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lport, align 8
  %can_queue10 = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %can_queue10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %can_queue10, align 4
  %shr = ashr i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %tobool11.not.inv = icmp ugt i32 %14, 1
  %spec.store.select = select i1 %tobool11.not.inv, i32 %shr, i32 1
  %15 = ptrtoint ptr %can_queue10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select, ptr %can_queue10, align 4
  br label %unlock

unlock:                                           ; preds = %if.end, %land.lhs.true.unlock_crit_edge
  %changed.0.off0 = phi i1 [ false, %land.lhs.true.unlock_crit_edge ], [ true, %if.end ]
  %16 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lport, align 8
  %host_lock17 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %host_lock17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_lock17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call2) #10
  ret i1 %changed.0.off0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fc_fcp_pkt_alloc(ptr noundef %lport, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_priv = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 5
  %0 = ptrtoint ptr %scsi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef %gfp) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memset(ptr %call, i32 0, i32 256)
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %lp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lport, ptr %lp, align 64
  %xfer_ddp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %xfer_ddp to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %xfer_ddp, align 2
  %ref_cnt = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt, i32 noundef 4) #10
  %7 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %ref_cnt, align 4
  %timer = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call, i32 0, i32 20
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @fc_fcp_pkt_alloc.__key) #10
  %list = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call, ptr noundef nonnull @.str.27, ptr noundef nonnull @fc_fcp_pkt_alloc.__key.26, i16 noundef signext 3) #10
  br label %if.end

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 16
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !420
  %17 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add = add i32 %22, %12
  %23 = inttoptr i32 %add to ptr
  %FcpPktAllocFails = getelementptr inbounds %struct.fc_stats, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %FcpPktAllocFails to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %FcpPktAllocFails, align 8
  %inc = add i64 %25, 1
  store i64 %inc, ptr %FcpPktAllocFails, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !421
  %26 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i27 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i27 to ptr
  %preempt_count.i.i28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i28, align 4
  %sub.i = add i32 %29, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i28, align 4
  br label %if.end

if.end:                                           ; preds = %do.body5, %if.then
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_eh_abort(ptr noundef %sc_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fc_block_scsi_eh(ptr noundef %sc_cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp.not = icmp eq i32 %5, 14
  br i1 %cmp.not, label %if.else, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %link_up = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 3
  %6 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_up, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.else
  %scsi_priv = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 3
  %8 = ptrtoint ptr %scsi_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scsi_priv, align 8
  %scsi_queue_lock = getelementptr inbounds %struct.fc_fcp_internal, ptr %9, i32 0, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %scsi_queue_lock) #10
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 22
  %10 = ptrtoint ptr %SCp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %SCp, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_queue_lock, i32 noundef %call10) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %ref_cnt.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end16.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !423

if.end16.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end16
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end16.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end16.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %fc_fcp_pkt_hold.exit

fc_fcp_pkt_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_queue_lock, i32 noundef %call10) #10
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %11) #10
  %state.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state.i, align 4
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end.i, label %fc_fcp_lock_pkt.exit

if.end.i:                                         ; preds = %fc_fcp_pkt_hold.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !423

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end21_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end21_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end21

fc_fcp_lock_pkt.exit:                             ; preds = %fc_fcp_pkt_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %11) #10
  br label %release_pkt

if.end21:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %19 = load i32, ptr @fc_debug_logging, align 4
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i43 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i43, label %if.end21.do.end27.i_crit_edge, label %do.body3.i, !prof !416

if.end21.do.end27.i_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27.i

do.body3.i:                                       ; preds = %if.end21
  %seq_ptr.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 19
  %20 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %seq_ptr.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  %lp15.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %lp15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lp15.i, align 64
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %host_no17.i = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %host_no17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_no17.i, align 4
  %rport18.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 18
  %28 = ptrtoint ptr %rport18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rport18.i, align 128
  %port_id19.i = getelementptr inbounds %struct.fc_rport, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %port_id19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_id19.i, align 8
  br i1 %tobool4.not.i, label %do.end13.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid.i = getelementptr i8, ptr %21, i32 -26
  %32 = ptrtoint ptr %oxid.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %oxid.i, align 2
  %conv.i = zext i16 %33 to i32
  %rxid.i = getelementptr i8, ptr %21, i32 -24
  %34 = ptrtoint ptr %rxid.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rxid.i, align 4
  %conv9.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %state.i, align 4
  %conv10.i = zext i8 %37 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, i32 noundef %27, i32 noundef %31, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %conv10.i) #13
  br label %do.end27.i

do.end13.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %state.i, align 4
  %conv21.i = zext i8 %39 to i32
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %27, i32 noundef %31, i32 noundef %conv21.i) #13
  br label %do.end27.i

do.end27.i:                                       ; preds = %do.end13.i, %if.then5.i, %if.end21.do.end27.i_crit_edge
  %call28.i = tail call fastcc i32 @fc_fcp_send_abort(ptr noundef nonnull %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end81.i, label %do.body31.i

do.body31.i:                                      ; preds = %do.end27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %40 = load i32, ptr @fc_debug_logging, align 4
  %and32.i = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %do.body31.i.fc_fcp_pkt_abort.exit_crit_edge, label %do.body41.i, !prof !416

do.body31.i.fc_fcp_pkt_abort.exit_crit_edge:      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_abort.exit

do.body41.i:                                      ; preds = %do.body31.i
  %seq_ptr42.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 19
  %41 = ptrtoint ptr %seq_ptr42.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seq_ptr42.i, align 4
  %tobool43.not.i = icmp eq ptr %42, null
  %lp69.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 5
  %43 = ptrtoint ptr %lp69.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lp69.i, align 64
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %host_no71.i = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %host_no71.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no71.i, align 4
  %rport72.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 18
  %49 = ptrtoint ptr %rport72.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rport72.i, align 128
  %port_id73.i = getelementptr inbounds %struct.fc_rport, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %port_id73.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port_id73.i, align 8
  br i1 %tobool43.not.i, label %do.end67.i, label %if.then44.i

if.then44.i:                                      ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid59.i = getelementptr i8, ptr %42, i32 -26
  %53 = ptrtoint ptr %oxid59.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %oxid59.i, align 2
  %conv60.i = zext i16 %54 to i32
  %rxid61.i = getelementptr i8, ptr %42, i32 -24
  %55 = ptrtoint ptr %rxid61.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rxid61.i, align 4
  %conv62.i = zext i16 %56 to i32
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef %48, i32 noundef %52, i32 noundef %conv60.i, i32 noundef %conv62.i) #13
  br label %fc_fcp_pkt_abort.exit

do.end67.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %48, i32 noundef %52) #13
  br label %fc_fcp_pkt_abort.exit

if.end81.i:                                       ; preds = %do.end27.i
  %57 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %state.i, align 4
  %59 = and i8 %58, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool85.not.i = icmp eq i8 %59, 0
  br i1 %tobool85.not.i, label %if.end137.i, label %do.body87.i

do.body87.i:                                      ; preds = %if.end81.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %60 = load i32, ptr @fc_debug_logging, align 4
  %and88.i = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %do.body87.i.fc_fcp_pkt_abort.exit_crit_edge, label %do.body97.i, !prof !416

do.body87.i.fc_fcp_pkt_abort.exit_crit_edge:      ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_abort.exit

do.body97.i:                                      ; preds = %do.body87.i
  %seq_ptr98.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 19
  %61 = ptrtoint ptr %seq_ptr98.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seq_ptr98.i, align 4
  %tobool99.not.i = icmp eq ptr %62, null
  %lp125.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 5
  %63 = ptrtoint ptr %lp125.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lp125.i, align 64
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %host_no127.i = getelementptr inbounds %struct.Scsi_Host, ptr %66, i32 0, i32 17
  %67 = ptrtoint ptr %host_no127.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %host_no127.i, align 4
  %rport128.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 18
  %69 = ptrtoint ptr %rport128.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rport128.i, align 128
  %port_id129.i = getelementptr inbounds %struct.fc_rport, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %port_id129.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port_id129.i, align 8
  br i1 %tobool99.not.i, label %do.end123.i, label %if.then100.i

if.then100.i:                                     ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid115.i = getelementptr i8, ptr %62, i32 -26
  %73 = ptrtoint ptr %oxid115.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %oxid115.i, align 2
  %conv116.i = zext i16 %74 to i32
  %rxid117.i = getelementptr i8, ptr %62, i32 -24
  %75 = ptrtoint ptr %rxid117.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %rxid117.i, align 4
  %conv118.i = zext i16 %76 to i32
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %68, i32 noundef %72, i32 noundef %conv116.i, i32 noundef %conv118.i) #13
  br label %fc_fcp_pkt_abort.exit

do.end123.i:                                      ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #12
  %call130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %68, i32 noundef %72) #13
  br label %fc_fcp_pkt_abort.exit

if.end137.i:                                      ; preds = %if.end81.i
  %tm_done.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 25
  %77 = ptrtoint ptr %tm_done.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %tm_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 25, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.221, ptr noundef nonnull @init_completion.__key) #10
  %wait_for_comp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 21
  %78 = ptrtoint ptr %wait_for_comp.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %wait_for_comp.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %11) #10
  %call139.i = tail call i32 @wait_for_completion_timeout(ptr noundef %tm_done.i, i32 noundef 1000) #10
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %11) #10
  %79 = ptrtoint ptr %wait_for_comp.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %wait_for_comp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool142.not.i = icmp eq i32 %call139.i, 0
  br i1 %tobool142.not.i, label %do.body144.i, label %if.else194.i

do.body144.i:                                     ; preds = %if.end137.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %80 = load i32, ptr @fc_debug_logging, align 4
  %and145.i = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i)
  %tobool146.not.i = icmp eq i32 %and145.i, 0
  br i1 %tobool146.not.i, label %do.body144.i.fc_fcp_pkt_abort.exit_crit_edge, label %do.body154.i, !prof !416

do.body144.i.fc_fcp_pkt_abort.exit_crit_edge:     ; preds = %do.body144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_abort.exit

do.body154.i:                                     ; preds = %do.body144.i
  %seq_ptr155.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 19
  %81 = ptrtoint ptr %seq_ptr155.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %seq_ptr155.i, align 4
  %tobool156.not.i = icmp eq ptr %82, null
  %lp182.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 5
  %83 = ptrtoint ptr %lp182.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lp182.i, align 64
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %host_no184.i = getelementptr inbounds %struct.Scsi_Host, ptr %86, i32 0, i32 17
  %87 = ptrtoint ptr %host_no184.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %host_no184.i, align 4
  %rport185.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 18
  %89 = ptrtoint ptr %rport185.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rport185.i, align 128
  %port_id186.i = getelementptr inbounds %struct.fc_rport, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %port_id186.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port_id186.i, align 8
  br i1 %tobool156.not.i, label %do.end180.i, label %if.then157.i

if.then157.i:                                     ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid172.i = getelementptr i8, ptr %82, i32 -26
  %93 = ptrtoint ptr %oxid172.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %oxid172.i, align 2
  %conv173.i = zext i16 %94 to i32
  %rxid174.i = getelementptr i8, ptr %82, i32 -24
  %95 = ptrtoint ptr %rxid174.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %rxid174.i, align 4
  %conv175.i = zext i16 %96 to i32
  %call176.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %88, i32 noundef %92, i32 noundef %conv173.i, i32 noundef %conv175.i) #13
  br label %fc_fcp_pkt_abort.exit

do.end180.i:                                      ; preds = %do.body154.i
  call void @__sanitizer_cov_trace_pc() #12
  %call187.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %88, i32 noundef %92) #13
  br label %fc_fcp_pkt_abort.exit

if.else194.i:                                     ; preds = %if.end137.i
  %97 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %state.i, align 4
  %99 = and i8 %98, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool198.not.i = icmp eq i8 %99, 0
  br i1 %tobool198.not.i, label %if.else194.i.fc_fcp_pkt_abort.exit_crit_edge, label %do.body200.i

if.else194.i.fc_fcp_pkt_abort.exit_crit_edge:     ; preds = %if.else194.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_abort.exit

do.body200.i:                                     ; preds = %if.else194.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %100 = load i32, ptr @fc_debug_logging, align 4
  %and201.i = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201.i)
  %tobool202.not.i = icmp eq i32 %and201.i, 0
  br i1 %tobool202.not.i, label %do.body200.i.do.end249.i_crit_edge, label %do.body210.i, !prof !416

do.body200.i.do.end249.i_crit_edge:               ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end249.i

do.body210.i:                                     ; preds = %do.body200.i
  %seq_ptr211.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 19
  %101 = ptrtoint ptr %seq_ptr211.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %seq_ptr211.i, align 4
  %tobool212.not.i = icmp eq ptr %102, null
  %lp238.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 5
  %103 = ptrtoint ptr %lp238.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %lp238.i, align 64
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %host_no240.i = getelementptr inbounds %struct.Scsi_Host, ptr %106, i32 0, i32 17
  %107 = ptrtoint ptr %host_no240.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %host_no240.i, align 4
  %rport241.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 18
  %109 = ptrtoint ptr %rport241.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rport241.i, align 128
  %port_id242.i = getelementptr inbounds %struct.fc_rport, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %port_id242.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port_id242.i, align 8
  br i1 %tobool212.not.i, label %do.end236.i, label %if.then213.i

if.then213.i:                                     ; preds = %do.body210.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid228.i = getelementptr i8, ptr %102, i32 -26
  %113 = ptrtoint ptr %oxid228.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %oxid228.i, align 2
  %conv229.i = zext i16 %114 to i32
  %rxid230.i = getelementptr i8, ptr %102, i32 -24
  %115 = ptrtoint ptr %rxid230.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %rxid230.i, align 4
  %conv231.i = zext i16 %116 to i32
  %call232.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %108, i32 noundef %112, i32 noundef %conv229.i, i32 noundef %conv231.i) #13
  br label %do.end249.i

do.end236.i:                                      ; preds = %do.body210.i
  call void @__sanitizer_cov_trace_pc() #12
  %call243.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %108, i32 noundef %112) #13
  br label %do.end249.i

do.end249.i:                                      ; preds = %do.end236.i, %if.then213.i, %do.body200.i.do.end249.i_crit_edge
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef nonnull %11) #10
  br label %fc_fcp_pkt_abort.exit

fc_fcp_pkt_abort.exit:                            ; preds = %do.end249.i, %if.else194.i.fc_fcp_pkt_abort.exit_crit_edge, %do.end180.i, %if.then157.i, %do.body144.i.fc_fcp_pkt_abort.exit_crit_edge, %do.end123.i, %if.then100.i, %do.body87.i.fc_fcp_pkt_abort.exit_crit_edge, %do.end67.i, %if.then44.i, %do.body31.i.fc_fcp_pkt_abort.exit_crit_edge
  %retval.0.i45 = phi i32 [ 8195, %if.then44.i ], [ 8195, %do.end67.i ], [ 8195, %do.body31.i.fc_fcp_pkt_abort.exit_crit_edge ], [ 8194, %if.then100.i ], [ 8194, %do.end123.i ], [ 8194, %do.body87.i.fc_fcp_pkt_abort.exit_crit_edge ], [ 8194, %do.end249.i ], [ 8195, %if.else194.i.fc_fcp_pkt_abort.exit_crit_edge ], [ 8195, %if.then157.i ], [ 8195, %do.end180.i ], [ 8195, %do.body144.i.fc_fcp_pkt_abort.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %11) #10
  %call.i.i.i.i.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %117 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %fc_fcp_pkt_abort.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i48 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i48, label %if.end5.i.i.i.i.i.release_pkt_crit_edge, label %if.then10.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.release_pkt_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_pkt

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef 3) #10
  br label %release_pkt

if.then.i.i:                                      ; preds = %fc_fcp_pkt_abort.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 5
  %118 = ptrtoint ptr %lp.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %lp.i.i, align 64
  %scsi_priv.i.i = getelementptr inbounds %struct.fc_lport, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %scsi_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %scsi_priv.i.i, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  tail call void @mempool_free(ptr noundef nonnull %11, ptr noundef %123) #10
  br label %release_pkt

release_pkt:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.release_pkt_crit_edge, %fc_fcp_lock_pkt.exit
  %rc.0 = phi i32 [ 8194, %fc_fcp_lock_pkt.exit ], [ %retval.0.i45, %if.end5.i.i.i.i.i.release_pkt_crit_edge ], [ %retval.0.i45, %if.then10.i.i.i.i.i ], [ %retval.0.i45, %if.then.i.i ]
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %124 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i51)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i51, 1
  br i1 %cmp.i.i.i.i, label %if.then.i53, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %release_pkt
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i51)
  %.not.i.i.i.i52 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i51, 0
  br i1 %.not.i.i.i.i52, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !416

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i53:                                      ; preds = %release_pkt
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %11, i32 0, i32 5
  %125 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lp.i, align 64
  %scsi_priv.i = getelementptr inbounds %struct.fc_lport, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %scsi_priv.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %scsi_priv.i, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  tail call void @mempool_free(ptr noundef nonnull %11, ptr noundef %130) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i53, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then14, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8194, %if.then14 ], [ %call, %entry.cleanup_crit_edge ], [ 8195, %if.end.cleanup_crit_edge ], [ 8195, %if.else.cleanup_crit_edge ], [ %rc.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %if.then.i53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_block_scsi_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_eh_device_reset(ptr noundef %sc_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %parent.i60 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55, i32 1
  %8 = ptrtoint ptr %parent.i60 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i60, align 8
  %parent5 = getelementptr i8, ptr %9, i32 136
  %10 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent5, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -240
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call6 = tail call i32 @fc_block_scsi_eh(ptr noundef %sc_cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 53
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 13, i32 13, i32 1, i32 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %17)
  %cmp.not = icmp eq i32 %17, 14
  br i1 %cmp.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %18 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body.do.end25_crit_edge, label %do.end, !prof !416

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hostdata.i, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_no, align 4
  %port_id = getelementptr inbounds %struct.fc_rport, ptr %cond, i32 0, i32 6
  %23 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_id, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %22, i32 noundef %24) #13
  br label %do.end25

do.end25:                                         ; preds = %do.end, %do.body.do.end25_crit_edge
  %call26 = tail call fastcc ptr @fc_fcp_pkt_alloc(ptr noundef %hostdata.i, i32 noundef 3072)
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %do.end31, label %if.end34

do.end31:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end34:                                         ; preds = %do.end25
  %rport35 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 18
  %25 = ptrtoint ptr %rport35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cond, ptr %rport35, align 128
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 18
  %30 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lun, align 8
  %conv = trunc i64 %31 to i32
  %data_len.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 2
  %32 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i, align 16
  %cdb_cmd.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 14
  %fc_dl.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 14, i32 6
  %34 = ptrtoint ptr %fc_dl.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fc_dl.i, align 4
  %fc_tm_flags.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 14, i32 3
  %35 = ptrtoint ptr %fc_tm_flags.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 16, ptr %fc_tm_flags.i, align 2
  %conv.i = and i64 %31, 4294967295
  tail call void @int_to_scsilun(i64 noundef %conv.i, ptr noundef %cdb_cmd.i) #10
  %wait_for_comp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 21
  %36 = ptrtoint ptr %wait_for_comp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %wait_for_comp.i, align 8
  %tm_done.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 25
  %37 = ptrtoint ptr %tm_done.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tm_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 25, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.221, ptr noundef nonnull @init_completion.__key) #10
  %timer.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 20
  tail call void @fc_lun_reset_send(ptr noundef %timer.i) #10
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %tm_done.i, i32 noundef 1000) #10
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %call26) #10
  %state.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 6
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %state.i, align 4
  %40 = or i8 %39, 32
  store i8 %40, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %call26) #10
  %call8.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #10
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull %call26) #10
  %seq_ptr.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 19
  %41 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seq_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end34.if.end.i_crit_edge, label %if.then.i

if.end34.if.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fc_exch_done(ptr noundef nonnull %42) #10
  %43 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %seq_ptr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end34.if.end.i_crit_edge
  %44 = ptrtoint ptr %wait_for_comp.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %wait_for_comp.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull %call26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %do.body.i, label %if.end28.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %45 = load i32, ptr @fc_debug_logging, align 4
  %and.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %do.body.i.fc_lun_reset.exit_crit_edge, label %do.end.i, !prof !416

do.body.i.fc_lun_reset.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_lun_reset.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hostdata.i, align 8
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %host_no.i, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, i32 noundef %49) #13
  br label %fc_lun_reset.exit

if.end28.i:                                       ; preds = %if.end.i
  %cdb_status.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 7
  %50 = ptrtoint ptr %cdb_status.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cdb_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.not.i = icmp eq i8 %51, 0
  br i1 %cmp.not.i, label %do.body33.i, label %if.end28.i.fc_lun_reset.exit_crit_edge

if.end28.i.fc_lun_reset.exit_crit_edge:           ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_lun_reset.exit

do.body33.i:                                      ; preds = %if.end28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %52 = load i32, ptr @fc_debug_logging, align 4
  %and34.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body33.i.do.end55.i_crit_edge, label %do.end46.i, !prof !416

do.body33.i.do.end55.i_crit_edge:                 ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55.i

do.end46.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hostdata.i, align 8
  %host_no49.i = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %host_no49.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %host_no49.i, align 4
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %56, i32 noundef %conv) #13
  br label %do.end55.i

do.end55.i:                                       ; preds = %do.end46.i, %do.body33.i.do.end55.i_crit_edge
  tail call fastcc void @fc_fcp_cleanup_each_cmd(ptr noundef %hostdata.i, i32 noundef %29, i32 noundef %conv, i32 noundef 1) #10
  br label %fc_lun_reset.exit

fc_lun_reset.exit:                                ; preds = %do.end55.i, %if.end28.i.fc_lun_reset.exit_crit_edge, %do.end.i, %do.body.i.fc_lun_reset.exit_crit_edge
  %retval.0.i = phi i32 [ 8194, %do.end55.i ], [ 8195, %do.end.i ], [ 8195, %do.body.i.fc_lun_reset.exit_crit_edge ], [ 8195, %if.end28.i.fc_lun_reset.exit_crit_edge ]
  %57 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %state.i, align 4
  %ref_cnt.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i62, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %fc_lun_reset.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !416

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i62:                                      ; preds = %fc_lun_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %call26, i32 0, i32 5
  %59 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lp.i, align 64
  %scsi_priv.i = getelementptr inbounds %struct.fc_lport, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %scsi_priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %scsi_priv.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  tail call void @mempool_free(ptr noundef nonnull %call26, ptr noundef %64) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i62, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end31, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %cond.end.cleanup_crit_edge ], [ 8195, %if.end.cleanup_crit_edge ], [ 8195, %do.end31 ], [ %retval.0.i, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i, %if.then10.i.i.i.i ], [ %retval.0.i, %if.then.i62 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_eh_host_reset(ptr nocapture noundef readonly %sc_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %4 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !416

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hostdata.i, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %host_no, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %8) #13
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %call11 = tail call i32 @fc_lport_reset(ptr noundef %hostdata.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 3000
  %state.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 4
  %link_up.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 3
  %qfull.i = getelementptr inbounds %struct.fc_lport, ptr %hostdata.i, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end10
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %cmp.i = icmp eq i32 %11, 14
  br i1 %cmp.i, label %land.lhs.true.i, label %land.rhs.thread49

land.lhs.true.i:                                  ; preds = %while.cond
  %12 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_up.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %land.rhs, label %fc_fcp_lport_queue_ready.exit

fc_fcp_lport_queue_ready.exit:                    ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %qfull.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %qfull.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i.not = icmp eq i8 %15, 0
  br i1 %tobool1.not.i.not, label %fc_fcp_lport_queue_ready.exit.cleanup_crit_edge, label %land.rhs.thread

fc_fcp_lport_queue_ready.exit.cleanup_crit_edge:  ; preds = %fc_fcp_lport_queue_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %16, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.while.body_crit_edge, label %land.rhs.land.lhs.true.i38_crit_edge

land.rhs.land.lhs.true.i38_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i38

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

land.rhs.thread49:                                ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub50 = sub i32 %17, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub50)
  %cmp51 = icmp slt i32 %sub50, 0
  br i1 %cmp51, label %land.rhs.thread49.while.body_crit_edge, label %land.rhs.thread49.do.end22_crit_edge

land.rhs.thread49.do.end22_crit_edge:             ; preds = %land.rhs.thread49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

land.rhs.thread49.while.body_crit_edge:           ; preds = %land.rhs.thread49
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

land.rhs.thread:                                  ; preds = %fc_fcp_lport_queue_ready.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub45 = sub i32 %18, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45)
  %cmp46 = icmp slt i32 %sub45, 0
  br i1 %cmp46, label %land.rhs.thread.while.body_crit_edge, label %land.rhs.thread.land.lhs.true.i38_crit_edge

land.rhs.thread.land.lhs.true.i38_crit_edge:      ; preds = %land.rhs.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i38

land.rhs.thread.while.body_crit_edge:             ; preds = %land.rhs.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %land.rhs.thread.while.body_crit_edge, %land.rhs.thread49.while.body_crit_edge, %land.rhs.while.body_crit_edge
  tail call void @msleep(i32 noundef 1000) #10
  br label %while.cond

land.lhs.true.i38:                                ; preds = %land.rhs.thread.land.lhs.true.i38_crit_edge, %land.rhs.land.lhs.true.i38_crit_edge
  %19 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr = load i8, ptr %link_up.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i37 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.do.end22_crit_edge, label %fc_fcp_lport_queue_ready.exit43

land.lhs.true.i38.do.end22_crit_edge:             ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

fc_fcp_lport_queue_ready.exit43:                  ; preds = %land.lhs.true.i38
  %20 = ptrtoint ptr %qfull.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr54 = load i8, ptr %qfull.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr54)
  %tobool1.not.i40.not = icmp eq i8 %.pr54, 0
  br i1 %tobool1.not.i40.not, label %fc_fcp_lport_queue_ready.exit43.cleanup_crit_edge, label %fc_fcp_lport_queue_ready.exit43.do.end22_crit_edge

fc_fcp_lport_queue_ready.exit43.do.end22_crit_edge: ; preds = %fc_fcp_lport_queue_ready.exit43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

fc_fcp_lport_queue_ready.exit43.cleanup_crit_edge: ; preds = %fc_fcp_lport_queue_ready.exit43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end22:                                         ; preds = %fc_fcp_lport_queue_ready.exit43.do.end22_crit_edge, %land.lhs.true.i38.do.end22_crit_edge, %land.rhs.thread49.do.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %fc_fcp_lport_queue_ready.exit43.cleanup_crit_edge, %fc_fcp_lport_queue_ready.exit.cleanup_crit_edge
  %.str.17.sink = phi ptr [ @.str.17, %do.end22 ], [ @.str.13, %fc_fcp_lport_queue_ready.exit43.cleanup_crit_edge ], [ @.str.13, %fc_fcp_lport_queue_ready.exit.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 8195, %do.end22 ], [ 8194, %fc_fcp_lport_queue_ready.exit43.cleanup_crit_edge ], [ 8194, %fc_fcp_lport_queue_ready.exit.cleanup_crit_edge ]
  %shost_gendev23 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  %port_id24 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7
  %21 = ptrtoint ptr %port_id24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_id24, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev23, ptr noundef nonnull %.str.17.sink, i32 noundef %22) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_lport_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_slave_alloc(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call1 = tail call i32 @scsi_is_fc_rport(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %entry
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %parent4 = getelementptr i8, ptr %5, i32 136
  %6 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent4, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 -240
  %tobool5.not = icmp eq ptr %add.ptr, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %port_state.i = getelementptr i8, ptr %7, i32 -40
  %8 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_state.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %9, label %lor.lhs.false.cleanup_crit_edge [
    i32 2, label %lor.lhs.false.sw.bb.i_crit_edge
    i32 11, label %lor.lhs.false.sw.bb.i_crit_edge18
  ]

lor.lhs.false.sw.bb.i_crit_edge18:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

lor.lhs.false.sw.bb.i_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %lor.lhs.false.sw.bb.i_crit_edge, %lor.lhs.false.sw.bb.i_crit_edge18
  %roles.i = getelementptr i8, ptr %7, i32 -44
  %11 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %roles.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.end

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef 32) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %cond.end.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %sw.bb.i.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_fcp_destroy(ptr nocapture noundef %lport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_priv = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 5
  %0 = ptrtoint ptr %scsi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_priv, align 8
  %scsi_pkt_queue = getelementptr inbounds %struct.fc_fcp_internal, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scsi_pkt_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %scsi_pkt_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %scsi_pkt_queue
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_id = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_id, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @mempool_destroy(ptr noundef %7) #10
  tail call void @kfree(ptr noundef %1) #10
  %8 = ptrtoint ptr %scsi_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %scsi_priv, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_setup_fcp() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.21, i32 noundef 256, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  store ptr %call, ptr @scsi_pkt_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ -12, %do.end ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_destroy_fcp() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @scsi_pkt_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fc_fcp_init(ptr nocapture noundef %lport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fcp_cmd_send = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 9
  %0 = ptrtoint ptr %fcp_cmd_send to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcp_cmd_send, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %fcp_cmd_send to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fc_fcp_cmd_send, ptr %fcp_cmd_send, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fcp_cleanup = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 10
  %3 = ptrtoint ptr %fcp_cleanup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcp_cleanup, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %fcp_cleanup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @fc_fcp_cleanup, ptr %fcp_cleanup, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %fcp_abort_io = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 11
  %6 = ptrtoint ptr %fcp_abort_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcp_abort_io, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %fcp_abort_io to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fc_fcp_abort_io, ptr %fcp_abort_io, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 68) #14
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %scsi_priv = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 5
  %10 = ptrtoint ptr %scsi_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %scsi_priv, align 8
  %11 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lport, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %can_queue, align 4
  %max_can_queue = getelementptr inbounds %struct.fc_fcp_internal, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %max_can_queue to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_can_queue, align 8
  %scsi_pkt_queue = getelementptr inbounds %struct.fc_fcp_internal, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %scsi_pkt_queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %scsi_pkt_queue, ptr %scsi_pkt_queue, align 8
  %prev.i = getelementptr inbounds %struct.fc_fcp_internal, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %scsi_pkt_queue, ptr %prev.i, align 4
  %scsi_queue_lock = getelementptr inbounds %struct.fc_fcp_internal, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %scsi_queue_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @fc_fcp_init.__key, i16 noundef signext 3) #10
  %18 = load ptr, ptr @scsi_pkt_cachep, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %18) #10
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %call7.i.i, align 8
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.then22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then22 ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc_fcp_cmd_send(ptr noundef %lport, ptr noundef %fsp, ptr noundef %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %fsp) #10
  %state.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = and i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %fc_fcp_lock_pkt.exit

if.end.i:                                         ; preds = %entry
  %ref_cnt.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !423

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end

fc_fcp_lock_pkt.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %fsp) #10
  br label %cleanup

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge
  %call2.i.i = tail call ptr @_fc_frame_alloc(i32 noundef 32) #10
  %tobool.not.i42 = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i42, label %fc_fcp_frame_alloc.exit.thread, label %if.end4, !prof !423

fc_fcp_frame_alloc.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stats.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 16
  %5 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats.i, align 8
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %11, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !424
  %12 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %7
  %18 = inttoptr i32 %add.i to ptr
  %FcpFrameAllocFails.i = getelementptr inbounds %struct.fc_stats, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %FcpFrameAllocFails.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %FcpFrameAllocFails.i, align 8
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %FcpFrameAllocFails.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !425
  %21 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i22.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i22.i to ptr
  %preempt_count.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i23.i, align 4
  %sub.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i23.i, align 4
  %call12.i = tail call fastcc zeroext i1 @fc_fcp_can_queue_ramp_down(ptr noundef %lport) #10
  %25 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lport, align 8
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 49
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 26
  %27 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %can_queue.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.50, i32 noundef %28) #13
  br label %unlock

if.end4:                                          ; preds = %if.end
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %30)
  %cmp.not.i = icmp ult i32 %30, 56
  br i1 %cmp.not.i, label %if.end4.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

if.end4.fc_frame_payload_get.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %32, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.end4.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.end4.fc_frame_payload_get.exit_crit_edge ]
  %cdb_cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 14
  %33 = call ptr @memcpy(ptr %pp.0.i, ptr %cdb_cmd, i32 32)
  %fr_fsp = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %fr_fsp to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %fsp, ptr %fr_fsp, align 8
  %rport6 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %35 = ptrtoint ptr %rport6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rport6, align 128
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %conv = trunc i32 %38 to i16
  %max_payload = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 16
  %39 = ptrtoint ptr %max_payload to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv, ptr %max_payload, align 4
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %36, i32 0, i32 11
  %40 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dd_data, align 4
  %port_id = getelementptr inbounds %struct.fc_rport, ptr %36, i32 0, i32 6
  %42 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_id, align 8
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %port_id7 = getelementptr inbounds %struct.fc_lport, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %port_id7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_id7, align 8
  %48 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %49)
  %cmp.i.i45 = icmp ult i32 %49, 24
  br i1 %cmp.i.i45, label %do.end.i.i46, label %fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge, !prof !423

fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge: ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fill_fc_hdr.exit

do.end.i.i46:                                     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_fill_fc_hdr.exit

fc_fill_fc_hdr.exit:                              ; preds = %do.end.i.i46, %fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge
  %data.i.i.i47 = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i47, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 6, ptr %51, align 4
  %fh_d_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %51, i32 0, i32 1
  %shr.i.i.i = lshr i32 %43, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %53 = ptrtoint ptr %fh_d_id.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i.i.i, ptr %fh_d_id.i.i, align 1
  %shr1.i.i.i = lshr i32 %43, 8
  %conv3.i.i.i = trunc i32 %shr1.i.i.i to i8
  %arrayidx4.i.i.i = getelementptr %struct.fc_frame_header, ptr %51, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = trunc i32 %43 to i8
  %arrayidx7.i.i.i = getelementptr %struct.fc_frame_header, ptr %51, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv6.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %51, i32 0, i32 3
  %shr.i31.i.i = lshr i32 %47, 16
  %conv.i32.i.i = trunc i32 %shr.i31.i.i to i8
  %56 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i32.i.i, ptr %fh_s_id.i.i, align 1
  %shr1.i33.i.i = lshr i32 %47, 8
  %conv3.i34.i.i = trunc i32 %shr1.i33.i.i to i8
  %arrayidx4.i35.i.i = getelementptr %struct.fc_frame_header, ptr %51, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %arrayidx4.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv3.i34.i.i, ptr %arrayidx4.i35.i.i, align 1
  %conv6.i36.i.i = trunc i32 %47 to i8
  %arrayidx7.i37.i.i = getelementptr %struct.fc_frame_header, ptr %51, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx7.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv6.i36.i.i, ptr %arrayidx7.i37.i.i, align 1
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %51, i32 0, i32 4
  %59 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 8, ptr %fh_type.i.i, align 4
  %fh_f_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %51, i32 0, i32 5
  %60 = ptrtoint ptr %fh_f_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 41, ptr %fh_f_ctl.i.i, align 1
  %arrayidx4.i42.i.i = getelementptr %struct.fc_frame_header, ptr %51, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %arrayidx4.i42.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx4.i42.i.i, align 1
  %arrayidx7.i44.i.i = getelementptr %struct.fc_frame_header, ptr %51, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %arrayidx7.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx7.i44.i.i, align 1
  %fh_cs_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %51, i32 0, i32 2
  %63 = ptrtoint ptr %fh_cs_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %fh_cs_ctl.i.i, align 4
  %fh_df_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %51, i32 0, i32 7
  %64 = ptrtoint ptr %fh_df_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %fh_df_ctl.i.i, align 1
  %fh_parm_offset.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %51, i32 0, i32 11
  %65 = ptrtoint ptr %fh_parm_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %fh_parm_offset.i.i, align 4
  %call8 = tail call ptr @fc_exch_seq_send(ptr noundef %lport, ptr noundef nonnull %call2.i.i, ptr noundef %resp, ptr noundef nonnull @fc_fcp_pkt_destroy, ptr noundef %fsp, i32 noundef 0) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %fc_fill_fc_hdr.exit.unlock_crit_edge, label %if.end11

fc_fill_fc_hdr.exit.unlock_crit_edge:             ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end11:                                         ; preds = %fc_fill_fc_hdr.exit
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %66 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call8, ptr %seq_ptr, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end11.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !423

if.end11.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end11
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %68 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i.i = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end11.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef %.sink.i.i.i.i) #10
  br label %fc_fcp_pkt_hold.exit

fc_fcp_pkt_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge
  %function = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 20, i32 2
  %69 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @fc_fcp_timeout, ptr %function, align 4
  %flags = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %41, i32 0, i32 2
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %flags, align 4
  %72 = and i16 %71, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool13.not = icmp eq i16 %72, 0
  br i1 %tobool13.not, label %fc_fcp_pkt_hold.exit.unlock_crit_edge, label %if.then14

fc_fcp_pkt_hold.exit.unlock_crit_edge:            ; preds = %fc_fcp_pkt_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then14:                                        ; preds = %fc_fcp_pkt_hold.exit
  %73 = ptrtoint ptr %rport6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rport6, align 128
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dd_data.i, align 4
  %tobool.not.i49 = icmp eq ptr %76, null
  br i1 %tobool.not.i49, label %if.then14.if.else.i.i_crit_edge, label %land.lhs.true.i

if.then14.if.else.i.i_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %e_d_tov1.i = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %e_d_tov1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %e_d_tov1.i, align 4
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 2000) #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i, %if.then14.if.else.i.i_crit_edge
  %e_d_tov.0.i = phi i32 [ 2000, %if.then14.if.else.i.i_crit_edge ], [ %79, %land.lhs.true.i ]
  %call2.i.i52 = tail call i32 @__msecs_to_jiffies(i32 noundef %e_d_tov.0.i) #10
  %80 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %state.i, align 4
  %82 = and i8 %81, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i55 = icmp eq i8 %82, 0
  br i1 %tobool.not.i55, label %if.then.i57, label %if.else.i.i.unlock_crit_edge

if.else.i.i.unlock_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then.i57:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i53 = add i32 %call2.i.i52, 100
  %timer.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %add.i56 = add i32 %83, %add.i53
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i56) #10
  %timer_delay.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 22
  %84 = ptrtoint ptr %timer_delay.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i53, ptr %timer_delay.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.then.i57, %if.else.i.i.unlock_crit_edge, %fc_fcp_pkt_hold.exit.unlock_crit_edge, %fc_fill_fc_hdr.exit.unlock_crit_edge, %fc_fcp_frame_alloc.exit.thread
  %rc.0 = phi i32 [ 0, %fc_fcp_pkt_hold.exit.unlock_crit_edge ], [ -1, %fc_fill_fc_hdr.exit.unlock_crit_edge ], [ -1, %fc_fcp_frame_alloc.exit.thread ], [ 0, %if.else.i.i.unlock_crit_edge ], [ 0, %if.then.i57 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %fsp) #10
  %call.i.i.i.i.i.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i62, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i61 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i61, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i62:                                    ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %86 = ptrtoint ptr %lp.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lp.i.i, align 64
  %scsi_priv.i.i = getelementptr inbounds %struct.fc_lport, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %scsi_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %scsi_priv.i.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  tail call void @mempool_free(ptr noundef %fsp, ptr noundef %91) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i62, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %fc_fcp_lock_pkt.exit
  %retval.0 = phi i32 [ 0, %fc_fcp_lock_pkt.exit ], [ %rc.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %rc.0, %if.then10.i.i.i.i.i ], [ %rc.0, %if.then.i.i62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_fcp_cleanup(ptr nocapture noundef readonly %lport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fc_fcp_cleanup_each_cmd(ptr noundef %lport, i32 noundef -1, i32 noundef -1, i32 noundef 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_fcp_abort_io(ptr nocapture noundef readonly %lport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @fc_fcp_cleanup_each_cmd(ptr noundef %lport, i32 noundef -1, i32 noundef -1, i32 noundef 9)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_fcp_recv(ptr noundef %seq, ptr noundef %fp, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 64
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %arg) #10
  %state.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 6
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i.i, align 4
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %fc_fcp_lock_pkt.exit.i

if.end.i.i:                                       ; preds = %if.then
  %ref_cnt.i.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i.i, ptr %ref_cnt.i.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !423

if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end.i_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end.i

fc_fcp_lock_pkt.exit.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end.i_crit_edge
  %cmp.i382 = icmp eq ptr %fp, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i382, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %seq_ptr.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %7 = ptrtoint ptr %seq_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seq_ptr.i.i, align 4
  %tobool.not.i10.i = icmp eq ptr %8, null
  br i1 %tobool.not.i10.i, label %if.then2.i.fc_fcp_retry_cmd.exit.i_crit_edge, label %if.then.i11.i

if.then2.i.fc_fcp_retry_cmd.exit.i_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_retry_cmd.exit.i

if.then.i11.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fc_exch_done(ptr noundef nonnull %8) #10
  %9 = ptrtoint ptr %seq_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %seq_ptr.i.i, align 4
  br label %fc_fcp_retry_cmd.exit.i

fc_fcp_retry_cmd.exit.i:                          ; preds = %if.then.i11.i, %if.then2.i.fc_fcp_retry_cmd.exit.i_crit_edge
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state.i.i, align 4
  %12 = and i8 %11, -5
  store i8 %12, ptr %state.i.i, align 4
  %io_status.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 10
  %13 = ptrtoint ptr %io_status.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %io_status.i.i, align 8
  br label %unlock.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state.i.i, align 4
  %16 = and i8 %15, -5
  store i8 %16, ptr %state.i.i, align 4
  br label %unlock.i

unlock.i:                                         ; preds = %if.end3.i, %fc_fcp_retry_cmd.exit.i
  %.sink = phi i8 [ 3, %if.end3.i ], [ 8, %fc_fcp_retry_cmd.exit.i ]
  %status_code.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 8
  %17 = ptrtoint ptr %status_code.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %status_code.i, align 2
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %arg) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  %call.i.i.i.i.i.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i.i, ptr %ref_cnt.i.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %unlock.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i16.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i16.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %19 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lp, align 64
  %scsi_priv.i.i.i = getelementptr inbounds %struct.fc_lport, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %scsi_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scsi_priv.i.i.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %24) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %26)
  %cmp.i383 = icmp ult i32 %26, 24
  br i1 %cmp.i383, label %do.end.i, label %if.end.fc_frame_header_get.exit_crit_edge, !prof !423

if.end.fc_frame_header_get.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %state = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %32)
  %cmp.not = icmp eq i32 %32, 14
  br i1 %cmp.not, label %if.end35, label %do.body

do.body:                                          ; preds = %fc_frame_header_get.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %33 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.out_crit_edge, label %do.body6, !prof !416

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body6:                                         ; preds = %do.body
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %34 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %seq_ptr, align 4
  %tobool7.not = icmp eq ptr %35, null
  %36 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lp, align 64
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %host_no23 = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %host_no23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %host_no23, align 4
  %rport24 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %42 = ptrtoint ptr %rport24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rport24, align 128
  %port_id25 = getelementptr inbounds %struct.fc_rport, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %port_id25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port_id25, align 8
  br i1 %tobool7.not, label %do.end19, label %if.then8

if.then8:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %35, i32 -26
  %46 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %oxid, align 2
  %conv = zext i16 %47 to i32
  %rxid = getelementptr i8, ptr %35, i32 -24
  %48 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rxid, align 4
  %conv13 = zext i16 %49 to i32
  %conv15 = zext i8 %30 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %41, i32 noundef %45, i32 noundef %conv, i32 noundef %conv13, i32 noundef %32, i32 noundef %conv15) #13
  br label %out

do.end19:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %conv27 = zext i8 %30 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %41, i32 noundef %45, i32 noundef %32, i32 noundef %conv27) #13
  br label %out

if.end35:                                         ; preds = %fc_frame_header_get.exit
  tail call void @_raw_spin_lock_bh(ptr noundef %arg) #10
  %state.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 6
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %state.i, align 4
  %52 = and i8 %51, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %if.end.i385, label %fc_fcp_lock_pkt.exit

if.end.i385:                                      ; preds = %if.end35
  %ref_cnt.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i385.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !423

if.end.i385.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i385
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %54 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i.i.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end39_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end39_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i385.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i385.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end39

fc_fcp_lock_pkt.exit:                             ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  br label %out

if.end39:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end39_crit_edge
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %28, i32 0, i32 4
  %55 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp41 = icmp eq i8 %56, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %58)
  %cmp.i.i = icmp ult i32 %58, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then43.fc_frame_header_get.exit.i_crit_edge, !prof !423

if.then43.fc_frame_header_get.exit.i_crit_edge:   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.then43.fc_frame_header_get.exit.i_crit_edge
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 4
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.285)
  switch i8 %62, label %fc_frame_header_get.exit.i.unlock_crit_edge [
    i8 -124, label %fc_frame_header_get.exit.i.if.then5.i_crit_edge
    i8 -123, label %sw.bb.i
  ]

fc_frame_header_get.exit.i.if.then5.i_crit_edge:  ; preds = %fc_frame_header_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

fc_frame_header_get.exit.i.unlock_crit_edge:      ; preds = %fc_frame_header_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

sw.bb.i:                                          ; preds = %fc_frame_header_get.exit.i
  %64 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %65)
  %cmp.not.i.i = icmp ult i32 %65, 28
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %60, i32 1
  %tobool.not.i386 = icmp eq ptr %add.ptr.i.i, null
  %or.cond = or i1 %tobool.not.i386, %cmp.not.i.i
  br i1 %or.cond, label %sw.bb.i.unlock_crit_edge, label %land.lhs.true.i

sw.bb.i.unlock_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %br_reason.i = getelementptr %struct.fc_frame_header, ptr %60, i32 1, i32 1
  %66 = ptrtoint ptr %br_reason.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %br_reason.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp.i387 = icmp eq i8 %67, 3
  br i1 %cmp.i387, label %land.lhs.true.i.if.then5.i_crit_edge, label %land.lhs.true.i.unlock_crit_edge

land.lhs.true.i.unlock_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

land.lhs.true.i.if.then5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

if.then5.i:                                       ; preds = %land.lhs.true.i.if.then5.i_crit_edge, %fc_frame_header_get.exit.i.if.then5.i_crit_edge
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %state.i, align 4
  %70 = and i8 %69, -13
  %71 = or i8 %70, 8
  store i8 %71, ptr %state.i, align 4
  %wait_for_comp.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 21
  %72 = ptrtoint ptr %wait_for_comp.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wait_for_comp.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i389 = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i389, label %if.else.i.i, label %if.then.i9.i

if.then.i9.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %tm_done.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 25
  tail call void @complete(ptr noundef %tm_done.i.i) #10
  br label %unlock

if.else.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %arg) #10
  br label %unlock

if.end44:                                         ; preds = %if.end39
  %74 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %state.i, align 4
  %76 = and i8 %75, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool48.not = icmp eq i8 %76, 0
  br i1 %tobool48.not, label %if.end102, label %do.body50

do.body50:                                        ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %77 = load i32, ptr @fc_debug_logging, align 4
  %and51 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.unlock_crit_edge, label %do.body60, !prof !416

do.body50.unlock_crit_edge:                       ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

do.body60:                                        ; preds = %do.body50
  %seq_ptr61 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %78 = ptrtoint ptr %seq_ptr61 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %seq_ptr61, align 4
  %tobool62.not = icmp eq ptr %79, null
  %80 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lp, align 64
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %host_no91 = getelementptr inbounds %struct.Scsi_Host, ptr %83, i32 0, i32 17
  %84 = ptrtoint ptr %host_no91 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %host_no91, align 4
  %rport92 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %86 = ptrtoint ptr %rport92 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rport92, align 128
  %port_id93 = getelementptr inbounds %struct.fc_rport, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %port_id93 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port_id93, align 8
  br i1 %tobool62.not, label %do.end87, label %if.then63

if.then63:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %oxid78 = getelementptr i8, ptr %79, i32 -26
  %90 = ptrtoint ptr %oxid78 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %oxid78, align 2
  %conv79 = zext i16 %91 to i32
  %rxid80 = getelementptr i8, ptr %79, i32 -24
  %92 = ptrtoint ptr %rxid80 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %rxid80, align 4
  %conv81 = zext i16 %93 to i32
  %conv82 = zext i8 %30 to i32
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %85, i32 noundef %89, i32 noundef %conv79, i32 noundef %conv81, i32 noundef %conv82) #13
  br label %unlock

do.end87:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %conv94 = zext i8 %30 to i32
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %85, i32 noundef %89, i32 noundef %conv94) #13
  br label %unlock

if.end102:                                        ; preds = %if.end44
  %conv103 = zext i8 %30 to i32
  %94 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.286)
  switch i8 %30, label %do.body259 [
    i8 5, label %if.then106
    i8 1, label %if.then181
    i8 7, label %if.then220
  ]

if.then106:                                       ; preds = %if.end102
  %fr_flags = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 20
  %95 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %fr_flags, align 4
  %97 = and i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool109.not = icmp eq i8 %97, 0
  br i1 %tobool109.not, label %if.then106.if.end131_crit_edge, label %do.end125, !prof !416

if.then106.if.end131_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

do.end125:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 818, i32 noundef 9, ptr noundef null) #10
  br label %if.end131

if.end131:                                        ; preds = %do.end125, %if.then106.if.end131_crit_edge
  %98 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %99)
  %cmp.not.i = icmp ult i32 %99, 36
  br i1 %cmp.not.i, label %if.end131.do.end159_crit_edge, label %fc_frame_payload_get.exit

if.end131.do.end159_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end159

fc_frame_payload_get.exit:                        ; preds = %if.end131
  %100 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %101, i32 1
  %tobool141.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool141.not, label %fc_frame_payload_get.exit.do.end159_crit_edge, label %fc_frame_payload_get.exit.if.end165_crit_edge, !prof !423

fc_frame_payload_get.exit.if.end165_crit_edge:    ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

fc_frame_payload_get.exit.do.end159_crit_edge:    ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end159

do.end159:                                        ; preds = %fc_frame_payload_get.exit.do.end159_crit_edge, %if.end131.do.end159_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 820, i32 noundef 9, ptr noundef null) #10
  br label %if.end165

if.end165:                                        ; preds = %do.end159, %fc_frame_payload_get.exit.if.end165_crit_edge
  %pp.0.i404 = phi ptr [ null, %do.end159 ], [ %add.ptr.i, %fc_frame_payload_get.exit.if.end165_crit_edge ]
  %102 = ptrtoint ptr %pp.0.i404 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pp.0.i404, align 4
  %ft_burst_len = getelementptr inbounds %struct.fcp_txrdy, ptr %pp.0.i404, i32 0, i32 1
  %104 = ptrtoint ptr %ft_burst_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ft_burst_len, align 4
  %call173 = tail call fastcc i32 @fc_fcp_send_data(ptr noundef %arg, ptr noundef %seq, i32 noundef %103, i32 noundef %105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then175, label %if.end165.unlock_crit_edge

if.end165.unlock_crit_edge:                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then175:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %xfer_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 13
  %106 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %xfer_len, align 4
  %rec_data = getelementptr inbounds %struct.fc_seq, ptr %seq, i32 0, i32 3
  %108 = ptrtoint ptr %rec_data to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %rec_data, align 4
  br label %unlock

if.then181:                                       ; preds = %if.end102
  %109 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %110)
  %cmp184 = icmp ult i32 %110, 24
  br i1 %cmp184, label %do.end201, label %if.then181.if.end207_crit_edge, !prof !423

if.then181.if.end207_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end207

do.end201:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 832, i32 noundef 9, ptr noundef null) #10
  br label %if.end207

if.end207:                                        ; preds = %do.end201, %if.then181.if.end207_crit_edge
  tail call fastcc void @fc_fcp_recv_data(ptr noundef %arg, ptr noundef %fp)
  %xfer_contig_end = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 15
  %111 = ptrtoint ptr %xfer_contig_end to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %xfer_contig_end, align 8
  %rec_data215 = getelementptr inbounds %struct.fc_seq, ptr %seq, i32 0, i32 3
  %113 = ptrtoint ptr %rec_data215 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %rec_data215, align 4
  br label %unlock

if.then220:                                       ; preds = %if.end102
  %fr_flags225 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 20
  %114 = ptrtoint ptr %fr_flags225 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %fr_flags225, align 4
  %116 = and i8 %115, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool228.not = icmp eq i8 %116, 0
  br i1 %tobool228.not, label %if.then220.if.end250_crit_edge, label %do.end244, !prof !416

if.then220.if.end250_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250

do.end244:                                        ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 836, i32 noundef 9, ptr noundef null) #10
  br label %if.end250

if.end250:                                        ; preds = %do.end244, %if.then220.if.end250_crit_edge
  tail call fastcc void @fc_fcp_resp(ptr noundef %arg, ptr noundef %fp)
  br label %unlock

do.body259:                                       ; preds = %if.end102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %117 = load i32, ptr @fc_debug_logging, align 4
  %and260 = and i32 %117, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %do.body259.unlock_crit_edge, label %do.body269, !prof !416

do.body259.unlock_crit_edge:                      ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

do.body269:                                       ; preds = %do.body259
  %seq_ptr270 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %118 = ptrtoint ptr %seq_ptr270 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %seq_ptr270, align 4
  %tobool271.not = icmp eq ptr %119, null
  %120 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %lp, align 64
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 8
  %host_no300 = getelementptr inbounds %struct.Scsi_Host, ptr %123, i32 0, i32 17
  %124 = ptrtoint ptr %host_no300 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %host_no300, align 4
  %rport301 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %126 = ptrtoint ptr %rport301 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rport301, align 128
  %port_id302 = getelementptr inbounds %struct.fc_rport, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %port_id302 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port_id302, align 8
  br i1 %tobool271.not, label %do.end296, label %if.then272

if.then272:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #12
  %oxid287 = getelementptr i8, ptr %119, i32 -26
  %130 = ptrtoint ptr %oxid287 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %oxid287, align 2
  %conv288 = zext i16 %131 to i32
  %rxid289 = getelementptr i8, ptr %119, i32 -24
  %132 = ptrtoint ptr %rxid289 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %rxid289, align 4
  %conv290 = zext i16 %133 to i32
  %call292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %125, i32 noundef %129, i32 noundef %conv288, i32 noundef %conv290, i32 noundef %conv103) #13
  br label %unlock

do.end296:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #12
  %call304 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %125, i32 noundef %129, i32 noundef %conv103) #13
  br label %unlock

unlock:                                           ; preds = %do.end296, %if.then272, %do.body259.unlock_crit_edge, %if.end250, %if.end207, %if.then175, %if.end165.unlock_crit_edge, %do.end87, %if.then63, %do.body50.unlock_crit_edge, %if.else.i.i, %if.then.i9.i, %land.lhs.true.i.unlock_crit_edge, %sw.bb.i.unlock_crit_edge, %fc_frame_header_get.exit.i.unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  %call.i.i.i.i.i.i.i397 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %134 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i398 = extractvalue { i32, i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i398)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i398, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i398)
  %.not.i.i.i.i.i399 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i398, 0
  br i1 %.not.i.i.i.i.i399, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef 3) #10
  br label %out

if.then.i.i:                                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %135 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lp, align 64
  %scsi_priv.i.i = getelementptr inbounds %struct.fc_lport, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %scsi_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %scsi_priv.i.i, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %140) #10
  br label %out

out:                                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %fc_fcp_lock_pkt.exit, %do.end19, %if.then8, %do.body.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %fc_fcp_lock_pkt.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc_fcp_send_data(ptr noundef %fsp, ptr noundef %seq, i32 noundef %offset, i32 noundef %seq_blen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 64
  %sg_supp = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %sg_supp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %sg_supp, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_blen)
  %cmp = icmp eq i32 %seq_blen, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !423

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 615, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add = add i32 %seq_blen, %offset
  %data_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 2
  %3 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp19 = icmp ugt i32 %add, %4
  br i1 %cmp19, label %do.body27, label %if.else64, !prof !423

do.body27:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %5 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.body27.do.end62_crit_edge, label %do.body36, !prof !416

do.body27.do.end62_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

do.body36:                                        ; preds = %do.body27
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %6 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %seq_ptr, align 4
  %tobool37.not = icmp eq ptr %7, null
  %8 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %host_no53 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %host_no53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no53, align 4
  %rport54 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %14 = ptrtoint ptr %rport54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rport54, align 128
  %port_id55 = getelementptr inbounds %struct.fc_rport, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %port_id55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_id55, align 8
  br i1 %tobool37.not, label %do.end49, label %if.then38

if.then38:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %7, i32 -26
  %18 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %oxid, align 2
  %conv = zext i16 %19 to i32
  %rxid = getelementptr i8, ptr %7, i32 -24
  %20 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rxid, align 4
  %conv46 = zext i16 %21 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %13, i32 noundef %17, i32 noundef %conv, i32 noundef %conv46, i32 noundef %seq_blen, i32 noundef %offset) #13
  br label %do.end62

do.end49:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %13, i32 noundef %17, i32 noundef %seq_blen, i32 noundef %offset) #13
  br label %do.end62

do.end62:                                         ; preds = %do.end49, %if.then38, %do.body27.do.end62_crit_edge
  %call63 = tail call fastcc i32 @fc_fcp_send_abort(ptr noundef %fsp)
  br label %cleanup

if.else64:                                        ; preds = %if.end
  %xfer_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %22 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %offset)
  %cmp65.not = icmp eq i32 %23, %offset
  br i1 %cmp65.not, label %if.else64.if.end119_crit_edge, label %do.body68

if.else64.if.end119_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

do.body68:                                        ; preds = %if.else64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %24 = load i32, ptr @fc_debug_logging, align 4
  %and69 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.if.end119_crit_edge, label %do.body78, !prof !416

do.body68.if.end119_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

do.body78:                                        ; preds = %do.body68
  %seq_ptr79 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %25 = ptrtoint ptr %seq_ptr79 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %seq_ptr79, align 4
  %tobool80.not = icmp eq ptr %26, null
  %27 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lp, align 64
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %host_no108 = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %host_no108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %host_no108, align 4
  %rport109 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %33 = ptrtoint ptr %rport109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rport109, align 128
  %port_id110 = getelementptr inbounds %struct.fc_rport, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %port_id110 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_id110, align 8
  br i1 %tobool80.not, label %do.end104, label %if.then81

if.then81:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %oxid96 = getelementptr i8, ptr %26, i32 -26
  %37 = ptrtoint ptr %oxid96 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %oxid96, align 2
  %conv97 = zext i16 %38 to i32
  %rxid98 = getelementptr i8, ptr %26, i32 -24
  %39 = ptrtoint ptr %rxid98 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rxid98, align 4
  %conv99 = zext i16 %40 to i32
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %32, i32 noundef %36, i32 noundef %conv97, i32 noundef %conv99, i32 noundef %seq_blen, i32 noundef %offset) #13
  br label %if.end119

do.end104:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %32, i32 noundef %36, i32 noundef %seq_blen, i32 noundef %offset) #13
  br label %if.end119

if.end119:                                        ; preds = %do.end104, %if.then81, %do.body68.if.end119_crit_edge, %if.else64.if.end119_crit_edge
  %max_payload = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 16
  %41 = ptrtoint ptr %max_payload to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %max_payload, align 4
  %conv120 = zext i16 %42 to i32
  %43 = ptrtoint ptr %sg_supp to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load121 = load i8, ptr %sg_supp, align 8
  %44 = and i8 %bf.load121, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool124.not = icmp eq i8 %44, 0
  br i1 %tobool124.not, label %if.end119.if.end181_crit_edge, label %if.then125

if.end119.if.end181_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end181

if.then125:                                       ; preds = %if.end119
  %lso_max = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 33
  %45 = ptrtoint ptr %lso_max to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lso_max, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 %seq_blen)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %48 = load i32, ptr @fc_debug_logging, align 4
  %and130 = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.then125.if.end181_crit_edge, label %do.body139, !prof !416

if.then125.if.end181_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end181

do.body139:                                       ; preds = %if.then125
  %seq_ptr140 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %49 = ptrtoint ptr %seq_ptr140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %seq_ptr140, align 4
  %tobool141.not = icmp eq ptr %50, null
  %51 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lp, align 64
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %host_no170 = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %host_no170 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %host_no170, align 4
  %rport171 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %57 = ptrtoint ptr %rport171 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rport171, align 128
  %port_id172 = getelementptr inbounds %struct.fc_rport, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %port_id172 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port_id172, align 8
  br i1 %tobool141.not, label %do.end166, label %if.then142

if.then142:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #12
  %oxid157 = getelementptr i8, ptr %50, i32 -26
  %61 = ptrtoint ptr %oxid157 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %oxid157, align 2
  %conv158 = zext i16 %62 to i32
  %rxid159 = getelementptr i8, ptr %50, i32 -24
  %63 = ptrtoint ptr %rxid159 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %rxid159, align 4
  %conv160 = zext i16 %64 to i32
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %56, i32 noundef %60, i32 noundef %conv158, i32 noundef %conv160, ptr noundef %fsp, i32 noundef %seq_blen, i32 noundef %46, i32 noundef %47) #13
  br label %if.end181

do.end166:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #12
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %56, i32 noundef %60, ptr noundef %fsp, i32 noundef %seq_blen, i32 noundef %46, i32 noundef %47) #13
  br label %if.end181

if.end181:                                        ; preds = %do.end166, %if.then142, %if.then125.if.end181_crit_edge, %if.end119.if.end181_crit_edge
  %t_blen.0 = phi i32 [ %47, %if.then142 ], [ %47, %do.end166 ], [ %47, %if.then125.if.end181_crit_edge ], [ %conv120, %if.end119.if.end181_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %t_blen.0)
  %cmp182 = icmp ugt i32 %t_blen.0, 512
  %and185 = and i32 %t_blen.0, -512
  %spec.select = select i1 %cmp182, i32 %and185, i32 %t_blen.0
  %cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 3
  %65 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cmd, align 4
  %call187 = tail call ptr @fc_seq_start_next(ptr noundef %seq) #10
  %tobool189.not = icmp eq ptr %call187, null
  br i1 %tobool189.not, label %do.end207, label %if.end181.if.end213_crit_edge, !prof !423

if.end181.if.end213_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213

do.end207:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 649, i32 noundef 9, ptr noundef null) #10
  br label %if.end213

if.end213:                                        ; preds = %do.end207, %if.end181.if.end213_crit_edge
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %66, i32 0, i32 17
  %67 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sdb.i, align 4
  %did = getelementptr i8, ptr %call187, i32 -12
  %sid = getelementptr i8, ptr %call187, i32 -16
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge, %if.end213
  %f_ctl.0.ph = phi i32 [ %spec.select498, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ 8, %if.end213 ]
  %using_sg.0.ph = phi i32 [ %using_sg.2, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ %bf.cast, %if.end213 ]
  %data.0.ph = phi ptr [ %data.2, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ null, %if.end213 ]
  %fh_parm_offset.0.ph = phi i32 [ %fh_parm_offset.1, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ %offset, %if.end213 ]
  %frame_offset.0.ph = phi i32 [ %add305, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ %offset, %if.end213 ]
  %tlen.0.ph = phi i32 [ %sub306, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ 0, %if.end213 ]
  %remaining.0.ph = phi i32 [ %sub307, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ %seq_blen, %if.end213 ]
  %sg.0.ph = phi ptr [ %sg.0526, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ %68, %if.end213 ]
  %offset.addr.0.ph = phi i32 [ %add304, %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge ], [ %offset, %if.end213 ]
  br label %while.cond.outer504

while.cond.outer504:                              ; preds = %if.end303.while.cond.outer504_crit_edge, %while.cond.outer
  %using_sg.0.ph505 = phi i32 [ %using_sg.0.ph, %while.cond.outer ], [ %using_sg.2, %if.end303.while.cond.outer504_crit_edge ]
  %data.0.ph506 = phi ptr [ %data.0.ph, %while.cond.outer ], [ %data.2, %if.end303.while.cond.outer504_crit_edge ]
  %fh_parm_offset.0.ph507 = phi i32 [ %fh_parm_offset.0.ph, %while.cond.outer ], [ %fh_parm_offset.1, %if.end303.while.cond.outer504_crit_edge ]
  %frame_offset.0.ph508 = phi i32 [ %frame_offset.0.ph, %while.cond.outer ], [ %add305, %if.end303.while.cond.outer504_crit_edge ]
  %tlen.0.ph509 = phi i32 [ %tlen.0.ph, %while.cond.outer ], [ %sub306, %if.end303.while.cond.outer504_crit_edge ]
  %remaining.0.ph510 = phi i32 [ %remaining.0.ph, %while.cond.outer ], [ %sub307, %if.end303.while.cond.outer504_crit_edge ]
  %fp.0.ph = phi ptr [ null, %while.cond.outer ], [ %fp.1, %if.end303.while.cond.outer504_crit_edge ]
  %sg.0.ph511 = phi ptr [ %sg.0.ph, %while.cond.outer ], [ %sg.0526, %if.end303.while.cond.outer504_crit_edge ]
  %offset.addr.0.ph512 = phi i32 [ %offset.addr.0.ph, %while.cond.outer ], [ %add304, %if.end303.while.cond.outer504_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0.ph510)
  %cmp222.not = icmp eq i32 %remaining.0.ph510, 0
  %tobool224.not524 = icmp eq ptr %sg.0.ph511, null
  %or.cond525 = select i1 %cmp222.not, i1 true, i1 %tobool224.not524
  br i1 %or.cond525, label %while.cond.outer504.while.end_crit_edge, label %while.cond.outer504.while.body_crit_edge

while.cond.outer504.while.body_crit_edge:         ; preds = %while.cond.outer504
  br label %while.body

while.cond.outer504.while.end_crit_edge:          ; preds = %while.cond.outer504
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.then227.while.body_crit_edge, %while.cond.outer504.while.body_crit_edge
  %offset.addr.0527 = phi i32 [ %sub, %if.then227.while.body_crit_edge ], [ %offset.addr.0.ph512, %while.cond.outer504.while.body_crit_edge ]
  %sg.0526 = phi ptr [ %call229, %if.then227.while.body_crit_edge ], [ %sg.0.ph511, %while.cond.outer504.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0526, i32 0, i32 2
  %69 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.addr.0527, i32 %70)
  %cmp225.not = icmp ult i32 %offset.addr.0527, %70
  br i1 %cmp225.not, label %if.end230, label %if.then227

if.then227:                                       ; preds = %while.body
  %sub = sub i32 %offset.addr.0527, %70
  %call229 = tail call ptr @sg_next(ptr noundef nonnull %sg.0526) #10
  %tobool224.not = icmp eq ptr %call229, null
  br i1 %tobool224.not, label %if.then227.while.end_crit_edge, label %if.then227.while.body_crit_edge

if.then227.while.body_crit_edge:                  ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then227.while.end_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end230:                                        ; preds = %while.body
  %length.le = getelementptr inbounds %struct.scatterlist, ptr %sg.0526, i32 0, i32 2
  %tobool231.not = icmp eq ptr %fp.0.ph, null
  br i1 %tobool231.not, label %if.then232, label %if.end230.if.end255_crit_edge

if.end230.if.end255_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

if.then232:                                       ; preds = %if.end230
  %71 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %remaining.0.ph510)
  %rem = and i32 %71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool240.not = icmp eq i32 %rem, 0
  %using_sg.1 = select i1 %tobool240.not, i32 %using_sg.0.ph505, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %using_sg.1)
  %tobool243.not = icmp eq i32 %using_sg.1, 0
  %cond247 = select i1 %tobool243.not, i32 %71, i32 0
  %rem.i = and i32 %cond247, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %1, i32 noundef %cond247) #10
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %cond247) #10
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool249.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool249.not, label %fc_frame_alloc.exit.cleanup_crit_edge, label %if.end251

fc_frame_alloc.exit.cleanup_crit_edge:            ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end251:                                        ; preds = %fc_frame_alloc.exit
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %73)
  %cmp.i = icmp ult i32 %73, 24
  br i1 %cmp.i, label %do.end.i, label %if.end251.fc_frame_header_get.exit_crit_edge, !prof !423

if.end251.fc_frame_header_get.exit_crit_edge:     ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end251.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %74 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i, align 4
  %add.ptr253 = getelementptr %struct.fc_frame_header, ptr %75, i32 1
  %76 = ptrtoint ptr %max_payload to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %max_payload, align 4
  %fr_max_payload = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 3, i32 16
  %78 = ptrtoint ptr %fr_max_payload to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %fr_max_payload, align 8
  br label %if.end255

if.end255:                                        ; preds = %fc_frame_header_get.exit, %if.end230.if.end255_crit_edge
  %using_sg.2 = phi i32 [ %using_sg.0.ph505, %if.end230.if.end255_crit_edge ], [ %using_sg.1, %fc_frame_header_get.exit ]
  %data.1 = phi ptr [ %data.0.ph506, %if.end230.if.end255_crit_edge ], [ %add.ptr253, %fc_frame_header_get.exit ]
  %fh_parm_offset.1 = phi i32 [ %fh_parm_offset.0.ph507, %if.end230.if.end255_crit_edge ], [ %frame_offset.0.ph508, %fc_frame_header_get.exit ]
  %tlen.1 = phi i32 [ %tlen.0.ph509, %if.end230.if.end255_crit_edge ], [ %71, %fc_frame_header_get.exit ]
  %fp.1 = phi ptr [ %fp.0.ph, %if.end230.if.end255_crit_edge ], [ %fp.0.i, %fc_frame_header_get.exit ]
  %offset256 = getelementptr inbounds %struct.scatterlist, ptr %sg.0526, i32 0, i32 1
  %79 = ptrtoint ptr %offset256 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %offset256, align 4
  %add257 = add i32 %80, %offset.addr.0527
  %81 = ptrtoint ptr %length.le to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %length.le, align 4
  %sub259 = sub i32 %82, %offset.addr.0527
  %83 = tail call i32 @llvm.umin.i32(i32 %tlen.1, i32 %sub259)
  %and267 = and i32 %add257, 4095
  %sub268 = sub nuw nsw i32 4096, %and267
  %84 = tail call i32 @llvm.umin.i32(i32 %83, i32 %sub268)
  %85 = ptrtoint ptr %sg.0526 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sg.0526, align 4
  %and.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !416

do.body2.i:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !426
  unreachable

sg_page.exit:                                     ; preds = %if.end255
  %and.i = and i32 %86, -4
  %87 = inttoptr i32 %and.i to ptr
  %shr = lshr i32 %add257, 12
  %add.ptr277 = getelementptr %struct.page, ptr %87, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %using_sg.2)
  %tobool278.not = icmp eq i32 %using_sg.2, 0
  br i1 %tobool278.not, label %if.else292, label %if.then279

if.then279:                                       ; preds = %sg_page.exit
  %88 = getelementptr %struct.page, ptr %87, i32 %shr, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %and.i.i499 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i499)
  %tobool.not.i.i = icmp eq i32 %and.i.i499, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !416

if.then.i.i:                                      ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %90, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %add.ptr277 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %91, %if.end.i.i ]
  %92 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %93 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %94, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !423

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %95, ptr noundef nonnull @.str.143) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !427
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !428
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@fc_fcp_send_data, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !429

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %92, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 17
  %97 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %nr_frags, align 2
  %conv283 = zext i8 %100 to i32
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %98, i32 0, i32 12, i32 %conv283
  %101 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr277, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %98, i32 0, i32 12, i32 %conv283, i32 2
  %102 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and267, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %98, i32 0, i32 12, i32 %conv283, i32 1
  %103 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %84, ptr %bv_len.i.i.i, align 4
  %104 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %88, align 4
  %and.i.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !416

if.then.i.i.i:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %105, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %add.ptr277 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %106, %if.end.i.i.i ]
  %107 = inttoptr i32 %retval.0.i.i.i to ptr
  %108 = getelementptr inbounds %struct.page, ptr %107, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %111 = ptrtoint ptr %110 to i32
  %and.i8.i.i = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i500

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_fill_page_desc.exit

if.then.i.i500:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 12
  %112 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i500, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %conv.i = add i8 %100, 1
  %113 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i, ptr %nr_frags.i, align 2
  %data_len286 = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 7
  %116 = ptrtoint ptr %data_len286 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data_len286, align 8
  %add287 = add i32 %117, %84
  store i32 %add287, ptr %data_len286, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 6
  %118 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len, align 4
  %add289 = add i32 %119, %84
  store i32 %add289, ptr %len, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 20
  %120 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %truesize, align 8
  %add291 = add i32 %121, 4096
  store i32 %add291, ptr %truesize, align 8
  br label %if.end303

if.else292:                                       ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %122 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %122, 512
  %123 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %126, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !430
  %127 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i1.i.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 213
  %131 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %132, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !431
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr277, i32 noundef %or.i) #10
  %add.ptr295 = getelementptr i8, ptr %call.i.i, i32 %and267
  %133 = call ptr @memcpy(ptr %data.1, ptr %add.ptr295, i32 %84)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !432
  %134 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i1.i = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 213
  %138 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %139, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !433
  %140 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i.i = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i501 = add i32 %143, -1
  store volatile i32 %sub.i.i501, ptr %preempt_count.i.i.i, align 4
  %add.ptr302 = getelementptr i8, ptr %data.1, i32 %84
  br label %if.end303

if.end303:                                        ; preds = %if.else292, %skb_fill_page_desc.exit
  %data.2 = phi ptr [ %data.1, %skb_fill_page_desc.exit ], [ %add.ptr302, %if.else292 ]
  %add304 = add i32 %84, %offset.addr.0527
  %add305 = add i32 %84, %frame_offset.0.ph508
  %sub306 = sub i32 %tlen.1, %84
  %sub307 = sub i32 %remaining.0.ph510, %84
  %end.i502 = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 17
  %144 = ptrtoint ptr %end.i502 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %end.i502, align 4
  %nr_frags310 = getelementptr inbounds %struct.skb_shared_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %nr_frags310 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %nr_frags310, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %147)
  %cmp312 = icmp ugt i8 %147, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub306)
  %tobool314.not = icmp eq i32 %sub306, 0
  %or.cond497 = select i1 %cmp312, i1 true, i1 %tobool314.not
  br i1 %or.cond497, label %if.end316, label %if.end303.while.cond.outer504_crit_edge

if.end303.while.cond.outer504_crit_edge:          ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer504

if.end316:                                        ; preds = %if.end303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub307)
  %cmp317 = icmp eq i32 %sub307, 0
  %or = or i32 %f_ctl.0.ph, 589824
  %spec.select498 = select i1 %cmp317, i32 %or, i32 %f_ctl.0.ph
  %148 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %did, align 32
  %150 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sid, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 6
  %152 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %153)
  %cmp.i.i503 = icmp ult i32 %153, 24
  br i1 %cmp.i.i503, label %do.end.i.i, label %if.end316.fc_fill_fc_hdr.exit_crit_edge, !prof !423

if.end316.fc_fill_fc_hdr.exit_crit_edge:          ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fill_fc_hdr.exit

do.end.i.i:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_fill_fc_hdr.exit

fc_fill_fc_hdr.exit:                              ; preds = %do.end.i.i, %if.end316.fc_fill_fc_hdr.exit_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.1, i32 0, i32 19
  %154 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data.i.i.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %155, align 4
  %fh_d_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %155, i32 0, i32 1
  %shr.i.i.i = lshr i32 %149, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %157 = ptrtoint ptr %fh_d_id.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv.i.i.i, ptr %fh_d_id.i.i, align 1
  %shr1.i.i.i = lshr i32 %149, 8
  %conv3.i.i.i = trunc i32 %shr1.i.i.i to i8
  %arrayidx4.i.i.i = getelementptr %struct.fc_frame_header, ptr %155, i32 0, i32 1, i32 1
  %158 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = trunc i32 %149 to i8
  %arrayidx7.i.i.i = getelementptr %struct.fc_frame_header, ptr %155, i32 0, i32 1, i32 2
  %159 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv6.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %155, i32 0, i32 3
  %shr.i31.i.i = lshr i32 %151, 16
  %conv.i32.i.i = trunc i32 %shr.i31.i.i to i8
  %160 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv.i32.i.i, ptr %fh_s_id.i.i, align 1
  %shr1.i33.i.i = lshr i32 %151, 8
  %conv3.i34.i.i = trunc i32 %shr1.i33.i.i to i8
  %arrayidx4.i35.i.i = getelementptr %struct.fc_frame_header, ptr %155, i32 0, i32 3, i32 1
  %161 = ptrtoint ptr %arrayidx4.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv3.i34.i.i, ptr %arrayidx4.i35.i.i, align 1
  %conv6.i36.i.i = trunc i32 %151 to i8
  %arrayidx7.i37.i.i = getelementptr %struct.fc_frame_header, ptr %155, i32 0, i32 3, i32 2
  %162 = ptrtoint ptr %arrayidx7.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv6.i36.i.i, ptr %arrayidx7.i37.i.i, align 1
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %155, i32 0, i32 4
  %163 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 8, ptr %fh_type.i.i, align 4
  %fh_f_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %155, i32 0, i32 5
  %shr.i38.i.i = lshr i32 %spec.select498, 16
  %conv.i39.i.i = trunc i32 %shr.i38.i.i to i8
  %164 = ptrtoint ptr %fh_f_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv.i39.i.i, ptr %fh_f_ctl.i.i, align 1
  %shr1.i40.i.i = lshr i32 %spec.select498, 8
  %conv3.i41.i.i = trunc i32 %shr1.i40.i.i to i8
  %arrayidx4.i42.i.i = getelementptr %struct.fc_frame_header, ptr %155, i32 0, i32 5, i32 1
  %165 = ptrtoint ptr %arrayidx4.i42.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv3.i41.i.i, ptr %arrayidx4.i42.i.i, align 1
  %conv6.i43.i.i = trunc i32 %spec.select498 to i8
  %arrayidx7.i44.i.i = getelementptr %struct.fc_frame_header, ptr %155, i32 0, i32 5, i32 2
  %166 = ptrtoint ptr %arrayidx7.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv6.i43.i.i, ptr %arrayidx7.i44.i.i, align 1
  %fh_cs_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %155, i32 0, i32 2
  %167 = ptrtoint ptr %fh_cs_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %fh_cs_ctl.i.i, align 4
  %fh_df_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %155, i32 0, i32 7
  %168 = ptrtoint ptr %fh_df_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %fh_df_ctl.i.i, align 1
  %fh_parm_offset.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %155, i32 0, i32 11
  %169 = ptrtoint ptr %fh_parm_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %fh_parm_offset.1, ptr %fh_parm_offset.i.i, align 4
  %call324 = tail call i32 @fc_seq_send(ptr noundef %1, ptr noundef %call187, ptr noundef nonnull %fp.1) #10
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %fc_fill_fc_hdr.exit.while.cond.outer_crit_edge, label %do.end339

fc_fill_fc_hdr.exit.while.cond.outer_crit_edge:   ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer

do.end339:                                        ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 727, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

while.end:                                        ; preds = %if.then227.while.end_crit_edge, %while.cond.outer504.while.end_crit_edge
  %170 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %xfer_len, align 4
  %add355 = add i32 %171, %seq_blen
  store i32 %add355, ptr %xfer_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end339, %fc_frame_alloc.exit.cleanup_crit_edge, %do.end62
  %retval.0 = phi i32 [ 0, %do.end62 ], [ %call324, %do.end339 ], [ 0, %while.end ], [ -12, %fc_frame_alloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fcp_recv_data(ptr noundef %fsp, ptr noundef %fp) unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %crc = alloca i32, align 4
  %nents = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 3
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %2 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lp, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #10
  %4 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %crc, align 4, !annotation !434
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nents) #10
  %5 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %nents, align 4, !annotation !434
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i = icmp ult i32 %7, 24
  br i1 %cmp.i, label %fc_frame_header_get.exit, label %fc_frame_header_get.exit.thread, !prof !423

fc_frame_header_get.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i337 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i337 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i337, align 4
  %fh_parm_offset338 = getelementptr inbounds %struct.fc_frame_header, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %fh_parm_offset338 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fh_parm_offset338, align 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %offset, align 4
  %sub339 = add i32 %7, -24
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit:                         ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %len.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %fh_parm_offset = getelementptr inbounds %struct.fc_frame_header, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %fh_parm_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fh_parm_offset, align 4
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %offset, align 4
  %sub = add i32 %.pr, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %.pr)
  %cmp.not.i = icmp ult i32 %.pr, 24
  br i1 %cmp.not.i, label %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.fc_frame_header_get.exit.i_crit_edge

fc_frame_header_get.exit.fc_frame_header_get.exit.i_crit_edge: ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge: ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %fc_frame_header_get.exit.fc_frame_header_get.exit.i_crit_edge, %fc_frame_header_get.exit.thread
  %sub343 = phi i32 [ %sub339, %fc_frame_header_get.exit.thread ], [ %sub, %fc_frame_header_get.exit.fc_frame_header_get.exit.i_crit_edge ]
  %19 = phi i32 [ %11, %fc_frame_header_get.exit.thread ], [ %17, %fc_frame_header_get.exit.fc_frame_header_get.exit.i_crit_edge ]
  %20 = phi ptr [ %9, %fc_frame_header_get.exit.thread ], [ %15, %fc_frame_header_get.exit.fc_frame_header_get.exit.i_crit_edge ]
  %data.i.i341 = phi ptr [ %data.i.i337, %fc_frame_header_get.exit.thread ], [ %data.i.i, %fc_frame_header_get.exit.fc_frame_header_get.exit.i_crit_edge ]
  %21 = phi i32 [ %7, %fc_frame_header_get.exit.thread ], [ %.pr, %fc_frame_header_get.exit.fc_frame_header_get.exit.i_crit_edge ]
  %22 = ptrtoint ptr %data.i.i341 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i341, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %23, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge
  %sub344 = phi i32 [ %sub343, %fc_frame_header_get.exit.i ], [ %sub, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %24 = phi i32 [ %19, %fc_frame_header_get.exit.i ], [ %17, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %25 = phi ptr [ %20, %fc_frame_header_get.exit.i ], [ %15, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %data.i.i342 = phi ptr [ %data.i.i341, %fc_frame_header_get.exit.i ], [ %data.i.i, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %26 = phi i32 [ %21, %fc_frame_header_get.exit.i ], [ %.pr, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %fc_frame_header_get.exit.fc_frame_payload_get.exit_crit_edge ]
  %xfer_ddp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 17
  %27 = ptrtoint ptr %xfer_ddp to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %xfer_ddp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp.not = icmp eq i16 %28, -1
  br i1 %cmp.not, label %if.end32, label %if.then

if.then:                                          ; preds = %fc_frame_payload_get.exit
  %tobool.not.i = icmp eq ptr %fsp, null
  br i1 %tobool.not.i, label %if.then.fc_fcp_ddp_done.exit_crit_edge, label %if.end3.i

if.then.fc_fcp_ddp_done.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_ddp_done.exit

if.end3.i:                                        ; preds = %if.then
  %29 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lp, align 64
  %ddp_done.i = getelementptr inbounds %struct.fc_lport, ptr %30, i32 0, i32 9, i32 3
  %31 = ptrtoint ptr %ddp_done.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ddp_done.i, align 4
  %tobool4.not.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i, label %if.end3.i.fc_fcp_ddp_done.exit_crit_edge, label %if.then5.i

if.end3.i.fc_fcp_ddp_done.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_ddp_done.exit

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %32(ptr noundef %30, i16 noundef zeroext %28) #10
  %xfer_len.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %33 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i, ptr %xfer_len.i, align 4
  %34 = ptrtoint ptr %xfer_ddp to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %xfer_ddp, align 2
  br label %fc_fcp_ddp_done.exit

fc_fcp_ddp_done.exit:                             ; preds = %if.then5.i, %if.end3.i.fc_fcp_ddp_done.exit_crit_edge, %if.then.fc_fcp_ddp_done.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %35 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %fc_fcp_ddp_done.exit.err_crit_edge, label %do.body7, !prof !416

fc_fcp_ddp_done.exit.err_crit_edge:               ; preds = %fc_fcp_ddp_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body7:                                         ; preds = %fc_fcp_ddp_done.exit
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %36 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %seq_ptr, align 4
  %tobool8.not = icmp eq ptr %37, null
  %38 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lp, align 64
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %host_no23 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %host_no23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %host_no23, align 4
  %rport24 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %44 = ptrtoint ptr %rport24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rport24, align 128
  %port_id25 = getelementptr inbounds %struct.fc_rport, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %port_id25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_id25, align 8
  br i1 %tobool8.not, label %do.end19, label %if.then9

if.then9:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %37, i32 -26
  %48 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %oxid, align 2
  %conv14 = zext i16 %49 to i32
  %rxid = getelementptr i8, ptr %37, i32 -24
  %50 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rxid, align 4
  %conv15 = zext i16 %51 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %43, i32 noundef %47, i32 noundef %conv14, i32 noundef %conv15) #13
  br label %err

do.end19:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %43, i32 noundef %47) #13
  br label %err

if.end32:                                         ; preds = %fc_frame_payload_get.exit
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset, align 4
  %add = add i32 %53, %sub344
  %data_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 2
  %54 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %55)
  %cmp33 = icmp ugt i32 %add, %55
  br i1 %cmp33, label %if.then35, label %if.end96

if.then35:                                        ; preds = %if.end32
  %fr_flags = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 20
  %56 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fr_flags, align 4
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool39.not = icmp eq i8 %58, 0
  br i1 %tobool39.not, label %if.then35.do.body44_crit_edge, label %land.lhs.true

if.then35.do.body44_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44

land.lhs.true:                                    ; preds = %if.then35
  %call40 = tail call i32 @fc_frame_crc_check(ptr noundef %fp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.do.body44_crit_edge, label %land.lhs.true.do.body131_crit_edge

land.lhs.true.do.body131_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

land.lhs.true.do.body44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44

do.body44:                                        ; preds = %land.lhs.true.do.body44_crit_edge, %if.then35.do.body44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %59 = load i32, ptr @fc_debug_logging, align 4
  %and45 = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.err_crit_edge, label %do.body54, !prof !416

do.body44.err_crit_edge:                          ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body54:                                        ; preds = %do.body44
  %seq_ptr55 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %60 = ptrtoint ptr %seq_ptr55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %seq_ptr55, align 4
  %tobool56.not = icmp eq ptr %61, null
  %62 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lp, align 64
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %host_no85 = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 17
  %66 = ptrtoint ptr %host_no85 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %host_no85, align 4
  %rport86 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %68 = ptrtoint ptr %rport86 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rport86, align 128
  %port_id87 = getelementptr inbounds %struct.fc_rport, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %port_id87 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port_id87, align 8
  br i1 %tobool56.not, label %do.end81, label %if.then57

if.then57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %oxid72 = getelementptr i8, ptr %61, i32 -26
  %72 = ptrtoint ptr %oxid72 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %oxid72, align 2
  %conv73 = zext i16 %73 to i32
  %rxid74 = getelementptr i8, ptr %61, i32 -24
  %74 = ptrtoint ptr %rxid74 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %rxid74, align 4
  %conv75 = zext i16 %75 to i32
  %76 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset, align 4
  %78 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data_len, align 16
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %67, i32 noundef %71, i32 noundef %conv73, i32 noundef %conv75, i32 noundef %sub344, i32 noundef %77, i32 noundef %79) #13
  br label %err

do.end81:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset, align 4
  %82 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len, align 16
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %67, i32 noundef %71, i32 noundef %sub344, i32 noundef %81, i32 noundef %83) #13
  br label %err

if.end96:                                         ; preds = %if.end32
  %xfer_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %84 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %85)
  %cmp97.not = icmp eq i32 %53, %85
  br i1 %cmp97.not, label %if.end96.if.end102_crit_edge, label %if.then99

if.end96.if.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %86 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %state, align 4
  %88 = or i8 %87, 16
  store i8 %88, ptr %state, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end96.if.end102_crit_edge
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %89 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sdb.i, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %91 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nents.i, align 4
  %93 = ptrtoint ptr %nents to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %nents, align 4
  %fr_flags108 = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 20
  %94 = ptrtoint ptr %fr_flags108 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fr_flags108, align 4
  %96 = and i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool111.not = icmp eq i8 %96, 0
  br i1 %tobool111.not, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %call113 = call i32 @fc_copy_buffer_to_sglist(ptr noundef %pp.0.i, i32 noundef %sub344, ptr noundef %90, ptr noundef nonnull %nents, ptr noundef nonnull %offset, ptr noundef null) #10
  br label %if.end165

if.else114:                                       ; preds = %if.end102
  %call115 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %25, i32 noundef 24) #15
  %97 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call115, ptr %crc, align 4
  %call116 = call i32 @fc_copy_buffer_to_sglist(ptr noundef %pp.0.i, i32 noundef %sub344, ptr noundef %90, ptr noundef nonnull %nents, ptr noundef nonnull %offset, ptr noundef nonnull %crc) #10
  %98 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %99)
  %cmp.not.i322 = icmp ult i32 %99, 24
  br i1 %cmp.not.i322, label %if.else114.fc_frame_payload_get.exit331_crit_edge, label %fc_frame_header_get.exit.i328

if.else114.fc_frame_payload_get.exit331_crit_edge: ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_payload_get.exit331

fc_frame_header_get.exit.i328:                    ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %data.i.i342 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i342, align 4
  %add.ptr.i327 = getelementptr %struct.fc_frame_header, ptr %101, i32 1
  br label %fc_frame_payload_get.exit331

fc_frame_payload_get.exit331:                     ; preds = %fc_frame_header_get.exit.i328, %if.else114.fc_frame_payload_get.exit331_crit_edge
  %pp.0.i329 = phi ptr [ %add.ptr.i327, %fc_frame_header_get.exit.i328 ], [ null, %if.else114.fc_frame_payload_get.exit331_crit_edge ]
  %rem = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool118.not = icmp eq i32 %rem, 0
  br i1 %tobool118.not, label %fc_frame_payload_get.exit331.if.end124_crit_edge, label %if.then119

fc_frame_payload_get.exit331.if.end124_crit_edge: ; preds = %fc_frame_payload_get.exit331
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then119:                                       ; preds = %fc_frame_payload_get.exit331
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %crc, align 4
  %add.ptr120 = getelementptr i8, ptr %pp.0.i329, i32 %sub344
  %sub122 = sub nuw nsw i32 4, %rem
  %call123 = call i32 @crc32_le(i32 noundef %103, ptr noundef %add.ptr120, i32 noundef %sub122) #15
  %104 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call123, ptr %crc, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %fc_frame_payload_get.exit331.if.end124_crit_edge
  %105 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %crc, align 4
  %neg = xor i32 %106, -1
  %fr_crc = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 12
  %107 = ptrtoint ptr %fr_crc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fr_crc, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108)
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %neg)
  %cmp128.not = icmp eq i32 %109, %neg
  br i1 %cmp128.not, label %if.end124.if.end165_crit_edge, label %if.end124.do.body131_crit_edge

if.end124.do.body131_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

if.end124.if.end165_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

do.body131:                                       ; preds = %if.end124.do.body131_crit_edge, %land.lhs.true.do.body131_crit_edge
  %stats135 = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 16
  %110 = ptrtoint ptr %stats135 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %stats135, align 8
  %112 = ptrtoint ptr %111 to i32
  %113 = call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %116, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !435
  %117 = call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cpu, align 4
  %arrayidx142 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %120
  %121 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx142, align 4
  %add143 = add i32 %122, %112
  %123 = inttoptr i32 %add143 to ptr
  %ErrorFrames = getelementptr inbounds %struct.fc_stats, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %ErrorFrames to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %ErrorFrames, align 8
  %inc = add i64 %125, 1
  store i64 %inc, ptr %ErrorFrames, align 8
  %InvalidCRCCount = getelementptr inbounds %struct.fc_stats, ptr %123, i32 0, i32 13
  %126 = ptrtoint ptr %InvalidCRCCount to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %InvalidCRCCount, align 8
  %inc144 = add i64 %127, 1
  store i64 %inc144, ptr %InvalidCRCCount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %127)
  %cmp145 = icmp ult i64 %127, 5
  br i1 %cmp145, label %do.end150, label %do.body131.do.body155_crit_edge

do.body131.do.body155_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body155

do.end150:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  %port_id152 = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 18
  %128 = ptrtoint ptr %port_id152 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port_id152, align 8
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %129) #13
  br label %do.body155

do.body155:                                       ; preds = %do.end150, %do.body131.do.body155_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !436
  %130 = call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i318 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i318 to ptr
  %preempt_count.i.i319 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %preempt_count.i.i319 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %preempt_count.i.i319, align 4
  %sub.i = add i32 %133, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i319, align 4
  %state158 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %134 = ptrtoint ptr %state158 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %state158, align 4
  %136 = and i8 %135, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool161.not = icmp eq i8 %136, 0
  br i1 %tobool161.not, label %do.body155.cleanup_crit_edge, label %do.body155.err_crit_edge

do.body155.err_crit_edge:                         ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body155.cleanup_crit_edge:                     ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end165:                                        ; preds = %if.end124.if.end165_crit_edge, %if.then112
  %copy_len.0 = phi i32 [ %call116, %if.end124.if.end165_crit_edge ], [ %call113, %if.then112 ]
  %xfer_contig_end = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 15
  %137 = ptrtoint ptr %xfer_contig_end to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %xfer_contig_end, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %24)
  %cmp166 = icmp eq i32 %138, %24
  br i1 %cmp166, label %if.then168, label %if.end165.if.end171_crit_edge

if.end165.if.end171_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.then168:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %add170 = add i32 %24, %copy_len.0
  %139 = ptrtoint ptr %xfer_contig_end to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %add170, ptr %xfer_contig_end, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.end165.if.end171_crit_edge
  %140 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %xfer_len, align 4
  %add173 = add i32 %141, %copy_len.0
  store i32 %add173, ptr %xfer_len, align 4
  %state174 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %142 = ptrtoint ptr %state174 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %state174, align 4
  %144 = and i8 %143, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool177.not = icmp eq i8 %144, 0
  br i1 %tobool177.not, label %if.end171.cleanup_crit_edge, label %land.lhs.true184, !prof !416

if.end171.cleanup_crit_edge:                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true184:                                 ; preds = %if.end171
  %145 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %data_len, align 16
  %scsi_resid = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 12
  %147 = ptrtoint ptr %scsi_resid to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %scsi_resid, align 16
  %sub187 = sub i32 %146, %148
  call void @__sanitizer_cov_trace_cmp4(i32 %add173, i32 %sub187)
  %cmp188 = icmp eq i32 %add173, %sub187
  br i1 %cmp188, label %do.body191, label %land.lhs.true184.cleanup_crit_edge

land.lhs.true184.cleanup_crit_edge:               ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body191:                                       ; preds = %land.lhs.true184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %149 = load i32, ptr @fc_debug_logging, align 4
  %and192 = and i32 %149, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %do.body191.do.end240_crit_edge, label %do.body201, !prof !416

do.body191.do.end240_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end240

do.body201:                                       ; preds = %do.body191
  %seq_ptr202 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %150 = ptrtoint ptr %seq_ptr202 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %seq_ptr202, align 4
  %tobool203.not = icmp eq ptr %151, null
  %152 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %lp, align 64
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  %host_no231 = getelementptr inbounds %struct.Scsi_Host, ptr %155, i32 0, i32 17
  %156 = ptrtoint ptr %host_no231 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %host_no231, align 4
  %rport232 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %158 = ptrtoint ptr %rport232 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rport232, align 128
  %port_id233 = getelementptr inbounds %struct.fc_rport, ptr %159, i32 0, i32 6
  %160 = ptrtoint ptr %port_id233 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port_id233, align 8
  br i1 %tobool203.not, label %do.end227, label %if.then204

if.then204:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #12
  %oxid219 = getelementptr i8, ptr %151, i32 -26
  %162 = ptrtoint ptr %oxid219 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %oxid219, align 2
  %conv220 = zext i16 %163 to i32
  %rxid221 = getelementptr i8, ptr %151, i32 -24
  %164 = ptrtoint ptr %rxid221 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %rxid221, align 4
  %conv222 = zext i16 %165 to i32
  %call223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %157, i32 noundef %161, i32 noundef %conv220, i32 noundef %conv222) #13
  br label %do.end240

do.end227:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #12
  %call234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef %157, i32 noundef %161) #13
  br label %do.end240

do.end240:                                        ; preds = %do.end227, %if.then204, %do.body191.do.end240_crit_edge
  call fastcc void @fc_fcp_complete_locked(ptr noundef %fsp)
  br label %cleanup

err:                                              ; preds = %do.body155.err_crit_edge, %do.end81, %if.then57, %do.body44.err_crit_edge, %do.end19, %if.then9, %fc_fcp_ddp_done.exit.err_crit_edge
  %host_bcode.0 = phi i8 [ 8, %if.then9 ], [ 8, %do.end19 ], [ 8, %fc_fcp_ddp_done.exit.err_crit_edge ], [ 6, %if.then57 ], [ 6, %do.end81 ], [ 6, %do.body44.err_crit_edge ], [ 10, %do.body155.err_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %166 = load i32, ptr @fc_debug_logging, align 4
  %and.i332 = and i32 %166, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i332)
  %tobool.not.i333 = icmp eq i32 %and.i332, 0
  br i1 %tobool.not.i333, label %err.fc_fcp_recovery.exit_crit_edge, label %do.body3.i, !prof !416

err.fc_fcp_recovery.exit_crit_edge:               ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_recovery.exit

do.body3.i:                                       ; preds = %err
  %seq_ptr.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %167 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %seq_ptr.i, align 4
  %tobool4.not.i334 = icmp eq ptr %168, null
  %169 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lp, align 64
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 8
  %host_no17.i = getelementptr inbounds %struct.Scsi_Host, ptr %172, i32 0, i32 17
  %173 = ptrtoint ptr %host_no17.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %host_no17.i, align 4
  %rport18.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %175 = ptrtoint ptr %rport18.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rport18.i, align 128
  %port_id19.i = getelementptr inbounds %struct.fc_rport, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %port_id19.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port_id19.i, align 8
  br i1 %tobool4.not.i334, label %do.end13.i, label %if.then5.i336

if.then5.i336:                                    ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid.i = getelementptr i8, ptr %168, i32 -26
  %179 = ptrtoint ptr %oxid.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %oxid.i, align 2
  %conv.i = zext i16 %180 to i32
  %rxid.i = getelementptr i8, ptr %168, i32 -24
  %181 = ptrtoint ptr %rxid.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %rxid.i, align 4
  %conv9.i = zext i16 %182 to i32
  %conv10.i = zext i8 %host_bcode.0 to i32
  %call.i335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %174, i32 noundef %178, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %conv10.i) #13
  br label %fc_fcp_recovery.exit

do.end13.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv20.i = zext i8 %host_bcode.0 to i32
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %174, i32 noundef %178, i32 noundef %conv20.i) #13
  br label %fc_fcp_recovery.exit

fc_fcp_recovery.exit:                             ; preds = %do.end13.i, %if.then5.i336, %err.fc_fcp_recovery.exit_crit_edge
  %status_code.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %183 = ptrtoint ptr %status_code.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %host_bcode.0, ptr %status_code.i, align 2
  %cdb_status.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 7
  %184 = ptrtoint ptr %cdb_status.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %cdb_status.i, align 1
  %io_status.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %185 = ptrtoint ptr %io_status.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %io_status.i, align 8
  %call27.i = call fastcc i32 @fc_fcp_send_abort(ptr noundef %fsp) #10
  br label %cleanup

cleanup:                                          ; preds = %fc_fcp_recovery.exit, %do.end240, %land.lhs.true184.cleanup_crit_edge, %if.end171.cleanup_crit_edge, %do.body155.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nents) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fcp_resp(ptr noundef %fsp, ptr nocapture noundef readonly %fp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %1)
  %cmp = icmp ult i32 %1, 36
  br i1 %cmp, label %entry.do.body267_crit_edge, label %if.end, !prof !423

entry.do.body267_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body267

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %sub = add i32 %1, -24
  %fr_status = getelementptr %struct.fc_frame_header, ptr %3, i32 1, i32 5, i32 2
  %4 = ptrtoint ptr %fr_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fr_status, align 1
  %cdb_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 7
  %6 = ptrtoint ptr %cdb_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %cdb_status, align 1
  %fr_flags = getelementptr %struct.fc_frame_header, ptr %3, i32 1, i32 5, i32 1
  %7 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fr_flags, align 2
  %scsi_comp_flags = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 9
  %9 = ptrtoint ptr %scsi_comp_flags to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %scsi_comp_flags, align 1
  %data_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 2
  %10 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len, align 16
  %tobool.not.i = icmp eq ptr %fsp, null
  br i1 %tobool.not.i, label %if.end.fc_fcp_ddp_done.exit_crit_edge, label %if.end.i

if.end.fc_fcp_ddp_done.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_ddp_done.exit

if.end.i:                                         ; preds = %if.end
  %xfer_ddp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 17
  %12 = ptrtoint ptr %xfer_ddp.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %xfer_ddp.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp.i = icmp eq i16 %13, -1
  br i1 %cmp.i, label %if.end.i.fc_fcp_ddp_done.exit_crit_edge, label %if.end3.i

if.end.i.fc_fcp_ddp_done.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_ddp_done.exit

if.end3.i:                                        ; preds = %if.end.i
  %lp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %14 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lp.i, align 64
  %ddp_done.i = getelementptr inbounds %struct.fc_lport, ptr %15, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %ddp_done.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddp_done.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.end3.i.fc_fcp_ddp_done.exit_crit_edge, label %if.then5.i

if.end3.i.fc_fcp_ddp_done.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_ddp_done.exit

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %17(ptr noundef %15, i16 noundef zeroext %13) #10
  %xfer_len.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %18 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %xfer_len.i, align 4
  %19 = ptrtoint ptr %xfer_ddp.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %xfer_ddp.i, align 2
  br label %fc_fcp_ddp_done.exit

fc_fcp_ddp_done.exit:                             ; preds = %if.then5.i, %if.end3.i.fc_fcp_ddp_done.exit_crit_edge, %if.end.i.fc_fcp_ddp_done.exit_crit_edge, %if.end.fc_fcp_ddp_done.exit_crit_edge
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.rhs, label %fc_fcp_ddp_done.exit.if.then13_crit_edge, !prof !416

fc_fcp_ddp_done.exit.if.then13_crit_edge:         ; preds = %fc_fcp_ddp_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.rhs:                                          ; preds = %fc_fcp_ddp_done.exit
  %20 = ptrtoint ptr %fr_status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fr_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  br i1 %tobool6.not, label %lor.rhs.if.end83_crit_edge, label %lor.rhs.if.then13_crit_edge, !prof !416

lor.rhs.if.then13_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.rhs.if.end83_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then13:                                        ; preds = %lor.rhs.if.then13_crit_edge, %fc_fcp_ddp_done.exit.if.then13_crit_edge
  %add.ptr14 = getelementptr %struct.fc_frame_header, ptr %3, i32 1, i32 6
  %and16 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then13.if.end49_crit_edge, label %if.then18

if.then13.if.end49_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub)
  %cmp19 = icmp ult i32 %sub, 24
  br i1 %cmp19, label %if.then18.do.body267_crit_edge, label %if.end22

if.then18.do.body267_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body267

if.end22:                                         ; preds = %if.then18
  %add.ptr23 = getelementptr %struct.fc_frame_header, ptr %3, i32 2
  %and25 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end22.if.end38_crit_edge, label %if.then27

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then27:                                        ; preds = %if.end22
  %fr_rsp_len = getelementptr %struct.fc_frame_header, ptr %3, i32 1, i32 11
  %22 = ptrtoint ptr %fr_rsp_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fr_rsp_len, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.287)
  switch i32 %23, label %if.then27.do.body267_crit_edge [
    i32 4, label %if.then27.if.end33_crit_edge
    i32 8, label %if.then27.if.end33_crit_edge446
  ]

if.then27.if.end33_crit_edge446:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then27.do.body267_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body267

if.end33:                                         ; preds = %if.then27.if.end33_crit_edge, %if.then27.if.end33_crit_edge446
  %wait_for_comp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 21
  %25 = ptrtoint ptr %wait_for_comp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wait_for_comp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool34.not = icmp eq i32 %26, 0
  br i1 %tobool34.not, label %if.end33.if.end38_crit_edge, label %if.then35

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %rsp_code = getelementptr %struct.fc_frame_header, ptr %3, i32 2, i32 1, i32 2
  %27 = ptrtoint ptr %rsp_code to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rsp_code, align 1
  %29 = ptrtoint ptr %cdb_status to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %cdb_status, align 1
  %tm_done = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 25
  tail call void @complete(ptr noundef %tm_done) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end33.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  %respl.0 = phi i32 [ %23, %if.end33.if.end38_crit_edge ], [ 0, %if.end22.if.end38_crit_edge ]
  %and40 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end49_crit_edge, label %if.then42

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %fr_sns_len = getelementptr %struct.fc_frame_header, ptr %3, i32 1, i32 9
  %30 = ptrtoint ptr %fr_sns_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fr_sns_len, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 96)
  %cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 3
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sense_buffer, align 4
  %add.ptr47 = getelementptr i8, ptr %add.ptr23, i32 %respl.0
  %37 = call ptr @memcpy(ptr %36, ptr %add.ptr47, i32 %32)
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.end38.if.end49_crit_edge, %if.then13.if.end49_crit_edge
  %snsl.0 = phi i32 [ %32, %if.then42 ], [ 0, %if.end38.if.end49_crit_edge ], [ 0, %if.then13.if.end49_crit_edge ]
  %respl.1 = phi i32 [ %respl.0, %if.then42 ], [ %respl.0, %if.end38.if.end49_crit_edge ], [ 0, %if.then13.if.end49_crit_edge ]
  %and51 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end83_crit_edge, label %if.then53

if.end49.if.end83_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp54 = icmp ult i32 %sub, 16
  br i1 %cmp54, label %if.then53.do.body267_crit_edge, label %if.end57

if.then53.do.body267_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body267

if.end57:                                         ; preds = %if.then53
  %and59 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end57
  %38 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr14, align 4
  %scsi_resid = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 12
  %40 = ptrtoint ptr %scsi_resid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %scsi_resid, align 16
  %and63 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %if.then61.if.end78_crit_edge

if.then61.if.end78_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true65:                                  ; preds = %if.then61
  %41 = ptrtoint ptr %fr_status to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fr_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp68 = icmp eq i8 %42, 0
  br i1 %cmp68, label %land.lhs.true70, label %land.lhs.true65.if.end78_crit_edge

land.lhs.true65.if.end78_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %cmd71 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 3
  %43 = ptrtoint ptr %cmd71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmd71, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 17, i32 1
  %45 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length.i, align 4
  %sub73 = sub i32 %46, %39
  %underflow = getelementptr inbounds %struct.scsi_cmnd, ptr %44, i32 0, i32 19
  %47 = ptrtoint ptr %underflow to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %underflow, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub73, i32 %48)
  %cmp75 = icmp ult i32 %sub73, %48
  br i1 %cmp75, label %land.lhs.true70.err_crit_edge, label %land.lhs.true70.if.end78_crit_edge

land.lhs.true70.if.end78_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true70.err_crit_edge:                    ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end78:                                         ; preds = %land.lhs.true70.if.end78_crit_edge, %land.lhs.true65.if.end78_crit_edge, %if.then61.if.end78_crit_edge
  %sub80 = sub i32 %11, %39
  br label %if.end83

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %status_code = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %49 = ptrtoint ptr %status_code to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %status_code, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.end78, %if.end49.if.end83_crit_edge, %lor.rhs.if.end83_crit_edge
  %expected_len.0 = phi i32 [ %sub80, %if.end78 ], [ %11, %if.else ], [ %11, %if.end49.if.end83_crit_edge ], [ %11, %lor.rhs.if.end83_crit_edge ]
  %state = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %state, align 4
  %52 = or i8 %51, 2
  store i8 %52, ptr %state, align 4
  %53 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cdb_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp88 = icmp eq i8 %54, 0
  br i1 %cmp88, label %land.rhs, label %if.end83.if.end266_crit_edge

if.end83.if.end266_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end266

land.rhs:                                         ; preds = %if.end83
  %xfer_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %55 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %expected_len.0)
  %cmp90.not = icmp eq i32 %56, %expected_len.0
  br i1 %cmp90.not, label %land.rhs.if.end266_crit_edge, label %if.then98, !prof !416

land.rhs.if.end266_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end266

if.then98:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %expected_len.0)
  %cmp100 = icmp ult i32 %56, %expected_len.0
  br i1 %cmp100, label %if.then102, label %if.end206

if.then102:                                       ; preds = %if.then98
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %57 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lp, align 64
  %qfull = getelementptr inbounds %struct.fc_lport, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %qfull to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %qfull, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool103.not = icmp eq i8 %60, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %61 = load i32, ptr @fc_debug_logging, align 4
  %and148 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool103.not, label %do.body147, label %do.body

do.body:                                          ; preds = %if.then102
  br i1 %tobool149.not, label %do.body.cleanup_crit_edge, label %do.body114, !prof !416

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body114:                                       ; preds = %do.body
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %62 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %seq_ptr, align 4
  %tobool115.not = icmp eq ptr %63, null
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %58, align 8
  %host_no134 = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 17
  %66 = ptrtoint ptr %host_no134 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %host_no134, align 4
  %rport135 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %68 = ptrtoint ptr %rport135 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rport135, align 128
  %port_id136 = getelementptr inbounds %struct.fc_rport, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %port_id136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port_id136, align 8
  br i1 %tobool115.not, label %do.end130, label %if.then116

if.then116:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %63, i32 -26
  %72 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %oxid, align 2
  %conv122 = zext i16 %73 to i32
  %rxid = getelementptr i8, ptr %63, i32 -24
  %74 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %rxid, align 4
  %conv123 = zext i16 %75 to i32
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %67, i32 noundef %71, i32 noundef %conv122, i32 noundef %conv123, i32 noundef %71) #13
  br label %cleanup

do.end130:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %67, i32 noundef %71, i32 noundef %71) #13
  br label %cleanup

do.body147:                                       ; preds = %if.then102
  br i1 %tobool149.not, label %do.body147.do.end204_crit_edge, label %do.body157, !prof !416

do.body147.do.end204_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end204

do.body157:                                       ; preds = %do.body147
  %seq_ptr158 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %76 = ptrtoint ptr %seq_ptr158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %seq_ptr158, align 4
  %tobool159.not = icmp eq ptr %77, null
  %78 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %58, align 8
  %host_no191 = getelementptr inbounds %struct.Scsi_Host, ptr %79, i32 0, i32 17
  %80 = ptrtoint ptr %host_no191 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %host_no191, align 4
  %rport192 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %82 = ptrtoint ptr %rport192 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rport192, align 128
  %port_id193 = getelementptr inbounds %struct.fc_rport, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %port_id193 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port_id193, align 8
  br i1 %tobool159.not, label %do.end187, label %if.then160

if.then160:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #12
  %oxid175 = getelementptr i8, ptr %77, i32 -26
  %86 = ptrtoint ptr %oxid175 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %oxid175, align 2
  %conv176 = zext i16 %87 to i32
  %rxid177 = getelementptr i8, ptr %77, i32 -24
  %88 = ptrtoint ptr %rxid177 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %rxid177, align 4
  %conv178 = zext i16 %89 to i32
  %90 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len, align 16
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %81, i32 noundef %85, i32 noundef %conv176, i32 noundef %conv178, i32 noundef %85, i32 noundef %56, i32 noundef %expected_len.0, i32 noundef %91) #13
  br label %do.end204

do.end187:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %data_len, align 16
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %81, i32 noundef %85, i32 noundef %85, i32 noundef %56, i32 noundef %expected_len.0, i32 noundef %93) #13
  br label %do.end204

do.end204:                                        ; preds = %do.end187, %if.then160, %do.body147.do.end204_crit_edge
  %rport.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %94 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rport.i, align 128
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dd_data.i, align 4
  %tobool.not.i440 = icmp eq ptr %97, null
  br i1 %tobool.not.i440, label %do.end204.if.else.i.i_crit_edge, label %land.lhs.true.i

do.end204.if.else.i.i_crit_edge:                  ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i:                                  ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #12
  %e_d_tov1.i = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %e_d_tov1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %e_d_tov1.i, align 4
  %100 = tail call i32 @llvm.umax.i32(i32 %99, i32 2000) #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i, %do.end204.if.else.i.i_crit_edge
  %e_d_tov.0.i = phi i32 [ 2000, %do.end204.if.else.i.i_crit_edge ], [ %100, %land.lhs.true.i ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %e_d_tov.0.i) #10
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %state, align 4
  %103 = and i8 %102, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i442 = icmp eq i8 %103, 0
  br i1 %tobool.not.i442, label %if.then.i, label %if.else.i.i.cleanup_crit_edge

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %call2.i.i, 100
  %timer.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %add.i443 = add i32 %104, %add.i
  %call.i444 = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i443) #10
  %timer_delay.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 22
  %105 = ptrtoint ptr %timer_delay.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add.i, ptr %timer_delay.i, align 4
  br label %cleanup

if.end206:                                        ; preds = %if.then98
  %status_code207 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %106 = ptrtoint ptr %status_code207 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 6, ptr %status_code207, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %107 = load i32, ptr @fc_debug_logging, align 4
  %and209 = and i32 %107, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end206.if.end266_crit_edge, label %do.body218, !prof !416

if.end206.if.end266_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end266

do.body218:                                       ; preds = %if.end206
  %seq_ptr219 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %108 = ptrtoint ptr %seq_ptr219 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %seq_ptr219, align 4
  %tobool220.not = icmp eq ptr %109, null
  %lp250 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %110 = ptrtoint ptr %lp250 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lp250, align 64
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %host_no252 = getelementptr inbounds %struct.Scsi_Host, ptr %113, i32 0, i32 17
  %114 = ptrtoint ptr %host_no252 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %host_no252, align 4
  %rport253 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %116 = ptrtoint ptr %rport253 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rport253, align 128
  %port_id254 = getelementptr inbounds %struct.fc_rport, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %port_id254 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port_id254, align 8
  br i1 %tobool220.not, label %do.end248, label %if.then221

if.then221:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  %oxid236 = getelementptr i8, ptr %109, i32 -26
  %120 = ptrtoint ptr %oxid236 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %oxid236, align 2
  %conv237 = zext i16 %121 to i32
  %rxid238 = getelementptr i8, ptr %109, i32 -24
  %122 = ptrtoint ptr %rxid238 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %rxid238, align 4
  %conv239 = zext i16 %123 to i32
  %124 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %data_len, align 16
  %call244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %115, i32 noundef %119, i32 noundef %conv237, i32 noundef %conv239, i32 noundef %119, i32 noundef %56, i32 noundef %expected_len.0, i32 noundef %125) #13
  br label %if.end266

do.end248:                                        ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_len, align 16
  %call259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %115, i32 noundef %119, i32 noundef %119, i32 noundef %56, i32 noundef %expected_len.0, i32 noundef %127) #13
  br label %if.end266

if.end266:                                        ; preds = %do.end248, %if.then221, %if.end206.if.end266_crit_edge, %land.rhs.if.end266_crit_edge, %if.end83.if.end266_crit_edge
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %fsp)
  br label %cleanup

do.body267:                                       ; preds = %if.then53.do.body267_crit_edge, %if.then27.do.body267_crit_edge, %if.then18.do.body267_crit_edge, %entry.do.body267_crit_edge
  %flags.0 = phi i8 [ 0, %entry.do.body267_crit_edge ], [ %8, %if.then18.do.body267_crit_edge ], [ %8, %if.then53.do.body267_crit_edge ], [ %8, %if.then27.do.body267_crit_edge ]
  %snsl.1 = phi i32 [ 0, %entry.do.body267_crit_edge ], [ 0, %if.then18.do.body267_crit_edge ], [ %snsl.0, %if.then53.do.body267_crit_edge ], [ 0, %if.then27.do.body267_crit_edge ]
  %respl.2 = phi i32 [ 0, %entry.do.body267_crit_edge ], [ 0, %if.then18.do.body267_crit_edge ], [ %respl.1, %if.then53.do.body267_crit_edge ], [ %23, %if.then27.do.body267_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %128 = load i32, ptr @fc_debug_logging, align 4
  %and268 = and i32 %128, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %do.body267.err_crit_edge, label %do.body277, !prof !416

do.body267.err_crit_edge:                         ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body277:                                       ; preds = %do.body267
  %seq_ptr278 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %129 = ptrtoint ptr %seq_ptr278 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %seq_ptr278, align 4
  %tobool279.not = icmp eq ptr %130, null
  %lp308 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %131 = ptrtoint ptr %lp308 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %lp308, align 64
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 8
  %host_no310 = getelementptr inbounds %struct.Scsi_Host, ptr %134, i32 0, i32 17
  %135 = ptrtoint ptr %host_no310 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %host_no310, align 4
  %rport311 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %137 = ptrtoint ptr %rport311 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rport311, align 128
  %port_id312 = getelementptr inbounds %struct.fc_rport, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %port_id312 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port_id312, align 8
  br i1 %tobool279.not, label %do.end306, label %if.then280

if.then280:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #12
  %oxid295 = getelementptr i8, ptr %130, i32 -26
  %141 = ptrtoint ptr %oxid295 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %oxid295, align 2
  %conv296 = zext i16 %142 to i32
  %rxid297 = getelementptr i8, ptr %130, i32 -24
  %143 = ptrtoint ptr %rxid297 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %rxid297, align 4
  %conv298 = zext i16 %144 to i32
  %conv299 = zext i8 %flags.0 to i32
  %145 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len, align 4
  %call302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %136, i32 noundef %140, i32 noundef %conv296, i32 noundef %conv298, i32 noundef %conv299, i32 noundef %146, i32 noundef %respl.2, i32 noundef %snsl.1) #13
  br label %err

do.end306:                                        ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #12
  %conv313 = zext i8 %flags.0 to i32
  %147 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len, align 4
  %call316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, i32 noundef %136, i32 noundef %140, i32 noundef %conv313, i32 noundef %148, i32 noundef %respl.2, i32 noundef %snsl.1) #13
  br label %err

err:                                              ; preds = %do.end306, %if.then280, %do.body267.err_crit_edge, %land.lhs.true70.err_crit_edge
  %status_code323 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %149 = ptrtoint ptr %status_code323 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 8, ptr %status_code323, align 2
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %fsp)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end266, %if.then.i, %if.else.i.i.cleanup_crit_edge, %do.end130, %if.then116, %do.body.cleanup_crit_edge, %if.then35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fcp_retry_cmd(ptr noundef %fsp, i32 noundef %status_code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %0 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq_ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fc_exch_done(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %seq_ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 4
  %5 = and i8 %4, -5
  store i8 %5, ptr %state, align 4
  %io_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %6 = ptrtoint ptr %io_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %io_status, align 8
  %conv4 = trunc i32 %status_code to i8
  %status_code5 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %7 = ptrtoint ptr %status_code5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %status_code5, align 2
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %fsp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fcp_complete_locked(ptr noundef %fsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 64
  %state = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %status_code = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %4 = ptrtoint ptr %status_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.then7, label %if.then5.if.end62_crit_edge

if.then5.if.end62_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %status_code to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %status_code, align 2
  br label %if.end62

if.else:                                          ; preds = %if.end
  %cdb_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 7
  %7 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cdb_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.lhs.true:                                    ; preds = %if.else
  %xfer_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %9 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xfer_len, align 4
  %data_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 2
  %11 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp12 = icmp ult i32 %10, %12
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.lhs.true14:                                  ; preds = %land.lhs.true
  %io_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %13 = ptrtoint ptr %io_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %land.lhs.true14.if.end62_crit_edge

land.lhs.true14.if.end62_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %scsi_comp_flags = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 9
  %15 = ptrtoint ptr %scsi_comp_flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scsi_comp_flags, align 1
  %17 = and i8 %16, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %land.lhs.true16.do.body_crit_edge, label %lor.lhs.false

land.lhs.true16.do.body_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true16
  %scsi_resid = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 12
  %18 = ptrtoint ptr %scsi_resid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scsi_resid, align 16
  %sub = sub i32 %12, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp22 = icmp ult i32 %10, %sub
  br i1 %cmp22, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end62_crit_edge

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true16.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %20 = load i32, ptr @fc_debug_logging, align 4
  %and25 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body.do.end59_crit_edge, label %do.body30, !prof !416

do.body.do.end59_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

do.body30:                                        ; preds = %do.body
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %21 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %seq_ptr, align 4
  %tobool31.not = icmp eq ptr %22, null
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %host_no48 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %host_no48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no48, align 4
  %rport49 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %27 = ptrtoint ptr %rport49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rport49, align 128
  %port_id50 = getelementptr inbounds %struct.fc_rport, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %port_id50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_id50, align 8
  br i1 %tobool31.not, label %do.end44, label %if.then32

if.then32:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %22, i32 -26
  %31 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %oxid, align 2
  %conv37 = zext i16 %32 to i32
  %rxid = getelementptr i8, ptr %22, i32 -24
  %33 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rxid, align 4
  %conv38 = zext i16 %34 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %26, i32 noundef %30, i32 noundef %conv37, i32 noundef %conv38, i32 noundef %10, i32 noundef %12) #13
  br label %do.end59

do.end44:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %26, i32 noundef %30, i32 noundef %10, i32 noundef %12) #13
  br label %do.end59

do.end59:                                         ; preds = %do.end44, %if.then32, %do.body.do.end59_crit_edge
  %status_code60 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %35 = ptrtoint ptr %status_code60 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 7, ptr %status_code60, align 2
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %lor.lhs.false.if.end62_crit_edge, %land.lhs.true14.if.end62_crit_edge, %land.lhs.true.if.end62_crit_edge, %if.else.if.end62_crit_edge, %if.then7, %if.then5.if.end62_crit_edge
  %seq_ptr63 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %36 = ptrtoint ptr %seq_ptr63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %seq_ptr63, align 4
  %tobool64.not = icmp eq ptr %37, null
  br i1 %tobool64.not, label %if.end62.if.end89_crit_edge, label %if.then65

if.end62.if.end89_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then65:                                        ; preds = %if.end62
  %38 = ptrtoint ptr %seq_ptr63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %seq_ptr63, align 4
  %scsi_comp_flags67 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 9
  %39 = ptrtoint ptr %scsi_comp_flags67 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %scsi_comp_flags67, align 1
  %41 = and i8 %40, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool70.not = icmp eq i8 %41, 0
  br i1 %tobool70.not, label %if.then65.if.end88_crit_edge, label %if.then77, !prof !416

if.then65.if.end88_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then77:                                        ; preds = %if.then65
  %call78 = tail call ptr @fc_seq_start_next(ptr noundef nonnull %37) #10
  %42 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lp, align 64
  %call80 = tail call fastcc ptr @fc_fcp_frame_alloc(ptr noundef %43, i32 noundef 0)
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then77.if.end88_crit_edge, label %if.then82

if.then77.if.end88_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %did = getelementptr i8, ptr %37, i32 -12
  %44 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %did, align 32
  %sid = getelementptr i8, ptr %37, i32 -16
  %46 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sid, align 4
  tail call fastcc void @fc_fill_fc_hdr(ptr noundef nonnull %call80, i32 noundef 3, i32 noundef %45, i32 noundef %47, i32 noundef 8, i32 noundef 1638400, i32 noundef 0)
  %call86 = tail call i32 @fc_seq_send(ptr noundef %1, ptr noundef %call78, ptr noundef nonnull %call80) #10
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.then77.if.end88_crit_edge, %if.then65.if.end88_crit_edge
  tail call void @fc_exch_done(ptr noundef nonnull %37) #10
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end62.if.end89_crit_edge
  %cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 3
  %48 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmd, align 4
  %tobool90.not = icmp eq ptr %49, null
  br i1 %tobool90.not, label %if.end89.cleanup_crit_edge, label %if.then91

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_io_compl(ptr noundef %fsp)
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end89.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_seq_start_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fc_fcp_frame_alloc(ptr noundef %lport, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %lport, i32 noundef %len) #10
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %len) #10
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i
  %fp.0.i = phi ptr [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %tobool.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool.not, label %do.body, label %fc_frame_alloc.exit.cleanup_crit_edge, !prof !423

fc_frame_alloc.exit.cleanup_crit_edge:            ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %stats = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 16
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !424
  %7 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %2
  %13 = inttoptr i32 %add to ptr
  %FcpFrameAllocFails = getelementptr inbounds %struct.fc_stats, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %FcpFrameAllocFails to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %FcpFrameAllocFails, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %FcpFrameAllocFails, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !425
  %16 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i22 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i22 to ptr
  %preempt_count.i.i23 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i23, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i23, align 4
  %call12 = tail call fastcc zeroext i1 @fc_fcp_can_queue_ramp_down(ptr noundef %lport)
  %20 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lport, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %can_queue, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.50, i32 noundef %23) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body, %fc_frame_alloc.exit.cleanup_crit_edge
  ret ptr %fp.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fill_fc_hdr(ptr nocapture noundef readonly %fp, i32 noundef %r_ctl, i32 noundef %did, i32 noundef %sid, i32 noundef %type, i32 noundef %f_ctl, i32 noundef %parm_offset) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp.i = icmp ult i32 %1, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !423

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %conv.i = trunc i32 %r_ctl to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %3, align 4
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 1
  %shr.i.i = lshr i32 %did, 16
  %conv.i.i = trunc i32 %shr.i.i to i8
  %5 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i.i, ptr %fh_d_id.i, align 1
  %shr1.i.i = lshr i32 %did, 8
  %conv3.i.i = trunc i32 %shr1.i.i to i8
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %conv6.i.i = trunc i32 %did to i8
  %arrayidx7.i.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6.i.i, ptr %arrayidx7.i.i, align 1
  %fh_s_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 3
  %shr.i31.i = lshr i32 %sid, 16
  %conv.i32.i = trunc i32 %shr.i31.i to i8
  %8 = ptrtoint ptr %fh_s_id.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i32.i, ptr %fh_s_id.i, align 1
  %shr1.i33.i = lshr i32 %sid, 8
  %conv3.i34.i = trunc i32 %shr1.i33.i to i8
  %arrayidx4.i35.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx4.i35.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3.i34.i, ptr %arrayidx4.i35.i, align 1
  %conv6.i36.i = trunc i32 %sid to i8
  %arrayidx7.i37.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx7.i37.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i36.i, ptr %arrayidx7.i37.i, align 1
  %conv20.i = trunc i32 %type to i8
  %fh_type.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %fh_type.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv20.i, ptr %fh_type.i, align 4
  %fh_f_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 5
  %shr.i38.i = lshr i32 %f_ctl, 16
  %conv.i39.i = trunc i32 %shr.i38.i to i8
  %12 = ptrtoint ptr %fh_f_ctl.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i39.i, ptr %fh_f_ctl.i, align 1
  %shr1.i40.i = lshr i32 %f_ctl, 8
  %conv3.i41.i = trunc i32 %shr1.i40.i to i8
  %arrayidx4.i42.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx4.i42.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3.i41.i, ptr %arrayidx4.i42.i, align 1
  %conv6.i43.i = trunc i32 %f_ctl to i8
  %arrayidx7.i44.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx7.i44.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv6.i43.i, ptr %arrayidx7.i44.i, align 1
  %fh_cs_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %fh_cs_ctl.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %fh_cs_ctl.i, align 4
  %fh_df_ctl.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %fh_df_ctl.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fh_df_ctl.i, align 1
  %fh_parm_offset.i = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %fh_parm_offset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %parm_offset, ptr %fh_parm_offset.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_seq_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_io_compl(ptr noundef %fsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fsp, null
  br i1 %tobool.not.i, label %entry.fc_fcp_ddp_done.exit_crit_edge, label %if.end.i

entry.fc_fcp_ddp_done.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_ddp_done.exit

if.end.i:                                         ; preds = %entry
  %xfer_ddp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 17
  %0 = ptrtoint ptr %xfer_ddp.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %xfer_ddp.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i = icmp eq i16 %1, -1
  br i1 %cmp.i, label %if.end.i.fc_fcp_ddp_done.exit_crit_edge, label %if.end3.i

if.end.i.fc_fcp_ddp_done.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_ddp_done.exit

if.end3.i:                                        ; preds = %if.end.i
  %lp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %2 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lp.i, align 64
  %ddp_done.i = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %ddp_done.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddp_done.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %if.end3.i.fc_fcp_ddp_done.exit_crit_edge, label %if.then5.i

if.end3.i.fc_fcp_ddp_done.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_ddp_done.exit

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %5(ptr noundef %3, i16 noundef zeroext %1) #10
  %xfer_len.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %6 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %xfer_len.i, align 4
  %7 = ptrtoint ptr %xfer_ddp.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %xfer_ddp.i, align 2
  br label %fc_fcp_ddp_done.exit

fc_fcp_ddp_done.exit:                             ; preds = %if.then5.i, %if.end3.i.fc_fcp_ddp_done.exit_crit_edge, %if.end.i.fc_fcp_ddp_done.exit_crit_edge, %entry.fc_fcp_ddp_done.exit_crit_edge
  %state = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state, align 4
  %10 = or i8 %9, 32
  store i8 %10, ptr %state, align 4
  %11 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %fc_fcp_ddp_done.exit.if.end_crit_edge

fc_fcp_ddp_done.exit.if.end_crit_edge:            ; preds = %fc_fcp_ddp_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %fc_fcp_ddp_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %fsp) #10
  %timer = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 20
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %fsp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %fc_fcp_ddp_done.exit.if.end_crit_edge
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %12 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lp, align 64
  %scsi_priv = getelementptr inbounds %struct.fc_lport, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %scsi_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scsi_priv, align 8
  %last_can_queue_ramp_down_time = getelementptr inbounds %struct.fc_fcp_internal, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %last_can_queue_ramp_down_time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_can_queue_ramp_down_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 8
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host_lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #10
  %last_can_queue_ramp_up_time.i = getelementptr inbounds %struct.fc_fcp_internal, ptr %15, i32 0, i32 4
  %22 = ptrtoint ptr %last_can_queue_ramp_up_time.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_can_queue_ramp_up_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i831 = icmp eq i32 %23, 0
  br i1 %tobool.not.i831, label %if.then6.if.end.i832_crit_edge, label %land.lhs.true.i

if.then6.if.end.i832_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i832

land.lhs.true.i:                                  ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -6000, %23
  %sub.i = add i32 %add.neg.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  br i1 %cmp6.i, label %land.lhs.true.i.fc_fcp_can_queue_ramp_up.exit_crit_edge, label %land.lhs.true.i.if.end.i832_crit_edge

land.lhs.true.i.if.end.i832_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i832

land.lhs.true.i.fc_fcp_can_queue_ramp_up.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_can_queue_ramp_up.exit

if.end.i832:                                      ; preds = %land.lhs.true.i.if.end.i832_crit_edge, %if.then6.if.end.i832_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = ptrtoint ptr %last_can_queue_ramp_down_time to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_can_queue_ramp_down_time, align 4
  %add8.neg.i = add i32 %25, -6000
  %sub9.i = sub i32 %add8.neg.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i)
  %cmp10.i = icmp slt i32 %sub9.i, 0
  br i1 %cmp10.i, label %if.end.i832.fc_fcp_can_queue_ramp_up.exit_crit_edge, label %if.end13.i

if.end.i832.fc_fcp_can_queue_ramp_up.exit_crit_edge: ; preds = %if.end.i832
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_can_queue_ramp_up.exit

if.end13.i:                                       ; preds = %if.end.i832
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %29 = ptrtoint ptr %last_can_queue_ramp_up_time.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_can_queue_ramp_up_time.i, align 4
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %13, align 8
  %can_queue16.i = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 26
  %32 = ptrtoint ptr %can_queue16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %can_queue16.i, align 4
  %shl.i = shl i32 %33, 1
  %max_can_queue.i = getelementptr inbounds %struct.fc_fcp_internal, ptr %15, i32 0, i32 5
  %34 = ptrtoint ptr %max_can_queue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_can_queue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %35)
  %cmp17.not.i = icmp slt i32 %shl.i, %35
  br i1 %cmp17.not.i, label %if.end13.i.if.end22.i_crit_edge, label %if.then19.i

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %last_can_queue_ramp_down_time to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %last_can_queue_ramp_down_time, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end13.i.if.end22.i_crit_edge
  %can_queue.0.i = phi i32 [ %35, %if.then19.i ], [ %shl.i, %if.end13.i.if.end22.i_crit_edge ]
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %13, align 8
  %can_queue24.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 26
  %39 = ptrtoint ptr %can_queue24.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %can_queue.0.i, ptr %can_queue24.i, align 4
  %40 = load ptr, ptr %13, align 8
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.124, i32 noundef %can_queue.0.i) #13
  br label %fc_fcp_can_queue_ramp_up.exit

fc_fcp_can_queue_ramp_up.exit:                    ; preds = %if.end22.i, %if.end.i832.fc_fcp_can_queue_ramp_up.exit_crit_edge, %land.lhs.true.i.fc_fcp_can_queue_ramp_up.exit_crit_edge
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %13, align 8
  %host_lock30.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %host_lock30.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host_lock30.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %call2.i) #10
  br label %if.end7

if.end7:                                          ; preds = %fc_fcp_can_queue_ramp_up.exit, %if.end.if.end7_crit_edge
  %cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 3
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmd, align 4
  %cdb_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 7
  %47 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cdb_status, align 1
  %conv8 = zext i8 %48 to i32
  %Status = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 22, i32 5
  %49 = ptrtoint ptr %Status to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %conv8, ptr %Status, align 4
  %status_code = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %50 = ptrtoint ptr %status_code to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %status_code, align 2
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.288)
  switch i8 %51, label %do.body611 [
    i8 0, label %sw.bb
    i8 8, label %do.body
    i8 7, label %sw.bb58
    i8 6, label %do.body185
    i8 1, label %sw.bb239
    i8 2, label %do.body350
    i8 12, label %do.body402
    i8 9, label %do.body454
    i8 10, label %do.body506
    i8 11, label %do.body558
  ]

sw.bb:                                            ; preds = %if.end7
  %53 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cdb_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp = icmp eq i8 %54, 0
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %55 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %result, align 4
  %scsi_resid = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 12
  %56 = ptrtoint ptr %scsi_resid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %scsi_resid, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool14.not = icmp eq i32 %57, 0
  br i1 %tobool14.not, label %if.then13.sw.epilog_crit_edge, label %if.then15

if.then13.sw.epilog_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %buffers_residual = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 22, i32 3
  %58 = ptrtoint ptr %buffers_residual to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %buffers_residual, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv11 = zext i8 %54 to i32
  %result22 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %59 = ptrtoint ptr %result22 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv11, ptr %result22, align 4
  br label %sw.epilog

do.body:                                          ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %60 = load i32, ptr @fc_debug_logging, align 4
  %and25 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body.do.end56_crit_edge, label %do.body30, !prof !416

do.body.do.end56_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.body30:                                        ; preds = %do.body
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %61 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seq_ptr, align 4
  %tobool31.not = icmp eq ptr %62, null
  %63 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lp, align 64
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %host_no47 = getelementptr inbounds %struct.Scsi_Host, ptr %66, i32 0, i32 17
  %67 = ptrtoint ptr %host_no47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %host_no47, align 4
  %rport48 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %69 = ptrtoint ptr %rport48 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rport48, align 128
  %port_id49 = getelementptr inbounds %struct.fc_rport, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %port_id49 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port_id49, align 8
  br i1 %tobool31.not, label %do.end43, label %if.then32

if.then32:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %62, i32 -26
  %73 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %oxid, align 2
  %conv37 = zext i16 %74 to i32
  %rxid = getelementptr i8, ptr %62, i32 -24
  %75 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %rxid, align 4
  %conv38 = zext i16 %76 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %68, i32 noundef %72, i32 noundef %conv37, i32 noundef %conv38) #13
  br label %do.end56

do.end43:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %68, i32 noundef %72) #13
  br label %do.end56

do.end56:                                         ; preds = %do.end43, %if.then32, %do.body.do.end56_crit_edge
  %result57 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %77 = ptrtoint ptr %result57 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 458752, ptr %result57, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end7
  %78 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cdb_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp61 = icmp eq i8 %79, 0
  br i1 %cmp61, label %land.lhs.true, label %sw.bb58.do.body126_crit_edge

sw.bb58.do.body126_crit_edge:                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body126

land.lhs.true:                                    ; preds = %sw.bb58
  %req_flags = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 11
  %80 = ptrtoint ptr %req_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %req_flags, align 4
  %and63 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then65, label %land.lhs.true.do.body126_crit_edge

land.lhs.true.do.body126_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body126

if.then65:                                        ; preds = %land.lhs.true
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %state, align 4
  %84 = and i8 %83, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool69.not = icmp eq i8 %84, 0
  br i1 %tobool69.not, label %do.body73, label %if.then70

if.then70:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %result71 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %85 = ptrtoint ptr %result71 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %result71, align 4
  br label %sw.epilog

do.body73:                                        ; preds = %if.then65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %86 = load i32, ptr @fc_debug_logging, align 4
  %and74 = and i32 %86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.do.end122_crit_edge, label %do.body83, !prof !416

do.body73.do.end122_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

do.body83:                                        ; preds = %do.body73
  %seq_ptr84 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %87 = ptrtoint ptr %seq_ptr84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %seq_ptr84, align 4
  %tobool85.not = icmp eq ptr %88, null
  %89 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lp, align 64
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %host_no113 = getelementptr inbounds %struct.Scsi_Host, ptr %92, i32 0, i32 17
  %93 = ptrtoint ptr %host_no113 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %host_no113, align 4
  %rport114 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %95 = ptrtoint ptr %rport114 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rport114, align 128
  %port_id115 = getelementptr inbounds %struct.fc_rport, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %port_id115 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port_id115, align 8
  br i1 %tobool85.not, label %do.end109, label %if.then86

if.then86:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  %oxid101 = getelementptr i8, ptr %88, i32 -26
  %99 = ptrtoint ptr %oxid101 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %oxid101, align 2
  %conv102 = zext i16 %100 to i32
  %rxid103 = getelementptr i8, ptr %88, i32 -24
  %101 = ptrtoint ptr %rxid103 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %rxid103, align 4
  %conv104 = zext i16 %102 to i32
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %94, i32 noundef %98, i32 noundef %conv102, i32 noundef %conv104) #13
  br label %do.end122

do.end109:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %94, i32 noundef %98) #13
  br label %do.end122

do.end122:                                        ; preds = %do.end109, %if.then86, %do.body73.do.end122_crit_edge
  %result123 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %103 = ptrtoint ptr %result123 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 458752, ptr %result123, align 4
  br label %sw.epilog

do.body126:                                       ; preds = %land.lhs.true.do.body126_crit_edge, %sw.bb58.do.body126_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %104 = load i32, ptr @fc_debug_logging, align 4
  %and127 = and i32 %104, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body126.do.end175_crit_edge, label %do.body136, !prof !416

do.body126.do.end175_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end175

do.body136:                                       ; preds = %do.body126
  %seq_ptr137 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %105 = ptrtoint ptr %seq_ptr137 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %seq_ptr137, align 4
  %tobool138.not = icmp eq ptr %106, null
  %107 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lp, align 64
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %host_no166 = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 17
  %111 = ptrtoint ptr %host_no166 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %host_no166, align 4
  %rport167 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %113 = ptrtoint ptr %rport167 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rport167, align 128
  %port_id168 = getelementptr inbounds %struct.fc_rport, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %port_id168 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port_id168, align 8
  br i1 %tobool138.not, label %do.end162, label %if.then139

if.then139:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #12
  %oxid154 = getelementptr i8, ptr %106, i32 -26
  %117 = ptrtoint ptr %oxid154 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %oxid154, align 2
  %conv155 = zext i16 %118 to i32
  %rxid156 = getelementptr i8, ptr %106, i32 -24
  %119 = ptrtoint ptr %rxid156 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %rxid156, align 4
  %conv157 = zext i16 %120 to i32
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %112, i32 noundef %116, i32 noundef %conv155, i32 noundef %conv157) #13
  br label %do.end175

do.end162:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #12
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %112, i32 noundef %116) #13
  br label %do.end175

do.end175:                                        ; preds = %do.end162, %if.then139, %do.body126.do.end175_crit_edge
  %scsi_resid176 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 12
  %121 = ptrtoint ptr %scsi_resid176 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %scsi_resid176, align 16
  %buffers_residual178 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 22, i32 3
  %123 = ptrtoint ptr %buffers_residual178 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %buffers_residual178, align 4
  %124 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %cdb_status, align 1
  %conv180 = zext i8 %125 to i32
  %or181 = or i32 %conv180, 458752
  %result182 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %126 = ptrtoint ptr %result182 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or181, ptr %result182, align 4
  br label %sw.epilog

do.body185:                                       ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %127 = load i32, ptr @fc_debug_logging, align 4
  %and186 = and i32 %127, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %do.body185.do.end234_crit_edge, label %do.body195, !prof !416

do.body185.do.end234_crit_edge:                   ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end234

do.body195:                                       ; preds = %do.body185
  %seq_ptr196 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %128 = ptrtoint ptr %seq_ptr196 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %seq_ptr196, align 4
  %tobool197.not = icmp eq ptr %129, null
  %130 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lp, align 64
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %host_no225 = getelementptr inbounds %struct.Scsi_Host, ptr %133, i32 0, i32 17
  %134 = ptrtoint ptr %host_no225 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %host_no225, align 4
  %rport226 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %136 = ptrtoint ptr %rport226 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rport226, align 128
  %port_id227 = getelementptr inbounds %struct.fc_rport, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %port_id227 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %port_id227, align 8
  br i1 %tobool197.not, label %do.end221, label %if.then198

if.then198:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #12
  %oxid213 = getelementptr i8, ptr %129, i32 -26
  %140 = ptrtoint ptr %oxid213 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %oxid213, align 2
  %conv214 = zext i16 %141 to i32
  %rxid215 = getelementptr i8, ptr %129, i32 -24
  %142 = ptrtoint ptr %rxid215 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %rxid215, align 4
  %conv216 = zext i16 %143 to i32
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %135, i32 noundef %139, i32 noundef %conv214, i32 noundef %conv216) #13
  br label %do.end234

do.end221:                                        ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #12
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %135, i32 noundef %139) #13
  br label %do.end234

do.end234:                                        ; preds = %do.end221, %if.then198, %do.body185.do.end234_crit_edge
  %144 = ptrtoint ptr %cdb_status to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %cdb_status, align 1
  %conv236 = zext i8 %145 to i32
  %or237 = or i32 %conv236, 458752
  %result238 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %146 = ptrtoint ptr %result238 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or237, ptr %result238, align 4
  br label %sw.epilog

sw.bb239:                                         ; preds = %if.end7
  %result240 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %147 = ptrtoint ptr %result240 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %result240, align 4
  %149 = and i32 %148, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %149)
  %cmp242 = icmp eq i32 %149, 196608
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %150 = load i32, ptr @fc_debug_logging, align 4
  %and246 = and i32 %150, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %cmp242, label %do.body245, label %do.body296

do.body245:                                       ; preds = %sw.bb239
  br i1 %tobool247.not, label %do.body245.if.end346_crit_edge, label %do.body255, !prof !416

do.body245.if.end346_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end346

do.body255:                                       ; preds = %do.body245
  %seq_ptr256 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %151 = ptrtoint ptr %seq_ptr256 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %seq_ptr256, align 4
  %tobool257.not = icmp eq ptr %152, null
  %153 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %lp, align 64
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %host_no285 = getelementptr inbounds %struct.Scsi_Host, ptr %156, i32 0, i32 17
  %157 = ptrtoint ptr %host_no285 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %host_no285, align 4
  %rport286 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %159 = ptrtoint ptr %rport286 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rport286, align 128
  %port_id287 = getelementptr inbounds %struct.fc_rport, ptr %160, i32 0, i32 6
  %161 = ptrtoint ptr %port_id287 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port_id287, align 8
  br i1 %tobool257.not, label %do.end281, label %if.then258

if.then258:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #12
  %oxid273 = getelementptr i8, ptr %152, i32 -26
  %163 = ptrtoint ptr %oxid273 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %oxid273, align 2
  %conv274 = zext i16 %164 to i32
  %rxid275 = getelementptr i8, ptr %152, i32 -24
  %165 = ptrtoint ptr %rxid275 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %rxid275, align 4
  %conv276 = zext i16 %166 to i32
  %call277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %158, i32 noundef %162, i32 noundef %conv274, i32 noundef %conv276) #13
  br label %if.end346

do.end281:                                        ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #12
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %158, i32 noundef %162) #13
  br label %if.end346

do.body296:                                       ; preds = %sw.bb239
  br i1 %tobool247.not, label %do.body296.do.end345_crit_edge, label %do.body306, !prof !416

do.body296.do.end345_crit_edge:                   ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end345

do.body306:                                       ; preds = %do.body296
  %seq_ptr307 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %167 = ptrtoint ptr %seq_ptr307 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %seq_ptr307, align 4
  %tobool308.not = icmp eq ptr %168, null
  %169 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lp, align 64
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 8
  %host_no336 = getelementptr inbounds %struct.Scsi_Host, ptr %172, i32 0, i32 17
  %173 = ptrtoint ptr %host_no336 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %host_no336, align 4
  %rport337 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %175 = ptrtoint ptr %rport337 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rport337, align 128
  %port_id338 = getelementptr inbounds %struct.fc_rport, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %port_id338 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port_id338, align 8
  br i1 %tobool308.not, label %do.end332, label %if.then309

if.then309:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #12
  %oxid324 = getelementptr i8, ptr %168, i32 -26
  %179 = ptrtoint ptr %oxid324 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %oxid324, align 2
  %conv325 = zext i16 %180 to i32
  %rxid326 = getelementptr i8, ptr %168, i32 -24
  %181 = ptrtoint ptr %rxid326 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %rxid326, align 4
  %conv327 = zext i16 %182 to i32
  %call328 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %174, i32 noundef %178, i32 noundef %conv325, i32 noundef %conv327) #13
  br label %do.end345

do.end332:                                        ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #12
  %call339 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %174, i32 noundef %178) #13
  br label %do.end345

do.end345:                                        ; preds = %do.end332, %if.then309, %do.body296.do.end345_crit_edge
  %183 = ptrtoint ptr %result240 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %result240, align 4
  %and.i = and i32 %184, -16711681
  %or.i = or i32 %and.i, 458752
  store i32 %or.i, ptr %result240, align 4
  br label %if.end346

if.end346:                                        ; preds = %do.end345, %do.end281, %if.then258, %do.body245.if.end346_crit_edge
  %io_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %185 = ptrtoint ptr %io_status to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %io_status, align 8
  %187 = ptrtoint ptr %result240 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %result240, align 4
  %or348 = or i32 %188, %186
  store i32 %or348, ptr %result240, align 4
  br label %sw.epilog

do.body350:                                       ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %189 = load i32, ptr @fc_debug_logging, align 4
  %and351 = and i32 %189, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and351)
  %tobool352.not = icmp eq i32 %and351, 0
  br i1 %tobool352.not, label %do.body350.do.end399_crit_edge, label %do.body360, !prof !416

do.body350.do.end399_crit_edge:                   ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end399

do.body360:                                       ; preds = %do.body350
  %seq_ptr361 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %190 = ptrtoint ptr %seq_ptr361 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %seq_ptr361, align 4
  %tobool362.not = icmp eq ptr %191, null
  %192 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %lp, align 64
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 8
  %host_no390 = getelementptr inbounds %struct.Scsi_Host, ptr %195, i32 0, i32 17
  %196 = ptrtoint ptr %host_no390 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %host_no390, align 4
  %rport391 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %198 = ptrtoint ptr %rport391 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rport391, align 128
  %port_id392 = getelementptr inbounds %struct.fc_rport, ptr %199, i32 0, i32 6
  %200 = ptrtoint ptr %port_id392 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %port_id392, align 8
  br i1 %tobool362.not, label %do.end386, label %if.then363

if.then363:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #12
  %oxid378 = getelementptr i8, ptr %191, i32 -26
  %202 = ptrtoint ptr %oxid378 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %oxid378, align 2
  %conv379 = zext i16 %203 to i32
  %rxid380 = getelementptr i8, ptr %191, i32 -24
  %204 = ptrtoint ptr %rxid380 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %rxid380, align 4
  %conv381 = zext i16 %205 to i32
  %call382 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %197, i32 noundef %201, i32 noundef %conv379, i32 noundef %conv381) #13
  br label %do.end399

do.end386:                                        ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #12
  %call393 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %197, i32 noundef %201) #13
  br label %do.end399

do.end399:                                        ; preds = %do.end386, %if.then363, %do.body350.do.end399_crit_edge
  %result400 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %206 = ptrtoint ptr %result400 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 524288, ptr %result400, align 4
  br label %sw.epilog

do.body402:                                       ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %207 = load i32, ptr @fc_debug_logging, align 4
  %and403 = and i32 %207, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and403)
  %tobool404.not = icmp eq i32 %and403, 0
  br i1 %tobool404.not, label %do.body402.do.end451_crit_edge, label %do.body412, !prof !416

do.body402.do.end451_crit_edge:                   ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end451

do.body412:                                       ; preds = %do.body402
  %seq_ptr413 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %208 = ptrtoint ptr %seq_ptr413 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %seq_ptr413, align 4
  %tobool414.not = icmp eq ptr %209, null
  %210 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %lp, align 64
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 8
  %host_no442 = getelementptr inbounds %struct.Scsi_Host, ptr %213, i32 0, i32 17
  %214 = ptrtoint ptr %host_no442 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %host_no442, align 4
  %rport443 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %216 = ptrtoint ptr %rport443 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rport443, align 128
  %port_id444 = getelementptr inbounds %struct.fc_rport, ptr %217, i32 0, i32 6
  %218 = ptrtoint ptr %port_id444 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %port_id444, align 8
  br i1 %tobool414.not, label %do.end438, label %if.then415

if.then415:                                       ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #12
  %oxid430 = getelementptr i8, ptr %209, i32 -26
  %220 = ptrtoint ptr %oxid430 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %oxid430, align 2
  %conv431 = zext i16 %221 to i32
  %rxid432 = getelementptr i8, ptr %209, i32 -24
  %222 = ptrtoint ptr %rxid432 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %rxid432, align 4
  %conv433 = zext i16 %223 to i32
  %call434 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %215, i32 noundef %219, i32 noundef %conv431, i32 noundef %conv433) #13
  br label %do.end451

do.end438:                                        ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #12
  %call445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %215, i32 noundef %219) #13
  br label %do.end451

do.end451:                                        ; preds = %do.end438, %if.then415, %do.body402.do.end451_crit_edge
  %result452 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %224 = ptrtoint ptr %result452 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 720896, ptr %result452, align 4
  br label %sw.epilog

do.body454:                                       ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %225 = load i32, ptr @fc_debug_logging, align 4
  %and455 = and i32 %225, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool456.not = icmp eq i32 %and455, 0
  br i1 %tobool456.not, label %do.body454.do.end503_crit_edge, label %do.body464, !prof !416

do.body454.do.end503_crit_edge:                   ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end503

do.body464:                                       ; preds = %do.body454
  %seq_ptr465 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %226 = ptrtoint ptr %seq_ptr465 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %seq_ptr465, align 4
  %tobool466.not = icmp eq ptr %227, null
  %228 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %lp, align 64
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 8
  %host_no494 = getelementptr inbounds %struct.Scsi_Host, ptr %231, i32 0, i32 17
  %232 = ptrtoint ptr %host_no494 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %host_no494, align 4
  %rport495 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %234 = ptrtoint ptr %rport495 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rport495, align 128
  %port_id496 = getelementptr inbounds %struct.fc_rport, ptr %235, i32 0, i32 6
  %236 = ptrtoint ptr %port_id496 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %port_id496, align 8
  br i1 %tobool466.not, label %do.end490, label %if.then467

if.then467:                                       ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #12
  %oxid482 = getelementptr i8, ptr %227, i32 -26
  %238 = ptrtoint ptr %oxid482 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %oxid482, align 2
  %conv483 = zext i16 %239 to i32
  %rxid484 = getelementptr i8, ptr %227, i32 -24
  %240 = ptrtoint ptr %rxid484 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %rxid484, align 4
  %conv485 = zext i16 %241 to i32
  %call486 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %233, i32 noundef %237, i32 noundef %conv483, i32 noundef %conv485) #13
  br label %do.end503

do.end490:                                        ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #12
  %call497 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %233, i32 noundef %237) #13
  br label %do.end503

do.end503:                                        ; preds = %do.end490, %if.then467, %do.body454.do.end503_crit_edge
  %result504 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %242 = ptrtoint ptr %result504 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 65536, ptr %result504, align 4
  br label %sw.epilog

do.body506:                                       ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %243 = load i32, ptr @fc_debug_logging, align 4
  %and507 = and i32 %243, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and507)
  %tobool508.not = icmp eq i32 %and507, 0
  br i1 %tobool508.not, label %do.body506.do.end555_crit_edge, label %do.body516, !prof !416

do.body506.do.end555_crit_edge:                   ; preds = %do.body506
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end555

do.body516:                                       ; preds = %do.body506
  %seq_ptr517 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %244 = ptrtoint ptr %seq_ptr517 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %seq_ptr517, align 4
  %tobool518.not = icmp eq ptr %245, null
  %246 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %lp, align 64
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %247, align 8
  %host_no546 = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 17
  %250 = ptrtoint ptr %host_no546 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %host_no546, align 4
  %rport547 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %252 = ptrtoint ptr %rport547 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rport547, align 128
  %port_id548 = getelementptr inbounds %struct.fc_rport, ptr %253, i32 0, i32 6
  %254 = ptrtoint ptr %port_id548 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %port_id548, align 8
  br i1 %tobool518.not, label %do.end542, label %if.then519

if.then519:                                       ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #12
  %oxid534 = getelementptr i8, ptr %245, i32 -26
  %256 = ptrtoint ptr %oxid534 to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %oxid534, align 2
  %conv535 = zext i16 %257 to i32
  %rxid536 = getelementptr i8, ptr %245, i32 -24
  %258 = ptrtoint ptr %rxid536 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %rxid536, align 4
  %conv537 = zext i16 %259 to i32
  %call538 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %251, i32 noundef %255, i32 noundef %conv535, i32 noundef %conv537) #13
  br label %do.end555

do.end542:                                        ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #12
  %call549 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %251, i32 noundef %255) #13
  br label %do.end555

do.end555:                                        ; preds = %do.end542, %if.then519, %do.body506.do.end555_crit_edge
  %result556 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %260 = ptrtoint ptr %result556 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 393216, ptr %result556, align 4
  br label %sw.epilog

do.body558:                                       ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %261 = load i32, ptr @fc_debug_logging, align 4
  %and559 = and i32 %261, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and559)
  %tobool560.not = icmp eq i32 %and559, 0
  br i1 %tobool560.not, label %do.body558.do.end607_crit_edge, label %do.body568, !prof !416

do.body558.do.end607_crit_edge:                   ; preds = %do.body558
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end607

do.body568:                                       ; preds = %do.body558
  %seq_ptr569 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %262 = ptrtoint ptr %seq_ptr569 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %seq_ptr569, align 4
  %tobool570.not = icmp eq ptr %263, null
  %264 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %lp, align 64
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 8
  %host_no598 = getelementptr inbounds %struct.Scsi_Host, ptr %267, i32 0, i32 17
  %268 = ptrtoint ptr %host_no598 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %host_no598, align 4
  %rport599 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %270 = ptrtoint ptr %rport599 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %rport599, align 128
  %port_id600 = getelementptr inbounds %struct.fc_rport, ptr %271, i32 0, i32 6
  %272 = ptrtoint ptr %port_id600 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %port_id600, align 8
  br i1 %tobool570.not, label %do.end594, label %if.then571

if.then571:                                       ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #12
  %oxid586 = getelementptr i8, ptr %263, i32 -26
  %274 = ptrtoint ptr %oxid586 to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %oxid586, align 2
  %conv587 = zext i16 %275 to i32
  %rxid588 = getelementptr i8, ptr %263, i32 -24
  %276 = ptrtoint ptr %rxid588 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %rxid588, align 4
  %conv589 = zext i16 %277 to i32
  %call590 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %269, i32 noundef %273, i32 noundef %conv587, i32 noundef %conv589) #13
  br label %do.end607

do.end594:                                        ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #12
  %call601 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %269, i32 noundef %273) #13
  br label %do.end607

do.end607:                                        ; preds = %do.end594, %if.then571, %do.body558.do.end607_crit_edge
  %io_status608 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %278 = ptrtoint ptr %io_status608 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %io_status608, align 8
  %or609 = or i32 %279, 131072
  %result610 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %280 = ptrtoint ptr %result610 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %or609, ptr %result610, align 4
  br label %sw.epilog

do.body611:                                       ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %281 = load i32, ptr @fc_debug_logging, align 4
  %and612 = and i32 %281, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and612)
  %tobool613.not = icmp eq i32 %and612, 0
  br i1 %tobool613.not, label %do.body611.do.end660_crit_edge, label %do.body621, !prof !416

do.body611.do.end660_crit_edge:                   ; preds = %do.body611
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end660

do.body621:                                       ; preds = %do.body611
  %seq_ptr622 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %282 = ptrtoint ptr %seq_ptr622 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %seq_ptr622, align 4
  %tobool623.not = icmp eq ptr %283, null
  %284 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %lp, align 64
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 8
  %host_no651 = getelementptr inbounds %struct.Scsi_Host, ptr %287, i32 0, i32 17
  %288 = ptrtoint ptr %host_no651 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %host_no651, align 4
  %rport652 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %290 = ptrtoint ptr %rport652 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rport652, align 128
  %port_id653 = getelementptr inbounds %struct.fc_rport, ptr %291, i32 0, i32 6
  %292 = ptrtoint ptr %port_id653 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %port_id653, align 8
  br i1 %tobool623.not, label %do.end647, label %if.then624

if.then624:                                       ; preds = %do.body621
  call void @__sanitizer_cov_trace_pc() #12
  %oxid639 = getelementptr i8, ptr %283, i32 -26
  %294 = ptrtoint ptr %oxid639 to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %oxid639, align 2
  %conv640 = zext i16 %295 to i32
  %rxid641 = getelementptr i8, ptr %283, i32 -24
  %296 = ptrtoint ptr %rxid641 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %rxid641, align 4
  %conv642 = zext i16 %297 to i32
  %call643 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %289, i32 noundef %293, i32 noundef %conv640, i32 noundef %conv642) #13
  br label %do.end660

do.end647:                                        ; preds = %do.body621
  call void @__sanitizer_cov_trace_pc() #12
  %call654 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %289, i32 noundef %293) #13
  br label %do.end660

do.end660:                                        ; preds = %do.end647, %if.then624, %do.body611.do.end660_crit_edge
  %result661 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %298 = ptrtoint ptr %result661 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 458752, ptr %result661, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end660, %do.end607, %do.end555, %do.end503, %do.end451, %do.end399, %if.end346, %do.end234, %do.end175, %do.end122, %if.then70, %do.end56, %if.else, %if.then15, %if.then13.sw.epilog_crit_edge
  %state662 = getelementptr inbounds %struct.fc_lport, ptr %13, i32 0, i32 13
  %299 = ptrtoint ptr %state662 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %state662, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %300)
  %cmp663.not = icmp eq i32 %300, 14
  br i1 %cmp663.not, label %sw.epilog.do.body674_crit_edge, label %land.lhs.true665

sw.epilog.do.body674_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body674

land.lhs.true665:                                 ; preds = %sw.epilog
  %301 = ptrtoint ptr %status_code to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %status_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %cmp668.not = icmp eq i8 %302, 0
  br i1 %cmp668.not, label %land.lhs.true665.do.body674_crit_edge, label %if.then670

land.lhs.true665.do.body674_crit_edge:            ; preds = %land.lhs.true665
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body674

if.then670:                                       ; preds = %land.lhs.true665
  call void @__sanitizer_cov_trace_pc() #12
  %result671 = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 24
  %303 = ptrtoint ptr %result671 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 917504, ptr %result671, align 4
  br label %do.body674

do.body674:                                       ; preds = %if.then670, %land.lhs.true665.do.body674_crit_edge, %sw.epilog.do.body674_crit_edge
  %SCp = getelementptr inbounds %struct.scsi_cmnd, ptr %46, i32 0, i32 22
  %scsi_queue_lock = getelementptr inbounds %struct.fc_fcp_internal, ptr %15, i32 0, i32 1
  %call679 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %scsi_queue_lock) #10
  %list = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body674.list_del.exit_crit_edge

do.body674.list_del.exit_crit_edge:               ; preds = %do.body674
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body674
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 4, i32 1
  %304 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %prev.i.i, align 4
  %306 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %305, ptr %prev1.i.i.i, align 4
  %309 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile ptr %307, ptr %305, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body674.list_del.exit_crit_edge
  %310 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 4, i32 1
  %311 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %312 = ptrtoint ptr %SCp to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr null, ptr %SCp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_queue_lock, i32 noundef %call679) #10
  tail call void @scsi_done(ptr noundef %46) #10
  %ref_cnt.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %313 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %313, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !416

if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef 3) #10
  br label %fc_fcp_pkt_release.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %314 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %lp, align 64
  %scsi_priv.i834 = getelementptr inbounds %struct.fc_lport, ptr %315, i32 0, i32 5
  %316 = ptrtoint ptr %scsi_priv.i834 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %scsi_priv.i834, align 8
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %317, align 4
  tail call void @mempool_free(ptr noundef %fsp, ptr noundef %319) #10
  br label %fc_fcp_pkt_release.exit

fc_fcp_pkt_release.exit:                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_frame_alloc_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc_fcp_send_abort(ptr noundef %fsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %0 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq_ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %2 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lp, align 64
  %stats = getelementptr inbounds %struct.fc_lport, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %10, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !437
  %11 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %6
  %17 = inttoptr i32 %add to ptr
  %FcpPktAborts = getelementptr inbounds %struct.fc_stats, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %FcpPktAborts to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %FcpPktAborts, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %FcpPktAborts, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !438
  %20 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i20 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i20 to ptr
  %preempt_count.i.i21 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i21, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i21, align 4
  %state = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %state, align 4
  %26 = or i8 %25, 4
  store i8 %26, ptr %state, align 4
  %27 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seq_ptr, align 4
  %call11 = tail call i32 @fc_seq_exch_abort(ptr noundef %28, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call11)
  %cmp = icmp eq i32 %call11, -6
  br i1 %cmp, label %if.then13, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %do.body
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %state, align 4
  %31 = and i8 %30, -13
  %32 = or i8 %31, 8
  store i8 %32, ptr %state, align 4
  %wait_for_comp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 21
  %33 = ptrtoint ptr %wait_for_comp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wait_for_comp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %tm_done.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 25
  tail call void @complete(ptr noundef %tm_done.i) #10
  br label %cleanup

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %fsp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call11, %do.body.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_seq_exch_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_frame_crc_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_copy_buffer_to_sglist(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fcp_recovery(ptr noundef %fsp, i8 noundef zeroext %code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %0 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end26_crit_edge, label %do.body3, !prof !416

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.body3:                                         ; preds = %entry
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %1 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %seq_ptr, align 4
  %tobool4.not = icmp eq ptr %2, null
  %lp15 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %3 = ptrtoint ptr %lp15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp15, align 64
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %host_no17 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %host_no17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %host_no17, align 4
  %rport18 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %9 = ptrtoint ptr %rport18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rport18, align 128
  %port_id19 = getelementptr inbounds %struct.fc_rport, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %port_id19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_id19, align 8
  br i1 %tobool4.not, label %do.end13, label %if.then5

if.then5:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %2, i32 -26
  %13 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %oxid, align 2
  %conv = zext i16 %14 to i32
  %rxid = getelementptr i8, ptr %2, i32 -24
  %15 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rxid, align 4
  %conv9 = zext i16 %16 to i32
  %conv10 = zext i8 %code to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %8, i32 noundef %12, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv10) #13
  br label %do.end26

do.end13:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %conv20 = zext i8 %code to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %8, i32 noundef %12, i32 noundef %conv20) #13
  br label %do.end26

do.end26:                                         ; preds = %do.end13, %if.then5, %entry.do.end26_crit_edge
  %status_code = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %17 = ptrtoint ptr %status_code to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %code, ptr %status_code, align 2
  %cdb_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 7
  %18 = ptrtoint ptr %cdb_status to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %cdb_status, align 1
  %io_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %19 = ptrtoint ptr %io_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %io_status, align 8
  %call27 = tail call fastcc i32 @fc_fcp_send_abort(ptr noundef %fsp)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_lun_reset_send(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -136
  %lp = getelementptr i8, ptr %t, i32 -72
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 64
  %fcp_cmd_send = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 9, i32 9
  %2 = ptrtoint ptr %fcp_cmd_send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcp_cmd_send, align 4
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull @fc_tm_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %recov_retry = getelementptr i8, ptr %t, i32 56
  %4 = ptrtoint ptr %recov_retry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recov_retry, align 64
  %inc = add i32 %5, 1
  store i32 %inc, ptr %recov_retry, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #10
  %state.i = getelementptr i8, ptr %t, i32 -68
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state.i, align 4
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %fc_fcp_lock_pkt.exit

if.end.i:                                         ; preds = %if.end
  %ref_cnt.i.i = getelementptr i8, ptr %t, i32 -92
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !423

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end5_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end5_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end5

fc_fcp_lock_pkt.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end5_crit_edge
  %function = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 2
  %11 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fc_lun_reset_send, ptr %function, align 4
  %rport.i = getelementptr i8, ptr %t, i32 -8
  %12 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rport.i, align 128
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dd_data.i, align 4
  %tobool.not.i17 = icmp eq ptr %15, null
  br i1 %tobool.not.i17, label %if.end5.if.else.i.i_crit_edge, label %land.lhs.true.i

if.end5.if.else.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %e_d_tov1.i = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %e_d_tov1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %e_d_tov1.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 2000) #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i, %if.end5.if.else.i.i_crit_edge
  %e_d_tov.0.i = phi i32 [ 2000, %if.end5.if.else.i.i_crit_edge ], [ %18, %land.lhs.true.i ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %e_d_tov.0.i) #10
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %state.i, align 4
  %21 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i20 = icmp eq i8 %21, 0
  br i1 %tobool.not.i20, label %if.then.i22, label %if.else.i.i.fc_fcp_timer_set.exit_crit_edge

if.else.i.i.fc_fcp_timer_set.exit_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_timer_set.exit

if.then.i22:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %call2.i.i, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.i21 = add i32 %22, %add.i
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i21) #10
  %timer_delay.i = getelementptr i8, ptr %t, i32 52
  %23 = ptrtoint ptr %timer_delay.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %timer_delay.i, align 4
  br label %fc_fcp_timer_set.exit

fc_fcp_timer_set.exit:                            ; preds = %if.then.i22, %if.else.i.i.fc_fcp_timer_set.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #10
  %call.i.i.i.i.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i27, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %fc_fcp_timer_set.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i26 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i26, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i27:                                    ; preds = %fc_fcp_timer_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %25 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lp, align 64
  %scsi_priv.i.i = getelementptr inbounds %struct.fc_lport, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %scsi_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scsi_priv.i.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %30) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i27, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %fc_fcp_lock_pkt.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fcp_cleanup_each_cmd(ptr nocapture noundef readonly %lport, i32 noundef %id, i32 noundef %lun, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_priv = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 5
  %0 = ptrtoint ptr %scsi_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_priv, align 8
  %scsi_queue_lock = getelementptr inbounds %struct.fc_fcp_internal, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %scsi_queue_lock) #10
  %scsi_pkt_queue = getelementptr inbounds %struct.fc_fcp_internal, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %scsi_pkt_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn8286 = load ptr, ptr %scsi_pkt_queue, align 4
  %cmp7.not8387 = icmp eq ptr %.pn8286, %scsi_pkt_queue
  br i1 %cmp7.not8387, label %entry.for.end_crit_edge, label %for.body.lr.ph.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph.lr.ph:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id)
  %cmp9.not = icmp eq i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lun)
  %cmp14.not = icmp eq i32 %lun, -1
  %conv19 = zext i32 %lun to i64
  %conv.i = trunc i32 %error to i8
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %fc_fcp_pkt_release.exit.for.body.lr.ph_crit_edge, %for.body.lr.ph.lr.ph
  %.pn8290 = phi ptr [ %.pn8286, %for.body.lr.ph.lr.ph ], [ %.pn82, %fc_fcp_pkt_release.exit.for.body.lr.ph_crit_edge ]
  %flags.088 = phi i32 [ %call2, %for.body.lr.ph.lr.ph ], [ %call43, %fc_fcp_pkt_release.exit.for.body.lr.ph_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn84 = phi ptr [ %.pn8290, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cmd = getelementptr i8, ptr %.pn84, i32 -4
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd, align 4
  br i1 %cmp9.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %id)
  %cmp12.not = icmp eq i32 %8, %id
  br i1 %cmp12.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  br i1 %cmp14.not, label %if.end.if.end23_crit_edge, label %land.lhs.true16

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true16:                                  ; preds = %if.end
  %device17 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device17, align 4
  %lun18 = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %lun18 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %lun18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv19)
  %cmp20.not = icmp eq i64 %12, %conv19
  br i1 %cmp20.not, label %land.lhs.true16.if.end23_crit_edge, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true16.if.end23_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true16.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %fsp.0.le = getelementptr i8, ptr %.pn84, i32 -56
  %ref_cnt.i = getelementptr i8, ptr %.pn84, i32 -12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end23.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !423

if.end23.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end23
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %fc_fcp_pkt_hold.exit

fc_fcp_pkt_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fc_fcp_pkt_hold.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_queue_lock, i32 noundef %flags.088) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %fsp.0.le) #10
  %state = getelementptr i8, ptr %.pn84, i32 12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state, align 4
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then26, label %fc_fcp_pkt_hold.exit.if.end32_crit_edge

fc_fcp_pkt_hold.exit.if.end32_crit_edge:          ; preds = %fc_fcp_pkt_hold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then26:                                        ; preds = %fc_fcp_pkt_hold.exit
  %or = or i8 %16, 32
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %fsp.0.le) #10
  %seq_ptr.i = getelementptr i8, ptr %.pn84, i32 76
  %19 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %seq_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then26.fc_fcp_cleanup_cmd.exit_crit_edge, label %if.then.i

if.then26.fc_fcp_cleanup_cmd.exit_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_cleanup_cmd.exit

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fc_exch_done(ptr noundef nonnull %20) #10
  %21 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %seq_ptr.i, align 4
  br label %fc_fcp_cleanup_cmd.exit

fc_fcp_cleanup_cmd.exit:                          ; preds = %if.then.i, %if.then26.fc_fcp_cleanup_cmd.exit_crit_edge
  %status_code.i = getelementptr i8, ptr %.pn84, i32 14
  %22 = ptrtoint ptr %status_code.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %status_code.i, align 2
  tail call void @_raw_spin_lock_bh(ptr noundef %fsp.0.le) #10
  tail call fastcc void @fc_io_compl(ptr noundef %fsp.0.le)
  br label %if.end32

if.end32:                                         ; preds = %fc_fcp_cleanup_cmd.exit, %fc_fcp_pkt_hold.exit.if.end32_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %fsp.0.le) #10
  %call.i.i.i.i.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i78, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i77 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i77, label %if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !416

if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef 3) #10
  br label %fc_fcp_pkt_release.exit

if.then.i78:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i = getelementptr i8, ptr %.pn84, i32 8
  %24 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lp.i, align 64
  %scsi_priv.i = getelementptr inbounds %struct.fc_lport, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %scsi_priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scsi_priv.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void @mempool_free(ptr noundef %fsp.0.le, ptr noundef %29) #10
  br label %fc_fcp_pkt_release.exit

fc_fcp_pkt_release.exit:                          ; preds = %if.then.i78, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %scsi_queue_lock) #10
  %30 = ptrtoint ptr %scsi_pkt_queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn82 = load ptr, ptr %scsi_pkt_queue, align 4
  %cmp7.not83 = icmp eq ptr %.pn82, %scsi_pkt_queue
  br i1 %cmp7.not83, label %fc_fcp_pkt_release.exit.for.end_crit_edge, label %fc_fcp_pkt_release.exit.for.body.lr.ph_crit_edge

fc_fcp_pkt_release.exit.for.body.lr.ph_crit_edge: ; preds = %fc_fcp_pkt_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

fc_fcp_pkt_release.exit.for.end_crit_edge:        ; preds = %fc_fcp_pkt_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn84, align 4
  %cmp7.not = icmp eq ptr %.pn, %scsi_pkt_queue
  br i1 %cmp7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %fc_fcp_pkt_release.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.for.end_crit_edge ], [ %flags.088, %for.inc.for.end_crit_edge ], [ %call43, %fc_fcp_pkt_release.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_queue_lock, i32 noundef %flags.0.lcssa) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_tm_done(ptr noundef %seq, ptr noundef %fp, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %arg) #10
  %state.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = and i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %fc_fcp_lock_pkt.exit

if.end.i:                                         ; preds = %if.end
  %ref_cnt.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !423

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end3_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end3_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end3

fc_fcp_lock_pkt.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  br label %out

if.end3:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end3_crit_edge
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %5 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %seq_ptr, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end3.out_unlock_crit_edge, label %lor.lhs.false

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.end3
  %wait_for_comp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 21
  %7 = ptrtoint ptr %wait_for_comp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wait_for_comp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %lor.lhs.false.out_unlock_crit_edge, label %if.end7

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end7:                                          ; preds = %lor.lhs.false
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %10)
  %cmp.i22 = icmp ult i32 %10, 24
  br i1 %cmp.i22, label %do.end.i, label %if.end7.fc_frame_header_get.exit_crit_edge, !prof !423

if.end7.fc_frame_header_get.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end7.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp eq i8 %14, 0
  br i1 %cmp.not, label %fc_frame_header_get.exit.if.end11_crit_edge, label %if.then10

fc_frame_header_get.exit.if.end11_crit_edge:      ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_resp(ptr noundef %arg, ptr noundef %fp)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %fc_frame_header_get.exit.if.end11_crit_edge
  %15 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %seq_ptr, align 4
  tail call void @fc_exch_done(ptr noundef %seq) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.end11, %lor.lhs.false.out_unlock_crit_edge, %if.end3.out_unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  %call.i.i.i.i.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out_unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i26 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i26, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef 3) #10
  br label %out

if.then.i.i:                                      ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %17 = ptrtoint ptr %lp.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lp.i.i, align 64
  %scsi_priv.i.i = getelementptr inbounds %struct.fc_lport, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %scsi_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scsi_priv.i.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %22) #10
  br label %out

out:                                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %fc_fcp_lock_pkt.exit
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_exch_seq_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_fcp_pkt_destroy(ptr nocapture noundef readnone %seq, ptr noundef %fsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_cnt.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !416

if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef 3) #10
  br label %fc_fcp_pkt_release.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %1 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lp.i, align 64
  %scsi_priv.i = getelementptr inbounds %struct.fc_lport, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %scsi_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scsi_priv.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @mempool_free(ptr noundef %fsp, ptr noundef %6) #10
  br label %fc_fcp_pkt_release.exit

fc_fcp_pkt_release.exit:                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_fcp_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -136
  %rport1 = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rport1, align 128
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr) #10
  %state.i = getelementptr i8, ptr %t, i32 -68
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 4
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %fc_fcp_lock_pkt.exit

if.end.i:                                         ; preds = %entry
  %ref_cnt.i.i = getelementptr i8, ptr %t, i32 -92
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !423

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end

fc_fcp_lock_pkt.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #10
  br label %cleanup

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge
  %fc_tm_flags = getelementptr i8, ptr %t, i32 -38
  %9 = ptrtoint ptr %fc_tm_flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fc_tm_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end4:                                          ; preds = %if.end
  %lp = getelementptr i8, ptr %t, i32 -72
  %11 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lp, align 64
  %qfull = getelementptr inbounds %struct.fc_lport, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %qfull to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %qfull, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %15 = load i32, ptr @fc_debug_logging, align 4
  %and44 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool5.not, label %do.body43, label %do.body

do.body:                                          ; preds = %if.end4
  br i1 %tobool45.not, label %do.body.do.end40_crit_edge, label %do.body11, !prof !416

do.body.do.end40_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.body11:                                        ; preds = %do.body
  %seq_ptr = getelementptr i8, ptr %t, i32 -4
  %16 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %seq_ptr, align 4
  %tobool12.not = icmp eq ptr %17, null
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %12, align 8
  %host_no30 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %host_no30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no30, align 4
  %22 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rport1, align 128
  %port_id32 = getelementptr inbounds %struct.fc_rport, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %port_id32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_id32, align 8
  br i1 %tobool12.not, label %do.end26, label %if.then13

if.then13:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %17, i32 -26
  %26 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %oxid, align 2
  %conv = zext i16 %27 to i32
  %rxid = getelementptr i8, ptr %17, i32 -24
  %28 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rxid, align 4
  %conv22 = zext i16 %29 to i32
  %timer_delay = getelementptr i8, ptr %t, i32 52
  %30 = ptrtoint ptr %timer_delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timer_delay, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, i32 noundef %21, i32 noundef %25, i32 noundef %conv, i32 noundef %conv22, i32 noundef %31) #13
  br label %do.end40

do.end26:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %timer_delay33 = getelementptr i8, ptr %t, i32 52
  %32 = ptrtoint ptr %timer_delay33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timer_delay33, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %21, i32 noundef %25, i32 noundef %33) #13
  br label %do.end40

do.end40:                                         ; preds = %do.end26, %if.then13, %do.body.do.end40_crit_edge
  %function = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 2
  %34 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @fc_fcp_timeout, ptr %function, align 4
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %state.i, align 4
  %37 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i161 = icmp eq i8 %37, 0
  br i1 %tobool.not.i161, label %if.then.i162, label %do.end40.unlock_crit_edge

do.end40.unlock_crit_edge:                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then.i162:                                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %timer_delay41 = getelementptr i8, ptr %t, i32 52
  %38 = ptrtoint ptr %timer_delay41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timer_delay41, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %40, %39
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #10
  %41 = ptrtoint ptr %timer_delay41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %timer_delay41, align 4
  br label %unlock

do.body43:                                        ; preds = %if.end4
  br i1 %tobool45.not, label %do.body43.do.end100_crit_edge, label %do.body53, !prof !416

do.body43.do.end100_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end100

do.body53:                                        ; preds = %do.body43
  %seq_ptr54 = getelementptr i8, ptr %t, i32 -4
  %42 = ptrtoint ptr %seq_ptr54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %seq_ptr54, align 4
  %tobool55.not = icmp eq ptr %43, null
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %12, align 8
  %host_no86 = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %host_no86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %host_no86, align 4
  %48 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rport1, align 128
  %port_id88 = getelementptr inbounds %struct.fc_rport, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %port_id88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_id88, align 8
  br i1 %tobool55.not, label %do.end82, label %if.then56

if.then56:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %oxid71 = getelementptr i8, ptr %43, i32 -26
  %52 = ptrtoint ptr %oxid71 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %oxid71, align 2
  %conv72 = zext i16 %53 to i32
  %rxid73 = getelementptr i8, ptr %43, i32 -24
  %54 = ptrtoint ptr %rxid73 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rxid73, align 4
  %conv74 = zext i16 %55 to i32
  %timer_delay75 = getelementptr i8, ptr %t, i32 52
  %56 = ptrtoint ptr %timer_delay75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %timer_delay75, align 4
  %flags = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %3, i32 0, i32 2
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flags, align 4
  %conv76 = zext i16 %59 to i32
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %state.i, align 4
  %conv77 = zext i8 %61 to i32
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, i32 noundef %47, i32 noundef %51, i32 noundef %conv72, i32 noundef %conv74, i32 noundef %57, i32 noundef %conv76, i32 noundef %conv77) #13
  br label %do.end100

do.end82:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %timer_delay89 = getelementptr i8, ptr %t, i32 52
  %62 = ptrtoint ptr %timer_delay89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %timer_delay89, align 4
  %flags90 = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %3, i32 0, i32 2
  %64 = ptrtoint ptr %flags90 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %flags90, align 4
  %conv91 = zext i16 %65 to i32
  %66 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %state.i, align 4
  %conv93 = zext i8 %67 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, i32 noundef %47, i32 noundef %51, i32 noundef %63, i32 noundef %conv91, i32 noundef %conv93) #13
  br label %do.end100

do.end100:                                        ; preds = %do.end82, %if.then56, %do.body43.do.end100_crit_edge
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %state.i, align 4
  %70 = or i8 %69, 64
  store i8 %70, ptr %state.i, align 4
  %flags104 = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %3, i32 0, i32 2
  %71 = ptrtoint ptr %flags104 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %flags104, align 4
  %73 = and i16 %72, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool107.not = icmp eq i16 %73, 0
  br i1 %tobool107.not, label %if.else109, label %if.then108

if.then108:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_rec(ptr noundef %add.ptr)
  br label %if.end117

if.else109:                                       ; preds = %do.end100
  %74 = and i8 %69, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool113.not = icmp eq i8 %74, 0
  br i1 %tobool113.not, label %if.else115, label %if.then114

if.then114:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %add.ptr)
  br label %if.end117

if.else115:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_recovery(ptr noundef %add.ptr, i8 noundef zeroext 11)
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then114, %if.then108
  %75 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %state.i, align 4
  %77 = and i8 %76, -65
  store i8 %77, ptr %state.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end117, %if.then.i162, %do.end40.unlock_crit_edge, %if.end.unlock_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr) #10
  %call.i.i.i.i.i.i.i165 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i166 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i166, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i = getelementptr i8, ptr %t, i32 -72
  %79 = ptrtoint ptr %lp.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lp.i.i, align 64
  %scsi_priv.i.i = getelementptr inbounds %struct.fc_lport, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %scsi_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %scsi_priv.i.i, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %84) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %fc_fcp_lock_pkt.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fcp_rec(ptr noundef %fsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 64
  %rport1 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %2 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rport1, align 128
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %6 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %seq_ptr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rp_state = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %rp_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.not = icmp eq i32 %9, 6
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %status_code = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %10 = ptrtoint ptr %status_code to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %status_code, align 2
  %io_status = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %11 = ptrtoint ptr %io_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %io_status, align 8
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %fsp)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2.i.i = tail call ptr @_fc_frame_alloc(i32 noundef 12) #10
  %tobool.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i, label %fc_fcp_frame_alloc.exit.thread, label %if.end4, !prof !423

fc_fcp_frame_alloc.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stats.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats.i, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %18, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !424
  %19 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %14
  %25 = inttoptr i32 %add.i to ptr
  %FcpFrameAllocFails.i = getelementptr inbounds %struct.fc_stats, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %FcpFrameAllocFails.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %FcpFrameAllocFails.i, align 8
  %inc.i = add i64 %27, 1
  store i64 %inc.i, ptr %FcpFrameAllocFails.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !425
  %28 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i22.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i22.i to ptr
  %preempt_count.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i23.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i23.i, align 4
  %call12.i = tail call fastcc zeroext i1 @fc_fcp_can_queue_ramp_down(ptr noundef %1) #10
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 49
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 26
  %34 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %can_queue.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.50, i32 noundef %35) #13
  br label %retry

if.end4:                                          ; preds = %if.end
  %36 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %seq_ptr, align 4
  %fr_seq = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %fr_seq to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %fr_seq, align 4
  %port_id = getelementptr inbounds %struct.fc_rport, ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port_id, align 8
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %port_id6 = getelementptr inbounds %struct.fc_lport, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %port_id6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_id6, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %46)
  %cmp.i.i = icmp ult i32 %46, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end4.fc_fill_fc_hdr.exit_crit_edge, !prof !423

if.end4.fc_fill_fc_hdr.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fill_fc_hdr.exit

do.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_fill_fc_hdr.exit

fc_fill_fc_hdr.exit:                              ; preds = %do.end.i.i, %if.end4.fc_fill_fc_hdr.exit_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 34, ptr %48, align 4
  %fh_d_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 1
  %shr.i.i.i = lshr i32 %40, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %50 = ptrtoint ptr %fh_d_id.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.i.i, ptr %fh_d_id.i.i, align 1
  %shr1.i.i.i = lshr i32 %40, 8
  %conv3.i.i.i = trunc i32 %shr1.i.i.i to i8
  %arrayidx4.i.i.i = getelementptr %struct.fc_frame_header, ptr %48, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = trunc i32 %40 to i8
  %arrayidx7.i.i.i = getelementptr %struct.fc_frame_header, ptr %48, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv6.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 3
  %shr.i31.i.i = lshr i32 %44, 16
  %conv.i32.i.i = trunc i32 %shr.i31.i.i to i8
  %53 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i32.i.i, ptr %fh_s_id.i.i, align 1
  %shr1.i33.i.i = lshr i32 %44, 8
  %conv3.i34.i.i = trunc i32 %shr1.i33.i.i to i8
  %arrayidx4.i35.i.i = getelementptr %struct.fc_frame_header, ptr %48, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %arrayidx4.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv3.i34.i.i, ptr %arrayidx4.i35.i.i, align 1
  %conv6.i36.i.i = trunc i32 %44 to i8
  %arrayidx7.i37.i.i = getelementptr %struct.fc_frame_header, ptr %48, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %arrayidx7.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv6.i36.i.i, ptr %arrayidx7.i37.i.i, align 1
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 4
  %56 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %fh_type.i.i, align 4
  %fh_f_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 5
  %57 = ptrtoint ptr %fh_f_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 41, ptr %fh_f_ctl.i.i, align 1
  %arrayidx4.i42.i.i = getelementptr %struct.fc_frame_header, ptr %48, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %arrayidx4.i42.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx4.i42.i.i, align 1
  %arrayidx7.i44.i.i = getelementptr %struct.fc_frame_header, ptr %48, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %arrayidx7.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx7.i44.i.i, align 1
  %fh_cs_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 2
  %60 = ptrtoint ptr %fh_cs_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %fh_cs_ctl.i.i, align 4
  %fh_df_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 7
  %61 = ptrtoint ptr %fh_df_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %fh_df_ctl.i.i, align 1
  %fh_parm_offset.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 11
  %62 = ptrtoint ptr %fh_parm_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %fh_parm_offset.i.i, align 4
  %elsct_send = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %elsct_send to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %elsct_send, align 4
  %65 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port_id, align 8
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 23
  %67 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %r_a_tov, align 8
  %mul = shl i32 %68, 1
  %call8 = tail call ptr %64(ptr noundef %1, i32 noundef %66, ptr noundef nonnull %call2.i.i, i32 noundef 19, ptr noundef nonnull @fc_fcp_rec_resp, ptr noundef %fsp, i32 noundef %mul) #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %fc_fill_fc_hdr.exit.retry_crit_edge, label %if.then10

fc_fill_fc_hdr.exit.retry_crit_edge:              ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

if.then10:                                        ; preds = %fc_fill_fc_hdr.exit
  %ref_cnt.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !423

if.then10.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %70 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %.not.i.i.i.i = icmp sgt i32 %70, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %cleanup

retry:                                            ; preds = %fc_fill_fc_hdr.exit.retry_crit_edge, %fc_fcp_frame_alloc.exit.thread
  %recov_retry = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 23
  %71 = ptrtoint ptr %recov_retry to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %recov_retry, align 64
  %inc = add i32 %72, 1
  store i32 %inc, ptr %recov_retry, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp12 = icmp ult i32 %72, 3
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %retry
  %73 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rport1, align 128
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dd_data.i, align 4
  %tobool.not.i40 = icmp eq ptr %76, null
  br i1 %tobool.not.i40, label %if.then13.if.else.i.i_crit_edge, label %land.lhs.true.i

if.then13.if.else.i.i_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %e_d_tov1.i = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %e_d_tov1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %e_d_tov1.i, align 4
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 2000) #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i, %if.then13.if.else.i.i_crit_edge
  %e_d_tov.0.i = phi i32 [ 2000, %if.then13.if.else.i.i_crit_edge ], [ %79, %land.lhs.true.i ]
  %call2.i.i42 = tail call i32 @__msecs_to_jiffies(i32 noundef %e_d_tov.0.i) #10
  %state.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %80 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %state.i, align 4
  %82 = and i8 %81, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i44 = icmp eq i8 %82, 0
  br i1 %tobool.not.i44, label %if.then.i, label %if.else.i.i.cleanup_crit_edge

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i43 = add i32 %call2.i.i42, 100
  %timer.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %add.i45 = add i32 %83, %add.i43
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i45) #10
  %timer_delay.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 22
  %84 = ptrtoint ptr %timer_delay.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i43, ptr %timer_delay.i, align 4
  br label %cleanup

if.else:                                          ; preds = %retry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %85 = load i32, ptr @fc_debug_logging, align 4
  %and.i = and i32 %85, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i47 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i47, label %if.else.fc_fcp_recovery.exit_crit_edge, label %do.body3.i, !prof !416

if.else.fc_fcp_recovery.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_recovery.exit

do.body3.i:                                       ; preds = %if.else
  %86 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seq_ptr, align 4
  %tobool4.not.i = icmp eq ptr %87, null
  %88 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lp, align 64
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 8
  %host_no17.i = getelementptr inbounds %struct.Scsi_Host, ptr %91, i32 0, i32 17
  %92 = ptrtoint ptr %host_no17.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %host_no17.i, align 4
  %94 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rport1, align 128
  %port_id19.i = getelementptr inbounds %struct.fc_rport, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %port_id19.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port_id19.i, align 8
  br i1 %tobool4.not.i, label %do.end13.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid.i = getelementptr i8, ptr %87, i32 -26
  %98 = ptrtoint ptr %oxid.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %oxid.i, align 2
  %conv.i = zext i16 %99 to i32
  %rxid.i = getelementptr i8, ptr %87, i32 -24
  %100 = ptrtoint ptr %rxid.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %rxid.i, align 4
  %conv9.i = zext i16 %101 to i32
  %call.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %93, i32 noundef %97, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef 11) #13
  br label %fc_fcp_recovery.exit

do.end13.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %93, i32 noundef %97, i32 noundef 11) #13
  br label %fc_fcp_recovery.exit

fc_fcp_recovery.exit:                             ; preds = %do.end13.i, %if.then5.i, %if.else.fc_fcp_recovery.exit_crit_edge
  %status_code.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %102 = ptrtoint ptr %status_code.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 11, ptr %status_code.i, align 2
  %cdb_status.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 7
  %103 = ptrtoint ptr %cdb_status.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %cdb_status.i, align 1
  %io_status.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %104 = ptrtoint ptr %io_status.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %io_status.i, align 8
  %call27.i = tail call fastcc i32 @fc_fcp_send_abort(ptr noundef %fsp) #10
  br label %cleanup

cleanup:                                          ; preds = %fc_fcp_recovery.exit, %if.then.i, %if.else.i.i.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_fcp_rec_resp(ptr nocapture noundef readnone %seq, ptr noundef %fp, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %fp to i32
  tail call void @_raw_spin_lock_bh(ptr noundef %arg) #10
  %state.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 6
  %1 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state.i.i, align 4
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %fc_fcp_lock_pkt.exit.i

if.end.i.i:                                       ; preds = %if.then
  %ref_cnt.i.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i.i, ptr %ref_cnt.i.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !423

if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end.i_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end.i

fc_fcp_lock_pkt.exit.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  br label %out.i

if.end.i:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end.i_crit_edge
  %6 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %0, label %do.body34.i [
    i32 -2, label %do.body.i
    i32 -1, label %if.end.i.do.body89.i_crit_edge
  ]

if.end.i.do.body89.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body89.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %7 = load i32, ptr @fc_debug_logging, align 4
  %and.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end33.i_crit_edge, label %do.body6.i, !prof !416

do.body.i.do.end33.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i

do.body6.i:                                       ; preds = %do.body.i
  %seq_ptr.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %8 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seq_ptr.i, align 4
  %tobool7.not.i = icmp eq ptr %9, null
  %lp20.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %10 = ptrtoint ptr %lp20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lp20.i, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %host_no22.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %host_no22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no22.i, align 4
  %rport23.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %16 = ptrtoint ptr %rport23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rport23.i, align 128
  %port_id24.i = getelementptr inbounds %struct.fc_rport, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %port_id24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_id24.i, align 8
  br i1 %tobool7.not.i, label %do.end18.i, label %if.then8.i

if.then8.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid.i = getelementptr i8, ptr %9, i32 -26
  %20 = ptrtoint ptr %oxid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %oxid.i, align 2
  %conv.i = zext i16 %21 to i32
  %rxid.i = getelementptr i8, ptr %9, i32 -24
  %22 = ptrtoint ptr %rxid.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rxid.i, align 4
  %conv12.i = zext i16 %23 to i32
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, i32 noundef %15, i32 noundef %19, i32 noundef %conv.i, i32 noundef %conv12.i, ptr noundef %arg, i32 noundef %19) #13
  br label %do.end33.i

do.end18.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, i32 noundef %15, i32 noundef %19, ptr noundef %arg, i32 noundef %19) #13
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end18.i, %if.then8.i, %do.body.i.do.end33.i_crit_edge
  %seq_ptr.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %24 = ptrtoint ptr %seq_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %seq_ptr.i.i, align 4
  %tobool.not.i195.i = icmp eq ptr %25, null
  br i1 %tobool.not.i195.i, label %do.end33.i.fc_fcp_retry_cmd.exit.i_crit_edge, label %if.then.i196.i

do.end33.i.fc_fcp_retry_cmd.exit.i_crit_edge:     ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_retry_cmd.exit.i

if.then.i196.i:                                   ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fc_exch_done(ptr noundef nonnull %25) #10
  %26 = ptrtoint ptr %seq_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %seq_ptr.i.i, align 4
  br label %fc_fcp_retry_cmd.exit.i

fc_fcp_retry_cmd.exit.i:                          ; preds = %if.then.i196.i, %do.end33.i.fc_fcp_retry_cmd.exit.i_crit_edge
  %27 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %state.i.i, align 4
  %29 = and i8 %28, -5
  store i8 %29, ptr %state.i.i, align 4
  %io_status.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 10
  %30 = ptrtoint ptr %io_status.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %io_status.i.i, align 8
  %status_code5.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 8
  %31 = ptrtoint ptr %status_code5.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %status_code5.i.i, align 2
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %arg) #10
  br label %sw.epilog.i

do.body34.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %32 = load i32, ptr @fc_debug_logging, align 4
  %and35.i = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.do.end87.i_crit_edge, label %do.body44.i, !prof !416

do.body34.i.do.end87.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87.i

do.body44.i:                                      ; preds = %do.body34.i
  %seq_ptr45.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %33 = ptrtoint ptr %seq_ptr45.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %seq_ptr45.i, align 4
  %tobool46.not.i = icmp eq ptr %34, null
  %lp74.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %35 = ptrtoint ptr %lp74.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lp74.i, align 64
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %host_no76.i = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %host_no76.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %host_no76.i, align 4
  %rport77.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %41 = ptrtoint ptr %rport77.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rport77.i, align 128
  %port_id78.i = getelementptr inbounds %struct.fc_rport, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %port_id78.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_id78.i, align 8
  br i1 %tobool46.not.i, label %do.end72.i, label %if.then47.i

if.then47.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid62.i = getelementptr i8, ptr %34, i32 -26
  %45 = ptrtoint ptr %oxid62.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %oxid62.i, align 2
  %conv63.i = zext i16 %46 to i32
  %rxid64.i = getelementptr i8, ptr %34, i32 -24
  %47 = ptrtoint ptr %rxid64.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rxid64.i, align 4
  %conv65.i = zext i16 %48 to i32
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, i32 noundef %40, i32 noundef %44, i32 noundef %conv63.i, i32 noundef %conv65.i, ptr noundef %arg, i32 noundef %44, i32 noundef %0) #13
  br label %do.end87.i

do.end72.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, i32 noundef %40, i32 noundef %44, ptr noundef %arg, i32 noundef %44, i32 noundef %0) #13
  br label %do.end87.i

do.end87.i:                                       ; preds = %do.end72.i, %if.then47.i, %do.body34.i.do.end87.i_crit_edge
  %status_code.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 8
  %49 = ptrtoint ptr %status_code.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %status_code.i, align 2
  br label %do.body89.i

do.body89.i:                                      ; preds = %do.end87.i, %if.end.i.do.body89.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %50 = load i32, ptr @fc_debug_logging, align 4
  %and90.i = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %do.body89.i.do.end143.i_crit_edge, label %do.body99.i, !prof !416

do.body89.i.do.end143.i_crit_edge:                ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end143.i

do.body99.i:                                      ; preds = %do.body89.i
  %seq_ptr100.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %51 = ptrtoint ptr %seq_ptr100.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %seq_ptr100.i, align 4
  %tobool101.not.i = icmp eq ptr %52, null
  %lp129.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %53 = ptrtoint ptr %lp129.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lp129.i, align 64
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %host_no131.i = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %host_no131.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %host_no131.i, align 4
  %rport132.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %59 = ptrtoint ptr %rport132.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rport132.i, align 128
  %port_id133.i = getelementptr inbounds %struct.fc_rport, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %port_id133.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port_id133.i, align 8
  br i1 %tobool101.not.i, label %do.end127.i, label %if.then102.i

if.then102.i:                                     ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid117.i = getelementptr i8, ptr %52, i32 -26
  %63 = ptrtoint ptr %oxid117.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %oxid117.i, align 2
  %conv118.i = zext i16 %64 to i32
  %rxid119.i = getelementptr i8, ptr %52, i32 -24
  %65 = ptrtoint ptr %rxid119.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rxid119.i, align 4
  %conv120.i = zext i16 %66 to i32
  %recov_retry.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 23
  %67 = ptrtoint ptr %recov_retry.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %recov_retry.i, align 64
  %call123.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, i32 noundef %58, i32 noundef %62, i32 noundef %conv118.i, i32 noundef %conv120.i, ptr noundef %arg, i32 noundef %62, i32 noundef %68, i32 noundef 3) #13
  br label %do.end143.i

do.end127.i:                                      ; preds = %do.body99.i
  call void @__sanitizer_cov_trace_pc() #12
  %recov_retry136.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 23
  %69 = ptrtoint ptr %recov_retry136.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %recov_retry136.i, align 64
  %call137.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, i32 noundef %58, i32 noundef %62, ptr noundef %arg, i32 noundef %62, i32 noundef %70, i32 noundef 3) #13
  br label %do.end143.i

do.end143.i:                                      ; preds = %do.end127.i, %if.then102.i, %do.body89.i.do.end143.i_crit_edge
  %recov_retry144.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 23
  %71 = ptrtoint ptr %recov_retry144.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %recov_retry144.i, align 64
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %recov_retry144.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp.i323 = icmp ult i32 %72, 3
  br i1 %cmp.i323, label %if.then146.i, label %if.else147.i

if.then146.i:                                     ; preds = %do.end143.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_rec(ptr noundef %arg) #10
  br label %sw.epilog.i

if.else147.i:                                     ; preds = %do.end143.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %73 = load i32, ptr @fc_debug_logging, align 4
  %and.i.i = and i32 %73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i199.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i199.i, label %if.else147.i.fc_fcp_recovery.exit.i_crit_edge, label %do.body3.i.i, !prof !416

if.else147.i.fc_fcp_recovery.exit.i_crit_edge:    ; preds = %if.else147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_recovery.exit.i

do.body3.i.i:                                     ; preds = %if.else147.i
  %seq_ptr.i200.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %74 = ptrtoint ptr %seq_ptr.i200.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %seq_ptr.i200.i, align 4
  %tobool4.not.i.i = icmp eq ptr %75, null
  %lp15.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %76 = ptrtoint ptr %lp15.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lp15.i.i, align 64
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %host_no17.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %79, i32 0, i32 17
  %80 = ptrtoint ptr %host_no17.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %host_no17.i.i, align 4
  %rport18.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %82 = ptrtoint ptr %rport18.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rport18.i.i, align 128
  %port_id19.i.i = getelementptr inbounds %struct.fc_rport, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %port_id19.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port_id19.i.i, align 8
  br i1 %tobool4.not.i.i, label %do.end13.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid.i.i = getelementptr i8, ptr %75, i32 -26
  %86 = ptrtoint ptr %oxid.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %oxid.i.i, align 2
  %conv.i.i = zext i16 %87 to i32
  %rxid.i.i = getelementptr i8, ptr %75, i32 -24
  %88 = ptrtoint ptr %rxid.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %rxid.i.i, align 4
  %conv9.i.i = zext i16 %89 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %81, i32 noundef %85, i32 noundef %conv.i.i, i32 noundef %conv9.i.i, i32 noundef 8) #13
  br label %fc_fcp_recovery.exit.i

do.end13.i.i:                                     ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %81, i32 noundef %85, i32 noundef 8) #13
  br label %fc_fcp_recovery.exit.i

fc_fcp_recovery.exit.i:                           ; preds = %do.end13.i.i, %if.then5.i.i, %if.else147.i.fc_fcp_recovery.exit.i_crit_edge
  %status_code.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 8
  %90 = ptrtoint ptr %status_code.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 8, ptr %status_code.i.i, align 2
  %cdb_status.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 7
  %91 = ptrtoint ptr %cdb_status.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %cdb_status.i.i, align 1
  %io_status.i201.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 10
  %92 = ptrtoint ptr %io_status.i201.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %io_status.i201.i, align 8
  %call27.i.i = tail call fastcc i32 @fc_fcp_send_abort(ptr noundef %arg) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %fc_fcp_recovery.exit.i, %if.then146.i, %fc_fcp_retry_cmd.exit.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  %call.i.i.i.i.i.i.i203.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i.i, i32 1, i32 3, i32 1) #10
  %93 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i.i, ptr %ref_cnt.i.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i204.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i204.i, label %if.end5.i.i.i.i.i.i.out.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.i.out.i_crit_edge:              ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i.i, i32 noundef 3) #10
  br label %out.i

if.then.i.i.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %94 = ptrtoint ptr %lp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lp.i.i.i, align 64
  %scsi_priv.i.i.i = getelementptr inbounds %struct.fc_lport, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %scsi_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %scsi_priv.i.i.i, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %99) #10
  br label %out.i

out.i:                                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.out.i_crit_edge, %fc_fcp_lock_pkt.exit.i
  %ref_cnt.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %100 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i205.i = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i205.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i205.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i206.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i205.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i205.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i206.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %101 = ptrtoint ptr %lp.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lp.i.i, align 64
  %scsi_priv.i.i = getelementptr inbounds %struct.fc_lport, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %scsi_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %scsi_priv.i.i, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %106) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %arg) #10
  %state.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 6
  %107 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %state.i, align 4
  %109 = and i8 %108, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i, label %if.end.i326, label %fc_fcp_lock_pkt.exit

if.end.i326:                                      ; preds = %if.end
  %ref_cnt.i.i324 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i.i325 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i324, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i324, i32 1, i32 3, i32 1) #10
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i324, ptr %ref_cnt.i.i324, i32 1, ptr elementtype(i32) %ref_cnt.i.i324) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i326.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !423

if.end.i326.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i326
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %111 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %.not.i.i.i.i.i327 = icmp sgt i32 %111, -1
  br i1 %.not.i.i.i.i.i327, label %if.else.i.i.i.i.i.if.end3_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end3_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i326.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i326.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i324, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end3

fc_fcp_lock_pkt.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  br label %out

if.end3:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end3_crit_edge
  %recov_retry = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 23
  %112 = ptrtoint ptr %recov_retry to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %recov_retry, align 64
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %113 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %114)
  %cmp.not.i.i = icmp ult i32 %114, 25
  br i1 %cmp.not.i.i, label %if.end3.unlock_out_crit_edge, label %fc_frame_payload_get.exit.i

if.end3.unlock_out_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_out

fc_frame_payload_get.exit.i:                      ; preds = %if.end3
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %115 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %116, i32 1
  %tobool.not.i328 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i328, label %fc_frame_payload_get.exit.i.unlock_out_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.unlock_out_crit_edge: ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_out

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %117 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %add.ptr.i.i, align 1
  %119 = zext i8 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.290)
  switch i8 %118, label %fc_frame_payload_op.exit.unlock_out_crit_edge [
    i8 1, label %if.then6
    i8 2, label %if.then186
  ]

fc_frame_payload_op.exit.unlock_out_crit_edge:    ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_out

if.then6:                                         ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %114)
  %cmp.not.i = icmp ult i32 %114, 32
  br i1 %cmp.not.i, label %if.then6.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

if.then6.fc_frame_payload_get.exit_crit_edge:     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %121, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.then6.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.then6.fc_frame_payload_get.exit_crit_edge ]
  %er_reason = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %pp.0.i, i32 0, i32 2
  %122 = ptrtoint ptr %er_reason to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %er_reason, align 1
  %conv8 = zext i8 %123 to i32
  %124 = zext i8 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.291)
  switch i8 %123, label %do.body [
    i8 11, label %fc_frame_payload_get.exit.do.body49_crit_edge
    i8 3, label %fc_frame_payload_get.exit.do.body104_crit_edge
    i8 9, label %fc_frame_payload_get.exit.do.body104_crit_edge370
  ]

fc_frame_payload_get.exit.do.body104_crit_edge370: ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body104

fc_frame_payload_get.exit.do.body104_crit_edge:   ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body104

fc_frame_payload_get.exit.do.body49_crit_edge:    ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.body:                                          ; preds = %fc_frame_payload_get.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %125 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %125, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.do.body49_crit_edge, label %do.body13, !prof !416

do.body.do.body49_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.body13:                                        ; preds = %do.body
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %126 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seq_ptr, align 4
  %tobool14.not = icmp eq ptr %127, null
  %lp31 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %128 = ptrtoint ptr %lp31 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lp31, align 64
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 8
  %host_no33 = getelementptr inbounds %struct.Scsi_Host, ptr %131, i32 0, i32 17
  %132 = ptrtoint ptr %host_no33 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %host_no33, align 4
  %rport34 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %134 = ptrtoint ptr %rport34 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rport34, align 128
  %port_id35 = getelementptr inbounds %struct.fc_rport, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %port_id35 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port_id35, align 8
  br i1 %tobool14.not, label %do.end29, label %if.then15

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %oxid = getelementptr i8, ptr %127, i32 -26
  %138 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %oxid, align 2
  %conv19 = zext i16 %139 to i32
  %rxid = getelementptr i8, ptr %127, i32 -24
  %140 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %rxid, align 4
  %conv20 = zext i16 %141 to i32
  %er_explan = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %pp.0.i, i32 0, i32 3
  %142 = ptrtoint ptr %er_explan to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %er_explan, align 1
  %conv25 = zext i8 %143 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, i32 noundef %133, i32 noundef %137, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %137, i32 noundef %conv8, i32 noundef %conv25) #13
  br label %do.body49

do.end29:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %er_explan40 = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %pp.0.i, i32 0, i32 3
  %144 = ptrtoint ptr %er_explan40 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %er_explan40, align 1
  %conv41 = zext i8 %145 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, i32 noundef %133, i32 noundef %137, i32 noundef %137, i32 noundef %conv8, i32 noundef %conv41) #13
  br label %do.body49

do.body49:                                        ; preds = %do.end29, %if.then15, %do.body.do.body49_crit_edge, %fc_frame_payload_get.exit.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %146 = load i32, ptr @fc_debug_logging, align 4
  %and50 = and i32 %146, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end98_crit_edge, label %do.body59, !prof !416

do.body49.do.end98_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

do.body59:                                        ; preds = %do.body49
  %seq_ptr60 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %147 = ptrtoint ptr %seq_ptr60 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %seq_ptr60, align 4
  %tobool61.not = icmp eq ptr %148, null
  %lp87 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %149 = ptrtoint ptr %lp87 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lp87, align 64
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 8
  %host_no89 = getelementptr inbounds %struct.Scsi_Host, ptr %152, i32 0, i32 17
  %153 = ptrtoint ptr %host_no89 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %host_no89, align 4
  %rport90 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %155 = ptrtoint ptr %rport90 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rport90, align 128
  %port_id91 = getelementptr inbounds %struct.fc_rport, ptr %156, i32 0, i32 6
  %157 = ptrtoint ptr %port_id91 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %port_id91, align 8
  br i1 %tobool61.not, label %do.end85, label %if.then62

if.then62:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %oxid77 = getelementptr i8, ptr %148, i32 -26
  %159 = ptrtoint ptr %oxid77 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %oxid77, align 2
  %conv78 = zext i16 %160 to i32
  %rxid79 = getelementptr i8, ptr %148, i32 -24
  %161 = ptrtoint ptr %rxid79 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %rxid79, align 4
  %conv80 = zext i16 %162 to i32
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, i32 noundef %154, i32 noundef %158, i32 noundef %conv78, i32 noundef %conv80) #13
  br label %do.end98

do.end85:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, i32 noundef %154, i32 noundef %158) #13
  br label %do.end98

do.end98:                                         ; preds = %do.end85, %if.then62, %do.body49.do.end98_crit_edge
  %rport99 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %163 = ptrtoint ptr %rport99 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rport99, align 128
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %164, i32 0, i32 11
  %165 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dd_data, align 4
  %flags = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %flags, align 4
  %169 = and i16 %168, -2
  store i16 %169, ptr %flags, align 4
  br label %unlock_out

do.body104:                                       ; preds = %fc_frame_payload_get.exit.do.body104_crit_edge, %fc_frame_payload_get.exit.do.body104_crit_edge370
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %170 = load i32, ptr @fc_debug_logging, align 4
  %and105 = and i32 %170, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body104.do.end165_crit_edge, label %do.body114, !prof !416

do.body104.do.end165_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end165

do.body114:                                       ; preds = %do.body104
  %seq_ptr115 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %171 = ptrtoint ptr %seq_ptr115 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %seq_ptr115, align 4
  %tobool116.not = icmp eq ptr %172, null
  %lp148 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %173 = ptrtoint ptr %lp148 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %lp148, align 64
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 8
  %host_no150 = getelementptr inbounds %struct.Scsi_Host, ptr %176, i32 0, i32 17
  %177 = ptrtoint ptr %host_no150 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %host_no150, align 4
  %rport151 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %179 = ptrtoint ptr %rport151 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rport151, align 128
  %port_id152 = getelementptr inbounds %struct.fc_rport, ptr %180, i32 0, i32 6
  %181 = ptrtoint ptr %port_id152 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %port_id152, align 8
  br i1 %tobool116.not, label %do.end146, label %if.then117

if.then117:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  %oxid132 = getelementptr i8, ptr %172, i32 -26
  %183 = ptrtoint ptr %oxid132 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %oxid132, align 2
  %conv133 = zext i16 %184 to i32
  %rxid134 = getelementptr i8, ptr %172, i32 -24
  %185 = ptrtoint ptr %rxid134 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %rxid134, align 4
  %conv135 = zext i16 %186 to i32
  %er_explan140 = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %pp.0.i, i32 0, i32 3
  %187 = ptrtoint ptr %er_explan140 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %er_explan140, align 1
  %conv141 = zext i8 %188 to i32
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, i32 noundef %178, i32 noundef %182, i32 noundef %conv133, i32 noundef %conv135, i32 noundef %182, i32 noundef %conv8, i32 noundef %conv141) #13
  br label %do.end165

do.end146:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #12
  %er_explan157 = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %pp.0.i, i32 0, i32 3
  %189 = ptrtoint ptr %er_explan157 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %er_explan157, align 1
  %conv158 = zext i8 %190 to i32
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, i32 noundef %178, i32 noundef %182, i32 noundef %182, i32 noundef %conv8, i32 noundef %conv158) #13
  br label %do.end165

do.end165:                                        ; preds = %do.end146, %if.then117, %do.body104.do.end165_crit_edge
  %er_explan166 = getelementptr inbounds %struct.fc_els_ls_rjt, ptr %pp.0.i, i32 0, i32 3
  %191 = ptrtoint ptr %er_explan166 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %er_explan166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %192)
  %cmp168 = icmp eq i8 %192, 23
  br i1 %cmp168, label %if.then170, label %if.end181

if.then170:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #12
  %seq_ptr172 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %193 = ptrtoint ptr %seq_ptr172 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %seq_ptr172, align 4
  %state = getelementptr i8, ptr %194, i32 -32
  %195 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %state, align 4
  %197 = or i8 %196, 4
  store i8 %197, ptr %state, align 4
  %198 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %state.i, align 4
  %200 = or i8 %199, 8
  store i8 %200, ptr %state.i, align 4
  tail call fastcc void @fc_fcp_retry_cmd(ptr noundef %arg, i32 noundef 12)
  br label %unlock_out

if.end181:                                        ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_recovery(ptr noundef %arg, i8 noundef zeroext 12)
  br label %unlock_out

if.then186:                                       ; preds = %fc_frame_payload_op.exit
  %201 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %state.i, align 4
  %203 = and i8 %202, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool190.not = icmp eq i8 %203, 0
  br i1 %tobool190.not, label %if.end192, label %if.then186.unlock_out_crit_edge

if.then186.unlock_out_crit_edge:                  ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_out

if.end192:                                        ; preds = %if.then186
  %cmd = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 3
  %204 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cmd, align 4
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %205, i32 0, i32 15
  %206 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %114)
  %cmp.not.i334 = icmp ult i32 %114, 48
  br i1 %cmp.not.i334, label %if.end192.fc_frame_payload_get.exit343_crit_edge, label %fc_frame_header_get.exit.i340

if.end192.fc_frame_payload_get.exit343_crit_edge: ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_payload_get.exit343

fc_frame_header_get.exit.i340:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i339 = getelementptr %struct.fc_frame_header, ptr %209, i32 1
  br label %fc_frame_payload_get.exit343

fc_frame_payload_get.exit343:                     ; preds = %fc_frame_header_get.exit.i340, %if.end192.fc_frame_payload_get.exit343_crit_edge
  %pp.0.i341 = phi ptr [ %add.ptr.i339, %fc_frame_header_get.exit.i340 ], [ null, %if.end192.fc_frame_payload_get.exit343_crit_edge ]
  %reca_fc4value = getelementptr inbounds %struct.fc_els_rec_acc, ptr %pp.0.i341, i32 0, i32 8
  %210 = ptrtoint ptr %reca_fc4value to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %reca_fc4value, align 4
  %reca_e_stat = getelementptr inbounds %struct.fc_els_rec_acc, ptr %pp.0.i341, i32 0, i32 9
  %212 = ptrtoint ptr %reca_e_stat to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %reca_e_stat, align 4
  %and194 = and i32 %213, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.else208, label %if.then196

if.then196:                                       ; preds = %fc_frame_payload_get.exit343
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %207)
  %cmp197 = icmp eq i32 %207, 1
  br i1 %cmp197, label %if.then196.if.end207_crit_edge, label %if.else200

if.then196.if.end207_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end207

if.else200:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #12
  %xfer_contig_end = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 15
  %214 = ptrtoint ptr %xfer_contig_end to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %xfer_contig_end, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %211)
  %cmp201 = icmp eq i32 %215, %211
  %. = select i1 %cmp201, i32 7, i32 1
  br label %if.end207

if.end207:                                        ; preds = %if.else200, %if.then196.if.end207_crit_edge
  %r_ctl.0 = phi i32 [ 7, %if.then196.if.end207_crit_edge ], [ %., %if.else200 ]
  %offset.0 = phi i32 [ %211, %if.then196.if.end207_crit_edge ], [ %215, %if.else200 ]
  tail call fastcc void @fc_fcp_srr(ptr noundef %arg, i32 noundef %r_ctl.0, i32 noundef %offset.0)
  br label %unlock_out

if.else208:                                       ; preds = %fc_frame_payload_get.exit343
  %and209 = and i32 %213, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.else213, label %if.then211

if.then211:                                       ; preds = %if.else208
  %rport.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %216 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rport.i, align 128
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %217, i32 0, i32 11
  %218 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dd_data.i, align 4
  %tobool.not.i344 = icmp eq ptr %219, null
  br i1 %tobool.not.i344, label %if.then211.if.else.i.i_crit_edge, label %land.lhs.true.i

if.then211.if.else.i.i_crit_edge:                 ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i:                                  ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  %e_d_tov1.i = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %e_d_tov1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %e_d_tov1.i, align 4
  %222 = tail call i32 @llvm.umax.i32(i32 %221, i32 2000) #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i, %if.then211.if.else.i.i_crit_edge
  %e_d_tov.0.i = phi i32 [ 2000, %if.then211.if.else.i.i_crit_edge ], [ %222, %land.lhs.true.i ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %e_d_tov.0.i) #10
  %223 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %state.i, align 4
  %225 = and i8 %224, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i349 = icmp eq i8 %225, 0
  br i1 %tobool.not.i349, label %if.then.i351, label %if.else.i.i.unlock_out_crit_edge

if.else.i.i.unlock_out_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_out

if.then.i351:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %call2.i.i, 100
  %timer.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %226 = load volatile i32, ptr @jiffies, align 128
  %add.i350 = add i32 %226, %add.i
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i350) #10
  %timer_delay.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 22
  %227 = ptrtoint ptr %timer_delay.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %add.i, ptr %timer_delay.i, align 4
  br label %unlock_out

if.else213:                                       ; preds = %if.else208
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %207)
  %cmp214 = icmp eq i32 %207, 1
  br i1 %cmp214, label %if.then216, label %if.else221

if.then216:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #12
  %data_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 2
  %228 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %data_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %229)
  %cmp217 = icmp ult i32 %211, %229
  %spec.store.select = select i1 %cmp217, i32 5, i32 7
  br label %if.end234

if.else221:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #12
  %xfer_contig_end222 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 15
  %230 = ptrtoint ptr %xfer_contig_end222 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %xfer_contig_end222, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %231)
  %cmp223 = icmp eq i32 %211, %231
  %232 = tail call i32 @llvm.umin.i32(i32 %231, i32 %211)
  %spec.select = select i1 %cmp223, i32 7, i32 1
  %spec.select369 = select i1 %cmp223, i32 %211, i32 %232
  br label %if.end234

if.end234:                                        ; preds = %if.else221, %if.then216
  %r_ctl.1 = phi i32 [ %spec.store.select, %if.then216 ], [ %spec.select, %if.else221 ]
  %offset.1 = phi i32 [ %211, %if.then216 ], [ %spec.select369, %if.else221 ]
  tail call fastcc void @fc_fcp_srr(ptr noundef %arg, i32 noundef %r_ctl.1, i32 noundef %offset.1)
  br label %unlock_out

unlock_out:                                       ; preds = %if.end234, %if.then.i351, %if.else.i.i.unlock_out_crit_edge, %if.end207, %if.then186.unlock_out_crit_edge, %if.end181, %if.then170, %do.end98, %fc_frame_payload_op.exit.unlock_out_crit_edge, %fc_frame_payload_get.exit.i.unlock_out_crit_edge, %if.end3.unlock_out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  %call.i.i.i.i.i.i.i354 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i324, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i324, i32 1, i32 3, i32 1) #10
  %233 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i324, ptr %ref_cnt.i.i324, i32 1, ptr elementtype(i32) %ref_cnt.i.i324) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i355 = extractvalue { i32, i32, i32 } %233, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i355)
  %cmp.i.i.i.i.i356 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i355, 1
  br i1 %cmp.i.i.i.i.i356, label %if.then.i.i362, label %if.end5.i.i.i.i.i358

if.end5.i.i.i.i.i358:                             ; preds = %unlock_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i355)
  %.not.i.i.i.i.i357 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i355, 0
  br i1 %.not.i.i.i.i.i357, label %if.end5.i.i.i.i.i358.out_crit_edge, label %if.then10.i.i.i.i.i359, !prof !416

if.end5.i.i.i.i.i358.out_crit_edge:               ; preds = %if.end5.i.i.i.i.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i.i359:                           ; preds = %if.end5.i.i.i.i.i358
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i324, i32 noundef 3) #10
  br label %out

if.then.i.i362:                                   ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i360 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %234 = ptrtoint ptr %lp.i.i360 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %lp.i.i360, align 64
  %scsi_priv.i.i361 = getelementptr inbounds %struct.fc_lport, ptr %235, i32 0, i32 5
  %236 = ptrtoint ptr %scsi_priv.i.i361 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %scsi_priv.i.i361, align 8
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %239) #10
  br label %out

out:                                              ; preds = %if.then.i.i362, %if.then10.i.i.i.i.i359, %if.end5.i.i.i.i.i358.out_crit_edge, %fc_fcp_lock_pkt.exit
  %ref_cnt.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %240 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i363 = extractvalue { i32, i32, i32 } %240, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i363)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i363, 1
  br i1 %cmp.i.i.i.i, label %if.then.i364, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i363)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i363, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !416

if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_pkt_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef 3) #10
  br label %fc_fcp_pkt_release.exit

if.then.i364:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %241 = ptrtoint ptr %lp.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %lp.i, align 64
  %scsi_priv.i = getelementptr inbounds %struct.fc_lport, ptr %242, i32 0, i32 5
  %243 = ptrtoint ptr %scsi_priv.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %scsi_priv.i, align 8
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %246) #10
  br label %fc_fcp_pkt_release.exit

fc_fcp_pkt_release.exit:                          ; preds = %if.then.i364, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fc_fcp_pkt_release.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %fc_fcp_pkt_release.exit, %if.then.i206.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_fcp_srr(ptr noundef %fsp, i32 noundef %r_ctl, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 5
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 64
  %seq_ptr = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 19
  %2 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seq_ptr, align 4
  %rport1 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 18
  %4 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rport1, align 128
  %dd_data = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data, align 4
  %flags = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 4
  %10 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.retry_crit_edge, label %lor.lhs.false

entry.retry_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

lor.lhs.false:                                    ; preds = %entry
  %rp_state = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %rp_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp.not = icmp eq i32 %12, 6
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.retry_crit_edge

lor.lhs.false.retry_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

if.end:                                           ; preds = %lor.lhs.false
  %call2.i.i = tail call ptr @_fc_frame_alloc(i32 noundef 16) #10
  %tobool.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i, label %fc_fcp_frame_alloc.exit.thread, label %if.end5, !prof !423

fc_fcp_frame_alloc.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %stats.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stats.i, align 8
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %19, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !424
  %20 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %25, %15
  %26 = inttoptr i32 %add.i to ptr
  %FcpFrameAllocFails.i = getelementptr inbounds %struct.fc_stats, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %FcpFrameAllocFails.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %FcpFrameAllocFails.i, align 8
  %inc.i = add i64 %28, 1
  store i64 %inc.i, ptr %FcpFrameAllocFails.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !425
  %29 = tail call i32 @llvm.read_register.i32(metadata !404) #10
  %and.i.i.i22.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i22.i to ptr
  %preempt_count.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i23.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i23.i, align 4
  %call12.i = tail call fastcc zeroext i1 @fc_fcp_can_queue_ramp_down(ptr noundef %1) #10
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 49
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %can_queue.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.50, i32 noundef %36) #13
  br label %retry

if.end5:                                          ; preds = %if.end
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %38)
  %cmp.not.i = icmp ult i32 %38, 40
  br i1 %cmp.not.i, label %if.end5.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

if.end5.fc_frame_payload_get.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %40, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.end5.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.end5.fc_frame_payload_get.exit_crit_edge ]
  %41 = call ptr @memset(ptr %pp.0.i, i32 0, i32 16)
  %42 = ptrtoint ptr %pp.0.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 20, ptr %pp.0.i, align 4
  %oxid = getelementptr i8, ptr %3, i32 -26
  %43 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %oxid, align 2
  %srr_ox_id = getelementptr inbounds %struct.fcp_srr, ptr %pp.0.i, i32 0, i32 2
  %45 = ptrtoint ptr %srr_ox_id to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %srr_ox_id, align 4
  %rxid = getelementptr i8, ptr %3, i32 -24
  %46 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rxid, align 4
  %srr_rx_id = getelementptr inbounds %struct.fcp_srr, ptr %pp.0.i, i32 0, i32 3
  %48 = ptrtoint ptr %srr_rx_id to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %srr_rx_id, align 2
  %conv7 = trunc i32 %r_ctl to i8
  %srr_r_ctl = getelementptr inbounds %struct.fcp_srr, ptr %pp.0.i, i32 0, i32 5
  %49 = ptrtoint ptr %srr_r_ctl to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv7, ptr %srr_r_ctl, align 4
  %srr_rel_off = getelementptr inbounds %struct.fcp_srr, ptr %pp.0.i, i32 0, i32 4
  %50 = ptrtoint ptr %srr_rel_off to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %offset, ptr %srr_rel_off, align 4
  %port_id = getelementptr inbounds %struct.fc_rport, ptr %5, i32 0, i32 6
  %51 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port_id, align 8
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %7, align 4
  %port_id8 = getelementptr inbounds %struct.fc_lport, ptr %54, i32 0, i32 18
  %55 = ptrtoint ptr %port_id8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port_id8, align 8
  %57 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %58)
  %cmp.i.i49 = icmp ult i32 %58, 24
  br i1 %cmp.i.i49, label %do.end.i.i50, label %fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge, !prof !423

fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge: ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fill_fc_hdr.exit

do.end.i.i50:                                     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_fill_fc_hdr.exit

fc_fill_fc_hdr.exit:                              ; preds = %do.end.i.i50, %fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge
  %data.i.i.i51 = getelementptr inbounds %struct.sk_buff, ptr %call2.i.i, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i51, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 50, ptr %60, align 4
  %fh_d_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %60, i32 0, i32 1
  %shr.i.i.i = lshr i32 %52, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %62 = ptrtoint ptr %fh_d_id.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv.i.i.i, ptr %fh_d_id.i.i, align 1
  %shr1.i.i.i = lshr i32 %52, 8
  %conv3.i.i.i = trunc i32 %shr1.i.i.i to i8
  %arrayidx4.i.i.i = getelementptr %struct.fc_frame_header, ptr %60, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = trunc i32 %52 to i8
  %arrayidx7.i.i.i = getelementptr %struct.fc_frame_header, ptr %60, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv6.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %60, i32 0, i32 3
  %shr.i31.i.i = lshr i32 %56, 16
  %conv.i32.i.i = trunc i32 %shr.i31.i.i to i8
  %65 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv.i32.i.i, ptr %fh_s_id.i.i, align 1
  %shr1.i33.i.i = lshr i32 %56, 8
  %conv3.i34.i.i = trunc i32 %shr1.i33.i.i to i8
  %arrayidx4.i35.i.i = getelementptr %struct.fc_frame_header, ptr %60, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %arrayidx4.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv3.i34.i.i, ptr %arrayidx4.i35.i.i, align 1
  %conv6.i36.i.i = trunc i32 %56 to i8
  %arrayidx7.i37.i.i = getelementptr %struct.fc_frame_header, ptr %60, i32 0, i32 3, i32 2
  %67 = ptrtoint ptr %arrayidx7.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv6.i36.i.i, ptr %arrayidx7.i37.i.i, align 1
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %60, i32 0, i32 4
  %68 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 8, ptr %fh_type.i.i, align 4
  %fh_f_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %60, i32 0, i32 5
  %69 = ptrtoint ptr %fh_f_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 41, ptr %fh_f_ctl.i.i, align 1
  %arrayidx4.i42.i.i = getelementptr %struct.fc_frame_header, ptr %60, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %arrayidx4.i42.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx4.i42.i.i, align 1
  %arrayidx7.i44.i.i = getelementptr %struct.fc_frame_header, ptr %60, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %arrayidx7.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx7.i44.i.i, align 1
  %fh_cs_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %60, i32 0, i32 2
  %72 = ptrtoint ptr %fh_cs_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %fh_cs_ctl.i.i, align 4
  %fh_df_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %60, i32 0, i32 7
  %73 = ptrtoint ptr %fh_df_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %fh_df_ctl.i.i, align 1
  %fh_parm_offset.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %60, i32 0, i32 11
  %74 = ptrtoint ptr %fh_parm_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %fh_parm_offset.i.i, align 4
  %75 = ptrtoint ptr %rport1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rport1, align 128
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dd_data.i, align 4
  %tobool.not.i53 = icmp eq ptr %78, null
  br i1 %tobool.not.i53, label %fc_fill_fc_hdr.exit.if.else.i.i_crit_edge, label %land.lhs.true.i

fc_fill_fc_hdr.exit.if.else.i.i_crit_edge:        ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i:                                  ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %e_d_tov1.i = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %e_d_tov1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %e_d_tov1.i, align 4
  %81 = tail call i32 @llvm.umax.i32(i32 %80, i32 2000) #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i, %fc_fill_fc_hdr.exit.if.else.i.i_crit_edge
  %e_d_tov.0.i = phi i32 [ 2000, %fc_fill_fc_hdr.exit.if.else.i.i_crit_edge ], [ %81, %land.lhs.true.i ]
  %call2.i.i55 = tail call i32 @__msecs_to_jiffies(i32 noundef %e_d_tov.0.i) #10
  %add.i56 = add i32 %call2.i.i55, 100
  %call10 = tail call ptr @fc_exch_seq_send(ptr noundef %1, ptr noundef nonnull %call2.i.i, ptr noundef nonnull @fc_fcp_srr_resp, ptr noundef nonnull @fc_fcp_pkt_destroy, ptr noundef %fsp, i32 noundef %add.i56) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.else.i.i.retry_crit_edge, label %if.end13

if.else.i.i.retry_crit_edge:                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

if.end13:                                         ; preds = %if.else.i.i
  %recov_seq = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 24
  %82 = ptrtoint ptr %recov_seq to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call10, ptr %recov_seq, align 4
  %xfer_len = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 13
  %83 = ptrtoint ptr %xfer_len to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %offset, ptr %xfer_len, align 4
  %xfer_contig_end = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 15
  %84 = ptrtoint ptr %xfer_contig_end to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %offset, ptr %xfer_contig_end, align 8
  %state = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %state, align 4
  %87 = and i8 %86, -3
  store i8 %87, ptr %state, align 4
  %ref_cnt.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i, i32 1, i32 3, i32 1) #10
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i, ptr %ref_cnt.i, i32 1, ptr elementtype(i32) %ref_cnt.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end13.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !423

if.end13.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end13
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %89 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %.not.i.i.i.i = icmp sgt i32 %89, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end13.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end13.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %cleanup

retry:                                            ; preds = %if.else.i.i.retry_crit_edge, %fc_fcp_frame_alloc.exit.thread, %lor.lhs.false.retry_crit_edge, %entry.retry_crit_edge
  %90 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %seq_ptr, align 4
  %tobool.not.i57 = icmp eq ptr %91, null
  br i1 %tobool.not.i57, label %retry.fc_fcp_retry_cmd.exit_crit_edge, label %if.then.i58

retry.fc_fcp_retry_cmd.exit_crit_edge:            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_retry_cmd.exit

if.then.i58:                                      ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fc_exch_done(ptr noundef nonnull %91) #10
  %92 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %seq_ptr, align 4
  br label %fc_fcp_retry_cmd.exit

fc_fcp_retry_cmd.exit:                            ; preds = %if.then.i58, %retry.fc_fcp_retry_cmd.exit_crit_edge
  %state.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 6
  %93 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %state.i, align 4
  %95 = and i8 %94, -5
  store i8 %95, ptr %state.i, align 4
  %io_status.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 10
  %96 = ptrtoint ptr %io_status.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %io_status.i, align 8
  %status_code5.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %fsp, i32 0, i32 8
  %97 = ptrtoint ptr %status_code5.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 12, ptr %status_code5.i, align 2
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %fsp) #10
  br label %cleanup

cleanup:                                          ; preds = %fc_fcp_retry_cmd.exit, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_fcp_srr_resp(ptr noundef %seq, ptr noundef %fp, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  tail call void @_raw_spin_lock_bh(ptr noundef %arg) #10
  %state.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 6
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i.i, align 4
  %2 = and i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %if.end.i.i, label %fc_fcp_lock_pkt.exit.i

if.end.i.i:                                       ; preds = %if.then
  %ref_cnt.i.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i.i, ptr %ref_cnt.i.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !423

if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end.i_crit_edge:           ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.end.i

fc_fcp_lock_pkt.exit.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  br label %fc_fcp_srr_error.exit

if.end.i:                                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end.i_crit_edge
  %5 = ptrtoint ptr %fp to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.292)
  switch i32 %5, label %if.end.i.sw.default.i_crit_edge [
    i32 -1, label %do.body.i
    i32 -2, label %do.body37.i
  ]

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %7 = load i32, ptr @fc_debug_logging, align 4
  %and.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end30.i_crit_edge, label %do.body6.i, !prof !416

do.body.i.do.end30.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i

do.body6.i:                                       ; preds = %do.body.i
  %seq_ptr.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %8 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seq_ptr.i, align 4
  %tobool7.not.i = icmp eq ptr %9, null
  %lp18.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %10 = ptrtoint ptr %lp18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lp18.i, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %host_no20.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %host_no20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no20.i, align 4
  %rport21.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %16 = ptrtoint ptr %rport21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rport21.i, align 128
  %port_id22.i = getelementptr inbounds %struct.fc_rport, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %port_id22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_id22.i, align 8
  br i1 %tobool7.not.i, label %do.end16.i, label %if.then8.i

if.then8.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid.i = getelementptr i8, ptr %9, i32 -26
  %20 = ptrtoint ptr %oxid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %oxid.i, align 2
  %conv.i = zext i16 %21 to i32
  %rxid.i = getelementptr i8, ptr %9, i32 -24
  %22 = ptrtoint ptr %rxid.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rxid.i, align 4
  %conv12.i = zext i16 %23 to i32
  %recov_retry.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 23
  %24 = ptrtoint ptr %recov_retry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %recov_retry.i, align 64
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, i32 noundef %15, i32 noundef %19, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %25) #13
  br label %do.end30.i

do.end16.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %recov_retry23.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 23
  %26 = ptrtoint ptr %recov_retry23.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %recov_retry23.i, align 64
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, i32 noundef %15, i32 noundef %19, i32 noundef %27) #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end16.i, %if.then8.i, %do.body.i.do.end30.i_crit_edge
  %recov_retry31.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 23
  %28 = ptrtoint ptr %recov_retry31.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %recov_retry31.i, align 64
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %recov_retry31.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i24 = icmp ult i32 %29, 3
  br i1 %cmp.i24, label %if.then33.i, label %if.else34.i

if.then33.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fc_fcp_rec(ptr noundef %arg) #10
  br label %sw.epilog.i

if.else34.i:                                      ; preds = %do.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %30 = load i32, ptr @fc_debug_logging, align 4
  %and.i.i = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i110.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i110.i, label %if.else34.i.fc_fcp_recovery.exit.i_crit_edge, label %do.body3.i.i, !prof !416

if.else34.i.fc_fcp_recovery.exit.i_crit_edge:     ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_recovery.exit.i

do.body3.i.i:                                     ; preds = %if.else34.i
  %seq_ptr.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %31 = ptrtoint ptr %seq_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seq_ptr.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %32, null
  %lp15.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %33 = ptrtoint ptr %lp15.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lp15.i.i, align 64
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %host_no17.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %host_no17.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %host_no17.i.i, align 4
  %rport18.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %39 = ptrtoint ptr %rport18.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rport18.i.i, align 128
  %port_id19.i.i = getelementptr inbounds %struct.fc_rport, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %port_id19.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_id19.i.i, align 8
  br i1 %tobool4.not.i.i, label %do.end13.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid.i.i = getelementptr i8, ptr %32, i32 -26
  %43 = ptrtoint ptr %oxid.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %oxid.i.i, align 2
  %conv.i.i = zext i16 %44 to i32
  %rxid.i.i = getelementptr i8, ptr %32, i32 -24
  %45 = ptrtoint ptr %rxid.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rxid.i.i, align 4
  %conv9.i.i = zext i16 %46 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %38, i32 noundef %42, i32 noundef %conv.i.i, i32 noundef %conv9.i.i, i32 noundef 11) #13
  br label %fc_fcp_recovery.exit.i

do.end13.i.i:                                     ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %38, i32 noundef %42, i32 noundef 11) #13
  br label %fc_fcp_recovery.exit.i

fc_fcp_recovery.exit.i:                           ; preds = %do.end13.i.i, %if.then5.i.i, %if.else34.i.fc_fcp_recovery.exit.i_crit_edge
  %status_code.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 8
  %47 = ptrtoint ptr %status_code.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 11, ptr %status_code.i.i, align 2
  %cdb_status.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 7
  %48 = ptrtoint ptr %cdb_status.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %cdb_status.i.i, align 1
  %io_status.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 10
  %49 = ptrtoint ptr %io_status.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %io_status.i.i, align 8
  %call27.i.i = tail call fastcc i32 @fc_fcp_send_abort(ptr noundef %arg) #10
  br label %sw.epilog.i

do.body37.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %50 = load i32, ptr @fc_debug_logging, align 4
  %and38.i = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %do.body37.i.sw.default.i_crit_edge, label %do.body47.i, !prof !416

do.body37.i.sw.default.i_crit_edge:               ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i

do.body47.i:                                      ; preds = %do.body37.i
  %seq_ptr48.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %51 = ptrtoint ptr %seq_ptr48.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %seq_ptr48.i, align 4
  %tobool49.not.i = icmp eq ptr %52, null
  %lp75.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %53 = ptrtoint ptr %lp75.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lp75.i, align 64
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %host_no77.i = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %host_no77.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %host_no77.i, align 4
  %rport78.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %59 = ptrtoint ptr %rport78.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rport78.i, align 128
  %port_id79.i = getelementptr inbounds %struct.fc_rport, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %port_id79.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port_id79.i, align 8
  br i1 %tobool49.not.i, label %do.end73.i, label %if.then50.i

if.then50.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid65.i = getelementptr i8, ptr %52, i32 -26
  %63 = ptrtoint ptr %oxid65.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %oxid65.i, align 2
  %conv66.i = zext i16 %64 to i32
  %rxid67.i = getelementptr i8, ptr %52, i32 -24
  %65 = ptrtoint ptr %rxid67.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rxid67.i, align 4
  %conv68.i = zext i16 %66 to i32
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %58, i32 noundef %62, i32 noundef %conv66.i, i32 noundef %conv68.i) #13
  br label %sw.default.i

do.end73.i:                                       ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #12
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, i32 noundef %58, i32 noundef %62) #13
  br label %sw.default.i

sw.default.i:                                     ; preds = %do.end73.i, %if.then50.i, %do.body37.i.sw.default.i_crit_edge, %if.end.i.sw.default.i_crit_edge
  %seq_ptr.i111.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %67 = ptrtoint ptr %seq_ptr.i111.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %seq_ptr.i111.i, align 4
  %tobool.not.i112.i = icmp eq ptr %68, null
  br i1 %tobool.not.i112.i, label %sw.default.i.fc_fcp_retry_cmd.exit.i_crit_edge, label %if.then.i113.i

sw.default.i.fc_fcp_retry_cmd.exit.i_crit_edge:   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_retry_cmd.exit.i

if.then.i113.i:                                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fc_exch_done(ptr noundef nonnull %68) #10
  %69 = ptrtoint ptr %seq_ptr.i111.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %seq_ptr.i111.i, align 4
  br label %fc_fcp_retry_cmd.exit.i

fc_fcp_retry_cmd.exit.i:                          ; preds = %if.then.i113.i, %sw.default.i.fc_fcp_retry_cmd.exit.i_crit_edge
  %70 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %state.i.i, align 4
  %72 = and i8 %71, -5
  store i8 %72, ptr %state.i.i, align 4
  %io_status.i115.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 10
  %73 = ptrtoint ptr %io_status.i115.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %io_status.i115.i, align 8
  %status_code5.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 8
  %74 = ptrtoint ptr %status_code5.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 8, ptr %status_code5.i.i, align 2
  tail call fastcc void @fc_fcp_complete_locked(ptr noundef %arg) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %fc_fcp_retry_cmd.exit.i, %fc_fcp_recovery.exit.i, %if.then33.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  %call.i.i.i.i.i.i.i118.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i.i, i32 1, i32 3, i32 1) #10
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i.i, ptr %ref_cnt.i.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i119.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i119.i, label %if.end5.i.i.i.i.i.i.fc_fcp_srr_error.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.i.fc_fcp_srr_error.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_srr_error.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i.i, i32 noundef 3) #10
  br label %fc_fcp_srr_error.exit

if.then.i.i.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %76 = ptrtoint ptr %lp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lp.i.i.i, align 64
  %scsi_priv.i.i.i = getelementptr inbounds %struct.fc_lport, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %scsi_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %scsi_priv.i.i.i, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %81) #10
  br label %fc_fcp_srr_error.exit

fc_fcp_srr_error.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.fc_fcp_srr_error.exit_crit_edge, %fc_fcp_lock_pkt.exit.i
  %recov_seq.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 24
  %82 = ptrtoint ptr %recov_seq.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %recov_seq.i, align 4
  tail call void @fc_exch_done(ptr noundef %83) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not.i.i, label %if.end.i25, label %fc_fcp_lock_pkt.exit

if.end.i25:                                       ; preds = %if.end
  %ref_cnt.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !422
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i25.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !423

if.end.i25.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i25
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %85 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i.i.i = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end3_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !416

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end3_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i25.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i25.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %if.end3

fc_fcp_lock_pkt.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  br label %out

if.end3:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end3_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %86 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %87)
  %cmp.i26 = icmp ult i32 %87, 24
  br i1 %cmp.i26, label %do.end.i, label %if.end3.fc_frame_header_get.exit_crit_edge, !prof !423

if.end3.fc_frame_header_get.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 161, i32 noundef 9, ptr noundef null) #10
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end3.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %88 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i, align 4
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp = icmp eq i8 %91, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %fc_frame_header_get.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  %call.i.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i30)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i30, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i30)
  %.not.i.i.i.i.i31 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i30, 0
  br i1 %.not.i.i.i.i.i31, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !416

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %93 = ptrtoint ptr %lp.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lp.i.i, align 64
  %scsi_priv.i.i = getelementptr inbounds %struct.fc_lport, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %scsi_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %scsi_priv.i.i, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %98) #10
  br label %cleanup

if.end7:                                          ; preds = %fc_frame_header_get.exit
  %99 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %100)
  %cmp.not.i.i = icmp ult i32 %100, 25
  br i1 %cmp.not.i.i, label %if.end7.sw.default_crit_edge, label %fc_frame_payload_get.exit.i

if.end7.sw.default_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

fc_frame_payload_get.exit.i:                      ; preds = %if.end7
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %89, i32 1
  %tobool.not.i32 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i32, label %fc_frame_payload_get.exit.i.sw.default_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.sw.default_crit_edge: ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %101 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %102)
  %cond = icmp eq i8 %102, 2
  br i1 %cond, label %sw.bb, label %fc_frame_payload_op.exit.sw.default_crit_edge

fc_frame_payload_op.exit.sw.default_crit_edge:    ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %fc_frame_payload_op.exit
  %recov_retry = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 23
  %103 = ptrtoint ptr %recov_retry to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %recov_retry, align 64
  %rport.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %104 = ptrtoint ptr %rport.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rport.i, align 128
  %dd_data.i = getelementptr inbounds %struct.fc_rport, ptr %105, i32 0, i32 11
  %106 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dd_data.i, align 4
  %tobool.not.i35 = icmp eq ptr %107, null
  br i1 %tobool.not.i35, label %sw.bb.if.else.i.i_crit_edge, label %land.lhs.true.i

sw.bb.if.else.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %e_d_tov1.i = getelementptr inbounds %struct.fc_rport_libfc_priv, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %e_d_tov1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %e_d_tov1.i, align 4
  %110 = tail call i32 @llvm.umax.i32(i32 %109, i32 2000) #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i, %sw.bb.if.else.i.i_crit_edge
  %e_d_tov.0.i = phi i32 [ 2000, %sw.bb.if.else.i.i_crit_edge ], [ %110, %land.lhs.true.i ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %e_d_tov.0.i) #10
  %111 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %state.i.i, align 4
  %113 = and i8 %112, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i40 = icmp eq i8 %113, 0
  br i1 %tobool.not.i40, label %if.then.i42, label %if.else.i.i.sw.epilog_crit_edge

if.else.i.i.sw.epilog_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i42:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %call2.i.i, 100
  %timer.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %add.i41 = add i32 %114, %add.i
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i41) #10
  %timer_delay.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 22
  %115 = ptrtoint ptr %timer_delay.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add.i, ptr %timer_delay.i, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %fc_frame_payload_op.exit.sw.default_crit_edge, %fc_frame_payload_get.exit.i.sw.default_crit_edge, %if.end7.sw.default_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %116 = load i32, ptr @fc_debug_logging, align 4
  %and.i44 = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %sw.default.fc_fcp_recovery.exit_crit_edge, label %do.body3.i, !prof !416

sw.default.fc_fcp_recovery.exit_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %fc_fcp_recovery.exit

do.body3.i:                                       ; preds = %sw.default
  %seq_ptr.i46 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 19
  %117 = ptrtoint ptr %seq_ptr.i46 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %seq_ptr.i46, align 4
  %tobool4.not.i = icmp eq ptr %118, null
  %lp15.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %119 = ptrtoint ptr %lp15.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %lp15.i, align 64
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %host_no17.i = getelementptr inbounds %struct.Scsi_Host, ptr %122, i32 0, i32 17
  %123 = ptrtoint ptr %host_no17.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %host_no17.i, align 4
  %rport18.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 18
  %125 = ptrtoint ptr %rport18.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rport18.i, align 128
  %port_id19.i = getelementptr inbounds %struct.fc_rport, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %port_id19.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %port_id19.i, align 8
  br i1 %tobool4.not.i, label %do.end13.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %oxid.i47 = getelementptr i8, ptr %118, i32 -26
  %129 = ptrtoint ptr %oxid.i47 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %oxid.i47, align 2
  %conv.i48 = zext i16 %130 to i32
  %rxid.i49 = getelementptr i8, ptr %118, i32 -24
  %131 = ptrtoint ptr %rxid.i49 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %rxid.i49, align 4
  %conv9.i = zext i16 %132 to i32
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %124, i32 noundef %128, i32 noundef %conv.i48, i32 noundef %conv9.i, i32 noundef 8) #13
  br label %fc_fcp_recovery.exit

do.end13.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %124, i32 noundef %128, i32 noundef 8) #13
  br label %fc_fcp_recovery.exit

fc_fcp_recovery.exit:                             ; preds = %do.end13.i, %if.then5.i, %sw.default.fc_fcp_recovery.exit_crit_edge
  %status_code.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 8
  %133 = ptrtoint ptr %status_code.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 8, ptr %status_code.i, align 2
  %cdb_status.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 7
  %134 = ptrtoint ptr %cdb_status.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %cdb_status.i, align 1
  %io_status.i = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 10
  %135 = ptrtoint ptr %io_status.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %io_status.i, align 8
  %call27.i = tail call fastcc i32 @fc_fcp_send_abort(ptr noundef %arg) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %fc_fcp_recovery.exit, %if.then.i42, %if.else.i.i.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arg) #10
  %call.i.i.i.i.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_cnt.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @llvm.prefetch.p0(ptr %ref_cnt.i.i, i32 1, i32 3, i32 1) #10
  %136 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_cnt.i.i, ptr %ref_cnt.i.i, i32 1, ptr elementtype(i32) %ref_cnt.i.i) #10, !srcloc !418
  %asmresult.i.i.i.i.i.i.i.i53 = extractvalue { i32, i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i53)
  %cmp.i.i.i.i.i54 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i53, 1
  br i1 %cmp.i.i.i.i.i54, label %if.then.i.i60, label %if.end5.i.i.i.i.i56

if.end5.i.i.i.i.i56:                              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i53)
  %.not.i.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i53, 0
  br i1 %.not.i.i.i.i.i55, label %if.end5.i.i.i.i.i56.out_crit_edge, label %if.then10.i.i.i.i.i57, !prof !416

if.end5.i.i.i.i.i56.out_crit_edge:                ; preds = %if.end5.i.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i.i.i57:                            ; preds = %if.end5.i.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref_cnt.i.i, i32 noundef 3) #10
  br label %out

if.then.i.i60:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !419
  %lp.i.i58 = getelementptr inbounds %struct.fc_fcp_pkt, ptr %arg, i32 0, i32 5
  %137 = ptrtoint ptr %lp.i.i58 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %lp.i.i58, align 64
  %scsi_priv.i.i59 = getelementptr inbounds %struct.fc_lport, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %scsi_priv.i.i59 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %scsi_priv.i.i59, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  tail call void @mempool_free(ptr noundef %arg, ptr noundef %142) #10
  br label %out

out:                                              ; preds = %if.then.i.i60, %if.then10.i.i.i.i.i57, %if.end5.i.i.i.i.i56.out_crit_edge, %fc_fcp_lock_pkt.exit
  tail call void @fc_exch_done(ptr noundef %seq) #10
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %fc_fcp_srr_error.exit
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 230)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 230)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !62, !64, !65, !67, !68, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !105, !107, !108, !109, !110, !111, !112, !113, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !143, !144, !145, !146, !147, !148, !150, !151, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !169, !171, !172, !173, !174, !175, !176, !178, !179, !180, !181, !182, !183, !185, !186, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !201, !202, !203, !205, !206, !207, !208, !209, !210, !212, !213, !214, !215, !216, !217, !219, !221, !222, !223, !224, !225, !226, !227, !229, !230, !231, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !244, !245, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257, !258, !259, !260, !261, !263, !264, !265, !266, !267, !268, !270, !271, !272, !273, !274, !275, !277, !278, !279, !280, !281, !282, !284, !285, !286, !287, !288, !289, !290, !292, !293, !294, !295, !296, !297, !299, !300, !301, !302, !303, !304, !306, !307, !308, !309, !310, !311, !313, !314, !315, !316, !317, !318, !320, !321, !323, !324, !325, !326, !328, !329, !330, !332, !333, !334, !335, !336, !337, !338, !340, !341, !342, !343, !344, !345, !347, !348, !349, !350, !351, !352, !353, !355, !356, !357, !358, !359, !360, !362, !363, !364, !365, !366, !367, !369, !370, !371, !372, !373, !374, !375, !377, !378, !379, !380, !381, !382, !384, !385, !386, !387, !388, !389, !391, !392, !393, !394, !395, !396, !397, !399, !400, !401, !402, !403}
!llvm.named.register.sp = !{!404}
!llvm.module.flags = !{!405, !406, !407, !408, !409, !410, !411, !412}
!llvm.ident = !{!413}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1890, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @fc_queuecommand._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @fc_queuecommand._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_fc_queuecommand, !9, !"__ksymtab_fc_queuecommand", i1 false, i1 false}
!9 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1949, i32 1}
!10 = !{ptr @__ksymtab_fc_eh_abort, !11, !"__ksymtab_fc_eh_abort", i1 false, i1 false}
!11 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2147, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2173, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @fc_eh_device_reset._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @fc_eh_device_reset._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2177, i32 3}
!19 = !{ptr @fc_eh_device_reset._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @fc_eh_device_reset._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_fc_eh_device_reset, !22, !"__ksymtab_fc_eh_device_reset", i1 false, i1 false}
!22 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2198, i32 1}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2210, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fc_eh_host_reset._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @fc_eh_host_reset._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2219, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fc_eh_host_reset._entry.12, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @fc_eh_host_reset._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2223, i32 3}
!35 = !{ptr @fc_eh_host_reset._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fc_eh_host_reset._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab_fc_eh_host_reset, !38, !"__ksymtab_fc_eh_host_reset", i1 false, i1 false}
!38 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2229, i32 1}
!39 = !{ptr @__ksymtab_fc_slave_alloc, !40, !"__ksymtab_fc_slave_alloc", i1 false, i1 false}
!40 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2248, i32 1}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2259, i32 3}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fc_fcp_destroy._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @fc_fcp_destroy._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__ksymtab_fc_fcp_destroy, !47, !"__ksymtab_fc_fcp_destroy", i1 false, i1 false}
!47 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2266, i32 1}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2272, i32 38}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2276, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @fc_setup_fcp._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @fc_setup_fcp._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @fc_fcp_init.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2313, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__ksymtab_fc_fcp_init, !59, !"__ksymtab_fc_fcp_init", i1 false, i1 false}
!59 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2326, i32 1}
!60 = !{ptr @scsi_pkt_cachep, !61, !"scsi_pkt_cachep", i1 false, i1 false}
!61 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 33, i32 27}
!62 = !{ptr @fc_fcp_pkt_alloc.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 146, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @fc_fcp_pkt_alloc.__key.26, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 148, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 796, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @fc_fcp_recv._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @fc_fcp_recv._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @fc_fcp_recv._entry.30, !69, !"_entry", i1 false, i1 false}
!75 = !{ptr @fc_fcp_recv._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 809, i32 3}
!78 = !{ptr @fc_fcp_recv._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @fc_fcp_recv._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @fc_fcp_recv._entry.36, !77, !"_entry", i1 false, i1 false}
!82 = !{ptr @fc_fcp_recv._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 840, i32 3}
!85 = !{ptr @fc_fcp_recv._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @fc_fcp_recv._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @fc_fcp_recv._entry.42, !84, !"_entry", i1 false, i1 false}
!89 = !{ptr @fc_fcp_recv._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1005, i32 4}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @fc_fcp_complete_locked._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @fc_fcp_complete_locked._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @fc_fcp_complete_locked._entry.47, !91, !"_entry", i1 false, i1 false}
!97 = !{ptr @fc_fcp_complete_locked._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 447, i32 2}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @fc_fcp_frame_alloc._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @fc_fcp_frame_alloc._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/scsi/fc_frame.h", i32 254, i32 2}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2005, i32 3}
!107 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @fc_io_compl._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @fc_io_compl._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @fc_io_compl._entry.55, !106, !"_entry", i1 false, i1 false}
!112 = !{ptr @fc_io_compl._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2018, i32 5}
!115 = !{ptr @fc_io_compl._entry.58, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @fc_io_compl._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @fc_io_compl._entry.61, !114, !"_entry", i1 false, i1 false}
!119 = !{ptr @fc_io_compl._entry_ptr.63, !114, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2026, i32 4}
!122 = !{ptr @fc_io_compl._entry.64, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @fc_io_compl._entry_ptr.66, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @fc_io_compl._entry.67, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @fc_io_compl._entry_ptr.69, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2036, i32 3}
!129 = !{ptr @fc_io_compl._entry.70, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @fc_io_compl._entry_ptr.72, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @fc_io_compl._entry.73, !128, !"_entry", i1 false, i1 false}
!133 = !{ptr @fc_io_compl._entry_ptr.75, !128, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2042, i32 4}
!136 = !{ptr @fc_io_compl._entry.76, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @fc_io_compl._entry_ptr.78, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @fc_io_compl._entry.79, !135, !"_entry", i1 false, i1 false}
!140 = !{ptr @fc_io_compl._entry_ptr.81, !135, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.83, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2045, i32 4}
!143 = !{ptr @fc_io_compl._entry.82, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @fc_io_compl._entry_ptr.84, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.86, !142, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @fc_io_compl._entry.85, !142, !"_entry", i1 false, i1 false}
!147 = !{ptr @fc_io_compl._entry_ptr.87, !142, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.89, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2052, i32 3}
!150 = !{ptr @fc_io_compl._entry.88, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @fc_io_compl._entry_ptr.90, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.92, !149, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @fc_io_compl._entry.91, !149, !"_entry", i1 false, i1 false}
!154 = !{ptr @fc_io_compl._entry_ptr.93, !149, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.95, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2057, i32 3}
!157 = !{ptr @fc_io_compl._entry.94, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @fc_io_compl._entry_ptr.96, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.98, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @fc_io_compl._entry.97, !156, !"_entry", i1 false, i1 false}
!161 = !{ptr @fc_io_compl._entry_ptr.99, !156, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.101, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2062, i32 3}
!164 = !{ptr @fc_io_compl._entry.100, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @fc_io_compl._entry_ptr.102, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.104, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @fc_io_compl._entry.103, !163, !"_entry", i1 false, i1 false}
!168 = !{ptr @fc_io_compl._entry_ptr.105, !163, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.107, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2067, i32 3}
!171 = !{ptr @fc_io_compl._entry.106, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @fc_io_compl._entry_ptr.108, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.110, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @fc_io_compl._entry.109, !170, !"_entry", i1 false, i1 false}
!175 = !{ptr @fc_io_compl._entry_ptr.111, !170, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.113, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2072, i32 3}
!178 = !{ptr @fc_io_compl._entry.112, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @fc_io_compl._entry_ptr.114, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.116, !177, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @fc_io_compl._entry.115, !177, !"_entry", i1 false, i1 false}
!182 = !{ptr @fc_io_compl._entry_ptr.117, !177, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.119, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 2077, i32 3}
!185 = !{ptr @fc_io_compl._entry.118, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @fc_io_compl._entry_ptr.120, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.122, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @fc_io_compl._entry.121, !184, !"_entry", i1 false, i1 false}
!189 = !{ptr @fc_io_compl._entry_ptr.123, !184, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.124, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 381, i32 2}
!192 = !{ptr @.str.125, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @fc_fcp_can_queue_ramp_up._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @fc_fcp_can_queue_ramp_up._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.126, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 618, i32 3}
!197 = !{ptr @.str.127, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @fc_fcp_send_data._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @fc_fcp_send_data._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.129, !196, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @fc_fcp_send_data._entry.128, !196, !"_entry", i1 false, i1 false}
!202 = !{ptr @fc_fcp_send_data._entry_ptr.130, !196, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.132, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 624, i32 3}
!205 = !{ptr @fc_fcp_send_data._entry.131, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @fc_fcp_send_data._entry_ptr.133, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.135, !204, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @fc_fcp_send_data._entry.134, !204, !"_entry", i1 false, i1 false}
!209 = !{ptr @fc_fcp_send_data._entry_ptr.136, !204, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.138, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 636, i32 3}
!212 = !{ptr @fc_fcp_send_data._entry.137, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @fc_fcp_send_data._entry_ptr.139, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.141, !211, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @fc_fcp_send_data._entry.140, !211, !"_entry", i1 false, i1 false}
!216 = !{ptr @fc_fcp_send_data._entry_ptr.142, !211, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.143, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!219 = !{ptr @.str.144, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 505, i32 3}
!221 = !{ptr @.str.145, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @fc_fcp_recv_data._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @fc_fcp_recv_data._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.147, !220, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @fc_fcp_recv_data._entry.146, !220, !"_entry", i1 false, i1 false}
!226 = !{ptr @fc_fcp_recv_data._entry_ptr.148, !220, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.150, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 514, i32 3}
!229 = !{ptr @fc_fcp_recv_data._entry.149, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @fc_fcp_recv_data._entry_ptr.151, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.153, !228, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @fc_fcp_recv_data._entry.152, !228, !"_entry", i1 false, i1 false}
!233 = !{ptr @fc_fcp_recv_data._entry_ptr.154, !228, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.156, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 544, i32 5}
!236 = !{ptr @fc_fcp_recv_data._entry.155, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @fc_fcp_recv_data._entry_ptr.157, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.159, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 573, i32 3}
!240 = !{ptr @fc_fcp_recv_data._entry.158, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @fc_fcp_recv_data._entry_ptr.160, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.162, !239, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @fc_fcp_recv_data._entry.161, !239, !"_entry", i1 false, i1 false}
!244 = !{ptr @fc_fcp_recv_data._entry_ptr.163, !239, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.164, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1699, i32 2}
!247 = !{ptr @.str.165, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @fc_fcp_recovery._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @fc_fcp_recovery._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.167, !246, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @fc_fcp_recovery._entry.166, !246, !"_entry", i1 false, i1 false}
!252 = !{ptr @fc_fcp_recovery._entry_ptr.168, !246, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.169, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 947, i32 5}
!255 = !{ptr @.str.170, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @fc_fcp_resp._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @fc_fcp_resp._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.172, !254, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @fc_fcp_resp._entry.171, !254, !"_entry", i1 false, i1 false}
!260 = !{ptr @fc_fcp_resp._entry_ptr.173, !254, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.175, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 951, i32 4}
!263 = !{ptr @fc_fcp_resp._entry.174, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @fc_fcp_resp._entry_ptr.176, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.178, !262, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @fc_fcp_resp._entry.177, !262, !"_entry", i1 false, i1 false}
!267 = !{ptr @fc_fcp_resp._entry_ptr.179, !262, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.181, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 959, i32 3}
!270 = !{ptr @fc_fcp_resp._entry.180, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @fc_fcp_resp._entry_ptr.182, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.184, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @fc_fcp_resp._entry.183, !269, !"_entry", i1 false, i1 false}
!274 = !{ptr @fc_fcp_resp._entry_ptr.185, !269, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.187, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 968, i32 2}
!277 = !{ptr @fc_fcp_resp._entry.186, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @fc_fcp_resp._entry_ptr.188, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.190, !276, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @fc_fcp_resp._entry.189, !276, !"_entry", i1 false, i1 false}
!281 = !{ptr @fc_fcp_resp._entry_ptr.191, !276, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.192, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1254, i32 2}
!284 = !{ptr @.str.193, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @fc_fcp_pkt_abort._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @fc_fcp_pkt_abort._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.195, !283, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @fc_fcp_pkt_abort._entry.194, !283, !"_entry", i1 false, i1 false}
!289 = !{ptr @fc_fcp_pkt_abort._entry_ptr.196, !283, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.198, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1256, i32 3}
!292 = !{ptr @fc_fcp_pkt_abort._entry.197, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @fc_fcp_pkt_abort._entry_ptr.199, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.201, !291, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @fc_fcp_pkt_abort._entry.200, !291, !"_entry", i1 false, i1 false}
!296 = !{ptr @fc_fcp_pkt_abort._entry_ptr.202, !291, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.204, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1261, i32 3}
!299 = !{ptr @fc_fcp_pkt_abort._entry.203, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @fc_fcp_pkt_abort._entry_ptr.205, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.207, !298, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @fc_fcp_pkt_abort._entry.206, !298, !"_entry", i1 false, i1 false}
!303 = !{ptr @fc_fcp_pkt_abort._entry_ptr.208, !298, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.210, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1275, i32 3}
!306 = !{ptr @fc_fcp_pkt_abort._entry.209, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @fc_fcp_pkt_abort._entry_ptr.211, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.213, !305, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @fc_fcp_pkt_abort._entry.212, !305, !"_entry", i1 false, i1 false}
!310 = !{ptr @fc_fcp_pkt_abort._entry_ptr.214, !305, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.216, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1277, i32 3}
!313 = !{ptr @fc_fcp_pkt_abort._entry.215, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @fc_fcp_pkt_abort._entry_ptr.217, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.219, !312, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @fc_fcp_pkt_abort._entry.218, !312, !"_entry", i1 false, i1 false}
!317 = !{ptr @fc_fcp_pkt_abort._entry_ptr.220, !312, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @init_completion.__key, !319, !"__key", i1 false, i1 false}
!319 = !{!"../include/linux/completion.h", i32 87, i32 2}
!320 = !{ptr @.str.221, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.222, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1348, i32 3}
!323 = !{ptr @.str.223, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @fc_lun_reset._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @fc_lun_reset._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.225, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1356, i32 2}
!328 = !{ptr @fc_lun_reset._entry.224, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @fc_lun_reset._entry_ptr.226, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.227, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1435, i32 3}
!332 = !{ptr @.str.228, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @fc_fcp_timeout._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @fc_fcp_timeout._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.230, !331, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @fc_fcp_timeout._entry.229, !331, !"_entry", i1 false, i1 false}
!337 = !{ptr @fc_fcp_timeout._entry_ptr.231, !331, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.233, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1441, i32 2}
!340 = !{ptr @fc_fcp_timeout._entry.232, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @fc_fcp_timeout._entry_ptr.234, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.236, !339, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @fc_fcp_timeout._entry.235, !339, !"_entry", i1 false, i1 false}
!344 = !{ptr @fc_fcp_timeout._entry_ptr.237, !339, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.238, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1535, i32 4}
!347 = !{ptr @.str.239, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @fc_fcp_rec_resp._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @fc_fcp_rec_resp._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.241, !346, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @fc_fcp_rec_resp._entry.240, !346, !"_entry", i1 false, i1 false}
!352 = !{ptr @fc_fcp_rec_resp._entry_ptr.242, !346, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.244, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1541, i32 4}
!355 = !{ptr @fc_fcp_rec_resp._entry.243, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @fc_fcp_rec_resp._entry_ptr.245, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.247, !354, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @fc_fcp_rec_resp._entry.246, !354, !"_entry", i1 false, i1 false}
!359 = !{ptr @fc_fcp_rec_resp._entry_ptr.248, !354, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.250, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1552, i32 4}
!362 = !{ptr @fc_fcp_rec_resp._entry.249, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @fc_fcp_rec_resp._entry_ptr.251, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.253, !361, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @fc_fcp_rec_resp._entry.252, !361, !"_entry", i1 false, i1 false}
!366 = !{ptr @fc_fcp_rec_resp._entry_ptr.254, !361, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.255, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1662, i32 3}
!369 = !{ptr @.str.256, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @fc_fcp_rec_error._entry, !368, !"_entry", i1 false, i1 false}
!371 = !{ptr @fc_fcp_rec_error._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.258, !368, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @fc_fcp_rec_error._entry.257, !368, !"_entry", i1 false, i1 false}
!374 = !{ptr @fc_fcp_rec_error._entry_ptr.259, !368, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.261, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1668, i32 3}
!377 = !{ptr @fc_fcp_rec_error._entry.260, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @fc_fcp_rec_error._entry_ptr.262, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.264, !376, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @fc_fcp_rec_error._entry.263, !376, !"_entry", i1 false, i1 false}
!381 = !{ptr @fc_fcp_rec_error._entry_ptr.265, !376, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.267, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1678, i32 3}
!384 = !{ptr @fc_fcp_rec_error._entry.266, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @fc_fcp_rec_error._entry_ptr.268, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.270, !383, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @fc_fcp_rec_error._entry.269, !383, !"_entry", i1 false, i1 false}
!388 = !{ptr @fc_fcp_rec_error._entry_ptr.271, !383, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.272, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1825, i32 3}
!391 = !{ptr @.str.273, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @fc_fcp_srr_error._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @fc_fcp_srr_error._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.275, !390, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @fc_fcp_srr_error._entry.274, !390, !"_entry", i1 false, i1 false}
!396 = !{ptr @fc_fcp_srr_error._entry_ptr.276, !390, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.278, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/libfc/fc_fcp.c", i32 1832, i32 3}
!399 = !{ptr @fc_fcp_srr_error._entry.277, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @fc_fcp_srr_error._entry_ptr.279, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.281, !398, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @fc_fcp_srr_error._entry.280, !398, !"_entry", i1 false, i1 false}
!403 = !{ptr @fc_fcp_srr_error._entry_ptr.282, !398, !"_entry_ptr", i1 false, i1 false}
!404 = !{!"sp"}
!405 = !{i32 1, !"wchar_size", i32 2}
!406 = !{i32 1, !"min_enum_size", i32 4}
!407 = !{i32 8, !"branch-target-enforcement", i32 0}
!408 = !{i32 8, !"sign-return-address", i32 0}
!409 = !{i32 8, !"sign-return-address-all", i32 0}
!410 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!411 = !{i32 7, !"uwtable", i32 1}
!412 = !{i32 7, !"frame-pointer", i32 2}
!413 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!414 = !{i64 2155827065}
!415 = !{i64 2155827256}
!416 = !{!"branch_weights", i32 2000, i32 1}
!417 = !{i64 2148489215}
!418 = !{i64 2148403655, i64 2148403687, i64 2148403716, i64 2148403750, i64 2148403781, i64 2148403804}
!419 = !{i64 2149365329}
!420 = !{i64 2155487740}
!421 = !{i64 2155487913}
!422 = !{i64 2148401190, i64 2148401222, i64 2148401251, i64 2148401285, i64 2148401316, i64 2148401339}
!423 = !{!"branch_weights", i32 1, i32 2000}
!424 = !{i64 2155495987}
!425 = !{i64 2155496160}
!426 = !{i64 2153619000, i64 2153619492, i64 2153619037, i64 2153619093, i64 2153619127, i64 2153619151, i64 2153619192, i64 2153619213, i64 2153619241, i64 2153619275}
!427 = !{i64 2153422452, i64 2153422936, i64 2153422489, i64 2153422545, i64 2153422579, i64 2153422603, i64 2153422644, i64 2153422665, i64 2153422693, i64 2153422727}
!428 = !{i64 2148399660, i64 2148399686, i64 2148399715, i64 2148399749, i64 2148399780, i64 2148399803}
!429 = !{i64 2149013037, i64 2149013042, i64 2149013055, i64 2149013099, i64 2149013133, i64 2149013154}
!430 = !{i64 2153936234}
!431 = !{i64 2153051436}
!432 = !{i64 2153051643}
!433 = !{i64 2153939005}
!434 = !{!"auto-init"}
!435 = !{i64 2155519463}
!436 = !{i64 2155521314}
!437 = !{i64 2155489810}
!438 = !{i64 2155489983}
