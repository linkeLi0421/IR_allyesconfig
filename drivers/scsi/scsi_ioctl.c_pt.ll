; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_ioctl.c_pt.bc'
source_filename = "../drivers/scsi/scsi_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+scsi_set_medium_removal\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_set_medium_removal\09\09\09\09"
module asm "\09.long\09__crc_scsi_set_medium_removal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_set_medium_removal:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_set_medium_removal\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_set_medium_removal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_cmd_allowed\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_cmd_allowed\09\09\09\09"
module asm "\09.long\09__crc_scsi_cmd_allowed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_cmd_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_cmd_allowed\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_cmd_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+put_sg_io_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_put_sg_io_hdr\09\09\09\09"
module asm "\09.long\09__crc_put_sg_io_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_sg_io_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22put_sg_io_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_put_sg_io_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_sg_io_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_get_sg_io_hdr\09\09\09\09"
module asm "\09.long\09__crc_get_sg_io_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_sg_io_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22get_sg_io_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_get_sg_io_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_ioctl\09\09\09\09"
module asm "\09.long\09__crc_scsi_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_ioctl_block_when_processing_errors\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_ioctl_block_when_processing_errors\09\09\09\09"
module asm "\09.long\09__crc_scsi_ioctl_block_when_processing_errors\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_ioctl_block_when_processing_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_ioctl_block_when_processing_errors\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_ioctl_block_when_processing_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scsi_idlun = type { i32, i32 }
%struct.cdrom_generic_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, %union.anon.83 }
%union.anon.83 = type { [1 x ptr] }
%struct.sg_io_hdr = type { i32, i32, i8, i8, i16, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i16, i16, i32, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.scsi_ioctl_command = type { i32, i32, [0 x i8] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.30, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.31, %union.anon.32, %union.anon.33, %union.anon.38, ptr, ptr }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
%union.anon.32 = type { %struct.rb_node }
%union.anon.33 = type { %struct.anon.37 }
%struct.anon.37 = type { i32, %struct.list_head, ptr }
%union.anon.38 = type { i64, [8 x i8] }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.41, %union.anon.42 }
%union.anon.41 = type { ptr }
%union.anon.42 = type { i64 }

@__kstrtab_scsi_set_medium_removal = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_set_medium_removal = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_set_medium_removal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_set_medium_removal to i32), ptr @__kstrtab_scsi_set_medium_removal, ptr @__kstrtabns_scsi_set_medium_removal }, section "___ksymtab+scsi_set_medium_removal", align 4
@__kstrtab_scsi_cmd_allowed = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_cmd_allowed = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_cmd_allowed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_cmd_allowed to i32), ptr @__kstrtab_scsi_cmd_allowed, ptr @__kstrtabns_scsi_cmd_allowed }, section "___ksymtab+scsi_cmd_allowed", align 4
@__kstrtab_put_sg_io_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_sg_io_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_put_sg_io_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_sg_io_hdr to i32), ptr @__kstrtab_put_sg_io_hdr, ptr @__kstrtabns_put_sg_io_hdr }, section "___ksymtab+put_sg_io_hdr", align 4
@__kstrtab_get_sg_io_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_sg_io_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_get_sg_io_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_sg_io_hdr to i32), ptr @__kstrtab_get_sg_io_hdr, ptr @__kstrtabns_get_sg_io_hdr }, section "___ksymtab+get_sg_io_hdr", align 4
@scsi_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014program %s is using a deprecated SCSI ioctl, please convert it to SG_IO\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scsi_ioctl\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/scsi/scsi_ioctl.c\00", [38 x i8] zeroinitializer }, align 32
@scsi_ioctl._entry_ptr = internal global ptr @scsi_ioctl._entry, section ".printk_index", align 4
@__kstrtab_scsi_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_ioctl to i32), ptr @__kstrtab_scsi_ioctl, ptr @__kstrtabns_scsi_ioctl }, section "___ksymtab+scsi_ioctl", align 4
@__kstrtab_scsi_ioctl_block_when_processing_errors = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_ioctl_block_when_processing_errors = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_ioctl_block_when_processing_errors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_ioctl_block_when_processing_errors to i32), ptr @__kstrtab_scsi_ioctl_block_when_processing_errors, ptr @__kstrtabns_scsi_ioctl_block_when_processing_errors }, section "___ksymtab_gpl+scsi_ioctl_block_when_processing_errors", align 4
@scsi_logging_level = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Trying ioctl with scsi command %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ioctl returned  0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ioctl_internal_command: ILLEGAL REQUEST asc=0x%x ascq=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ioctl_internal_command return code = %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IOCTL Releasing command\0A\00", [39 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@switch.table.scsi_ioctl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -5, i32 -2, i32 -3, i32 -1], [16 x i8] zeroinitializer }, align 32
@switch.table.sg_io = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 34, i32 34, i32 35], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.12 = internal global [77 x i64] [i64 75, i64 8, i64 0, i64 3, i64 4, i64 8, i64 10, i64 13, i64 18, i64 21, i64 25, i64 26, i64 27, i64 28, i64 30, i64 35, i64 37, i64 40, i64 42, i64 43, i64 46, i64 47, i64 53, i64 55, i64 60, i64 62, i64 63, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 74, i64 75, i64 76, i64 77, i64 78, i64 81, i64 82, i64 83, i64 84, i64 85, i64 88, i64 90, i64 91, i64 92, i64 93, i64 136, i64 138, i64 143, i64 147, i64 148, i64 149, i64 158, i64 160, i64 161, i64 162, i64 163, i64 164, i64 166, i64 167, i64 168, i64 170, i64 172, i64 173, i64 174, i64 182, i64 185, i64 186, i64 187, i64 188, i64 190, i64 191, i64 234]
@__sancov_gen_cov_switch_values.13 = internal global [23 x i64] [i64 21, i64 32, i64 1, i64 2, i64 5, i64 6, i64 8705, i64 8706, i64 8707, i64 8818, i64 8821, i64 8834, i64 8836, i64 8837, i64 21257, i64 21273, i64 21376, i64 21377, i64 21378, i64 21381, i64 21382, i64 21383, i64 21395]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 8, i64 4, i64 27, i64 29, i64 55, i64 165, i64 184]
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 900, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 73, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 79, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 90, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 108, i32 4 }
@___asan_gen_.43 = private constant [29 x i8] c"../drivers/scsi/scsi_ioctl.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 116, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 230, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 214, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 174, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"switch.table.scsi_ioctl\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"switch.table.sg_io\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_get_sg_io_hdr, ptr @__ksymtab_put_sg_io_hdr, ptr @__ksymtab_scsi_cmd_allowed, ptr @__ksymtab_scsi_ioctl, ptr @__ksymtab_scsi_ioctl_block_when_processing_errors, ptr @__ksymtab_scsi_set_medium_removal, ptr @scsi_ioctl._entry, ptr @scsi_ioctl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @switch.table.scsi_ioctl, ptr @switch.table.sg_io], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.scsi_ioctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sg_io to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_set_medium_removal(ptr noundef %sdev, i8 noundef zeroext %state) #0 align 64 {
entry:
  %scsi_cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd) #8
  %removable = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %0 = getelementptr inbounds i8, ptr %scsi_cmd, i32 6
  %1 = call ptr @memset(ptr %0, i32 255, i32 10)
  %2 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %removable, align 4
  %3 = and i64 %bf.load, -8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8070450532247928832, i64 %3)
  %.not = icmp eq i64 %3, -8070450532247928832
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 4
  %6 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 3
  %7 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 2
  %8 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 1
  %9 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 30, ptr %scsi_cmd, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %8, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 1
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %6, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %state, ptr %5, align 1
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %4, align 1
  %call = call fastcc i32 @ioctl_internal_command(ptr noundef %sdev, ptr noundef nonnull %scsi_cmd, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %state)
  %cmp11 = icmp eq i8 %state, 1
  %15 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load13 = load i64, ptr %removable, align 4
  %bf.shl = select i1 %cmp11, i64 576460752303423488, i64 0
  %bf.clear14 = and i64 %bf.load13, -576460752303423489
  %bf.set = or i64 %bf.clear14, %bf.shl
  store i64 %bf.set, ptr %removable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ioctl_internal_command(ptr noundef %sdev, ptr noundef %cmd, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #8
  %0 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %3 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %sshdr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %4 = load i32, ptr @scsi_logging_level, align 4
  %5 = and i32 %4, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.body2, !prof !48

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.3, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %conv) #8
  br label %do.end4

do.end4:                                          ; preds = %do.body2, %entry.do.end4_crit_edge
  %call.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef %cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef %timeout, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %8 = load i32, ptr @scsi_logging_level, align 4
  %9 = and i32 %8, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %9)
  %cmp8 = icmp ugt i32 %9, 268435456
  br i1 %cmp8, label %do.body17, label %do.end4.do.end22_crit_edge, !prof !49

do.end4.do.end22_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.body17:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.3, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %call.i) #8
  br label %do.end22

do.end22:                                         ; preds = %do.body17, %do.end4.do.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23 = icmp slt i32 %call.i, 0
  br i1 %cmp23, label %do.end22.do.body54_crit_edge, label %if.end26

do.end22.do.body54_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.end26:                                         ; preds = %do.end22
  %10 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sshdr, align 8
  %12 = and i8 %11, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %12)
  %cmp.i = icmp eq i8 %12, 112
  br i1 %cmp.i, label %if.then28, label %if.end26.do.body54_crit_edge

if.end26.do.body54_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.then28:                                        ; preds = %if.end26
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.then28.sw.default_crit_edge [
    i8 5, label %sw.bb
    i8 2, label %sw.bb37
    i8 6, label %if.then28.sw.bb42_crit_edge
  ]

if.then28.sw.bb42_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

if.then28.sw.default_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb:                                            ; preds = %if.then28
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %17)
  %cmp31 = icmp eq i8 %17, 30
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %lockable = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %18 = ptrtoint ptr %lockable to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load = load i64, ptr %lockable, align 4
  %bf.clear = and i64 %bf.load, -1152921504606846977
  store i64 %bf.clear, ptr %lockable, align 4
  br label %do.body54

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 2
  %conv34 = zext i8 %20 to i32
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %2, align 1
  %conv35 = zext i8 %22 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.3, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %conv34, i32 noundef %conv35) #8
  br label %do.body54

sw.bb37:                                          ; preds = %if.then28
  %removable = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %23 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load38 = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load38)
  %tobool39.not = icmp sgt i64 %bf.load38, -1
  br i1 %tobool39.not, label %sw.bb37.sw.bb42_crit_edge, label %sw.bb37.do.body54_crit_edge

sw.bb37.do.body54_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

sw.bb37.sw.bb42_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

sw.bb42:                                          ; preds = %sw.bb37.sw.bb42_crit_edge, %if.then28.sw.bb42_crit_edge
  %removable43 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %24 = ptrtoint ptr %removable43 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %bf.load44 = load i64, ptr %removable43, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load44)
  %tobool47.not = icmp sgt i64 %bf.load44, -1
  br i1 %tobool47.not, label %sw.bb42.sw.default_crit_edge, label %if.then48

sw.bb42.sw.default_crit_edge:                     ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

if.then48:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set51 = or i64 %bf.load44, 4611686018427387904
  %25 = ptrtoint ptr %removable43 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %bf.set51, ptr %removable43, align 4
  br label %do.body54

sw.default:                                       ; preds = %sw.bb42.sw.default_crit_edge, %if.then28.sw.default_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.3, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef %call.i) #8
  call void @scsi_print_sense_hdr(ptr noundef %sdev, ptr noundef null, ptr noundef nonnull %sshdr) #8
  br label %do.body54

do.body54:                                        ; preds = %sw.default, %if.then48, %sw.bb37.do.body54_crit_edge, %if.else, %if.then33, %if.end26.do.body54_crit_edge, %do.end22.do.body54_crit_edge
  %result.0 = phi i32 [ %call.i, %do.end22.do.body54_crit_edge ], [ %call.i, %sw.default ], [ 0, %if.then48 ], [ %call.i, %sw.bb37.do.body54_crit_edge ], [ %call.i, %if.then33 ], [ %call.i, %if.else ], [ %call.i, %if.end26.do.body54_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %26 = load i32, ptr @scsi_logging_level, align 4
  %27 = and i32 %26, 939524096
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %27)
  %cmp57 = icmp ugt i32 %27, 268435456
  br i1 %cmp57, label %do.body66, label %do.body54.do.end71_crit_edge, !prof !49

do.body54.do.end71_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

do.body66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.3, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.8) #8
  br label %do.end71

