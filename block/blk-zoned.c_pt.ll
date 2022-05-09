; ModuleID = '/llk/IR_all_yes/block/blk-zoned.c_pt.bc'
source_filename = "../block/blk-zoned.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blk_zone_cond_str\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_zone_cond_str\09\09\09\09"
module asm "\09.long\09__crc_blk_zone_cond_str\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_zone_cond_str:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_zone_cond_str\22\09\09\09\09\09"
module asm "__kstrtabns_blk_zone_cond_str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_req_needs_zone_write_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_req_needs_zone_write_lock\09\09\09\09"
module asm "\09.long\09__crc_blk_req_needs_zone_write_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_req_needs_zone_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_req_needs_zone_write_lock\22\09\09\09\09\09"
module asm "__kstrtabns_blk_req_needs_zone_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_req_zone_write_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_req_zone_write_trylock\09\09\09\09"
module asm "\09.long\09__crc_blk_req_zone_write_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_req_zone_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_req_zone_write_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_blk_req_zone_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__blk_req_zone_write_lock\22, \22a\22\09"
module asm "\09.weak\09__crc___blk_req_zone_write_lock\09\09\09\09"
module asm "\09.long\09__crc___blk_req_zone_write_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_req_zone_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_req_zone_write_lock\22\09\09\09\09\09"
module asm "__kstrtabns___blk_req_zone_write_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__blk_req_zone_write_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc___blk_req_zone_write_unlock\09\09\09\09"
module asm "\09.long\09__crc___blk_req_zone_write_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_req_zone_write_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_req_zone_write_unlock\22\09\09\09\09\09"
module asm "__kstrtabns___blk_req_zone_write_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkdev_nr_zones\22, \22a\22\09"
module asm "\09.weak\09__crc_blkdev_nr_zones\09\09\09\09"
module asm "\09.long\09__crc_blkdev_nr_zones\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_nr_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_nr_zones\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_nr_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkdev_report_zones\22, \22a\22\09"
module asm "\09.weak\09__crc_blkdev_report_zones\09\09\09\09"
module asm "\09.long\09__crc_blkdev_report_zones\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_report_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_report_zones\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_report_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkdev_zone_mgmt\22, \22a\22\09"
module asm "\09.weak\09__crc_blkdev_zone_mgmt\09\09\09\09"
module asm "\09.long\09__crc_blkdev_zone_mgmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_zone_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_zone_mgmt\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_zone_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_revalidate_disk_zones\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_revalidate_disk_zones\09\09\09\09"
module asm "\09.long\09__crc_blk_revalidate_disk_zones\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_revalidate_disk_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_revalidate_disk_zones\22\09\09\09\09\09"
module asm "__kstrtabns_blk_revalidate_disk_zones:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.76, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.77, %union.anon.78, %union.anon.79, %union.anon.82, ptr, ptr }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, ptr }
%union.anon.82 = type { i64, [8 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.38, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.38 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.zone_report_args = type { ptr }
%struct.blk_zone_report = type { i64, i32, i32, [0 x %struct.blk_zone] }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blk_zone_range = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.blk_revalidate_zone_args = type { ptr, ptr, ptr, i32, i64, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@blk_zone_cond_str.zone_cond_str = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@zone_cond_name = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.17, ptr @.str.18, ptr @.str.19], [32 x i8] zeroinitializer }, align 32
@__kstrtab_blk_zone_cond_str = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_zone_cond_str = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_zone_cond_str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_zone_cond_str to i32), ptr @__kstrtab_blk_zone_cond_str, ptr @__kstrtabns_blk_zone_cond_str }, section "___ksymtab_gpl+blk_zone_cond_str", align 4
@__kstrtab_blk_req_needs_zone_write_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_req_needs_zone_write_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_req_needs_zone_write_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_req_needs_zone_write_lock to i32), ptr @__kstrtab_blk_req_needs_zone_write_lock, ptr @__kstrtabns_blk_req_needs_zone_write_lock }, section "___ksymtab_gpl+blk_req_needs_zone_write_lock", align 4
@blk_req_zone_write_trylock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"block/blk-zoned.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_blk_req_zone_write_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_req_zone_write_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_req_zone_write_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_req_zone_write_trylock to i32), ptr @__kstrtab_blk_req_zone_write_trylock, ptr @__kstrtabns_blk_req_zone_write_trylock }, section "___ksymtab_gpl+blk_req_zone_write_trylock", align 4
@__blk_req_zone_write_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__blk_req_zone_write_lock.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___blk_req_zone_write_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_req_zone_write_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_req_zone_write_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_req_zone_write_lock to i32), ptr @__kstrtab___blk_req_zone_write_lock, ptr @__kstrtabns___blk_req_zone_write_lock }, section "___ksymtab_gpl+__blk_req_zone_write_lock", align 4
@__blk_req_zone_write_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___blk_req_zone_write_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_req_zone_write_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_req_zone_write_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_req_zone_write_unlock to i32), ptr @__kstrtab___blk_req_zone_write_unlock, ptr @__kstrtabns___blk_req_zone_write_unlock }, section "___ksymtab_gpl+__blk_req_zone_write_unlock", align 4
@__kstrtab_blkdev_nr_zones = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_nr_zones = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_nr_zones = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_nr_zones to i32), ptr @__kstrtab_blkdev_nr_zones, ptr @__kstrtabns_blkdev_nr_zones }, section "___ksymtab_gpl+blkdev_nr_zones", align 4
@blkdev_report_zones.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blkdev_report_zones = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_report_zones = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_report_zones = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_report_zones to i32), ptr @__kstrtab_blkdev_report_zones, ptr @__kstrtabns_blkdev_report_zones }, section "___ksymtab_gpl+blkdev_report_zones", align 4
@__kstrtab_blkdev_zone_mgmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_zone_mgmt = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_zone_mgmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_zone_mgmt to i32), ptr @__kstrtab_blkdev_zone_mgmt, ptr @__kstrtabns_blkdev_zone_mgmt }, section "___ksymtab_gpl+blkdev_zone_mgmt", align 4
@blk_revalidate_disk_zones.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@blk_revalidate_disk_zones.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@blk_revalidate_disk_zones._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.1, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: No zones reported\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"blk_revalidate_disk_zones\00", [38 x i8] zeroinitializer }, align 32
@blk_revalidate_disk_zones._entry_ptr = internal global ptr @blk_revalidate_disk_zones._entry, section ".printk_index", align 4
@blk_revalidate_disk_zones._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.1, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: Missing zones from sector %llu\0A\00", [58 x i8] zeroinitializer }, align 32
@blk_revalidate_disk_zones._entry_ptr.8 = internal global ptr @blk_revalidate_disk_zones._entry.6, section ".printk_index", align 4
@blk_revalidate_disk_zones._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.1, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: failed to revalidate zones\0A\00", [62 x i8] zeroinitializer }, align 32
@blk_revalidate_disk_zones._entry_ptr.11 = internal global ptr @blk_revalidate_disk_zones._entry.9, section ".printk_index", align 4
@__kstrtab_blk_revalidate_disk_zones = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_revalidate_disk_zones = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_revalidate_disk_zones = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_revalidate_disk_zones to i32), ptr @__kstrtab_blk_revalidate_disk_zones, ptr @__kstrtabns_blk_revalidate_disk_zones }, section "___ksymtab_gpl+blk_revalidate_disk_zones", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOT_WP\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EMPTY\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IMP_OPEN\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EXP_OPEN\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLOSED\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READONLY\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FULL\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OFFLINE\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@blk_revalidate_zone_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.1, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014%s: Invalid zoned device with non power of two zone size (%llu)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"blk_revalidate_zone_cb\00", [41 x i8] zeroinitializer }, align 32
@blk_revalidate_zone_cb._entry_ptr = internal global ptr @blk_revalidate_zone_cb._entry, section ".printk_index", align 4
@blk_revalidate_zone_cb._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.1, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014%s: Invalid zoned device with non constant zone size\0A\00", [40 x i8] zeroinitializer }, align 32
@blk_revalidate_zone_cb._entry_ptr.27 = internal global ptr @blk_revalidate_zone_cb._entry.25, section ".printk_index", align 4
@blk_revalidate_zone_cb._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.1, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: Invalid zoned device with larger last zone size\0A\00", [41 x i8] zeroinitializer }, align 32
@blk_revalidate_zone_cb._entry_ptr.30 = internal global ptr @blk_revalidate_zone_cb._entry.28, section ".printk_index", align 4
@blk_revalidate_zone_cb._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.1, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: Zone gap at sectors %llu..%llu\0A\00", [58 x i8] zeroinitializer }, align 32
@blk_revalidate_zone_cb._entry_ptr.33 = internal global ptr @blk_revalidate_zone_cb._entry.31, section ".printk_index", align 4
@blk_revalidate_zone_cb._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.1, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: Invalid zone type 0x%x at sectors %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@blk_revalidate_zone_cb._entry_ptr.36 = internal global ptr @blk_revalidate_zone_cb._entry.34, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 1074795139, i64 1074795142, i64 1074795143, i64 1074795144]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 13, i64 15]
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"zone_cond_str\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 46, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 46, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"zone_cond_name\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 24, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 84, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 592, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 602, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 622, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 25, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 26, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 27, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 28, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 29, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 30, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 31, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 32, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 156, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 494, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 503, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 509, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 517, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [21 x i8] c"../block/blk-zoned.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 543, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab___blk_req_zone_write_lock, ptr @__ksymtab___blk_req_zone_write_unlock, ptr @__ksymtab_blk_req_needs_zone_write_lock, ptr @__ksymtab_blk_req_zone_write_trylock, ptr @__ksymtab_blk_revalidate_disk_zones, ptr @__ksymtab_blk_zone_cond_str, ptr @__ksymtab_blkdev_nr_zones, ptr @__ksymtab_blkdev_report_zones, ptr @__ksymtab_blkdev_zone_mgmt, ptr @blk_revalidate_disk_zones._entry, ptr @blk_revalidate_disk_zones._entry.6, ptr @blk_revalidate_disk_zones._entry.9, ptr @blk_revalidate_disk_zones._entry_ptr, ptr @blk_revalidate_disk_zones._entry_ptr.11, ptr @blk_revalidate_disk_zones._entry_ptr.8, ptr @blk_revalidate_zone_cb._entry, ptr @blk_revalidate_zone_cb._entry.25, ptr @blk_revalidate_zone_cb._entry.28, ptr @blk_revalidate_zone_cb._entry.31, ptr @blk_revalidate_zone_cb._entry.34, ptr @blk_revalidate_zone_cb._entry_ptr, ptr @blk_revalidate_zone_cb._entry_ptr.27, ptr @blk_revalidate_zone_cb._entry_ptr.30, ptr @blk_revalidate_zone_cb._entry_ptr.33, ptr @blk_revalidate_zone_cb._entry_ptr.36, ptr @blk_zone_cond_str.zone_cond_str, ptr @.str, ptr @zone_cond_name, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_zone_cond_str.zone_cond_str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zone_cond_name to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_revalidate_disk_zones._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_revalidate_disk_zones._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_revalidate_disk_zones._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_revalidate_zone_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_revalidate_zone_cb._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_revalidate_zone_cb._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_revalidate_zone_cb._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_revalidate_zone_cb._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @blk_zone_cond_str(i32 noundef %zone_cond) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %zone_cond)
  %cmp = icmp ugt i32 %zone_cond, 15
  %0 = add nsw i32 %zone_cond, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %tobool.not = icmp ult i32 %0, 8
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [16 x ptr], ptr @zone_cond_name, i32 0, i32 %zone_cond
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  store ptr %2, ptr @blk_zone_cond_str.zone_cond_str, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load ptr, ptr @blk_zone_cond_str.zone_cond_str, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @blk_req_needs_zone_write_lock(ptr nocapture noundef readonly %rq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %seq_zones_wlock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seq_zones_wlock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags.i, align 4
  %6 = and i32 %5, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %6)
  %7 = icmp eq i32 %6, 34
  br i1 %7, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  %trunc = trunc i32 %5 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end2.return_crit_edge [
    i8 9, label %if.end2.sw.bb_crit_edge
    i8 7, label %if.end2.sw.bb_crit_edge8
    i8 1, label %if.end2.sw.bb_crit_edge9
  ]

