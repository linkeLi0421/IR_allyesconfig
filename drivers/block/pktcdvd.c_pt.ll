; ModuleID = '/llk/IR_all_yes/drivers/block/pktcdvd.c_pt.bc'
source_filename = "../drivers/block/pktcdvd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pkt_ctrl_command = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
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
%struct.pktcdvd_device = type { ptr, i32, [20 x i8], %struct.packet_settings, %struct.packet_stats, i32, i32, i32, i32, i8, i8, i32, i16, i32, i32, %struct.packet_cdrw, %struct.wait_queue_head, %struct.spinlock, %struct.rb_root, i32, i8, i64, %struct.atomic_t, %struct.mempool_s, %struct.packet_iosched, ptr, i32, i32, ptr, ptr, ptr }
%struct.packet_settings = type { i32, i8, i8, i8, i8, i8 }
%struct.packet_stats = type { i32, i32, i32, i32, i32 }
%struct.packet_cdrw = type { %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.packet_iosched = type { %struct.atomic_t, i32, %struct.spinlock, %struct.bio_list, %struct.bio_list, i64, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.packet_stacked_data = type { ptr, ptr }
%struct.packet_data = type { %struct.list_head, %struct.spinlock, %struct.bio_list, i32, ptr, i64, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t, [128 x ptr], [64 x ptr], i32, i32, ptr }
%struct.pkt_rb_node = type { %struct.rb_node, ptr }
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.disc_information = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [8 x i8], i8, i8 }
%struct.track_information = type { i16, i8, i8, i8, [3 x i8], i32, i32, i32, i32, i32, i32 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.41, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.42, %union.anon.43, %union.anon.44, %union.anon.49, ptr, ptr }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%union.anon.43 = type { %struct.rb_node }
%union.anon.44 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, %struct.list_head, ptr }
%union.anon.49 = type { i64, [8 x i8] }
%struct.write_param_page = type <{ i8, i8, [3 x i8], i8, i8, i8, i8, i8, i32, i16, [16 x i8], [16 x i8], i8, i8, i8, i8 }>
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.82 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.83 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.84 = type { ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver/pktcdvd\00", [17 x i8] zeroinitializer }, align 32
@pkt_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.1, ptr @pkt_ctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @.str.2, i16 0 }, [56 x i8] zeroinitializer }, align 32
@pktdev_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pktcdvd\00", [24 x i8] zeroinitializer }, align 32
@psd_pool = internal global { %struct.mempool_s, [40 x i8] } zeroinitializer, align 32
@pkt_bio_set = internal global { %struct.bio_set, [132 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_description314 = internal constant [59 x i8] c"pktcdvd.description=Packet writing layer for CD/DVD drives\00", section ".modinfo", align 1
@__UNIQUE_ID_author315 = internal constant [42 x i8] c"pktcdvd.author=Jens Axboe <axboe@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [35 x i8] c"pktcdvd.file=drivers/block/pktcdvd\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [20 x i8] c"pktcdvd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pktcdvd__318_2962_pkt_init6 = internal global ptr @pkt_init, section ".initcall6.init", align 4
@__exitcall_pkt_exit = internal global ptr @pkt_exit, section ".exitcall.exit", align 4
@pkt_ctl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pkt_ctl_ioctl, ptr null, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pktcdvd/control\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ctl_mutex = internal global { %struct.mutex, [36 x i8] } zeroinitializer, align 32
@pkt_devs = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@pkt_setup_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 2686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013pktcdvd: max %d writers supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pkt_setup_dev\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/block/pktcdvd.c\00", [40 x i8] zeroinitializer }, align 32
@pkt_setup_dev._entry_ptr = internal global ptr @pkt_setup_dev._entry, section ".printk_index", align 4
@pkt_setup_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&pd->cdrw.active_list_lock\00", [37 x i8] zeroinitializer }, align 32
@pkt_setup_dev.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pd->lock\00", [22 x i8] zeroinitializer }, align 32
@pkt_setup_dev.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pd->iosched.lock\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pktcdvd%d\00", [22 x i8] zeroinitializer }, align 32
@pkt_setup_dev.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pd->wqueue\00", [20 x i8] zeroinitializer }, align 32
@pkt_setup_dev.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pktcdvd_ops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @pkt_submit_bio, ptr @pkt_open, ptr @pkt_close, ptr null, ptr @pkt_ioctl, ptr null, ptr @pkt_check_events, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pkt_devnode, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pkt_setup_dev._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 2757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pktcdvd: setup of pktcdvd device failed\0A\00", [53 x i8] zeroinitializer }, align 32
@pkt_setup_dev._entry_ptr.20 = internal global ptr @pkt_setup_dev._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pkt_submit_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 2415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013pktcdvd: %s incorrect request queue\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkt_submit_bio\00", [17 x i8] zeroinitializer }, align 32
@pkt_submit_bio._entry_ptr = internal global ptr @pkt_submit_bio._entry, section ".printk_index", align 4
@pkt_submit_bio._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.8, i32 2433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015pktcdvd: %s: WRITE for ro device (%llu)\0A\00", [53 x i8] zeroinitializer }, align 32
@pkt_submit_bio._entry_ptr.25 = internal global ptr @pkt_submit_bio._entry.23, section ".printk_index", align 4
@pkt_submit_bio._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.8, i32 2438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013pktcdvd: %s: wrong bio size\0A\00", [33 x i8] zeroinitializer }, align 32
@pkt_submit_bio._entry_ptr.28 = internal global ptr @pkt_submit_bio._entry.26, section ".printk_index", align 4
@pktcdvd_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pktcdvd_mutex, i64 52), ptr getelementptr (i8, ptr @pktcdvd_mutex, i64 52) }, ptr @pktcdvd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pktcdvd_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pktcdvd_mutex\00", [18 x i8] zeroinitializer }, align 32
@pkt_open_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.8, i32 2156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013pktcdvd: %s: pkt_get_last_written failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pkt_open_dev\00", [19 x i8] zeroinitializer }, align 32
@pkt_open_dev._entry_ptr = internal global ptr @pkt_open_dev._entry, section ".printk_index", align 4
@pkt_open_dev._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.8, i32 2185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pktcdvd: %s: not enough memory for buffers\0A\00", [50 x i8] zeroinitializer }, align 32
@pkt_open_dev._entry_ptr.35 = internal global ptr @pkt_open_dev._entry.33, section ".printk_index", align 4
@pkt_open_dev._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.8, i32 2189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pktcdvd: %s: %lukB available on disc\0A\00", [56 x i8] zeroinitializer }, align 32
@pkt_open_dev._entry_ptr.38 = internal global ptr @pkt_open_dev._entry.36, section ".printk_index", align 4
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@pkt_open_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.8, i32 2092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015pktcdvd: %s: failed saving write settings\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkt_open_write\00", [17 x i8] zeroinitializer }, align 32
@pkt_open_write._entry_ptr = internal global ptr @pkt_open_write._entry, section ".printk_index", align 4
@pkt_open_write._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.8, i32 2105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015pktcdvd: %s: write speed %ukB/s\0A\00", [61 x i8] zeroinitializer }, align 32
@pkt_open_write._entry_ptr.43 = internal global ptr @pkt_open_write._entry.41, section ".printk_index", align 4
@pkt_open_write._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.8, i32 2112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015pktcdvd: %s: write speed %ux\0A\00", [32 x i8] zeroinitializer }, align 32
@pkt_open_write._entry_ptr.46 = internal global ptr @pkt_open_write._entry.44, section ".printk_index", align 4
@pkt_open_write._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.8, i32 2119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015pktcdvd: %s: couldn't set write speed\0A\00", [55 x i8] zeroinitializer }, align 32
@pkt_open_write._entry_ptr.49 = internal global ptr @pkt_open_write._entry.47, section ".printk_index", align 4
@pkt_open_write._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.8, i32 2127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015pktcdvd: %s: Optimum Power Calibration failed\0A\00", [47 x i8] zeroinitializer }, align 32
@pkt_open_write._entry_ptr.52 = internal global ptr @pkt_open_write._entry.50, section ".printk_index", align 4
@pkt_probe_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.8, i32 1798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013pktcdvd: %s: failed get_disc\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkt_probe_settings\00", [45 x i8] zeroinitializer }, align 32
@pkt_probe_settings._entry_ptr = internal global ptr @pkt_probe_settings._entry, section ".printk_index", align 4
@pkt_probe_settings._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.8, i32 1810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013pktcdvd: %s: failed get_track\0A\00", [63 x i8] zeroinitializer }, align 32
@pkt_probe_settings._entry_ptr.57 = internal global ptr @pkt_probe_settings._entry.55, section ".printk_index", align 4
@pkt_probe_settings._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.8, i32 1815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013pktcdvd: %s: can't write to this track\0A\00", [54 x i8] zeroinitializer }, align 32
@pkt_probe_settings._entry_ptr.60 = internal global ptr @pkt_probe_settings._entry.58, section ".printk_index", align 4
@pkt_probe_settings._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.8, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015pktcdvd: %s: detected zero packet size!\0A\00", [53 x i8] zeroinitializer }, align 32
@pkt_probe_settings._entry_ptr.63 = internal global ptr @pkt_probe_settings._entry.61, section ".printk_index", align 4
@pkt_probe_settings._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.8, i32 1829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013pktcdvd: %s: packet size is too big\0A\00", [57 x i8] zeroinitializer }, align 32
@pkt_probe_settings._entry_ptr.66 = internal global ptr @pkt_probe_settings._entry.64, section ".printk_index", align 4
@pkt_probe_settings._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.54, ptr @.str.8, i32 1871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013pktcdvd: %s: unknown data mode\0A\00", [62 x i8] zeroinitializer }, align 32
@pkt_probe_settings._entry_ptr.69 = internal global ptr @pkt_probe_settings._entry.67, section ".printk_index", align 4
@pkt_writable_disc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.8, i32 1757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015pktcdvd: %s: unknown disc - no track?\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pkt_writable_disc\00", [46 x i8] zeroinitializer }, align 32
@pkt_writable_disc._entry_ptr = internal global ptr @pkt_writable_disc._entry, section ".printk_index", align 4
@pkt_writable_disc._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.8, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013pktcdvd: %s: wrong disc type (%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@pkt_writable_disc._entry_ptr.74 = internal global ptr @pkt_writable_disc._entry.72, section ".printk_index", align 4
@pkt_writable_disc._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.8, i32 1767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015pktcdvd: %s: disc not erasable\0A\00", [62 x i8] zeroinitializer }, align 32
@pkt_writable_disc._entry_ptr.77 = internal global ptr @pkt_writable_disc._entry.75, section ".printk_index", align 4
@pkt_writable_disc._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.8, i32 1772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013pktcdvd: %s: can't write to last track (reserved)\0A\00", [43 x i8] zeroinitializer }, align 32
@pkt_writable_disc._entry_ptr.80 = internal global ptr @pkt_writable_disc._entry.78, section ".printk_index", align 4
@pkt_writable_track._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.8, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013pktcdvd: %s: bad state %d-%d-%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkt_writable_track\00", [45 x i8] zeroinitializer }, align 32
@pkt_writable_track._entry_ptr = internal global ptr @pkt_writable_track._entry, section ".printk_index", align 4
@pkt_set_write_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.8, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013pktcdvd: %s: write mode wrong %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pkt_set_write_settings\00", [41 x i8] zeroinitializer }, align 32
@pkt_set_write_settings._entry_ptr = internal global ptr @pkt_set_write_settings._entry, section ".printk_index", align 4
@pkt_dump_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.8, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013pktcdvd: %s: %*ph - sense %02x.%02x.%02x (%s)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkt_dump_sense\00", [17 x i8] zeroinitializer }, align 32
@pkt_dump_sense._entry_ptr = internal global ptr @pkt_dump_sense._entry, section ".printk_index", align 4
@pkt_dump_sense._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.8, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013pktcdvd: %s: %*ph - no sense\0A\00", [32 x i8] zeroinitializer }, align 32
@pkt_dump_sense._entry_ptr.89 = internal global ptr @pkt_dump_sense._entry.87, section ".printk_index", align 4
@sense_key_string.info = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], [60 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No sense\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Recovered error\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Not ready\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Medium error\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Hardware error\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Illegal request\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unit attention\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Data protect\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Blank check\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@pkt_print_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.8, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016pktcdvd: %s: %s packets, %u blocks, Mode-%c disc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pkt_print_settings\00", [45 x i8] zeroinitializer }, align 32
@pkt_print_settings._entry_ptr = internal global ptr @pkt_print_settings._entry, section ".printk_index", align 4
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Fixed\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Variable\00", [23 x i8] zeroinitializer }, align 32
@pkt_write_caching._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.8, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pktcdvd: %s: write caching control failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pkt_write_caching\00", [46 x i8] zeroinitializer }, align 32
@pkt_write_caching._entry_ptr = internal global ptr @pkt_write_caching._entry, section ".printk_index", align 4
@pkt_write_caching._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.8, i32 1909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015pktcdvd: %s: enabled write caching\0A\00", [58 x i8] zeroinitializer }, align 32
@pkt_write_caching._entry_ptr.108 = internal global ptr @pkt_write_caching._entry.106, section ".printk_index", align 4
@pkt_media_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.8, i32 2024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015pktcdvd: %s: disc type is not CD-RW\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pkt_media_speed\00", [16 x i8] zeroinitializer }, align 32
@pkt_media_speed._entry_ptr = internal global ptr @pkt_media_speed._entry, section ".printk_index", align 4
@pkt_media_speed._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.8, i32 2028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015pktcdvd: %s: A1 values on media are not valid, maybe not CDRW?\0A\00", [62 x i8] zeroinitializer }, align 32
@pkt_media_speed._entry_ptr.113 = internal global ptr @pkt_media_speed._entry.111, section ".printk_index", align 4
@us_clv_to_speed = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\02\04\08\00\00\10\00\18 (0\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@pkt_media_speed._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.8, i32 2048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015pktcdvd: %s: unknown disc sub-type %d\0A\00", [55 x i8] zeroinitializer }, align 32
@pkt_media_speed._entry_ptr.116 = internal global ptr @pkt_media_speed._entry.114, section ".printk_index", align 4
@pkt_media_speed._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.110, ptr @.str.8, i32 2052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pktcdvd: %s: maximum media speed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@pkt_media_speed._entry_ptr.119 = internal global ptr @pkt_media_speed._entry.117, section ".printk_index", align 4
@pkt_media_speed._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.110, ptr @.str.8, i32 2055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015pktcdvd: %s: unknown speed %d for sub-type %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pkt_media_speed._entry_ptr.122 = internal global ptr @pkt_media_speed._entry.120, section ".printk_index", align 4
@clv_to_speed = internal constant { <{ i8, i8, i8, i8, i8, [11 x i8] }>, [16 x i8] } { <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 2, i8 4, i8 6, i8 8, [11 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@hs_clv_to_speed = internal constant { <{ i8, i8, i8, i8, i8, [11 x i8] }>, [16 x i8] } { <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 2, i8 4, i8 6, i8 10, [11 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@pkt_set_segment_merging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.8, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013pktcdvd: %s: cdrom max_phys_segments too small\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pkt_set_segment_merging\00", [40 x i8] zeroinitializer }, align 32
@pkt_set_segment_merging._entry_ptr = internal global ptr @pkt_set_segment_merging._entry, section ".printk_index", align 4
@pkt_alloc_packet_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pkt->lock\00", [21 x i8] zeroinitializer }, align 32
@pkt_release_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.8, i32 2207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015pktcdvd: %s: not flushing cache\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pkt_release_dev\00", [16 x i8] zeroinitializer }, align 32
@pkt_release_dev._entry_ptr = internal global ptr @pkt_release_dev._entry, section ".printk_index", align 4
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pktcdvd/%s\00", [21 x i8] zeroinitializer }, align 32
@pkt_new_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.8, i32 2544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013pktcdvd: %s: recursive setup not allowed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pkt_new_dev\00", [20 x i8] zeroinitializer }, align 32
@pkt_new_dev._entry_ptr = internal global ptr @pkt_new_dev._entry, section ".printk_index", align 4
@pkt_new_dev._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.8, i32 2553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013pktcdvd: %s: %s already setup\0A\00", [63 x i8] zeroinitializer }, align 32
@pkt_new_dev._entry_ptr.136 = internal global ptr @pkt_new_dev._entry.134, section ".printk_index", align 4
@pkt_new_dev._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.133, ptr @.str.8, i32 2557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013pktcdvd: %s: can't chain pktcdvd devices\0A\00", [52 x i8] zeroinitializer }, align 32
@pkt_new_dev._entry_ptr.139 = internal global ptr @pkt_new_dev._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@pkt_new_dev._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.133, ptr @.str.8, i32 2583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013pktcdvd: %s: can't start kernel thread\0A\00", [54 x i8] zeroinitializer }, align 32
@pkt_new_dev._entry_ptr.143 = internal global ptr @pkt_new_dev._entry.141, section ".printk_index", align 4
@pkt_proc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pkt_new_dev._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.133, ptr @.str.8, i32 2588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015pktcdvd: %s: writer mapped to %s\0A\00", [60 x i8] zeroinitializer }, align 32
@pkt_new_dev._entry_ptr.146 = internal global ptr @pkt_new_dev._entry.144, section ".printk_index", align 4
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Writer %s mapped to %s:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0ASettings:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09packet size:\09\09%dkB\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Packet\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09write type:\09\09%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09packet type:\09\09%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09link loss:\09\09%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09track mode:\09\09%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 1\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 2\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09block mode:\09\09%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0AStatistics:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09packets started:\09%lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09packets ended:\09\09%lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09written:\09\09%lukB\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09read gather:\09\09%lukB\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09read:\09\09\09%lukB\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0AMisc:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09reference count:\09%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09flags:\09\09\090x%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09read speed:\09\09%ukB/s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09write speed:\09\09%ukB/s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09start offset:\09\09%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09mode page offset:\09%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0AQueue state:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09bios queued:\09\09%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09bios pending:\09\09%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09current sector:\09\090x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\09state:\09\09\09i:%d ow:%d rw:%d ww:%d rec:%d fin:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09write congestion marks:\09off=%d on=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@class_pktcdvd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pkt_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @pkt_stat_group, ptr @pkt_wq_group, ptr null], [20 x i8] zeroinitializer }, align 32
@pkt_stat_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.180, ptr null, ptr null, ptr @pkt_stat_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pkt_wq_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.188, ptr null, ptr null, ptr @pkt_wq_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@pkt_stat_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_packets_finished, ptr @dev_attr_packets_started, ptr @dev_attr_kb_read, ptr @dev_attr_kb_written, ptr @dev_attr_kb_read_gather, ptr @dev_attr_reset, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_packets_finished = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @packets_finished_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_packets_started = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @packets_started_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_kb_read = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kb_read_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_kb_written = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kb_written_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_kb_read_gather = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kb_read_gather_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @reset_store }, [36 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"packets_finished\00", [47 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"packets_started\00", [16 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kb_read\00", [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kb_written\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kb_read_gather\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_queue\00", [20 x i8] zeroinitializer }, align 32
@pkt_wq_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_congestion_on, ptr @dev_attr_congestion_off, ptr @dev_attr_size, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_congestion_on = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @congestion_on_show, ptr @congestion_on_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_congestion_off = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @congestion_off_show, ptr @congestion_off_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"congestion_on\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"congestion_off\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@pkt_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pkt_debugfs_fops_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pkt_remove_dev.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.195, ptr @.str.8, ptr @.str.196, i8 2, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkt_remove_dev\00", [17 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dev not setup\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pktcdvd: dev not setup\0A\00", [40 x i8] zeroinitializer }, align 32
@pkt_remove_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.195, ptr @.str.8, i32 2798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015pktcdvd: %s: writer unmapped\0A\00", [32 x i8] zeroinitializer }, align 32
@pkt_remove_dev._entry_ptr = internal global ptr @pkt_remove_dev._entry, section ".printk_index", align 4
@pkt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctl_mutex\00", [21 x i8] zeroinitializer }, align 32
@pkt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.8, i32 2912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013pktcdvd: unable to register block device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pkt_init\00", [23 x i8] zeroinitializer }, align 32
@pkt_init._entry_ptr = internal global ptr @pkt_init._entry, section ".printk_index", align 4
@pkt_init._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.8, i32 2926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pktcdvd: unable to register misc device\0A\00", [53 x i8] zeroinitializer }, align 32
@pkt_init._entry_ptr.204 = internal global ptr @pkt_init._entry.202, section ".printk_index", align 4
@class_pktcdvd_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @class_pktcdvd_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pkt_sysfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pkt_sysfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.8, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pktcdvd: failed to create class pktcdvd\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pkt_sysfs_init\00", [17 x i8] zeroinitializer }, align 32
@pkt_sysfs_init._entry_ptr = internal global ptr @pkt_sysfs_init._entry, section ".printk_index", align 4
@class_pktcdvd_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @class_pktcdvd_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@class_pktcdvd_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @class_attr_add, ptr @class_attr_remove, ptr @class_attr_device_map, ptr null], [16 x i8] zeroinitializer }, align 32
@class_attr_add = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.207, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @add_store }, [36 x i8] zeroinitializer }, align 32
@class_attr_remove = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.209, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @remove_store }, [36 x i8] zeroinitializer }, align 32
@class_attr_device_map = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.210, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_map_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u:%u\00", [26 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_map\00", [21 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %u:%u %u:%u\0A\00", [16 x i8] zeroinitializer }, align 32
@switch.table.pkt_media_speed = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @clv_to_speed, ptr @hs_clv_to_speed, ptr @us_clv_to_speed], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 16, i64 18, i64 19, i64 26]
@__sancov_gen_cov_switch_values.213 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 21254, i64 21257, i64 21264, i64 21395, i64 21397]
@__sancov_gen_cov_switch_values.214 = internal global [7 x i64] [i64 5, i64 16, i64 10, i64 18, i64 19, i64 26, i64 65535]
@__sancov_gen_cov_switch_values.215 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 32, i64 255]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 16, i64 18, i64 26]
@__sancov_gen_cov_switch_values.217 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 16, i64 18, i64 26]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 4, i64 8, i64 10]
@__sancov_gen_cov_switch_values.221 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2947, i32 20 }
@___asan_gen_.225 = private unnamed_addr constant [9 x i8] c"pkt_misc\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2887, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant [13 x i8] c"pktdev_major\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 96, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2953, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant [9 x i8] c"psd_pool\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 100, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant [12 x i8] c"pkt_bio_set\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 101, i32 23 }
@___asan_gen_.240 = private unnamed_addr constant [13 x i8] c"pkt_ctl_fops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2877, i32 37 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2890, i32 14 }
@___asan_gen_.247 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 156, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [10 x i8] c"ctl_mutex\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 99, i32 21 }
@___asan_gen_.252 = private unnamed_addr constant [9 x i8] c"pkt_devs\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 94, i32 31 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2686, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2702, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2704, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2705, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2708, i32 20 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2709, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2716, i32 9 }
@___asan_gen_.297 = private unnamed_addr constant [12 x i8] c"pktcdvd_ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2659, i32 45 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2757, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2415, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2432, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2438, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [14 x i8] c"pktcdvd_mutex\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 93, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2156, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2185, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2189, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2092, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2105, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2112, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2119, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2127, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1798, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1810, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1815, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1825, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1829, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1871, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1757, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1762, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1767, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1772, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1729, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1684, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 747, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 752, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 728, i32 28 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 729, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 729, i32 15 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 729, i32 34 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 730, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 730, i32 19 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 730, i32 37 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 731, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 731, i32 21 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 731, i32 37 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 734, i32 50 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1490, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1906, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1909, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2024, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2028, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant [16 x i8] c"us_clv_to_speed\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1979, i32 13 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2048, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2052, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2055, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant [13 x i8] c"clv_to_speed\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1969, i32 13 }
@___asan_gen_.591 = private unnamed_addr constant [16 x i8] c"hs_clv_to_speed\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 1974, i32 13 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 935, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 535, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2207, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2656, i32 31 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2544, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2552, i32 4 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2557, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2581, i32 20 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2583, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant [9 x i8] c"pkt_proc\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 95, i32 31 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2588, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 57, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2481, i32 16 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2484, i32 16 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2485, i32 16 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2488, i32 9 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2490, i32 9 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2491, i32 16 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2493, i32 16 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2494, i32 16 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2496, i32 16 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2499, i32 9 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2501, i32 9 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2504, i32 16 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2506, i32 16 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2507, i32 16 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2508, i32 16 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2509, i32 16 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2510, i32 16 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2511, i32 16 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2513, i32 16 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2514, i32 16 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2515, i32 16 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2516, i32 16 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2517, i32 16 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2518, i32 16 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2519, i32 16 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2521, i32 16 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2522, i32 16 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2523, i32 16 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2524, i32 16 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2527, i32 16 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2530, i32 16 }
@___asan_gen_.756 = private unnamed_addr constant [14 x i8] c"class_pktcdvd\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 103, i32 22 }
@___asan_gen_.759 = private unnamed_addr constant [11 x i8] c"pkt_groups\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 310, i32 38 }
@___asan_gen_.762 = private unnamed_addr constant [15 x i8] c"pkt_stat_group\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 203, i32 37 }
@___asan_gen_.765 = private unnamed_addr constant [13 x i8] c"pkt_wq_group\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 305, i32 37 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 204, i32 10 }
@___asan_gen_.771 = private unnamed_addr constant [15 x i8] c"pkt_stat_attrs\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 193, i32 26 }
@___asan_gen_.774 = private unnamed_addr constant [26 x i8] c"dev_attr_packets_finished\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [25 x i8] c"dev_attr_packets_started\00", align 1
@___asan_gen_.780 = private unnamed_addr constant [17 x i8] c"dev_attr_kb_read\00", align 1
@___asan_gen_.783 = private unnamed_addr constant [20 x i8] c"dev_attr_kb_written\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [24 x i8] c"dev_attr_kb_read_gather\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 148, i32 8 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 146, i32 25 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 139, i32 8 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 166, i32 8 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 157, i32 8 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 175, i32 8 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 191, i32 8 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 306, i32 10 }
@___asan_gen_.816 = private unnamed_addr constant [13 x i8] c"pkt_wq_attrs\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 298, i32 26 }
@___asan_gen_.819 = private unnamed_addr constant [23 x i8] c"dev_attr_congestion_on\00", align 1
@___asan_gen_.822 = private unnamed_addr constant [24 x i8] c"dev_attr_congestion_off\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 296, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 275, i32 22 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 287, i32 18 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 266, i32 8 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 219, i32 8 }
@___asan_gen_.843 = private unnamed_addr constant [17 x i8] c"pkt_debugfs_root\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 104, i32 23 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 474, i32 39 }
@___asan_gen_.849 = private unnamed_addr constant [11 x i8] c"debug_fops\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 458, i32 37 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2778, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2798, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2898, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2912, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 2926, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant [21 x i8] c"class_pktcdvd_groups\00", align 1
@___asan_gen_.891 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 423, i32 8 }
@___asan_gen_.894 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 427, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant [20 x i8] c"class_pktcdvd_group\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 406, i32 1 }
@___asan_gen_.906 = private unnamed_addr constant [20 x i8] c"class_pktcdvd_attrs\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 400, i32 26 }
@___asan_gen_.909 = private unnamed_addr constant [15 x i8] c"class_attr_add\00", align 1
@___asan_gen_.912 = private unnamed_addr constant [18 x i8] c"class_attr_remove\00", align 1
@___asan_gen_.915 = private unnamed_addr constant [22 x i8] c"class_attr_device_map\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 386, i32 8 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 372, i32 18 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 398, i32 8 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 365, i32 8 }
@___asan_gen_.930 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.931 = private constant [27 x i8] c"../drivers/block/pktcdvd.c\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 356, i32 24 }
@___asan_gen_.933 = private unnamed_addr constant [29 x i8] c"switch.table.pkt_media_speed\00", align 1
@llvm.compiler.used = appending global [291 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_pkt_exit, ptr @__initcall__kmod_pktcdvd__318_2962_pkt_init6, ptr @pkt_dump_sense._entry, ptr @pkt_dump_sense._entry.87, ptr @pkt_dump_sense._entry_ptr, ptr @pkt_dump_sense._entry_ptr.89, ptr @pkt_exit, ptr @pkt_init._entry, ptr @pkt_init._entry.202, ptr @pkt_init._entry_ptr, ptr @pkt_init._entry_ptr.204, ptr @pkt_media_speed._entry, ptr @pkt_media_speed._entry.111, ptr @pkt_media_speed._entry.114, ptr @pkt_media_speed._entry.117, ptr @pkt_media_speed._entry.120, ptr @pkt_media_speed._entry_ptr, ptr @pkt_media_speed._entry_ptr.113, ptr @pkt_media_speed._entry_ptr.116, ptr @pkt_media_speed._entry_ptr.119, ptr @pkt_media_speed._entry_ptr.122, ptr @pkt_new_dev._entry, ptr @pkt_new_dev._entry.134, ptr @pkt_new_dev._entry.137, ptr @pkt_new_dev._entry.141, ptr @pkt_new_dev._entry.144, ptr @pkt_new_dev._entry_ptr, ptr @pkt_new_dev._entry_ptr.136, ptr @pkt_new_dev._entry_ptr.139, ptr @pkt_new_dev._entry_ptr.143, ptr @pkt_new_dev._entry_ptr.146, ptr @pkt_open_dev._entry, ptr @pkt_open_dev._entry.33, ptr @pkt_open_dev._entry.36, ptr @pkt_open_dev._entry_ptr, ptr @pkt_open_dev._entry_ptr.35, ptr @pkt_open_dev._entry_ptr.38, ptr @pkt_open_write._entry, ptr @pkt_open_write._entry.41, ptr @pkt_open_write._entry.44, ptr @pkt_open_write._entry.47, ptr @pkt_open_write._entry.50, ptr @pkt_open_write._entry_ptr, ptr @pkt_open_write._entry_ptr.43, ptr @pkt_open_write._entry_ptr.46, ptr @pkt_open_write._entry_ptr.49, ptr @pkt_open_write._entry_ptr.52, ptr @pkt_print_settings._entry, ptr @pkt_print_settings._entry_ptr, ptr @pkt_probe_settings._entry, ptr @pkt_probe_settings._entry.55, ptr @pkt_probe_settings._entry.58, ptr @pkt_probe_settings._entry.61, ptr @pkt_probe_settings._entry.64, ptr @pkt_probe_settings._entry.67, ptr @pkt_probe_settings._entry_ptr, ptr @pkt_probe_settings._entry_ptr.57, ptr @pkt_probe_settings._entry_ptr.60, ptr @pkt_probe_settings._entry_ptr.63, ptr @pkt_probe_settings._entry_ptr.66, ptr @pkt_probe_settings._entry_ptr.69, ptr @pkt_release_dev._entry, ptr @pkt_release_dev._entry_ptr, ptr @pkt_remove_dev._entry, ptr @pkt_remove_dev._entry_ptr, ptr @pkt_set_segment_merging._entry, ptr @pkt_set_segment_merging._entry_ptr, ptr @pkt_set_write_settings._entry, ptr @pkt_set_write_settings._entry_ptr, ptr @pkt_setup_dev._entry, ptr @pkt_setup_dev._entry.18, ptr @pkt_setup_dev._entry_ptr, ptr @pkt_setup_dev._entry_ptr.20, ptr @pkt_submit_bio._entry, ptr @pkt_submit_bio._entry.23, ptr @pkt_submit_bio._entry.26, ptr @pkt_submit_bio._entry_ptr, ptr @pkt_submit_bio._entry_ptr.25, ptr @pkt_submit_bio._entry_ptr.28, ptr @pkt_sysfs_init._entry, ptr @pkt_sysfs_init._entry_ptr, ptr @pkt_writable_disc._entry, ptr @pkt_writable_disc._entry.72, ptr @pkt_writable_disc._entry.75, ptr @pkt_writable_disc._entry.78, ptr @pkt_writable_disc._entry_ptr, ptr @pkt_writable_disc._entry_ptr.74, ptr @pkt_writable_disc._entry_ptr.77, ptr @pkt_writable_disc._entry_ptr.80, ptr @pkt_writable_track._entry, ptr @pkt_writable_track._entry_ptr, ptr @pkt_write_caching._entry, ptr @pkt_write_caching._entry.106, ptr @pkt_write_caching._entry_ptr, ptr @pkt_write_caching._entry_ptr.108, ptr @.str, ptr @pkt_misc, ptr @pktdev_major, ptr @.str.1, ptr @psd_pool, ptr @pkt_bio_set, ptr @pkt_ctl_fops, ptr @.str.2, ptr @.str.5, ptr @ctl_mutex, ptr @pkt_devs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pkt_setup_dev.__key, ptr @.str.9, ptr @pkt_setup_dev.__key.10, ptr @.str.11, ptr @pkt_setup_dev.__key.12, ptr @.str.13, ptr @.str.14, ptr @pkt_setup_dev.__key.15, ptr @.str.16, ptr @pkt_setup_dev.__key.17, ptr @pktcdvd_ops, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @pktcdvd_mutex, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @sense_key_string.info, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @us_clv_to_speed, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @clv_to_speed, ptr @hs_clv_to_speed, ptr @.str.125, ptr @.str.126, ptr @pkt_alloc_packet_data.__key, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @pkt_proc, ptr @.str.145, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @class_pktcdvd, ptr @pkt_groups, ptr @pkt_stat_group, ptr @pkt_wq_group, ptr @.str.180, ptr @pkt_stat_attrs, ptr @dev_attr_packets_finished, ptr @dev_attr_packets_started, ptr @dev_attr_kb_read, ptr @dev_attr_kb_written, ptr @dev_attr_kb_read_gather, ptr @dev_attr_reset, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @pkt_wq_attrs, ptr @dev_attr_congestion_on, ptr @dev_attr_congestion_off, ptr @dev_attr_size, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @pkt_debugfs_root, ptr @.str.194, ptr @debug_fops, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @pkt_init.__key, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @class_pktcdvd_groups, ptr @pkt_sysfs_init.__key, ptr @.str.205, ptr @.str.206, ptr @class_pktcdvd_group, ptr @class_pktcdvd_attrs, ptr @class_attr_add, ptr @class_attr_remove, ptr @class_attr_device_map, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @switch.table.pkt_media_speed], section "llvm.metadata"
@0 = internal global [238 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pktdev_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psd_pool to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_bio_set to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_ctl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_devs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_setup_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_setup_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_setup_dev.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_setup_dev.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_setup_dev.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_setup_dev.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pktcdvd_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_setup_dev._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_submit_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_submit_bio._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_submit_bio._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pktcdvd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_open_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_open_dev._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_open_dev._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_open_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_open_write._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_open_write._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_open_write._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_open_write._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_probe_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_probe_settings._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_probe_settings._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_probe_settings._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_probe_settings._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_probe_settings._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_writable_disc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_writable_disc._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_writable_disc._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_writable_disc._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_writable_track._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_set_write_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_dump_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_dump_sense._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sense_key_string.info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_print_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_write_caching._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_write_caching._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_media_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_media_speed._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us_clv_to_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_media_speed._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_media_speed._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_media_speed._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clv_to_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_clv_to_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_set_segment_merging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_alloc_packet_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_release_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_new_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_new_dev._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_new_dev._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_new_dev._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_proc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_new_dev._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_pktcdvd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_stat_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_wq_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_stat_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_packets_finished to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_packets_started to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_kb_read to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_kb_written to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_kb_read_gather to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_wq_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_congestion_on to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_congestion_off to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_remove_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_init._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_pktcdvd_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_sysfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkt_sysfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_pktcdvd_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_pktcdvd_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_add to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_remove to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_device_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pkt_media_speed to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pkt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #13
  tail call void @misc_deregister(ptr noundef nonnull @pkt_misc) #13
  %0 = load ptr, ptr @pkt_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #13
  store ptr null, ptr @pkt_debugfs_root, align 4
  %1 = load ptr, ptr @class_pktcdvd, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.pkt_sysfs_cleanup.exit_crit_edge, label %if.then.i

entry.pkt_sysfs_cleanup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_sysfs_cleanup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @class_destroy(ptr noundef nonnull %1) #13
  br label %pkt_sysfs_cleanup.exit

pkt_sysfs_cleanup.exit:                           ; preds = %if.then.i, %entry.pkt_sysfs_cleanup.exit_crit_edge
  store ptr null, ptr @class_pktcdvd, align 4
  %2 = load i32, ptr @pktdev_major, align 4
  tail call void @unregister_blkdev(i32 noundef %2, ptr noundef nonnull @.str.1) #13
  tail call void @mempool_exit(ptr noundef nonnull @psd_pool) #13
  tail call void @bioset_exit(ptr noundef nonnull @pkt_bio_set) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pkt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef nonnull @ctl_mutex, ptr noundef nonnull @.str.199, ptr noundef nonnull @pkt_init.__key) #13
  %call.i = tail call i32 @mempool_init(ptr noundef nonnull @psd_pool, i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 8 to ptr)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bioset_init(ptr noundef nonnull @pkt_bio_set, i32 noundef 2, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mempool_exit(ptr noundef nonnull @psd_pool) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load i32, ptr @pktdev_major, align 4
  %call5 = tail call i32 @__register_blkdev(i32 noundef %0, ptr noundef nonnull @.str.1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200) #16
  br label %out2

if.end11:                                         ; preds = %if.end4
  %1 = load i32, ptr @pktdev_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %call5, ptr @pktdev_major, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 60) #17
  store ptr %call7.i.i.i, ptr @class_pktcdvd, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end14.out_crit_edge, label %if.end.i

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %if.end14
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %call7.i.i.i, align 8
  %owner.i = getelementptr inbounds %struct.class, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner.i, align 4
  %class_release.i = getelementptr inbounds %struct.class, ptr %call7.i.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %class_release.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @class_pktcdvd_release, ptr %class_release.i, align 4
  %class_groups.i = getelementptr inbounds %struct.class, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %class_groups.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @class_pktcdvd_groups, ptr %class_groups.i, align 8
  %call1.i = tail call i32 @__class_register(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @pkt_sysfs_init.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = load ptr, ptr @class_pktcdvd, align 4
  tail call void @kfree(ptr noundef %7) #13
  store ptr null, ptr @class_pktcdvd, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205) #16
  br label %out

if.end18:                                         ; preds = %if.end.i
  %call.i37 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #13
  store ptr %call.i37, ptr @pkt_debugfs_root, align 4
  %call19 = tail call i32 @misc_register(ptr noundef nonnull @pkt_misc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end18
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203) #16
  %8 = load ptr, ptr @pkt_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %8) #13
  store ptr null, ptr @pkt_debugfs_root, align 4
  %9 = load ptr, ptr @class_pktcdvd, align 4
  %tobool.not.i38 = icmp eq ptr %9, null
  br i1 %tobool.not.i38, label %do.end24.pkt_sysfs_cleanup.exit_crit_edge, label %if.then.i

do.end24.pkt_sysfs_cleanup.exit_crit_edge:        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_sysfs_cleanup.exit

if.then.i:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @class_destroy(ptr noundef nonnull %9) #13
  br label %pkt_sysfs_cleanup.exit

pkt_sysfs_cleanup.exit:                           ; preds = %if.then.i, %do.end24.pkt_sysfs_cleanup.exit_crit_edge
  store ptr null, ptr @class_pktcdvd, align 4
  br label %out

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str, ptr noundef null) #13
  store ptr %call28, ptr @pkt_proc, align 4
  br label %cleanup

out:                                              ; preds = %pkt_sysfs_cleanup.exit, %if.then3.i, %if.end14.out_crit_edge
  %ret.0 = phi i32 [ %call19, %pkt_sysfs_cleanup.exit ], [ -12, %if.end14.out_crit_edge ], [ %call1.i, %if.then3.i ]
  %10 = load i32, ptr @pktdev_major, align 4
  tail call void @unregister_blkdev(i32 noundef %10, ptr noundef nonnull @.str.1) #13
  br label %out2

out2:                                             ; preds = %out, %do.end9
  %ret.1 = phi i32 [ %call5, %do.end9 ], [ %ret.0, %out ]
  tail call void @mempool_exit(ptr noundef nonnull @psd_pool) #13
  tail call void @bioset_exit(ptr noundef nonnull @pkt_bio_set) #13
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end27, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %ret.1, %out2 ], [ 0, %if.end27 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkt_ctl_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %ctrl_cmd = alloca %struct.pkt_ctrl_command, align 4
  %pkt_dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctrl_cmd) #13
  %1 = getelementptr inbounds %struct.pkt_ctrl_command, ptr %ctrl_cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.pkt_ctrl_command, ptr %ctrl_cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.pkt_ctrl_command, ptr %ctrl_cmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.pkt_ctrl_command, ptr %ctrl_cmd, i32 0, i32 4
  %5 = call ptr @memset(ptr %ctrl_cmd, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkt_dev) #13
  %6 = ptrtoint ptr %pkt_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pkt_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072146431, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, -1072146431
  br i1 %cmp.not, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 24, i32 -1226833920) #18
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !468

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ctrl_cmd, i32 noundef 24) #13
  %8 = call i32 @llvm.read_register.i32(metadata !458) #13
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !469
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !470
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !471
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ctrl_cmd, ptr noundef %0, i32 noundef 24) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #13, !srcloc !470
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !471
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !468

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.then.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %ctrl_cmd, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %12 = ptrtoint ptr %ctrl_cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl_cmd, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end2.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb17
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end2
  %call3 = call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call3, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %and1.i = and i32 %16, 255
  %shr2.i = lshr i32 %16, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %17 = shl i32 %16, 12
  %shl.i = and i32 %17, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %call7 = call fastcc i32 @pkt_setup_dev(i32 noundef %or4.i, ptr noundef nonnull %pkt_dev)
  %18 = ptrtoint ptr %pkt_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pkt_dev, align 4
  %and1.i26 = and i32 %19, 255
  %20 = lshr i32 %19, 12
  %shl.i27 = and i32 %20, 1048320
  %or.i28 = or i32 %shl.i27, %and1.i26
  %and2.i = shl i32 %19, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i29 = or i32 %or.i28, %shl3.i
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or4.i29, ptr %3, align 4
  br label %if.then.i39

sw.bb10:                                          ; preds = %if.end2
  %call11 = call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call11, label %if.end13, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %and1.i30 = and i32 %23, 255
  %shr2.i31 = lshr i32 %23, 12
  %and3.i32 = and i32 %shr2.i31, 1048320
  %or.i33 = or i32 %and3.i32, %and1.i30
  %24 = shl i32 %23, 12
  %shl.i34 = and i32 %24, -1048576
  %or4.i35 = or i32 %or.i33, %shl.i34
  %call16 = call fastcc i32 @pkt_remove_dev(i32 noundef %or4.i35)
  br label %if.then.i39

sw.bb17:                                          ; preds = %if.end2
  call void @mutex_lock_nested(ptr noundef nonnull @ctl_mutex, i32 noundef 1) #13
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp.i.i45 = icmp ugt i32 %26, 7
  br i1 %cmp.i.i45, label %sw.bb17.if.else.i_crit_edge, label %pkt_find_dev_from_minor.exit.i

sw.bb17.if.else.i_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

pkt_find_dev_from_minor.exit.i:                   ; preds = %sw.bb17
  %27 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %26, i32 8) #13, !srcloc !472
  %and.i.i = and i32 %27, %26
  %arrayidx.i.i = getelementptr [8 x ptr], ptr @pkt_devs, i32 0, i32 %and.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %pkt_find_dev_from_minor.exit.i.if.else.i_crit_edge, label %if.then.i46

pkt_find_dev_from_minor.exit.i.if.else.i_crit_edge: ; preds = %pkt_find_dev_from_minor.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i46:                                      ; preds = %pkt_find_dev_from_minor.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bd_dev.i, align 4
  %and1.i.i = and i32 %33, 255
  %34 = lshr i32 %33, 12
  %shl.i.i = and i32 %34, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %33, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or4.i.i, ptr %2, align 4
  %pkt_dev.i = getelementptr inbounds %struct.pktcdvd_device, ptr %29, i32 0, i32 1
  %36 = ptrtoint ptr %pkt_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pkt_dev.i, align 4
  %and1.i13.i = and i32 %37, 255
  %38 = lshr i32 %37, 12
  %shl.i14.i = and i32 %38, 1048320
  %or.i15.i = or i32 %shl.i14.i, %and1.i13.i
  %and2.i16.i = shl i32 %37, 12
  %shl3.i17.i = and i32 %and2.i16.i, -1048576
  %or4.i18.i = or i32 %or.i15.i, %shl3.i17.i
  br label %pkt_get_status.exit

if.else.i:                                        ; preds = %pkt_find_dev_from_minor.exit.i.if.else.i_crit_edge, %sw.bb17.if.else.i_crit_edge
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %2, align 4
  br label %pkt_get_status.exit

pkt_get_status.exit:                              ; preds = %if.else.i, %if.then.i46
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %or4.i18.i, %if.then.i46 ]
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink.i, ptr %3, align 4
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %4, align 4
  call void @mutex_unlock(ptr noundef nonnull @ctl_mutex) #13
  br label %if.then.i39

if.then.i39:                                      ; preds = %pkt_get_status.exit, %if.end13, %if.end5
  %ret.0 = phi i32 [ 0, %pkt_get_status.exit ], [ %call16, %if.end13 ], [ %call7, %if.end5 ]
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i38 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i38, label %if.then.i39.cleanup_crit_edge, label %copy_to_user.exit

if.then.i39.cleanup_crit_edge:                    ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i43 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ctrl_cmd, i32 noundef 24) #13
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ctrl_cmd, i32 noundef 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool19.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool19.not, i32 %ret.0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i39.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb10.cleanup_crit_edge ], [ -25, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i39.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkt_dev) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctrl_cmd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_setup_dev(i32 noundef %dev, ptr noundef writeonly %pkt_dev) unnamed_addr #2 align 64 {
entry:
  %b.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ctl_mutex, i32 noundef 1) #13
  %0 = load ptr, ptr @pkt_devs, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %for.inc

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.inc.if.end3_crit_edge, label %for.inc.1

for.inc.if.end3_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc.1:                                        ; preds = %for.inc
  %2 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %2, null
  br i1 %tobool.not.2, label %for.inc.1.if.end3_crit_edge, label %for.inc.2

for.inc.1.if.end3_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %3, null
  br i1 %tobool.not.3, label %for.inc.2.if.end3_crit_edge, label %for.inc.3

for.inc.2.if.end3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %4, null
  br i1 %tobool.not.4, label %for.inc.3.if.end3_crit_edge, label %for.inc.4

for.inc.3.if.end3_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 5), align 4
  %tobool.not.5 = icmp eq ptr %5, null
  br i1 %tobool.not.5, label %for.inc.4.if.end3_crit_edge, label %for.inc.5

for.inc.4.if.end3_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 6), align 4
  %tobool.not.6 = icmp eq ptr %6, null
  br i1 %tobool.not.6, label %for.inc.5.if.end3_crit_edge, label %for.inc.6

for.inc.5.if.end3_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 7), align 4
  %tobool.not.7 = icmp eq ptr %7, null
  br i1 %tobool.not.7, label %for.inc.6.if.end3_crit_edge, label %do.end

for.inc.6.if.end3_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

do.end:                                           ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 8) #16
  br label %out_mutex

if.end3:                                          ; preds = %for.inc.6.if.end3_crit_edge, %for.inc.5.if.end3_crit_edge, %for.inc.4.if.end3_crit_edge, %for.inc.3.if.end3_crit_edge, %for.inc.2.if.end3_crit_edge, %for.inc.1.if.end3_crit_edge, %for.inc.if.end3_crit_edge, %entry.if.end3_crit_edge
  %idx.0133.lcssa = phi i32 [ 0, %entry.if.end3_crit_edge ], [ 1, %for.inc.if.end3_crit_edge ], [ 2, %for.inc.1.if.end3_crit_edge ], [ 3, %for.inc.2.if.end3_crit_edge ], [ 4, %for.inc.3.if.end3_crit_edge ], [ 5, %for.inc.4.if.end3_crit_edge ], [ 6, %for.inc.5.if.end3_crit_edge ], [ 7, %for.inc.6.if.end3_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 520) #17
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.out_mutex_crit_edge, label %if.end7

if.end3.out_mutex_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_mutex

if.end7:                                          ; preds = %if.end3
  %rb_pool = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 23
  %call.i = tail call i32 @mempool_init(ptr noundef %rb_pool, i32 noundef 512, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 16 to ptr)) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_mem_crit_edge

if.end7.out_mem_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_mem

if.end11:                                         ; preds = %if.end7
  %cdrw = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %cdrw to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %cdrw, ptr %cdrw, align 8
  %prev.i = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cdrw, ptr %prev.i, align 4
  %pkt_active_list = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %pkt_active_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pkt_active_list, ptr %pkt_active_list, align 8
  %prev.i114 = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pkt_active_list, ptr %prev.i114, align 4
  %active_list_lock = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 15, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %active_list_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @pkt_setup_dev.__key, i16 noundef signext 3) #13
  %lock = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @pkt_setup_dev.__key.10, i16 noundef signext 3) #13
  %lock23 = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 24, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock23, ptr noundef nonnull @.str.13, ptr noundef nonnull @pkt_setup_dev.__key.12, i16 noundef signext 3) #13
  %read_queue = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 24, i32 3
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 2
  %13 = call ptr @memset(ptr %read_queue, i32 0, i32 16)
  %call29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.14, i32 noundef %idx.0133.lcssa)
  %wqueue = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %wqueue, ptr noundef nonnull @.str.16, ptr noundef nonnull @pkt_setup_dev.__key.15) #13
  %bio_queue = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %bio_queue to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bio_queue, align 4
  %write_congestion_on = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 27
  %15 = ptrtoint ptr %write_congestion_on to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 10000, ptr %write_congestion_on, align 8
  %write_congestion_off = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 26
  %16 = ptrtoint ptr %write_congestion_off to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 9000, ptr %write_congestion_off, align 4
  %call34 = tail call ptr @__blk_alloc_disk(i32 noundef -1, ptr noundef nonnull @pkt_setup_dev.__key.17) #13
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end11.out_mem_crit_edge, label %if.end37

if.end11.out_mem_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_mem

if.end37:                                         ; preds = %if.end11
  %disk38 = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 25
  %17 = ptrtoint ptr %disk38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call34, ptr %disk38, align 8
  %18 = load i32, ptr @pktdev_major, align 4
  %19 = ptrtoint ptr %call34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %call34, align 8
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %call34, i32 0, i32 1
  %20 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %idx.0133.lcssa, ptr %first_minor, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %call34, i32 0, i32 2
  %21 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %minors, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %call34, i32 0, i32 8
  %22 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pktcdvd_ops, ptr %fops, align 8
  %flags = getelementptr inbounds %struct.gendisk, ptr %call34, i32 0, i32 11
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %flags, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %call34, i32 0, i32 3
  %call42 = tail call ptr @strcpy(ptr noundef %disk_name, ptr noundef %name) #19
  %private_data = getelementptr inbounds %struct.gendisk, ptr %call34, i32 0, i32 10
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %private_data, align 8
  %shl = shl i32 %18, 20
  %or = or i32 %shl, %idx.0133.lcssa
  %pkt_dev43 = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %pkt_dev43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or, ptr %pkt_dev43, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b.i) #13
  %26 = call ptr @memset(ptr %b.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %dev)
  %cmp.i = icmp eq i32 %or, %dev
  br i1 %cmp.i, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end37
  %27 = load ptr, ptr @pkt_devs, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end3.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %call.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %name) #16
  br label %pkt_new_dev.exit.thread

if.end3.i:                                        ; preds = %for.body.preheader.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bd_dev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %dev)
  %cmp5.i = icmp eq i32 %31, %dev
  br i1 %cmp5.i, label %if.end3.i.do.end9.i_crit_edge, label %if.end17.i

if.end3.i.do.end9.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.end3.7.i.do.end9.i_crit_edge, %if.end3.6.i.do.end9.i_crit_edge, %if.end3.5.i.do.end9.i_crit_edge, %if.end3.4.i.do.end9.i_crit_edge, %if.end3.3.i.do.end9.i_crit_edge, %if.end3.2.i.do.end9.i_crit_edge, %if.end3.1.i.do.end9.i_crit_edge, %if.end3.i.do.end9.i_crit_edge
  %.lcssa.i = phi ptr [ %29, %if.end3.i.do.end9.i_crit_edge ], [ %36, %if.end3.1.i.do.end9.i_crit_edge ], [ %43, %if.end3.2.i.do.end9.i_crit_edge ], [ %50, %if.end3.3.i.do.end9.i_crit_edge ], [ %57, %if.end3.4.i.do.end9.i_crit_edge ], [ %64, %if.end3.5.i.do.end9.i_crit_edge ], [ %71, %if.end3.6.i.do.end9.i_crit_edge ], [ %78, %if.end3.7.i.do.end9.i_crit_edge ]
  %call15.i = call ptr @bdevname(ptr noundef %.lcssa.i, ptr noundef nonnull %b.i) #13
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name, ptr noundef %call15.i) #16
  br label %pkt_new_dev.exit.thread

if.end17.i:                                       ; preds = %if.end3.i
  %pkt_dev18.i = getelementptr inbounds %struct.pktcdvd_device, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %pkt_dev18.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pkt_dev18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %dev)
  %cmp19.i = icmp eq i32 %33, %dev
  br i1 %cmp19.i, label %if.end17.i.do.end23.i_crit_edge, label %if.end17.i.for.inc.i_crit_edge

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end17.i.do.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.end17.7.i.do.end23.i_crit_edge, %if.end17.6.i.do.end23.i_crit_edge, %if.end17.5.i.do.end23.i_crit_edge, %if.end17.4.i.do.end23.i_crit_edge, %if.end17.3.i.do.end23.i_crit_edge, %if.end17.2.i.do.end23.i_crit_edge, %if.end17.1.i.do.end23.i_crit_edge, %if.end17.i.do.end23.i_crit_edge
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %name) #16
  br label %pkt_new_dev.exit.thread

for.inc.i:                                        ; preds = %if.end17.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %34 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 1), align 4
  %tobool.not.1.i = icmp eq ptr %34, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end3.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.end3.1.i:                                      ; preds = %for.inc.i
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %bd_dev.1.i = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %bd_dev.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bd_dev.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %dev)
  %cmp5.1.i = icmp eq i32 %38, %dev
  br i1 %cmp5.1.i, label %if.end3.1.i.do.end9.i_crit_edge, label %if.end17.1.i

if.end3.1.i.do.end9.i_crit_edge:                  ; preds = %if.end3.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.end17.1.i:                                     ; preds = %if.end3.1.i
  %pkt_dev18.1.i = getelementptr inbounds %struct.pktcdvd_device, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %pkt_dev18.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pkt_dev18.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %dev)
  %cmp19.1.i = icmp eq i32 %40, %dev
  br i1 %cmp19.1.i, label %if.end17.1.i.do.end23.i_crit_edge, label %if.end17.1.i.for.inc.1.i_crit_edge

if.end17.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.end17.1.i.do.end23.i_crit_edge:                ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

for.inc.1.i:                                      ; preds = %if.end17.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %41 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 2), align 4
  %tobool.not.2.i = icmp eq ptr %41, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end3.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end3.2.i:                                      ; preds = %for.inc.1.i
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %bd_dev.2.i = getelementptr inbounds %struct.block_device, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %bd_dev.2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bd_dev.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %dev)
  %cmp5.2.i = icmp eq i32 %45, %dev
  br i1 %cmp5.2.i, label %if.end3.2.i.do.end9.i_crit_edge, label %if.end17.2.i

if.end3.2.i.do.end9.i_crit_edge:                  ; preds = %if.end3.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.end17.2.i:                                     ; preds = %if.end3.2.i
  %pkt_dev18.2.i = getelementptr inbounds %struct.pktcdvd_device, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %pkt_dev18.2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pkt_dev18.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %dev)
  %cmp19.2.i = icmp eq i32 %47, %dev
  br i1 %cmp19.2.i, label %if.end17.2.i.do.end23.i_crit_edge, label %if.end17.2.i.for.inc.2.i_crit_edge

if.end17.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end17.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end17.2.i.do.end23.i_crit_edge:                ; preds = %if.end17.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

for.inc.2.i:                                      ; preds = %if.end17.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %48 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 3), align 4
  %tobool.not.3.i = icmp eq ptr %48, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end3.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.end3.3.i:                                      ; preds = %for.inc.2.i
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %bd_dev.3.i = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %bd_dev.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bd_dev.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %dev)
  %cmp5.3.i = icmp eq i32 %52, %dev
  br i1 %cmp5.3.i, label %if.end3.3.i.do.end9.i_crit_edge, label %if.end17.3.i

if.end3.3.i.do.end9.i_crit_edge:                  ; preds = %if.end3.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.end17.3.i:                                     ; preds = %if.end3.3.i
  %pkt_dev18.3.i = getelementptr inbounds %struct.pktcdvd_device, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %pkt_dev18.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pkt_dev18.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %dev)
  %cmp19.3.i = icmp eq i32 %54, %dev
  br i1 %cmp19.3.i, label %if.end17.3.i.do.end23.i_crit_edge, label %if.end17.3.i.for.inc.3.i_crit_edge

if.end17.3.i.for.inc.3.i_crit_edge:               ; preds = %if.end17.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.end17.3.i.do.end23.i_crit_edge:                ; preds = %if.end17.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

for.inc.3.i:                                      ; preds = %if.end17.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %55 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 4), align 4
  %tobool.not.4.i = icmp eq ptr %55, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end3.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i

if.end3.4.i:                                      ; preds = %for.inc.3.i
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %bd_dev.4.i = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %bd_dev.4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bd_dev.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %dev)
  %cmp5.4.i = icmp eq i32 %59, %dev
  br i1 %cmp5.4.i, label %if.end3.4.i.do.end9.i_crit_edge, label %if.end17.4.i

if.end3.4.i.do.end9.i_crit_edge:                  ; preds = %if.end3.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.end17.4.i:                                     ; preds = %if.end3.4.i
  %pkt_dev18.4.i = getelementptr inbounds %struct.pktcdvd_device, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %pkt_dev18.4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pkt_dev18.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %dev)
  %cmp19.4.i = icmp eq i32 %61, %dev
  br i1 %cmp19.4.i, label %if.end17.4.i.do.end23.i_crit_edge, label %if.end17.4.i.for.inc.4.i_crit_edge

if.end17.4.i.for.inc.4.i_crit_edge:               ; preds = %if.end17.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i

if.end17.4.i.do.end23.i_crit_edge:                ; preds = %if.end17.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

for.inc.4.i:                                      ; preds = %if.end17.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %62 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 5), align 4
  %tobool.not.5.i = icmp eq ptr %62, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.end3.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

if.end3.5.i:                                      ; preds = %for.inc.4.i
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %bd_dev.5.i = getelementptr inbounds %struct.block_device, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %bd_dev.5.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bd_dev.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %dev)
  %cmp5.5.i = icmp eq i32 %66, %dev
  br i1 %cmp5.5.i, label %if.end3.5.i.do.end9.i_crit_edge, label %if.end17.5.i

if.end3.5.i.do.end9.i_crit_edge:                  ; preds = %if.end3.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.end17.5.i:                                     ; preds = %if.end3.5.i
  %pkt_dev18.5.i = getelementptr inbounds %struct.pktcdvd_device, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %pkt_dev18.5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pkt_dev18.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %dev)
  %cmp19.5.i = icmp eq i32 %68, %dev
  br i1 %cmp19.5.i, label %if.end17.5.i.do.end23.i_crit_edge, label %if.end17.5.i.for.inc.5.i_crit_edge

if.end17.5.i.for.inc.5.i_crit_edge:               ; preds = %if.end17.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

if.end17.5.i.do.end23.i_crit_edge:                ; preds = %if.end17.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

for.inc.5.i:                                      ; preds = %if.end17.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %69 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 6), align 4
  %tobool.not.6.i = icmp eq ptr %69, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.end3.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6.i

if.end3.6.i:                                      ; preds = %for.inc.5.i
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %bd_dev.6.i = getelementptr inbounds %struct.block_device, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %bd_dev.6.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bd_dev.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %dev)
  %cmp5.6.i = icmp eq i32 %73, %dev
  br i1 %cmp5.6.i, label %if.end3.6.i.do.end9.i_crit_edge, label %if.end17.6.i

if.end3.6.i.do.end9.i_crit_edge:                  ; preds = %if.end3.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.end17.6.i:                                     ; preds = %if.end3.6.i
  %pkt_dev18.6.i = getelementptr inbounds %struct.pktcdvd_device, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %pkt_dev18.6.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pkt_dev18.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %dev)
  %cmp19.6.i = icmp eq i32 %75, %dev
  br i1 %cmp19.6.i, label %if.end17.6.i.do.end23.i_crit_edge, label %if.end17.6.i.for.inc.6.i_crit_edge

if.end17.6.i.for.inc.6.i_crit_edge:               ; preds = %if.end17.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6.i

if.end17.6.i.do.end23.i_crit_edge:                ; preds = %if.end17.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

for.inc.6.i:                                      ; preds = %if.end17.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %76 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 7), align 4
  %tobool.not.7.i = icmp eq ptr %76, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.end3.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7.i

if.end3.7.i:                                      ; preds = %for.inc.6.i
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %bd_dev.7.i = getelementptr inbounds %struct.block_device, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %bd_dev.7.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bd_dev.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %dev)
  %cmp5.7.i = icmp eq i32 %80, %dev
  br i1 %cmp5.7.i, label %if.end3.7.i.do.end9.i_crit_edge, label %if.end17.7.i

if.end3.7.i.do.end9.i_crit_edge:                  ; preds = %if.end3.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9.i

if.end17.7.i:                                     ; preds = %if.end3.7.i
  %pkt_dev18.7.i = getelementptr inbounds %struct.pktcdvd_device, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %pkt_dev18.7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pkt_dev18.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %dev)
  %cmp19.7.i = icmp eq i32 %82, %dev
  br i1 %cmp19.7.i, label %if.end17.7.i.do.end23.i_crit_edge, label %if.end17.7.i.for.inc.7.i_crit_edge

if.end17.7.i.for.inc.7.i_crit_edge:               ; preds = %if.end17.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7.i

if.end17.7.i.do.end23.i_crit_edge:                ; preds = %if.end17.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

for.inc.7.i:                                      ; preds = %if.end17.7.i.for.inc.7.i_crit_edge, %for.inc.6.i.for.inc.7.i_crit_edge
  %call29.i = tail call ptr @blkdev_get_by_dev(i32 noundef %dev, i32 noundef 65, ptr noundef null) #13
  %cmp.i.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pkt_new_dev.exit, label %if.end33.i

if.end33.i:                                       ; preds = %for.inc.7.i
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %call29.i, i32 0, i32 17
  %83 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bd_disk.i, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %queue.i, align 4
  %call34.i = tail call ptr @scsi_device_from_queue(ptr noundef %86) #13
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end37.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @blkdev_put(ptr noundef %call29.i, i32 noundef 65) #13
  br label %pkt_new_dev.exit.thread

if.end37.i:                                       ; preds = %if.end33.i
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %call34.i, i32 0, i32 55
  tail call void @put_device(ptr noundef %sdev_gendev.i) #13
  tail call void @__module_get(ptr noundef null) #13
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call29.i, ptr %call7.i.i, align 8
  %call39.i = tail call i32 @set_blocksize(ptr noundef %call29.i, i32 noundef 2048) #13
  tail call fastcc void @pkt_init_queue(ptr noundef nonnull %call7.i.i) #13
  %pending_bios.i = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 15, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios.i, i32 noundef 4) #13
  %88 = ptrtoint ptr %pending_bios.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 0, ptr %pending_bios.i, align 8
  %call42.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kcdrwd, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.140, ptr noundef %name) #13
  %cmp.i112.i = icmp ugt ptr %call42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112.i, label %do.end55.i, label %pkt_new_dev.exit.thread128

do.end55.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %thread115.i = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 15, i32 3
  %89 = ptrtoint ptr %thread115.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call42.i, ptr %thread115.i, align 4
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name) #16
  tail call void @blkdev_put(ptr noundef %call29.i, i32 noundef 65) #13
  tail call void @module_put(ptr noundef null) #13
  br label %pkt_new_dev.exit.thread

pkt_new_dev.exit.thread128:                       ; preds = %if.end37.i
  %call45.i = tail call i32 @wake_up_process(ptr noundef %call42.i) #13
  %thread.i = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 15, i32 3
  %90 = ptrtoint ptr %thread.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call42.i, ptr %thread.i, align 4
  %91 = load ptr, ptr @pkt_proc, align 4
  %call63.i = tail call ptr @proc_create_single_data(ptr noundef %name, i16 noundef zeroext 0, ptr noundef %91, ptr noundef nonnull @pkt_seq_show, ptr noundef nonnull %call7.i.i) #13
  %call72.i = call ptr @bdevname(ptr noundef %call29.i, ptr noundef nonnull %b.i) #13
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name, ptr noundef %call72.i) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i) #13
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i, align 8
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %93, i32 0, i32 17
  %94 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bd_disk, align 8
  %events = getelementptr inbounds %struct.gendisk, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %events to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %events, align 4
  %events48 = getelementptr inbounds %struct.gendisk, ptr %call34, i32 0, i32 4
  %98 = ptrtoint ptr %events48 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %events48, align 4
  %call.i117 = call i32 @device_add_disk(ptr noundef null, ptr noundef nonnull %call34, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool50.not = icmp eq i32 %call.i117, 0
  br i1 %tobool50.not, label %if.end52, label %pkt_new_dev.exit.thread128.out_mem2_crit_edge

pkt_new_dev.exit.thread128.out_mem2_crit_edge:    ; preds = %pkt_new_dev.exit.thread128
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_mem2

pkt_new_dev.exit.thread:                          ; preds = %do.end55.i, %if.then36.i, %do.end23.i, %do.end9.i, %do.end.i
  %retval.2.i.ph = phi i32 [ -16, %do.end23.i ], [ -16, %do.end9.i ], [ -22, %if.then36.i ], [ -12, %do.end55.i ], [ -16, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i) #13
  br label %out_mem2

pkt_new_dev.exit:                                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %call29.i to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b.i) #13
  br label %out_mem2

if.end52:                                         ; preds = %pkt_new_dev.exit.thread128
  %100 = load ptr, ptr @class_pktcdvd, align 4
  %tobool.not.i118 = icmp eq ptr %100, null
  br i1 %tobool.not.i118, label %if.end52.pkt_sysfs_dev_new.exit_crit_edge, label %if.then.i

if.end52.pkt_sysfs_dev_new.exit_crit_edge:        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_sysfs_dev_new.exit

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %call.i120 = call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef nonnull %100, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @pkt_groups, ptr noundef nonnull @.str.140, ptr noundef %name) #13
  %dev.i = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 28
  %cmp.i.i121 = icmp ugt ptr %call.i120, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i.i121, ptr null, ptr %call.i120
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %spec.store.select.i, ptr %dev.i, align 4
  br label %pkt_sysfs_dev_new.exit

pkt_sysfs_dev_new.exit:                           ; preds = %if.then.i, %if.end52.pkt_sysfs_dev_new.exit_crit_edge
  %102 = load ptr, ptr @pkt_debugfs_root, align 4
  %tobool.not.i122 = icmp eq ptr %102, null
  br i1 %tobool.not.i122, label %pkt_sysfs_dev_new.exit.pkt_debugfs_dev_new.exit_crit_edge, label %if.end.i

pkt_sysfs_dev_new.exit.pkt_debugfs_dev_new.exit_crit_edge: ; preds = %pkt_sysfs_dev_new.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_debugfs_dev_new.exit

if.end.i:                                         ; preds = %pkt_sysfs_dev_new.exit
  %call.i124 = call ptr @debugfs_create_dir(ptr noundef %name, ptr noundef nonnull %102) #13
  %dfs_d_root.i = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 29
  %103 = ptrtoint ptr %dfs_d_root.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i124, ptr %dfs_d_root.i, align 8
  %tobool2.not.i = icmp eq ptr %call.i124, null
  br i1 %tobool2.not.i, label %if.end.i.pkt_debugfs_dev_new.exit_crit_edge, label %if.end4.i

if.end.i.pkt_debugfs_dev_new.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_debugfs_dev_new.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.194, i16 noundef zeroext 292, ptr noundef nonnull %call.i124, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @debug_fops) #13
  %dfs_f_info.i = getelementptr inbounds %struct.pktcdvd_device, ptr %call7.i.i, i32 0, i32 30
  %104 = ptrtoint ptr %dfs_f_info.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call6.i, ptr %dfs_f_info.i, align 4
  br label %pkt_debugfs_dev_new.exit

pkt_debugfs_dev_new.exit:                         ; preds = %if.end4.i, %if.end.i.pkt_debugfs_dev_new.exit_crit_edge, %pkt_sysfs_dev_new.exit.pkt_debugfs_dev_new.exit_crit_edge
  %arrayidx53 = getelementptr [8 x ptr], ptr @pkt_devs, i32 0, i32 %idx.0133.lcssa
  %105 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call7.i.i, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %pkt_dev, null
  br i1 %tobool54.not, label %pkt_debugfs_dev_new.exit.if.end57_crit_edge, label %if.then55

pkt_debugfs_dev_new.exit.if.end57_crit_edge:      ; preds = %pkt_debugfs_dev_new.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then55:                                        ; preds = %pkt_debugfs_dev_new.exit
  call void @__sanitizer_cov_trace_pc() #15
  %106 = ptrtoint ptr %pkt_dev43 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pkt_dev43, align 4
  %108 = ptrtoint ptr %pkt_dev to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %pkt_dev, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %pkt_debugfs_dev_new.exit.if.end57_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ctl_mutex) #13
  br label %cleanup

out_mem2:                                         ; preds = %pkt_new_dev.exit, %pkt_new_dev.exit.thread, %pkt_new_dev.exit.thread128.out_mem2_crit_edge
  %ret.0 = phi i32 [ %99, %pkt_new_dev.exit ], [ %call.i117, %pkt_new_dev.exit.thread128.out_mem2_crit_edge ], [ %retval.2.i.ph, %pkt_new_dev.exit.thread ]
  call void @blk_cleanup_disk(ptr noundef nonnull %call34) #13
  br label %out_mem

out_mem:                                          ; preds = %out_mem2, %if.end11.out_mem_crit_edge, %if.end7.out_mem_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end7.out_mem_crit_edge ], [ %ret.0, %out_mem2 ], [ -12, %if.end11.out_mem_crit_edge ]
  call void @mempool_exit(ptr noundef %rb_pool) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %out_mutex

out_mutex:                                        ; preds = %out_mem, %if.end3.out_mutex_crit_edge, %do.end
  %ret.2 = phi i32 [ -16, %do.end ], [ %ret.1, %out_mem ], [ -12, %if.end3.out_mutex_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ctl_mutex) #13
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %cleanup

cleanup:                                          ; preds = %out_mutex, %if.end57
  %retval.0 = phi i32 [ %ret.2, %out_mutex ], [ 0, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_remove_dev(i32 noundef %pkt_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ctl_mutex, i32 noundef 1) #13
  %0 = load ptr, ptr @pkt_devs, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %pkt_dev1 = getelementptr inbounds %struct.pktcdvd_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pkt_dev1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pkt_dev)
  %cmp2 = icmp eq i32 %2, %pkt_dev
  br i1 %cmp2, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %3 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %pkt_dev1.1 = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pkt_dev1.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pkt_dev1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pkt_dev)
  %cmp2.1 = icmp eq i32 %5, %pkt_dev
  br i1 %cmp2.1, label %land.lhs.true.1.if.end10_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1.if.end10_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %6, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %pkt_dev1.2 = getelementptr inbounds %struct.pktcdvd_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pkt_dev1.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pkt_dev1.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %pkt_dev)
  %cmp2.2 = icmp eq i32 %8, %pkt_dev
  br i1 %cmp2.2, label %land.lhs.true.2.if.end10_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2.if.end10_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %9 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %pkt_dev1.3 = getelementptr inbounds %struct.pktcdvd_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pkt_dev1.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pkt_dev1.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pkt_dev)
  %cmp2.3 = icmp eq i32 %11, %pkt_dev
  br i1 %cmp2.3, label %land.lhs.true.3.if.end10_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

land.lhs.true.3.if.end10_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %12 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %12, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %pkt_dev1.4 = getelementptr inbounds %struct.pktcdvd_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pkt_dev1.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pkt_dev1.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %pkt_dev)
  %cmp2.4 = icmp eq i32 %14, %pkt_dev
  br i1 %cmp2.4, label %land.lhs.true.4.if.end10_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

land.lhs.true.4.if.end10_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %15 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 5), align 4
  %tobool.not.5 = icmp eq ptr %15, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %pkt_dev1.5 = getelementptr inbounds %struct.pktcdvd_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pkt_dev1.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pkt_dev1.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %pkt_dev)
  %cmp2.5 = icmp eq i32 %17, %pkt_dev
  br i1 %cmp2.5, label %land.lhs.true.5.if.end10_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

land.lhs.true.5.if.end10_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %18 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 6), align 4
  %tobool.not.6 = icmp eq ptr %18, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %pkt_dev1.6 = getelementptr inbounds %struct.pktcdvd_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pkt_dev1.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pkt_dev1.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %pkt_dev)
  %cmp2.6 = icmp eq i32 %20, %pkt_dev
  br i1 %cmp2.6, label %land.lhs.true.6.if.end10_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

land.lhs.true.6.if.end10_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %21 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 7), align 4
  %tobool.not.7 = icmp eq ptr %21, null
  br i1 %tobool.not.7, label %for.inc.6.do.body_crit_edge, label %land.lhs.true.7

for.inc.6.do.body_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true.7:                                  ; preds = %for.inc.6
  %pkt_dev1.7 = getelementptr inbounds %struct.pktcdvd_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pkt_dev1.7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_dev1.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %pkt_dev)
  %cmp2.7 = icmp eq i32 %23, %pkt_dev
  br i1 %cmp2.7, label %land.lhs.true.7.if.end10_crit_edge, label %land.lhs.true.7.do.body_crit_edge

land.lhs.true.7.do.body_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true.7.if.end10_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.body:                                          ; preds = %land.lhs.true.7.do.body_crit_edge, %for.inc.6.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pkt_remove_dev.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pkt_remove_dev, %if.then8)) #13
          to label %out [label %if.then8], !srcloc !473

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pkt_remove_dev.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.197) #13
  br label %out

if.end10:                                         ; preds = %land.lhs.true.7.if.end10_crit_edge, %land.lhs.true.6.if.end10_crit_edge, %land.lhs.true.5.if.end10_crit_edge, %land.lhs.true.4.if.end10_crit_edge, %land.lhs.true.3.if.end10_crit_edge, %land.lhs.true.2.if.end10_crit_edge, %land.lhs.true.1.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %idx.058.lcssa = phi i32 [ 0, %land.lhs.true.if.end10_crit_edge ], [ 1, %land.lhs.true.1.if.end10_crit_edge ], [ 2, %land.lhs.true.2.if.end10_crit_edge ], [ 3, %land.lhs.true.3.if.end10_crit_edge ], [ 4, %land.lhs.true.4.if.end10_crit_edge ], [ 5, %land.lhs.true.5.if.end10_crit_edge ], [ 6, %land.lhs.true.6.if.end10_crit_edge ], [ 7, %land.lhs.true.7.if.end10_crit_edge ]
  %.lcssa = phi ptr [ %0, %land.lhs.true.if.end10_crit_edge ], [ %3, %land.lhs.true.1.if.end10_crit_edge ], [ %6, %land.lhs.true.2.if.end10_crit_edge ], [ %9, %land.lhs.true.3.if.end10_crit_edge ], [ %12, %land.lhs.true.4.if.end10_crit_edge ], [ %15, %land.lhs.true.5.if.end10_crit_edge ], [ %18, %land.lhs.true.6.if.end10_crit_edge ], [ %21, %land.lhs.true.7.if.end10_crit_edge ]
  %refcnt = getelementptr inbounds %struct.pktcdvd_device, ptr %.lcssa, i32 0, i32 5
  %24 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp11 = icmp sgt i32 %25, 0
  br i1 %cmp11, label %if.end10.out_crit_edge, label %if.end13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %if.end10
  %thread = getelementptr inbounds %struct.pktcdvd_device, ptr %.lcssa, i32 0, i32 15, i32 3
  %26 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %thread, align 4
  %cmp.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 @kthread_stop(ptr noundef %27) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %arrayidx20 = getelementptr [8 x ptr], ptr @pkt_devs, i32 0, i32 %idx.058.lcssa
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx20, align 4
  %29 = load ptr, ptr @pkt_debugfs_root, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end19.pkt_debugfs_dev_remove.exit_crit_edge, label %if.end.i

if.end19.pkt_debugfs_dev_remove.exit_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_debugfs_dev_remove.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %dfs_f_info.i = getelementptr inbounds %struct.pktcdvd_device, ptr %.lcssa, i32 0, i32 30
  %30 = ptrtoint ptr %dfs_f_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dfs_f_info.i, align 4
  tail call void @debugfs_remove(ptr noundef %31) #13
  %dfs_d_root.i = getelementptr inbounds %struct.pktcdvd_device, ptr %.lcssa, i32 0, i32 29
  %32 = ptrtoint ptr %dfs_d_root.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dfs_d_root.i, align 8
  tail call void @debugfs_remove(ptr noundef %33) #13
  %34 = ptrtoint ptr %dfs_f_info.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %dfs_f_info.i, align 4
  %35 = ptrtoint ptr %dfs_d_root.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %dfs_d_root.i, align 8
  br label %pkt_debugfs_dev_remove.exit

pkt_debugfs_dev_remove.exit:                      ; preds = %if.end.i, %if.end19.pkt_debugfs_dev_remove.exit_crit_edge
  %36 = load ptr, ptr @class_pktcdvd, align 4
  %tobool.not.i49 = icmp eq ptr %36, null
  br i1 %tobool.not.i49, label %pkt_debugfs_dev_remove.exit.pkt_sysfs_dev_remove.exit_crit_edge, label %if.then.i

pkt_debugfs_dev_remove.exit.pkt_sysfs_dev_remove.exit_crit_edge: ; preds = %pkt_debugfs_dev_remove.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_sysfs_dev_remove.exit

if.then.i:                                        ; preds = %pkt_debugfs_dev_remove.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pktcdvd_device, ptr %.lcssa, i32 0, i32 28
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void @device_unregister(ptr noundef %38) #13
  br label %pkt_sysfs_dev_remove.exit

pkt_sysfs_dev_remove.exit:                        ; preds = %if.then.i, %pkt_debugfs_dev_remove.exit.pkt_sysfs_dev_remove.exit_crit_edge
  %39 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.lcssa, align 8
  tail call void @blkdev_put(ptr noundef %40, i32 noundef 65) #13
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %.lcssa, i32 0, i32 2
  %41 = load ptr, ptr @pkt_proc, align 4
  tail call void @remove_proc_entry(ptr noundef %name, ptr noundef %41) #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %name) #16
  %disk = getelementptr inbounds %struct.pktcdvd_device, ptr %.lcssa, i32 0, i32 25
  %42 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %disk, align 8
  tail call void @del_gendisk(ptr noundef %43) #13
  %44 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %disk, align 8
  tail call void @blk_cleanup_disk(ptr noundef %45) #13
  %rb_pool = getelementptr inbounds %struct.pktcdvd_device, ptr %.lcssa, i32 0, i32 23
  tail call void @mempool_exit(ptr noundef %rb_pool) #13
  tail call void @kfree(ptr noundef nonnull %.lcssa) #13
  tail call void @module_put(ptr noundef null) #13
  br label %out

out:                                              ; preds = %pkt_sysfs_dev_remove.exit, %if.end10.out_crit_edge, %if.then8, %do.body
  %ret.0 = phi i32 [ 0, %pkt_sysfs_dev_remove.exit ], [ -6, %if.then8 ], [ -16, %if.end10.out_crit_edge ], [ -6, %do.body ]
  tail call void @mutex_unlock(ptr noundef nonnull @ctl_mutex) #13
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_alloc_disk(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkt_submit_bio(ptr noundef %bio) #2 align 64 {
entry:
  %wqe.i = alloca %struct.wait_bit_queue_entry, align 4
  %bio.addr = alloca ptr, align 4
  %b = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bio, ptr %bio.addr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %b) #13
  %1 = call ptr @memset(ptr %b, i32 255, i32 32)
  call void @blk_queue_split(ptr noundef nonnull %bio.addr) #13
  %2 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio.addr, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 4
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queuedata, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = call ptr @bio_devname(ptr noundef %3, ptr noundef nonnull %b) #13
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %call) #16
  br label %end_io

do.end4:                                          ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end4
  %call.i = call ptr @bio_clone_fast(ptr noundef %3, i32 noundef 3072, ptr noundef nonnull @pkt_bio_set) #13
  %call1.i = call noalias ptr @mempool_alloc(ptr noundef nonnull @psd_pool, i32 noundef 3072) #13
  %pd2.i = getelementptr inbounds %struct.packet_stacked_data, ptr %call1.i, i32 0, i32 1
  %14 = ptrtoint ptr %pd2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %pd2.i, align 4
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %call1.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %19, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %21, %17
  br i1 %cmp.not.i.i, label %if.then6.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.then6.bio_set_dev.exit.i_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i8.i.i = and i16 %19, -2177
  %22 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.then6.bio_set_dev.exit.i_crit_edge
  %23 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %17, ptr %bi_bdev.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %call.i) #13
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pkt_end_io_read_cloned, ptr %bi_end_io.i, align 8
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_size.i, align 8
  %shr.i89 = lshr i32 %27, 9
  %secs_r.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %secs_r.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %secs_r.i, align 8
  %add.i = add i32 %29, %shr.i89
  store i32 %add.i, ptr %secs_r.i, align 8
  %lock.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 24, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %call.i, align 8
  br i1 %tobool.i.not.i.i, label %if.then.i14.i, label %if.else.i.i

if.then.i14.i:                                    ; preds = %bio_set_dev.exit.i
  %tail.i.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 24, i32 3, i32 1
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %34, align 8
  br label %pkt_make_request_read.exit

if.else.i.i.i:                                    ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  %read_queue.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 24, i32 3
  %36 = ptrtoint ptr %read_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %read_queue.i.i, align 4
  br label %pkt_make_request_read.exit

if.else.i.i:                                      ; preds = %bio_set_dev.exit.i
  %tail.i13.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 24, i32 4, i32 1
  %37 = ptrtoint ptr %tail.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i13.i.i, align 4
  %tobool.not.i14.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i14.i.i, label %if.else.i16.i.i, label %if.then.i15.i.i

if.then.i15.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %38, align 8
  br label %pkt_make_request_read.exit

if.else.i16.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %write_queue.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 24, i32 4
  %40 = ptrtoint ptr %write_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %write_queue.i.i, align 4
  br label %pkt_make_request_read.exit

pkt_make_request_read.exit:                       ; preds = %if.else.i16.i.i, %if.then.i15.i.i, %if.else.i.i.i, %if.then.i.i.i
  %tail.i13.sink.i.i = phi ptr [ %tail.i.i.i, %if.then.i.i.i ], [ %tail.i.i.i, %if.else.i.i.i ], [ %tail.i13.i.i, %if.then.i15.i.i ], [ %tail.i13.i.i, %if.else.i16.i.i ]
  %41 = ptrtoint ptr %tail.i13.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %tail.i13.sink.i.i, align 4
  %iosched.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 24
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %iosched.i.i, i32 noundef 4) #13
  %42 = ptrtoint ptr %iosched.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %iosched.i.i, align 4
  %wqueue.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 16
  call void @__wake_up(ptr noundef %wqueue.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %flags = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 11
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool9.not = icmp eq i32 %45, 0
  br i1 %tobool9.not, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 2
  %bi_iter = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8
  %46 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bi_iter, align 8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, i64 noundef %47) #16
  br label %end_io

if.end17:                                         ; preds = %if.end7
  %bi_size = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool19.not = icmp ne i32 %49, 0
  %rem = and i32 %49, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %tobool19.not, %tobool22.not
  br i1 %or.cond, label %do.body32.preheader, label %do.end26

do.body32.preheader:                              ; preds = %if.end17
  %offset.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 8
  %settings.i = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 3
  %50 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wqe.i, i32 0, i32 1
  br label %do.body32

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %name28 = getelementptr inbounds %struct.pktcdvd_device, ptr %11, i32 0, i32 2
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name28) #16
  br label %end_io

do.body32:                                        ; preds = %pkt_make_request_write.exit.do.body32_crit_edge, %do.body32.preheader
  %51 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bio.addr, align 4
  %bi_iter33 = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %bi_iter33 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bi_iter33, align 8
  %55 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset.i, align 8
  %conv.i = zext i32 %56 to i64
  %add.i90 = add i64 %54, %conv.i
  %57 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %settings.i, align 4
  %sub.i = add i32 %58, -1
  %conv1.i = zext i32 %sub.i to i64
  %neg.i = xor i64 %conv1.i, -1
  %and.i91 = and i64 %add.i90, %neg.i
  %bi_size39 = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %bi_size39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_size39, align 8
  %shr = lshr i32 %60, 9
  %conv = zext i32 %shr to i64
  %sub = add i64 %add.i90, -1
  %add.i94 = add i64 %sub, %conv
  %and.i99 = and i64 %add.i94, %neg.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i99, i64 %and.i91)
  %cmp41.not = icmp eq i64 %and.i99, %and.i91
  br i1 %cmp41.not, label %do.body32.if.end66_crit_edge, label %do.body44

do.body32.if.end66_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

do.body44:                                        ; preds = %do.body32
  %conv45 = zext i32 %58 to i64
  %add46 = add i64 %and.i91, %conv45
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i99, i64 %add46)
  %cmp47.not = icmp eq i64 %and.i99, %add46
  br i1 %cmp47.not, label %do.end60, label %do.body52, !prof !468

do.body52:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #13, !srcloc !474
  unreachable

do.end60:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  %sub63 = sub i64 %and.i99, %54
  %conv64 = trunc i64 %sub63 to i32
  %call65 = call ptr @bio_split(ptr noundef %52, i32 noundef %conv64, i32 noundef 3072, ptr noundef nonnull @pkt_bio_set) #13
  %61 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bio.addr, align 4
  call void @bio_chain(ptr noundef %call65, ptr noundef %62) #13
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %do.body32.if.end66_crit_edge
  %split.0 = phi ptr [ %call65, %do.end60 ], [ %52, %do.body32.if.end66_crit_edge ]
  %63 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bio.addr, align 4
  %bi_bdev67 = getelementptr inbounds %struct.bio, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %bi_bdev67 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bi_bdev67, align 4
  %bd_disk68 = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 17
  %67 = ptrtoint ptr %bd_disk68 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bd_disk68, align 8
  %queue69 = getelementptr inbounds %struct.gendisk, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %queue69 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %queue69, align 4
  %queuedata.i = getelementptr inbounds %struct.request_queue, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %queuedata.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queuedata.i, align 4
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %split.0, i32 0, i32 8
  %73 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %bi_iter.i, align 8
  %offset.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 8
  %75 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offset.i.i, align 8
  %conv.i.i = zext i32 %76 to i64
  %add.i.i = add i64 %74, %conv.i.i
  %settings.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 3
  %77 = ptrtoint ptr %settings.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %settings.i.i, align 4
  %sub.i.i = add i32 %78, -1
  %conv1.i.i = zext i32 %sub.i.i to i64
  %neg.i.i = xor i64 %conv1.i.i, -1
  %and.i.i = and i64 %add.i.i, %neg.i.i
  %cdrw.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 15
  %active_list_lock.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 15, i32 2
  call void @_raw_spin_lock(ptr noundef %active_list_lock.i) #13
  %pkt_active_list.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 15, i32 1
  %79 = ptrtoint ptr %pkt_active_list.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %pkt.0139.i = load ptr, ptr %pkt_active_list.i, align 8
  %cmp.not140.i = icmp eq ptr %pkt.0139.i, %pkt_active_list.i
  br i1 %cmp.not140.i, label %if.end66.for.end.i_crit_edge, label %if.end66.for.body.i_crit_edge

if.end66.for.body.i_crit_edge:                    ; preds = %if.end66
  br label %for.body.i

if.end66.for.end.i_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end66.for.body.i_crit_edge
  %pkt.0142.i = phi ptr [ %pkt.0.i, %for.inc.i.for.body.i_crit_edge ], [ %pkt.0139.i, %if.end66.for.body.i_crit_edge ]
  %blocked_bio.0141.i = phi i32 [ %blocked_bio.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end66.for.body.i_crit_edge ]
  %sector.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 5
  %80 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %sector.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %and.i.i)
  %cmp4.i = icmp eq i64 %81, %and.i.i
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %lock.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %state.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 7
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %83, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  %state.i.le = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 7
  %84 = ptrtoint ptr %split.0 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %split.0, align 8
  %tail.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i, label %if.else.i.i101, label %if.then.i.i100

if.then.i.i100:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %split.0, ptr %86, align 8
  br label %bio_list_add.exit.i

if.else.i.i101:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %orig_bios.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 2
  %88 = ptrtoint ptr %orig_bios.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %split.0, ptr %orig_bios.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i101, %if.then.i.i100
  %89 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %split.0, ptr %tail.i.i, align 4
  %bi_size.i102 = getelementptr inbounds %struct.bio, ptr %split.0, i32 0, i32 8, i32 1
  %90 = ptrtoint ptr %bi_size.i102 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bi_size.i102, align 8
  %div131.i = lshr i32 %91, 11
  %write_size.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 3
  %92 = ptrtoint ptr %write_size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %write_size.i, align 4
  %add.i103 = add i32 %93, %div131.i
  store i32 %add.i103, ptr %write_size.i, align 4
  %frames.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 6
  %94 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %frames.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i103, i32 %95)
  %cmp11.not.i = icmp slt i32 %add.i103, %95
  br i1 %cmp11.not.i, label %bio_list_add.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

bio_list_add.exit.i.if.end.i_crit_edge:           ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %bio_list_add.exit.i
  %96 = ptrtoint ptr %state.i.le to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %state.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp13.i = icmp eq i32 %97, 1
  br i1 %cmp13.i, label %if.then14.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_sm.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0142.i, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %run_sm.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %run_sm.i, i32 1, i32 3, i32 1) #13
  %98 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %run_sm.i, ptr %run_sm.i, i32 1, ptr elementtype(i32) %run_sm.i) #13, !srcloc !475
  %wqueue.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 16
  call void @__wake_up(ptr noundef %wqueue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i, %land.lhs.true.i.if.end.i_crit_edge, %bio_list_add.exit.i.if.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  call void @_raw_spin_unlock(ptr noundef %active_list_lock.i) #13
  br label %pkt_make_request_write.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %blocked_bio.1.i = phi i32 [ 1, %if.else.i ], [ %blocked_bio.0141.i, %for.body.i.for.inc.i_crit_edge ]
  %99 = ptrtoint ptr %pkt.0142.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %pkt.0.i = load ptr, ptr %pkt.0142.i, align 8
  %cmp.not.i = icmp eq ptr %pkt.0.i, %pkt_active_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end66.for.end.i_crit_edge
  %blocked_bio.0.lcssa.i = phi i32 [ 0, %if.end66.for.end.i_crit_edge ], [ %blocked_bio.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %active_list_lock.i) #13
  %lock28.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %lock28.i) #13
  %write_congestion_on.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 27
  %100 = ptrtoint ptr %write_congestion_on.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %write_congestion_on.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp29.i = icmp sgt i32 %101, 0
  br i1 %cmp29.i, label %land.lhs.true30.i, label %for.end.i.if.end46.i_crit_edge

for.end.i.if.end46.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

land.lhs.true30.i:                                ; preds = %for.end.i
  %bio_queue_size.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 19
  %102 = ptrtoint ptr %bio_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bio_queue_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %101)
  %cmp32.not.i = icmp slt i32 %103, %101
  br i1 %cmp32.not.i, label %land.lhs.true30.i.if.end46.i_crit_edge, label %if.then33.i

land.lhs.true30.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

if.then33.i:                                      ; preds = %land.lhs.true30.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wqe.i) #13
  %congested.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 20
  %104 = call ptr @memset(ptr %wqe.i, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %wqe.i, ptr noundef %congested.i, i32 noundef 0) #13
  %call36143.i = call ptr @__var_waitqueue(ptr noundef %congested.i) #13
  %call37144.i = call i32 @prepare_to_wait_event(ptr noundef %call36143.i, ptr noundef %50, i32 noundef 2) #13
  %105 = ptrtoint ptr %bio_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bio_queue_size.i, align 8
  %write_congestion_off.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 26
  %107 = ptrtoint ptr %write_congestion_off.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %write_congestion_off.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp39.not145.i = icmp sgt i32 %106, %108
  br i1 %cmp39.not145.i, label %if.then33.i.if.end41.i_crit_edge, label %if.then33.i.for.end45.i_crit_edge

if.then33.i.for.end45.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end45.i

if.then33.i.if.end41.i_crit_edge:                 ; preds = %if.then33.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.i.if.end41.i_crit_edge, %if.then33.i.if.end41.i_crit_edge
  %109 = ptrtoint ptr %congested.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %congested.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock28.i) #13
  call void @schedule() #13
  call void @_raw_spin_lock(ptr noundef %lock28.i) #13
  %call36.i = call ptr @__var_waitqueue(ptr noundef %congested.i) #13
  %call37.i = call i32 @prepare_to_wait_event(ptr noundef %call36.i, ptr noundef %50, i32 noundef 2) #13
  %110 = ptrtoint ptr %bio_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bio_queue_size.i, align 8
  %112 = ptrtoint ptr %write_congestion_off.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %write_congestion_off.i, align 4
  %cmp39.not.i = icmp sgt i32 %111, %113
  br i1 %cmp39.not.i, label %if.end41.i.if.end41.i_crit_edge, label %if.end41.i.for.end45.i_crit_edge

if.end41.i.for.end45.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end45.i

if.end41.i.if.end41.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

for.end45.i:                                      ; preds = %if.end41.i.for.end45.i_crit_edge, %if.then33.i.for.end45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wqe.i) #13
  br label %if.end46.i

if.end46.i:                                       ; preds = %for.end45.i, %land.lhs.true30.i.if.end46.i_crit_edge, %for.end.i.if.end46.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock28.i) #13
  %rb_pool.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 23
  %call48.i = call noalias ptr @mempool_alloc(ptr noundef %rb_pool.i, i32 noundef 3072) #13
  %bio49.i = getelementptr inbounds %struct.pkt_rb_node, ptr %call48.i, i32 0, i32 1
  %114 = ptrtoint ptr %bio49.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %split.0, ptr %bio49.i, align 4
  call void @_raw_spin_lock(ptr noundef %lock28.i) #13
  %bio_queue_size51.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 19
  %115 = ptrtoint ptr %bio_queue_size51.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bio_queue_size51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp52.i = icmp slt i32 %116, 0
  br i1 %cmp52.i, label %do.body56.i, label %do.end62.i, !prof !476

do.body56.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2384, 0\0A.popsection", ""() #13, !srcloc !477
  unreachable

do.end62.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp64.i = icmp eq i32 %116, 0
  %bio_queue.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 18
  %117 = ptrtoint ptr %bio49.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bio49.i, align 4
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %118, i32 0, i32 8
  %119 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %bi_iter.i.i, align 8
  %121 = ptrtoint ptr %bio_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bio_queue.i.i, align 4
  %tobool.not17.i.i = icmp eq ptr %122, null
  br i1 %tobool.not17.i.i, label %do.end62.i.pkt_rbtree_insert.exit.i_crit_edge, label %do.end62.i.while.body.i.i_crit_edge

do.end62.i.while.body.i.i_crit_edge:              ; preds = %do.end62.i
  br label %while.body.i.i

do.end62.i.pkt_rbtree_insert.exit.i_crit_edge:    ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_rbtree_insert.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end62.i.while.body.i.i_crit_edge
  %123 = phi ptr [ %129, %while.body.i.i.while.body.i.i_crit_edge ], [ %122, %do.end62.i.while.body.i.i_crit_edge ]
  %bio2.i.i = getelementptr inbounds %struct.pkt_rb_node, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %bio2.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bio2.i.i, align 4
  %bi_iter3.i.i = getelementptr inbounds %struct.bio, ptr %125, i32 0, i32 8
  %126 = ptrtoint ptr %bi_iter3.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %bi_iter3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %120, i64 %127)
  %cmp.i.i = icmp ult i64 %120, %127
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %123, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %123, i32 0, i32 1
  %p.1.i.i = select i1 %cmp.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %128 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %p.1.i.i, align 4
  %tobool.not.i133.i = icmp eq ptr %129, null
  br i1 %tobool.not.i133.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.le.i.i = ptrtoint ptr %123 to i32
  br label %pkt_rbtree_insert.exit.i

pkt_rbtree_insert.exit.i:                         ; preds = %while.cond.while.end_crit_edge.i.i, %do.end62.i.pkt_rbtree_insert.exit.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %do.end62.i.pkt_rbtree_insert.exit.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %bio_queue.i.i, %do.end62.i.pkt_rbtree_insert.exit.i_crit_edge ]
  %130 = ptrtoint ptr %call48.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %parent.0.lcssa.i.i, ptr %call48.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call48.i, i32 0, i32 1
  %131 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call48.i, i32 0, i32 2
  %132 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %133 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call48.i, ptr %p.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef %call48.i, ptr noundef %bio_queue.i.i) #13
  %134 = ptrtoint ptr %bio_queue_size51.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bio_queue_size51.i, align 8
  %inc.i.i = add i32 %135, 1
  store i32 %inc.i.i, ptr %bio_queue_size51.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock28.i) #13
  %scan_queue.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 22
  %call.i.i132.i = call zeroext i1 @__kasan_check_write(ptr noundef %scan_queue.i, i32 noundef 4) #13
  %136 = ptrtoint ptr %scan_queue.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile i32 1, ptr %scan_queue.i, align 4
  br i1 %cmp64.i, label %if.then67.i, label %if.else69.i

if.then67.i:                                      ; preds = %pkt_rbtree_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %wqueue68.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 16
  call void @__wake_up(ptr noundef %wqueue68.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %pkt_make_request_write.exit

if.else69.i:                                      ; preds = %pkt_rbtree_insert.exit.i
  %137 = ptrtoint ptr %cdrw.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile ptr, ptr %cdrw.i, align 4
  %cmp.i134.i = icmp ne ptr %138, %cdrw.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocked_bio.0.lcssa.i)
  %tobool74.not.i = icmp eq i32 %blocked_bio.0.lcssa.i, 0
  %or.cond.i = select i1 %cmp.i134.i, i1 %tobool74.not.i, i1 false
  br i1 %or.cond.i, label %if.then75.i, label %if.else69.i.pkt_make_request_write.exit_crit_edge

if.else69.i.pkt_make_request_write.exit_crit_edge: ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_make_request_write.exit

if.then75.i:                                      ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #15
  %wqueue76.i = getelementptr inbounds %struct.pktcdvd_device, ptr %72, i32 0, i32 16
  call void @__wake_up(ptr noundef %wqueue76.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %pkt_make_request_write.exit

pkt_make_request_write.exit:                      ; preds = %if.then75.i, %if.else69.i.pkt_make_request_write.exit_crit_edge, %if.then67.i, %if.end.i
  %139 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bio.addr, align 4
  %cmp71.not = icmp eq ptr %split.0, %140
  br i1 %cmp71.not, label %pkt_make_request_write.exit.cleanup_crit_edge, label %pkt_make_request_write.exit.do.body32_crit_edge

pkt_make_request_write.exit.do.body32_crit_edge:  ; preds = %pkt_make_request_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body32

pkt_make_request_write.exit.cleanup_crit_edge:    ; preds = %pkt_make_request_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

end_io:                                           ; preds = %do.end26, %do.end13, %do.end
  %141 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bio.addr, align 4
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %142, i32 0, i32 6
  %143 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 10, ptr %bi_status.i, align 2
  call void @bio_endio(ptr noundef %142) #13
  br label %cleanup

cleanup:                                          ; preds = %end_io, %pkt_make_request_write.exit.cleanup_crit_edge, %pkt_make_request_read.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %b) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkt_open(ptr noundef %bdev, i32 noundef %mode) #2 align 64 {
entry:
  %write_speed.i.i = alloca i32, align 4
  %media_write_speed.i.i = alloca i32, align 4
  %lba.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pktcdvd_mutex, i32 noundef 0) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @ctl_mutex, i32 noundef 0) #13
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 5
  %0 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd_dev, align 4
  %and = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp.i = icmp ugt i32 %and, 7
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %pkt_find_dev_from_minor.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

pkt_find_dev_from_minor.exit:                     ; preds = %entry
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %and, i32 8) #13, !srcloc !472
  %and.i = and i32 %2, %and
  %arrayidx.i = getelementptr [8 x ptr], ptr @pkt_devs, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %pkt_find_dev_from_minor.exit.cleanup_crit_edge, label %do.body

pkt_find_dev_from_minor.exit.cleanup_crit_edge:   ; preds = %pkt_find_dev_from_minor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %pkt_find_dev_from_minor.exit
  %refcnt = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %do.body4, label %do.end10, !prof !476

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2238, 0\0A.popsection", ""() #13, !srcloc !478
  unreachable

do.end10:                                         ; preds = %do.body
  %inc = add nuw i32 %6, 1
  %7 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp13 = icmp sgt i32 %inc, 1
  %and15 = and i32 %mode, 2
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %land.lhs.true

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then14
  %flags = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not = icmp eq i32 %10, 0
  br i1 %tobool18.not, label %land.lhs.true.out_dec_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.out_dec_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dec

if.else:                                          ; preds = %do.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lba.i) #13
  %11 = ptrtoint ptr %lba.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %lba.i, align 4, !annotation !479
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 8
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bd_dev.i, align 4
  %call.i = tail call ptr @blkdev_get_by_dev(i32 noundef %15, i32 noundef 129, ptr noundef nonnull %4) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pkt_open_dev.exit, label %if.end.i39

if.end.i39:                                       ; preds = %if.else
  %call4.i = call fastcc i32 @pkt_get_last_written(ptr noundef nonnull %4, ptr noundef nonnull %lba.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 2
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i) #16
  br label %pkt_open_dev.exit.thread48

if.end7.i:                                        ; preds = %if.end.i39
  %disk.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 25
  %16 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disk.i, align 8
  %18 = ptrtoint ptr %lba.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lba.i, align 4
  %shl.i = shl i32 %19, 2
  %conv.i = sext i32 %shl.i to i64
  tail call void @set_capacity(ptr noundef %17, i64 noundef %conv.i) #13
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 8
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bd_disk.i, align 8
  %call11.i = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %23, i64 noundef %conv.i) #13
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_queue.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool14.not.i = icmp eq i32 %and15, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %write_speed.i.i) #13
  %28 = ptrtoint ptr %write_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %write_speed.i.i, align 4, !annotation !479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %media_write_speed.i.i) #13
  %29 = ptrtoint ptr %media_write_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %media_write_speed.i.i, align 4, !annotation !479
  %call.i.i = tail call fastcc i32 @pkt_probe_settings(ptr noundef nonnull %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %pkt_open_write.exit.thread78.i

pkt_open_write.exit.thread78.i:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %media_write_speed.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_speed.i.i) #13
  br label %pkt_open_dev.exit.thread48

if.end.i.i:                                       ; preds = %if.then15.i
  %call1.i.i = tail call fastcc i32 @pkt_set_write_settings(ptr noundef nonnull %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end11.i.i, label %if.end.i.i.pkt_open_write.exit.thread81.i_crit_edge

if.end.i.i.pkt_open_write.exit.thread81.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_open_write.exit.thread81.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  tail call fastcc void @pkt_write_caching(ptr noundef nonnull %4) #13
  %call13.i.i = call fastcc i32 @pkt_get_max_speed(ptr noundef nonnull %4, ptr noundef nonnull %write_speed.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end11.i.i.if.end16.i.i_crit_edge, label %if.then15.i.i

if.end11.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %write_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2832, ptr %write_speed.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then15.i.i, %if.end11.i.i.if.end16.i.i_crit_edge
  %mmc3_profile.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 12
  %31 = ptrtoint ptr %mmc3_profile.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mmc3_profile.i.i, align 4
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.212)
  switch i16 %32, label %sw.default.i.i [
    i16 19, label %if.end16.i.i.do.end20.i.i_crit_edge
    i16 26, label %if.end16.i.i.do.end20.i.i_crit_edge51
    i16 18, label %if.end16.i.i.do.end20.i.i_crit_edge52
  ]

if.end16.i.i.do.end20.i.i_crit_edge52:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20.i.i

if.end16.i.i.do.end20.i.i_crit_edge51:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20.i.i

if.end16.i.i.do.end20.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %if.end16.i.i.do.end20.i.i_crit_edge, %if.end16.i.i.do.end20.i.i_crit_edge51, %if.end16.i.i.do.end20.i.i_crit_edge52
  %name22.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 2
  %34 = ptrtoint ptr %write_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %write_speed.i.i, align 4
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name22.i.i, i32 noundef %35) #16
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.end16.i.i
  %call27.i.i = call fastcc i32 @pkt_media_speed(ptr noundef nonnull %4, ptr noundef nonnull %media_write_speed.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %sw.default.i.i.if.end30.i.i_crit_edge, label %if.then29.i.i

sw.default.i.i.if.end30.i.i_crit_edge:            ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i.i

if.then29.i.i:                                    ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %media_write_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %media_write_speed.i.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then29.i.i, %sw.default.i.i.if.end30.i.i_crit_edge
  %37 = ptrtoint ptr %write_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %write_speed.i.i, align 4
  %39 = ptrtoint ptr %media_write_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %media_write_speed.i.i, align 4
  %mul.i.i = mul i32 %40, 177
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %mul.i.i) #13
  %42 = ptrtoint ptr %write_speed.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %write_speed.i.i, align 4
  %name38.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 2
  %div.i.i = udiv i32 %41, 176
  %call40.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name38.i.i, i32 noundef %div.i.i) #16
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end30.i.i, %do.end20.i.i
  %43 = ptrtoint ptr %write_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %write_speed.i.i, align 4
  %call43.i.i = tail call fastcc i32 @pkt_set_speed(ptr noundef nonnull %4, i32 noundef %44, i32 noundef %44) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool44.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end56.i.i, label %sw.epilog.i.i.pkt_open_write.exit.thread81.i_crit_edge

sw.epilog.i.i.pkt_open_write.exit.thread81.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_open_write.exit.thread81.i

if.end56.i.i:                                     ; preds = %sw.epilog.i.i
  %write_speed57.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 6
  %45 = ptrtoint ptr %write_speed57.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %write_speed57.i.i, align 8
  %read_speed58.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 7
  %46 = ptrtoint ptr %read_speed58.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %read_speed58.i.i, align 4
  %call59.i.i = tail call fastcc i32 @pkt_perform_opc(ptr noundef nonnull %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %pkt_open_write.exit.thread.i, label %pkt_open_write.exit.i

pkt_open_write.exit.thread.i:                     ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %media_write_speed.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_speed.i.i) #13
  br label %if.end19.i

pkt_open_write.exit.thread81.i:                   ; preds = %sw.epilog.i.i.pkt_open_write.exit.thread81.i_crit_edge, %if.end.i.i.pkt_open_write.exit.thread81.i_crit_edge
  %.str.51.sink.i.ph.i = phi ptr [ @.str.48, %sw.epilog.i.i.pkt_open_write.exit.thread81.i_crit_edge ], [ @.str.39, %if.end.i.i.pkt_open_write.exit.thread81.i_crit_edge ]
  %name67.i84.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 2
  %call69.i85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51.sink.i.ph.i, ptr noundef %name67.i84.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %media_write_speed.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_speed.i.i) #13
  br label %pkt_open_dev.exit.thread48

pkt_open_write.exit.i:                            ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %name67.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 2
  %call69.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name67.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %media_write_speed.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_speed.i.i) #13
  br label %if.end19.i

if.end19.i:                                       ; preds = %pkt_open_write.exit.i, %pkt_open_write.exit.thread.i
  %settings.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 3
  %47 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %settings.i, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %27, i32 noundef %48) #13
  %flags.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #13
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call20.i = tail call fastcc i32 @pkt_set_speed(ptr noundef nonnull %4, i32 noundef 65535, i32 noundef 65535) #13
  %flags21.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags21.i) #13
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.end19.i
  %settings.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 3
  %49 = ptrtoint ptr %settings.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %settings.i.i, align 4
  %51 = lshr i32 %50, 2
  %div19.i.i = and i32 %51, 2097151
  %max_segments.i.i.i = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 37, i32 21
  %52 = ptrtoint ptr %max_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %max_segments.i.i.i, align 4
  %conv.i.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div19.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp ugt i32 %div19.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i.i) #13
  br label %if.end26.i

if.else.i.i:                                      ; preds = %if.end22.i
  %54 = lshr i32 %50, 3
  %div520.i.i = and i32 %54, 1048575
  call void @__sanitizer_cov_trace_cmp4(i32 %div520.i.i, i32 %conv.i.i)
  %cmp8.not.i.i = icmp ugt i32 %div520.i.i, %conv.i.i
  br i1 %cmp8.not.i.i, label %pkt_set_segment_merging.exit.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags11.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags11.i.i) #13
  br label %if.end26.i

pkt_set_segment_merging.exit.i:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 2
  %call13.i74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name.i.i) #16
  br label %pkt_open_dev.exit.thread48

if.end26.i:                                       ; preds = %if.then10.i.i, %if.then.i.i
  br i1 %tobool14.not.i, label %if.end26.i.pkt_open_dev.exit.thread_crit_edge, label %if.then28.i

if.end26.i.pkt_open_dev.exit.thread_crit_edge:    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_open_dev.exit.thread

if.then28.i:                                      ; preds = %if.end26.i
  %call29.i = tail call fastcc i32 @pkt_grow_pktlist(ptr noundef nonnull %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  %name36.i = getelementptr inbounds %struct.pktcdvd_device, ptr %4, i32 0, i32 2
  br i1 %tobool30.not.i, label %do.end34.i, label %do.end42.i

do.end34.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #15
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name36.i) #16
  br label %pkt_open_dev.exit.thread48

do.end42.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl46.i = shl i32 %19, 1
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name36.i, i32 noundef %shl46.i) #16
  br label %pkt_open_dev.exit.thread

pkt_open_dev.exit.thread48:                       ; preds = %do.end34.i, %pkt_set_segment_merging.exit.i, %pkt_open_write.exit.thread81.i, %pkt_open_write.exit.thread78.i, %do.end.i
  %ret.0.i = phi i32 [ %call4.i, %do.end.i ], [ -5, %pkt_set_segment_merging.exit.i ], [ -12, %do.end34.i ], [ %call.i.i, %pkt_open_write.exit.thread78.i ], [ -5, %pkt_open_write.exit.thread81.i ]
  tail call void @blkdev_put(ptr noundef %call.i, i32 noundef 129) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lba.i) #13
  br label %out_dec

pkt_open_dev.exit.thread:                         ; preds = %do.end42.i, %if.end26.i.pkt_open_dev.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lba.i) #13
  %call26 = tail call i32 @set_blocksize(ptr noundef %bdev, i32 noundef 2048) #13
  br label %cleanup

pkt_open_dev.exit:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lba.i) #13
  br label %out_dec

out_dec:                                          ; preds = %pkt_open_dev.exit, %pkt_open_dev.exit.thread48, %land.lhs.true.out_dec_crit_edge
  %ret.0 = phi i32 [ %55, %pkt_open_dev.exit ], [ -16, %land.lhs.true.out_dec_crit_edge ], [ %ret.0.i, %pkt_open_dev.exit.thread48 ]
  %56 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %refcnt, align 4
  %dec = add i32 %57, -1
  store i32 %dec, ptr %refcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_dec, %pkt_open_dev.exit.thread, %land.lhs.true.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %pkt_find_dev_from_minor.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %pkt_open_dev.exit.thread ], [ %ret.0, %out_dec ], [ -19, %pkt_find_dev_from_minor.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ctl_mutex) #13
  tail call void @mutex_unlock(ptr noundef nonnull @pktcdvd_mutex) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkt_close(ptr nocapture noundef readonly %disk, i32 noundef %mode) #2 align 64 {
entry:
  %cgc.i12.i = alloca %struct.packet_command, align 4
  %cgc.i.i = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pktcdvd_mutex, i32 noundef 0) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @ctl_mutex, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !476

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2277, 0\0A.popsection", ""() #13, !srcloc !480
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp10 = icmp eq i32 %dec, 0
  br i1 %cmp10, label %if.then11, label %do.end8.if.end12_crit_edge

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  %flags = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then11.pkt_release_dev.exit_crit_edge, label %land.lhs.true.i

if.then11.pkt_release_dev.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_release_dev.exit

land.lhs.true.i:                                  ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i.i) #13
  %7 = call ptr @memset(ptr %cgc.i.i, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i.i, ptr noundef null, i32 noundef 0, i32 noundef 3) #13
  %8 = ptrtoint ptr %cgc.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 53, ptr %cgc.i.i, align 4
  %quiet.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %quiet.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %quiet.i.i, align 4
  %call.i.i = call fastcc i32 @pkt_generic_packet(ptr noundef %1, ptr noundef nonnull %cgc.i.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.pkt_release_dev.exit_crit_edge, label %do.end.i

land.lhs.true.i.pkt_release_dev.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_release_dev.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 2
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %name.i) #16
  br label %pkt_release_dev.exit

pkt_release_dev.exit:                             ; preds = %do.end.i, %land.lhs.true.i.pkt_release_dev.exit_crit_edge, %if.then11.pkt_release_dev.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i12.i) #13
  %10 = call ptr @memset(ptr %cgc.i12.i, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i12.i, ptr noundef null, i32 noundef 0, i32 noundef 3) #13
  %11 = ptrtoint ptr %cgc.i12.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 30, ptr %cgc.i12.i, align 4
  %arrayidx2.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i12.i, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx2.i.i, align 4
  %call.i13.i = call fastcc i32 @pkt_generic_packet(ptr noundef %1, ptr noundef nonnull %cgc.i12.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i12.i) #13
  %call6.i = call fastcc i32 @pkt_set_speed(ptr noundef %1, i32 noundef 65535, i32 noundef 65535) #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  call void @blkdev_put(ptr noundef %14, i32 noundef 129) #13
  call fastcc void @pkt_shrink_pktlist(ptr noundef %1) #13
  br label %if.end12

if.end12:                                         ; preds = %pkt_release_dev.exit, %do.end8.if.end12_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ctl_mutex) #13
  call void @mutex_unlock(ptr noundef nonnull @pktcdvd_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkt_ioctl(ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %cgc.i = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pktcdvd_mutex, i32 noundef 0) #13
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 21257, label %sw.bb
    i32 21264, label %entry.sw.bb1_crit_edge
    i32 21254, label %entry.sw.bb1_crit_edge17
    i32 21397, label %entry.sw.bb1_crit_edge18
    i32 21395, label %entry.sw.bb1_crit_edge19
    i32 1, label %entry.sw.bb1_crit_edge20
  ]

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %refcnt = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.bb1_crit_edge

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i) #13
  %7 = call ptr @memset(ptr %cgc.i, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i, ptr noundef null, i32 noundef 0, i32 noundef 3) #13
  %8 = ptrtoint ptr %cgc.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 30, ptr %cgc.i, align 4
  %arrayidx2.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx2.i, align 4
  %call.i = call fastcc i32 @pkt_generic_packet(ptr noundef %3, ptr noundef nonnull %cgc.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #13
  br label %sw.bb1

sw.bb1:                                           ; preds = %if.then, %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18, %entry.sw.bb1_crit_edge19, %entry.sw.bb1_crit_edge20
  %10 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fops, align 8
  %ioctl = getelementptr inbounds %struct.block_device_operations, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioctl, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %sw.bb1.sw.epilog_crit_edge, label %if.else

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call i32 %15(ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call7, %if.else ], [ -25, %sw.bb1.sw.epilog_crit_edge ], [ -25, %entry.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @pktcdvd_mutex) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkt_check_events(ptr nocapture noundef readonly %disk, i32 noundef %clearing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %fops = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fops, align 8
  %check_events = getelementptr inbounds %struct.block_device_operations, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %check_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %check_events, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %9(ptr noundef nonnull %5, i32 noundef %clearing) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @pkt_devnode(ptr noundef %disk, ptr nocapture noundef readnone %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 3
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.131, ptr noundef %disk_name) #13
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_split(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_devname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkt_end_io_read_cloned(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %pd1 = getelementptr inbounds %struct.packet_stacked_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd1, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %bi_status3 = getelementptr inbounds %struct.bio, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %bi_status3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %bi_status3, align 2
  tail call void @bio_put(ptr noundef %bio) #13
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @bio_endio(ptr noundef %10) #13
  tail call void @mempool_free(ptr noundef %1, ptr noundef nonnull @psd_pool) #13
  %pending_bios.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 15, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios.i, i32 noundef 4) #13
  %11 = ptrtoint ptr %pending_bios.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %pending_bios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp slt i32 %12, 1
  br i1 %cmp.i, label %do.body2.i, label %do.end5.i, !prof !476

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #13, !srcloc !481
  unreachable

do.end5.i:                                        ; preds = %entry
  %call.i.i16.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !482
  tail call void @llvm.prefetch.p0(ptr %pending_bios.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bios.i, ptr %pending_bios.i, i32 1, ptr elementtype(i32) %pending_bios.i) #13, !srcloc !483
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !484
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end11.i, label %do.end5.i.pkt_bio_finished.exit_crit_edge

do.end5.i.pkt_bio_finished.exit_crit_edge:        ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_bio_finished.exit

do.end11.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %iosched.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 24
  %call.i.i17.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iosched.i, i32 noundef 4) #13
  %14 = ptrtoint ptr %iosched.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %iosched.i, align 4
  %wqueue.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wqueue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %pkt_bio_finished.exit

pkt_bio_finished.exit:                            ; preds = %do.end11.i, %do.end5.i.pkt_bio_finished.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_get_last_written(ptr nocapture noundef readonly %pd, ptr nocapture noundef writeonly %last_written) unnamed_addr #10 align 64 {
entry:
  %cgc.i52 = alloca %struct.packet_command, align 4
  %cgc.i42 = alloca %struct.packet_command, align 4
  %cgc.i = alloca %struct.packet_command, align 4
  %di = alloca %struct.disc_information, align 4
  %ti = alloca %struct.track_information, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %di) #13
  %0 = call ptr @memset(ptr %di, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ti) #13
  %1 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 4
  %2 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 5
  %3 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 7
  %4 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 9
  %5 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 10
  %6 = call ptr @memset(ptr %ti, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i) #13
  %7 = call ptr @memset(ptr %cgc.i, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i, ptr noundef nonnull %di, i32 noundef 36, i32 noundef 2) #13
  %8 = ptrtoint ptr %cgc.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 81, ptr %cgc.i, align 4
  %buflen.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 2
  %9 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %buflen.i, align 4
  %arrayidx2.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %arrayidx2.i, align 4
  %quiet.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 6
  %11 = ptrtoint ptr %quiet.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %quiet.i, align 4
  %call.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %pkt_get_disc_info.exit, label %pkt_get_disc_info.exit.thread

pkt_get_disc_info.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #13
  br label %cleanup

pkt_get_disc_info.exit:                           ; preds = %entry
  %12 = ptrtoint ptr %di to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %di, align 4
  %conv.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %13)
  %cmp.i = icmp ugt i16 %13, 34
  %spec.select.i = select i1 %cmp.i, i32 36, i32 %add.i
  %14 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i, ptr %buflen.i, align 4
  %conv10.i = trunc i32 %spec.select.i to i8
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.i, ptr %arrayidx2.i, align 4
  %call13.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %if.end, label %pkt_get_disc_info.exit.cleanup_crit_edge

pkt_get_disc_info.exit.cleanup_crit_edge:         ; preds = %pkt_get_disc_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %pkt_get_disc_info.exit
  %last_track_msb = getelementptr inbounds %struct.disc_information, ptr %di, i32 0, i32 10
  %16 = ptrtoint ptr %last_track_msb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %last_track_msb, align 1
  %conv = zext i8 %17 to i16
  %shl = shl nuw i16 %conv, 8
  %last_track_lsb = getelementptr inbounds %struct.disc_information, ptr %di, i32 0, i32 5
  %18 = ptrtoint ptr %last_track_lsb to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %last_track_lsb, align 2
  %conv1 = zext i8 %19 to i16
  %or = or i16 %shl, %conv1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i42) #13
  %20 = call ptr @memset(ptr %cgc.i42, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i42, ptr noundef nonnull %ti, i32 noundef 8, i32 noundef 2) #13
  %21 = ptrtoint ptr %cgc.i42 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 82, ptr %cgc.i42, align 4
  %arrayidx3.i = getelementptr inbounds [12 x i8], ptr %cgc.i42, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx3.i, align 1
  %arrayidx8.i = getelementptr inbounds [12 x i8], ptr %cgc.i42, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %17, ptr %arrayidx8.i, align 4
  %arrayidx13.i = getelementptr inbounds [12 x i8], ptr %cgc.i42, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %19, ptr %arrayidx13.i, align 1
  %arrayidx15.i = getelementptr inbounds [12 x i8], ptr %cgc.i42, i32 0, i32 8
  %25 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %arrayidx15.i, align 4
  %quiet.i43 = getelementptr inbounds %struct.packet_command, ptr %cgc.i42, i32 0, i32 6
  %26 = ptrtoint ptr %quiet.i43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %quiet.i43, align 4
  %call.i44 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %pkt_get_track_info.exit, label %pkt_get_track_info.exit.thread

pkt_get_track_info.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i42) #13
  br label %cleanup

pkt_get_track_info.exit:                          ; preds = %if.end
  %27 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ti, align 4
  %conv16.i = zext i16 %28 to i32
  %add.i46 = add nuw nsw i32 %conv16.i, 2
  %buflen.i47 = getelementptr inbounds %struct.packet_command, ptr %cgc.i42, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %28)
  %cmp.i48 = icmp ugt i16 %28, 30
  %spec.select.i49 = select i1 %cmp.i48, i32 32, i32 %add.i46
  %29 = ptrtoint ptr %buflen.i47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select.i49, ptr %buflen.i47, align 4
  %conv23.i = trunc i32 %spec.select.i49 to i8
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv23.i, ptr %arrayidx15.i, align 4
  %call26.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i42) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool4.not = icmp eq i32 %call26.i, 0
  br i1 %tobool4.not, label %if.end6, label %pkt_get_track_info.exit.cleanup_crit_edge

pkt_get_track_info.exit.cleanup_crit_edge:        ; preds = %pkt_get_track_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %pkt_get_track_info.exit
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 3)
  %bf.load = load i24, ptr %1, align 1
  %32 = and i24 %bf.load, 16384
  %tobool7.not = icmp eq i24 %32, 0
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %conv9 = add i16 %or, -1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i52) #13
  %33 = call ptr @memset(ptr %cgc.i52, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i52, ptr noundef nonnull %ti, i32 noundef 8, i32 noundef 2) #13
  %34 = ptrtoint ptr %cgc.i52 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 82, ptr %cgc.i52, align 4
  %arrayidx3.i53 = getelementptr inbounds [12 x i8], ptr %cgc.i52, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx3.i53 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx3.i53, align 1
  %36 = lshr i16 %conv9, 8
  %conv6.i54 = trunc i16 %36 to i8
  %arrayidx8.i55 = getelementptr inbounds [12 x i8], ptr %cgc.i52, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx8.i55 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv6.i54, ptr %arrayidx8.i55, align 4
  %conv11.i56 = trunc i16 %conv9 to i8
  %arrayidx13.i57 = getelementptr inbounds [12 x i8], ptr %cgc.i52, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx13.i57 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv11.i56, ptr %arrayidx13.i57, align 1
  %arrayidx15.i58 = getelementptr inbounds [12 x i8], ptr %cgc.i52, i32 0, i32 8
  %39 = ptrtoint ptr %arrayidx15.i58 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 8, ptr %arrayidx15.i58, align 4
  %quiet.i59 = getelementptr inbounds %struct.packet_command, ptr %cgc.i52, i32 0, i32 6
  %40 = ptrtoint ptr %quiet.i59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %quiet.i59, align 4
  %call.i60 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %pkt_get_track_info.exit71, label %pkt_get_track_info.exit71.thread

pkt_get_track_info.exit71.thread:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i52) #13
  br label %cleanup

pkt_get_track_info.exit71:                        ; preds = %if.then8
  %41 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ti, align 4
  %conv16.i62 = zext i16 %42 to i32
  %add.i63 = add nuw nsw i32 %conv16.i62, 2
  %buflen.i64 = getelementptr inbounds %struct.packet_command, ptr %cgc.i52, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %42)
  %cmp.i65 = icmp ugt i16 %42, 30
  %spec.select.i66 = select i1 %cmp.i65, i32 32, i32 %add.i63
  %43 = ptrtoint ptr %buflen.i64 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select.i66, ptr %buflen.i64, align 4
  %conv23.i67 = trunc i32 %spec.select.i66 to i8
  %44 = ptrtoint ptr %arrayidx15.i58 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv23.i67, ptr %arrayidx15.i58, align 4
  %call26.i68 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i52) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i68)
  %tobool11.not = icmp eq i32 %call26.i68, 0
  br i1 %tobool11.not, label %pkt_get_track_info.exit71.if.end14_crit_edge, label %pkt_get_track_info.exit71.cleanup_crit_edge

pkt_get_track_info.exit71.cleanup_crit_edge:      ; preds = %pkt_get_track_info.exit71
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

pkt_get_track_info.exit71.if.end14_crit_edge:     ; preds = %pkt_get_track_info.exit71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end14:                                         ; preds = %pkt_get_track_info.exit71.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 3)
  %bf.load15 = load i24, ptr %1, align 1
  %46 = and i24 %bf.load15, 2
  %tobool19.not = icmp eq i24 %46, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %5, align 4
  %49 = ptrtoint ptr %last_written to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %last_written, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %2, align 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %4, align 4
  %add = add i32 %53, %51
  %54 = ptrtoint ptr %last_written to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add, ptr %last_written, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool21.not = icmp eq i32 %56, 0
  br i1 %tobool21.not, label %if.else.cleanup_crit_edge, label %if.then22

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %add24.neg = add i32 %add, -7
  %sub = sub i32 %add24.neg, %56
  %57 = ptrtoint ptr %last_written to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub, ptr %last_written, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.else.cleanup_crit_edge, %if.then20, %pkt_get_track_info.exit71.cleanup_crit_edge, %pkt_get_track_info.exit71.thread, %pkt_get_track_info.exit.cleanup_crit_edge, %pkt_get_track_info.exit.thread, %pkt_get_disc_info.exit.cleanup_crit_edge, %pkt_get_disc_info.exit.thread
  %retval.0 = phi i32 [ %call13.i, %pkt_get_disc_info.exit.cleanup_crit_edge ], [ %call26.i, %pkt_get_track_info.exit.cleanup_crit_edge ], [ %call26.i68, %pkt_get_track_info.exit71.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %if.then20 ], [ %call.i, %pkt_get_disc_info.exit.thread ], [ %call.i44, %pkt_get_track_info.exit.thread ], [ %call.i60, %pkt_get_track_info.exit71.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ti) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %di) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_set_speed(ptr noundef %pd, i32 noundef %write_speed, i32 noundef %read_speed) unnamed_addr #10 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #13
  %0 = call ptr @memset(ptr %cgc, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #13
  %1 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sshdr, align 8
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef null, i32 noundef 0, i32 noundef 3) #13
  %sshdr1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 4
  %2 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sshdr, ptr %sshdr1, align 4
  %3 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -69, ptr %cgc, align 4
  %shr = lshr i32 %read_speed, 8
  %conv = trunc i32 %shr to i8
  %arrayidx3 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx3, align 2
  %conv5 = trunc i32 %read_speed to i8
  %arrayidx7 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %arrayidx7, align 1
  %shr8 = lshr i32 %write_speed, 8
  %conv10 = trunc i32 %shr8 to i8
  %arrayidx12 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv10, ptr %arrayidx12, align 4
  %conv14 = trunc i32 %write_speed to i8
  %arrayidx16 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv14, ptr %arrayidx16, align 1
  %call = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sshdr1, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %name11.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool.not.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sense_key.i, align 1
  %conv.i = zext i8 %11 to i32
  %asc.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %asc.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %asc.i, align 1
  %conv3.i = zext i8 %13 to i32
  %ascq.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %ascq.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ascq.i, align 1
  %conv4.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %11)
  %cmp.i.i = icmp ult i8 %11, 9
  br i1 %cmp.i.i, label %cond.true.i.i, label %do.end.i.sense_key_string.exit.i_crit_edge

do.end.i.sense_key_string.exit.i_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sense_key_string.exit.i

sense_key_string.exit.i:                          ; preds = %cond.true.i.i, %do.end.i.sense_key_string.exit.i_crit_edge
  %cond.i.i = phi ptr [ %17, %cond.true.i.i ], [ @.str.99, %do.end.i.sense_key_string.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv4.i, ptr noundef %cond.i.i) #16
  br label %if.end

do.end9.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %if.end

if.end:                                           ; preds = %do.end9.i, %sense_key_string.exit.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_grow_pktlist(ptr noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cdrw = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 15
  %0 = ptrtoint ptr %cdrw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cdrw, align 4
  %cmp.i.not = icmp eq ptr %1, %cdrw
  br i1 %cmp.i.not, label %while.cond.preheader, label %do.body4, !prof !468

while.cond.preheader:                             ; preds = %entry
  %settings = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3
  br label %while.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #13, !srcloc !485
  unreachable

while.body:                                       ; preds = %list_add.exit.while.body_crit_edge, %while.cond.preheader
  %nr_packets.addr.022 = phi i32 [ 8, %while.cond.preheader ], [ %dec, %list_add.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %settings, align 4
  %shr = lshr i32 %3, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 888) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %while.body.if.then12_crit_edge, label %if.end.i

while.body.if.then12_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.end.i:                                         ; preds = %while.body
  %frames1.i = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %frames1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %frames1.i, align 8
  %conv.i1 = trunc i32 %shr to i16
  %call2.i = tail call ptr @bio_kmalloc(i32 noundef 3264, i16 noundef zeroext %conv.i1) #13
  %w_bio.i = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %w_bio.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.i, ptr %w_bio.i, align 8
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i.no_bio.i_crit_edge, label %for.cond.preheader.i

if.end.i.no_bio.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_bio.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %div93.i = lshr i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp98.not.i = icmp ult i32 %3, 8
  br i1 %cmp98.not.i, label %for.cond.preheader.i.do.body.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div93.i, i32 1) #13
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.099.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.cond.i.do.body.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.099.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %arrayidx.i = getelementptr %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 13, i32 %i.099.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call38.i.i.i.i, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool11.not.i, label %for.body44.preheader.i.loopexit, label %for.cond.i

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  %lock.i = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.127, ptr noundef nonnull @pkt_alloc_packet_data.__key, i16 noundef signext 3) #13
  %orig_bios.i = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 2
  %tail.i.i = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tail.i.i, align 8
  %9 = ptrtoint ptr %orig_bios.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %orig_bios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp16100.i.not = icmp ult i32 %3, 4
  br i1 %cmp16100.i.not, label %do.body.i.if.end13_crit_edge, label %do.body.i.for.body18.i_crit_edge

do.body.i.for.body18.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body18.i

do.body.i.if.end13_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

for.body18.i:                                     ; preds = %for.inc24.i.for.body18.i_crit_edge, %do.body.i.for.body18.i_crit_edge
  %i.1101.i = phi i32 [ %inc25.i, %for.inc24.i.for.body18.i_crit_edge ], [ 0, %do.body.i.for.body18.i_crit_edge ]
  %call19.i = tail call ptr @bio_kmalloc(i32 noundef 3264, i16 noundef zeroext 1) #13
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %for.body30.i.preheader, label %for.inc24.i

for.body30.i.preheader:                           ; preds = %for.body18.i
  %w_bio.i.le = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 4
  br label %for.body30.i

for.inc24.i:                                      ; preds = %for.body18.i
  %arrayidx23.i = getelementptr %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.1101.i
  %10 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19.i, ptr %arrayidx23.i, align 4
  %inc25.i = add nuw nsw i32 %i.1101.i, 1
  %exitcond107.not.i = icmp eq i32 %inc25.i, %shr
  br i1 %exitcond107.not.i, label %for.inc24.i.if.end13_crit_edge, label %for.inc24.i.for.body18.i_crit_edge

for.inc24.i.for.body18.i_crit_edge:               ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body18.i

for.inc24.i.if.end13_crit_edge:                   ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

for.body30.i:                                     ; preds = %if.end36.i.for.body30.i_crit_edge, %for.body30.i.preheader
  %i.2103.i = phi i32 [ %inc38.i, %if.end36.i.for.body30.i_crit_edge ], [ 0, %for.body30.i.preheader ]
  %arrayidx33.i = getelementptr %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.2103.i
  %11 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx33.i, align 4
  %tobool34.not.i = icmp eq ptr %12, null
  br i1 %tobool34.not.i, label %for.body30.i.if.end36.i_crit_edge, label %if.then35.i

for.body30.i.if.end36.i_crit_edge:                ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

if.then35.i:                                      ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bio_put(ptr noundef nonnull %12) #13
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %for.body30.i.if.end36.i_crit_edge
  %inc38.i = add nuw nsw i32 %i.2103.i, 1
  %exitcond108.not.i = icmp eq i32 %inc38.i, %shr
  br i1 %exitcond108.not.i, label %no_page.i, label %if.end36.i.for.body30.i_crit_edge

if.end36.i.for.body30.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30.i

no_page.i:                                        ; preds = %if.end36.i
  br i1 %cmp98.not.i, label %no_page.i.for.end54.i_crit_edge, label %no_page.i.for.body44.preheader.i_crit_edge

no_page.i.for.body44.preheader.i_crit_edge:       ; preds = %no_page.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body44.preheader.i

no_page.i.for.end54.i_crit_edge:                  ; preds = %no_page.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end54.i

for.body44.preheader.i.loopexit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %w_bio.i.le61 = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 4
  br label %for.body44.preheader.i

for.body44.preheader.i:                           ; preds = %for.body44.preheader.i.loopexit, %no_page.i.for.body44.preheader.i_crit_edge
  %w_bio.i54 = phi ptr [ %w_bio.i.le61, %for.body44.preheader.i.loopexit ], [ %w_bio.i.le, %no_page.i.for.body44.preheader.i_crit_edge ]
  %umax109.i = tail call i32 @llvm.umax.i32(i32 %div93.i, i32 1) #13
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.inc52.i.for.body44.i_crit_edge, %for.body44.preheader.i
  %i.3105.i = phi i32 [ %inc53.i, %for.inc52.i.for.body44.i_crit_edge ], [ 0, %for.body44.preheader.i ]
  %arrayidx46.i = getelementptr %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 13, i32 %i.3105.i
  %13 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx46.i, align 4
  %tobool47.not.i = icmp eq ptr %14, null
  br i1 %tobool47.not.i, label %for.body44.i.for.inc52.i_crit_edge, label %if.then48.i

for.body44.i.for.inc52.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc52.i

if.then48.i:                                      ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__free_pages(ptr noundef nonnull %14, i32 noundef 0) #13
  br label %for.inc52.i

for.inc52.i:                                      ; preds = %if.then48.i, %for.body44.i.for.inc52.i_crit_edge
  %inc53.i = add nuw nsw i32 %i.3105.i, 1
  %exitcond110.not.i = icmp eq i32 %inc53.i, %umax109.i
  br i1 %exitcond110.not.i, label %for.inc52.i.for.end54.i_crit_edge, label %for.inc52.i.for.body44.i_crit_edge

for.inc52.i.for.body44.i_crit_edge:               ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body44.i

for.inc52.i.for.end54.i_crit_edge:                ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end54.i

for.end54.i:                                      ; preds = %for.inc52.i.for.end54.i_crit_edge, %no_page.i.for.end54.i_crit_edge
  %w_bio.i55 = phi ptr [ %w_bio.i.le, %no_page.i.for.end54.i_crit_edge ], [ %w_bio.i54, %for.inc52.i.for.end54.i_crit_edge ]
  %15 = ptrtoint ptr %w_bio.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %w_bio.i55, align 8
  tail call void @bio_put(ptr noundef %16) #13
  br label %no_bio.i

no_bio.i:                                         ; preds = %for.end54.i, %if.end.i.no_bio.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %if.then12

if.then12:                                        ; preds = %no_bio.i, %while.body.if.then12_crit_edge
  tail call fastcc void @pkt_shrink_pktlist(ptr noundef %pd)
  br label %cleanup

if.end13:                                         ; preds = %for.inc24.i.if.end13_crit_edge, %do.body.i.if.end13_crit_edge
  %id = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 15
  %17 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %nr_packets.addr.022, ptr %id, align 4
  %pd14 = getelementptr inbounds %struct.packet_data, ptr %call7.i.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %pd14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pd, ptr %pd14, align 8
  %19 = ptrtoint ptr %cdrw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdrw, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %cdrw, ptr noundef %20) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_add.exit_crit_edge

if.end13.list_add.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cdrw, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %cdrw to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i.i, ptr %cdrw, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end13.list_add.exit_crit_edge
  %dec = add nsw i32 %nr_packets.addr.022, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %list_add.exit.cleanup_crit_edge, label %list_add.exit.while.body_crit_edge

list_add.exit.while.body_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.cleanup_crit_edge, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 1, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cdrom_command(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_generic_packet(ptr nocapture noundef readonly %pd, ptr nocapture noundef readonly %cgc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 8
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %4 = ptrtoint ptr %data_direction to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %cond = select i1 %cmp, i32 35, i32 34
  %call2 = tail call ptr @scsi_alloc_request(ptr noundef %3, i32 noundef %cond, i32 noundef 0) #13
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %7 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %buffer = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %call7 = tail call i32 @blk_rq_map_kern(ptr noundef %3, ptr noundef %call2, ptr noundef %10, i32 noundef %8, i32 noundef 3072) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %11 = ptrtoint ptr %cgc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cgc, align 4
  %13 = lshr i8 %12, 5
  %14 = zext i8 %13 to i32
  %arrayidx13 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %16 to i16
  %cmd_len = getelementptr %struct.request, ptr %call2, i32 1, i32 5
  %17 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv14, ptr %cmd_len, align 4
  %cmd17 = getelementptr %struct.request, ptr %call2, i32 1, i32 4
  %18 = ptrtoint ptr %cmd17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd17, align 4
  %20 = call ptr @memcpy(ptr %19, ptr %cgc, i32 12)
  %timeout = getelementptr inbounds %struct.request, ptr %call2, i32 0, i32 7
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6000, ptr %timeout, align 4
  %quiet = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 6
  %22 = ptrtoint ptr %quiet to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quiet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool19.not = icmp eq i32 %23, 0
  br i1 %tobool19.not, label %if.end11.if.end21_crit_edge, label %if.then20

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %rq_flags = getelementptr inbounds %struct.request, ptr %call2, i32 0, i32 4
  %24 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rq_flags, align 8
  %or = or i32 %25, 2048
  store i32 %or, ptr %rq_flags, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end11.if.end21_crit_edge
  %call22 = tail call zeroext i8 @blk_execute_rq(ptr noundef %call2, i1 noundef zeroext false) #13
  %result = getelementptr %struct.request, ptr %call2, i32 1, i32 6
  %26 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not = icmp eq i32 %27, 0
  %spec.select = select i1 %tobool24.not, i32 0, i32 -5
  br label %out

out:                                              ; preds = %if.end21, %if.then5.out_crit_edge
  %ret.1 = phi i32 [ %call7, %if.then5.out_crit_edge ], [ %spec.select, %if.end21 ]
  tail call void @blk_mq_free_request(ptr noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %ret.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_kern(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_probe_settings(ptr noundef %pd) unnamed_addr #10 align 64 {
entry:
  %cgc.i157 = alloca %struct.packet_command, align 4
  %cgc.i = alloca %struct.packet_command, align 4
  %cgc = alloca %struct.packet_command, align 4
  %buf = alloca [12 x i8], align 1
  %di = alloca %struct.disc_information, align 4
  %ti = alloca %struct.track_information, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #13
  %0 = call ptr @memset(ptr %cgc, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #13
  %1 = call ptr @memset(ptr %buf, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %di) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ti) #13
  %2 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 4
  %3 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 5
  %4 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 6
  %5 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 8
  %6 = getelementptr inbounds %struct.track_information, ptr %ti, i32 0, i32 10
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef nonnull %buf, i32 noundef 12, i32 noundef 2) #13
  %7 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 70, ptr %cgc, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %arrayidx2, align 4
  %call = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 7
  %10 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv = zext i8 %12 to i16
  %shl = shl nuw i16 %conv, 8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  %conv5 = zext i8 %14 to i16
  %or = or i16 %shl, %conv5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i16 [ %or, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  %mmc3_profile = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 12
  %15 = ptrtoint ptr %mmc3_profile to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %cond, ptr %mmc3_profile, align 4
  %16 = call ptr @memset(ptr %di, i32 0, i32 36)
  %17 = call ptr @memset(ptr %ti, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i) #13
  %18 = call ptr @memset(ptr %cgc.i, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i, ptr noundef nonnull %di, i32 noundef 36, i32 noundef 2) #13
  %19 = ptrtoint ptr %cgc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 81, ptr %cgc.i, align 4
  %buflen.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 2
  %20 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %buflen.i, align 4
  %arrayidx2.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 8
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %arrayidx2.i, align 4
  %quiet.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 6
  %22 = ptrtoint ptr %quiet.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %quiet.i, align 4
  %call.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %pkt_get_disc_info.exit, label %pkt_get_disc_info.exit.thread

pkt_get_disc_info.exit.thread:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #13
  br label %do.end

pkt_get_disc_info.exit:                           ; preds = %cond.end
  %23 = ptrtoint ptr %di to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %di, align 4
  %conv.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %24)
  %cmp.i = icmp ugt i16 %24, 34
  %spec.select.i = select i1 %cmp.i, i32 36, i32 %add.i
  %25 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select.i, ptr %buflen.i, align 4
  %conv10.i = trunc i32 %spec.select.i to i8
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10.i, ptr %arrayidx2.i, align 4
  %call13.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool8.not = icmp eq i32 %call13.i, 0
  br i1 %tobool8.not, label %if.end, label %pkt_get_disc_info.exit.do.end_crit_edge

pkt_get_disc_info.exit.do.end_crit_edge:          ; preds = %pkt_get_disc_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %pkt_get_disc_info.exit.do.end_crit_edge, %pkt_get_disc_info.exit.thread
  %retval.0.i177 = phi i32 [ %call.i, %pkt_get_disc_info.exit.thread ], [ %call13.i, %pkt_get_disc_info.exit.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name) #16
  br label %cleanup

if.end:                                           ; preds = %pkt_get_disc_info.exit
  %27 = ptrtoint ptr %mmc3_profile to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mmc3_profile, align 4
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.214)
  switch i16 %28, label %if.end.cleanup_crit_edge [
    i16 10, label %if.end.sw.epilog.i_crit_edge
    i16 -1, label %if.end.sw.epilog.i_crit_edge185
    i16 26, label %if.end.if.end14_crit_edge
    i16 19, label %if.end.if.end14_crit_edge186
    i16 18, label %if.end.if.end14_crit_edge187
  ]

if.end.if.end14_crit_edge187:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.if.end14_crit_edge186:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.sw.epilog.i_crit_edge185:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.end.sw.epilog.i_crit_edge, %if.end.sw.epilog.i_crit_edge185
  %disc_type.i = getelementptr inbounds %struct.disc_information, ptr %di, i32 0, i32 7
  %30 = ptrtoint ptr %disc_type.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %disc_type.i, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.215)
  switch i8 %31, label %do.end16.i [
    i8 -1, label %do.end5.i
    i8 32, label %sw.epilog.i.if.end23.i_crit_edge
    i8 0, label %sw.epilog.i.if.end23.i_crit_edge188
  ]

sw.epilog.i.if.end23.i_crit_edge188:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

sw.epilog.i.if.end23.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

do.end5.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call.i155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name.i) #16
  br label %cleanup

do.end16.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i = zext i8 %31 to i32
  %name18.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name18.i, i32 noundef %conv2.i) #16
  br label %cleanup

if.end23.i:                                       ; preds = %sw.epilog.i.if.end23.i_crit_edge, %sw.epilog.i.if.end23.i_crit_edge188
  %erasable.i = getelementptr inbounds %struct.disc_information, ptr %di, i32 0, i32 1
  %33 = ptrtoint ptr %erasable.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %erasable.i, align 2
  %34 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp25.i = icmp eq i8 %34, 0
  br i1 %cmp25.i, label %do.end29.i, label %if.end34.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %name31.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name31.i) #16
  br label %cleanup

if.end34.i:                                       ; preds = %if.end23.i
  %35 = and i8 %bf.load.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %cmp39.i = icmp eq i8 %35, 8
  br i1 %cmp39.i, label %do.end43.i, label %if.end34.i.if.end14_crit_edge

if.end34.i.if.end14_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end43.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  %name45.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name45.i) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end34.i.if.end14_crit_edge, %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge186, %if.end.if.end14_crit_edge187
  %erasable = getelementptr inbounds %struct.disc_information, ptr %di, i32 0, i32 1
  %36 = ptrtoint ptr %erasable to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %erasable, align 2
  %37 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool16.not = icmp eq i8 %37, 0
  %conv18 = select i1 %tobool16.not, i8 1, i8 2
  %type = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 10
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv18, ptr %type, align 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i157) #13
  %39 = call ptr @memset(ptr %cgc.i157, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i157, ptr noundef nonnull %ti, i32 noundef 8, i32 noundef 2) #13
  %40 = ptrtoint ptr %cgc.i157 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 82, ptr %cgc.i157, align 4
  %arrayidx3.i = getelementptr inbounds [12 x i8], ptr %cgc.i157, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx3.i, align 1
  %arrayidx8.i = getelementptr inbounds [12 x i8], ptr %cgc.i157, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx8.i, align 4
  %arrayidx13.i = getelementptr inbounds [12 x i8], ptr %cgc.i157, i32 0, i32 5
  %43 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %arrayidx13.i, align 1
  %arrayidx15.i = getelementptr inbounds [12 x i8], ptr %cgc.i157, i32 0, i32 8
  %44 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %arrayidx15.i, align 4
  %quiet.i158 = getelementptr inbounds %struct.packet_command, ptr %cgc.i157, i32 0, i32 6
  %45 = ptrtoint ptr %quiet.i158 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %quiet.i158, align 4
  %call.i159 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i157) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i160 = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i160, label %pkt_get_track_info.exit, label %pkt_get_track_info.exit.thread

pkt_get_track_info.exit.thread:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i157) #13
  br label %do.end25

pkt_get_track_info.exit:                          ; preds = %if.end14
  %46 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ti, align 4
  %conv16.i = zext i16 %47 to i32
  %add.i161 = add nuw nsw i32 %conv16.i, 2
  %buflen.i162 = getelementptr inbounds %struct.packet_command, ptr %cgc.i157, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %47)
  %cmp.i163 = icmp ugt i16 %47, 30
  %spec.select.i164 = select i1 %cmp.i163, i32 32, i32 %add.i161
  %48 = ptrtoint ptr %buflen.i162 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select.i164, ptr %buflen.i162, align 4
  %conv23.i = trunc i32 %spec.select.i164 to i8
  %49 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv23.i, ptr %arrayidx15.i, align 4
  %call26.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc.i157) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i157) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool21.not = icmp eq i32 %call26.i, 0
  br i1 %tobool21.not, label %if.end30, label %pkt_get_track_info.exit.do.end25_crit_edge

pkt_get_track_info.exit.do.end25_crit_edge:       ; preds = %pkt_get_track_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

do.end25:                                         ; preds = %pkt_get_track_info.exit.do.end25_crit_edge, %pkt_get_track_info.exit.thread
  %retval.0.i166182 = phi i32 [ %call.i159, %pkt_get_track_info.exit.thread ], [ %call26.i, %pkt_get_track_info.exit.do.end25_crit_edge ]
  %name27 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name27) #16
  br label %cleanup

if.end30:                                         ; preds = %pkt_get_track_info.exit
  %50 = ptrtoint ptr %mmc3_profile to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mmc3_profile, align 4
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.216)
  switch i16 %51, label %sw.epilog.i169 [
    i16 26, label %if.end30.if.end41_crit_edge
    i16 18, label %if.end30.if.end41_crit_edge189
  ]

if.end30.if.end41_crit_edge189:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

sw.epilog.i169:                                   ; preds = %if.end30
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 3)
  %bf.load.i168 = load i24, ptr %2, align 1
  %54 = and i24 %bf.load.i168, 12288
  %.not.i = icmp eq i24 %54, 12288
  br i1 %.not.i, label %if.end.i170, label %sw.epilog.i169.do.end36_crit_edge

sw.epilog.i169.do.end36_crit_edge:                ; preds = %sw.epilog.i169
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

if.end.i170:                                      ; preds = %sw.epilog.i169
  %55 = trunc i24 %bf.load.i168 to i16
  %trunc.i = and i16 %55, -16384
  %56 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.217)
  switch i16 %trunc.i, label %do.end.i173 [
    i16 0, label %if.end.i170.if.end41_crit_edge
    i16 -32768, label %if.end.i170.if.end41_crit_edge190
    i16 16384, label %if.end.i170.if.end41_crit_edge191
  ]

if.end.i170.if.end41_crit_edge191:                ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end.i170.if.end41_crit_edge190:                ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end.i170.if.end41_crit_edge:                   ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

do.end.i173:                                      ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  %name.i171 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %bf.lshr61.i = lshr i24 %bf.load.i168, 15
  %57 = and i24 %bf.lshr61.i, 1
  %bf.cast63.i = zext i24 %57 to i32
  %bf.lshr67.i = lshr i24 %bf.load.i168, 14
  %58 = and i24 %bf.lshr67.i, 1
  %bf.cast69.i = zext i24 %58 to i32
  %bf.lshr73.i = lshr i24 %bf.load.i168, 13
  %59 = and i24 %bf.lshr73.i, 1
  %bf.cast75.i = zext i24 %59 to i32
  %call.i172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name.i171, i32 noundef %bf.cast63.i, i32 noundef %bf.cast69.i, i32 noundef %bf.cast75.i) #16
  br label %do.end36

do.end36:                                         ; preds = %do.end.i173, %sw.epilog.i169.do.end36_crit_edge
  %name38 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name38) #16
  br label %cleanup

if.end41:                                         ; preds = %if.end.i170.if.end41_crit_edge, %if.end.i170.if.end41_crit_edge190, %if.end.i170.if.end41_crit_edge191, %if.end30.if.end41_crit_edge, %if.end30.if.end41_crit_edge189
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %5, align 4
  %shl42 = shl i32 %61, 2
  %settings = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3
  %62 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shl42, ptr %settings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl42)
  %cmp = icmp eq i32 %shl42, 0
  br i1 %cmp, label %do.end49, label %if.end54

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %name51 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name51) #16
  br label %cleanup

if.end54:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %shl42)
  %cmp57 = icmp ugt i32 %shl42, 512
  br i1 %cmp57, label %do.end62, label %if.end67

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %name64 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name64) #16
  br label %cleanup

if.end67:                                         ; preds = %if.end54
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 3)
  %bf.load68 = load i24, ptr %2, align 1
  %bf.lshr69 = lshr i24 %bf.load68, 12
  %64 = trunc i24 %bf.lshr69 to i8
  %bf.cast = and i8 %64, 1
  %fp72 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %fp72 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %bf.cast, ptr %fp72, align 4
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %3, align 4
  %shl73 = shl i32 %67, 2
  %sub = add nsw i32 %shl42, -1
  %and = and i32 %shl73, %sub
  %offset = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 8
  %68 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and, ptr %offset, align 8
  %bf.cast78154 = and i24 %bf.load68, 1
  %tobool79.not = icmp eq i24 %bf.cast78154, 0
  br i1 %tobool79.not, label %if.end67.if.end81_crit_edge, label %if.then80

if.end67.if.end81_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then80:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %4, align 4
  %nwa = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 13
  %71 = ptrtoint ptr %nwa to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %nwa, align 8
  %flags = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 11
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #13
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end67.if.end81_crit_edge
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 3)
  %bf.load82 = load i24, ptr %2, align 1
  %73 = and i24 %bf.load82, 2
  %tobool86.not = icmp eq i24 %73, 0
  br i1 %tobool86.not, label %if.end81.if.end91_crit_edge, label %if.then87

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %6, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end81.if.end91_crit_edge
  %.sink = phi i32 [ %75, %if.then87 ], [ -1, %if.end81.if.end91_crit_edge ]
  %lra89 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 14
  %76 = ptrtoint ptr %lra89 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %.sink, ptr %lra89, align 4
  %flags90 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 11
  call void @_set_bit(i32 noundef 3, ptr noundef %flags90) #13
  %link_loss = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 2
  %77 = ptrtoint ptr %link_loss to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 7, ptr %link_loss, align 1
  %write_type = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 3
  %78 = ptrtoint ptr %write_type to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %write_type, align 2
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 3)
  %bf.load94 = load i24, ptr %2, align 1
  %bf.lshr95 = lshr i24 %bf.load94, 16
  %80 = trunc i24 %bf.lshr95 to i8
  %bf.cast97 = and i8 %80, 15
  %track_mode99 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 4
  %81 = ptrtoint ptr %track_mode99 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %bf.cast97, ptr %track_mode99, align 1
  %bf.lshr101 = lshr i24 %bf.load94, 8
  %82 = and i24 %bf.lshr101, 15
  %bf.cast103 = zext i24 %82 to i32
  %83 = zext i32 %bf.cast103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %bf.cast103, label %do.end111 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb106
  ]

sw.bb:                                            ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %block_mode = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 5
  %84 = ptrtoint ptr %block_mode to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 8, ptr %block_mode, align 4
  br label %cleanup

sw.bb106:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %block_mode108 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 5
  %85 = ptrtoint ptr %block_mode108 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 10, ptr %block_mode108, align 4
  br label %cleanup

do.end111:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %name113 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name113) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %sw.bb106, %sw.bb, %do.end62, %do.end49, %do.end36, %do.end25, %do.end43.i, %do.end29.i, %do.end16.i, %do.end5.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i177, %do.end ], [ %retval.0.i166182, %do.end25 ], [ -6, %do.end49 ], [ -30, %do.end62 ], [ -30, %do.end111 ], [ -30, %do.end36 ], [ 0, %sw.bb106 ], [ 0, %sw.bb ], [ -30, %do.end5.i ], [ -30, %do.end16.i ], [ -30, %do.end29.i ], [ -30, %do.end43.i ], [ -30, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ti) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %di) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_set_write_settings(ptr noundef %pd) unnamed_addr #10 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  %buffer = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #13
  %0 = call ptr @memset(ptr %cgc, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #13
  %1 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sshdr, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buffer) #13
  %mmc3_profile = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 12
  %2 = ptrtoint ptr %mmc3_profile to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmc3_profile, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.219)
  switch i16 %3, label %if.end [
    i16 26, label %entry.cleanup_crit_edge
    i16 18, label %entry.cleanup_crit_edge192
  ]

entry.cleanup_crit_edge192:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %buffer, i32 0, i32 128)
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef nonnull %buffer, i32 noundef 52, i32 noundef 2) #13
  %sshdr7 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 4
  %6 = ptrtoint ptr %sshdr7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sshdr, ptr %sshdr7, align 4
  %7 = call ptr @memset(ptr %cgc, i32 0, i32 12)
  %8 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 90, ptr %cgc, align 4
  %arrayidx3.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %arrayidx3.i, align 2
  %buflen.i = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %10 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buflen.i, align 4
  %shr.i = lshr i32 %11, 8
  %conv4.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %conv8.i = trunc i32 %11 to i8
  %arrayidx10.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8.i, ptr %arrayidx10.i, align 4
  %data_direction.i = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %14 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %data_direction.i, align 4
  %call.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  %15 = ptrtoint ptr %sshdr7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sshdr7, align 4
  %tobool.not.i = icmp eq ptr %16, null
  %name11.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool.not.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.then8
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sense_key.i, align 1
  %conv.i = zext i8 %18 to i32
  %asc.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %asc.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %asc.i, align 1
  %conv3.i = zext i8 %20 to i32
  %ascq.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %ascq.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ascq.i, align 1
  %conv4.i137 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %18)
  %cmp.i.i = icmp ult i8 %18, 9
  br i1 %cmp.i.i, label %cond.true.i.i, label %do.end.i.sense_key_string.exit.i_crit_edge

do.end.i.sense_key_string.exit.i_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sense_key_string.exit.i

sense_key_string.exit.i:                          ; preds = %cond.true.i.i, %do.end.i.sense_key_string.exit.i_crit_edge
  %cond.i.i = phi ptr [ %24, %cond.true.i.i ], [ @.str.99, %do.end.i.sense_key_string.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv4.i137, ptr noundef %cond.i.i) #16
  br label %cleanup

do.end9.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buffer, align 1
  %conv10 = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %arrayidx11 = getelementptr inbounds [128 x i8], ptr %buffer, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %28 to i32
  %or = or i32 %shl, %conv12
  %arrayidx16 = getelementptr inbounds [128 x i8], ptr %buffer, i32 0, i32 7
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx16, align 1
  %mode_offset = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 9
  %31 = ptrtoint ptr %mode_offset to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %mode_offset, align 4
  %32 = call i32 @llvm.umin.i32(i32 %or, i32 126)
  %33 = add nuw nsw i32 %32, 2
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef nonnull %buffer, i32 noundef %33, i32 noundef 2) #13
  %34 = ptrtoint ptr %sshdr7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sshdr, ptr %sshdr7, align 4
  %35 = call ptr @memset(ptr %cgc, i32 0, i32 12)
  %36 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 90, ptr %cgc, align 4
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %arrayidx3.i, align 2
  %38 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buflen.i, align 4
  %shr.i140 = lshr i32 %39, 8
  %conv4.i141 = trunc i32 %shr.i140 to i8
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv4.i141, ptr %arrayidx6.i, align 1
  %conv8.i143 = trunc i32 %39 to i8
  %41 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv8.i143, ptr %arrayidx10.i, align 4
  %42 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %data_direction.i, align 4
  %call.i146 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool28.not = icmp eq i32 %call.i146, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end9
  %43 = ptrtoint ptr %sshdr7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sshdr7, align 4
  %tobool.not.i148 = icmp eq ptr %44, null
  %name11.i149 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool.not.i148, label %do.end9.i164, label %do.end.i157

do.end.i157:                                      ; preds = %if.then29
  %sense_key.i150 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %sense_key.i150 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sense_key.i150, align 1
  %conv.i151 = zext i8 %46 to i32
  %asc.i152 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %asc.i152 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %asc.i152, align 1
  %conv3.i153 = zext i8 %48 to i32
  %ascq.i154 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %44, i32 0, i32 3
  %49 = ptrtoint ptr %ascq.i154 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ascq.i154, align 1
  %conv4.i155 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %46)
  %cmp.i.i156 = icmp ult i8 %46, 9
  br i1 %cmp.i.i156, label %cond.true.i.i159, label %do.end.i157.sense_key_string.exit.i162_crit_edge

do.end.i157.sense_key_string.exit.i162_crit_edge: ; preds = %do.end.i157
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i162

cond.true.i.i159:                                 ; preds = %do.end.i157
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i158 = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i151
  %51 = ptrtoint ptr %arrayidx.i.i158 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i158, align 4
  br label %sense_key_string.exit.i162

sense_key_string.exit.i162:                       ; preds = %cond.true.i.i159, %do.end.i157.sense_key_string.exit.i162_crit_edge
  %cond.i.i160 = phi ptr [ %52, %cond.true.i.i159 ], [ @.str.99, %do.end.i157.sense_key_string.exit.i162_crit_edge ]
  %call6.i161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name11.i149, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i151, i32 noundef %conv3.i153, i32 noundef %conv4.i155, ptr noundef %cond.i.i160) #16
  br label %cleanup

do.end9.i164:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name11.i149, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %cleanup

if.end30:                                         ; preds = %if.end9
  %53 = ptrtoint ptr %mode_offset to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mode_offset, align 4
  %conv32 = zext i8 %54 to i32
  %add33 = add nuw nsw i32 %conv32, 8
  %arrayidx34 = getelementptr [128 x i8], ptr %buffer, i32 0, i32 %add33
  %settings = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3
  %fp = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %fp to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fp, align 4
  %fp35 = getelementptr inbounds %struct.write_param_page, ptr %arrayidx34, i32 0, i32 2
  %57 = ptrtoint ptr %fp35 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 3)
  %bf.load = load i24, ptr %fp35, align 1
  %58 = and i8 %56, 1
  %bf.value = zext i8 %58 to i24
  %bf.shl = shl nuw nsw i24 %bf.value, 13
  %bf.clear = and i24 %bf.load, -1044240
  %bf.set = or i24 %bf.shl, %bf.clear
  %track_mode = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 4
  %59 = ptrtoint ptr %track_mode to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %track_mode, align 1
  %61 = and i8 %60, 15
  %bf.value39 = zext i8 %61 to i24
  %bf.shl40 = shl nuw nsw i24 %bf.value39, 8
  %bf.set42 = or i24 %bf.shl40, %bf.set
  %write_type = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 3
  %62 = ptrtoint ptr %write_type to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %write_type, align 2
  %64 = and i8 %63, 15
  %bf.value47 = zext i8 %64 to i24
  %bf.shl48 = shl nuw nsw i24 %bf.value47, 16
  %block_mode = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 5
  %65 = ptrtoint ptr %block_mode to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %block_mode, align 4
  %67 = and i8 %66, 15
  %bf.value54 = zext i8 %67 to i24
  %bf.clear55 = or i24 %bf.set42, %bf.shl48
  %bf.set56 = or i24 %bf.clear55, %bf.value54
  store i24 %bf.set56, ptr %fp35, align 1
  %trunc = trunc i8 %66 to i4
  %68 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.220)
  switch i4 %trunc, label %do.end [
    i4 -8, label %if.end30.if.end87_crit_edge
    i4 -6, label %if.then75
  ]

if.end30.if.end87_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then75:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %conv64 = zext i8 %67 to i32
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name, i32 noundef %conv64) #16
  br label %cleanup

if.end87:                                         ; preds = %if.then75, %if.end30.if.end87_crit_edge
  %.sink191 = phi i8 [ 32, %if.then75 ], [ 0, %if.end30.if.end87_crit_edge ]
  %.sink = phi i8 [ 8, %if.then75 ], [ 32, %if.end30.if.end87_crit_edge ]
  %session_format76 = getelementptr inbounds %struct.write_param_page, ptr %arrayidx34, i32 0, i32 6
  %69 = ptrtoint ptr %session_format76 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.sink191, ptr %session_format76, align 1
  %subhdr277 = getelementptr inbounds %struct.write_param_page, ptr %arrayidx34, i32 0, i32 14
  %70 = ptrtoint ptr %subhdr277 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %.sink, ptr %subhdr277, align 1
  %71 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %settings, align 4
  %shr = lshr i32 %72, 2
  %packet_size = getelementptr inbounds %struct.write_param_page, ptr %arrayidx34, i32 0, i32 8
  %73 = ptrtoint ptr %packet_size to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %shr, ptr %packet_size, align 1
  %74 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %33, ptr %buflen.i, align 4
  %75 = call ptr @memset(ptr %cgc, i32 0, i32 12)
  %buffer.i = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %76 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 0, ptr %77, align 1
  %79 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 85, ptr %cgc, align 4
  %arrayidx3.i166 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx3.i166 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 16, ptr %arrayidx3.i166, align 1
  %81 = load i32, ptr %buflen.i, align 4
  %shr.i168 = lshr i32 %81, 8
  %conv.i169 = trunc i32 %shr.i168 to i8
  %82 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i169, ptr %arrayidx6.i, align 1
  %conv7.i = trunc i32 %81 to i8
  %83 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv7.i, ptr %arrayidx10.i, align 4
  %84 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %data_direction.i, align 4
  %call.i171 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool94.not = icmp eq i32 %call.i171, 0
  br i1 %tobool94.not, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.end87
  %85 = ptrtoint ptr %sshdr7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sshdr7, align 4
  %tobool.not.i173 = icmp eq ptr %86, null
  %name11.i174 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool.not.i173, label %do.end9.i189, label %do.end.i182

do.end.i182:                                      ; preds = %if.then95
  %sense_key.i175 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %sense_key.i175 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sense_key.i175, align 1
  %conv.i176 = zext i8 %88 to i32
  %asc.i177 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %86, i32 0, i32 2
  %89 = ptrtoint ptr %asc.i177 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %asc.i177, align 1
  %conv3.i178 = zext i8 %90 to i32
  %ascq.i179 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %86, i32 0, i32 3
  %91 = ptrtoint ptr %ascq.i179 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ascq.i179, align 1
  %conv4.i180 = zext i8 %92 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %88)
  %cmp.i.i181 = icmp ult i8 %88, 9
  br i1 %cmp.i.i181, label %cond.true.i.i184, label %do.end.i182.sense_key_string.exit.i187_crit_edge

do.end.i182.sense_key_string.exit.i187_crit_edge: ; preds = %do.end.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i187

cond.true.i.i184:                                 ; preds = %do.end.i182
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i183 = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i176
  %93 = ptrtoint ptr %arrayidx.i.i183 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i183, align 4
  br label %sense_key_string.exit.i187

sense_key_string.exit.i187:                       ; preds = %cond.true.i.i184, %do.end.i182.sense_key_string.exit.i187_crit_edge
  %cond.i.i185 = phi ptr [ %94, %cond.true.i.i184 ], [ @.str.99, %do.end.i182.sense_key_string.exit.i187_crit_edge ]
  %call6.i186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name11.i174, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i176, i32 noundef %conv3.i178, i32 noundef %conv4.i180, ptr noundef %cond.i.i185) #16
  br label %cleanup

do.end9.i189:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name11.i174, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %cleanup

if.end96:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @pkt_print_settings(ptr noundef %pd)
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end9.i189, %sense_key_string.exit.i187, %do.end, %do.end9.i164, %sense_key_string.exit.i162, %do.end9.i, %sense_key_string.exit.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge192
  %retval.0 = phi i32 [ 0, %if.end96 ], [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge192 ], [ %call.i, %sense_key_string.exit.i ], [ %call.i, %do.end9.i ], [ %call.i146, %sense_key_string.exit.i162 ], [ %call.i146, %do.end9.i164 ], [ %call.i171, %sense_key_string.exit.i187 ], [ %call.i171, %do.end9.i189 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buffer) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pkt_write_caching(ptr noundef %pd) unnamed_addr #10 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #13
  %0 = call ptr @memset(ptr %cgc, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #13
  %1 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sshdr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #13
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef nonnull %buf, i32 noundef 64, i32 noundef 2) #13
  %sshdr1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 4
  %3 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sshdr, ptr %sshdr1, align 4
  %mode_offset = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 9
  %4 = ptrtoint ptr %mode_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode_offset, align 4
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv, 12
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %6 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %buflen, align 4
  %quiet = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 6
  %7 = ptrtoint ptr %quiet to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %quiet, align 4
  %8 = call ptr @memset(ptr %cgc, i32 0, i32 12)
  %9 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 90, ptr %cgc, align 4
  %arrayidx3.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %arrayidx3.i, align 2
  %shr.i = lshr i32 %add, 8
  %conv4.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %conv8.i = trunc i32 %add to i8
  %arrayidx10.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv8.i, ptr %arrayidx10.i, align 4
  %data_direction.i = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %13 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %data_direction.i, align 4
  %call.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %mode_offset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode_offset, align 4
  %conv5 = zext i8 %15 to i32
  %add6 = add nuw nsw i32 %conv5, 10
  %arrayidx = getelementptr [64 x i8], ptr %buf, i32 0, i32 %add6
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %18 = or i8 %17, 4
  store i8 %18, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12, align 1
  %add15 = add i8 %20, 2
  %conv18 = zext i8 %add15 to i32
  %21 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv18, ptr %buflen, align 4
  %22 = call ptr @memset(ptr %cgc, i32 0, i32 12)
  %buffer.i = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %23 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %24, align 1
  %26 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 85, ptr %cgc, align 4
  %arrayidx3.i1 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx3.i1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %arrayidx3.i1, align 1
  %28 = load i32, ptr %buflen, align 4
  %shr.i3 = lshr i32 %28, 8
  %conv.i = trunc i32 %shr.i3 to i8
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %arrayidx6.i, align 1
  %conv7.i = trunc i32 %28 to i8
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv7.i, ptr %arrayidx10.i, align 4
  %31 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %data_direction.i, align 4
  %call.i5 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool21.not = icmp eq i32 %call.i5, 0
  %name32 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool21.not, label %do.end30, label %do.end

do.end:                                           ; preds = %if.end
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name32) #16
  %32 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sshdr1, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %do.end
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sense_key.i, align 1
  %conv.i6 = zext i8 %35 to i32
  %asc.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %asc.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %asc.i, align 1
  %conv3.i = zext i8 %37 to i32
  %ascq.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %33, i32 0, i32 3
  %38 = ptrtoint ptr %ascq.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ascq.i, align 1
  %conv4.i7 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %35)
  %cmp.i.i = icmp ult i8 %35, 9
  br i1 %cmp.i.i, label %cond.true.i.i, label %do.end.i.sense_key_string.exit.i_crit_edge

do.end.i.sense_key_string.exit.i_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i6
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sense_key_string.exit.i

sense_key_string.exit.i:                          ; preds = %cond.true.i.i, %do.end.i.sense_key_string.exit.i_crit_edge
  %cond.i.i = phi ptr [ %41, %cond.true.i.i ], [ @.str.99, %do.end.i.sense_key_string.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name32, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i6, i32 noundef %conv3.i, i32 noundef %conv4.i7, ptr noundef %cond.i.i) #16
  br label %cleanup

do.end9.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name32, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %cleanup

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name32) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end9.i, %sense_key_string.exit.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_get_max_speed(ptr noundef %pd, ptr nocapture noundef writeonly %write_speed) unnamed_addr #10 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  %buf = alloca [274 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #13
  %0 = call ptr @memset(ptr %cgc, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #13
  %1 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sshdr, align 8
  call void @llvm.lifetime.start.p0(i64 274, ptr nonnull %buf) #13
  %2 = call ptr @memset(ptr %buf, i32 255, i32 274)
  %mode_offset = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 9
  %3 = ptrtoint ptr %mode_offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode_offset, align 4
  %conv = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv, 8
  %arrayidx = getelementptr [274 x i8], ptr %buf, i32 0, i32 %add
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef nonnull %buf, i32 noundef 274, i32 noundef 0) #13
  %sshdr1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 4
  %5 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sshdr, ptr %sshdr1, align 4
  %6 = call ptr @memset(ptr %cgc, i32 0, i32 12)
  %7 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 90, ptr %cgc, align 4
  %arrayidx3.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 42, ptr %arrayidx3.i, align 2
  %buflen.i = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %9 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buflen.i, align 4
  %shr.i = lshr i32 %10, 8
  %conv4.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %conv8.i = trunc i32 %10 to i8
  %arrayidx10.i = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv8.i, ptr %arrayidx10.i, align 4
  %data_direction.i = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %13 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %data_direction.i, align 4
  %call.i = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %mode_offset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode_offset, align 4
  %conv3 = zext i8 %15 to i32
  %arrayidx4 = getelementptr i8, ptr %arrayidx, i32 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %17 to i32
  %add6 = add nuw nsw i32 %conv3, 10
  %add8 = add nuw nsw i32 %add6, %conv5
  %18 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add8, ptr %buflen.i, align 4
  %19 = call ptr @memset(ptr %cgc, i32 0, i32 12)
  %20 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 90, ptr %cgc, align 4
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 42, ptr %arrayidx3.i, align 2
  %shr.i59 = lshr i32 %add8, 8
  %conv4.i60 = trunc i32 %shr.i59 to i8
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4.i60, ptr %arrayidx6.i, align 1
  %conv8.i62 = trunc i32 %add8 to i8
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv8.i62, ptr %arrayidx10.i, align 4
  %24 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %data_direction.i, align 4
  %call.i65 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool10.not = icmp eq i32 %call.i65, 0
  br i1 %tobool10.not, label %if.then.if.end12_crit_edge, label %if.then11

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.then
  %25 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sshdr1, align 4
  %tobool.not.i = icmp eq ptr %26, null
  %name11.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool.not.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.then11
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sense_key.i, align 1
  %conv.i = zext i8 %28 to i32
  %asc.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %asc.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %asc.i, align 1
  %conv3.i = zext i8 %30 to i32
  %ascq.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %ascq.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ascq.i, align 1
  %conv4.i66 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %28)
  %cmp.i.i = icmp ult i8 %28, 9
  br i1 %cmp.i.i, label %cond.true.i.i, label %do.end.i.sense_key_string.exit.i_crit_edge

do.end.i.sense_key_string.exit.i_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sense_key_string.exit.i

sense_key_string.exit.i:                          ; preds = %cond.true.i.i, %do.end.i.sense_key_string.exit.i_crit_edge
  %cond.i.i = phi ptr [ %34, %cond.true.i.i ], [ @.str.99, %do.end.i.sense_key_string.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv4.i66, ptr noundef %cond.i.i) #16
  br label %cleanup

do.end9.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %cleanup

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %arrayidx13 = getelementptr i8, ptr %arrayidx, i32 1
  %35 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %36)
  %cmp = icmp ugt i8 %36, 27
  %spec.store.select = select i1 %cmp, i32 28, i32 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %36)
  %cmp20 = icmp ugt i8 %36, 29
  br i1 %cmp20, label %if.then22, label %if.end12.if.end32_crit_edge

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx23 = getelementptr i8, ptr %arrayidx, i32 30
  %37 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %38 to i32
  %shl = shl nuw nsw i32 %conv24, 8
  %arrayidx25 = getelementptr i8, ptr %arrayidx, i32 31
  %39 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %40 to i32
  %add27 = or i32 %shl, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add27)
  %cmp28.not = icmp eq i32 %add27, 0
  %spec.select = select i1 %cmp28.not, i32 %spec.store.select, i32 34
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %if.end12.if.end32_crit_edge
  %offset.1 = phi i32 [ %spec.select, %if.then22 ], [ %spec.store.select, %if.end12.if.end32_crit_edge ]
  %arrayidx33 = getelementptr i8, ptr %arrayidx, i32 %offset.1
  %41 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %42 to i32
  %shl35 = shl nuw nsw i32 %conv34, 8
  %add36 = add nuw nsw i32 %offset.1, 1
  %arrayidx37 = getelementptr i8, ptr %arrayidx, i32 %add36
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %44 to i32
  %or = or i32 %shl35, %conv38
  %45 = ptrtoint ptr %write_speed to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or, ptr %write_speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end9.i, %sense_key_string.exit.i
  %retval.0 = phi i32 [ 0, %if.end32 ], [ %call.i65, %sense_key_string.exit.i ], [ %call.i65, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 274, ptr nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_media_speed(ptr noundef %pd, ptr nocapture noundef %speed) unnamed_addr #10 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #13
  %0 = call ptr @memset(ptr %cgc, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #13
  %1 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sshdr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #13
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef nonnull %buf, i32 noundef 2, i32 noundef 2) #13
  %sshdr1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 4
  %3 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sshdr, ptr %sshdr1, align 4
  %4 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 67, ptr %cgc, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %arrayidx5, align 2
  %arrayidx7 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx7, align 4
  %call = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sshdr1, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %name11.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool.not.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sense_key.i, align 1
  %conv.i = zext i8 %11 to i32
  %asc.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %asc.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %asc.i, align 1
  %conv3.i = zext i8 %13 to i32
  %ascq.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %ascq.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ascq.i, align 1
  %conv4.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %11)
  %cmp.i.i = icmp ult i8 %11, 9
  br i1 %cmp.i.i, label %cond.true.i.i, label %do.end.i.sense_key_string.exit.i_crit_edge

do.end.i.sense_key_string.exit.i_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sense_key_string.exit.i

sense_key_string.exit.i:                          ; preds = %cond.true.i.i, %do.end.i.sense_key_string.exit.i_crit_edge
  %cond.i.i = phi ptr [ %17, %cond.true.i.i ], [ @.str.99, %do.end.i.sense_key_string.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv4.i, ptr noundef %cond.i.i) #16
  br label %cleanup

do.end9.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 1
  %conv = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx9 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %21 to i32
  %add = or i32 %shl, %conv10
  %22 = call i32 @llvm.umin.i32(i32 %add, i32 62)
  %23 = add nuw nsw i32 %22, 2
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef nonnull %buf, i32 noundef %23, i32 noundef 2) #13
  %24 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sshdr, ptr %sshdr1, align 4
  %25 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 67, ptr %cgc, align 4
  %26 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %arrayidx3, align 1
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %arrayidx5, align 2
  %conv23 = trunc i32 %23 to i8
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv23, ptr %arrayidx7, align 4
  %call26 = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end
  %29 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sshdr1, align 4
  %tobool.not.i116 = icmp eq ptr %30, null
  %name11.i117 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool.not.i116, label %do.end9.i132, label %do.end.i125

do.end.i125:                                      ; preds = %if.then28
  %sense_key.i118 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %sense_key.i118 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sense_key.i118, align 1
  %conv.i119 = zext i8 %32 to i32
  %asc.i120 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %asc.i120 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %asc.i120, align 1
  %conv3.i121 = zext i8 %34 to i32
  %ascq.i122 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %30, i32 0, i32 3
  %35 = ptrtoint ptr %ascq.i122 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ascq.i122, align 1
  %conv4.i123 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %32)
  %cmp.i.i124 = icmp ult i8 %32, 9
  br i1 %cmp.i.i124, label %cond.true.i.i127, label %do.end.i125.sense_key_string.exit.i130_crit_edge

do.end.i125.sense_key_string.exit.i130_crit_edge: ; preds = %do.end.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i130

cond.true.i.i127:                                 ; preds = %do.end.i125
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i126 = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i119
  %37 = ptrtoint ptr %arrayidx.i.i126 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i126, align 4
  br label %sense_key_string.exit.i130

sense_key_string.exit.i130:                       ; preds = %cond.true.i.i127, %do.end.i125.sense_key_string.exit.i130_crit_edge
  %cond.i.i128 = phi ptr [ %38, %cond.true.i.i127 ], [ @.str.99, %do.end.i125.sense_key_string.exit.i130_crit_edge ]
  %call6.i129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name11.i117, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i119, i32 noundef %conv3.i121, i32 noundef %conv4.i123, ptr noundef %cond.i.i128) #16
  br label %cleanup

do.end9.i132:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name11.i117, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %arrayidx30 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %40 to i32
  %and = and i32 %conv31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %do.end, label %if.end36

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name) #16
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %and39 = and i32 %conv31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end44, label %if.end49

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %name46 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name46) #16
  br label %cleanup

if.end49:                                         ; preds = %if.end36
  %41 = lshr i32 %conv31, 3
  %and52 = and i32 %41, 7
  %arrayidx53 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 16
  %42 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx53, align 1
  %44 = and i8 %43, 15
  %and55 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and52)
  %45 = icmp ult i32 %and52, 3
  br i1 %45, label %switch.lookup, label %do.end66

do.end66:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %name68 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name68, i32 noundef %and52) #16
  br label %cleanup

switch.lookup:                                    ; preds = %if.end49
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.pkt_media_speed, i32 0, i32 %and52
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %arrayidx62 = getelementptr [16 x i8], ptr %switch.load, i32 0, i32 %and55
  %47 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %48 to i32
  %49 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv63, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool71.not = icmp eq i8 %48, 0
  %name84 = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool71.not, label %do.end82, label %do.end75

do.end75:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name84, i32 noundef %conv63) #16
  br label %cleanup

do.end82:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name84, i32 noundef %and55, i32 noundef %and52) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %do.end75, %do.end66, %do.end44, %do.end, %do.end9.i132, %sense_key_string.exit.i130, %do.end9.i, %sense_key_string.exit.i
  %retval.0 = phi i32 [ 1, %do.end66 ], [ 0, %do.end75 ], [ 1, %do.end82 ], [ 1, %do.end44 ], [ 1, %do.end ], [ %call, %sense_key_string.exit.i ], [ %call, %do.end9.i ], [ %call26, %sense_key_string.exit.i130 ], [ %call26, %do.end9.i132 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pkt_perform_opc(ptr noundef %pd) unnamed_addr #10 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #13
  %0 = call ptr @memset(ptr %cgc, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #13
  %1 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sshdr, align 8
  call void @init_cdrom_command(ptr noundef nonnull %cgc, ptr noundef null, i32 noundef 0, i32 noundef 3) #13
  %sshdr1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 4
  %2 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sshdr, ptr %sshdr1, align 4
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6000, ptr %timeout, align 4
  %4 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 84, ptr %cgc, align 4
  %arrayidx3 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx3, align 1
  %call = call fastcc i32 @pkt_generic_packet(ptr noundef %pd, ptr noundef nonnull %cgc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sshdr1, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %name11.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  br i1 %tobool.not.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sense_key.i, align 1
  %conv.i = zext i8 %9 to i32
  %asc.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %asc.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %asc.i, align 1
  %conv3.i = zext i8 %11 to i32
  %ascq.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %ascq.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ascq.i, align 1
  %conv4.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %9)
  %cmp.i.i = icmp ult i8 %9, 9
  br i1 %cmp.i.i, label %cond.true.i.i, label %do.end.i.sense_key_string.exit.i_crit_edge

do.end.i.sense_key_string.exit.i_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sense_key_string.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr [9 x ptr], ptr @sense_key_string.info, i32 0, i32 %conv.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  br label %sense_key_string.exit.i

sense_key_string.exit.i:                          ; preds = %cond.true.i.i, %do.end.i.sense_key_string.exit.i_crit_edge
  %cond.i.i = phi ptr [ %15, %cond.true.i.i ], [ @.str.99, %do.end.i.sense_key_string.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv4.i, ptr noundef %cond.i.i) #16
  br label %if.end

do.end9.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name11.i, i32 noundef 12, ptr noundef nonnull %cgc) #16
  br label %if.end

if.end:                                           ; preds = %do.end9.i, %sense_key_string.exit.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pkt_print_settings(ptr noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 2
  %settings = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3
  %fp = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.103, ptr @.str.102
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %settings, align 4
  %shr = lshr i32 %3, 2
  %block_mode = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %block_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %block_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp = icmp eq i8 %5, 8
  %cond5 = select i1 %cmp, i32 49, i32 50
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %shr, i32 noundef %cond5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pkt_shrink_pktlist(ptr noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cdrw = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 15
  %pkt_active_list = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %pkt_active_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pkt_active_list, align 4
  %cmp.i.not = icmp eq ptr %1, %pkt_active_list
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !468

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #13, !srcloc !486
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %cdrw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdrw, align 8
  %cmp.not35 = icmp eq ptr %3, %cdrw
  br i1 %cmp.not35, label %do.end9.for.end_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %pkt_free_packet_data.exit.for.body_crit_edge, %do.end9.for.body_crit_edge
  %pkt.036 = phi ptr [ %next.0, %pkt_free_packet_data.exit.for.body_crit_edge ], [ %3, %do.end9.for.body_crit_edge ]
  %4 = ptrtoint ptr %pkt.036 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0 = load ptr, ptr %pkt.036, align 8
  %frames.i = getelementptr inbounds %struct.packet_data, ptr %pkt.036, i32 0, i32 6
  %5 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.i = icmp sgt i32 %6, 0
  br i1 %cmp21.i, label %for.body.for.body.i_crit_edge, label %for.body.for.cond1.preheader.i_crit_edge

for.body.for.cond1.preheader.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %if.end.i.for.cond1.preheader.i_crit_edge, %for.body.for.cond1.preheader.i_crit_edge
  %7 = phi i32 [ %6, %for.body.for.cond1.preheader.i_crit_edge ], [ %11, %if.end.i.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp324.not.i = icmp ult i32 %7, 2
  br i1 %cmp324.not.i, label %for.cond1.preheader.i.pkt_free_packet_data.exit_crit_edge, label %for.cond1.preheader.i.for.body4.i_crit_edge

for.cond1.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body4.i

for.cond1.preheader.i.pkt_free_packet_data.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_free_packet_data.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.packet_data, ptr %pkt.036, i32 0, i32 12, i32 %i.022.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bio_put(ptr noundef nonnull %9) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %10 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frames.i, align 8
  %cmp.i34 = icmp slt i32 %inc.i, %11
  br i1 %cmp.i34, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.cond1.preheader.i_crit_edge

if.end.i.for.cond1.preheader.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.cond1.preheader.i.for.body4.i_crit_edge
  %i.125.i = phi i32 [ %inc7.i, %for.body4.i.for.body4.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body4.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.packet_data, ptr %pkt.036, i32 0, i32 13, i32 %i.125.i
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.i, align 4
  tail call void @__free_pages(ptr noundef %13, i32 noundef 0) #13
  %inc7.i = add nuw nsw i32 %i.125.i, 1
  %14 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frames.i, align 8
  %div20.i = lshr i32 %15, 1
  %cmp3.i = icmp ult i32 %inc7.i, %div20.i
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.pkt_free_packet_data.exit_crit_edge

for.body4.i.pkt_free_packet_data.exit_crit_edge:  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_free_packet_data.exit

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.i

pkt_free_packet_data.exit:                        ; preds = %for.body4.i.pkt_free_packet_data.exit_crit_edge, %for.cond1.preheader.i.pkt_free_packet_data.exit_crit_edge
  %w_bio.i = getelementptr inbounds %struct.packet_data, ptr %pkt.036, i32 0, i32 4
  %16 = ptrtoint ptr %w_bio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %w_bio.i, align 8
  tail call void @bio_put(ptr noundef %17) #13
  tail call void @kfree(ptr noundef %pkt.036) #13
  %cmp.not = icmp eq ptr %next.0, %cdrw
  br i1 %cmp.not, label %pkt_free_packet_data.exit.for.end_crit_edge, label %pkt_free_packet_data.exit.for.body_crit_edge

pkt_free_packet_data.exit.for.body_crit_edge:     ; preds = %pkt_free_packet_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

pkt_free_packet_data.exit.for.end_crit_edge:      ; preds = %pkt_free_packet_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %pkt_free_packet_data.exit.for.end_crit_edge, %do.end9.for.end_crit_edge
  %18 = ptrtoint ptr %cdrw to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %cdrw, ptr %cdrw, align 4
  %prev.i = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 15, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cdrw, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_kmalloc(i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_from_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pkt_init_queue(ptr noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.pktcdvd_device, ptr %pd, i32 0, i32 25
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %3, i32 noundef 2048) #13
  tail call void @blk_queue_max_hw_sectors(ptr noundef %3, i32 noundef 512) #13
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %queuedata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pd, ptr %queuedata, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kcdrwd(ptr noundef %foobar) #2 align 64 {
entry:
  %cgc.i.i = alloca %struct.packet_command, align 4
  %src_iter.i.i.i.i = alloca %struct.bvec_iter, align 8
  %dst_iter.i.i.i.i = alloca %struct.bvec_iter, align 8
  %written.i.i.i = alloca [128 x i8], align 1
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !458) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %3, i32 noundef -20) #13
  %call1 = tail call zeroext i1 @set_freezable() #13
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %wqueue = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 16
  %scan_queue = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 22
  %pkt_active_list = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 15, i32 1
  %iosched = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24
  %cdrw.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 15
  %lock.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 17
  %current_sector.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 21
  %bio_queue.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 18
  %bio_queue_size.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 19
  %offset.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 8
  %settings.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 3
  %rb_pool.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 23
  %congested.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 20
  %write_congestion_off.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 26
  %active_list_lock.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 15, i32 2
  %8 = getelementptr inbounds %struct.bvec_iter, ptr %src_iter.i.i.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.bvec_iter, ptr %dst_iter.i.i.i.i, i32 0, i32 1
  %flags.i.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 11
  %lock.i.i72.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24, i32 2
  %tail.i13.i.i80.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24, i32 4, i32 1
  %write_queue.i.i84.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24, i32 4
  %tail.i.i.i75.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24, i32 3, i32 1
  %read_queue.i.i78.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24, i32 3
  %secs_w.i.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 4, i32 2
  %stats107.i.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 4
  %secs_rg.i.i.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 4, i32 3
  %prev.i.i71.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 15, i32 0, i32 1
  %pending_bios50.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 15, i32 4
  %writing.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24, i32 1
  %last_write.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24, i32 5
  %quiet.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i, i32 0, i32 6
  %successive_reads88.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 24, i32 6
  %read_speed112.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 7
  %write_speed113.i = getelementptr inbounds %struct.pktcdvd_device, ptr %foobar, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 4
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  call void @add_wait_queue(ptr noundef %wqueue, ptr noundef nonnull %wait) #13
  br label %__here

__here:                                           ; preds = %for.end158.__here_crit_edge, %for.cond
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@kcdrwd, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %20, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !487
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %scan_queue, i32 noundef 4) #13
  %22 = ptrtoint ptr %scan_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %scan_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp sgt i32 %23, 0
  br i1 %cmp, label %__here.__here213_crit_edge, label %__here.for.cond72_crit_edge

__here.for.cond72_crit_edge:                      ; preds = %__here
  br label %for.cond72

__here.__here213_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here213

for.cond72:                                       ; preds = %for.body.for.cond72_crit_edge, %__here.for.cond72_crit_edge
  %pkt.0.in = phi ptr [ %pkt.0, %for.body.for.cond72_crit_edge ], [ %pkt_active_list, %__here.for.cond72_crit_edge ]
  %24 = ptrtoint ptr %pkt.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %pkt.0 = load ptr, ptr %pkt.0.in, align 8
  %cmp75.not = icmp eq ptr %pkt.0, %pkt_active_list
  br i1 %cmp75.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond72
  %run_sm = getelementptr inbounds %struct.packet_data, ptr %pkt.0, i32 0, i32 8
  %call.i.i287 = call zeroext i1 @__kasan_check_read(ptr noundef %run_sm, i32 noundef 4) #13
  %25 = ptrtoint ptr %run_sm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %run_sm, align 4
  %cmp79 = icmp sgt i32 %26, 0
  br i1 %cmp79, label %for.body.__here213_crit_edge, label %for.body.for.cond72_crit_edge

for.body.for.cond72_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond72

for.body.__here213_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here213

for.end:                                          ; preds = %for.cond72
  %call.i.i288 = call zeroext i1 @__kasan_check_read(ptr noundef %iosched, i32 noundef 4) #13
  %27 = ptrtoint ptr %iosched to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %iosched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp88.not = icmp eq i32 %28, 0
  br i1 %cmp88.not, label %for.cond97.preheader, label %for.end.__here213_crit_edge

for.end.__here213_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here213

for.cond97.preheader:                             ; preds = %for.end
  %29 = ptrtoint ptr %pkt_active_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %pkt.1372 = load ptr, ptr %pkt_active_list, align 8
  %cmp101.not373 = icmp eq ptr %pkt.1372, %pkt_active_list
  br i1 %cmp101.not373, label %for.cond97.preheader.do.end120_crit_edge, label %for.cond97.preheader.for.body104_crit_edge

for.cond97.preheader.for.body104_crit_edge:       ; preds = %for.cond97.preheader
  br label %for.body104

for.cond97.preheader.do.end120_crit_edge:         ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end120

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %for.cond97.preheader.for.body104_crit_edge
  %pkt.1375 = phi ptr [ %pkt.1, %for.body104.for.body104_crit_edge ], [ %pkt.1372, %for.cond97.preheader.for.body104_crit_edge ]
  %min_sleep_time.0374 = phi i32 [ %min_sleep_time.1, %for.body104.for.body104_crit_edge ], [ 2147483647, %for.cond97.preheader.for.body104_crit_edge ]
  %sleep_time = getelementptr inbounds %struct.packet_data, ptr %pkt.1375, i32 0, i32 9
  %30 = ptrtoint ptr %sleep_time to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sleep_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool105.not = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %min_sleep_time.0374)
  %cmp107 = icmp slt i32 %31, %min_sleep_time.0374
  %or.cond = select i1 %tobool105.not, i1 %cmp107, i1 false
  %min_sleep_time.1 = select i1 %or.cond, i32 %31, i32 %min_sleep_time.0374
  %32 = ptrtoint ptr %pkt.1375 to i32
  call void @__asan_load4_noabort(i32 %32)
  %pkt.1 = load ptr, ptr %pkt.1375, align 8
  %cmp101.not = icmp eq ptr %pkt.1, %pkt_active_list
  br i1 %cmp101.not, label %for.body104.do.end120_crit_edge, label %for.body104.for.body104_crit_edge

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body104

for.body104.do.end120_crit_edge:                  ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end120

do.end120:                                        ; preds = %for.body104.do.end120_crit_edge, %for.cond97.preheader.do.end120_crit_edge
  %min_sleep_time.0.lcssa = phi i32 [ 2147483647, %for.cond97.preheader.do.end120_crit_edge ], [ %min_sleep_time.1, %for.body104.do.end120_crit_edge ]
  %call121 = call i32 @schedule_timeout(i32 noundef %min_sleep_time.0.lcssa) #13
  %33 = call i32 @llvm.read_register.i32(metadata !458) #13
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and.i290 = and i32 %38, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i290)
  %tobool.not.i = icmp eq i32 %and.i290, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end120.if.end.i_crit_edge

do.end120.if.end.i_crit_edge:                     ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #15
  call void @debug_check_no_locks_held() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end120.if.end.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.148, i32 noundef 57) #13
  %39 = call i32 @llvm.read_register.i32(metadata !458) #13
  %and.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %43 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !468

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %42) #13
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !476

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %44 = ptrtoint ptr %pkt_active_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %pkt.2376 = load ptr, ptr %pkt_active_list, align 8
  %cmp136.not377 = icmp eq ptr %pkt.2376, %pkt_active_list
  br i1 %cmp136.not377, label %try_to_freeze.exit.for.end158_crit_edge, label %for.body139.lr.ph

try_to_freeze.exit.for.end158_crit_edge:          ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end158

for.body139.lr.ph:                                ; preds = %try_to_freeze.exit
  %sub.neg = sub i32 %call121, %min_sleep_time.0.lcssa
  br label %for.body139

for.body139:                                      ; preds = %for.inc152.for.body139_crit_edge, %for.body139.lr.ph
  %pkt.2378 = phi ptr [ %pkt.2376, %for.body139.lr.ph ], [ %pkt.2, %for.inc152.for.body139_crit_edge ]
  %sleep_time140 = getelementptr inbounds %struct.packet_data, ptr %pkt.2378, i32 0, i32 9
  %45 = ptrtoint ptr %sleep_time140 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sleep_time140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool141.not = icmp eq i32 %46, 0
  br i1 %tobool141.not, label %for.body139.for.inc152_crit_edge, label %if.end143

for.body139.for.inc152_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc152

if.end143:                                        ; preds = %for.body139
  %sub145 = add i32 %46, %sub.neg
  %47 = ptrtoint ptr %sleep_time140 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub145, ptr %sleep_time140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub145)
  %cmp147 = icmp slt i32 %sub145, 1
  br i1 %cmp147, label %if.then148, label %if.end143.for.inc152_crit_edge

if.end143.for.inc152_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc152

if.then148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %sleep_time140 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sleep_time140, align 4
  %run_sm150 = getelementptr inbounds %struct.packet_data, ptr %pkt.2378, i32 0, i32 8
  %call.i.i289 = call zeroext i1 @__kasan_check_write(ptr noundef %run_sm150, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %run_sm150, i32 1, i32 3, i32 1) #13
  %49 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %run_sm150, ptr %run_sm150, i32 1, ptr elementtype(i32) %run_sm150) #13, !srcloc !475
  br label %for.inc152

for.inc152:                                       ; preds = %if.then148, %if.end143.for.inc152_crit_edge, %for.body139.for.inc152_crit_edge
  %50 = ptrtoint ptr %pkt.2378 to i32
  call void @__asan_load4_noabort(i32 %50)
  %pkt.2 = load ptr, ptr %pkt.2378, align 8
  %cmp136.not = icmp eq ptr %pkt.2, %pkt_active_list
  br i1 %cmp136.not, label %for.inc152.for.end158_crit_edge, label %for.inc152.for.body139_crit_edge

for.inc152.for.body139_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body139

for.inc152.for.end158_crit_edge:                  ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end158

for.end158:                                       ; preds = %for.inc152.for.end158_crit_edge, %try_to_freeze.exit.for.end158_crit_edge
  %call159 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call159, label %for.end158.__here213_crit_edge, label %for.end158.__here_crit_edge

for.end158.__here_crit_edge:                      ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

for.end158.__here213_crit_edge:                   ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here213

__here213:                                        ; preds = %for.end158.__here213_crit_edge, %for.end.__here213_crit_edge, %for.body.__here213_crit_edge, %__here.__here213_crit_edge
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %task_state_change217 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 212
  %53 = ptrtoint ptr %task_state_change217 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 ptrtoint (ptr blockaddress(@kcdrwd, %__here213) to i32), ptr %task_state_change217, align 4
  %54 = load ptr, ptr %task, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %54, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !488
  call void @remove_wait_queue(ptr noundef %wqueue, ptr noundef nonnull %wait) #13
  %call244 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call244, label %for.end249, label %while.cond.preheader

while.cond.preheader:                             ; preds = %__here213
  %call.i.i.i379 = call zeroext i1 @__kasan_check_write(ptr noundef %scan_queue, i32 noundef 4) #13
  %56 = ptrtoint ptr %scan_queue to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %scan_queue, align 4
  %57 = ptrtoint ptr %cdrw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %cdrw.i, align 4
  %cmp.i.not.i380 = icmp eq ptr %58, %cdrw.i
  br i1 %cmp.i.not.i380, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.if.end.i291_crit_edge

while.cond.preheader.if.end.i291_crit_edge:       ; preds = %while.cond.preheader
  br label %if.end.i291

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i291:                                      ; preds = %pkt_handle_queue.exit.if.end.i291_crit_edge, %while.cond.preheader.if.end.i291_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %59 = ptrtoint ptr %current_sector.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %current_sector.i, align 8
  %61 = ptrtoint ptr %bio_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bio_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end.i291.for.cond.i.i_crit_edge

if.end.i291.for.cond.i.i_crit_edge:               ; preds = %if.end.i291
  br label %for.cond.i.i

do.body.i.i:                                      ; preds = %if.end.i291
  %63 = ptrtoint ptr %bio_queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bio_queue_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i179.i = icmp sgt i32 %64, 0
  br i1 %cmp.i179.i, label %do.body4.i.i, label %do.body.i.i.if.end8.i_crit_edge, !prof !476

do.body.i.i.if.end8.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

do.body4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 642, 0\0A.popsection", ""() #13, !srcloc !489
  unreachable

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end.i291.for.cond.i.i_crit_edge
  %n.0.i.i = phi ptr [ %next.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %62, %if.end.i291.for.cond.i.i_crit_edge ]
  %bio.i.i = getelementptr inbounds %struct.pkt_rb_node, ptr %n.0.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bio.i.i, align 4
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bi_iter.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %60)
  %cmp12.not.i.i = icmp ult i64 %68, %60
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i.i, i32 0, i32 1
  %next.0.in.i.i = select i1 %cmp12.not.i.i, ptr %rb_right.i.i, ptr %rb_left.i.i
  %69 = ptrtoint ptr %next.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %next.0.i.i = load ptr, ptr %next.0.in.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %next.0.i.i, null
  br i1 %tobool15.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  br i1 %cmp12.not.i.i, label %if.then22.i.i, label %for.end.i.i.do.body27.i.i_crit_edge

for.end.i.i.do.body27.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.i.i

if.then22.i.i:                                    ; preds = %for.end.i.i
  %call.i.i180.i = call ptr @rb_next(ptr noundef nonnull %n.0.i.i) #13
  %tobool23.not.i.i = icmp eq ptr %call.i.i180.i, null
  br i1 %tobool23.not.i.i, label %if.then22.i.i.if.end8.i_crit_edge, label %if.then22.i.i.do.body27.i.i_crit_edge

if.then22.i.i.do.body27.i.i_crit_edge:            ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.i.i

if.then22.i.i.if.end8.i_crit_edge:                ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

do.body27.i.i:                                    ; preds = %if.then22.i.i.do.body27.i.i_crit_edge, %for.end.i.i.do.body27.i.i_crit_edge
  %tmp.0.i.i = phi ptr [ %call.i.i180.i, %if.then22.i.i.do.body27.i.i_crit_edge ], [ %n.0.i.i, %for.end.i.i.do.body27.i.i_crit_edge ]
  %bio28.i.i = getelementptr inbounds %struct.pkt_rb_node, ptr %tmp.0.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %bio28.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bio28.i.i, align 4
  %bi_iter29.i.i = getelementptr inbounds %struct.bio, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %bi_iter29.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %bi_iter29.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %60)
  %cmp31.i.i = icmp ult i64 %73, %60
  br i1 %cmp31.i.i, label %do.body39.i.i, label %do.body27.i.i.while.body.lr.ph.i_crit_edge, !prof !476

do.body27.i.i.while.body.lr.ph.i_crit_edge:       ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph.i

do.body39.i.i:                                    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !490
  unreachable

if.end8.i:                                        ; preds = %if.then22.i.i.if.end8.i_crit_edge, %do.body.i.i.if.end8.i_crit_edge
  %call4.i = call ptr @rb_first(ptr noundef %bio_queue.i.i) #13
  %tobool9.not237.i = icmp eq ptr %call4.i, null
  br i1 %tobool9.not237.i, label %if.end8.i.pkt_handle_queue.exit.thread334_crit_edge, label %if.end8.i.while.body.lr.ph.i_crit_edge

if.end8.i.while.body.lr.ph.i_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph.i

if.end8.i.pkt_handle_queue.exit.thread334_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_handle_queue.exit.thread334

while.body.lr.ph.i:                               ; preds = %if.end8.i.while.body.lr.ph.i_crit_edge, %do.body27.i.i.while.body.lr.ph.i_crit_edge
  %first_node.0245.i = phi ptr [ %call4.i, %if.end8.i.while.body.lr.ph.i_crit_edge ], [ %tmp.0.i.i, %do.body27.i.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end37.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %node.0238.i = phi ptr [ %first_node.0245.i, %while.body.lr.ph.i ], [ %node.1.i, %if.end37.i.while.body.i_crit_edge ]
  %bio10.i = getelementptr inbounds %struct.pkt_rb_node, ptr %node.0238.i, i32 0, i32 1
  %74 = ptrtoint ptr %bio10.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bio10.i, align 4
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %bi_iter.i, align 8
  %78 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset.i.i, align 8
  %conv.i181.i = zext i32 %79 to i64
  %add.i.i = add i64 %77, %conv.i181.i
  %80 = ptrtoint ptr %settings.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %settings.i.i, align 4
  %sub.i.i = add i32 %81, -1
  %conv1.i.i = zext i32 %sub.i.i to i64
  %neg.i.i = xor i64 %conv1.i.i, -1
  %and.i.i292 = and i64 %add.i.i, %neg.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body.i
  %p.0.in.i = phi ptr [ %pkt_active_list, %while.body.i ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %82 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %p.0.i = load ptr, ptr %p.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %p.0.i, %pkt_active_list
  br i1 %cmp.not.i, label %while.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %sector.i = getelementptr inbounds %struct.packet_data, ptr %p.0.i, i32 0, i32 5
  %83 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %sector.i, align 8
  %cmp18.i = icmp eq i64 %84, %and.i.i292
  br i1 %cmp18.i, label %if.then19.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then19.i:                                      ; preds = %for.body.i
  %call.i.i293 = call ptr @rb_next(ptr noundef nonnull %node.0238.i) #13
  %tobool27.not.i = icmp eq ptr %call.i.i293, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.then19.i.if.end37.i_crit_edge

if.then19.i.if.end37.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  %call30.i = call ptr @rb_first(ptr noundef %bio_queue.i.i) #13
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then28.i, %if.then19.i.if.end37.i_crit_edge
  %node.1.i = phi ptr [ %call.i.i293, %if.then19.i.if.end37.i_crit_edge ], [ %call30.i, %if.then28.i ]
  %cmp38.i = icmp eq ptr %node.1.i, %first_node.0245.i
  %tobool9.not249.i = icmp eq ptr %node.1.i, null
  %tobool9.not.i = or i1 %cmp38.i, %tobool9.not249.i
  br i1 %tobool9.not.i, label %if.end37.i.pkt_handle_queue.exit.thread334_crit_edge, label %if.end37.i.while.body.i_crit_edge

if.end37.i.while.body.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end37.i.pkt_handle_queue.exit.thread334_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_handle_queue.exit.thread334

while.end.i:                                      ; preds = %for.cond.i
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %tobool42.not.i = icmp eq ptr %75, null
  br i1 %tobool42.not.i, label %while.end.i.while.end_crit_edge, label %if.end47.i

while.end.i.while.end_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end47.i:                                       ; preds = %while.end.i
  %85 = ptrtoint ptr %cdrw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cdrw.i, align 8
  %87 = shl i64 %and.i.i292, 32
  %conv.i182.i = ashr exact i64 %87, 32
  br label %for.cond.i183.i

for.cond.i183.i:                                  ; preds = %lor.lhs.false.i.i.for.cond.i183.i_crit_edge, %if.end47.i
  %pkt.0.i.i = phi ptr [ %86, %if.end47.i ], [ %91, %lor.lhs.false.i.i.for.cond.i183.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %pkt.0.i.i, %cdrw.i
  br i1 %cmp.not.i.i, label %do.body.i184.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i183.i
  %sector.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %sector.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %conv.i182.i)
  %cmp3.i.i = icmp eq i64 %89, %conv.i182.i
  br i1 %cmp3.i.i, label %for.body.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.if.then.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %90 = ptrtoint ptr %pkt.0.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pkt.0.i.i, align 8
  %cmp9.i.i = icmp eq ptr %91, %cdrw.i
  br i1 %cmp9.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.for.cond.i183.i_crit_edge

lor.lhs.false.i.i.for.cond.i183.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i183.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %for.body.i.i.if.then.i.i_crit_edge
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pkt.0.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pkt.0.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i.i, align 4
  %94 = ptrtoint ptr %pkt.0.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pkt.0.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %98 = ptrtoint ptr %pkt.0.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %pkt.0.i.i, ptr %pkt.0.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %pkt.0.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %pkt.0.i.i, ptr %prev.i3.i.i.i, align 4
  %100 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %sector.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %101, i64 %conv.i182.i)
  %cmp14.not.i.i = icmp eq i64 %101, %conv.i182.i
  br i1 %cmp14.not.i.i, label %list_del_init.exit.i.i.pkt_get_packet_data.exit.i_crit_edge, label %if.then16.i.i

list_del_init.exit.i.i.pkt_get_packet_data.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_get_packet_data.exit.i

if.then16.i.i:                                    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %cache_valid.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 14
  %102 = ptrtoint ptr %cache_valid.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %cache_valid.i.i, align 8
  br label %pkt_get_packet_data.exit.i

do.body.i184.i:                                   ; preds = %for.cond.i183.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1065, 0\0A.popsection", ""() #13, !srcloc !491
  unreachable

pkt_get_packet_data.exit.i:                       ; preds = %if.then16.i.i, %list_del_init.exit.i.i.pkt_get_packet_data.exit.i_crit_edge
  %103 = ptrtoint ptr %settings.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %settings.i.i, align 4
  %conv49.i = zext i32 %104 to i64
  %add.i = add i64 %and.i.i292, %conv49.i
  %105 = ptrtoint ptr %current_sector.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %add.i, ptr %current_sector.i, align 8
  %106 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %and.i.i292, ptr %sector.i.i, align 8
  %frames.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 6
  %107 = ptrtoint ptr %frames.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %frames.i, align 8
  %109 = load i32, ptr %settings.i.i, align 4
  %shr.i = lshr i32 %109, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %shr.i)
  %cmp55.not.i = icmp eq i32 %108, %shr.i
  br i1 %cmp55.not.i, label %do.end69.i, label %do.body61.i, !prof !468

do.body61.i:                                      ; preds = %pkt_get_packet_data.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1152, 0\0A.popsection", ""() #13, !srcloc !492
  unreachable

do.end69.i:                                       ; preds = %pkt_get_packet_data.exit.i
  %write_size.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 3
  %110 = ptrtoint ptr %write_size.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %write_size.i, align 4
  call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %111 = ptrtoint ptr %bio_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bio_queue.i.i, align 4
  %tobool.not.i186239.i = icmp eq ptr %112, null
  br i1 %tobool.not.i186239.i, label %do.end69.i.do.body.i189.i_crit_edge, label %for.cond.i200.preheader.lr.ph.i

do.end69.i.do.body.i189.i_crit_edge:              ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i189.i

for.cond.i200.preheader.lr.ph.i:                  ; preds = %do.end69.i
  %lock90.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 1
  %tail.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 2, i32 1
  %orig_bios.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 2
  br label %for.cond.i200.i

do.body.i189.i:                                   ; preds = %bio_list_add.exit.i.do.body.i189.i_crit_edge, %do.end69.i.do.body.i189.i_crit_edge
  %113 = ptrtoint ptr %bio_queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bio_queue_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i188.i = icmp sgt i32 %114, 0
  br i1 %cmp.i188.i, label %do.body4.i190.i, label %do.body.i189.i.while.end95.i_crit_edge, !prof !476

do.body.i189.i.while.end95.i_crit_edge:           ; preds = %do.body.i189.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end95.i

do.body4.i190.i:                                  ; preds = %do.body.i189.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 642, 0\0A.popsection", ""() #13, !srcloc !489
  unreachable

for.cond.i200.i:                                  ; preds = %for.cond.i200.i.backedge, %for.cond.i200.preheader.lr.ph.i
  %n.0.i191.i = phi ptr [ %112, %for.cond.i200.preheader.lr.ph.i ], [ %n.0.i191.i.be, %for.cond.i200.i.backedge ]
  %bio.i192.i = getelementptr inbounds %struct.pkt_rb_node, ptr %n.0.i191.i, i32 0, i32 1
  %115 = ptrtoint ptr %bio.i192.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bio.i192.i, align 4
  %bi_iter.i193.i = getelementptr inbounds %struct.bio, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %bi_iter.i193.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %bi_iter.i193.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %118, i64 %and.i.i292)
  %cmp12.not.i194.i = icmp ult i64 %118, %and.i.i292
  %rb_left.i195.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i191.i, i32 0, i32 2
  %rb_right.i196.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i191.i, i32 0, i32 1
  %next.0.in.i197.i = select i1 %cmp12.not.i194.i, ptr %rb_right.i196.i, ptr %rb_left.i195.i
  %119 = ptrtoint ptr %next.0.in.i197.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %next.0.i198.i = load ptr, ptr %next.0.in.i197.i, align 4
  %tobool15.not.i199.i = icmp eq ptr %next.0.i198.i, null
  br i1 %tobool15.not.i199.i, label %for.end.i201.i, label %for.cond.i200.i.for.cond.i200.i.backedge_crit_edge

for.cond.i200.i.for.cond.i200.i.backedge_crit_edge: ; preds = %for.cond.i200.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i200.i.backedge

for.cond.i200.i.backedge:                         ; preds = %bio_list_add.exit.i.for.cond.i200.i.backedge_crit_edge, %for.cond.i200.i.for.cond.i200.i.backedge_crit_edge
  %n.0.i191.i.be = phi ptr [ %next.0.i198.i, %for.cond.i200.i.for.cond.i200.i.backedge_crit_edge ], [ %141, %bio_list_add.exit.i.for.cond.i200.i.backedge_crit_edge ]
  br label %for.cond.i200.i

for.end.i201.i:                                   ; preds = %for.cond.i200.i
  br i1 %cmp12.not.i194.i, label %if.then22.i204.i, label %for.end.i201.i.do.body27.i209.i_crit_edge

for.end.i201.i.do.body27.i209.i_crit_edge:        ; preds = %for.end.i201.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.i209.i

if.then22.i204.i:                                 ; preds = %for.end.i201.i
  %call.i.i202.i = call ptr @rb_next(ptr noundef nonnull %n.0.i191.i) #13
  %tobool23.not.i203.i = icmp eq ptr %call.i.i202.i, null
  br i1 %tobool23.not.i203.i, label %if.then22.i204.i.while.end95.i_crit_edge, label %if.then22.i204.i.do.body27.i209.i_crit_edge

if.then22.i204.i.do.body27.i209.i_crit_edge:      ; preds = %if.then22.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.i209.i

if.then22.i204.i.while.end95.i_crit_edge:         ; preds = %if.then22.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end95.i

do.body27.i209.i:                                 ; preds = %if.then22.i204.i.do.body27.i209.i_crit_edge, %for.end.i201.i.do.body27.i209.i_crit_edge
  %tmp.0.i205.i = phi ptr [ %call.i.i202.i, %if.then22.i204.i.do.body27.i209.i_crit_edge ], [ %n.0.i191.i, %for.end.i201.i.do.body27.i209.i_crit_edge ]
  %bio28.i206.i = getelementptr inbounds %struct.pkt_rb_node, ptr %tmp.0.i205.i, i32 0, i32 1
  %120 = ptrtoint ptr %bio28.i206.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bio28.i206.i, align 4
  %bi_iter29.i207.i = getelementptr inbounds %struct.bio, ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %bi_iter29.i207.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %bi_iter29.i207.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %123, i64 %and.i.i292)
  %cmp31.i208.i = icmp ult i64 %123, %and.i.i292
  br i1 %cmp31.i208.i, label %do.body39.i210.i, label %while.body78.i, !prof !476

do.body39.i210.i:                                 ; preds = %do.body27.i209.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !490
  unreachable

while.body78.i:                                   ; preds = %do.body27.i209.i
  %124 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset.i.i, align 8
  %conv.i214.i = zext i32 %125 to i64
  %add.i215.i = add i64 %123, %conv.i214.i
  %126 = ptrtoint ptr %settings.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %settings.i.i, align 4
  %sub.i217.i = add i32 %127, -1
  %conv1.i218.i = zext i32 %sub.i217.i to i64
  %neg.i219.i = xor i64 %conv1.i218.i, -1
  %and.i220.i = and i64 %add.i215.i, %neg.i219.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i220.i, i64 %and.i.i292)
  %cmp86.not.i = icmp eq i64 %and.i220.i, %and.i.i292
  br i1 %cmp86.not.i, label %if.end89.i, label %while.body78.i.while.end95.i_crit_edge

while.body78.i.while.end95.i_crit_edge:           ; preds = %while.body78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end95.i

if.end89.i:                                       ; preds = %while.body78.i
  call void @rb_erase(ptr noundef nonnull %tmp.0.i205.i, ptr noundef %bio_queue.i.i) #13
  call void @mempool_free(ptr noundef nonnull %tmp.0.i205.i, ptr noundef %rb_pool.i.i) #13
  %128 = ptrtoint ptr %bio_queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bio_queue_size.i.i, align 8
  %dec.i.i = add i32 %129, -1
  store i32 %dec.i.i, ptr %bio_queue_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i223.i = icmp slt i32 %dec.i.i, 0
  br i1 %cmp.i223.i, label %do.body3.i.i, label %pkt_rbtree_erase.exit.i, !prof !476

do.body3.i.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #13, !srcloc !493
  unreachable

pkt_rbtree_erase.exit.i:                          ; preds = %if.end89.i
  call void @_raw_spin_lock(ptr noundef %lock90.i) #13
  %130 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %121, align 8
  %131 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i224.i = icmp eq ptr %132, null
  br i1 %tobool.not.i224.i, label %if.else.i.i, label %if.then.i225.i

if.then.i225.i:                                   ; preds = %pkt_rbtree_erase.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %121, ptr %132, align 8
  br label %bio_list_add.exit.i

if.else.i.i:                                      ; preds = %pkt_rbtree_erase.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %orig_bios.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %121, ptr %orig_bios.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.else.i.i, %if.then.i225.i
  %135 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %121, ptr %tail.i.i, align 4
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %121, i32 0, i32 8, i32 1
  %136 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bi_size.i, align 8
  %div176.i = lshr i32 %137, 11
  %138 = ptrtoint ptr %write_size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %write_size.i, align 4
  %add93.i = add i32 %139, %div176.i
  store i32 %add93.i, ptr %write_size.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock90.i) #13
  %140 = ptrtoint ptr %bio_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bio_queue.i.i, align 4
  %tobool.not.i186.i = icmp eq ptr %141, null
  br i1 %tobool.not.i186.i, label %bio_list_add.exit.i.do.body.i189.i_crit_edge, label %bio_list_add.exit.i.for.cond.i200.i.backedge_crit_edge

bio_list_add.exit.i.for.cond.i200.i.backedge_crit_edge: ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i200.i.backedge

bio_list_add.exit.i.do.body.i189.i_crit_edge:     ; preds = %bio_list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i189.i

while.end95.i:                                    ; preds = %while.body78.i.while.end95.i_crit_edge, %if.then22.i204.i.while.end95.i_crit_edge, %do.body.i189.i.while.end95.i_crit_edge
  %142 = ptrtoint ptr %congested.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %congested.i, align 4, !range !494
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool96.not.i = icmp eq i8 %143, 0
  br i1 %tobool96.not.i, label %while.end95.i.if.end103.i_crit_edge, label %land.lhs.true.i

while.end95.i.if.end103.i_crit_edge:              ; preds = %while.end95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103.i

land.lhs.true.i:                                  ; preds = %while.end95.i
  %144 = ptrtoint ptr %bio_queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bio_queue_size.i.i, align 8
  %146 = ptrtoint ptr %write_congestion_off.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %write_congestion_off.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %147)
  %cmp98.not.i = icmp sgt i32 %145, %147
  br i1 %cmp98.not.i, label %land.lhs.true.i.if.end103.i_crit_edge, label %if.then100.i

land.lhs.true.i.if.end103.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103.i

if.then100.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %congested.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %congested.i, align 4
  call void @wake_up_var(ptr noundef %congested.i) #13
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then100.i, %land.lhs.true.i.if.end103.i_crit_edge, %while.end95.i.if.end103.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %sleep_time.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 9
  %149 = ptrtoint ptr %sleep_time.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1, ptr %sleep_time.i, align 4
  %state1.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 7
  %150 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %state1.i.i, align 4
  %run_sm.i = getelementptr inbounds %struct.packet_data, ptr %pkt.0.i.i, i32 0, i32 8
  %call.i.i178.i = call zeroext i1 @__kasan_check_write(ptr noundef %run_sm.i, i32 noundef 4) #13
  %151 = ptrtoint ptr %run_sm.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 1, ptr %run_sm.i, align 4
  call void @_raw_spin_lock(ptr noundef %active_list_lock.i) #13
  %152 = ptrtoint ptr %pkt_active_list to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pkt_active_list, align 4
  %call.i.i226.i = call zeroext i1 @__list_add_valid(ptr noundef %pkt.0.i.i, ptr noundef %pkt_active_list, ptr noundef %153) #13
  br i1 %call.i.i226.i, label %if.end.i.i.i, label %if.end103.i.pkt_handle_queue.exit_crit_edge

if.end103.i.pkt_handle_queue.exit_crit_edge:      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_handle_queue.exit

if.end.i.i.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %pkt.0.i.i, ptr %prev1.i.i.i, align 4
  %155 = ptrtoint ptr %pkt.0.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %153, ptr %pkt.0.i.i, align 4
  %156 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %pkt_active_list, ptr %prev.i3.i.i.i, align 4
  %157 = ptrtoint ptr %pkt_active_list to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %pkt.0.i.i, ptr %pkt_active_list, align 4
  br label %pkt_handle_queue.exit

pkt_handle_queue.exit.thread334:                  ; preds = %if.end37.i.pkt_handle_queue.exit.thread334_crit_edge, %if.end8.i.pkt_handle_queue.exit.thread334_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  br label %while.end

pkt_handle_queue.exit:                            ; preds = %if.end.i.i.i, %if.end103.i.pkt_handle_queue.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %active_list_lock.i) #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %scan_queue, i32 noundef 4) #13
  %158 = ptrtoint ptr %scan_queue to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile i32 0, ptr %scan_queue, align 4
  %159 = ptrtoint ptr %cdrw.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile ptr, ptr %cdrw.i, align 4
  %cmp.i.not.i = icmp eq ptr %160, %cdrw.i
  br i1 %cmp.i.not.i, label %pkt_handle_queue.exit.while.end_crit_edge, label %pkt_handle_queue.exit.if.end.i291_crit_edge

pkt_handle_queue.exit.if.end.i291_crit_edge:      ; preds = %pkt_handle_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i291

pkt_handle_queue.exit.while.end_crit_edge:        ; preds = %pkt_handle_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %pkt_handle_queue.exit.while.end_crit_edge, %pkt_handle_queue.exit.thread334, %while.end.i.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %161 = ptrtoint ptr %pkt_active_list to i32
  call void @__asan_load4_noabort(i32 %161)
  %pkt.075.i = load ptr, ptr %pkt_active_list, align 8
  %cmp.not76.i = icmp eq ptr %pkt.075.i, %pkt_active_list
  br i1 %cmp.not76.i, label %while.end.for.end.i_crit_edge, label %while.end.for.body.i297_crit_edge

while.end.for.body.i297_crit_edge:                ; preds = %while.end
  br label %for.body.i297

while.end.for.end.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i297:                                    ; preds = %for.inc.i.for.body.i297_crit_edge, %while.end.for.body.i297_crit_edge
  %pkt.077.i = phi ptr [ %pkt.0.i, %for.inc.i.for.body.i297_crit_edge ], [ %pkt.075.i, %while.end.for.body.i297_crit_edge ]
  %run_sm.i295 = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 8
  %call.i.i.i296 = call zeroext i1 @__kasan_check_read(ptr noundef %run_sm.i295, i32 noundef 4) #13
  %162 = ptrtoint ptr %run_sm.i295 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %run_sm.i295, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp4.i = icmp sgt i32 %163, 0
  br i1 %cmp4.i, label %if.then.i298, label %for.body.i297.for.inc.i_crit_edge

for.body.i297.for.inc.i_crit_edge:                ; preds = %for.body.i297
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i298:                                     ; preds = %for.body.i297
  %call.i.i62.i = call zeroext i1 @__kasan_check_write(ptr noundef %run_sm.i295, i32 noundef 4) #13
  %164 = ptrtoint ptr %run_sm.i295 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile i32 0, ptr %run_sm.i295, align 4
  %state.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 7
  %io_wait12.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 10
  %w_bio.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 4
  %io_errors.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 11
  %sector.i51.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 5
  %frames.i61.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 6
  %lock.i67.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 1
  %orig_bios.i68.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 2
  %write_size.i.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 3
  %cache_valid23.i.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 14
  %sleep_time.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 9
  br label %for.cond.i.i299

for.cond.i.i299:                                  ; preds = %for.cond.i.i299.backedge, %if.then.i298
  %165 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %state.i.i, align 4
  %167 = zext i32 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %166, label %do.body26.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb3.i.i
    i32 3, label %sw.bb11.i.i
    i32 4, label %do.end22.i.i
    i32 5, label %sw.bb23.i.i
  ]

sw.bb.i.i:                                        ; preds = %for.cond.i.i299
  %168 = ptrtoint ptr %write_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %write_size.i.i.i, align 4
  %170 = ptrtoint ptr %frames.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %frames.i61.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp.i.i = icmp slt i32 %169, %171
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.bb.i.i.if.end.i.i300_crit_edge

sw.bb.i.i.if.end.i.i300_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i300

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %172 = ptrtoint ptr %sleep_time.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sleep_time.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp1.i.i = icmp sgt i32 %173, 0
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i300_crit_edge

land.lhs.true.i.i.if.end.i.i300_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i300

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i.i300:                                    ; preds = %land.lhs.true.i.i.if.end.i.i300_crit_edge, %sw.bb.i.i.if.end.i.i300_crit_edge
  %174 = ptrtoint ptr %sleep_time.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %sleep_time.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %written.i.i.i) #13
  %175 = ptrtoint ptr %orig_bios.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %orig_bios.i68.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %176, null
  br i1 %cmp.i.not.i.i.i, label %do.body3.i.i.i, label %do.end8.i.i.i, !prof !476

do.body3.i.i.i:                                   ; preds = %if.end.i.i300
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 985, 0\0A.popsection", ""() #13, !srcloc !495
  unreachable

do.end8.i.i.i:                                    ; preds = %if.end.i.i300
  %call.i.i.i.i.i301 = call zeroext i1 @__kasan_check_write(ptr noundef %io_wait12.i.i, i32 noundef 4) #13
  %177 = ptrtoint ptr %io_wait12.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile i32 0, ptr %io_wait12.i.i, align 4
  %call.i.i159.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_errors.i.i, i32 noundef 4) #13
  %178 = ptrtoint ptr %io_errors.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 0, ptr %io_errors.i.i, align 4
  %179 = call ptr @memset(ptr %written.i.i.i, i32 0, i32 128)
  call void @_raw_spin_lock(ptr noundef %lock.i67.i.i) #13
  %180 = ptrtoint ptr %orig_bios.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %bio.0166.i.i.i = load ptr, ptr %orig_bios.i68.i.i, align 4
  %tobool10.not167.i.i.i = icmp eq ptr %bio.0166.i.i.i, null
  br i1 %tobool10.not167.i.i.i, label %do.end8.i.i.i.for.end57.i.i.i_crit_edge, label %do.end8.i.i.i.for.body.i.i.i_crit_edge

do.end8.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %do.end8.i.i.i
  br label %for.body.i.i.i

do.end8.i.i.i.for.end57.i.i.i_crit_edge:          ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57.i.i.i

for.cond.loopexit.i.i.i:                          ; preds = %for.body55.preheader.i.i.i, %for.cond51.preheader.i.i.i.for.cond.loopexit.i.i.i_crit_edge
  %181 = ptrtoint ptr %bio.0168.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %bio.0.i.i.i = load ptr, ptr %bio.0168.i.i.i, align 4
  %tobool10.not.i.i.i = icmp eq ptr %bio.0.i.i.i, null
  br i1 %tobool10.not.i.i.i, label %for.cond.loopexit.i.i.i.for.end57.i.i.i_crit_edge, label %for.cond.loopexit.i.i.i.for.body.i.i.i_crit_edge

for.cond.loopexit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.cond.loopexit.i.i.i.for.end57.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end57.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.loopexit.i.i.i.for.body.i.i.i_crit_edge, %do.end8.i.i.i.for.body.i.i.i_crit_edge
  %bio.0168.i.i.i = phi ptr [ %bio.0.i.i.i, %for.cond.loopexit.i.i.i.for.body.i.i.i_crit_edge ], [ %bio.0166.i.i.i, %do.end8.i.i.i.for.body.i.i.i_crit_edge ]
  %bi_iter.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.0168.i.i.i, i32 0, i32 8
  %182 = ptrtoint ptr %bi_iter.i.i.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %bi_iter.i.i.i, align 8
  %184 = ptrtoint ptr %sector.i51.i.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %sector.i51.i.i, align 8
  %sub.i.i.i = sub i64 %183, %185
  %div157.i.i.i = lshr i64 %sub.i.i.i, 2
  %conv.i.i.i = trunc i64 %div157.i.i.i to i32
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.0168.i.i.i, i32 0, i32 8, i32 1
  %186 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %bi_size.i.i.i, align 8
  %div12158.i.i.i = lshr i32 %187, 11
  %mul.i.i.i = shl nuw nsw i32 %div12158.i.i.i, 2
  %188 = ptrtoint ptr %secs_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %secs_w.i.i.i, align 8
  %add.i.i.i = add i32 %mul.i.i.i, %189
  store i32 %add.i.i.i, ptr %secs_w.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp slt i32 %conv.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body22.i.i.i, label %do.body31.i.i.i, !prof !476

do.body22.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1000, 0\0A.popsection", ""() #13, !srcloc !496
  unreachable

do.body31.i.i.i:                                  ; preds = %for.body.i.i.i
  %add32.i.i.i = add nuw i32 %div12158.i.i.i, %conv.i.i.i
  %190 = ptrtoint ptr %frames.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %frames.i61.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add32.i.i.i, i32 %191)
  %cmp33.i.i.i = icmp sgt i32 %add32.i.i.i, %191
  br i1 %cmp33.i.i.i, label %do.body42.i.i.i, label %for.cond51.preheader.i.i.i, !prof !476

for.cond51.preheader.i.i.i:                       ; preds = %do.body31.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add32.i.i.i, i32 %conv.i.i.i)
  %cmp53164.i.i.i = icmp sgt i32 %add32.i.i.i, %conv.i.i.i
  br i1 %cmp53164.i.i.i, label %for.body55.preheader.i.i.i, label %for.cond51.preheader.i.i.i.for.cond.loopexit.i.i.i_crit_edge

for.cond51.preheader.i.i.i.for.cond.loopexit.i.i.i_crit_edge: ; preds = %for.cond51.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit.i.i.i

for.body55.preheader.i.i.i:                       ; preds = %for.cond51.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %uglygep.i.i.i = getelementptr i8, ptr %written.i.i.i, i32 %conv.i.i.i
  %192 = call ptr @memset(ptr %uglygep.i.i.i, i32 1, i32 %div12158.i.i.i)
  br label %for.cond.loopexit.i.i.i

do.body42.i.i.i:                                  ; preds = %do.body31.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1001, 0\0A.popsection", ""() #13, !srcloc !497
  unreachable

for.end57.i.i.i:                                  ; preds = %for.cond.loopexit.i.i.i.for.end57.i.i.i_crit_edge, %do.end8.i.i.i.for.end57.i.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i67.i.i) #13
  %193 = ptrtoint ptr %cache_valid23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cache_valid23.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool59.not.i.i.i = icmp eq i32 %194, 0
  br i1 %tobool59.not.i.i.i, label %for.cond65.preheader.i.i.i, label %for.end57.i.i.i.pkt_gather_data.exit.i.i_crit_edge

for.end57.i.i.i.pkt_gather_data.exit.i.i_crit_edge: ; preds = %for.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_gather_data.exit.i.i

for.cond65.preheader.i.i.i:                       ; preds = %for.end57.i.i.i
  %195 = ptrtoint ptr %frames.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %frames.i61.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp67169.i.i.i = icmp sgt i32 %196, 0
  br i1 %cmp67169.i.i.i, label %for.cond65.preheader.i.i.i.for.body69.i.i.i_crit_edge, label %for.cond65.preheader.i.i.i.pkt_gather_data.exit.i.i_crit_edge

for.cond65.preheader.i.i.i.pkt_gather_data.exit.i.i_crit_edge: ; preds = %for.cond65.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_gather_data.exit.i.i

for.cond65.preheader.i.i.i.for.body69.i.i.i_crit_edge: ; preds = %for.cond65.preheader.i.i.i
  br label %for.body69.i.i.i

for.body69.i.i.i:                                 ; preds = %cleanup.i.i.i.for.body69.i.i.i_crit_edge, %for.cond65.preheader.i.i.i.for.body69.i.i.i_crit_edge
  %f.1171.i.i.i = phi i32 [ %inc102.i.i.i, %cleanup.i.i.i.for.body69.i.i.i_crit_edge ], [ 0, %for.cond65.preheader.i.i.i.for.body69.i.i.i_crit_edge ]
  %frames_read.0170.i.i.i = phi i32 [ %frames_read.1.i.i.i, %cleanup.i.i.i.for.body69.i.i.i_crit_edge ], [ 0, %for.cond65.preheader.i.i.i.for.body69.i.i.i_crit_edge ]
  %arrayidx70.i.i.i = getelementptr [128 x i8], ptr %written.i.i.i, i32 0, i32 %f.1171.i.i.i
  %197 = ptrtoint ptr %arrayidx70.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx70.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool71.not.i.i.i = icmp eq i8 %198, 0
  br i1 %tobool71.not.i.i.i, label %if.end73.i.i.i, label %for.body69.i.i.i.cleanup.i.i.i_crit_edge

for.body69.i.i.i.cleanup.i.i.i_crit_edge:         ; preds = %for.body69.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i.i

if.end73.i.i.i:                                   ; preds = %for.body69.i.i.i
  %arrayidx74.i.i.i = getelementptr %struct.packet_data, ptr %pkt.077.i, i32 0, i32 12, i32 %f.1171.i.i.i
  %199 = ptrtoint ptr %arrayidx74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx74.i.i.i, align 4
  call void @bio_reset(ptr noundef %200) #13
  %201 = ptrtoint ptr %sector.i51.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %sector.i51.i.i, align 8
  %mul76.i.i.i = shl i32 %f.1171.i.i.i, 2
  %conv77.i.i.i = sext i32 %mul76.i.i.i to i64
  %add78.i.i.i = add i64 %202, %conv77.i.i.i
  %bi_iter79.i.i.i = getelementptr inbounds %struct.bio, ptr %200, i32 0, i32 8
  %203 = ptrtoint ptr %bi_iter79.i.i.i to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %add78.i.i.i, ptr %bi_iter79.i.i.i, align 8
  %204 = ptrtoint ptr %foobar to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %foobar, align 8
  %bi_flags.i.i.i.i.i = getelementptr inbounds %struct.bio, ptr %200, i32 0, i32 3
  %206 = ptrtoint ptr %bi_flags.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %bi_flags.i.i.i.i.i, align 4
  %conv1.i.i.i.i.i = and i16 %207, -2049
  store i16 %conv1.i.i.i.i.i, ptr %bi_flags.i.i.i.i.i, align 4
  %bi_bdev.i.i.i.i = getelementptr inbounds %struct.bio, ptr %200, i32 0, i32 1
  %208 = ptrtoint ptr %bi_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bi_bdev.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %209, %205
  br i1 %cmp.not.i.i.i.i, label %if.end73.i.i.i.bio_set_dev.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end73.i.i.i.bio_set_dev.exit.i.i.i_crit_edge:  ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_set_dev.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i8.i.i.i.i = and i16 %207, -2177
  %210 = ptrtoint ptr %bi_flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv1.i8.i.i.i.i, ptr %bi_flags.i.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i.i

bio_set_dev.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %if.end73.i.i.i.bio_set_dev.exit.i.i.i_crit_edge
  %211 = ptrtoint ptr %bi_bdev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %205, ptr %bi_bdev.i.i.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %200) #13
  %bi_end_io.i.i.i = getelementptr inbounds %struct.bio, ptr %200, i32 0, i32 10
  %212 = ptrtoint ptr %bi_end_io.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @pkt_end_io_read, ptr %bi_end_io.i.i.i, align 8
  %bi_private.i.i.i = getelementptr inbounds %struct.bio, ptr %200, i32 0, i32 11
  %213 = ptrtoint ptr %bi_private.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %pkt.077.i, ptr %bi_private.i.i.i, align 4
  %mul81.i.i.i = shl i32 %f.1171.i.i.i, 11
  %div82156.i.i.i = lshr i32 %mul81.i.i.i, 12
  %rem.i.i.i = and i32 %mul81.i.i.i, 2048
  %arrayidx87.i.i.i = getelementptr %struct.packet_data, ptr %pkt.077.i, i32 0, i32 13, i32 %div82156.i.i.i
  %214 = ptrtoint ptr %arrayidx87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx87.i.i.i, align 4
  %call88.i.i.i = call i32 @bio_add_page(ptr noundef %200, ptr noundef %215, i32 noundef 2048, i32 noundef %rem.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i.i.i)
  %tobool89.not.i.i.i = icmp eq i32 %call88.i.i.i, 0
  br i1 %tobool89.not.i.i.i, label %do.body91.i.i.i, label %if.end97.i.i.i

do.body91.i.i.i:                                  ; preds = %bio_set_dev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1034, 0\0A.popsection", ""() #13, !srcloc !498
  unreachable

if.end97.i.i.i:                                   ; preds = %bio_set_dev.exit.i.i.i
  %call.i.i160.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_wait12.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %io_wait12.i.i, i32 1, i32 3, i32 1) #13
  %216 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_wait12.i.i, ptr %io_wait12.i.i, i32 1, ptr elementtype(i32) %io_wait12.i.i) #13, !srcloc !475
  %bi_opf.i.i.i.i = getelementptr inbounds %struct.bio, ptr %200, i32 0, i32 2
  %217 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %bi_opf.i.i.i.i, align 8
  call void @_raw_spin_lock(ptr noundef %lock.i.i72.i.i) #13
  %218 = ptrtoint ptr %bi_opf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %bi_opf.i.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %220 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %200, align 8
  br i1 %tobool.i.not.i.i.i.i, label %if.then.i162.i.i.i, label %if.else.i.i.i.i

if.then.i162.i.i.i:                               ; preds = %if.end97.i.i.i
  %221 = ptrtoint ptr %tail.i.i.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %tail.i.i.i75.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %222, null
  br i1 %tobool.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i162.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %200, ptr %222, align 8
  br label %pkt_queue_bio.exit.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i162.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %224 = ptrtoint ptr %read_queue.i.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %200, ptr %read_queue.i.i78.i.i, align 4
  br label %pkt_queue_bio.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end97.i.i.i
  %225 = ptrtoint ptr %tail.i13.i.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %tail.i13.i.i80.i.i, align 4
  %tobool.not.i14.i.i.i.i = icmp eq ptr %226, null
  br i1 %tobool.not.i14.i.i.i.i, label %if.else.i16.i.i.i.i, label %if.then.i15.i.i.i.i

if.then.i15.i.i.i.i:                              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %200, ptr %226, align 8
  br label %pkt_queue_bio.exit.i.i.i

if.else.i16.i.i.i.i:                              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %228 = ptrtoint ptr %write_queue.i.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %200, ptr %write_queue.i.i84.i.i, align 4
  br label %pkt_queue_bio.exit.i.i.i

pkt_queue_bio.exit.i.i.i:                         ; preds = %if.else.i16.i.i.i.i, %if.then.i15.i.i.i.i, %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %tail.i13.sink.i.i.i.i = phi ptr [ %tail.i.i.i75.i.i, %if.then.i.i.i.i.i ], [ %tail.i.i.i75.i.i, %if.else.i.i.i.i.i ], [ %tail.i13.i.i80.i.i, %if.then.i15.i.i.i.i ], [ %tail.i13.i.i80.i.i, %if.else.i16.i.i.i.i ]
  %229 = ptrtoint ptr %tail.i13.sink.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %200, ptr %tail.i13.sink.i.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i72.i.i) #13
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %iosched, i32 noundef 4) #13
  %230 = ptrtoint ptr %iosched to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile i32 1, ptr %iosched, align 4
  call void @__wake_up(ptr noundef %wqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %inc99.i.i.i = add i32 %frames_read.0170.i.i.i, 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %pkt_queue_bio.exit.i.i.i, %for.body69.i.i.i.cleanup.i.i.i_crit_edge
  %frames_read.1.i.i.i = phi i32 [ %inc99.i.i.i, %pkt_queue_bio.exit.i.i.i ], [ %frames_read.0170.i.i.i, %for.body69.i.i.i.cleanup.i.i.i_crit_edge ]
  %inc102.i.i.i = add nuw nsw i32 %f.1171.i.i.i, 1
  %231 = ptrtoint ptr %frames.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %frames.i61.i.i, align 8
  %cmp67.i.i.i = icmp slt i32 %inc102.i.i.i, %232
  br i1 %cmp67.i.i.i, label %cleanup.i.i.i.for.body69.i.i.i_crit_edge, label %cleanup.i.i.i.pkt_gather_data.exit.i.i_crit_edge

cleanup.i.i.i.pkt_gather_data.exit.i.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_gather_data.exit.i.i

cleanup.i.i.i.for.body69.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body69.i.i.i

pkt_gather_data.exit.i.i:                         ; preds = %cleanup.i.i.i.pkt_gather_data.exit.i.i_crit_edge, %for.cond65.preheader.i.i.i.pkt_gather_data.exit.i.i_crit_edge, %for.end57.i.i.i.pkt_gather_data.exit.i.i_crit_edge
  %frames_read.2.i.i.i = phi i32 [ 0, %for.end57.i.i.i.pkt_gather_data.exit.i.i_crit_edge ], [ 0, %for.cond65.preheader.i.i.i.pkt_gather_data.exit.i.i_crit_edge ], [ %frames_read.1.i.i.i, %cleanup.i.i.i.pkt_gather_data.exit.i.i_crit_edge ]
  %233 = ptrtoint ptr %stats107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %stats107.i.i.i, align 8
  %inc108.i.i.i = add i32 %234, 1
  store i32 %inc108.i.i.i, ptr %stats107.i.i.i, align 8
  %mul109.i.i.i = shl i32 %frames_read.2.i.i.i, 2
  %235 = ptrtoint ptr %secs_rg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %secs_rg.i.i.i, align 4
  %add111.i.i.i = add i32 %236, %mul109.i.i.i
  store i32 %add111.i.i.i, ptr %secs_rg.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %written.i.i.i) #13
  %237 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 2, ptr %state.i.i, align 4
  br label %for.cond.i.i299.backedge

sw.bb3.i.i:                                       ; preds = %for.cond.i.i299
  %call.i.i.i.i302 = call zeroext i1 @__kasan_check_read(ptr noundef %io_wait12.i.i, i32 noundef 4) #13
  %238 = ptrtoint ptr %io_wait12.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %io_wait12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp4.i.i = icmp sgt i32 %239, 0
  br i1 %cmp4.i.i, label %sw.bb3.i.i.for.inc.i_crit_edge, label %if.end6.i.i

sw.bb3.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end6.i.i:                                      ; preds = %sw.bb3.i.i
  %call.i.i48.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %io_errors.i.i, i32 noundef 4) #13
  %240 = ptrtoint ptr %io_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %io_errors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp8.i.i = icmp sgt i32 %241, 0
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else.i.i303

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %242 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 4, ptr %state.i.i, align 4
  br label %for.cond.i.i299.backedge

if.else.i.i303:                                   ; preds = %if.end6.i.i
  %243 = ptrtoint ptr %w_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %w_bio.i.i, align 8
  call void @bio_reset(ptr noundef %244) #13
  %245 = ptrtoint ptr %sector.i51.i.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %sector.i51.i.i, align 8
  %247 = ptrtoint ptr %w_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %w_bio.i.i, align 8
  %bi_iter.i52.i.i = getelementptr inbounds %struct.bio, ptr %248, i32 0, i32 8
  %249 = ptrtoint ptr %bi_iter.i52.i.i to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 %246, ptr %bi_iter.i52.i.i, align 8
  %250 = load ptr, ptr %w_bio.i.i, align 8
  %251 = ptrtoint ptr %foobar to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %foobar, align 8
  %bi_flags.i.i.i53.i.i = getelementptr inbounds %struct.bio, ptr %250, i32 0, i32 3
  %253 = ptrtoint ptr %bi_flags.i.i.i53.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %bi_flags.i.i.i53.i.i, align 4
  %conv1.i.i.i54.i.i = and i16 %254, -2049
  store i16 %conv1.i.i.i54.i.i, ptr %bi_flags.i.i.i53.i.i, align 4
  %bi_bdev.i.i55.i.i = getelementptr inbounds %struct.bio, ptr %250, i32 0, i32 1
  %255 = ptrtoint ptr %bi_bdev.i.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %bi_bdev.i.i55.i.i, align 4
  %cmp.not.i.i56.i.i = icmp eq ptr %256, %252
  br i1 %cmp.not.i.i56.i.i, label %if.else.i.i303.bio_set_dev.exit.i62.i.i_crit_edge, label %if.then.i.i58.i.i

if.else.i.i303.bio_set_dev.exit.i62.i.i_crit_edge: ; preds = %if.else.i.i303
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_set_dev.exit.i62.i.i

if.then.i.i58.i.i:                                ; preds = %if.else.i.i303
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i8.i.i57.i.i = and i16 %254, -2177
  %257 = ptrtoint ptr %bi_flags.i.i.i53.i.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv1.i8.i.i57.i.i, ptr %bi_flags.i.i.i53.i.i, align 4
  br label %bio_set_dev.exit.i62.i.i

bio_set_dev.exit.i62.i.i:                         ; preds = %if.then.i.i58.i.i, %if.else.i.i303.bio_set_dev.exit.i62.i.i_crit_edge
  %258 = ptrtoint ptr %bi_bdev.i.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %252, ptr %bi_bdev.i.i55.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %250) #13
  %259 = ptrtoint ptr %w_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %w_bio.i.i, align 8
  %bi_end_io.i59.i.i = getelementptr inbounds %struct.bio, ptr %260, i32 0, i32 10
  %261 = ptrtoint ptr %bi_end_io.i59.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr @pkt_end_io_packet_write, ptr %bi_end_io.i59.i.i, align 8
  %262 = load ptr, ptr %w_bio.i.i, align 8
  %bi_private.i60.i.i = getelementptr inbounds %struct.bio, ptr %262, i32 0, i32 11
  %263 = ptrtoint ptr %bi_private.i60.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %pkt.077.i, ptr %bi_private.i60.i.i, align 4
  %264 = ptrtoint ptr %frames.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %frames.i61.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp59.i.i.i = icmp sgt i32 %265, 0
  br i1 %cmp59.i.i.i, label %bio_set_dev.exit.i62.i.i.for.body.i66.i.i_crit_edge, label %bio_set_dev.exit.i62.i.i.do.end12.i.i.i_crit_edge

bio_set_dev.exit.i62.i.i.do.end12.i.i.i_crit_edge: ; preds = %bio_set_dev.exit.i62.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

bio_set_dev.exit.i62.i.i.for.body.i66.i.i_crit_edge: ; preds = %bio_set_dev.exit.i62.i.i
  br label %for.body.i66.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i66.i.i
  %inc.i.i.i = add nuw nsw i32 %f.060.i.i.i, 1
  %266 = ptrtoint ptr %frames.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %frames.i61.i.i, align 8
  %cmp.i63.i.i = icmp slt i32 %inc.i.i.i, %267
  br i1 %cmp.i63.i.i, label %for.cond.i.i.i.for.body.i66.i.i_crit_edge, label %for.cond.i.i.i.do.end12.i.i.i_crit_edge

for.cond.i.i.i.do.end12.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

for.cond.i.i.i.for.body.i66.i.i_crit_edge:        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i66.i.i

for.body.i66.i.i:                                 ; preds = %for.cond.i.i.i.for.body.i66.i.i_crit_edge, %bio_set_dev.exit.i62.i.i.for.body.i66.i.i_crit_edge
  %f.060.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i66.i.i_crit_edge ], [ 0, %bio_set_dev.exit.i62.i.i.for.body.i66.i.i_crit_edge ]
  %mul.i64.i.i = shl i32 %f.060.i.i.i, 11
  %div53.i.i.i = lshr i32 %mul.i64.i.i, 12
  %arrayidx.i.i.i = getelementptr %struct.packet_data, ptr %pkt.077.i, i32 0, i32 13, i32 %div53.i.i.i
  %268 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx.i.i.i, align 4
  %rem.i65.i.i = and i32 %mul.i64.i.i, 2048
  %270 = ptrtoint ptr %w_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %w_bio.i.i, align 8
  %call.i.i64.i = call i32 @bio_add_page(ptr noundef %271, ptr noundef %269, i32 noundef 2048, i32 noundef %rem.i65.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64.i)
  %tobool.not.i.i.i304 = icmp eq i32 %call.i.i64.i, 0
  br i1 %tobool.not.i.i.i304, label %do.body.i.i.i, label %for.cond.i.i.i

do.body.i.i.i:                                    ; preds = %for.body.i66.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1250, 0\0A.popsection", ""() #13, !srcloc !499
  unreachable

do.end12.i.i.i:                                   ; preds = %for.cond.i.i.i.do.end12.i.i.i_crit_edge, %bio_set_dev.exit.i62.i.i.do.end12.i.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock.i67.i.i) #13
  %272 = ptrtoint ptr %w_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %w_bio.i.i, align 8
  %274 = ptrtoint ptr %orig_bios.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %orig_bios.i68.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_iter.i.i.i.i) #13
  %bi_iter.i.i.i.i = getelementptr inbounds %struct.bio, ptr %275, i32 0, i32 8
  %276 = call ptr @memcpy(ptr %src_iter.i.i.i.i, ptr %bi_iter.i.i.i.i, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_iter.i.i.i.i) #13
  %bi_iter1.i.i.i.i = getelementptr inbounds %struct.bio, ptr %273, i32 0, i32 8
  %277 = call ptr @memcpy(ptr %dst_iter.i.i.i.i, ptr %bi_iter1.i.i.i.i, i32 20)
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %if.end14.i.i.i.i, %do.end12.i.i.i
  %dst.addr.0.i.i.i.i = phi ptr [ %273, %do.end12.i.i.i ], [ %dst.addr.1.i.i.i.i, %if.end14.i.i.i.i ]
  %src.addr.0.i.i.i.i = phi ptr [ %275, %do.end12.i.i.i ], [ %src.addr.1.i.i.i.i, %if.end14.i.i.i.i ]
  %278 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool.not.i.i.i.i = icmp eq i32 %279, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i54.i.i.i, label %while.cond.i.i.i.i.if.end5.i.i.i.i_crit_edge

while.cond.i.i.i.i.if.end5.i.i.i.i_crit_edge:     ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i.i.i.i

if.then.i54.i.i.i:                                ; preds = %while.cond.i.i.i.i
  %280 = ptrtoint ptr %src.addr.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %src.addr.0.i.i.i.i, align 8
  %tobool2.not.i.i.i.i = icmp eq ptr %281, null
  br i1 %tobool2.not.i.i.i.i, label %if.then.i54.i.i.i.bio_list_copy_data.exit.i.i.i_crit_edge, label %if.end.i.i.i.i305

if.then.i54.i.i.i.bio_list_copy_data.exit.i.i.i_crit_edge: ; preds = %if.then.i54.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_list_copy_data.exit.i.i.i

if.end.i.i.i.i305:                                ; preds = %if.then.i54.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bi_iter4.i.i.i.i = getelementptr inbounds %struct.bio, ptr %281, i32 0, i32 8
  %282 = call ptr @memcpy(ptr %src_iter.i.i.i.i, ptr %bi_iter4.i.i.i.i, i32 20)
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i305, %while.cond.i.i.i.i.if.end5.i.i.i.i_crit_edge
  %src.addr.1.i.i.i.i = phi ptr [ %src.addr.0.i.i.i.i, %while.cond.i.i.i.i.if.end5.i.i.i.i_crit_edge ], [ %281, %if.end.i.i.i.i305 ]
  %283 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool7.not.i.i.i.i = icmp eq i32 %284, 0
  br i1 %tobool7.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.end5.i.i.i.i.if.end14.i.i.i.i_crit_edge

if.end5.i.i.i.i.if.end14.i.i.i.i_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end5.i.i.i.i
  %285 = ptrtoint ptr %dst.addr.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dst.addr.0.i.i.i.i, align 8
  %tobool10.not.i.i.i.i = icmp eq ptr %286, null
  br i1 %tobool10.not.i.i.i.i, label %if.then8.i.i.i.i.bio_list_copy_data.exit.i.i.i_crit_edge, label %if.end12.i.i.i.i

if.then8.i.i.i.i.bio_list_copy_data.exit.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bio_list_copy_data.exit.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bi_iter13.i.i.i.i = getelementptr inbounds %struct.bio, ptr %286, i32 0, i32 8
  %287 = call ptr @memcpy(ptr %dst_iter.i.i.i.i, ptr %bi_iter13.i.i.i.i, i32 20)
  br label %if.end14.i.i.i.i

if.end14.i.i.i.i:                                 ; preds = %if.end12.i.i.i.i, %if.end5.i.i.i.i.if.end14.i.i.i.i_crit_edge
  %dst.addr.1.i.i.i.i = phi ptr [ %dst.addr.0.i.i.i.i, %if.end5.i.i.i.i.if.end14.i.i.i.i_crit_edge ], [ %286, %if.end12.i.i.i.i ]
  call void @bio_copy_data_iter(ptr noundef %dst.addr.1.i.i.i.i, ptr noundef nonnull %dst_iter.i.i.i.i, ptr noundef %src.addr.1.i.i.i.i, ptr noundef nonnull %src_iter.i.i.i.i) #13
  br label %while.cond.i.i.i.i

bio_list_copy_data.exit.i.i.i:                    ; preds = %if.then8.i.i.i.i.bio_list_copy_data.exit.i.i.i_crit_edge, %if.then.i54.i.i.i.bio_list_copy_data.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_iter.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_iter.i.i.i.i) #13
  %288 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 3, ptr %state.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i67.i.i) #13
  %289 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load volatile i32, ptr %flags.i.i.i, align 4
  %291 = and i32 %290, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool19.not.i.i.i = icmp eq i32 %291, 0
  br i1 %tobool19.not.i.i.i, label %lor.lhs.false.i.i.i, label %bio_list_copy_data.exit.i.i.i.if.end24.i.i.i_crit_edge

bio_list_copy_data.exit.i.i.i.if.end24.i.i.i_crit_edge: ; preds = %bio_list_copy_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %bio_list_copy_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %292 = ptrtoint ptr %write_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %write_size.i.i.i, align 4
  %294 = ptrtoint ptr %frames.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %frames.i61.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %293, i32 %295)
  %cmp21.i.i.i = icmp slt i32 %293, %295
  %spec.select.i.i.i = zext i1 %cmp21.i.i.i to i32
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i, %bio_list_copy_data.exit.i.i.i.if.end24.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 1, %bio_list_copy_data.exit.i.i.i.if.end24.i.i.i_crit_edge ], [ %spec.select.i.i.i, %lor.lhs.false.i.i.i ]
  %296 = ptrtoint ptr %cache_valid23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %.sink.i.i.i, ptr %cache_valid23.i.i.i, align 8
  %call.i.i.i70.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_wait12.i.i, i32 noundef 4) #13
  %297 = ptrtoint ptr %io_wait12.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile i32 1, ptr %io_wait12.i.i, align 4
  %298 = ptrtoint ptr %w_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %w_bio.i.i, align 8
  %bi_opf.i.i71.i.i = getelementptr inbounds %struct.bio, ptr %299, i32 0, i32 2
  %300 = ptrtoint ptr %bi_opf.i.i71.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 1, ptr %bi_opf.i.i71.i.i, align 8
  %301 = load ptr, ptr %w_bio.i.i, align 8
  call void @_raw_spin_lock(ptr noundef %lock.i.i72.i.i) #13
  %bi_opf.i55.i.i.i = getelementptr inbounds %struct.bio, ptr %301, i32 0, i32 2
  %302 = ptrtoint ptr %bi_opf.i55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %bi_opf.i55.i.i.i, align 8
  %and.i.i.i73.i.i = and i32 %303, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i73.i.i)
  %tobool.i.not.i.i74.i.i = icmp eq i32 %and.i.i.i73.i.i, 0
  %304 = ptrtoint ptr %301 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr null, ptr %301, align 8
  br i1 %tobool.i.not.i.i74.i.i, label %if.then.i56.i.i.i, label %if.else.i.i82.i.i

if.then.i56.i.i.i:                                ; preds = %if.end24.i.i.i
  %305 = ptrtoint ptr %tail.i.i.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %tail.i.i.i75.i.i, align 4
  %tobool.not.i.i.i76.i.i = icmp eq ptr %306, null
  br i1 %tobool.not.i.i.i76.i.i, label %if.else.i.i.i79.i.i, label %if.then.i.i.i77.i.i

if.then.i.i.i77.i.i:                              ; preds = %if.then.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %301, ptr %306, align 8
  br label %pkt_start_write.exit.i.i

if.else.i.i.i79.i.i:                              ; preds = %if.then.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %308 = ptrtoint ptr %read_queue.i.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %301, ptr %read_queue.i.i78.i.i, align 4
  br label %pkt_start_write.exit.i.i

if.else.i.i82.i.i:                                ; preds = %if.end24.i.i.i
  %309 = ptrtoint ptr %tail.i13.i.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %tail.i13.i.i80.i.i, align 4
  %tobool.not.i14.i.i81.i.i = icmp eq ptr %310, null
  br i1 %tobool.not.i14.i.i81.i.i, label %if.else.i16.i.i85.i.i, label %if.then.i15.i.i83.i.i

if.then.i15.i.i83.i.i:                            ; preds = %if.else.i.i82.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %301, ptr %310, align 8
  br label %pkt_start_write.exit.i.i

if.else.i16.i.i85.i.i:                            ; preds = %if.else.i.i82.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %312 = ptrtoint ptr %write_queue.i.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %301, ptr %write_queue.i.i84.i.i, align 4
  br label %pkt_start_write.exit.i.i

pkt_start_write.exit.i.i:                         ; preds = %if.else.i16.i.i85.i.i, %if.then.i15.i.i83.i.i, %if.else.i.i.i79.i.i, %if.then.i.i.i77.i.i
  %tail.i13.sink.i.i86.i.i = phi ptr [ %tail.i.i.i75.i.i, %if.then.i.i.i77.i.i ], [ %tail.i.i.i75.i.i, %if.else.i.i.i79.i.i ], [ %tail.i13.i.i80.i.i, %if.then.i15.i.i83.i.i ], [ %tail.i13.i.i80.i.i, %if.else.i16.i.i85.i.i ]
  %313 = ptrtoint ptr %tail.i13.sink.i.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %301, ptr %tail.i13.sink.i.i86.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i72.i.i) #13
  %call.i.i.i.i88.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %iosched, i32 noundef 4) #13
  %314 = ptrtoint ptr %iosched to i32
  call void @__asan_store4_noabort(i32 %314)
  store volatile i32 1, ptr %iosched, align 4
  call void @__wake_up(ptr noundef %wqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %for.cond.i.i299.backedge

sw.bb11.i.i:                                      ; preds = %for.cond.i.i299
  %call.i.i49.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %io_wait12.i.i, i32 noundef 4) #13
  %315 = ptrtoint ptr %io_wait12.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %io_wait12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %cmp14.i.i = icmp sgt i32 %316, 0
  br i1 %cmp14.i.i, label %sw.bb11.i.i.for.inc.i_crit_edge, label %if.end16.i.i

sw.bb11.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end16.i.i:                                     ; preds = %sw.bb11.i.i
  %317 = ptrtoint ptr %w_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %w_bio.i.i, align 8
  %bi_status.i.i = getelementptr inbounds %struct.bio, ptr %318, i32 0, i32 6
  %319 = ptrtoint ptr %bi_status.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %bi_status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool.not.i.i306 = icmp eq i8 %320, 0
  br i1 %tobool.not.i.i306, label %if.then17.i.i, label %if.else18.i.i

if.then17.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %321 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 5, ptr %state.i.i, align 4
  br label %for.cond.i.i299.backedge

if.else18.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %322 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 4, ptr %state.i.i, align 4
  br label %for.cond.i.i299.backedge

do.end22.i.i:                                     ; preds = %for.cond.i.i299
  call void @__sanitizer_cov_trace_pc() #15
  %323 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 5, ptr %state.i.i, align 4
  br label %for.cond.i.i299.backedge

for.cond.i.i299.backedge:                         ; preds = %do.end22.i.i, %if.else18.i.i, %if.then17.i.i, %pkt_start_write.exit.i.i, %if.then9.i.i, %pkt_gather_data.exit.i.i
  br label %for.cond.i.i299

sw.bb23.i.i:                                      ; preds = %for.cond.i.i299
  %324 = ptrtoint ptr %w_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %w_bio.i.i, align 8
  %bi_status25.i.i = getelementptr inbounds %struct.bio, ptr %325, i32 0, i32 6
  %326 = ptrtoint ptr %bi_status25.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %bi_status25.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool.not.i94.i.i = icmp eq i8 %327, 0
  br i1 %tobool.not.i94.i.i, label %sw.bb23.i.i.if.end.i.i.i307_crit_edge, label %if.then.i.i.i

sw.bb23.i.i.if.end.i.i.i307_crit_edge:            ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i307

if.then.i.i.i:                                    ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %328 = ptrtoint ptr %cache_valid23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %cache_valid23.i.i.i, align 8
  br label %if.end.i.i.i307

if.end.i.i.i307:                                  ; preds = %if.then.i.i.i, %sw.bb23.i.i.if.end.i.i.i307_crit_edge
  %329 = ptrtoint ptr %orig_bios.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %orig_bios.i68.i.i, align 4
  %tobool.not.i5.i.i.i = icmp eq ptr %330, null
  br i1 %tobool.not.i5.i.i.i, label %if.end.i.i.i307.for.inc.i_crit_edge, label %if.then.i.lr.ph.i.i.i

if.end.i.i.i307.for.inc.i_crit_edge:              ; preds = %if.end.i.i.i307
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i.lr.ph.i.i.i:                            ; preds = %if.end.i.i.i307
  %tail.i.i.i.i = getelementptr inbounds %struct.packet_data, ptr %pkt.077.i, i32 0, i32 2, i32 1
  br label %if.then.i.i97.i.i

if.then.i.i97.i.i:                                ; preds = %while.body.i.i.i.if.then.i.i97.i.i_crit_edge, %if.then.i.lr.ph.i.i.i
  %331 = phi ptr [ %330, %if.then.i.lr.ph.i.i.i ], [ %339, %while.body.i.i.i.if.then.i.i97.i.i_crit_edge ]
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %331, align 8
  %334 = ptrtoint ptr %orig_bios.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %333, ptr %orig_bios.i68.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %333, null
  br i1 %tobool4.not.i.i.i.i, label %if.then5.i.i.i.i, label %if.then.i.i97.i.i.while.body.i.i.i_crit_edge

if.then.i.i97.i.i.while.body.i.i.i_crit_edge:     ; preds = %if.then.i.i97.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.then.i.i97.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %335 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr null, ptr %tail.i.i.i.i, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.then5.i.i.i.i, %if.then.i.i97.i.i.while.body.i.i.i_crit_edge
  %336 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr null, ptr %331, align 8
  %bi_status.i.i.i = getelementptr inbounds %struct.bio, ptr %331, i32 0, i32 6
  %337 = ptrtoint ptr %bi_status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %327, ptr %bi_status.i.i.i, align 2
  call void @bio_endio(ptr noundef nonnull %331) #13
  %338 = ptrtoint ptr %orig_bios.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %orig_bios.i68.i.i, align 4
  %tobool.not.i.i98.i.i = icmp eq ptr %339, null
  br i1 %tobool.not.i.i98.i.i, label %while.body.i.i.i.for.inc.i_crit_edge, label %while.body.i.i.i.if.then.i.i97.i.i_crit_edge

while.body.i.i.i.if.then.i.i97.i.i_crit_edge:     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i97.i.i

while.body.i.i.i.for.inc.i_crit_edge:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body26.i.i:                                    ; preds = %for.cond.i.i299
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #13, !srcloc !500
  unreachable

for.inc.i:                                        ; preds = %while.body.i.i.i.for.inc.i_crit_edge, %if.end.i.i.i307.for.inc.i_crit_edge, %sw.bb11.i.i.for.inc.i_crit_edge, %sw.bb3.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i297.for.inc.i_crit_edge
  %340 = ptrtoint ptr %pkt.077.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %pkt.0.i = load ptr, ptr %pkt.077.i, align 8
  %cmp.not.i308 = icmp eq ptr %pkt.0.i, %pkt_active_list
  br i1 %cmp.not.i308, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i297_crit_edge

for.inc.i.for.body.i297_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i297

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.end.for.end.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %active_list_lock.i) #13
  %341 = ptrtoint ptr %pkt_active_list to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %pkt_active_list, align 8
  %cmp27.not79.i = icmp eq ptr %342, %pkt_active_list
  br i1 %cmp27.not79.i, label %for.end.i.pkt_handle_packets.exit_crit_edge, label %for.end.i.for.body29.i_crit_edge

for.end.i.for.body29.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body29.i

for.end.i.pkt_handle_packets.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_handle_packets.exit

for.body29.i:                                     ; preds = %for.inc34.i.for.body29.i_crit_edge, %for.end.i.for.body29.i_crit_edge
  %pkt.180.i = phi ptr [ %next.082.i, %for.inc34.i.for.body29.i_crit_edge ], [ %342, %for.end.i.for.body29.i_crit_edge ]
  %343 = ptrtoint ptr %pkt.180.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %next.082.i = load ptr, ptr %pkt.180.i, align 8
  %state.i = getelementptr inbounds %struct.packet_data, ptr %pkt.180.i, i32 0, i32 7
  %344 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %345)
  %cmp30.i = icmp eq i32 %345, 5
  br i1 %cmp30.i, label %if.then31.i, label %for.body29.i.for.inc34.i_crit_edge

for.body29.i.for.inc34.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc34.i

if.then31.i:                                      ; preds = %for.body29.i
  %call.i.i65.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pkt.180.i) #13
  br i1 %call.i.i65.i, label %if.end.i.i66.i, label %if.then31.i.list_del.exit.i_crit_edge

if.then31.i.list_del.exit.i_crit_edge:            ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i66.i:                                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pkt.180.i, i32 0, i32 1
  %346 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %prev.i.i.i, align 4
  %348 = ptrtoint ptr %pkt.180.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %pkt.180.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %347, ptr %prev1.i.i.i.i, align 4
  %351 = ptrtoint ptr %347 to i32
  call void @__asan_store4_noabort(i32 %351)
  store volatile ptr %349, ptr %347, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i66.i, %if.then31.i.list_del.exit.i_crit_edge
  %352 = ptrtoint ptr %pkt.180.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr inttoptr (i32 256 to ptr), ptr %pkt.180.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pkt.180.i, i32 0, i32 1
  %353 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cache_valid.i.i311 = getelementptr inbounds %struct.packet_data, ptr %pkt.180.i, i32 0, i32 14
  %354 = ptrtoint ptr %cache_valid.i.i311 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %cache_valid.i.i311, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool.not.i67.i = icmp eq i32 %355, 0
  br i1 %tobool.not.i67.i, label %if.else.i72.i, label %if.then.i.i312

if.then.i.i312:                                   ; preds = %list_del.exit.i
  %356 = ptrtoint ptr %cdrw.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %cdrw.i, align 4
  %call.i.i.i68.i = call zeroext i1 @__list_add_valid(ptr noundef %pkt.180.i, ptr noundef %cdrw.i, ptr noundef %357) #13
  br i1 %call.i.i.i68.i, label %if.end.i.i.i70.i, label %if.then.i.i312.pkt_put_packet_data.exit.i_crit_edge

if.then.i.i312.pkt_put_packet_data.exit.i_crit_edge: ; preds = %if.then.i.i312
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_put_packet_data.exit.i

if.end.i.i.i70.i:                                 ; preds = %if.then.i.i312
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i69.i = getelementptr inbounds %struct.list_head, ptr %357, i32 0, i32 1
  br label %if.end.sink.split.i.i

if.else.i72.i:                                    ; preds = %list_del.exit.i
  %358 = ptrtoint ptr %prev.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %prev.i.i71.i, align 4
  %call.i.i7.i.i = call zeroext i1 @__list_add_valid(ptr noundef %pkt.180.i, ptr noundef %359, ptr noundef %cdrw.i) #13
  br i1 %call.i.i7.i.i, label %if.else.i72.i.if.end.sink.split.i.i_crit_edge, label %if.else.i72.i.pkt_put_packet_data.exit.i_crit_edge

if.else.i72.i.pkt_put_packet_data.exit.i_crit_edge: ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_put_packet_data.exit.i

if.else.i72.i.if.end.sink.split.i.i_crit_edge:    ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.sink.split.i.i

if.end.sink.split.i.i:                            ; preds = %if.else.i72.i.if.end.sink.split.i.i_crit_edge, %if.end.i.i.i70.i
  %prev.i.sink.i.i = phi ptr [ %prev1.i.i.i69.i, %if.end.i.i.i70.i ], [ %prev.i.i71.i, %if.else.i72.i.if.end.sink.split.i.i_crit_edge ]
  %cdrw2.sink.i.i = phi ptr [ %357, %if.end.i.i.i70.i ], [ %cdrw.i, %if.else.i72.i.if.end.sink.split.i.i_crit_edge ]
  %.sink10.i.i = phi ptr [ %cdrw.i, %if.end.i.i.i70.i ], [ %359, %if.else.i72.i.if.end.sink.split.i.i_crit_edge ]
  %360 = ptrtoint ptr %prev.i.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %pkt.180.i, ptr %prev.i.sink.i.i, align 4
  %361 = ptrtoint ptr %pkt.180.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %cdrw2.sink.i.i, ptr %pkt.180.i, align 4
  %362 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %.sink10.i.i, ptr %prev.i.i, align 4
  %363 = ptrtoint ptr %.sink10.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store volatile ptr %pkt.180.i, ptr %.sink10.i.i, align 4
  br label %pkt_put_packet_data.exit.i

pkt_put_packet_data.exit.i:                       ; preds = %if.end.sink.split.i.i, %if.else.i72.i.pkt_put_packet_data.exit.i_crit_edge, %if.then.i.i312.pkt_put_packet_data.exit.i_crit_edge
  %364 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 0, ptr %state.i, align 4
  %call.i.i63.i = call zeroext i1 @__kasan_check_write(ptr noundef %scan_queue, i32 noundef 4) #13
  %365 = ptrtoint ptr %scan_queue to i32
  call void @__asan_store4_noabort(i32 %365)
  store volatile i32 1, ptr %scan_queue, align 4
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %pkt_put_packet_data.exit.i, %for.body29.i.for.inc34.i_crit_edge
  %cmp27.not.i = icmp eq ptr %next.082.i, %pkt_active_list
  br i1 %cmp27.not.i, label %for.inc34.i.pkt_handle_packets.exit_crit_edge, label %for.inc34.i.for.body29.i_crit_edge

for.inc34.i.for.body29.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body29.i

for.inc34.i.pkt_handle_packets.exit_crit_edge:    ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_handle_packets.exit

pkt_handle_packets.exit:                          ; preds = %for.inc34.i.pkt_handle_packets.exit_crit_edge, %for.end.i.pkt_handle_packets.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %active_list_lock.i) #13
  %call.i.i.i313 = call zeroext i1 @__kasan_check_read(ptr noundef %iosched, i32 noundef 4) #13
  %366 = ptrtoint ptr %iosched to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load volatile i32, ptr %iosched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %cmp.i = icmp eq i32 %367, 0
  br i1 %cmp.i, label %pkt_handle_packets.exit.cleanup_crit_edge, label %if.end.i315

pkt_handle_packets.exit.cleanup_crit_edge:        ; preds = %pkt_handle_packets.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i315:                                      ; preds = %pkt_handle_packets.exit
  %call.i.i183.i = call zeroext i1 @__kasan_check_write(ptr noundef %iosched, i32 noundef 4) #13
  %368 = ptrtoint ptr %iosched to i32
  call void @__asan_store4_noabort(i32 %368)
  store volatile i32 0, ptr %iosched, align 4
  call void @_raw_spin_lock(ptr noundef %lock.i.i72.i.i) #13
  %369 = ptrtoint ptr %read_queue.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %read_queue.i.i78.i.i, align 4
  %cmp.i204.i = icmp ne ptr %370, null
  %371 = ptrtoint ptr %write_queue.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %write_queue.i.i84.i.i, align 4
  %cmp.i187205.i = icmp ne ptr %372, null
  call void @_raw_spin_unlock(ptr noundef %lock.i.i72.i.i) #13
  %brmerge206.i = select i1 %cmp.i204.i, i1 true, i1 %cmp.i187205.i
  br i1 %brmerge206.i, label %if.end.i315.if.end16.i_crit_edge, label %if.end.i315.cleanup_crit_edge

if.end.i315.cleanup_crit_edge:                    ; preds = %if.end.i315
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i315.if.end16.i_crit_edge:                 ; preds = %if.end.i315
  br label %if.end16.i

if.end16.i:                                       ; preds = %cleanup126.i.if.end16.i_crit_edge, %if.end.i315.if.end16.i_crit_edge
  %cmp.i187208.i = phi i1 [ %cmp.i187.i, %cleanup126.i.if.end16.i_crit_edge ], [ %cmp.i187205.i, %if.end.i315.if.end16.i_crit_edge ]
  %cmp.i207.i = phi i1 [ %cmp.i.i329, %cleanup126.i.if.end16.i_crit_edge ], [ %cmp.i204.i, %if.end.i315.if.end16.i_crit_edge ]
  %373 = ptrtoint ptr %writing.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %writing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool18.not.i = icmp eq i32 %374, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i318

if.then19.i318:                                   ; preds = %if.end16.i
  call void @_raw_spin_lock(ptr noundef %lock.i.i72.i.i) #13
  %375 = ptrtoint ptr %write_queue.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %write_queue.i.i84.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i72.i.i) #13
  %tobool27.not.i317 = icmp eq ptr %376, null
  br i1 %tobool27.not.i317, label %land.lhs.true34.critedge.i, label %land.lhs.true28.i

land.lhs.true28.i:                                ; preds = %if.then19.i318
  %bi_iter.i319 = getelementptr inbounds %struct.bio, ptr %376, i32 0, i32 8
  %377 = ptrtoint ptr %bi_iter.i319 to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %bi_iter.i319, align 8
  %379 = ptrtoint ptr %last_write.i to i32
  call void @__asan_load8_noabort(i32 %379)
  %380 = load i64, ptr %last_write.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %378, i64 %380)
  %cmp30.i320 = icmp eq i64 %378, %380
  %tobool.not.not.i = xor i1 %cmp.i207.i, true
  %brmerge181.i = select i1 %cmp30.i320, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge181.i, label %land.lhs.true28.i.if.end61.i_crit_edge, label %land.lhs.true28.i.if.then36.i_crit_edge

land.lhs.true28.i.if.then36.i_crit_edge:          ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36.i

land.lhs.true28.i.if.end61.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i

land.lhs.true34.critedge.i:                       ; preds = %if.then19.i318
  br i1 %cmp.i207.i, label %land.lhs.true34.critedge.i.if.then36.i_crit_edge, label %land.lhs.true34.critedge.i.if.end61.i_crit_edge

land.lhs.true34.critedge.i.if.end61.i_crit_edge:  ; preds = %land.lhs.true34.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i

land.lhs.true34.critedge.i.if.then36.i_crit_edge: ; preds = %land.lhs.true34.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36.i

if.then36.i:                                      ; preds = %land.lhs.true34.critedge.i.if.then36.i_crit_edge, %land.lhs.true28.i.if.then36.i_crit_edge
  %call.i.i184.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios50.i, i32 noundef 4) #13
  %381 = ptrtoint ptr %pending_bios50.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load volatile i32, ptr %pending_bios50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %382)
  %cmp38.i321 = icmp sgt i32 %382, 0
  br i1 %cmp38.i321, label %if.then36.i.cleanup_crit_edge, label %if.end40.i

if.then36.i.cleanup_crit_edge:                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i.i) #13
  %383 = call ptr @memset(ptr %cgc.i.i, i32 255, i32 44)
  call void @init_cdrom_command(ptr noundef nonnull %cgc.i.i, ptr noundef null, i32 noundef 0, i32 noundef 3) #13
  %384 = ptrtoint ptr %cgc.i.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 53, ptr %cgc.i.i, align 4
  %385 = ptrtoint ptr %quiet.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 1, ptr %quiet.i.i, align 4
  %call.i.i322 = call fastcc i32 @pkt_generic_packet(ptr noundef %foobar, ptr noundef nonnull %cgc.i.i) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i.i) #13
  br label %if.end61.sink.split.i

if.else.i:                                        ; preds = %if.end16.i
  %tobool8.not.not.i = xor i1 %cmp.i187208.i, true
  %brmerge182.i = select i1 %cmp.i207.i, i1 true, i1 %tobool8.not.not.i
  br i1 %brmerge182.i, label %if.else.i.if.end61.i_crit_edge, label %if.then48.i

if.else.i.if.end61.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.i

if.then48.i:                                      ; preds = %if.else.i
  %call.i.i185.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios50.i, i32 noundef 4) #13
  %386 = ptrtoint ptr %pending_bios50.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load volatile i32, ptr %pending_bios50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %cmp52.i = icmp sgt i32 %387, 0
  br i1 %cmp52.i, label %if.then48.i.cleanup_crit_edge, label %if.then48.i.if.end61.sink.split.i_crit_edge

if.then48.i.if.end61.sink.split.i_crit_edge:      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split.i

if.then48.i.cleanup_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end61.sink.split.i:                            ; preds = %if.then48.i.if.end61.sink.split.i_crit_edge, %if.end40.i
  %.sink.i = phi i32 [ 0, %if.end40.i ], [ 1, %if.then48.i.if.end61.sink.split.i_crit_edge ]
  %388 = ptrtoint ptr %writing.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %.sink.i, ptr %writing.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end61.sink.split.i, %if.else.i.if.end61.i_crit_edge, %land.lhs.true34.critedge.i.if.end61.i_crit_edge, %land.lhs.true28.i.if.end61.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock.i.i72.i.i) #13
  %389 = ptrtoint ptr %writing.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %writing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %390)
  %tobool66.not.i = icmp eq i32 %390, 0
  br i1 %tobool66.not.i, label %if.else71.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end61.i
  %391 = ptrtoint ptr %write_queue.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %write_queue.i.i84.i.i, align 4
  %tobool.not.i.i323 = icmp eq ptr %392, null
  br i1 %tobool.not.i.i323, label %if.then67.i.if.end75.thread.i_crit_edge, label %if.then.i.i324

if.then67.i.if.end75.thread.i_crit_edge:          ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75.thread.i

if.then.i.i324:                                   ; preds = %if.then67.i
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %392, align 8
  %395 = ptrtoint ptr %write_queue.i.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %394, ptr %write_queue.i.i84.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %394, null
  br i1 %tobool4.not.i.i, label %if.then.i.i324.if.end80.sink.split.i_crit_edge, label %if.then.i.i324.if.end80.i_crit_edge

if.then.i.i324.if.end80.i_crit_edge:              ; preds = %if.then.i.i324
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

if.then.i.i324.if.end80.sink.split.i_crit_edge:   ; preds = %if.then.i.i324
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.sink.split.i

if.else71.i:                                      ; preds = %if.end61.i
  %396 = ptrtoint ptr %read_queue.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %read_queue.i.i78.i.i, align 4
  %tobool.not.i189.i = icmp eq ptr %397, null
  br i1 %tobool.not.i189.i, label %if.else71.i.if.end75.thread.i_crit_edge, label %if.then.i191.i

if.else71.i.if.end75.thread.i_crit_edge:          ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75.thread.i

if.then.i191.i:                                   ; preds = %if.else71.i
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 8
  %400 = ptrtoint ptr %read_queue.i.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %399, ptr %read_queue.i.i78.i.i, align 4
  %tobool4.not.i190.i = icmp eq ptr %399, null
  br i1 %tobool4.not.i190.i, label %if.then.i191.i.if.end80.sink.split.i_crit_edge, label %if.then.i191.i.if.end80.i_crit_edge

if.then.i191.i.if.end80.i_crit_edge:              ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

if.then.i191.i.if.end80.sink.split.i_crit_edge:   ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.sink.split.i

if.end75.thread.i:                                ; preds = %if.else71.i.if.end75.thread.i_crit_edge, %if.then67.i.if.end75.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i.i72.i.i) #13
  br label %cleanup126.i

if.end80.sink.split.i:                            ; preds = %if.then.i191.i.if.end80.sink.split.i_crit_edge, %if.then.i.i324.if.end80.sink.split.i_crit_edge
  %tail.i192.sink.i = phi ptr [ %tail.i13.i.i80.i.i, %if.then.i.i324.if.end80.sink.split.i_crit_edge ], [ %tail.i.i.i75.i.i, %if.then.i191.i.if.end80.sink.split.i_crit_edge ]
  %.sink209.ph.i = phi ptr [ %392, %if.then.i.i324.if.end80.sink.split.i_crit_edge ], [ %397, %if.then.i191.i.if.end80.sink.split.i_crit_edge ]
  %401 = ptrtoint ptr %tail.i192.sink.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr null, ptr %tail.i192.sink.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.end80.sink.split.i, %if.then.i191.i.if.end80.i_crit_edge, %if.then.i.i324.if.end80.i_crit_edge
  %.sink209.i = phi ptr [ %392, %if.then.i.i324.if.end80.i_crit_edge ], [ %397, %if.then.i191.i.if.end80.i_crit_edge ], [ %.sink209.ph.i, %if.end80.sink.split.i ]
  %402 = ptrtoint ptr %.sink209.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr null, ptr %.sink209.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i72.i.i) #13
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %.sink209.i, i32 0, i32 2
  %403 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %bi_opf.i, align 8
  %and.i.i325 = and i32 %404, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i325)
  %tobool.i.not.i = icmp eq i32 %and.i.i325, 0
  br i1 %tobool.i.not.i, label %if.end97.i, label %if.end97.i.thread

if.end97.i.thread:                                ; preds = %if.end80.i
  %405 = ptrtoint ptr %successive_reads88.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 0, ptr %successive_reads88.i, align 8
  %bi_iter89.i = getelementptr inbounds %struct.bio, ptr %.sink209.i, i32 0, i32 8
  %406 = ptrtoint ptr %bi_iter89.i to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %bi_iter89.i, align 8
  %bi_size92.i = getelementptr inbounds %struct.bio, ptr %.sink209.i, i32 0, i32 8, i32 1
  %408 = ptrtoint ptr %bi_size92.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %bi_size92.i, align 8
  %shr93.i = lshr i32 %409, 9
  %conv.i = zext i32 %shr93.i to i64
  %add94.i = add i64 %407, %conv.i
  %410 = ptrtoint ptr %last_write.i to i32
  call void @__asan_store8_noabort(i32 %410)
  store i64 %add94.i, ptr %last_write.i, align 8
  %411 = ptrtoint ptr %read_speed112.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %read_speed112.i, align 4
  %413 = ptrtoint ptr %write_speed113.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %write_speed113.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %412, i32 %414)
  %cmp103.i339 = icmp eq i32 %412, %414
  br i1 %cmp103.i339, label %if.end97.i.thread.if.end123.i_crit_edge, label %if.end97.i.thread.if.then116.i_crit_edge

if.end97.i.thread.if.then116.i_crit_edge:         ; preds = %if.end97.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116.i

if.end97.i.thread.if.end123.i_crit_edge:          ; preds = %if.end97.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123.i

if.end97.i:                                       ; preds = %if.end80.i
  %bi_size.i326 = getelementptr inbounds %struct.bio, ptr %.sink209.i, i32 0, i32 8, i32 1
  %415 = ptrtoint ptr %bi_size.i326 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %bi_size.i326, align 8
  %shr.i327 = lshr i32 %416, 10
  %417 = ptrtoint ptr %successive_reads88.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %successive_reads88.i, align 8
  %add.i328 = add i32 %418, %shr.i327
  store i32 %add.i328, ptr %successive_reads88.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %add.i328)
  %cmp100.i = icmp sgt i32 %add.i328, 511
  %419 = ptrtoint ptr %read_speed112.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %read_speed112.i, align 4
  %421 = ptrtoint ptr %write_speed113.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %write_speed113.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %420, i32 %422)
  %cmp103.i = icmp eq i32 %420, %422
  br i1 %cmp100.i, label %if.then102.i, label %if.else111.i

if.then102.i:                                     ; preds = %if.end97.i
  br i1 %cmp103.i, label %if.then105.i, label %if.then102.i.if.end123.i_crit_edge

if.then102.i.if.end123.i_crit_edge:               ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123.i

if.then105.i:                                     ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #15
  %423 = ptrtoint ptr %read_speed112.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 65535, ptr %read_speed112.i, align 4
  %call109.i = call fastcc i32 @pkt_set_speed(ptr noundef %foobar, i32 noundef %420, i32 noundef 65535) #13
  br label %if.end123.i

if.else111.i:                                     ; preds = %if.end97.i
  br i1 %cmp103.i, label %if.else111.i.if.end123.i_crit_edge, label %if.else111.i.if.then116.i_crit_edge

if.else111.i.if.then116.i_crit_edge:              ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116.i

if.else111.i.if.end123.i_crit_edge:               ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123.i

if.then116.i:                                     ; preds = %if.else111.i.if.then116.i_crit_edge, %if.end97.i.thread.if.then116.i_crit_edge
  %424 = phi i32 [ %414, %if.end97.i.thread.if.then116.i_crit_edge ], [ %422, %if.else111.i.if.then116.i_crit_edge ]
  %425 = ptrtoint ptr %read_speed112.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %424, ptr %read_speed112.i, align 4
  %call121.i = call fastcc i32 @pkt_set_speed(ptr noundef %foobar, i32 noundef %424, i32 noundef %424) #13
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then116.i, %if.else111.i.if.end123.i_crit_edge, %if.then105.i, %if.then102.i.if.end123.i_crit_edge, %if.end97.i.thread.if.end123.i_crit_edge
  %call.i.i186.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios50.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %pending_bios50.i, i32 1, i32 3, i32 1) #13
  %426 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bios50.i, ptr %pending_bios50.i, i32 1, ptr elementtype(i32) %pending_bios50.i) #13, !srcloc !475
  call void @submit_bio_noacct(ptr noundef nonnull %.sink209.i) #13
  br label %cleanup126.i

cleanup126.i:                                     ; preds = %if.end123.i, %if.end75.thread.i
  call void @_raw_spin_lock(ptr noundef %lock.i.i72.i.i) #13
  %427 = ptrtoint ptr %read_queue.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %read_queue.i.i78.i.i, align 4
  %cmp.i.i329 = icmp ne ptr %428, null
  %429 = ptrtoint ptr %write_queue.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %write_queue.i.i84.i.i, align 4
  %cmp.i187.i = icmp ne ptr %430, null
  call void @_raw_spin_unlock(ptr noundef %lock.i.i72.i.i) #13
  %brmerge.i = select i1 %cmp.i.i329, i1 true, i1 %cmp.i187.i
  br i1 %brmerge.i, label %cleanup126.i.if.end16.i_crit_edge, label %cleanup126.i.cleanup_crit_edge

cleanup126.i.cleanup_crit_edge:                   ; preds = %cleanup126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup126.i.if.end16.i_crit_edge:                ; preds = %cleanup126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

cleanup:                                          ; preds = %cleanup126.i.cleanup_crit_edge, %if.then48.i.cleanup_crit_edge, %if.then36.i.cleanup_crit_edge, %if.end.i315.cleanup_crit_edge, %pkt_handle_packets.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  br label %for.cond

for.end249:                                       ; preds = %__here213
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkt_seq_show(ptr noundef %m, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  %bdev_buf = alloca [32 x i8], align 1
  %states = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bdev_buf) #13
  %2 = call ptr @memset(ptr %bdev_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %states) #13
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call = call ptr @bdevname(ptr noundef %4, ptr noundef nonnull %bdev_buf) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.149, ptr noundef %name, ptr noundef %call) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.150) #13
  %settings = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %settings, align 4
  %div92 = lshr i32 %6, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.151, i32 noundef %div92) #13
  %write_type = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %write_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %write_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  %.str.152..str.153 = select i1 %cmp, ptr @.str.152, ptr @.str.153
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.154, ptr noundef nonnull %.str.152..str.153) #13
  %fp = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %fp to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool.not, ptr @.str.103, ptr @.str.102
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.155, ptr noundef nonnull %cond) #13
  %link_loss = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %link_loss to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link_loss, align 1
  %conv7 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.156, i32 noundef %conv7) #13
  %track_mode = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %track_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %track_mode, align 1
  %conv9 = zext i8 %14 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.157, i32 noundef %conv9) #13
  %block_mode = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %block_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %block_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %16)
  %switch.selectcmp = icmp eq i8 %16, 10
  %switch.select = select i1 %switch.selectcmp, ptr @.str.159, ptr @.str.153
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %16)
  %switch.selectcmp93 = icmp eq i8 %16, 8
  %switch.select94 = select i1 %switch.selectcmp93, ptr @.str.158, ptr %switch.select
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.160, ptr noundef nonnull %switch.select94) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.161) #13
  %stats = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stats, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.162, i32 noundef %18) #13
  %pkt_ended = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %pkt_ended to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pkt_ended, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.163, i32 noundef %20) #13
  %secs_w = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %secs_w to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %secs_w, align 8
  %shr = lshr i32 %22, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.164, i32 noundef %shr) #13
  %secs_rg = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %secs_rg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %secs_rg, align 4
  %shr28 = lshr i32 %24, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.165, i32 noundef %shr28) #13
  %secs_r = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %secs_r to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %secs_r, align 8
  %shr30 = lshr i32 %26, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.166, i32 noundef %shr30) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.167) #13
  %refcnt = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %refcnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.168, i32 noundef %28) #13
  %flags = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.169, i32 noundef %30) #13
  %read_speed = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %read_speed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %read_speed, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.170, i32 noundef %32) #13
  %write_speed = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %write_speed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %write_speed, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.171, i32 noundef %34) #13
  %offset = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.172, i32 noundef %36) #13
  %mode_offset = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %mode_offset to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mode_offset, align 4
  %conv31 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.173, i32 noundef %conv31) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.174) #13
  %bio_queue_size = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 19
  %39 = ptrtoint ptr %bio_queue_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bio_queue_size, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.175, i32 noundef %40) #13
  %pending_bios = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 15, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios, i32 noundef 4) #13
  %41 = ptrtoint ptr %pending_bios to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %pending_bios, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.176, i32 noundef %42) #13
  %current_sector = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 21
  %43 = ptrtoint ptr %current_sector to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %current_sector, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.177, i64 noundef %44) #13
  %45 = call ptr @memset(ptr %states, i32 0, i32 24)
  %active_list_lock.i = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 15, i32 2
  call void @_raw_spin_lock(ptr noundef %active_list_lock.i) #13
  %pkt_active_list.i = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 15, i32 1
  %46 = ptrtoint ptr %pkt_active_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %pkt.027.i = load ptr, ptr %pkt_active_list.i, align 8
  %cmp5.not28.i = icmp eq ptr %pkt.027.i, %pkt_active_list.i
  br i1 %cmp5.not28.i, label %entry.pkt_count_states.exit_crit_edge, label %entry.for.body6.i_crit_edge

entry.for.body6.i_crit_edge:                      ; preds = %entry
  br label %for.body6.i

entry.pkt_count_states.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_count_states.exit

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %entry.for.body6.i_crit_edge
  %pkt.029.i = phi ptr [ %pkt.0.i, %for.body6.i.for.body6.i_crit_edge ], [ %pkt.027.i, %entry.for.body6.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.packet_data, ptr %pkt.029.i, i32 0, i32 7
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %states, i32 %48
  %49 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx7.i, align 4
  %inc8.i = add i32 %50, 1
  store i32 %inc8.i, ptr %arrayidx7.i, align 4
  %51 = ptrtoint ptr %pkt.029.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %pkt.0.i = load ptr, ptr %pkt.029.i, align 8
  %cmp5.not.i = icmp eq ptr %pkt.0.i, %pkt_active_list.i
  br i1 %cmp5.not.i, label %for.body6.i.pkt_count_states.exit_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body6.i

for.body6.i.pkt_count_states.exit_crit_edge:      ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_count_states.exit

pkt_count_states.exit:                            ; preds = %for.body6.i.pkt_count_states.exit_crit_edge, %entry.pkt_count_states.exit_crit_edge
  %52 = getelementptr inbounds [6 x i32], ptr %states, i32 0, i32 5
  %53 = getelementptr inbounds [6 x i32], ptr %states, i32 0, i32 4
  %54 = getelementptr inbounds [6 x i32], ptr %states, i32 0, i32 3
  %55 = getelementptr inbounds [6 x i32], ptr %states, i32 0, i32 2
  %56 = getelementptr inbounds [6 x i32], ptr %states, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %active_list_lock.i) #13
  %57 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %states, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 4
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %55, align 4
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %54, align 4
  %65 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %53, align 4
  %67 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %52, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.178, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #13
  %write_congestion_off = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 26
  %69 = ptrtoint ptr %write_congestion_off to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %write_congestion_off, align 4
  %write_congestion_on = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 27
  %71 = ptrtoint ptr %write_congestion_on to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %write_congestion_on, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.179, i32 noundef %70, i32 noundef %72) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %states) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bdev_buf) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkt_end_io_read(ptr nocapture noundef readonly %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %pd1 = getelementptr inbounds %struct.packet_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body5, label %do.end13, !prof !476

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 944, 0\0A.popsection", ""() #13, !srcloc !501
  unreachable

do.end13:                                         ; preds = %entry
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool14.not = icmp eq i8 %5, 0
  br i1 %tobool14.not, label %do.end13.if.end16_crit_edge, label %if.then15

do.end13.if.end16_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  %io_errors = getelementptr inbounds %struct.packet_data, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_errors, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %io_errors, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_errors, ptr %io_errors, i32 1, ptr elementtype(i32) %io_errors) #13, !srcloc !475
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end13.if.end16_crit_edge
  %io_wait = getelementptr inbounds %struct.packet_data, ptr %1, i32 0, i32 10
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_wait, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !482
  tail call void @llvm.prefetch.p0(ptr %io_wait, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_wait, ptr %io_wait, i32 1, ptr elementtype(i32) %io_wait) #13, !srcloc !483
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !484
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then17, label %if.end16.if.end18_crit_edge

if.end16.if.end18_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %run_sm = getelementptr inbounds %struct.packet_data, ptr %1, i32 0, i32 8
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %run_sm, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %run_sm, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %run_sm, ptr %run_sm, i32 1, ptr elementtype(i32) %run_sm) #13, !srcloc !475
  %wqueue = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end16.if.end18_crit_edge
  %pending_bios.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 15, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %pending_bios.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %pending_bios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp slt i32 %10, 1
  br i1 %cmp.i, label %do.body2.i, label %do.end5.i, !prof !476

do.body2.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #13, !srcloc !481
  unreachable

do.end5.i:                                        ; preds = %if.end18
  %call.i.i16.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !482
  tail call void @llvm.prefetch.p0(ptr %pending_bios.i, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bios.i, ptr %pending_bios.i, i32 1, ptr elementtype(i32) %pending_bios.i) #13, !srcloc !483
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !484
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end11.i, label %do.end5.i.pkt_bio_finished.exit_crit_edge

do.end5.i.pkt_bio_finished.exit_crit_edge:        ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_bio_finished.exit

do.end11.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %iosched.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 24
  %call.i.i17.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iosched.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %iosched.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %iosched.i, align 4
  %wqueue.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wqueue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %pkt_bio_finished.exit

pkt_bio_finished.exit:                            ; preds = %do.end11.i, %do.end5.i.pkt_bio_finished.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pkt_end_io_packet_write(ptr nocapture noundef readonly %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %pd1 = getelementptr inbounds %struct.packet_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body5, label %do.end13, !prof !476

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 963, 0\0A.popsection", ""() #13, !srcloc !502
  unreachable

do.end13:                                         ; preds = %entry
  %pkt_ended = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %pkt_ended to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pkt_ended, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %pkt_ended, align 4
  %pending_bios.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 15, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %pending_bios.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %pending_bios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %do.body2.i, label %do.end5.i, !prof !476

do.body2.i:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/pktcdvd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #13, !srcloc !481
  unreachable

do.end5.i:                                        ; preds = %do.end13
  %call.i.i16.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !482
  tail call void @llvm.prefetch.p0(ptr %pending_bios.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bios.i, ptr %pending_bios.i, i32 1, ptr elementtype(i32) %pending_bios.i) #13, !srcloc !483
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !484
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end11.i, label %do.end5.i.pkt_bio_finished.exit_crit_edge

do.end5.i.pkt_bio_finished.exit_crit_edge:        ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pkt_bio_finished.exit

do.end11.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %iosched.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 24
  %call.i.i17.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iosched.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %iosched.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %iosched.i, align 4
  %wqueue.i = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wqueue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %pkt_bio_finished.exit

pkt_bio_finished.exit:                            ; preds = %do.end11.i, %do.end5.i.pkt_bio_finished.exit_crit_edge
  %io_wait = getelementptr inbounds %struct.packet_data, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_wait, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %io_wait, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_wait, ptr %io_wait, i32 1, ptr elementtype(i32) %io_wait) #13, !srcloc !503
  %run_sm = getelementptr inbounds %struct.packet_data, ptr %1, i32 0, i32 8
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %run_sm, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %run_sm, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %run_sm, ptr %run_sm, i32 1, ptr elementtype(i32) %run_sm) #13, !srcloc !475
  %wqueue = getelementptr inbounds %struct.pktcdvd_device, ptr %3, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_copy_data_iter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packets_finished_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pkt_ended = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %pkt_ended to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pkt_ended, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.182, i32 noundef %3) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packets_started_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stats = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.182, i32 noundef %3) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kb_read_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %secs_r = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %secs_r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %secs_r, align 8
  %shr = lshr i32 %3, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.182, i32 noundef %shr) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kb_written_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %secs_w = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %secs_w to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %secs_w, align 8
  %shr = lshr i32 %3, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.182, i32 noundef %shr) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kb_read_gather_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %secs_rg = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %secs_rg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %secs_rg, align 4
  %shr = lshr i32 %3, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.182, i32 noundef %shr) #13
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %len) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not = icmp eq i32 %len, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stats = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 4
  %2 = call ptr @memset(ptr %stats, i32 0, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @congestion_on_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %write_congestion_on = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %write_congestion_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_congestion_on, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.190, i32 noundef %3) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @congestion_on_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !479
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.191, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %write_congestion_on = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 27
  %write_congestion_off = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp sgt i32 %4, 0
  br i1 %cmp.i, label %if.then.i, label %if.else23.i

if.then.i:                                        ; preds = %if.then
  %5 = call i32 @llvm.umax.i32(i32 %4, i32 500) #13
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 1000000) #13
  %7 = ptrtoint ptr %write_congestion_on to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %write_congestion_on, align 4
  %8 = ptrtoint ptr %write_congestion_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_congestion_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8.i = icmp slt i32 %9, 1
  %sub.i = add nsw i32 %6, -100
  br i1 %cmp8.i, label %if.then.i.init_write_congestion_marks.exit_crit_edge, label %if.else.i

if.then.i.init_write_congestion_marks.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_write_congestion_marks.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 %sub.i) #13
  %11 = call i32 @llvm.umax.i32(i32 %10, i32 100) #13
  br label %init_write_congestion_marks.exit

if.else23.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %write_congestion_on to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %write_congestion_on, align 4
  br label %init_write_congestion_marks.exit

init_write_congestion_marks.exit:                 ; preds = %if.else23.i, %if.else.i, %if.then.i.init_write_congestion_marks.exit_crit_edge
  %sub.sink.i = phi i32 [ %11, %if.else.i ], [ -1, %if.else23.i ], [ %sub.i, %if.then.i.init_write_congestion_marks.exit_crit_edge ]
  %13 = ptrtoint ptr %write_congestion_off to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.sink.i, ptr %write_congestion_off, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %if.end

if.end:                                           ; preds = %init_write_congestion_marks.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %len
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @congestion_off_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %write_congestion_off = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %write_congestion_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_congestion_off, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.190, i32 noundef %3) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @congestion_off_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !479
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.191, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %write_congestion_off = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 26
  %write_congestion_on = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %write_congestion_on to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_congestion_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp sgt i32 %6, 0
  br i1 %cmp.i, label %if.then.i, label %if.else23.i

if.then.i:                                        ; preds = %if.then
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 500) #13
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 1000000) #13
  %9 = ptrtoint ptr %write_congestion_on to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %write_congestion_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8.i = icmp slt i32 %4, 1
  %sub.i = add nsw i32 %8, -100
  br i1 %cmp8.i, label %if.then.i.init_write_congestion_marks.exit_crit_edge, label %if.else.i

if.then.i.init_write_congestion_marks.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_write_congestion_marks.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = call i32 @llvm.umin.i32(i32 %4, i32 %sub.i) #13
  %11 = call i32 @llvm.umax.i32(i32 %10, i32 100) #13
  br label %init_write_congestion_marks.exit

if.else23.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %write_congestion_on to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %write_congestion_on, align 4
  br label %init_write_congestion_marks.exit

init_write_congestion_marks.exit:                 ; preds = %if.else23.i, %if.else.i, %if.then.i.init_write_congestion_marks.exit_crit_edge
  %sub.sink.i = phi i32 [ %11, %if.else.i ], [ -1, %if.else23.i ], [ %sub.i, %if.then.i.init_write_congestion_marks.exit_crit_edge ]
  %13 = ptrtoint ptr %write_congestion_off to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.sink.i, ptr %write_congestion_off, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %if.end

if.end:                                           ; preds = %init_write_congestion_marks.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %bio_queue_size = getelementptr inbounds %struct.pktcdvd_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bio_queue_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bio_queue_size, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.190, i32 noundef %3) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkt_debugfs_fops_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @pkt_debugfs_seq_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pkt_debugfs_seq_show(ptr noundef %m, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pkt_seq_show(ptr noundef %m, ptr noundef %p)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @class_pktcdvd_release(ptr noundef %cls) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cls) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_store(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major) #13
  %0 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %major, align 4, !annotation !479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #13
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %minor, align 4, !annotation !479
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.208, ptr noundef nonnull %major, ptr noundef nonnull %minor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %call1 = call zeroext i1 @try_module_get(ptr noundef null) #13
  br i1 %call1, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %major, align 4
  %shl = shl i32 %3, 20
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minor, align 4
  %or = or i32 %shl, %5
  %call3 = call fastcc i32 @pkt_setup_dev(i32 noundef %or, ptr noundef null)
  call void @module_put(ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -19, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_store(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major) #13
  %0 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %major, align 4, !annotation !479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #13
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %minor, align 4, !annotation !479
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.208, ptr noundef nonnull %major, ptr noundef nonnull %minor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %major, align 4
  %shl = shl i32 %3, 20
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minor, align 4
  %or = or i32 %shl, %5
  %call1 = call fastcc i32 @pkt_remove_dev(i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_map_show(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ctl_mutex, i32 noundef 1) #13
  %0 = load ptr, ptr @pkt_devs, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.pktcdvd_device, ptr %0, i32 0, i32 2
  %pkt_dev = getelementptr inbounds %struct.pktcdvd_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pkt_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pkt_dev, align 4
  %shr = lshr i32 %2, 20
  %and = and i32 %2, 1048575
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_dev, align 4
  %shr2 = lshr i32 %6, 20
  %and5 = and i32 %6, 1048575
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.211, ptr noundef %name, i32 noundef %shr, i32 noundef %and, i32 noundef %shr2, i32 noundef %and5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %n.1 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %7 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %n.1
  %name.1 = getelementptr inbounds %struct.pktcdvd_device, ptr %7, i32 0, i32 2
  %pkt_dev.1 = getelementptr inbounds %struct.pktcdvd_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pkt_dev.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pkt_dev.1, align 4
  %shr.1 = lshr i32 %9, 20
  %and.1 = and i32 %9, 1048575
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %bd_dev.1 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %bd_dev.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bd_dev.1, align 4
  %shr2.1 = lshr i32 %13, 20
  %and5.1 = and i32 %13, 1048575
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.211, ptr noundef %name.1, i32 noundef %shr.1, i32 noundef %and.1, i32 noundef %shr2.1, i32 noundef %and5.1)
  %add.1 = add i32 %call.1, %n.1
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %n.1.1 = phi i32 [ %add.1, %if.end.1 ], [ %n.1, %cleanup.cleanup.1_crit_edge ]
  %14 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %14, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.2

if.end.2:                                         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %n.1.1
  %name.2 = getelementptr inbounds %struct.pktcdvd_device, ptr %14, i32 0, i32 2
  %pkt_dev.2 = getelementptr inbounds %struct.pktcdvd_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pkt_dev.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pkt_dev.2, align 4
  %shr.2 = lshr i32 %16, 20
  %and.2 = and i32 %16, 1048575
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %bd_dev.2 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %bd_dev.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bd_dev.2, align 4
  %shr2.2 = lshr i32 %20, 20
  %and5.2 = and i32 %20, 1048575
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.211, ptr noundef %name.2, i32 noundef %shr.2, i32 noundef %and.2, i32 noundef %shr2.2, i32 noundef %and5.2)
  %add.2 = add i32 %call.2, %n.1.1
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end.2, %cleanup.1.cleanup.2_crit_edge
  %n.1.2 = phi i32 [ %add.2, %if.end.2 ], [ %n.1.1, %cleanup.1.cleanup.2_crit_edge ]
  %21 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %21, null
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.3

if.end.3:                                         ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %n.1.2
  %name.3 = getelementptr inbounds %struct.pktcdvd_device, ptr %21, i32 0, i32 2
  %pkt_dev.3 = getelementptr inbounds %struct.pktcdvd_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pkt_dev.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_dev.3, align 4
  %shr.3 = lshr i32 %23, 20
  %and.3 = and i32 %23, 1048575
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %bd_dev.3 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %bd_dev.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bd_dev.3, align 4
  %shr2.3 = lshr i32 %27, 20
  %and5.3 = and i32 %27, 1048575
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.211, ptr noundef %name.3, i32 noundef %shr.3, i32 noundef %and.3, i32 noundef %shr2.3, i32 noundef %and5.3)
  %add.3 = add i32 %call.3, %n.1.2
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end.3, %cleanup.2.cleanup.3_crit_edge
  %n.1.3 = phi i32 [ %add.3, %if.end.3 ], [ %n.1.2, %cleanup.2.cleanup.3_crit_edge ]
  %28 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %28, null
  br i1 %tobool.not.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.4

if.end.4:                                         ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.4 = getelementptr i8, ptr %data, i32 %n.1.3
  %name.4 = getelementptr inbounds %struct.pktcdvd_device, ptr %28, i32 0, i32 2
  %pkt_dev.4 = getelementptr inbounds %struct.pktcdvd_device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pkt_dev.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pkt_dev.4, align 4
  %shr.4 = lshr i32 %30, 20
  %and.4 = and i32 %30, 1048575
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 8
  %bd_dev.4 = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %bd_dev.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bd_dev.4, align 4
  %shr2.4 = lshr i32 %34, 20
  %and5.4 = and i32 %34, 1048575
  %call.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.211, ptr noundef %name.4, i32 noundef %shr.4, i32 noundef %and.4, i32 noundef %shr2.4, i32 noundef %and5.4)
  %add.4 = add i32 %call.4, %n.1.3
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end.4, %cleanup.3.cleanup.4_crit_edge
  %n.1.4 = phi i32 [ %add.4, %if.end.4 ], [ %n.1.3, %cleanup.3.cleanup.4_crit_edge ]
  %35 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 5), align 4
  %tobool.not.5 = icmp eq ptr %35, null
  br i1 %tobool.not.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.5

if.end.5:                                         ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.5 = getelementptr i8, ptr %data, i32 %n.1.4
  %name.5 = getelementptr inbounds %struct.pktcdvd_device, ptr %35, i32 0, i32 2
  %pkt_dev.5 = getelementptr inbounds %struct.pktcdvd_device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %pkt_dev.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pkt_dev.5, align 4
  %shr.5 = lshr i32 %37, 20
  %and.5 = and i32 %37, 1048575
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 8
  %bd_dev.5 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %bd_dev.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bd_dev.5, align 4
  %shr2.5 = lshr i32 %41, 20
  %and5.5 = and i32 %41, 1048575
  %call.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.211, ptr noundef %name.5, i32 noundef %shr.5, i32 noundef %and.5, i32 noundef %shr2.5, i32 noundef %and5.5)
  %add.5 = add i32 %call.5, %n.1.4
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end.5, %cleanup.4.cleanup.5_crit_edge
  %n.1.5 = phi i32 [ %add.5, %if.end.5 ], [ %n.1.4, %cleanup.4.cleanup.5_crit_edge ]
  %42 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 6), align 4
  %tobool.not.6 = icmp eq ptr %42, null
  br i1 %tobool.not.6, label %cleanup.5.cleanup.6_crit_edge, label %if.end.6

cleanup.5.cleanup.6_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.6

if.end.6:                                         ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.6 = getelementptr i8, ptr %data, i32 %n.1.5
  %name.6 = getelementptr inbounds %struct.pktcdvd_device, ptr %42, i32 0, i32 2
  %pkt_dev.6 = getelementptr inbounds %struct.pktcdvd_device, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %pkt_dev.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pkt_dev.6, align 4
  %shr.6 = lshr i32 %44, 20
  %and.6 = and i32 %44, 1048575
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 8
  %bd_dev.6 = getelementptr inbounds %struct.block_device, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %bd_dev.6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bd_dev.6, align 4
  %shr2.6 = lshr i32 %48, 20
  %and5.6 = and i32 %48, 1048575
  %call.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.6, ptr noundef nonnull @.str.211, ptr noundef %name.6, i32 noundef %shr.6, i32 noundef %and.6, i32 noundef %shr2.6, i32 noundef %and5.6)
  %add.6 = add i32 %call.6, %n.1.5
  br label %cleanup.6

cleanup.6:                                        ; preds = %if.end.6, %cleanup.5.cleanup.6_crit_edge
  %n.1.6 = phi i32 [ %add.6, %if.end.6 ], [ %n.1.5, %cleanup.5.cleanup.6_crit_edge ]
  %49 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @pkt_devs, i32 0, i32 7), align 4
  %tobool.not.7 = icmp eq ptr %49, null
  br i1 %tobool.not.7, label %cleanup.6.cleanup.7_crit_edge, label %if.end.7

cleanup.6.cleanup.7_crit_edge:                    ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.7

if.end.7:                                         ; preds = %cleanup.6
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.7 = getelementptr i8, ptr %data, i32 %n.1.6
  %name.7 = getelementptr inbounds %struct.pktcdvd_device, ptr %49, i32 0, i32 2
  %pkt_dev.7 = getelementptr inbounds %struct.pktcdvd_device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pkt_dev.7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pkt_dev.7, align 4
  %shr.7 = lshr i32 %51, 20
  %and.7 = and i32 %51, 1048575
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 8
  %bd_dev.7 = getelementptr inbounds %struct.block_device, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %bd_dev.7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bd_dev.7, align 4
  %shr2.7 = lshr i32 %55, 20
  %and5.7 = and i32 %55, 1048575
  %call.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.7, ptr noundef nonnull @.str.211, ptr noundef %name.7, i32 noundef %shr.7, i32 noundef %and.7, i32 noundef %shr2.7, i32 noundef %and5.7)
  %add.7 = add i32 %call.7, %n.1.6
  br label %cleanup.7

cleanup.7:                                        ; preds = %if.end.7, %cleanup.6.cleanup.7_crit_edge
  %n.1.7 = phi i32 [ %add.7, %if.end.7 ], [ %n.1.6, %cleanup.6.cleanup.7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ctl_mutex) #13
  ret i32 %n.1.7
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 238)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 238)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !207, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !245, !247, !249, !250, !251, !252, !254, !255, !257, !259, !260, !261, !262, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !281, !282, !283, !285, !286, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !370, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !391, !393, !395, !396, !398, !400, !402, !403, !405, !406, !408, !410, !412, !414, !415, !416, !417, !419, !420, !421, !423, !424, !426, !427, !428, !429, !431, !432, !433, !435, !437, !438, !439, !440, !442, !443, !445, !447, !448, !450, !452, !453, !455, !456}
!llvm.named.register.sp = !{!458}
!llvm.module.flags = !{!459, !460, !461, !462, !463, !464, !465, !466}
!llvm.ident = !{!467}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/pktcdvd.c", i32 2947, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/block/pktcdvd.c", i32 2953, i32 34}
!4 = !{ptr @__UNIQUE_ID_description314, !5, !"__UNIQUE_ID_description314", i1 false, i1 false}
!5 = !{!"../drivers/block/pktcdvd.c", i32 2958, i32 1}
!6 = !{ptr @__UNIQUE_ID_author315, !7, !"__UNIQUE_ID_author315", i1 false, i1 false}
!7 = !{!"../drivers/block/pktcdvd.c", i32 2959, i32 1}
!8 = !{ptr @__UNIQUE_ID_file316, !9, !"__UNIQUE_ID_file316", i1 false, i1 false}
!9 = !{!"../drivers/block/pktcdvd.c", i32 2960, i32 1}
!10 = !{ptr @__UNIQUE_ID_license317, !9, !"__UNIQUE_ID_license317", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_pktcdvd__318_2962_pkt_init6, !12, !"__initcall__kmod_pktcdvd__318_2962_pkt_init6", i1 false, i1 false}
!12 = !{!"../drivers/block/pktcdvd.c", i32 2962, i32 1}
!13 = !{ptr @__exitcall_pkt_exit, !14, !"__exitcall_pkt_exit", i1 false, i1 false}
!14 = !{!"../drivers/block/pktcdvd.c", i32 2963, i32 1}
!15 = !{ptr @pktdev_major, !16, !"pktdev_major", i1 false, i1 false}
!16 = !{!"../drivers/block/pktcdvd.c", i32 96, i32 12}
!17 = !{ptr @psd_pool, !18, !"psd_pool", i1 false, i1 false}
!18 = !{!"../drivers/block/pktcdvd.c", i32 100, i32 18}
!19 = !{ptr @pkt_bio_set, !20, !"pkt_bio_set", i1 false, i1 false}
!20 = !{!"../drivers/block/pktcdvd.c", i32 101, i32 23}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/pktcdvd.c", i32 2890, i32 14}
!23 = !{ptr @pkt_misc, !24, !"pkt_misc", i1 false, i1 false}
!24 = !{!"../drivers/block/pktcdvd.c", i32 2887, i32 26}
!25 = !{ptr @pkt_ctl_fops, !26, !"pkt_ctl_fops", i1 false, i1 false}
!26 = !{!"../drivers/block/pktcdvd.c", i32 2877, i32 37}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!29 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/block/pktcdvd.c", i32 2686, i32 3}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pkt_setup_dev._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @pkt_setup_dev._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @pkt_setup_dev.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/block/pktcdvd.c", i32 2702, i32 2}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pkt_setup_dev.__key.10, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/block/pktcdvd.c", i32 2704, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pkt_setup_dev.__key.12, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/block/pktcdvd.c", i32 2705, i32 2}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/block/pktcdvd.c", i32 2708, i32 20}
!51 = !{ptr @pkt_setup_dev.__key.15, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/block/pktcdvd.c", i32 2709, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pkt_setup_dev.__key.17, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/block/pktcdvd.c", i32 2716, i32 9}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/block/pktcdvd.c", i32 2757, i32 2}
!58 = !{ptr @pkt_setup_dev._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pkt_setup_dev._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ctl_mutex, !61, !"ctl_mutex", i1 false, i1 false}
!61 = !{!"../drivers/block/pktcdvd.c", i32 99, i32 21}
!62 = !{ptr @pkt_devs, !63, !"pkt_devs", i1 false, i1 false}
!63 = !{!"../drivers/block/pktcdvd.c", i32 94, i32 31}
!64 = distinct !{null, !65, !"write_congestion_on", i1 false, i1 false}
!65 = !{!"../drivers/block/pktcdvd.c", i32 97, i32 12}
!66 = distinct !{null, !67, !"write_congestion_off", i1 false, i1 false}
!67 = !{!"../drivers/block/pktcdvd.c", i32 98, i32 12}
!68 = !{ptr @pktcdvd_ops, !69, !"pktcdvd_ops", i1 false, i1 false}
!69 = !{!"../drivers/block/pktcdvd.c", i32 2659, i32 45}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/block/pktcdvd.c", i32 2415, i32 3}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pkt_submit_bio._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pkt_submit_bio._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/block/pktcdvd.c", i32 2432, i32 3}
!77 = !{ptr @pkt_submit_bio._entry.23, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @pkt_submit_bio._entry_ptr.25, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/block/pktcdvd.c", i32 2438, i32 3}
!81 = !{ptr @pkt_submit_bio._entry.26, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pkt_submit_bio._entry_ptr.28, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/block/pktcdvd.c", i32 93, i32 8}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pktcdvd_mutex, !84, !"pktcdvd_mutex", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/block/pktcdvd.c", i32 2156, i32 3}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @pkt_open_dev._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @pkt_open_dev._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/block/pktcdvd.c", i32 2185, i32 4}
!94 = !{ptr @pkt_open_dev._entry.33, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @pkt_open_dev._entry_ptr.35, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/block/pktcdvd.c", i32 2189, i32 3}
!98 = !{ptr @pkt_open_dev._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @pkt_open_dev._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/block/pktcdvd.c", i32 2092, i32 3}
!102 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @pkt_open_write._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @pkt_open_write._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/pktcdvd.c", i32 2105, i32 4}
!107 = !{ptr @pkt_open_write._entry.41, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @pkt_open_write._entry_ptr.43, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/block/pktcdvd.c", i32 2112, i32 4}
!111 = !{ptr @pkt_open_write._entry.44, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @pkt_open_write._entry_ptr.46, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/block/pktcdvd.c", i32 2119, i32 3}
!115 = !{ptr @pkt_open_write._entry.47, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @pkt_open_write._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/block/pktcdvd.c", i32 2127, i32 3}
!119 = !{ptr @pkt_open_write._entry.50, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @pkt_open_write._entry_ptr.52, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/block/pktcdvd.c", i32 1798, i32 3}
!123 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @pkt_probe_settings._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @pkt_probe_settings._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/block/pktcdvd.c", i32 1810, i32 3}
!128 = !{ptr @pkt_probe_settings._entry.55, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @pkt_probe_settings._entry_ptr.57, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/block/pktcdvd.c", i32 1815, i32 3}
!132 = !{ptr @pkt_probe_settings._entry.58, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pkt_probe_settings._entry_ptr.60, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/block/pktcdvd.c", i32 1825, i32 3}
!136 = !{ptr @pkt_probe_settings._entry.61, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @pkt_probe_settings._entry_ptr.63, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/block/pktcdvd.c", i32 1829, i32 3}
!140 = !{ptr @pkt_probe_settings._entry.64, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @pkt_probe_settings._entry_ptr.66, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/block/pktcdvd.c", i32 1871, i32 4}
!144 = !{ptr @pkt_probe_settings._entry.67, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @pkt_probe_settings._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/block/pktcdvd.c", i32 1757, i32 3}
!148 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @pkt_writable_disc._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @pkt_writable_disc._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/block/pktcdvd.c", i32 1762, i32 3}
!153 = !{ptr @pkt_writable_disc._entry.72, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @pkt_writable_disc._entry_ptr.74, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/block/pktcdvd.c", i32 1767, i32 3}
!157 = !{ptr @pkt_writable_disc._entry.75, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @pkt_writable_disc._entry_ptr.77, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/block/pktcdvd.c", i32 1772, i32 3}
!161 = !{ptr @pkt_writable_disc._entry.78, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @pkt_writable_disc._entry_ptr.80, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/block/pktcdvd.c", i32 1729, i32 2}
!165 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @pkt_writable_track._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @pkt_writable_track._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/pktcdvd.c", i32 1684, i32 3}
!170 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @pkt_set_write_settings._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @pkt_set_write_settings._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/block/pktcdvd.c", i32 747, i32 3}
!175 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @pkt_dump_sense._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @pkt_dump_sense._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/block/pktcdvd.c", i32 752, i32 3}
!180 = !{ptr @pkt_dump_sense._entry.87, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @pkt_dump_sense._entry_ptr.89, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/block/pktcdvd.c", i32 729, i32 3}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/block/pktcdvd.c", i32 729, i32 15}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/block/pktcdvd.c", i32 729, i32 34}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/block/pktcdvd.c", i32 730, i32 3}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/block/pktcdvd.c", i32 730, i32 19}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/block/pktcdvd.c", i32 730, i32 37}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/block/pktcdvd.c", i32 731, i32 3}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/block/pktcdvd.c", i32 731, i32 21}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/block/pktcdvd.c", i32 731, i32 37}
!200 = !{ptr @sense_key_string.info, !201, !"info", i1 false, i1 false}
!201 = !{!"../drivers/block/pktcdvd.c", i32 728, i32 28}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/block/pktcdvd.c", i32 734, i32 50}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/block/pktcdvd.c", i32 1490, i32 2}
!206 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @pkt_print_settings._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @pkt_print_settings._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/block/pktcdvd.c", i32 1906, i32 3}
!213 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @pkt_write_caching._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @pkt_write_caching._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/block/pktcdvd.c", i32 1909, i32 3}
!218 = !{ptr @pkt_write_caching._entry.106, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @pkt_write_caching._entry_ptr.108, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/block/pktcdvd.c", i32 2024, i32 3}
!222 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @pkt_media_speed._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @pkt_media_speed._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/block/pktcdvd.c", i32 2028, i32 3}
!227 = !{ptr @pkt_media_speed._entry.111, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @pkt_media_speed._entry_ptr.113, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/block/pktcdvd.c", i32 2048, i32 4}
!231 = !{ptr @pkt_media_speed._entry.114, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @pkt_media_speed._entry_ptr.116, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/block/pktcdvd.c", i32 2052, i32 3}
!235 = !{ptr @pkt_media_speed._entry.117, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @pkt_media_speed._entry_ptr.119, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.121, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/block/pktcdvd.c", i32 2055, i32 3}
!239 = !{ptr @pkt_media_speed._entry.120, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @pkt_media_speed._entry_ptr.122, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @clv_to_speed, !242, !"clv_to_speed", i1 false, i1 false}
!242 = !{!"../drivers/block/pktcdvd.c", i32 1969, i32 13}
!243 = !{ptr @hs_clv_to_speed, !244, !"hs_clv_to_speed", i1 false, i1 false}
!244 = !{!"../drivers/block/pktcdvd.c", i32 1974, i32 13}
!245 = !{ptr @us_clv_to_speed, !246, !"us_clv_to_speed", i1 false, i1 false}
!246 = !{!"../drivers/block/pktcdvd.c", i32 1979, i32 13}
!247 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/block/pktcdvd.c", i32 935, i32 3}
!249 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @pkt_set_segment_merging._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @pkt_set_segment_merging._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @pkt_alloc_packet_data.__key, !253, !"__key", i1 false, i1 false}
!253 = !{!"../drivers/block/pktcdvd.c", i32 535, i32 2}
!254 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!255 = distinct !{null, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!257 = !{ptr @.str.129, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/block/pktcdvd.c", i32 2207, i32 3}
!259 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @pkt_release_dev._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @pkt_release_dev._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/block/pktcdvd.c", i32 2656, i32 31}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/block/pktcdvd.c", i32 2544, i32 3}
!266 = !{ptr @.str.133, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @pkt_new_dev._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @pkt_new_dev._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/block/pktcdvd.c", i32 2552, i32 4}
!271 = !{ptr @pkt_new_dev._entry.134, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @pkt_new_dev._entry_ptr.136, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/block/pktcdvd.c", i32 2557, i32 4}
!275 = !{ptr @pkt_new_dev._entry.137, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @pkt_new_dev._entry_ptr.139, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.140, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/block/pktcdvd.c", i32 2581, i32 20}
!279 = !{ptr @.str.142, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/block/pktcdvd.c", i32 2583, i32 3}
!281 = !{ptr @pkt_new_dev._entry.141, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @pkt_new_dev._entry_ptr.143, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.145, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/block/pktcdvd.c", i32 2588, i32 2}
!285 = !{ptr @pkt_new_dev._entry.144, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @pkt_new_dev._entry_ptr.146, !284, !"_entry_ptr", i1 false, i1 false}
!287 = distinct !{null, !288, !"__already_done", i1 false, i1 false}
!288 = !{!"../drivers/block/pktcdvd.c", i32 1409, i32 4}
!289 = distinct !{null, !290, !"__already_done", i1 false, i1 false}
!290 = !{!"../drivers/block/pktcdvd.c", i32 1461, i32 3}
!291 = !{ptr @.str.148, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!293 = !{ptr @pkt_proc, !294, !"pkt_proc", i1 false, i1 false}
!294 = !{!"../drivers/block/pktcdvd.c", i32 95, i32 31}
!295 = !{ptr @.str.149, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/block/pktcdvd.c", i32 2481, i32 16}
!297 = !{ptr @.str.150, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/block/pktcdvd.c", i32 2484, i32 16}
!299 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/block/pktcdvd.c", i32 2485, i32 16}
!301 = !{ptr @.str.152, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/block/pktcdvd.c", i32 2488, i32 9}
!303 = !{ptr @.str.153, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/block/pktcdvd.c", i32 2490, i32 9}
!305 = !{ptr @.str.154, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/block/pktcdvd.c", i32 2491, i32 16}
!307 = !{ptr @.str.155, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/block/pktcdvd.c", i32 2493, i32 16}
!309 = !{ptr @.str.156, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/block/pktcdvd.c", i32 2494, i32 16}
!311 = !{ptr @.str.157, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/block/pktcdvd.c", i32 2496, i32 16}
!313 = !{ptr @.str.158, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/block/pktcdvd.c", i32 2499, i32 9}
!315 = !{ptr @.str.159, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/block/pktcdvd.c", i32 2501, i32 9}
!317 = !{ptr @.str.160, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/block/pktcdvd.c", i32 2504, i32 16}
!319 = !{ptr @.str.161, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/block/pktcdvd.c", i32 2506, i32 16}
!321 = !{ptr @.str.162, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/block/pktcdvd.c", i32 2507, i32 16}
!323 = !{ptr @.str.163, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/block/pktcdvd.c", i32 2508, i32 16}
!325 = !{ptr @.str.164, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/block/pktcdvd.c", i32 2509, i32 16}
!327 = !{ptr @.str.165, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/block/pktcdvd.c", i32 2510, i32 16}
!329 = !{ptr @.str.166, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/block/pktcdvd.c", i32 2511, i32 16}
!331 = !{ptr @.str.167, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/block/pktcdvd.c", i32 2513, i32 16}
!333 = !{ptr @.str.168, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/block/pktcdvd.c", i32 2514, i32 16}
!335 = !{ptr @.str.169, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/block/pktcdvd.c", i32 2515, i32 16}
!337 = !{ptr @.str.170, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/block/pktcdvd.c", i32 2516, i32 16}
!339 = !{ptr @.str.171, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/block/pktcdvd.c", i32 2517, i32 16}
!341 = !{ptr @.str.172, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/block/pktcdvd.c", i32 2518, i32 16}
!343 = !{ptr @.str.173, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/block/pktcdvd.c", i32 2519, i32 16}
!345 = !{ptr @.str.174, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/block/pktcdvd.c", i32 2521, i32 16}
!347 = !{ptr @.str.175, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/block/pktcdvd.c", i32 2522, i32 16}
!349 = !{ptr @.str.176, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/block/pktcdvd.c", i32 2523, i32 16}
!351 = !{ptr @.str.177, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/block/pktcdvd.c", i32 2524, i32 16}
!353 = !{ptr @.str.178, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/block/pktcdvd.c", i32 2527, i32 16}
!355 = !{ptr @.str.179, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/block/pktcdvd.c", i32 2530, i32 16}
!357 = !{ptr @class_pktcdvd, !358, !"class_pktcdvd", i1 false, i1 false}
!358 = !{!"../drivers/block/pktcdvd.c", i32 103, i32 22}
!359 = !{ptr @pkt_groups, !360, !"pkt_groups", i1 false, i1 false}
!360 = !{!"../drivers/block/pktcdvd.c", i32 310, i32 38}
!361 = !{ptr @.str.180, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/block/pktcdvd.c", i32 204, i32 10}
!363 = !{ptr @pkt_stat_group, !364, !"pkt_stat_group", i1 false, i1 false}
!364 = !{!"../drivers/block/pktcdvd.c", i32 203, i32 37}
!365 = !{ptr @pkt_stat_attrs, !366, !"pkt_stat_attrs", i1 false, i1 false}
!366 = !{!"../drivers/block/pktcdvd.c", i32 193, i32 26}
!367 = !{ptr @.str.181, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/block/pktcdvd.c", i32 148, i32 8}
!369 = !{ptr @dev_attr_packets_finished, !368, !"dev_attr_packets_finished", i1 false, i1 false}
!370 = !{ptr @.str.182, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/block/pktcdvd.c", i32 146, i32 25}
!372 = !{ptr @.str.183, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/block/pktcdvd.c", i32 139, i32 8}
!374 = !{ptr @dev_attr_packets_started, !373, !"dev_attr_packets_started", i1 false, i1 false}
!375 = !{ptr @.str.184, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/block/pktcdvd.c", i32 166, i32 8}
!377 = !{ptr @dev_attr_kb_read, !376, !"dev_attr_kb_read", i1 false, i1 false}
!378 = !{ptr @.str.185, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/block/pktcdvd.c", i32 157, i32 8}
!380 = !{ptr @dev_attr_kb_written, !379, !"dev_attr_kb_written", i1 false, i1 false}
!381 = !{ptr @.str.186, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/block/pktcdvd.c", i32 175, i32 8}
!383 = !{ptr @dev_attr_kb_read_gather, !382, !"dev_attr_kb_read_gather", i1 false, i1 false}
!384 = !{ptr @.str.187, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/block/pktcdvd.c", i32 191, i32 8}
!386 = !{ptr @dev_attr_reset, !385, !"dev_attr_reset", i1 false, i1 false}
!387 = !{ptr @.str.188, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/block/pktcdvd.c", i32 306, i32 10}
!389 = !{ptr @pkt_wq_group, !390, !"pkt_wq_group", i1 false, i1 false}
!390 = !{!"../drivers/block/pktcdvd.c", i32 305, i32 37}
!391 = !{ptr @pkt_wq_attrs, !392, !"pkt_wq_attrs", i1 false, i1 false}
!392 = !{!"../drivers/block/pktcdvd.c", i32 298, i32 26}
!393 = !{ptr @.str.189, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/block/pktcdvd.c", i32 296, i32 8}
!395 = !{ptr @dev_attr_congestion_on, !394, !"dev_attr_congestion_on", i1 false, i1 false}
!396 = !{ptr @.str.190, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/block/pktcdvd.c", i32 275, i32 22}
!398 = !{ptr @.str.191, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/block/pktcdvd.c", i32 287, i32 18}
!400 = !{ptr @.str.192, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/block/pktcdvd.c", i32 266, i32 8}
!402 = !{ptr @dev_attr_congestion_off, !401, !"dev_attr_congestion_off", i1 false, i1 false}
!403 = !{ptr @.str.193, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/block/pktcdvd.c", i32 219, i32 8}
!405 = !{ptr @dev_attr_size, !404, !"dev_attr_size", i1 false, i1 false}
!406 = !{ptr @.str.194, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/block/pktcdvd.c", i32 474, i32 39}
!408 = !{ptr @pkt_debugfs_root, !409, !"pkt_debugfs_root", i1 false, i1 false}
!409 = !{!"../drivers/block/pktcdvd.c", i32 104, i32 23}
!410 = !{ptr @debug_fops, !411, !"debug_fops", i1 false, i1 false}
!411 = !{!"../drivers/block/pktcdvd.c", i32 458, i32 37}
!412 = !{ptr @.str.195, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/block/pktcdvd.c", i32 2778, i32 3}
!414 = !{ptr @.str.196, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @pkt_remove_dev.__UNIQUE_ID_ddebug313, !413, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!416 = !{ptr @.str.197, !413, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.198, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/block/pktcdvd.c", i32 2798, i32 2}
!419 = !{ptr @pkt_remove_dev._entry, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @pkt_remove_dev._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @pkt_init.__key, !422, !"__key", i1 false, i1 false}
!422 = !{!"../drivers/block/pktcdvd.c", i32 2898, i32 2}
!423 = !{ptr @.str.199, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.200, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/block/pktcdvd.c", i32 2912, i32 3}
!426 = !{ptr @.str.201, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @pkt_init._entry, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @pkt_init._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.203, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/block/pktcdvd.c", i32 2926, i32 3}
!431 = !{ptr @pkt_init._entry.202, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @pkt_init._entry_ptr.204, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @pkt_sysfs_init.__key, !434, !"__key", i1 false, i1 false}
!434 = !{!"../drivers/block/pktcdvd.c", i32 423, i32 8}
!435 = !{ptr @.str.205, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/block/pktcdvd.c", i32 427, i32 3}
!437 = !{ptr @.str.206, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @pkt_sysfs_init._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @pkt_sysfs_init._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @class_pktcdvd_groups, !441, !"class_pktcdvd_groups", i1 false, i1 false}
!441 = !{!"../drivers/block/pktcdvd.c", i32 406, i32 1}
!442 = !{ptr @class_pktcdvd_group, !441, !"class_pktcdvd_group", i1 false, i1 false}
!443 = !{ptr @class_pktcdvd_attrs, !444, !"class_pktcdvd_attrs", i1 false, i1 false}
!444 = !{!"../drivers/block/pktcdvd.c", i32 400, i32 26}
!445 = !{ptr @.str.207, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/block/pktcdvd.c", i32 386, i32 8}
!447 = !{ptr @class_attr_add, !446, !"class_attr_add", i1 false, i1 false}
!448 = !{ptr @.str.208, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/block/pktcdvd.c", i32 372, i32 18}
!450 = !{ptr @.str.209, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/block/pktcdvd.c", i32 398, i32 8}
!452 = !{ptr @class_attr_remove, !451, !"class_attr_remove", i1 false, i1 false}
!453 = !{ptr @.str.210, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/block/pktcdvd.c", i32 365, i32 8}
!455 = !{ptr @class_attr_device_map, !454, !"class_attr_device_map", i1 false, i1 false}
!456 = !{ptr @.str.211, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/block/pktcdvd.c", i32 356, i32 24}
!458 = !{!"sp"}
!459 = !{i32 1, !"wchar_size", i32 2}
!460 = !{i32 1, !"min_enum_size", i32 4}
!461 = !{i32 8, !"branch-target-enforcement", i32 0}
!462 = !{i32 8, !"sign-return-address", i32 0}
!463 = !{i32 8, !"sign-return-address-all", i32 0}
!464 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!465 = !{i32 7, !"uwtable", i32 1}
!466 = !{i32 7, !"frame-pointer", i32 2}
!467 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!468 = !{!"branch_weights", i32 2000, i32 1}
!469 = !{i64 4824427}
!470 = !{i64 4824624}
!471 = !{i64 2152309857}
!472 = !{i64 985906, i64 985923}
!473 = !{i64 2148349517, i64 2148349522, i64 2148349535, i64 2148349579, i64 2148349613, i64 2148349634}
!474 = !{i64 2155444494, i64 2155444983, i64 2155444531, i64 2155444587, i64 2155444621, i64 2155444645, i64 2155444686, i64 2155444707, i64 2155444735, i64 2155444769}
!475 = !{i64 2148536124, i64 2148536150, i64 2148536179, i64 2148536213, i64 2148536244, i64 2148536267}
!476 = !{!"branch_weights", i32 1, i32 2000}
!477 = !{i64 2155427878, i64 2155428367, i64 2155427915, i64 2155427971, i64 2155428005, i64 2155428029, i64 2155428070, i64 2155428091, i64 2155428119, i64 2155428153}
!478 = !{i64 2155420616, i64 2155421105, i64 2155420653, i64 2155420709, i64 2155420743, i64 2155420767, i64 2155420808, i64 2155420829, i64 2155420857, i64 2155420891}
!479 = !{!"auto-init"}
!480 = !{i64 2155422365, i64 2155422854, i64 2155422402, i64 2155422458, i64 2155422492, i64 2155422516, i64 2155422557, i64 2155422578, i64 2155422606, i64 2155422640}
!481 = !{i64 2155167744, i64 2155168232, i64 2155167781, i64 2155167837, i64 2155167871, i64 2155167895, i64 2155167936, i64 2155167957, i64 2155167985, i64 2155168019}
!482 = !{i64 2148624576}
!483 = !{i64 2148539309, i64 2148539341, i64 2148539370, i64 2148539404, i64 2148539435, i64 2148539458}
!484 = !{i64 2148624805}
!485 = !{i64 2155181159, i64 2155181647, i64 2155181196, i64 2155181252, i64 2155181286, i64 2155181310, i64 2155181351, i64 2155181372, i64 2155181400, i64 2155181434}
!486 = !{i64 2155174597, i64 2155175085, i64 2155174634, i64 2155174690, i64 2155174724, i64 2155174748, i64 2155174789, i64 2155174810, i64 2155174838, i64 2155174872}
!487 = !{i64 2155309951}
!488 = !{i64 2155336682}
!489 = !{i64 2155185782, i64 2155186270, i64 2155185819, i64 2155185875, i64 2155185909, i64 2155185933, i64 2155185974, i64 2155185995, i64 2155186023, i64 2155186057}
!490 = !{i64 2155188654, i64 2155189142, i64 2155188691, i64 2155188747, i64 2155188781, i64 2155188805, i64 2155188846, i64 2155188867, i64 2155188895, i64 2155188929}
!491 = !{i64 2155244798, i64 2155245287, i64 2155244835, i64 2155244891, i64 2155244925, i64 2155244949, i64 2155244990, i64 2155245011, i64 2155245039, i64 2155245073}
!492 = !{i64 2155259493, i64 2155259982, i64 2155259530, i64 2155259586, i64 2155259620, i64 2155259644, i64 2155259685, i64 2155259706, i64 2155259734, i64 2155259768}
!493 = !{i64 2155184170, i64 2155184658, i64 2155184207, i64 2155184263, i64 2155184297, i64 2155184321, i64 2155184362, i64 2155184383, i64 2155184411, i64 2155184445}
!494 = !{i8 0, i8 2}
!495 = !{i64 2155222462, i64 2155222950, i64 2155222499, i64 2155222555, i64 2155222589, i64 2155222613, i64 2155222654, i64 2155222675, i64 2155222703, i64 2155222737}
!496 = !{i64 2155224157, i64 2155224646, i64 2155224194, i64 2155224250, i64 2155224284, i64 2155224308, i64 2155224349, i64 2155224370, i64 2155224398, i64 2155224432}
!497 = !{i64 2155225804, i64 2155226293, i64 2155225841, i64 2155225897, i64 2155225931, i64 2155225955, i64 2155225996, i64 2155226017, i64 2155226045, i64 2155226079}
!498 = !{i64 2155235633, i64 2155236122, i64 2155235670, i64 2155235726, i64 2155235760, i64 2155235784, i64 2155235825, i64 2155235846, i64 2155235874, i64 2155235908}
!499 = !{i64 2155270790, i64 2155271279, i64 2155270827, i64 2155270883, i64 2155270917, i64 2155270941, i64 2155270982, i64 2155271003, i64 2155271031, i64 2155271065}
!500 = !{i64 2155287813, i64 2155288302, i64 2155287850, i64 2155287906, i64 2155287940, i64 2155287964, i64 2155288005, i64 2155288026, i64 2155288054, i64 2155288088}
!501 = !{i64 2155206293, i64 2155206781, i64 2155206330, i64 2155206386, i64 2155206420, i64 2155206444, i64 2155206485, i64 2155206506, i64 2155206534, i64 2155206568}
!502 = !{i64 2155216849, i64 2155217337, i64 2155216886, i64 2155216942, i64 2155216976, i64 2155217000, i64 2155217041, i64 2155217062, i64 2155217090, i64 2155217124}
!503 = !{i64 2148538589, i64 2148538615, i64 2148538644, i64 2148538678, i64 2148538709, i64 2148538732}