do.end71:                                         ; preds = %do.body66, %do.body54.do.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #8
  ret i32 %result.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @scsi_cmd_allowed(ptr nocapture noundef readonly %cmd, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 17) #8
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %1, label %sw.default [
    i8 0, label %if.end.return_crit_edge
    i8 3, label %if.end.return_crit_edge2
    i8 8, label %if.end.return_crit_edge3
    i8 40, label %if.end.return_crit_edge4
    i8 -88, label %if.end.return_crit_edge5
    i8 -120, label %if.end.return_crit_edge6
    i8 60, label %if.end.return_crit_edge7
    i8 55, label %if.end.return_crit_edge8
    i8 37, label %if.end.return_crit_edge9
    i8 62, label %if.end.return_crit_edge10
    i8 18, label %if.end.return_crit_edge11
    i8 26, label %if.end.return_crit_edge12
    i8 90, label %if.end.return_crit_edge13
    i8 77, label %if.end.return_crit_edge14
    i8 27, label %if.end.return_crit_edge15
    i8 47, label %if.end.return_crit_edge16
    i8 -113, label %if.end.return_crit_edge17
    i8 -96, label %if.end.return_crit_edge18
    i8 -98, label %if.end.return_crit_edge19
    i8 28, label %if.end.return_crit_edge20
    i8 -93, label %if.end.return_crit_edge21
    i8 92, label %if.end.return_crit_edge22
    i8 -68, label %if.end.return_crit_edge23
    i8 69, label %if.end.return_crit_edge24
    i8 71, label %if.end.return_crit_edge25
    i8 72, label %if.end.return_crit_edge26
    i8 75, label %if.end.return_crit_edge27
    i8 -66, label %if.end.return_crit_edge28
    i8 -71, label %if.end.return_crit_edge29
    i8 81, label %if.end.return_crit_edge30
    i8 -83, label %if.end.return_crit_edge31
    i8 68, label %if.end.return_crit_edge32
    i8 82, label %if.end.return_crit_edge33
    i8 66, label %if.end.return_crit_edge34
    i8 67, label %if.end.return_crit_edge35
    i8 -92, label %if.end.return_crit_edge36
    i8 -70, label %if.end.return_crit_edge37
    i8 70, label %if.end.return_crit_edge38
    i8 35, label %if.end.return_crit_edge39
    i8 74, label %if.end.return_crit_edge40
    i8 -84, label %if.end.return_crit_edge41
    i8 43, label %if.end.return_crit_edge42
    i8 78, label %if.end.return_crit_edge43
    i8 -107, label %if.end.return_crit_edge44
    i8 10, label %if.end.sw.bb1_crit_edge
    i8 42, label %if.end.sw.bb1_crit_edge45
    i8 46, label %if.end.sw.bb1_crit_edge46
    i8 -86, label %if.end.sw.bb1_crit_edge47
    i8 -82, label %if.end.sw.bb1_crit_edge48
    i8 -118, label %if.end.sw.bb1_crit_edge49
    i8 63, label %if.end.sw.bb1_crit_edge50
    i8 -22, label %if.end.sw.bb1_crit_edge51
    i8 65, label %if.end.sw.bb1_crit_edge52
    i8 -109, label %if.end.sw.bb1_crit_edge53
    i8 13, label %if.end.sw.bb1_crit_edge54
    i8 25, label %if.end.sw.bb1_crit_edge55
    i8 85, label %if.end.sw.bb1_crit_edge56
    i8 21, label %if.end.sw.bb1_crit_edge57
    i8 76, label %if.end.sw.bb1_crit_edge58
    i8 -95, label %if.end.sw.bb1_crit_edge59
    i8 91, label %if.end.sw.bb1_crit_edge60
    i8 53, label %if.end.sw.bb1_crit_edge61
    i8 4, label %if.end.sw.bb1_crit_edge62
    i8 88, label %if.end.sw.bb1_crit_edge63
    i8 83, label %if.end.sw.bb1_crit_edge64
    i8 -65, label %if.end.sw.bb1_crit_edge65
    i8 -94, label %if.end.sw.bb1_crit_edge66
    i8 84, label %if.end.sw.bb1_crit_edge67
    i8 93, label %if.end.sw.bb1_crit_edge68
    i8 -69, label %if.end.sw.bb1_crit_edge69
    i8 30, label %if.end.sw.bb1_crit_edge70
    i8 -90, label %if.end.sw.bb1_crit_edge71
    i8 -74, label %if.end.sw.bb1_crit_edge72
    i8 -89, label %if.end.sw.bb1_crit_edge73
    i8 -108, label %if.end.sw.bb1_crit_edge74
  ]

if.end.sw.bb1_crit_edge74:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge73:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge72:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge71:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge70:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge69:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge68:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge67:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge66:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge65:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge64:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge63:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge62:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge61:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge60:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge59:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge58:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge57:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge56:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge55:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge53:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge52:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge51:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge50:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge49:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge48:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge47:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge46:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge45:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

if.end.return_crit_edge44:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge43:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge42:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge41:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge40:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge39:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge38:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge37:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge36:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge35:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge34:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge22:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge21:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge18:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge17:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge16:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge13:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge9:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge8:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge6:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge5:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge4:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge3:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge2:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge45, %if.end.sw.bb1_crit_edge46, %if.end.sw.bb1_crit_edge47, %if.end.sw.bb1_crit_edge48, %if.end.sw.bb1_crit_edge49, %if.end.sw.bb1_crit_edge50, %if.end.sw.bb1_crit_edge51, %if.end.sw.bb1_crit_edge52, %if.end.sw.bb1_crit_edge53, %if.end.sw.bb1_crit_edge54, %if.end.sw.bb1_crit_edge55, %if.end.sw.bb1_crit_edge56, %if.end.sw.bb1_crit_edge57, %if.end.sw.bb1_crit_edge58, %if.end.sw.bb1_crit_edge59, %if.end.sw.bb1_crit_edge60, %if.end.sw.bb1_crit_edge61, %if.end.sw.bb1_crit_edge62, %if.end.sw.bb1_crit_edge63, %if.end.sw.bb1_crit_edge64, %if.end.sw.bb1_crit_edge65, %if.end.sw.bb1_crit_edge66, %if.end.sw.bb1_crit_edge67, %if.end.sw.bb1_crit_edge68, %if.end.sw.bb1_crit_edge69, %if.end.sw.bb1_crit_edge70, %if.end.sw.bb1_crit_edge71, %if.end.sw.bb1_crit_edge72, %if.end.sw.bb1_crit_edge73, %if.end.sw.bb1_crit_edge74
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %if.end.return_crit_edge, %if.end.return_crit_edge2, %if.end.return_crit_edge3, %if.end.return_crit_edge4, %if.end.return_crit_edge5, %if.end.return_crit_edge6, %if.end.return_crit_edge7, %if.end.return_crit_edge8, %if.end.return_crit_edge9, %if.end.return_crit_edge10, %if.end.return_crit_edge11, %if.end.return_crit_edge12, %if.end.return_crit_edge13, %if.end.return_crit_edge14, %if.end.return_crit_edge15, %if.end.return_crit_edge16, %if.end.return_crit_edge17, %if.end.return_crit_edge18, %if.end.return_crit_edge19, %if.end.return_crit_edge20, %if.end.return_crit_edge21, %if.end.return_crit_edge22, %if.end.return_crit_edge23, %if.end.return_crit_edge24, %if.end.return_crit_edge25, %if.end.return_crit_edge26, %if.end.return_crit_edge27, %if.end.return_crit_edge28, %if.end.return_crit_edge29, %if.end.return_crit_edge30, %if.end.return_crit_edge31, %if.end.return_crit_edge32, %if.end.return_crit_edge33, %if.end.return_crit_edge34, %if.end.return_crit_edge35, %if.end.return_crit_edge36, %if.end.return_crit_edge37, %if.end.return_crit_edge38, %if.end.return_crit_edge39, %if.end.return_crit_edge40, %if.end.return_crit_edge41, %if.end.return_crit_edge42, %if.end.return_crit_edge43, %if.end.return_crit_edge44, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ %tobool, %sw.bb1 ], [ true, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ true, %if.end.return_crit_edge2 ], [ true, %if.end.return_crit_edge3 ], [ true, %if.end.return_crit_edge4 ], [ true, %if.end.return_crit_edge5 ], [ true, %if.end.return_crit_edge6 ], [ true, %if.end.return_crit_edge7 ], [ true, %if.end.return_crit_edge8 ], [ true, %if.end.return_crit_edge9 ], [ true, %if.end.return_crit_edge10 ], [ true, %if.end.return_crit_edge11 ], [ true, %if.end.return_crit_edge12 ], [ true, %if.end.return_crit_edge13 ], [ true, %if.end.return_crit_edge14 ], [ true, %if.end.return_crit_edge15 ], [ true, %if.end.return_crit_edge16 ], [ true, %if.end.return_crit_edge17 ], [ true, %if.end.return_crit_edge18 ], [ true, %if.end.return_crit_edge19 ], [ true, %if.end.return_crit_edge20 ], [ true, %if.end.return_crit_edge21 ], [ true, %if.end.return_crit_edge22 ], [ true, %if.end.return_crit_edge23 ], [ true, %if.end.return_crit_edge24 ], [ true, %if.end.return_crit_edge25 ], [ true, %if.end.return_crit_edge26 ], [ true, %if.end.return_crit_edge27 ], [ true, %if.end.return_crit_edge28 ], [ true, %if.end.return_crit_edge29 ], [ true, %if.end.return_crit_edge30 ], [ true, %if.end.return_crit_edge31 ], [ true, %if.end.return_crit_edge32 ], [ true, %if.end.return_crit_edge33 ], [ true, %if.end.return_crit_edge34 ], [ true, %if.end.return_crit_edge35 ], [ true, %if.end.return_crit_edge36 ], [ true, %if.end.return_crit_edge37 ], [ true, %if.end.return_crit_edge38 ], [ true, %if.end.return_crit_edge39 ], [ true, %if.end.return_crit_edge40 ], [ true, %if.end.return_crit_edge41 ], [ true, %if.end.return_crit_edge42 ], [ true, %if.end.return_crit_edge43 ], [ true, %if.end.return_crit_edge44 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @put_sg_io_hdr(ptr noundef %hdr, ptr noundef %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 64, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hdr, i32 noundef 64) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef %hdr, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %1 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_sg_io_hdr(ptr noundef %hdr, ptr noundef %argp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 64, i32 -1226833920) #11, !srcloc !51
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !48

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hdr, i32 noundef 64) #8
  %1 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !52
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %hdr, ptr noundef %argp, i32 noundef 64) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !48

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i3 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %entry.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i3
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i3)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %5 = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_ioctl(ptr noundef %sdev, i32 noundef %mode, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  %cdb.i223 = alloca [16 x i8], align 1
  %cdb.i220 = alloca [16 x i8], align 1
  %scsi_cmd.i208 = alloca [16 x i8], align 1
  %scsi_cmd.i = alloca [16 x i8], align 1
  %v.i = alloca %struct.scsi_idlun, align 4
  %cdb.i158 = alloca [16 x i8], align 1
  %cdb.i = alloca [16 x i8], align 1
  %cgc.i = alloca %struct.cdrom_generic_command, align 4
  %hdr.i139 = alloca %struct.sg_io_hdr, align 4
  %hdr.i = alloca %struct.sg_io_hdr, align 4
  %sense_hdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sense_hdr) #8
  %cmd.off = add i32 %cmd, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 6
  %2 = ptrtoint ptr %sense_hdr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %sense_hdr, align 8
  br i1 %switch, label %do.end, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i96 = and i32 %3, -16384
  %4 = inttoptr i32 %and.i96 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cmd, label %sw.epilog50 [
    i32 8834, label %sw.bb2
    i32 8705, label %sw.bb4
    i32 8706, label %sw.bb6
    i32 8818, label %sw.bb8
    i32 8821, label %sw.bb10
    i32 8707, label %sw.bb12
    i32 8837, label %sw.bb14
    i32 1, label %sw.bb16
    i32 21395, label %sw.bb18
    i32 21273, label %sw.bb20
    i32 21257, label %sw.bb22
    i32 21378, label %sw.bb24
    i32 21382, label %sw.bb26
    i32 21381, label %sw.bb33
    i32 21376, label %sw.bb36
    i32 21377, label %sw.bb38
    i32 2, label %sw.bb40
    i32 5, label %sw.bb42
    i32 6, label %sw.bb44
    i32 21383, label %sw.bb46
    i32 8836, label %sw.bb48
  ]

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 173) #8
  %8 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !52
  %and.i.i = and i32 %10, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 30527, i32 -1226833921) #8, !srcloc !55
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 178) #8
  %12 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i97 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i97 to ptr
  %cpu_domain.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i98) #4, !srcloc !52
  %and.i.i99 = and i32 %14, -13
  %or.i.i100 = or i32 %and.i.i99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i100) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #8, !srcloc !56
  %asmresult.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult1.i = extractvalue { i32, i32 } %15, 1
  %call3.i = tail call i32 @clock_t_to_jiffies(i32 noundef %asmresult1.i) #8
  %sg_timeout.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 63
  %16 = ptrtoint ptr %sg_timeout.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3.i, ptr %sg_timeout.i, align 8
  br label %cleanup

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %sg_timeout = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 63
  %17 = ptrtoint ptr %sg_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_timeout, align 8
  %call7 = tail call i32 @jiffies_to_clock_t(i32 noundef %18) #8
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %sg_reserved_size.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 64
  %19 = ptrtoint ptr %sg_reserved_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_reserved_size.i, align 4
  %21 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %request_queue, align 4
  %max_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %22, i32 0, i32 37, i32 6
  %23 = ptrtoint ptr %max_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_sectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %24)
  %cmp.i.i = icmp ult i32 %24, 4194303
  %phi.bo.i.i = shl i32 %24, 9
  %cond.i.i = select i1 %cmp.i.i, i32 %phi.bo.i.i, i32 2147483136
  %25 = tail call i32 @llvm.umin.i32(i32 %20, i32 %cond.i.i) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 191) #8
  %26 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i101 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i101 to ptr
  %cpu_domain.i.i.i102 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i102) #4, !srcloc !52
  %and.i.i103 = and i32 %28, -13
  %or.i.i104 = or i32 %and.i.i103, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i104) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %25, i32 -1226833921) #8, !srcloc !57
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 196) #8
  %30 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i105 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i105 to ptr
  %cpu_domain.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i106) #4, !srcloc !52
  %and.i.i107 = and i32 %32, -13
  %or.i.i108 = or i32 %and.i.i107, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i108) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #8, !srcloc !58
  %asmresult.i109 = extractvalue { i32, i32 } %33, 0
  %asmresult1.i110 = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i109)
  %tobool.not.i111 = icmp eq i32 %asmresult.i109, 0
  br i1 %tobool.not.i111, label %if.end.i, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i110)
  %cmp.i = icmp slt i32 %asmresult1.i110, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %request_queue, align 4
  %max_sectors.i.i.i113 = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 37, i32 6
  %36 = ptrtoint ptr %max_sectors.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_sectors.i.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %37)
  %cmp.i.i114 = icmp ult i32 %37, 4194303
  %phi.bo.i.i115 = shl i32 %37, 9
  %cond.i.i116 = select i1 %cmp.i.i114, i32 %phi.bo.i.i115, i32 2147483136
  %38 = tail call i32 @llvm.umin.i32(i32 %asmresult1.i110, i32 %cond.i.i116) #8
  %sg_reserved_size.i117 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 64
  %39 = ptrtoint ptr %sg_reserved_size.i117 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sg_reserved_size.i117, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 215) #8
  %40 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i118 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i118 to ptr
  %cpu_domain.i.i.i119 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i119) #4, !srcloc !52
  %and.i.i120 = and i32 %42, -13
  %or.i.i121 = or i32 %and.i.i120, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i121) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 1, i32 -1226833921) #8, !srcloc !59
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hdr.i) #8
  %44 = call ptr @memset(ptr %hdr.i, i32 255, i32 64)
  %call.i = call i32 @get_sg_io_hdr(ptr noundef nonnull %hdr.i, ptr noundef %arg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i122 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i122, label %if.end.i124, label %sw.bb14.scsi_ioctl_sg_io.exit_crit_edge

sw.bb14.scsi_ioctl_sg_io.exit_crit_edge:          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_ioctl_sg_io.exit

if.end.i124:                                      ; preds = %sw.bb14
  %call1.i = call fastcc i32 @sg_io(ptr noundef %sdev, ptr noundef nonnull %hdr.i, i32 noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call1.i)
  %cmp.i123 = icmp eq i32 %call1.i, -14
  br i1 %cmp.i123, label %if.end.i124.scsi_ioctl_sg_io.exit_crit_edge, label %if.end8.i.i.i.i

if.end.i124.scsi_ioctl_sg_io.exit_crit_edge:      ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_ioctl_sg_io.exit

if.end8.i.i.i.i:                                  ; preds = %if.end.i124
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.put_sg_io_hdr.exit.thread.i_crit_edge, label %if.end.i.i.i.i

if.end8.i.i.i.i.put_sg_io_hdr.exit.thread.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_sg_io_hdr.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %if.end8.i.i.i.i
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 64, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.put_sg_io_hdr.exit.thread.i_crit_edge

if.end.i.i.i.i.put_sg_io_hdr.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_sg_io_hdr.exit.thread.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hdr.i, i32 noundef 64) #8
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %hdr.i, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %copy_to_user.exit.i.i.scsi_ioctl_sg_io.exit_crit_edge, label %copy_to_user.exit.i.i.put_sg_io_hdr.exit.thread.i_crit_edge