if.end2.sw.bb_crit_edge9:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end2.sw.bb_crit_edge8:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end2.sw.bb_crit_edge:                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.end2.sw.bb_crit_edge, %if.end2.sw.bb_crit_edge8, %if.end2.sw.bb_crit_edge9
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %9 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %__sector.i.i, align 8
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %11 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %if.end.i.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i.i:                                       ; preds = %sw.bb
  %conv_zones_bitmap.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 40
  %13 = ptrtoint ptr %conv_zones_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conv_zones_bitmap.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i.return_crit_edge, label %blk_queue_zone_no.exit.i.i

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

blk_queue_zone_no.exit.i.i:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %chunk_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %15 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chunk_sectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i.i = icmp eq i32 %16, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 true) #10, !range !106
  %sub.i.op.i.i.i.i = xor i32 %17, 31
  %sub.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i
  %sh_prom.i.i.i = zext i32 %sub.i.i.i.i to i64
  %shr.i10.i.i = lshr i64 %10, %sh_prom.i.i.i
  %conv12.i.i.i = trunc i64 %shr.i10.i.i to i32
  %div3.i.i.i = lshr i32 %conv12.i.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %14, i32 %div3.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %conv12.i.i.i, 31
  %20 = shl nuw i32 1, %and.i.i.i
  %21 = and i32 %20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %phi.cmp = icmp eq i32 %21, 0
  br label %return