copy_to_user.exit.i.i.put_sg_io_hdr.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_sg_io_hdr.exit.thread.i

copy_to_user.exit.i.i.scsi_ioctl_sg_io.exit_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_ioctl_sg_io.exit

put_sg_io_hdr.exit.thread.i:                      ; preds = %copy_to_user.exit.i.i.put_sg_io_hdr.exit.thread.i_crit_edge, %if.end.i.i.i.i.put_sg_io_hdr.exit.thread.i_crit_edge, %if.end8.i.i.i.i.put_sg_io_hdr.exit.thread.i_crit_edge
  br label %scsi_ioctl_sg_io.exit

scsi_ioctl_sg_io.exit:                            ; preds = %put_sg_io_hdr.exit.thread.i, %copy_to_user.exit.i.i.scsi_ioctl_sg_io.exit_crit_edge, %if.end.i124.scsi_ioctl_sg_io.exit_crit_edge, %sw.bb14.scsi_ioctl_sg_io.exit_crit_edge
  %retval.0.i125 = phi i32 [ %call.i, %sw.bb14.scsi_ioctl_sg_io.exit_crit_edge ], [ -14, %if.end.i124.scsi_ioctl_sg_io.exit_crit_edge ], [ -14, %put_sg_io_hdr.exit.thread.i ], [ %call1.i, %copy_to_user.exit.i.i.scsi_ioctl_sg_io.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hdr.i) #8
  br label %cleanup

sw.bb16:                                          ; preds = %sw.epilog
  %tobool.not.i126 = icmp eq ptr %arg, null
  br i1 %tobool.not.i126, label %sw.bb16.cleanup_crit_edge, label %if.end.i133

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i133:                                      ; preds = %sw.bb16
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 541) #8
  %46 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i127 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i127 to ptr
  %cpu_domain.i.i.i128 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i128) #4, !srcloc !52
  %and.i.i129 = and i32 %48, -13
  %or.i.i130 = or i32 %and.i.i129, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i130) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %49 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %arg, i32 -1226833921) #8, !srcloc !60
  %asmresult.i131 = extractvalue { i32, i32 } %49, 0
  %asmresult1.i132 = extractvalue { i32, i32 } %49, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i131)
  %tobool3.not.i = icmp eq i32 %asmresult.i131, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i133.cleanup_crit_edge

if.end.i133.cleanup_crit_edge:                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i133
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 543) #8
  %outlen.i = getelementptr inbounds %struct.scsi_ioctl_command, ptr %arg, i32 0, i32 1
  %50 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i187.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i187.i to ptr
  %cpu_domain.i.i188.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i188.i) #4, !srcloc !52
  %and.i189.i = and i32 %52, -13
  %or.i190.i = or i32 %and.i189.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i190.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %53 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %outlen.i, i32 -1226833921) #8, !srcloc !61
  %asmresult15.i = extractvalue { i32, i32 } %53, 0
  %asmresult16.i = extractvalue { i32, i32 } %53, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult15.i)
  %tobool18.not.i = icmp eq i32 %asmresult15.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %asmresult1.i132)
  %cmp.i134 = icmp ugt i32 %asmresult1.i132, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %asmresult16.i)
  %cmp21.i = icmp ugt i32 %asmresult16.i, 4096
  %or.cond.i = select i1 %cmp.i134, i1 true, i1 %cmp21.i
  br i1 %or.cond.i, label %if.end20.i.cleanup_crit_edge, label %if.end23.i

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23.i:                                       ; preds = %if.end20.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 547) #8
  %data.i = getelementptr inbounds %struct.scsi_ioctl_command, ptr %arg, i32 0, i32 2
  %54 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i191.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i191.i to ptr
  %cpu_domain.i.i192.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i192.i) #4, !srcloc !52
  %and.i193.i = and i32 %56, -13
  %or.i194.i = or i32 %and.i193.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i194.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %57 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %data.i, i32 -1226833921) #8, !srcloc !62
  %asmresult33.i = extractvalue { i32, i32 } %57, 0
  %asmresult34.i = extractvalue { i32, i32 } %57, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult33.i)
  %tobool37.not.i = icmp eq i32 %asmresult33.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end23.i.cleanup_crit_edge

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39.i:                                       ; preds = %if.end23.i
  %58 = tail call i32 @llvm.umax.i32(i32 %asmresult1.i132, i32 %asmresult16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool43.not.i = icmp eq i32 %58, 0
  br i1 %tobool43.not.i, label %if.end39.i.if.end49.i_crit_edge, label %if.end8.i.i263.i

if.end39.i.if.end49.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.end8.i.i263.i:                                 ; preds = %if.end39.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %58, i32 noundef 1060288) #13
  %tobool46.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool46.not.i, label %if.end8.i.i263.i.cleanup_crit_edge, label %if.end8.i.i263.i.if.end49.i_crit_edge

if.end8.i.i263.i.if.end49.i_crit_edge:            ; preds = %if.end8.i.i263.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.end8.i.i263.i.cleanup_crit_edge:               ; preds = %if.end8.i.i263.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49.i:                                       ; preds = %if.end8.i.i263.i.if.end49.i_crit_edge, %if.end39.i.if.end49.i_crit_edge
  %buffer.0.i = phi ptr [ %call9.i.i.i, %if.end8.i.i263.i.if.end49.i_crit_edge ], [ null, %if.end39.i.if.end49.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i132)
  %tobool50.not.i = icmp eq i32 %asmresult1.i132, 0
  %cond51.i = select i1 %tobool50.not.i, i32 34, i32 35
  %call52.i = tail call ptr @scsi_alloc_request(ptr noundef %1, i32 noundef %cond51.i, i32 noundef 0) #8
  %cmp.i.i135 = icmp ugt ptr %call52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i135, label %if.then54.i, label %if.end56.i

if.then54.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %call52.i to i32
  br label %error_free_buffer.i

if.end56.i:                                       ; preds = %if.end49.i
  %add.ptr.i.i264.i = getelementptr %struct.request, ptr %call52.i, i32 1
  %shr.i = lshr i32 %asmresult34.i, 5
  %and.i136 = and i32 %shr.i, 7
  %arrayidx.i = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %and.i136
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i, align 1
  %conv58.i = zext i8 %61 to i32
  %conv59.i = zext i8 %61 to i16
  %cmd_len.i = getelementptr %struct.request, ptr %call52.i, i32 1, i32 5
  %62 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv59.i, ptr %cmd_len.i, align 4
  %cmd.i = getelementptr %struct.request, ptr %call52.i, i32 1, i32 4
  %63 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cmd.i, align 4
  tail call void @__check_object_size(ptr noundef %64, i32 noundef %conv58.i, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end56.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end56.i.if.end.i.i.i_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end56.i
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data.i, i32 %conv58.i, i32 -1226833920) #11, !srcloc !51
  %asmresult.i.i.i = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %64, i32 noundef %conv58.i) #8
  %66 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !52
  %and.i.i.i.i.i = and i32 %68, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %64, ptr noundef %data.i, i32 noundef %conv58.i) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end56.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %conv58.i, %if.end56.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %conv58.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end65.i, label %if.then11.i.i.i, !prof !48

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = sub i32 %conv58.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %64, i32 %sub.i.i.i
  %69 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %error.i

if.end65.i:                                       ; preds = %if.end.i.i.i
  br i1 %tobool50.not.i, label %if.end65.i.if.end72.i_crit_edge, label %land.lhs.true.i