return:                                           ; preds = %blk_queue_zone_no.exit.i.i, %if.end.i.i.return_crit_edge, %sw.bb.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end2.return_crit_edge ], [ %phi.cmp, %blk_queue_zone_no.exit.i.i ], [ false, %sw.bb.return_crit_edge ], [ true, %if.end.i.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_req_zone_write_trylock(ptr nocapture noundef %rq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %2 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.end10.i.i, label %entry.blk_rq_zone_no.exit_crit_edge

entry.blk_rq_zone_no.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_rq_zone_no.exit

cond.end10.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %4 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %__sector.i.i, align 8
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %6 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #10, !range !106
  %sub.i.op.i.i.i = xor i32 %8, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %sh_prom.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i = lshr i64 %5, %sh_prom.i.i
  %conv12.i.i = trunc i64 %shr.i.i to i32
  br label %blk_rq_zone_no.exit

blk_rq_zone_no.exit:                              ; preds = %cond.end10.i.i, %entry.blk_rq_zone_no.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %cond.end10.i.i ], [ 0, %entry.blk_rq_zone_no.exit_crit_edge ]
  %seq_zones_wlock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %seq_zones_wlock, align 4
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef %retval.0.i.i, ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %blk_rq_zone_no.exit.cleanup_crit_edge

blk_rq_zone_no.exit.cleanup_crit_edge:            ; preds = %blk_rq_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %blk_rq_zone_no.exit
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %11 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq_flags, align 8
  %and = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end32_crit_edge, label %land.rhs

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.rhs:                                         ; preds = %if.end
  %.b46 = load i1, ptr @blk_req_zone_write_trylock.__already_done, align 1
  br i1 %.b46, label %land.rhs.if.end32_crit_edge, label %if.then10, !prof !107

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @blk_req_zone_write_trylock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 84, i32 noundef 9, ptr noundef null) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then10, %land.rhs.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %13 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_flags, align 8
  %or = or i32 %14, 524288
  store i32 %or, ptr %rq_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %blk_rq_zone_no.exit.cleanup_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__blk_req_zone_write_lock(ptr nocapture noundef %rq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %2 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.end10.i.i, label %entry.blk_rq_zone_no.exit_crit_edge

entry.blk_rq_zone_no.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_rq_zone_no.exit

cond.end10.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %4 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %__sector.i.i, align 8
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %6 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #10, !range !106
  %sub.i.op.i.i.i = xor i32 %8, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %sh_prom.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i = lshr i64 %5, %sh_prom.i.i
  %conv12.i.i = trunc i64 %shr.i.i to i32
  br label %blk_rq_zone_no.exit

blk_rq_zone_no.exit:                              ; preds = %cond.end10.i.i, %entry.blk_rq_zone_no.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %cond.end10.i.i ], [ 0, %entry.blk_rq_zone_no.exit_crit_edge ]
  %seq_zones_wlock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %seq_zones_wlock, align 4
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef %retval.0.i.i, ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end39.critedge, label %land.rhs

land.rhs:                                         ; preds = %blk_rq_zone_no.exit
  %.b104 = load i1, ptr @__blk_req_zone_write_lock.__already_done, align 1
  br i1 %.b104, label %land.rhs.return_crit_edge, label %if.then, !prof !107

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__blk_req_zone_write_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end39.critedge:                                ; preds = %blk_rq_zone_no.exit
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %11 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq_flags, align 8
  %and = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end39.critedge.if.end86_crit_edge, label %land.rhs48

if.end39.critedge.if.end86_crit_edge:             ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.rhs48:                                       ; preds = %if.end39.critedge
  %.b102103 = load i1, ptr @__blk_req_zone_write_lock.__already_done.2, align 1
  br i1 %.b102103, label %land.rhs48.if.end86_crit_edge, label %if.then59, !prof !107

land.rhs48.if.end86_crit_edge:                    ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__blk_req_zone_write_lock.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 97, i32 noundef 9, ptr noundef null) #10
  br label %if.end86

if.end86:                                         ; preds = %if.then59, %land.rhs48.if.end86_crit_edge, %if.end39.critedge.if.end86_crit_edge
  %13 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_flags, align 8
  %or = or i32 %14, 524288
  store i32 %or, ptr %rq_flags, align 8
  br label %return

return:                                           ; preds = %if.end86, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__blk_req_zone_write_unlock(ptr nocapture noundef %rq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags, align 8
  %and = and i32 %1, -524289
  store i32 %and, ptr %rq_flags, align 8
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq, align 8
  %seq_zones_wlock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seq_zones_wlock, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %if.then

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then:                                          ; preds = %entry
  %zoned.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 27
  %6 = ptrtoint ptr %zoned.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zoned.i.i.i.i, align 4
  %call.off.i.i.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %call.off.i.i.i, 2
  br i1 %switch.i.i.i, label %cond.end10.i.i, label %if.then.blk_rq_zone_no.exit_crit_edge

if.then.blk_rq_zone_no.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_rq_zone_no.exit

cond.end10.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %8 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %__sector.i.i, align 8
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 5
  %10 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #10, !range !106
  %sub.i.op.i.i.i = xor i32 %12, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %sh_prom.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i = lshr i64 %9, %sh_prom.i.i
  %conv12.i.i = trunc i64 %shr.i.i to i32
  br label %blk_rq_zone_no.exit

blk_rq_zone_no.exit:                              ; preds = %cond.end10.i.i, %if.then.blk_rq_zone_no.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %cond.end10.i.i ], [ 0, %if.then.blk_rq_zone_no.exit_crit_edge ]
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef %retval.0.i.i, ptr noundef nonnull %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.rhs, label %blk_rq_zone_no.exit.if.end42_crit_edge

blk_rq_zone_no.exit.if.end42_crit_edge:           ; preds = %blk_rq_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.rhs:                                         ; preds = %blk_rq_zone_no.exit
  %.b48 = load i1, ptr @__blk_req_zone_write_unlock.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end42_crit_edge, label %if.then13, !prof !107

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__blk_req_zone_write_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 9, ptr noundef null) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then13, %land.rhs.if.end42_crit_edge, %blk_rq_zone_no.exit.if.end42_crit_edge, %entry.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @blkdev_nr_zones(ptr nocapture noundef readonly %disk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %2 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %4 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chunk_sectors.i, align 4
  %conv.i17 = zext i32 %5 to i64
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %6 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %add = add nsw i64 %conv.i17, -1
  %sub = add i64 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i5.i.i = icmp eq i32 %5, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #10, !range !106
  %sub.i6.i.i.op = xor i32 %10, 31
  %sub.i = select i1 %tobool.not.i5.i.i, i32 -1, i32 %sub.i6.i.i.op
  %sh_prom = zext i32 %sub.i to i64
  %shr = lshr i64 %sub, %sh_prom
  %conv = trunc i64 %shr to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_report_zones(ptr nocapture noundef readonly %bdev, i64 noundef %sector, i32 noundef %nr_zones, ptr noundef %cb, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %6 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_queue.i, align 4
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 27
  %8 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fops = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fops, align 8
  %report_zones = getelementptr inbounds %struct.block_device_operations, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %report_zones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %report_zones, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %lor.lhs.false
  %.b58 = load i1, ptr @blkdev_report_zones.__already_done, align 1
  br i1 %.b58, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !107

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @blkdev_report_zones.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 154, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_zones)
  %tobool42.not = icmp ne i32 %nr_zones, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %sector)
  %cmp.not = icmp ugt i64 %5, %sector
  %or.cond = select i1 %tobool42.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 %13(ptr noundef %1, i64 noundef %sector, i32 noundef %nr_zones, ptr noundef %cb, ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end41.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end45 ], [ -95, %if.then ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ -95, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_zone_mgmt(ptr noundef %bdev, i32 noundef %op, i64 noundef %sector, i64 noundef %nr_sectors, i32 noundef %gfp_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %0 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i, align 4
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %2 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %4 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chunk_sectors.i, align 4
  %conv.i81 = zext i32 %5 to i64
  %bd_disk82 = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %6 = ptrtoint ptr %bd_disk82 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk82, align 8
  %part0.i83 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part0.i83 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0.i83, align 4
  %bd_nr_sectors.i.i84 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bd_nr_sectors.i.i84 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bd_nr_sectors.i.i84, align 8
  %add85 = add i64 %nr_sectors, %sector
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 4
  %12 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bd_read_only.i, align 8, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bd_read_only.i.i, align 8, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 12
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end6, label %bdev_read_only.exit.cleanup_crit_edge

bdev_read_only.exit.cleanup_crit_edge:            ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %bdev_read_only.exit
  %trunc.i = trunc i32 %op to i8
  %19 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %trunc.i, label %if.end6.cleanup_crit_edge [
    i8 15, label %if.end6.if.end9_crit_edge
    i8 10, label %if.end6.if.end9_crit_edge93
    i8 11, label %if.end6.if.end9_crit_edge94
    i8 12, label %if.end6.if.end9_crit_edge95
  ]

if.end6.if.end9_crit_edge95:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end6.if.end9_crit_edge94:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end6.if.end9_crit_edge93:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.end6.if.end9_crit_edge93, %if.end6.if.end9_crit_edge94, %if.end6.if.end9_crit_edge95
  call void @__sanitizer_cov_trace_cmp8(i64 %add85, i64 %sector)
  %cmp.not = icmp ule i64 %add85, %sector
  call void @__sanitizer_cov_trace_cmp8(i64 %add85, i64 %11)
  %cmp10 = icmp ugt i64 %add85, %11
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %sub = add nsw i64 %conv.i81, -1
  %and = and i64 %sub, %sector
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool13.not = icmp eq i64 %and, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %and17 = and i64 %sub, %nr_sectors
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add85, i64 %11)
  %cmp19.not = icmp eq i64 %add85, %11
  %or.cond77 = select i1 %tobool18.not, i1 true, i1 %cmp19.not
  br i1 %or.cond77, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %op)
  %cmp22 = icmp eq i32 %op, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sector)
  %cmp24 = icmp eq i64 %sector, 0
  %or.cond78 = and i1 %cmp22, %cmp24
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %nr_sectors)
  %cmp26 = icmp eq i64 %11, %nr_sectors
  %or.cond79 = select i1 %or.cond78, i1 %cmp26, i1 false
  br i1 %or.cond79, label %if.then27, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end21
  %20 = or i32 %op, 2048
  br label %while.body