if.end65.i.if.end72.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

land.lhs.true.i:                                  ; preds = %if.end65.i
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %conv58.i
  tail call void @__check_object_size(ptr noundef %buffer.0.i, i32 noundef %asmresult1.i132, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i203.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i203.i, label %land.lhs.true.i.if.then11.i.i220.i_crit_edge, label %land.lhs.true.i.i207.i

land.lhs.true.i.if.then11.i.i220.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i220.i

land.lhs.true.i.i207.i:                           ; preds = %land.lhs.true.i
  %70 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i, i32 %asmresult1.i132, i32 -1226833920) #11, !srcloc !51
  %asmresult.i.i205.i = extractvalue { i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i205.i)
  %cmp.i6.i206.i = icmp eq i32 %asmresult.i.i205.i, 0
  br i1 %cmp.i6.i206.i, label %if.end.i.i217.i, label %land.lhs.true.i.i207.i.if.then11.i.i220.i_crit_edge, !prof !48

land.lhs.true.i.i207.i.if.then11.i.i220.i_crit_edge: ; preds = %land.lhs.true.i.i207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i220.i

if.end.i.i217.i:                                  ; preds = %land.lhs.true.i.i207.i
  %call.i.i.i208.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buffer.0.i, i32 noundef %asmresult1.i132) #8
  %71 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i209.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i209.i to ptr
  %cpu_domain.i.i.i.i.i210.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 4
  %73 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i210.i) #4, !srcloc !52
  %and.i.i.i.i211.i = and i32 %73, -13
  %or.i.i.i.i212.i = or i32 %and.i.i.i.i211.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i212.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i213.i = tail call i32 @arm_copy_from_user(ptr noundef %buffer.0.i, ptr noundef %add.ptr.i, i32 noundef %asmresult1.i132) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i213.i)
  %tobool4.not.i.i216.i = icmp eq i32 %call1.i.i.i213.i, 0
  br i1 %tobool4.not.i.i216.i, label %if.end.i.i217.i.if.end72.i_crit_edge, label %if.end.i.i217.i.if.then11.i.i220.i_crit_edge, !prof !48

if.end.i.i217.i.if.then11.i.i220.i_crit_edge:     ; preds = %if.end.i.i217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i220.i

if.end.i.i217.i.if.end72.i_crit_edge:             ; preds = %if.end.i.i217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then11.i.i220.i:                               ; preds = %if.end.i.i217.i.if.then11.i.i220.i_crit_edge, %land.lhs.true.i.i207.i.if.then11.i.i220.i_crit_edge, %land.lhs.true.i.if.then11.i.i220.i_crit_edge
  %res.0.i.i215269.i = phi i32 [ %call1.i.i.i213.i, %if.end.i.i217.i.if.then11.i.i220.i_crit_edge ], [ %asmresult1.i132, %land.lhs.true.i.if.then11.i.i220.i_crit_edge ], [ %asmresult1.i132, %land.lhs.true.i.i207.i.if.then11.i.i220.i_crit_edge ]
  %sub.i.i218.i = sub i32 %asmresult1.i132, %res.0.i.i215269.i
  %add.ptr.i.i219.i = getelementptr i8, ptr %buffer.0.i, i32 %sub.i.i218.i
  %74 = call ptr @memset(ptr %add.ptr.i.i219.i, i32 0, i32 %res.0.i.i215269.i)
  br label %error.i

if.end72.i:                                       ; preds = %if.end.i.i217.i.if.end72.i_crit_edge, %if.end65.i.if.end72.i_crit_edge
  %75 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cmd.i, align 4
  %call74.i = tail call zeroext i1 @scsi_cmd_allowed(ptr noundef %76, i32 noundef %mode) #8
  br i1 %call74.i, label %if.end76.i, label %if.end72.i.error.i_crit_edge

if.end72.i.error.i_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end76.i:                                       ; preds = %if.end72.i
  %retries.i = getelementptr inbounds %struct.scsi_request, ptr %add.ptr.i.i264.i, i32 0, i32 6
  %77 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 5, ptr %retries.i, align 4
  %trunc.i = trunc i32 %asmresult34.i to i8
  %78 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %trunc.i, label %sw.default.i [
    i8 29, label %if.end76.i.sw.bb.i_crit_edge
    i8 4, label %if.end76.i.sw.bb.i_crit_edge249
    i8 27, label %sw.bb78.i
    i8 -91, label %sw.bb80.i
    i8 -72, label %sw.bb82.i
    i8 55, label %sw.bb84.i
  ]

if.end76.i.sw.bb.i_crit_edge249:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end76.i.sw.bb.i_crit_edge:                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end76.i.sw.bb.i_crit_edge, %if.end76.i.sw.bb.i_crit_edge249
  %timeout.i = getelementptr inbounds %struct.request, ptr %call52.i, i32 0, i32 7
  %79 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 720000, ptr %timeout.i, align 4
  %80 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %retries.i, align 4
  br label %sw.epilog.i

sw.bb78.i:                                        ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %timeout79.i = getelementptr inbounds %struct.request, ptr %call52.i, i32 0, i32 7
  %81 = ptrtoint ptr %timeout79.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 6000, ptr %timeout79.i, align 4
  br label %sw.epilog.i

sw.bb80.i:                                        ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %timeout81.i = getelementptr inbounds %struct.request, ptr %call52.i, i32 0, i32 7
  %82 = ptrtoint ptr %timeout81.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 30000, ptr %timeout81.i, align 4
  br label %sw.epilog.i

sw.bb82.i:                                        ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %timeout83.i = getelementptr inbounds %struct.request, ptr %call52.i, i32 0, i32 7
  %83 = ptrtoint ptr %timeout83.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 30000, ptr %timeout83.i, align 4
  br label %sw.epilog.i

sw.bb84.i:                                        ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %timeout85.i = getelementptr inbounds %struct.request, ptr %call52.i, i32 0, i32 7
  %84 = ptrtoint ptr %timeout85.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 6000, ptr %timeout85.i, align 4
  %85 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %retries.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %timeout87.i = getelementptr inbounds %struct.request, ptr %call52.i, i32 0, i32 7
  %86 = ptrtoint ptr %timeout87.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 6000, ptr %timeout87.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb84.i, %sw.bb82.i, %sw.bb80.i, %sw.bb78.i, %sw.bb.i
  br i1 %tobool43.not.i, label %sw.epilog.i.if.end94.i_crit_edge, label %if.then89.i

sw.epilog.i.if.end94.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.then89.i:                                      ; preds = %sw.epilog.i
  %call90.i = tail call i32 @blk_rq_map_kern(ptr noundef %1, ptr noundef %call52.i, ptr noundef %buffer.0.i, i32 noundef %58, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.then89.i.if.end94.i_crit_edge, label %if.then89.i.error.i_crit_edge

if.then89.i.error.i_crit_edge:                    ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.then89.i.if.end94.i_crit_edge:                 ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then89.i.if.end94.i_crit_edge, %sw.epilog.i.if.end94.i_crit_edge
  %call95.i = tail call zeroext i8 @blk_execute_rq(ptr noundef %call52.i, i1 noundef zeroext false) #8
  %result.i = getelementptr %struct.request, ptr %call52.i, i32 1, i32 6
  %87 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %result.i, align 4
  %and96.i = and i32 %88, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %if.then.i.i.i251.i, label %if.then98.i

if.then98.i:                                      ; preds = %if.end94.i
  %sense_len.i = getelementptr %struct.request, ptr %call52.i, i32 1, i32 7
  %89 = ptrtoint ptr %sense_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sense_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool99.not.i = icmp eq i32 %90, 0
  br i1 %tobool99.not.i, label %if.then98.i.error.i_crit_edge, label %land.lhs.true100.i

if.then98.i.error.i_crit_edge:                    ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

land.lhs.true100.i:                               ; preds = %if.then98.i
  %sense.i = getelementptr %struct.request, ptr %call52.i, i32 1, i32 9
  %91 = ptrtoint ptr %sense.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sense.i, align 4
  %tobool101.not.i = icmp eq ptr %92, null
  br i1 %tobool101.not.i, label %land.lhs.true100.i.error.i_crit_edge, label %if.then102.i

land.lhs.true100.i.error.i_crit_edge:             ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.then102.i:                                     ; preds = %land.lhs.true100.i
  %93 = tail call i32 @llvm.umin.i32(i32 %90, i32 16) #8
  tail call void @__check_object_size(ptr noundef nonnull %92, i32 noundef %93, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i232.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i232.i, label %if.then102.i.error.i_crit_edge, label %if.end.i.i236.i

if.then102.i.error.i_crit_edge:                   ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end.i.i236.i:                                  ; preds = %if.then102.i
  %94 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data.i, i32 %93, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i234.i = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i234.i)
  %cmp.i6.i235.i = icmp eq i32 %asmresult.i.i234.i, 0
  br i1 %cmp.i6.i235.i, label %copy_to_user.exit.i, label %if.end.i.i236.i.error.i_crit_edge

if.end.i.i236.i.error.i_crit_edge:                ; preds = %if.end.i.i236.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i236.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i237.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %92, i32 noundef %93) #8
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %data.i, ptr noundef nonnull %92, i32 noundef %93) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool115.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool115.not.i, i32 %and96.i, i32 -14
  br label %error.i

if.then.i.i.i251.i:                               ; preds = %if.end94.i
  tail call void @__check_object_size(ptr noundef %buffer.0.i, i32 noundef %asmresult16.i, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i252.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i252.i, label %if.then.i.i.i251.i.copy_to_user.exit261.i_crit_edge, label %if.end.i.i256.i

if.then.i.i.i251.i.copy_to_user.exit261.i_crit_edge: ; preds = %if.then.i.i.i251.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit261.i

if.end.i.i256.i:                                  ; preds = %if.then.i.i.i251.i
  %95 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data.i, i32 %asmresult16.i, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i254.i = extractvalue { i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i254.i)
  %cmp.i6.i255.i = icmp eq i32 %asmresult.i.i254.i, 0
  br i1 %cmp.i6.i255.i, label %if.then2.i.i259.i, label %if.end.i.i256.i.copy_to_user.exit261.i_crit_edge

if.end.i.i256.i.copy_to_user.exit261.i_crit_edge: ; preds = %if.end.i.i256.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit261.i

if.then2.i.i259.i:                                ; preds = %if.end.i.i256.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i257.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %buffer.0.i, i32 noundef %asmresult16.i) #8
  %call.i12.i.i258.i = tail call i32 @arm_copy_to_user(ptr noundef %data.i, ptr noundef %buffer.0.i, i32 noundef %asmresult16.i) #8
  br label %copy_to_user.exit261.i

copy_to_user.exit261.i:                           ; preds = %if.then2.i.i259.i, %if.end.i.i256.i.copy_to_user.exit261.i_crit_edge, %if.then.i.i.i251.i.copy_to_user.exit261.i_crit_edge
  %n.addr.0.i260.i = phi i32 [ %asmresult16.i, %if.then.i.i.i251.i.copy_to_user.exit261.i_crit_edge ], [ %call.i12.i.i258.i, %if.then2.i.i259.i ], [ %asmresult16.i, %if.end.i.i256.i.copy_to_user.exit261.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i260.i)
  %tobool122.not.i = icmp eq i32 %n.addr.0.i260.i, 0
  %spec.select276.i = select i1 %tobool122.not.i, i32 0, i32 -14
  br label %error.i

error.i:                                          ; preds = %copy_to_user.exit261.i, %copy_to_user.exit.i, %if.end.i.i236.i.error.i_crit_edge, %if.then102.i.error.i_crit_edge, %land.lhs.true100.i.error.i_crit_edge, %if.then98.i.error.i_crit_edge, %if.then89.i.error.i_crit_edge, %if.end72.i.error.i_crit_edge, %if.then11.i.i220.i, %if.then11.i.i.i
  %err.0.i = phi i32 [ %call90.i, %if.then89.i.error.i_crit_edge ], [ %and96.i, %land.lhs.true100.i.error.i_crit_edge ], [ %and96.i, %if.then98.i.error.i_crit_edge ], [ -1, %if.end72.i.error.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then11.i.i220.i ], [ -14, %if.then102.i.error.i_crit_edge ], [ -14, %if.end.i.i236.i.error.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ %spec.select276.i, %copy_to_user.exit261.i ]
  tail call void @blk_mq_free_request(ptr noundef %call52.i) #8
  br label %error_free_buffer.i