if.then27:                                        ; preds = %if.end21
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %queue_flags, align 4
  %23 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call fastcc i32 @blkdev_zone_reset_all_emulated(ptr noundef %bdev, i32 noundef %gfp_mask)
  br label %cleanup

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call fastcc i32 @blkdev_zone_reset_all(ptr noundef %bdev)
  br label %cleanup

while.body:                                       ; preds = %bio_set_dev.exit.while.body_crit_edge, %while.body.lr.ph
  %bio.092 = phi ptr [ null, %while.body.lr.ph ], [ %call36, %bio_set_dev.exit.while.body_crit_edge ]
  %sector.addr.091 = phi i64 [ %sector, %while.body.lr.ph ], [ %add38, %bio_set_dev.exit.while.body_crit_edge ]
  %call36 = tail call ptr @blk_next_bio(ptr noundef %bio.092, i32 noundef 0, i32 noundef %gfp_mask) #10
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call36, i32 0, i32 3
  %24 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %25, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call36, i32 0, i32 1
  %26 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %27, %bdev
  br i1 %cmp.not.i, label %while.body.bio_set_dev.exit_crit_edge, label %if.then.i

while.body.bio_set_dev.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %25, -2177
  %28 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %while.body.bio_set_dev.exit_crit_edge
  %29 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call36) #10
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call36, i32 0, i32 2
  %30 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %20, ptr %bi_opf, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call36, i32 0, i32 8
  %31 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %sector.addr.091, ptr %bi_iter, align 8
  %add38 = add i64 %sector.addr.091, %conv.i81
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 316, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %cmp35 = icmp ult i64 %add38, %add85
  br i1 %cmp35, label %bio_set_dev.exit.while.body_crit_edge, label %while.end

bio_set_dev.exit.while.body_crit_edge:            ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = tail call i32 @submit_bio_wait(ptr noundef %call36) #10
  tail call void @bio_put(ptr noundef %call36) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end32, %if.then30, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %bdev_read_only.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end32 ], [ %call31, %if.then30 ], [ %call40, %while.end ], [ -1, %bdev_read_only.exit.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.rhs.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blkdev_zone_reset_all_emulated(ptr noundef %bdev, i32 noundef %gfp_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %0 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_queue.i, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %8 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %cond.true.i, label %entry.blk_queue_zone_sectors.exit_crit_edge

entry.blk_queue_zone_sectors.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_zone_sectors.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  %10 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk_sectors.i, align 4
  br label %blk_queue_zone_sectors.exit

blk_queue_zone_sectors.exit:                      ; preds = %cond.true.i, %entry.blk_queue_zone_sectors.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.true.i ], [ 0, %entry.blk_queue_zone_sectors.exit_crit_edge ]
  %conv.i = zext i32 %cond.i to i64
  %nr_zones = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39
  %12 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_zones, align 4
  %sub.i = add i32 %13, 31
  %14 = lshr i32 %sub.i, 3
  %15 = and i32 %14, 536870908
  %call.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3328) #13
  %tobool.not = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not, label %blk_queue_zone_sectors.exit.cleanup_crit_edge, label %if.end

blk_queue_zone_sectors.exit.cleanup_crit_edge:    ; preds = %blk_queue_zone_sectors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %blk_queue_zone_sectors.exit
  %16 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fops, align 8
  %report_zones = getelementptr inbounds %struct.block_device_operations, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %report_zones to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %report_zones, align 4
  %22 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_zones, align 4
  %call7 = tail call i32 %21(ptr noundef %17, i64 noundef 0, i32 noundef %23, ptr noundef nonnull @blk_zone_need_reset_cb, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end.out_free_need_reset_crit_edge, label %while.cond.preheader

if.end.out_free_need_reset_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_need_reset

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp1064.not = icmp eq i64 %7, 0
  br i1 %cmp1064.not, label %while.cond.preheader.out_free_need_reset_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_free_need_reset_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_need_reset

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %chunk_sectors.i55 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 5
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %sector.066 = phi i64 [ 0, %while.body.lr.ph ], [ %sector.0.be, %while.cond.backedge.while.body_crit_edge ]
  %bio.065 = phi ptr [ null, %while.body.lr.ph ], [ %bio.0.be, %while.cond.backedge.while.body_crit_edge ]
  %24 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i53 = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i53)
  %switch.i.i54 = icmp ult i32 %call.off.i.i53, 2
  br i1 %switch.i.i54, label %cond.end10.i, label %while.body.blk_queue_zone_no.exit_crit_edge

while.body.blk_queue_zone_no.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_zone_no.exit

cond.end10.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %chunk_sectors.i55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chunk_sectors.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 true) #10, !range !106
  %sub.i.op.i.i = xor i32 %28, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %sh_prom.i = zext i32 %sub.i.i to i64
  %shr.i58 = lshr i64 %sector.066, %sh_prom.i
  %conv12.i = trunc i64 %shr.i58 to i32
  br label %blk_queue_zone_no.exit

blk_queue_zone_no.exit:                           ; preds = %cond.end10.i, %while.body.blk_queue_zone_no.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %cond.end10.i ], [ 0, %while.body.blk_queue_zone_no.exit_crit_edge ]
  %div3.i = lshr i32 %retval.0.i, 5
  %arrayidx.i = getelementptr i32, ptr %call.i.i.i.i, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %retval.0.i, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %31, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool13.not = icmp eq i32 %32, 0
  br i1 %tobool13.not, label %blk_queue_zone_no.exit.while.cond.backedge_crit_edge, label %if.end15

blk_queue_zone_no.exit.while.cond.backedge_crit_edge: ; preds = %blk_queue_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %bio_set_dev.exit, %blk_queue_zone_no.exit.while.cond.backedge_crit_edge
  %bio.0.be = phi ptr [ %call16, %bio_set_dev.exit ], [ %bio.065, %blk_queue_zone_no.exit.while.cond.backedge_crit_edge ]
  %sector.0.be = add i64 %sector.066, %conv.i
  %cmp10 = icmp ult i64 %sector.0.be, %7
  br i1 %cmp10, label %while.cond.backedge.while.body_crit_edge, label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end15:                                         ; preds = %blk_queue_zone_no.exit
  %call16 = tail call ptr @blk_next_bio(ptr noundef %bio.065, i32 noundef 0, i32 noundef %gfp_mask) #10
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call16, i32 0, i32 3
  %33 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %34, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call16, i32 0, i32 1
  %35 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %36, %bdev
  br i1 %cmp.not.i, label %if.end15.bio_set_dev.exit_crit_edge, label %if.then.i

if.end15.bio_set_dev.exit_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %34, -2177
  %37 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end15.bio_set_dev.exit_crit_edge
  %38 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call16) #10
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call16, i32 0, i32 2
  %39 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2063, ptr %bi_opf, align 8
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call16, i32 0, i32 8
  %40 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %sector.066, ptr %bi_iter, align 8
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 225, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge
  %tobool19.not = icmp eq ptr %bio.0.be, null
  br i1 %tobool19.not, label %while.end.out_free_need_reset_crit_edge, label %if.then20

while.end.out_free_need_reset_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_need_reset

if.then20:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @submit_bio_wait(ptr noundef nonnull %bio.0.be) #10
  tail call void @bio_put(ptr noundef nonnull %bio.0.be) #10
  br label %out_free_need_reset

out_free_need_reset:                              ; preds = %if.then20, %while.end.out_free_need_reset_crit_edge, %while.cond.preheader.out_free_need_reset_crit_edge, %if.end.out_free_need_reset_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end.out_free_need_reset_crit_edge ], [ %call21, %if.then20 ], [ 0, %while.end.out_free_need_reset_crit_edge ], [ 0, %while.cond.preheader.out_free_need_reset_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_need_reset, %blk_queue_zone_sectors.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free_need_reset ], [ -12, %blk_queue_zone_sectors.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blkdev_zone_reset_all(ptr noundef %bdev) unnamed_addr #2 align 64 {
entry:
  %bio = alloca %struct.bio, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bio) #10
  %0 = call ptr @memset(ptr %bio, i32 255, i32 104)
  call void @bio_init(ptr noundef nonnull %bio, ptr noundef null, i16 noundef zeroext 0) #10
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %1 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %2, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %3 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %4, %bdev
  br i1 %cmp.not.i, label %entry.bio_set_dev.exit_crit_edge, label %if.then.i

entry.bio_set_dev.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %2, -2177
  %5 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %entry.bio_set_dev.exit_crit_edge
  %6 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio) #10
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %7 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2065, ptr %bi_opf, align 8
  %call = call i32 @submit_bio_wait(ptr noundef nonnull %bio) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_next_bio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_report_zones_ioctl(ptr nocapture noundef readonly %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.zone_report_args, align 4
  %rep = alloca %struct.blk_zone_report, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rep) #10
  %1 = getelementptr inbounds %struct.blk_zone_report, ptr %rep, i32 0, i32 1
  %2 = getelementptr inbounds %struct.blk_zone_report, ptr %rep, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  %3 = call ptr @memset(ptr %rep, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 27
  %6 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.then.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 16, i32 -1226833920) #14
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !107

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rep, i32 noundef 16) #10
  %9 = call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !109
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rep, ptr noundef nonnull %0, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !107

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.then.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %rep, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %0, i32 16
  %15 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %args, align 4
  %16 = ptrtoint ptr %rep to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rep, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %18 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %24 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bd_queue.i, align 4
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 37, i32 27
  %26 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %lor.lhs.false.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end13
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 8
  %28 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fops.i, align 8
  %report_zones.i = getelementptr inbounds %struct.block_device_operations, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %report_zones.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %report_zones.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end41.i

land.rhs.i:                                       ; preds = %lor.lhs.false.i
  %.b58.i = load i1, ptr @blkdev_report_zones.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i41, !prof !107

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i41:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @blkdev_report_zones.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 154, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end41.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %17)
  %cmp.not.i = icmp ugt i64 %23, %17
  br i1 %cmp.not.i, label %blkdev_report_zones.exit, label %if.end41.i.if.end59.i.i_crit_edge

if.end41.i.if.end59.i.i_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

blkdev_report_zones.exit:                         ; preds = %if.end41.i
  %call48.i = call i32 %31(ptr noundef %19, i64 noundef %17, i32 noundef %14, ptr noundef nonnull @blkdev_copy_zone_to_user, ptr noundef nonnull %args) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp = icmp slt i32 %call48.i, 0
  br i1 %cmp, label %blkdev_report_zones.exit.cleanup_crit_edge, label %blkdev_report_zones.exit.if.end59.i.i_crit_edge

blkdev_report_zones.exit.if.end59.i.i_crit_edge:  ; preds = %blkdev_report_zones.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

blkdev_report_zones.exit.cleanup_crit_edge:       ; preds = %blkdev_report_zones.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.i.i:                                     ; preds = %blkdev_report_zones.exit.if.end59.i.i_crit_edge, %if.end41.i.if.end59.i.i_crit_edge
  %retval.0.i49 = phi i32 [ %call48.i, %blkdev_report_zones.exit.if.end59.i.i_crit_edge ], [ 0, %if.end41.i.if.end59.i.i_crit_edge ]
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i49, ptr %1, align 8
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %2, align 4
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #10
  %call.i.i35 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i35, label %if.end59.i.i.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rep, i32 noundef 16) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %0, ptr noundef nonnull %rep, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool20.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool20.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end59.i.i.cleanup_crit_edge, %blkdev_report_zones.exit.cleanup_crit_edge, %if.then.i41, %land.rhs.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then11.i.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -25, %if.end3.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %call48.i, %blkdev_report_zones.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -95, %if.then.i41 ], [ -95, %if.end13.cleanup_crit_edge ], [ -95, %land.rhs.i.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rep) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkdev_copy_zone_to_user(ptr noundef %zone, i32 noundef %idx, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.blk_zone, ptr %1, i32 %idx
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 64, i32 -1226833920) #14, !srcloc !112
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %zone, i32 noundef 64) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx, ptr noundef %zone, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %3 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_zone_mgmt_ioctl(ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #2 align 64 {
entry:
  %zrange = alloca %struct.blk_zone_range, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zrange) #10
  %1 = getelementptr inbounds %struct.blk_zone_range, ptr %zrange, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  %2 = call ptr @memset(ptr %zrange, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %3 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_queue.i, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37, i32 27
  %5 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 16, i32 -1226833920) #14, !srcloc !113
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !107

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %zrange, i32 noundef 16) #10
  %8 = call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !109
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %zrange, ptr noundef nonnull %0, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !107

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.then.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %zrange, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %cmd, label %if.end13.cleanup_crit_edge [
    i32 1074795139, label %sw.bb
    i32 1074795142, label %if.end13.fail_crit_edge
    i32 1074795143, label %sw.bb19
    i32 1074795144, label %sw.bb20
  ]