error_free_buffer.i:                              ; preds = %error.i, %if.then54.i
  %err.1.i = phi i32 [ %59, %if.then54.i ], [ %err.0.i, %error.i ]
  tail call void @kfree(ptr noundef %buffer.0.i) #8
  br label %cleanup

sw.bb18:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i) #8
  %96 = call ptr @memset(ptr %cgc.i, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hdr.i139) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i.i.i140 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i140, label %sw.bb18.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

sw.bb18.if.then11.i.i.i.i_crit_edge:              ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %sw.bb18
  %97 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 44, i32 -1226833920) #11
  %asmresult.i.i.i.i141 = extractvalue { i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i141)
  %cmp.i6.i.i.i142 = icmp eq i32 %asmresult.i.i.i.i141, 0
  br i1 %cmp.i6.i.i.i142, label %if.end.i.i.i.i144, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

if.end.i.i.i.i144:                                ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i143 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cgc.i, i32 noundef 44) #8
  %98 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 4
  %100 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !52
  %and.i.i.i.i.i.i = and i32 %100, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #8, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cgc.i, ptr noundef %arg, i32 noundef 44) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #8, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i148, label %if.end.i.i.i.i144.if.then11.i.i.i.i_crit_edge, !prof !48

if.end.i.i.i.i144.if.then11.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i144.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %sw.bb18.if.then11.i.i.i.i_crit_edge
  %res.0.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i144.if.then11.i.i.i.i_crit_edge ], [ 44, %sw.bb18.if.then11.i.i.i.i_crit_edge ], [ 44, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 44, %res.0.i.i3.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %cgc.i, i32 %sub.i.i.i.i
  %101 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i3.i.i)
  br label %scsi_cdrom_send_packet.exit

if.end.i148:                                      ; preds = %if.end.i.i.i.i144
  %timeout.i145 = getelementptr inbounds %struct.cdrom_generic_command, ptr %cgc.i, i32 0, i32 7
  %102 = ptrtoint ptr %timeout.i145 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %timeout.i145, align 4
  %call1.i146 = call i32 @clock_t_to_jiffies(i32 noundef %103) #8
  %104 = ptrtoint ptr %timeout.i145 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call1.i146, ptr %timeout.i145, align 4
  %105 = getelementptr inbounds i8, ptr %hdr.i139, i32 8
  %106 = call ptr @memset(ptr %105, i32 0, i32 56)
  %107 = ptrtoint ptr %hdr.i139 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 83, ptr %hdr.i139, align 4
  %cmd_len.i147 = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 2
  %buflen.i = getelementptr inbounds %struct.cdrom_generic_command, ptr %cgc.i, i32 0, i32 2
  %108 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %buflen.i, align 4
  %dxfer_len.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 5
  %110 = ptrtoint ptr %dxfer_len.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %dxfer_len.i, align 4
  %data_direction.i = getelementptr inbounds %struct.cdrom_generic_command, ptr %cgc.i, i32 0, i32 5
  %111 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %112)
  %113 = icmp ult i8 %112, 4
  br i1 %113, label %switch.lookup, label %if.end.i148.scsi_cdrom_send_packet.exit_crit_edge

if.end.i148.scsi_cdrom_send_packet.exit_crit_edge: ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_cdrom_send_packet.exit

switch.lookup:                                    ; preds = %if.end.i148
  %114 = getelementptr inbounds i8, ptr %hdr.i139, i32 4
  %115 = sext i8 %112 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.scsi_ioctl, i32 0, i32 %115
  %116 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %116)
  %switch.load = load i32, ptr %switch.gep, align 4
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %switch.load, ptr %114, align 4
  %buffer.i = getelementptr inbounds %struct.cdrom_generic_command, ptr %cgc.i, i32 0, i32 1
  %118 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %buffer.i, align 4
  %dxferp.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 6
  %120 = ptrtoint ptr %dxferp.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %dxferp.i, align 4
  %sense.i149 = getelementptr inbounds %struct.cdrom_generic_command, ptr %cgc.i, i32 0, i32 4
  %121 = ptrtoint ptr %sense.i149 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sense.i149, align 4
  %sbp.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 8
  %123 = ptrtoint ptr %sbp.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %sbp.i, align 4
  %tobool10.not.i = icmp eq ptr %122, null
  br i1 %tobool10.not.i, label %switch.lookup.if.end12.i_crit_edge, label %if.then11.i

switch.lookup.if.end12.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then11.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %mx_sb_len.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 3
  %124 = ptrtoint ptr %mx_sb_len.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 64, ptr %mx_sb_len.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %switch.lookup.if.end12.i_crit_edge
  %call14.i = call i32 @jiffies_to_msecs(i32 noundef %call1.i146) #8
  %timeout15.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 9
  %125 = ptrtoint ptr %timeout15.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call14.i, ptr %timeout15.i, align 4
  %cmdp.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 7
  %126 = ptrtoint ptr %cmdp.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %arg, ptr %cmdp.i, align 4
  %127 = ptrtoint ptr %cmd_len.i147 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 12, ptr %cmd_len.i147, align 4
  %call17.i = call fastcc i32 @sg_io(ptr noundef %sdev, ptr noundef nonnull %hdr.i139, i32 noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call17.i)
  %cmp.i151 = icmp eq i32 %call17.i, -14
  br i1 %cmp.i151, label %if.end12.i.scsi_cdrom_send_packet.exit_crit_edge, label %if.end20.i152

if.end12.i.scsi_cdrom_send_packet.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_cdrom_send_packet.exit

if.end20.i152:                                    ; preds = %if.end12.i
  %status.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 13
  %128 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool21.not.i = icmp eq i8 %129, 0
  br i1 %tobool21.not.i, label %if.end8.i.i.i40.i, label %if.end20.i152.scsi_cdrom_send_packet.exit_crit_edge

if.end20.i152.scsi_cdrom_send_packet.exit_crit_edge: ; preds = %if.end20.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_cdrom_send_packet.exit

if.end8.i.i.i40.i:                                ; preds = %if.end20.i152
  %stat.i = getelementptr inbounds %struct.cdrom_generic_command, ptr %cgc.i, i32 0, i32 3
  %130 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %call17.i, ptr %stat.i, align 4
  %resid.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr.i139, i32 0, i32 19
  %131 = ptrtoint ptr %resid.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %resid.i, align 4
  %133 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %buflen.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i.i39.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i39.i, label %if.end8.i.i.i40.i.scsi_put_cdrom_generic_arg.exit.thread.i_crit_edge, label %copy_to_user.exit.i.i155

if.end8.i.i.i40.i.scsi_put_cdrom_generic_arg.exit.thread.i_crit_edge: ; preds = %if.end8.i.i.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_put_cdrom_generic_arg.exit.thread.i

copy_to_user.exit.i.i155:                         ; preds = %if.end8.i.i.i40.i
  %call.i.i.i.i44.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cgc.i, i32 noundef 44) #8
  %call.i12.i.i.i.i153 = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %cgc.i, i32 noundef 44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i153)
  %tobool.not.i.i154 = icmp eq i32 %call.i12.i.i.i.i153, 0
  br i1 %tobool.not.i.i154, label %copy_to_user.exit.i.i155.scsi_cdrom_send_packet.exit_crit_edge, label %copy_to_user.exit.i.i155.scsi_put_cdrom_generic_arg.exit.thread.i_crit_edge

copy_to_user.exit.i.i155.scsi_put_cdrom_generic_arg.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit.i.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_put_cdrom_generic_arg.exit.thread.i

copy_to_user.exit.i.i155.scsi_cdrom_send_packet.exit_crit_edge: ; preds = %copy_to_user.exit.i.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_cdrom_send_packet.exit

scsi_put_cdrom_generic_arg.exit.thread.i:         ; preds = %copy_to_user.exit.i.i155.scsi_put_cdrom_generic_arg.exit.thread.i_crit_edge, %if.end8.i.i.i40.i.scsi_put_cdrom_generic_arg.exit.thread.i_crit_edge
  br label %scsi_cdrom_send_packet.exit

scsi_cdrom_send_packet.exit:                      ; preds = %scsi_put_cdrom_generic_arg.exit.thread.i, %copy_to_user.exit.i.i155.scsi_cdrom_send_packet.exit_crit_edge, %if.end20.i152.scsi_cdrom_send_packet.exit_crit_edge, %if.end12.i.scsi_cdrom_send_packet.exit_crit_edge, %if.end.i148.scsi_cdrom_send_packet.exit_crit_edge, %if.then11.i.i.i.i
  %retval.0.i156 = phi i32 [ -22, %if.end.i148.scsi_cdrom_send_packet.exit_crit_edge ], [ -14, %if.end12.i.scsi_cdrom_send_packet.exit_crit_edge ], [ -5, %if.end20.i152.scsi_cdrom_send_packet.exit_crit_edge ], [ -14, %scsi_put_cdrom_generic_arg.exit.thread.i ], [ %call17.i, %copy_to_user.exit.i.i155.scsi_cdrom_send_packet.exit_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hdr.i139) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #8
  br label %cleanup

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i) #8
  %134 = getelementptr inbounds i8, ptr %cdb.i, i32 1
  %135 = call ptr @memset(ptr %134, i32 0, i32 15)
  %136 = ptrtoint ptr %cdb.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 27, ptr %cdb.i, align 1
  %arrayidx1.i = getelementptr inbounds [16 x i8], ptr %cdb.i, i32 0, i32 4
  %137 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 3, ptr %arrayidx1.i, align 1
  %call.i157 = call fastcc i32 @ioctl_internal_command(ptr noundef %sdev, ptr noundef nonnull %cdb.i, i32 noundef 6000) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #8
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i158) #8
  %138 = getelementptr inbounds i8, ptr %cdb.i158, i32 1
  %139 = call ptr @memset(ptr %138, i32 0, i32 15)
  %140 = ptrtoint ptr %cdb.i158 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 27, ptr %cdb.i158, align 1
  %arrayidx1.i159 = getelementptr inbounds [16 x i8], ptr %cdb.i158, i32 0, i32 4
  %141 = ptrtoint ptr %arrayidx1.i159 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 2, ptr %arrayidx1.i159, align 1
  %call.i160 = call fastcc i32 @ioctl_internal_command(ptr noundef %sdev, ptr noundef nonnull %cdb.i158, i32 noundef 6000) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i158) #8
  br label %cleanup

sw.bb24:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #8
  %142 = getelementptr inbounds %struct.scsi_idlun, ptr %v.i, i32 0, i32 1
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %143 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %id.i, align 8
  %and.i161 = and i32 %144, 255
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %145 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %lun.i, align 8
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %147 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %channel.i, align 4
  %and2.i = shl i32 %148, 16
  %shl3.i = and i32 %and2.i, 16711680
  %149 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sdev, align 8
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %150, i32 0, i32 17
  %151 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %host_no.i, align 4
  %shl7.i = shl i32 %152, 24
  %.tr.i = trunc i64 %146 to i32
  %153 = shl i32 %.tr.i, 8
  %154 = and i32 %153, 65280
  %155 = or i32 %154, %and.i161
  %156 = or i32 %155, %shl3.i
  %conv10.i = or i32 %156, %shl7.i
  %157 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv10.i, ptr %v.i, align 4
  %unique_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %150, i32 0, i32 23
  %158 = ptrtoint ptr %unique_id.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %unique_id.i, align 8
  %160 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %142, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i.i162 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i162, label %sw.bb24.scsi_get_idlun.exit_crit_edge, label %if.end.i.i.i165

sw.bb24.scsi_get_idlun.exit_crit_edge:            ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_get_idlun.exit

if.end.i.i.i165:                                  ; preds = %sw.bb24
  %161 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i.i163 = extractvalue { i32, i32 } %161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i163)
  %cmp.i6.i.i164 = icmp eq i32 %asmresult.i.i.i163, 0
  br i1 %cmp.i6.i.i164, label %copy_to_user.exit.i170, label %if.end.i.i.i165.scsi_get_idlun.exit_crit_edge

if.end.i.i.i165.scsi_get_idlun.exit_crit_edge:    ; preds = %if.end.i.i.i165
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_get_idlun.exit

copy_to_user.exit.i170:                           ; preds = %if.end.i.i.i165
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i166 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v.i, i32 noundef 8) #8
  %call.i12.i.i.i167 = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %v.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i167)
  %tobool.not.i168 = icmp eq i32 %call.i12.i.i.i167, 0
  %spec.select.i169 = select i1 %tobool.not.i168, i32 0, i32 -14
  br label %scsi_get_idlun.exit