if.end13.fail_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 7
  %13 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 2
  call void @down_write(ptr noundef %invalidate_lock.i) #10
  %call14 = call fastcc i32 @blkdev_truncate_zone_range(ptr noundef %bdev, i32 noundef %mode, ptr noundef nonnull %zrange)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %sw.bb.fail_crit_edge, label %sw.bb.if.then22_crit_edge

sw.bb.if.then22_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

sw.bb.fail_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb19:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

sw.bb20:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

fail:                                             ; preds = %sw.bb20, %sw.bb19, %sw.bb.fail_crit_edge, %if.end13.fail_crit_edge
  %op.0 = phi i32 [ 12, %sw.bb20 ], [ 11, %sw.bb19 ], [ 15, %sw.bb.fail_crit_edge ], [ 10, %if.end13.fail_crit_edge ]
  %17 = ptrtoint ptr %zrange to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %zrange, align 8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %1, align 8
  %call21 = call i32 @blkdev_zone_mgmt(ptr noundef %bdev, i32 noundef %op.0, i64 noundef %18, i64 noundef %20, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074795139, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1074795139
  br i1 %cmp, label %fail.if.then22_crit_edge, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fail.if.then22_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %fail.if.then22_crit_edge, %sw.bb.if.then22_crit_edge
  %ret.044 = phi i32 [ %call21, %fail.if.then22_crit_edge ], [ %call14, %sw.bb.if.then22_crit_edge ]
  %bd_inode23 = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 7
  %21 = ptrtoint ptr %bd_inode23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bd_inode23, align 4
  %i_mapping24 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %i_mapping24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_mapping24, align 8
  %invalidate_lock.i39 = getelementptr inbounds %struct.address_space, ptr %24, i32 0, i32 2
  call void @up_write(ptr noundef %invalidate_lock.i39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %fail.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11.i.i, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -25, %if.end3.cleanup_crit_edge ], [ -9, %if.end6.cleanup_crit_edge ], [ -25, %if.end13.cleanup_crit_edge ], [ %ret.044, %if.then22 ], [ %call21, %fail.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zrange) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blkdev_truncate_zone_range(ptr noundef %bdev, i32 noundef %mode, ptr nocapture noundef readonly %zrange) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zrange to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %zrange, align 8
  %nr_sectors = getelementptr inbounds %struct.blk_zone_range, ptr %zrange, i32 0, i32 1
  %2 = ptrtoint ptr %nr_sectors to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nr_sectors, align 8
  %add = add i64 %3, %1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %1)
  %cmp.not = icmp ugt i64 %add, %1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp5 = icmp ugt i64 %add, %9
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i64 %1, 9
  %shl10 = shl i64 %add, 9
  %sub = add i64 %shl10, -1
  %call11 = tail call i32 @truncate_bdev_range(ptr noundef %bdev, i32 noundef %mode, i64 noundef %shl, i64 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_queue_free_zone_bitmaps(ptr nocapture noundef %q) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv_zones_bitmap = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 40
  %0 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conv_zones_bitmap, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %conv_zones_bitmap, align 8
  %seq_zones_wlock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 41
  %3 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %seq_zones_wlock, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %seq_zones_wlock, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_revalidate_disk_zones(ptr noundef %disk, ptr noundef readonly %update_driver_data) #2 align 64 {
entry:
  %args = alloca %struct.blk_revalidate_zone_args, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args) #10
  %2 = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %args, i32 0, i32 2
  %4 = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %args, i32 0, i32 3
  %5 = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %args, i32 0, i32 4
  %6 = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %args, i32 0, i32 5
  %7 = call ptr @memset(ptr %args, i32 0, i32 32)
  %8 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %disk, ptr %args, align 8
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %9 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b186 = load i1, ptr @blk_revalidate_disk_zones.__already_done, align 1
  br i1 %.b186, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !107

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @blk_revalidate_disk_zones.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 576, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end39:                                         ; preds = %entry
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %12, null
  br i1 %tobool.i.not, label %land.rhs50, label %if.end98

land.rhs50:                                       ; preds = %if.end39
  %.b184185 = load i1, ptr @blk_revalidate_disk_zones.__already_done.3, align 1
  br i1 %.b184185, label %land.rhs50.cleanup_crit_edge, label %if.then61, !prof !107

land.rhs50.cleanup_crit_edge:                     ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then61:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @blk_revalidate_disk_zones.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 578, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end98:                                         ; preds = %if.end39
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %13 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool100.not = icmp eq i64 %16, 0
  br i1 %tobool100.not, label %if.end98.cleanup_crit_edge, label %if.end102

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end102:                                        ; preds = %if.end98
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %22, 524288
  %or.i = or i32 %22, 524288
  store i32 %or.i, ptr %flags1.i, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 8
  %23 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fops, align 8
  %report_zones = getelementptr inbounds %struct.block_device_operations, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %report_zones to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %report_zones, align 4
  %call104 = call i32 %26(ptr noundef %disk, i64 noundef 0, i32 noundef -1, ptr noundef nonnull @blk_revalidate_zone_cb, ptr noundef nonnull %args) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.end109, label %if.end102.if.end112_crit_edge

if.end102.if.end112_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

do.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %disk_name) #15
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.end102.if.end112_crit_edge
  %ret.0 = phi i32 [ %call104, %if.end102.if.end112_crit_edge ], [ -19, %do.end109 ]
  %27 = call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i189 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i189 to ptr
  %task.i190 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i190 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i190, align 8
  %flags1.i191 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %flags1.i191 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags1.i191, align 4
  %and.i192 = and i32 %32, -524289
  %or.i193 = or i32 %and.i192, %and.i
  store i32 %or.i193, ptr %flags1.i191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp sgt i32 %ret.0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end112.do.end146_crit_edge

if.end112.do.end146_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end146

land.lhs.true:                                    ; preds = %if.end112
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %6, align 8
  %35 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i195 = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %bd_nr_sectors.i.i195 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bd_nr_sectors.i.i195, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %38)
  %cmp114.not = icmp eq i64 %34, %38
  br i1 %cmp114.not, label %if.then126, label %do.end118

do.end118:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name120 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %disk_name120, i64 noundef %34) #15
  br label %do.end146

if.then126:                                       ; preds = %land.lhs.true
  call void @blk_mq_freeze_queue(ptr noundef %1) #10
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %5, align 8
  %conv = trunc i64 %40 to i32
  call void @blk_queue_chunk_sectors(ptr noundef %1, i32 noundef %conv) #10
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %4, align 4
  %nr_zones127 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39
  %43 = ptrtoint ptr %nr_zones127 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %nr_zones127, align 4
  %seq_zones_wlock = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 41
  %44 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %seq_zones_wlock, align 4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 8
  store ptr %47, ptr %seq_zones_wlock, align 4
  store ptr %45, ptr %3, align 8
  %conv_zones_bitmap = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 40
  %48 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %conv_zones_bitmap, align 8
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %2, align 4
  store ptr %51, ptr %conv_zones_bitmap, align 8
  store ptr %49, ptr %2, align 4
  %tobool141.not = icmp eq ptr %update_driver_data, null
  br i1 %tobool141.not, label %if.then126.if.end151_crit_edge, label %if.then142