scsi_get_idlun.exit:                              ; preds = %copy_to_user.exit.i170, %if.end.i.i.i165.scsi_get_idlun.exit_crit_edge, %sw.bb24.scsi_get_idlun.exit_crit_edge
  %162 = phi i32 [ -14, %sw.bb24.scsi_get_idlun.exit_crit_edge ], [ -14, %if.end.i.i.i165.scsi_get_idlun.exit_crit_edge ], [ %spec.select.i169, %copy_to_user.exit.i170 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #8
  br label %cleanup

sw.bb26:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sdev, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %164, i32 0, i32 17
  %165 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %host_no, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 933) #8
  %167 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 4
  %169 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !52
  %and.i = and i32 %169, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %170 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg, i32 %166, i32 -1226833921) #8, !srcloc !63
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %169) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  br label %cleanup

sw.bb33:                                          ; preds = %sw.epilog
  %171 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sdev, align 8
  %tobool.not.i171 = icmp eq ptr %arg, null
  br i1 %tobool.not.i171, label %sw.bb33.if.end22.i_crit_edge, label %if.then.i179

sw.bb33.if.end22.i_crit_edge:                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then.i179:                                     ; preds = %sw.bb33
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 49) #8
  %173 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i172 = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i.i172 to ptr
  %cpu_domain.i.i.i173 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 4
  %175 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i173) #4, !srcloc !52
  %and.i.i174 = and i32 %175, -13
  %or.i.i175 = or i32 %and.i.i174, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i175) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %176 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %arg, i32 -1226833921) #8, !srcloc !64
  %asmresult.i176 = extractvalue { i32, i32 } %176, 0
  %asmresult1.i177 = extractvalue { i32, i32 } %176, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i176)
  %tobool3.not.i178 = icmp eq i32 %asmresult.i176, 0
  br i1 %tobool3.not.i178, label %if.end.i180, label %if.then.i179.cleanup_crit_edge

if.then.i179.cleanup_crit_edge:                   ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i180:                                      ; preds = %if.then.i179
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %172, i32 0, i32 11
  %177 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %hostt.i, align 8
  %info.i = getelementptr inbounds %struct.scsi_host_template, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %info.i, align 4
  %tobool5.not.i = icmp eq ptr %180, null
  br i1 %tobool5.not.i, label %if.else.i181, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call ptr %180(ptr noundef %172) #8
  br label %if.end11.i

if.else.i181:                                     ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.scsi_host_template, ptr %178, i32 0, i32 4
  %181 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i181, %if.then6.i
  %string.0.i = phi ptr [ %call9.i, %if.then6.i ], [ %182, %if.else.i181 ]
  %tobool12.not.i = icmp eq ptr %string.0.i, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end22.i_crit_edge, label %if.then13.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.end11.i
  %call14.i182 = tail call i32 @strlen(ptr noundef nonnull %string.0.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i177, i32 %call14.i182)
  %cmp.i183 = icmp ugt i32 %asmresult1.i177, %call14.i182
  %add.i = add i32 %call14.i182, 1
  %spec.select.i184 = select i1 %cmp.i183, i32 %add.i, i32 %asmresult1.i177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i184)
  %cmp9.i.i.i = icmp slt i32 %spec.select.i184, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i193

land.rhs16.i.i.i:                                 ; preds = %if.then13.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.cleanup_crit_edge, label %if.then27.i.i.i, !prof !48

land.rhs16.i.i.i.cleanup_crit_edge:               ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then.i.i.i.i193:                               ; preds = %if.then13.i
  tail call void @__check_object_size(ptr noundef nonnull %string.0.i, i32 noundef %spec.select.i184, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i.i194 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i194, label %if.then.i.i.i.i193.copy_to_user.exit.i202_crit_edge, label %if.end.i.i.i198

if.then.i.i.i.i193.copy_to_user.exit.i202_crit_edge: ; preds = %if.then.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i202

if.end.i.i.i198:                                  ; preds = %if.then.i.i.i.i193
  %183 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %arg, i32 %spec.select.i184, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i.i196 = extractvalue { i32, i32 } %183, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i196)
  %cmp.i6.i.i197 = icmp eq i32 %asmresult.i.i.i196, 0
  br i1 %cmp.i6.i.i197, label %if.then2.i.i.i, label %if.end.i.i.i198.copy_to_user.exit.i202_crit_edge

if.end.i.i.i198.copy_to_user.exit.i202_crit_edge: ; preds = %if.end.i.i.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i202

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i198
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i199 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %string.0.i, i32 noundef %spec.select.i184) #8
  %call.i12.i.i.i200 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %arg, ptr noundef nonnull %string.0.i, i32 noundef %spec.select.i184) #8
  br label %copy_to_user.exit.i202

copy_to_user.exit.i202:                           ; preds = %if.then2.i.i.i, %if.end.i.i.i198.copy_to_user.exit.i202_crit_edge, %if.then.i.i.i.i193.copy_to_user.exit.i202_crit_edge
  %n.addr.0.i.i = phi i32 [ %spec.select.i184, %if.then.i.i.i.i193.copy_to_user.exit.i202_crit_edge ], [ %call.i12.i.i.i200, %if.then2.i.i.i ], [ %spec.select.i184, %if.end.i.i.i198.copy_to_user.exit.i202_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool18.not.i201 = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool18.not.i201, label %copy_to_user.exit.i202.if.end22.i_crit_edge, label %copy_to_user.exit.i202.cleanup_crit_edge

copy_to_user.exit.i202.cleanup_crit_edge:         ; preds = %copy_to_user.exit.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit.i202.if.end22.i_crit_edge:      ; preds = %copy_to_user.exit.i202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %copy_to_user.exit.i202.if.end22.i_crit_edge, %if.end11.i.if.end22.i_crit_edge, %sw.bb33.if.end22.i_crit_edge
  br label %cleanup

sw.bb36:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i) #8
  %removable.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %184 = getelementptr inbounds i8, ptr %scsi_cmd.i, i32 6
  %185 = call ptr @memset(ptr %184, i32 255, i32 10)
  %186 = ptrtoint ptr %removable.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 8)
  %bf.load.i = load i64, ptr %removable.i, align 4
  %187 = and i64 %bf.load.i, -8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8070450532247928832, i64 %187)
  %.not.i = icmp eq i64 %187, -8070450532247928832
  br i1 %.not.i, label %if.end.i206, label %sw.bb36.scsi_set_medium_removal.exit_crit_edge

sw.bb36.scsi_set_medium_removal.exit_crit_edge:   ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_set_medium_removal.exit

if.end.i206:                                      ; preds = %sw.bb36
  %188 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 5
  %189 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 4
  %190 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 3
  %191 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 2
  %192 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 1
  %193 = ptrtoint ptr %scsi_cmd.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 30, ptr %scsi_cmd.i, align 1
  %194 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %192, align 1
  %195 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %191, align 1
  %196 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %190, align 1
  %197 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %189, align 1
  %198 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %188, align 1
  %call.i204 = call fastcc i32 @ioctl_internal_command(ptr noundef %sdev, ptr noundef nonnull %scsi_cmd.i, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %cmp.i205 = icmp eq i32 %call.i204, 0
  br i1 %cmp.i205, label %if.then10.i, label %if.end.i206.scsi_set_medium_removal.exit_crit_edge

if.end.i206.scsi_set_medium_removal.exit_crit_edge: ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_set_medium_removal.exit

if.then10.i:                                      ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %removable.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 8)
  %bf.load13.i = load i64, ptr %removable.i, align 4
  %bf.set.i = or i64 %bf.load13.i, 576460752303423488
  store i64 %bf.set.i, ptr %removable.i, align 4
  br label %scsi_set_medium_removal.exit

scsi_set_medium_removal.exit:                     ; preds = %if.then10.i, %if.end.i206.scsi_set_medium_removal.exit_crit_edge, %sw.bb36.scsi_set_medium_removal.exit_crit_edge
  %retval.0.i207 = phi i32 [ 0, %sw.bb36.scsi_set_medium_removal.exit_crit_edge ], [ 0, %if.then10.i ], [ %call.i204, %if.end.i206.scsi_set_medium_removal.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i) #8
  br label %cleanup

sw.bb38:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i208) #8
  %removable.i209 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %200 = getelementptr inbounds i8, ptr %scsi_cmd.i208, i32 6
  %201 = call ptr @memset(ptr %200, i32 255, i32 10)
  %202 = ptrtoint ptr %removable.i209 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 8)
  %bf.load.i210 = load i64, ptr %removable.i209, align 4
  %203 = and i64 %bf.load.i210, -8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8070450532247928832, i64 %203)
  %.not.i211 = icmp eq i64 %203, -8070450532247928832
  br i1 %.not.i211, label %if.end.i214, label %sw.bb38.scsi_set_medium_removal.exit219_crit_edge

sw.bb38.scsi_set_medium_removal.exit219_crit_edge: ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_set_medium_removal.exit219

if.end.i214:                                      ; preds = %sw.bb38
  %204 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i208, i32 0, i32 1
  %205 = ptrtoint ptr %scsi_cmd.i208 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 30, ptr %scsi_cmd.i208, align 1
  %206 = call ptr @memset(ptr %204, i32 0, i32 5)
  %call.i212 = call fastcc i32 @ioctl_internal_command(ptr noundef %sdev, ptr noundef nonnull %scsi_cmd.i208, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp.i213 = icmp eq i32 %call.i212, 0
  br i1 %cmp.i213, label %if.then10.i217, label %if.end.i214.scsi_set_medium_removal.exit219_crit_edge

if.end.i214.scsi_set_medium_removal.exit219_crit_edge: ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %scsi_set_medium_removal.exit219

if.then10.i217:                                   ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %removable.i209 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 8)
  %bf.load13.i215 = load i64, ptr %removable.i209, align 4
  %bf.clear14.i216 = and i64 %bf.load13.i215, -576460752303423489
  store i64 %bf.clear14.i216, ptr %removable.i209, align 4
  br label %scsi_set_medium_removal.exit219

scsi_set_medium_removal.exit219:                  ; preds = %if.then10.i217, %if.end.i214.scsi_set_medium_removal.exit219_crit_edge, %sw.bb38.scsi_set_medium_removal.exit219_crit_edge
  %retval.0.i218 = phi i32 [ 0, %sw.bb38.scsi_set_medium_removal.exit219_crit_edge ], [ 0, %if.then10.i217 ], [ %call.i212, %if.end.i214.scsi_set_medium_removal.exit219_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i208) #8
  br label %cleanup

sw.bb40:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = call i32 @scsi_test_unit_ready(ptr noundef %sdev, i32 noundef 1000, i32 noundef 5, ptr noundef nonnull %sense_hdr) #8
  br label %cleanup

sw.bb42:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i220) #8
  %208 = getelementptr inbounds i8, ptr %cdb.i220, i32 1
  %209 = call ptr @memset(ptr %208, i32 0, i32 15)
  %210 = ptrtoint ptr %cdb.i220 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 27, ptr %cdb.i220, align 1
  %arrayidx1.i221 = getelementptr inbounds [16 x i8], ptr %cdb.i220, i32 0, i32 4
  %211 = ptrtoint ptr %arrayidx1.i221 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %arrayidx1.i221, align 1
  %call.i222 = call fastcc i32 @ioctl_internal_command(ptr noundef %sdev, ptr noundef nonnull %cdb.i220, i32 noundef 6000) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i220) #8
  br label %cleanup

sw.bb44:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i223) #8
  %212 = getelementptr inbounds i8, ptr %cdb.i223, i32 1
  %213 = call ptr @memset(ptr %212, i32 0, i32 15)
  %214 = ptrtoint ptr %cdb.i223 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 27, ptr %cdb.i223, align 1
  %call.i225 = call fastcc i32 @ioctl_internal_command(ptr noundef %sdev, ptr noundef nonnull %cdb.i223, i32 noundef 6000) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i223) #8
  br label %cleanup

sw.bb46:                                          ; preds = %sw.epilog
  %215 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %sdev, align 8
  %parent.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %216, i32 0, i32 49, i32 1
  %217 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i226 = icmp eq ptr %218, null
  br i1 %tobool.not.i226, label %sw.bb46.cleanup_crit_edge, label %if.end.i228

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i228:                                      ; preds = %sw.bb46
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i227 = icmp eq ptr %220, null
  br i1 %tobool.not.i.i227, label %if.end.i.i, label %if.end.i228.dev_name.exit.i_crit_edge

if.end.i228.dev_name.exit.i_crit_edge:            ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #10
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %218, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i228.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %222, %if.end.i.i ], [ %220, %if.end.i228.dev_name.exit.i_crit_edge ]
  %call2.i = tail call i32 @strlen(ptr noundef %retval.0.i.i) #14
  %223 = tail call i32 @llvm.umin.i32(i32 %call2.i, i32 20) #8
  tail call void @__check_object_size(ptr noundef %retval.0.i.i, i32 noundef %223, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i.i237 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i237, label %dev_name.exit.i.copy_to_user.exit.i247_crit_edge, label %if.end.i.i.i241

dev_name.exit.i.copy_to_user.exit.i247_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i247

if.end.i.i.i241:                                  ; preds = %dev_name.exit.i
  %224 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 %223, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i.i239 = extractvalue { i32, i32 } %224, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i239)
  %cmp.i6.i.i240 = icmp eq i32 %asmresult.i.i.i239, 0
  br i1 %cmp.i6.i.i240, label %if.then2.i.i.i244, label %if.end.i.i.i241.copy_to_user.exit.i247_crit_edge

if.end.i.i.i241.copy_to_user.exit.i247_crit_edge: ; preds = %if.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.i247

if.then2.i.i.i244:                                ; preds = %if.end.i.i.i241
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i242 = tail call zeroext i1 @__kasan_check_read(ptr noundef %retval.0.i.i, i32 noundef %223) #8
  %call.i12.i.i.i243 = tail call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef %retval.0.i.i, i32 noundef %223) #8
  br label %copy_to_user.exit.i247

copy_to_user.exit.i247:                           ; preds = %if.then2.i.i.i244, %if.end.i.i.i241.copy_to_user.exit.i247_crit_edge, %dev_name.exit.i.copy_to_user.exit.i247_crit_edge
  %n.addr.0.i.i245 = phi i32 [ %223, %dev_name.exit.i.copy_to_user.exit.i247_crit_edge ], [ %call.i12.i.i.i243, %if.then2.i.i.i244 ], [ %223, %if.end.i.i.i241.copy_to_user.exit.i247_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i245)
  %tobool4.not.i = icmp eq i32 %n.addr.0.i.i245, 0
  %spec.select.i246 = select i1 %tobool4.not.i, i32 0, i32 -14
  br label %cleanup

sw.bb48:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call i32 @scsi_ioctl_reset(ptr noundef %sdev, ptr noundef %arg) #8
  br label %cleanup

sw.epilog50:                                      ; preds = %sw.epilog
  %225 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %sdev, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %226, i32 0, i32 11
  %227 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hostt, align 8
  %ioctl = getelementptr inbounds %struct.scsi_host_template, ptr %228, i32 0, i32 6
  %229 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ioctl, align 8
  %tobool.not = icmp eq ptr %230, null
  br i1 %tobool.not, label %sw.epilog50.cleanup_crit_edge, label %if.end

sw.epilog50.cleanup_crit_edge:                    ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = tail call i32 %230(ptr noundef %sdev, i32 noundef %cmd, ptr noundef %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog50.cleanup_crit_edge, %sw.bb48, %copy_to_user.exit.i247, %sw.bb46.cleanup_crit_edge, %sw.bb44, %sw.bb42, %sw.bb40, %scsi_set_medium_removal.exit219, %scsi_set_medium_removal.exit, %if.end22.i, %copy_to_user.exit.i202.cleanup_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.cleanup_crit_edge, %if.then.i179.cleanup_crit_edge, %sw.bb26, %scsi_get_idlun.exit, %sw.bb22, %sw.bb20, %scsi_cdrom_send_packet.exit, %error_free_buffer.i, %if.end8.i.i263.i.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i133.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %scsi_ioctl_sg_io.exit, %sw.bb12, %if.end4.i, %if.end.i.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb8, %sw.bb6, %if.then.i, %sw.bb4.cleanup_crit_edge, %sw.bb2
  %retval.0 = phi i32 [ %call55, %if.end ], [ %call49, %sw.bb48 ], [ %call.i225, %sw.bb44 ], [ %call.i222, %sw.bb42 ], [ %call41, %sw.bb40 ], [ %retval.0.i218, %scsi_set_medium_removal.exit219 ], [ %retval.0.i207, %scsi_set_medium_removal.exit ], [ %170, %sw.bb26 ], [ %162, %scsi_get_idlun.exit ], [ %call.i160, %sw.bb22 ], [ %call.i157, %sw.bb20 ], [ %retval.0.i156, %scsi_cdrom_send_packet.exit ], [ %retval.0.i125, %scsi_ioctl_sg_io.exit ], [ %43, %sw.bb12 ], [ %29, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %11, %sw.bb2 ], [ -22, %sw.epilog50.cleanup_crit_edge ], [ %asmresult.i, %sw.bb4.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end4.i ], [ %asmresult.i109, %sw.bb10.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %err.1.i, %error_free_buffer.i ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -14, %if.end.i133.cleanup_crit_edge ], [ -14, %if.end5.i.cleanup_crit_edge ], [ -22, %if.end20.i.cleanup_crit_edge ], [ -14, %if.end23.i.cleanup_crit_edge ], [ -12, %if.end8.i.i263.i.cleanup_crit_edge ], [ 1, %if.end22.i ], [ -14, %if.then.i179.cleanup_crit_edge ], [ -14, %copy_to_user.exit.i202.cleanup_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.cleanup_crit_edge ], [ -6, %sw.bb46.cleanup_crit_edge ], [ %spec.select.i246, %copy_to_user.exit.i247 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef %sdev, i32 noundef %cmd, i1 noundef zeroext %ndelay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8836, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 8836
  %0 = and i1 %cmp, %ndelay
  br i1 %0, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdev, align 8
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 48
  %3 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shost_state.i, align 4
  %.off.i = add i32 %4, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.return_crit_edge, label %scsi_host_in_recovery.exit

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

scsi_host_in_recovery.exit:                       ; preds = %if.then
  %tmf_in_progress.i = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 36
  %5 = ptrtoint ptr %tmf_in_progress.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %tmf_in_progress.i, align 8
  %6 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not = icmp eq i16 %6, 0
  br i1 %tobool1.not, label %scsi_host_in_recovery.exit.if.end7_crit_edge, label %scsi_host_in_recovery.exit.return_crit_edge

scsi_host_in_recovery.exit.return_crit_edge:      ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

scsi_host_in_recovery.exit.if.end7_crit_edge:     ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %sdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.return_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %scsi_host_in_recovery.exit.if.end7_crit_edge
  br label %return

return:                                           ; preds = %if.end7, %if.else.return_crit_edge, %scsi_host_in_recovery.exit.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -11, %scsi_host_in_recovery.exit.return_crit_edge ], [ -19, %if.else.return_crit_edge ], [ -11, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_io(ptr nocapture noundef readonly %sdev, ptr nocapture noundef %hdr, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %i = alloca %struct.iov_iter, align 8
  %iov = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %1)
  %cmp.not = icmp eq i32 %1, 83
  br i1 %cmp.not, label %if.end, label %entry.cleanup69_crit_edge

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end:                                           ; preds = %entry
  %dxfer_len = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 5
  %2 = ptrtoint ptr %dxfer_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dxfer_len, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %4 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_queue, align 4
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 3
  %6 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_hw_sectors.i, align 4
  %shl = shl i32 %7, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl)
  %cmp1 = icmp ugt i32 %3, %shl
  br i1 %cmp1, label %if.end.cleanup69_crit_edge, label %if.end3

if.end.cleanup69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  %dxfer_direction = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 1
  %8 = ptrtoint ptr %dxfer_direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dxfer_direction, align 4
  %switch.tableidx = add i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %if.then5.cleanup69_crit_edge

if.then5.cleanup69_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

switch.lookup:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sg_io, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end7

if.end7:                                          ; preds = %switch.lookup, %if.end3.if.end7_crit_edge
  %tobool12.not = phi i32 [ 34, %if.end3.if.end7_crit_edge ], [ %switch.load, %switch.lookup ]
  %flags = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 10
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp ne i32 %and, 0
  %call13 = tail call ptr @scsi_alloc_request(ptr noundef %5, i32 noundef %tobool12.not, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call13 to i32
  br label %cleanup69

if.end17:                                         ; preds = %if.end7
  %add.ptr.i.i = getelementptr %struct.request, ptr %call13, i32 1
  %cmd_len = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 2
  %15 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cmp19 = icmp ugt i8 %16, 16
  br i1 %cmp19, label %if.end8.i.i, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end8.i.i:                                      ; preds = %if.end17
  %conv = zext i8 %16 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #13
  %cmd = getelementptr %struct.request, ptr %call13, i32 1, i32 4
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %cmd, align 4
  %tobool26.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not, label %if.end8.i.i.out_put_request_crit_edge, label %if.end29thread-pre-split

if.end8.i.i.out_put_request_crit_edge:            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_request

if.end29thread-pre-split:                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %cmd_len, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %if.end17.if.end29_crit_edge
  %19 = phi i8 [ %.pr, %if.end29thread-pre-split ], [ %16, %if.end17.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp.i113 = icmp ult i8 %19, 6
  br i1 %cmp.i113, label %if.end29.out_free_cdb_crit_edge, label %if.end.i

if.end29.out_free_cdb_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_cdb

if.end.i:                                         ; preds = %if.end29
  %conv.i = zext i8 %19 to i32
  %cmd.i = getelementptr %struct.request, ptr %call13, i32 1, i32 4
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd.i, align 4
  %cmdp.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 7
  %22 = ptrtoint ptr %cmdp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmdp.i, align 4
  tail call void @__check_object_size(ptr noundef %21, i32 noundef %conv.i, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.then11.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 %conv.i, i32 -1226833920) #11, !srcloc !51
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %21, i32 noundef %conv.i) #8
  %25 = tail call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !52
  %and.i.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %21, ptr noundef %23, i32 noundef %conv.i) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !48

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i_crit_edge
  %res.0.i.i50.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %conv.i, %if.end.i.if.then11.i.i.i_crit_edge ], [ %conv.i, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %conv.i, %res.0.i.i50.i
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %sub.i.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i50.i)
  br label %out_free_cdb

if.end6.i:                                        ; preds = %if.end.i.i.i
  %29 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd.i, align 4
  %call8.i = tail call zeroext i1 @scsi_cmd_allowed(ptr noundef %30, i32 noundef %mode) #8
  br i1 %call8.i, label %if.end10.i, label %if.end6.i.out_free_cdb_crit_edge

if.end6.i.out_free_cdb_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_cdb

if.end10.i:                                       ; preds = %if.end6.i
  %31 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cmd_len, align 4
  %conv12.i = zext i8 %32 to i16
  %cmd_len13.i = getelementptr %struct.request, ptr %call13, i32 1, i32 5
  %33 = ptrtoint ptr %cmd_len13.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv12.i, ptr %cmd_len13.i, align 4
  %timeout.i = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 9
  %34 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %35) #8
  %timeout15.i = getelementptr inbounds %struct.request, ptr %call13, i32 0, i32 7
  %36 = ptrtoint ptr %timeout15.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call2.i.i, ptr %timeout15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool17.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %if.end20.thread.i

if.end20.thread.i:                                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %timeout15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i = load i32, ptr %timeout15.i, align 4
  br label %if.end25.i

if.end20.i:                                       ; preds = %if.end10.i
  %sg_timeout.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 63
  %38 = ptrtoint ptr %sg_timeout.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg_timeout.i, align 8
  %40 = ptrtoint ptr %timeout15.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %timeout15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool22.not.i = icmp eq i32 %39, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end34.sink.split_crit_edge, label %if.end20.i.if.end25.i_crit_edge

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.end20.i.if.end34.sink.split_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.sink.split

if.end25.i:                                       ; preds = %if.end20.i.if.end25.i_crit_edge, %if.end20.thread.i
  %41 = phi i32 [ %.pr.i, %if.end20.thread.i ], [ %39, %if.end20.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 700, i32 %41)
  %cmp27.i = icmp ult i32 %41, 700
  br i1 %cmp27.i, label %if.end25.i.if.end34.sink.split_crit_edge, label %if.end25.i.if.end34_crit_edge