if.then126.if.end151_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then142:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  call void %update_driver_data(ptr noundef %disk) #10
  br label %if.end151

do.end146:                                        ; preds = %do.end118, %if.end112.do.end146_crit_edge
  %ret.1.ph = phi i32 [ %ret.0, %if.end112.do.end146_crit_edge ], [ -19, %do.end118 ]
  call void @blk_mq_freeze_queue(ptr noundef %1) #10
  %disk_name148 = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %disk_name148) #15
  call void @blk_queue_free_zone_bitmaps(ptr noundef %1)
  br label %if.end151

if.end151:                                        ; preds = %do.end146, %if.then142, %if.then126.if.end151_crit_edge
  %ret.2 = phi i32 [ %ret.1.ph, %do.end146 ], [ 0, %if.then142 ], [ 0, %if.then126.if.end151_crit_edge ]
  call void @blk_mq_unfreeze_queue(ptr noundef %1) #10
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 8
  call void @kfree(ptr noundef %53) #10
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %55) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %if.end98.cleanup_crit_edge, %if.then61, %land.rhs50.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end151 ], [ -5, %if.then ], [ -5, %if.then61 ], [ -5, %if.end98.cleanup_crit_edge ], [ -5, %land.rhs.cleanup_crit_edge ], [ -5, %land.rhs50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_revalidate_zone_cb(ptr nocapture noundef readonly %zone, i32 noundef %idx, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %6 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %zone, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp2 = icmp ne i64 %9, 0
  %conv = trunc i64 %9 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %conv) #10, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %11 = icmp eq i32 %10, 1
  %or.cond = select i1 %cmp2, i1 %11, i1 false
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %disk_name, i64 noundef %9) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %zone_sectors = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %zone_sectors to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %zone_sectors, align 8
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %len, align 8
  %add = add i64 %5, -1
  %sub = add i64 %add, %14
  %shr.i.i = lshr i64 %14, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #10, !range !106
  %add.i.i = sub nuw nsw i32 64, %15
  br label %cond.end20

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #10, !range !106
  %sub.i6.i.i = sub nuw nsw i32 32, %16
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end20

cond.end20:                                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i = add nsw i32 %retval.0.i.i, -1
  %sh_prom = zext i32 %sub.i to i64
  %shr = lshr i64 %sub, %sh_prom
  %conv22 = trunc i64 %shr to i32
  %nr_zones = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv22, ptr %nr_zones, align 4
  br label %if.end57

if.else:                                          ; preds = %entry
  %zone_sectors24 = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %data, i32 0, i32 4
  %18 = ptrtoint ptr %zone_sectors24 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %zone_sectors24, align 8
  %add25 = add i64 %19, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %add25, i64 %5)
  %cmp26 = icmp ult i64 %add25, %5
  %len29 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %20 = ptrtoint ptr %len29 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %len29, align 8
  br i1 %cmp26, label %if.then28, label %if.else42

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %19)
  %cmp31.not = icmp eq i64 %21, %19
  br i1 %cmp31.not, label %if.then28.if.end57_crit_edge, label %do.end36

if.then28.if.end57_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.end36:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name38 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %disk_name38) #15
  br label %cleanup

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %19)
  %cmp45 = icmp ugt i64 %21, %19
  br i1 %cmp45, label %do.end50, label %if.else42.if.end57_crit_edge

if.else42.if.end57_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.end50:                                         ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name52 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %disk_name52) #15
  br label %cleanup

if.end57:                                         ; preds = %if.else42.if.end57_crit_edge, %if.then28.if.end57_crit_edge, %cond.end20
  %22 = ptrtoint ptr %zone to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %zone, align 8
  %sector = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %data, i32 0, i32 5
  %24 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sector, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp59.not = icmp eq i64 %23, %25
  br i1 %cmp59.not, label %if.end71, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name66 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %disk_name66, i64 noundef %25, i64 noundef %23) #15
  br label %cleanup

if.end71:                                         ; preds = %if.end57
  %type = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 3
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type, align 8
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %27, label %do.end97 [
    i8 1, label %sw.bb
    i8 2, label %if.end71.sw.bb83_crit_edge
    i8 3, label %if.end71.sw.bb83_crit_edge194
  ]

if.end71.sw.bb83_crit_edge194:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

if.end71.sw.bb83_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

sw.bb:                                            ; preds = %if.end71
  %conv_zones_bitmap = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conv_zones_bitmap, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %if.end7.i.i.i, label %sw.bb.if.end81_crit_edge

sw.bb.if.end81_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.end7.i.i.i:                                    ; preds = %sw.bb
  %nr_zones74 = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %nr_zones74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_zones74, align 4
  %sub.i158 = add i32 %32, 31
  %33 = lshr i32 %sub.i158, 3
  %34 = and i32 %33, 536870908
  %call.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3328) #13
  %35 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i.i.i, ptr %conv_zones_bitmap, align 4
  %tobool78.not = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool78.not, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end7.i.i.i.if.end81_crit_edge

if.end7.i.i.i.if.end81_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end81:                                         ; preds = %if.end7.i.i.i.if.end81_crit_edge, %sw.bb.if.end81_crit_edge
  %36 = ptrtoint ptr %conv_zones_bitmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conv_zones_bitmap, align 4
  tail call void @_set_bit(i32 noundef %idx, ptr noundef %37) #10
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end71.sw.bb83_crit_edge, %if.end71.sw.bb83_crit_edge194
  %seq_zones_wlock = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %seq_zones_wlock, align 8
  %tobool84.not = icmp eq ptr %39, null
  br i1 %tobool84.not, label %if.end7.i.i.i186, label %sw.bb83.sw.epilog_crit_edge

sw.bb83.sw.epilog_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end7.i.i.i186:                                 ; preds = %sw.bb83
  %nr_zones87 = getelementptr inbounds %struct.blk_revalidate_zone_args, ptr %data, i32 0, i32 3
  %40 = ptrtoint ptr %nr_zones87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_zones87, align 4
  %sub.i159 = add i32 %41, 31
  %42 = lshr i32 %sub.i159, 3
  %43 = and i32 %42, 536870908
  %call.i.i.i.i185 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3328) #13
  %44 = ptrtoint ptr %seq_zones_wlock to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i.i.i185, ptr %seq_zones_wlock, align 8
  %tobool91.not = icmp eq ptr %call.i.i.i.i185, null
  br i1 %tobool91.not, label %if.end7.i.i.i186.cleanup_crit_edge, label %if.end7.i.i.i186.sw.epilog_crit_edge