if.end25.i.if.end34_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end25.i.if.end34.sink.split_crit_edge:         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.end25.i.if.end34.sink.split_crit_edge, %if.end20.i.if.end34.sink.split_crit_edge
  %.sink = phi i32 [ 6000, %if.end20.i.if.end34.sink.split_crit_edge ], [ 700, %if.end25.i.if.end34.sink.split_crit_edge ]
  %42 = ptrtoint ptr %timeout15.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %timeout15.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.end25.i.if.end34_crit_edge
  %iovec_count = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 4
  %43 = ptrtoint ptr %iovec_count to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %iovec_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool35.not = icmp eq i16 %44, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i) #8
  %45 = call ptr @memset(ptr %i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov) #8
  %46 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %iov, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %call13, i32 0, i32 3
  %47 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %48, 1
  %dxferp = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 6
  %49 = ptrtoint ptr %dxferp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dxferp, align 4
  %conv42 = zext i16 %44 to i32
  %call43 = call i32 @import_iovec(i32 noundef %and.i, ptr noundef %50, i32 noundef %conv42, i32 noundef 0, ptr noundef nonnull %iov, ptr noundef nonnull %i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.then36
  %51 = ptrtoint ptr %dxfer_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dxfer_len, align 4
  %count1.i = getelementptr inbounds %struct.iov_iter, ptr %i, i32 0, i32 4
  %53 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp.i117 = icmp ugt i32 %54, %52
  br i1 %cmp.i117, label %if.then.i, label %if.end47.cleanup.thread_crit_edge

if.end47.cleanup.thread_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %count1.i, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i, %if.end47.cleanup.thread_crit_edge
  %56 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call13, align 8
  %call50 = call i32 @blk_rq_map_user_iov(ptr noundef %57, ptr noundef %call13, ptr noundef null, ptr noundef nonnull %i, i32 noundef 3264) #8
  %58 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iov, align 4
  call void @kfree(ptr noundef %59) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i) #8
  br label %if.end60

cleanup:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i) #8
  br label %out_free_cdb

if.else:                                          ; preds = %if.end34
  %60 = ptrtoint ptr %dxfer_len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dxfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool53.not = icmp eq i32 %61, 0
  br i1 %tobool53.not, label %if.else.if.end63_crit_edge, label %if.then54

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call13, align 8
  %dxferp56 = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 6
  %64 = ptrtoint ptr %dxferp56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dxferp56, align 4
  %call58 = tail call i32 @blk_rq_map_user(ptr noundef %63, ptr noundef %call13, ptr noundef null, ptr noundef %65, i32 noundef %61, i32 noundef 3264) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %cleanup.thread
  %ret.1 = phi i32 [ %call58, %if.then54 ], [ %call50, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool61.not = icmp eq i32 %ret.1, 0
  br i1 %tobool61.not, label %if.end60.if.end63_crit_edge, label %if.end60.out_free_cdb_crit_edge

if.end60.out_free_cdb_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_cdb

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %if.end60.if.end63_crit_edge, %if.else.if.end63_crit_edge
  %bio64 = getelementptr inbounds %struct.request, ptr %call13, i32 0, i32 10
  %66 = ptrtoint ptr %bio64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bio64, align 8
  %retries = getelementptr inbounds %struct.scsi_request, ptr %add.ptr.i.i, i32 0, i32 6
  %68 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %retries, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %call66 = call zeroext i8 @blk_execute_rq(ptr noundef %call13, i1 noundef zeroext %tobool8.not) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %70, %69
  %call67 = call i32 @jiffies_to_msecs(i32 noundef %sub) #8
  %duration = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 20
  %71 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call67, ptr %duration, align 4
  %call68 = call fastcc i32 @scsi_complete_sghdr_rq(ptr noundef %call13, ptr noundef %hdr, ptr noundef %67)
  br label %out_free_cdb

out_free_cdb:                                     ; preds = %if.end63, %if.end60.out_free_cdb_crit_edge, %cleanup, %if.end6.i.out_free_cdb_crit_edge, %if.then11.i.i.i, %if.end29.out_free_cdb_crit_edge
  %ret.2 = phi i32 [ %call43, %cleanup ], [ %ret.1, %if.end60.out_free_cdb_crit_edge ], [ %call68, %if.end63 ], [ -14, %if.then11.i.i.i ], [ -1, %if.end6.i.out_free_cdb_crit_edge ], [ -90, %if.end29.out_free_cdb_crit_edge ]
  %cmd.i119 = getelementptr %struct.request, ptr %call13, i32 1, i32 4
  %72 = ptrtoint ptr %cmd.i119 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cmd.i119, align 4
  %cmp.not.i = icmp eq ptr %73, %add.ptr.i.i
  br i1 %cmp.not.i, label %out_free_cdb.out_put_request_crit_edge, label %if.then.i120

out_free_cdb.out_put_request_crit_edge:           ; preds = %out_free_cdb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_request

if.then.i120:                                     ; preds = %out_free_cdb
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %73) #8
  br label %out_put_request

out_put_request:                                  ; preds = %if.then.i120, %out_free_cdb.out_put_request_crit_edge, %if.end8.i.i.out_put_request_crit_edge
  %ret.3 = phi i32 [ -12, %if.end8.i.i.out_put_request_crit_edge ], [ %ret.2, %out_free_cdb.out_put_request_crit_edge ], [ %ret.2, %if.then.i120 ]
  call void @blk_mq_free_request(ptr noundef %call13) #8
  br label %cleanup69

cleanup69:                                        ; preds = %out_put_request, %if.then15, %if.then5.cleanup69_crit_edge, %if.end.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.0 = phi i32 [ %14, %if.then15 ], [ %ret.3, %out_put_request ], [ -22, %entry.cleanup69_crit_edge ], [ -5, %if.end.cleanup69_crit_edge ], [ -22, %if.then5.cleanup69_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user_iov(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_complete_sghdr_rq(ptr nocapture noundef readonly %rq, ptr nocapture noundef %hdr, ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr %struct.request, ptr %rq, i32 1, i32 6
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result, align 4
  %conv = trunc i32 %1 to i8
  %status = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 13
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %status, align 4
  %3 = load i32, ptr %result, align 4
  %4 = trunc i32 %3 to i8
  %5 = lshr i8 %4, 1
  %masked_status = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 14
  %6 = ptrtoint ptr %masked_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %masked_status, align 1
  %msg_status = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 15
  %7 = ptrtoint ptr %msg_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %msg_status, align 2
  %8 = load i32, ptr %result, align 4
  %9 = lshr i32 %8, 16
  %10 = trunc i32 %9 to i16
  %conv7 = and i16 %10, 255
  %host_status = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 17
  %11 = ptrtoint ptr %host_status to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %host_status, align 4
  %driver_status = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 18
  %and.i = and i32 %1, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp1.i.not = icmp eq i32 %and.i, 2
  %spec.store.select = select i1 %cmp1.i.not, i16 8, i16 0
  %12 = ptrtoint ptr %driver_status to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.store.select, ptr %driver_status, align 2
  %info = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 21
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %tobool14.not = icmp ult i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv7)
  %tobool17.not = icmp eq i16 %conv7, 0
  %or.cond = select i1 %tobool14.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %lor.lhs.false18, label %entry.if.then22_crit_edge

entry.if.then22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false18:                                  ; preds = %entry
  %14 = ptrtoint ptr %driver_status to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %driver_status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool21.not = icmp eq i16 %15, 0
  br i1 %tobool21.not, label %lor.lhs.false18.if.end24_crit_edge, label %lor.lhs.false18.if.then22_crit_edge

lor.lhs.false18.if.then22_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false18.if.end24_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %lor.lhs.false18.if.then22_crit_edge, %entry.if.then22_crit_edge
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %info, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %lor.lhs.false18.if.end24_crit_edge
  %resid_len = getelementptr %struct.request, ptr %rq, i32 1, i32 8
  %17 = ptrtoint ptr %resid_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resid_len, align 4
  %resid = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 19
  %19 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %resid, align 4
  %sb_len_wr = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 16
  %20 = ptrtoint ptr %sb_len_wr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %sb_len_wr, align 1
  %sense_len = getelementptr %struct.request, ptr %rq, i32 1, i32 7
  %21 = ptrtoint ptr %sense_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sense_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool25.not = icmp eq i32 %22, 0
  br i1 %tobool25.not, label %if.end24._crit_edge, label %land.lhs.true

if.end24._crit_edge:                              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %32

land.lhs.true:                                    ; preds = %if.end24
  %sbp = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 8
  %23 = ptrtoint ptr %sbp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sbp, align 4
  %tobool26.not = icmp eq ptr %24, null
  br i1 %tobool26.not, label %land.lhs.true._crit_edge, label %if.then27

land.lhs.true._crit_edge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %32

if.then27:                                        ; preds = %land.lhs.true
  %mx_sb_len = getelementptr inbounds %struct.sg_io_hdr, ptr %hdr, i32 0, i32 3
  %25 = ptrtoint ptr %mx_sb_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mx_sb_len, align 1
  %conv28 = zext i8 %26 to i32
  %27 = tail call i32 @llvm.umin.i32(i32 %22, i32 %conv28)
  %sense = getelementptr %struct.request, ptr %rq, i32 1, i32 9
  %28 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sense, align 4
  tail call void @__check_object_size(ptr noundef %29, i32 noundef %27, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then27.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then27.copy_to_user.exit_crit_edge:            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then27
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %24, i32 %27, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %29, i32 noundef %27) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %24, ptr noundef %29, i32 noundef %27) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then27.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %27, %if.then27.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %27, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool33.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool33.not, label %if.then34, label %if.end38

if.then34:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv35 = trunc i32 %27 to i8
  %31 = ptrtoint ptr %sb_len_wr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv35, ptr %sb_len_wr, align 1
  br label %32

if.end38:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 @blk_rq_unmap_user(ptr noundef %bio) #8
  br label %33

32:                                               ; preds = %if.then34, %land.lhs.true._crit_edge, %if.end24._crit_edge
  %call3973 = tail call i32 @blk_rq_unmap_user(ptr noundef %bio) #8
  br label %33

33:                                               ; preds = %32, %if.end38
  %34 = phi i32 [ %call3973, %32 ], [ -14, %if.end38 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_kern(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !32, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab_scsi_set_medium_removal, !1, !"__ksymtab_scsi_set_medium_removal", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_ioctl.c", i32 142, i32 1}
!2 = !{ptr @__ksymtab_scsi_cmd_allowed, !3, !"__ksymtab_scsi_cmd_allowed", i1 false, i1 false}
!3 = !{!"../drivers/scsi/scsi_ioctl.c", i32 343, i32 1}
!4 = !{ptr @__ksymtab_put_sg_io_hdr, !5, !"__ksymtab_put_sg_io_hdr", i1 false, i1 false}
!5 = !{!"../drivers/scsi/scsi_ioctl.c", i32 680, i32 1}
!6 = !{ptr @__ksymtab_get_sg_io_hdr, !7, !"__ksymtab_get_sg_io_hdr", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_ioctl.c", i32 725, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/scsi_ioctl.c", i32 900, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @scsi_ioctl._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @scsi_ioctl._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_scsi_ioctl, !15, !"__ksymtab_scsi_ioctl", i1 false, i1 false}
!15 = !{!"../drivers/scsi/scsi_ioctl.c", i32 964, i32 1}
!16 = !{ptr @__ksymtab_scsi_ioctl_block_when_processing_errors, !17, !"__ksymtab_scsi_ioctl_block_when_processing_errors", i1 false, i1 false}
!17 = !{!"../drivers/scsi/scsi_ioctl.c", i32 982, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/scsi_ioctl.c", i32 73, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/scsi_ioctl.c", i32 79, i32 2}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/scsi_ioctl.c", i32 90, i32 5}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/scsi_ioctl.c", i32 108, i32 4}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/scsi_ioctl.c", i32 116, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!36 = distinct !{null, !37, !"sg_version_num", i1 false, i1 false}
!37 = !{!"../drivers/scsi/scsi_ioctl.c", i32 172, i32 19}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2152514907, i64 2152514932}
!51 = !{i64 2152514226, i64 2152514251}
!52 = !{i64 5009781}
!53 = !{i64 5009978}
!54 = !{i64 2152495211}
!55 = !{i64 2154848612, i64 2154848892, i64 2154849226, i64 2154849560}
!56 = !{i64 2154860109, i64 2154860389, i64 2154860723, i64 2154861057}
!57 = !{i64 2154871485, i64 2154871765, i64 2154872099, i64 2154872433}
!58 = !{i64 2154882958, i64 2154883238, i64 2154883572, i64 2154883906}
!59 = !{i64 2154894621, i64 2154894901, i64 2154895235, i64 2154895569}
!60 = !{i64 2154910669, i64 2154910949, i64 2154911283, i64 2154911617}
!61 = !{i64 2154922896, i64 2154923176, i64 2154923510, i64 2154923844}
!62 = !{i64 2154930122, i64 2154930402, i64 2154930736, i64 2154931070}
!63 = !{i64 2154951594, i64 2154951874, i64 2154952208, i64 2154952542}
!64 = !{i64 2154829410, i64 2154829690, i64 2154830024, i64 2154830358}