if.end7.i.i.i186.sw.epilog_crit_edge:             ; preds = %if.end7.i.i.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end7.i.i.i186.cleanup_crit_edge:               ; preds = %if.end7.i.i.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end97:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %conv72 = zext i8 %27 to i32
  %disk_name99 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %disk_name99, i32 noundef %conv72, i64 noundef %23) #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end7.i.i.i186.sw.epilog_crit_edge, %sw.bb83.sw.epilog_crit_edge, %if.end81
  %len105 = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 1
  %45 = ptrtoint ptr %len105 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %len105, align 8
  %47 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sector, align 8
  %add107 = add i64 %48, %46
  store i64 %add107, ptr %sector, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end97, %if.end7.i.i.i186.cleanup_crit_edge, %if.end7.i.i.i.cleanup_crit_edge, %do.end64, %do.end50, %do.end36, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end64 ], [ -19, %do.end97 ], [ 0, %sw.epilog ], [ -19, %do.end36 ], [ -19, %do.end50 ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %if.end7.i.i.i186.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_chunk_sectors(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_queue_clear_zone_settings(ptr noundef %q) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @blk_mq_freeze_queue(ptr noundef %q) #10
  %conv_zones_bitmap.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 40
  %0 = ptrtoint ptr %conv_zones_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conv_zones_bitmap.i, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %conv_zones_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %conv_zones_bitmap.i, align 8
  %seq_zones_wlock.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 41
  %3 = ptrtoint ptr %seq_zones_wlock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %seq_zones_wlock.i, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %seq_zones_wlock.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %seq_zones_wlock.i, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 26, ptr noundef %q) #10
  %required_elevator_features = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 38
  %6 = ptrtoint ptr %required_elevator_features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %required_elevator_features, align 8
  %and = and i32 %7, -2
  store i32 %and, ptr %required_elevator_features, align 8
  %nr_zones = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 39
  %8 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nr_zones, align 4
  %max_open_zones = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 42
  %9 = ptrtoint ptr %max_open_zones to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %max_open_zones, align 8
  %max_active_zones = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 43
  %10 = ptrtoint ptr %max_active_zones to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %max_active_zones, align 4
  %chunk_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 5
  %11 = ptrtoint ptr %chunk_sectors to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %chunk_sectors, align 4
  %zone_write_granularity = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 20
  %12 = ptrtoint ptr %zone_write_granularity to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %zone_write_granularity, align 4
  %max_zone_append_sectors = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 17
  %13 = ptrtoint ptr %max_zone_append_sectors to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %max_zone_append_sectors, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_zone_need_reset_cb(ptr nocapture noundef readonly %zone, i32 noundef %idx, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = getelementptr inbounds %struct.blk_zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cond, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %1, label %sw.default [
    i8 0, label %entry.return_crit_edge
    i8 1, label %entry.return_crit_edge1
    i8 13, label %entry.return_crit_edge2
    i8 15, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %idx, ptr noundef %data) #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_bdev_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/blk-zoned.c", i32 46, i32 37}
!2 = !{ptr @blk_zone_cond_str.zone_cond_str, !3, !"zone_cond_str", i1 false, i1 false}
!3 = !{!"../block/blk-zoned.c", i32 46, i32 21}
!4 = !{ptr @__ksymtab_blk_zone_cond_str, !5, !"__ksymtab_blk_zone_cond_str", i1 false, i1 false}
!5 = !{!"../block/blk-zoned.c", i32 53, i32 1}
!6 = !{ptr @__ksymtab_blk_req_needs_zone_write_lock, !7, !"__ksymtab_blk_req_needs_zone_write_lock", i1 false, i1 false}
!7 = !{!"../block/blk-zoned.c", i32 75, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../block/blk-zoned.c", i32 84, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_blk_req_zone_write_trylock, !12, !"__ksymtab_blk_req_zone_write_trylock", i1 false, i1 false}
!12 = !{!"../block/blk-zoned.c", i32 89, i32 1}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../block/blk-zoned.c", i32 93, i32 6}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../block/blk-zoned.c", i32 97, i32 2}
!17 = !{ptr @__ksymtab___blk_req_zone_write_lock, !18, !"__ksymtab___blk_req_zone_write_lock", i1 false, i1 false}
!18 = !{!"../block/blk-zoned.c", i32 100, i32 1}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../block/blk-zoned.c", i32 106, i32 3}
!21 = !{ptr @__ksymtab___blk_req_zone_write_unlock, !22, !"__ksymtab___blk_req_zone_write_unlock", i1 false, i1 false}
!22 = !{!"../block/blk-zoned.c", i32 109, i32 1}
!23 = !{ptr @__ksymtab_blkdev_nr_zones, !24, !"__ksymtab_blkdev_nr_zones", i1 false, i1 false}
!24 = !{!"../block/blk-zoned.c", i32 126, i32 1}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../block/blk-zoned.c", i32 154, i32 6}
!27 = !{ptr @__ksymtab_blkdev_report_zones, !28, !"__ksymtab_blkdev_report_zones", i1 false, i1 false}
!28 = !{!"../block/blk-zoned.c", i32 162, i32 1}
!29 = !{ptr @__ksymtab_blkdev_zone_mgmt, !30, !"__ksymtab_blkdev_zone_mgmt", i1 false, i1 false}
!30 = !{!"../block/blk-zoned.c", i32 324, i32 1}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../block/blk-zoned.c", i32 576, i32 6}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../block/blk-zoned.c", i32 578, i32 6}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../block/blk-zoned.c", i32 592, i32 3}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @blk_revalidate_disk_zones._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @blk_revalidate_disk_zones._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/blk-zoned.c", i32 602, i32 3}
!42 = !{ptr @blk_revalidate_disk_zones._entry.6, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @blk_revalidate_disk_zones._entry_ptr.8, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../block/blk-zoned.c", i32 622, i32 3}
!46 = !{ptr @blk_revalidate_disk_zones._entry.9, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @blk_revalidate_disk_zones._entry_ptr.11, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__ksymtab_blk_revalidate_disk_zones, !49, !"__ksymtab_blk_revalidate_disk_zones", i1 false, i1 false}
!49 = !{!"../block/blk-zoned.c", i32 631, i32 1}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../block/blk-zoned.c", i32 25, i32 2}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../block/blk-zoned.c", i32 26, i32 2}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../block/blk-zoned.c", i32 27, i32 2}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../block/blk-zoned.c", i32 28, i32 2}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../block/blk-zoned.c", i32 29, i32 2}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../block/blk-zoned.c", i32 30, i32 2}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../block/blk-zoned.c", i32 31, i32 2}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../block/blk-zoned.c", i32 32, i32 2}
!66 = !{ptr @zone_cond_name, !67, !"zone_cond_name", i1 false, i1 false}
!67 = !{!"../block/blk-zoned.c", i32 24, i32 26}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!70 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../block/blk-zoned.c", i32 494, i32 4}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @blk_revalidate_zone_cb._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @blk_revalidate_zone_cb._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../block/blk-zoned.c", i32 503, i32 4}
!82 = !{ptr @blk_revalidate_zone_cb._entry.25, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @blk_revalidate_zone_cb._entry_ptr.27, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../block/blk-zoned.c", i32 509, i32 4}
!86 = !{ptr @blk_revalidate_zone_cb._entry.28, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @blk_revalidate_zone_cb._entry_ptr.30, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../block/blk-zoned.c", i32 517, i32 3}
!90 = !{ptr @blk_revalidate_zone_cb._entry.31, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @blk_revalidate_zone_cb._entry_ptr.33, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../block/blk-zoned.c", i32 543, i32 3}
!94 = !{ptr @blk_revalidate_zone_cb._entry.34, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @blk_revalidate_zone_cb._entry_ptr.36, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i32 0, i32 33}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i8 0, i8 2}
!109 = !{i64 5002466}
!110 = !{i64 5002663}
!111 = !{i64 2152487896}
!112 = !{i64 2152507592, i64 2152507617}
!113 = !{i64 2152506911, i64 2152506936}
