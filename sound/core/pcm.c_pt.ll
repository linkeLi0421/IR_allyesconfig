; ModuleID = '/llk/IR_all_yes/sound/core/pcm.c_pt.bc'
source_filename = "../sound/core/pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_pcm_format_name\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_format_name\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_format_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_name:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_name\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pcm_new_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_new_stream\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_new_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_new_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_new_stream\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_new_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pcm_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_new\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pcm_new_internal\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_new_internal\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_new_internal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_new_internal:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_new_internal\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_new_internal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pcm_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_notify\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_notify\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
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
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_notify = type { ptr, ptr, ptr, %struct.list_head }
%struct.snd_pcm_info = type { i32, i32, i32, i32, [64 x i8], [80 x i8], [32 x i8], i32, i32, i32, i32, %union.snd_pcm_sync_id, [64 x i8] }
%struct.snd_ctl_file = type { %struct.list_head, ptr, ptr, [2 x i32], %struct.wait_queue_head, %struct.spinlock, ptr, i32, %struct.list_head }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.snd_pcm_status64 = type { i32, [4 x i8], i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, [20 x i8] }
%struct.snd_pcm_mmap_status = type { i32, i32, [4 x i8], i32, [0 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@__UNIQUE_ID_author238 = internal constant [90 x i8] c"snd_pcm.author=Jaroslav Kysela <perex@perex.cz>, Abramo Bagnara <abramo@alsa-project.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [48 x i8] c"snd_pcm.description=Midlevel PCM code for ALSA.\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [32 x i8] c"snd_pcm.file=sound/core/snd-pcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [20 x i8] c"snd_pcm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@snd_pcm_format_names = internal constant { [53 x ptr], [44 x i8] } { [53 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], [44 x i8] zeroinitializer }, align 32
@__kstrtab_snd_pcm_format_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_name = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_name to i32), ptr @__kstrtab_snd_pcm_format_name, ptr @__kstrtabns_snd_pcm_format_name }, section "___ksymtab_gpl+snd_pcm_format_name", align 4
@snd_pcm_new_stream.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&pstr->oss.setup_mutex\00", [41 x i8] zeroinitializer }, align 32
@pcm_dev_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.61, ptr null, ptr null, ptr null, ptr null, ptr @pcm_dev_pm_ops }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcmC%iD%i%c\00", [20 x i8] zeroinitializer }, align 32
@snd_pcm_new_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 660, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in snd_pcm_stream_proc_init\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_pcm_new_stream\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sound/core/pcm.c\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_pcm_new_stream._entry_ptr = internal global ptr @snd_pcm_new_stream._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"subdevice #%i\00", [18 x i8] zeroinitializer }, align 32
@snd_pcm_new_stream._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 684, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@snd_pcm_new_stream._entry_ptr.10 = internal global ptr @snd_pcm_new_stream._entry.9, section ".printk_index", align 4
@__kstrtab_snd_pcm_new_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_new_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_new_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_new_stream to i32), ptr @__kstrtab_snd_pcm_new_stream, ptr @__kstrtabns_snd_pcm_new_stream }, section "___ksymtab+snd_pcm_new_stream", align 4
@__kstrtab_snd_pcm_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_new to i32), ptr @__kstrtab_snd_pcm_new, ptr @__kstrtabns_snd_pcm_new }, section "___ksymtab+snd_pcm_new", align 4
@__kstrtab_snd_pcm_new_internal = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_new_internal = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_new_internal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_new_internal to i32), ptr @__kstrtab_snd_pcm_new_internal, ptr @__kstrtabns_snd_pcm_new_internal }, section "___ksymtab+snd_pcm_new_internal", align 4
@snd_pcm_attach_substream.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&runtime->sleep\00", [16 x i8] zeroinitializer }, align 32
@snd_pcm_attach_substream.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&runtime->tsleep\00", [47 x i8] zeroinitializer }, align 32
@register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.146, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 52), ptr getelementptr (i8, ptr @register_mutex, i64 52) }, ptr @register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.147, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@snd_pcm_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @snd_pcm_devices, ptr @snd_pcm_devices }, [24 x i8] zeroinitializer }, align 32
@snd_pcm_notify_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @snd_pcm_notify_list, ptr @snd_pcm_notify_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_snd_pcm_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_notify to i32), ptr @__kstrtab_snd_pcm_notify, ptr @__kstrtabns_snd_pcm_notify }, section "___ksymtab+snd_pcm_notify", align 4
@__initcall__kmod_snd_pcm__244_1236_alsa_pcm_init6 = internal global ptr @alsa_pcm_init, section ".initcall6.init", align 4
@__exitcall_alsa_pcm_exit = internal global ptr @alsa_pcm_exit, section ".exitcall.exit", align 4
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"S8\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U8\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S16_LE\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S16_BE\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"U16_LE\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"U16_BE\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S24_LE\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S24_BE\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"U24_LE\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"U24_BE\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S32_LE\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S32_BE\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"U32_LE\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"U32_BE\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FLOAT_LE\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FLOAT_BE\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FLOAT64_LE\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FLOAT64_BE\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEC958_SUBFRAME_LE\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IEC958_SUBFRAME_BE\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MU_LAW\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A_LAW\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IMA_ADPCM\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MPEG\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GSM\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPECIAL\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S24_3LE\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S24_3BE\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U24_3LE\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U24_3BE\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S20_3LE\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S20_3BE\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U20_3LE\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U20_3BE\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S18_3LE\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S18_3BE\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U18_3LE\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U18_3BE\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"G723_24\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"G723_24_1B\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"G723_40\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"G723_40_1B\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSD_U8\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSD_U16_LE\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSD_U32_LE\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSD_U16_BE\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSD_U32_BE\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@pcm_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @do_pcm_suspend, ptr null, ptr @do_pcm_suspend, ptr null, ptr @do_pcm_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm%i%c\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xrun_debug\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"error %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"subdevice: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stream: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"id: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"subname: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"class: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"subclass: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"subdevices_count: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"subdevices_avail: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_pcm_stream_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.77, ptr @.str.78], [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLAYBACK\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CAPTURE\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sub%i\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hw_params\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sw_params\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xrun_injection\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"closed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no setup\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"access: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"format: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"subformat: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"channels: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rate: %u (%u/%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"period_size: %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buffer_size: %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OSS format: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OSS channels: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OSS rate: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OSS period bytes: %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OSS periods: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OSS period frames: %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_pcm_access_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MMAP_INTERLEAVED\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MMAP_NONINTERLEAVED\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MMAP_COMPLEX\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RW_INTERLEAVED\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RW_NONINTERLEAVED\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STD\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tstamp_mode: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"period_step: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"avail_min: %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"start_threshold: %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stop_threshold: %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"silence_threshold: %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"silence_size: %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"boundary: %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@snd_pcm_tstamp_mode_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.115, ptr @.str.116], [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENABLE\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"owner_pid   : %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trigger_time: %lld.%09lld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tstamp      : %lld.%09lld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delay       : %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"avail       : %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"avail_max   : %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-----\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hw_ptr      : %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"appl_ptr    : %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_pcm_state_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OPEN\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SETUP\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PREPARED\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RUNNING\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"XRUN\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DRAINING\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAUSED\00", [25 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUSPENDED\00", [22 x i8] zeroinitializer }, align 32
@_snd_pcm_new.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_pcm_dev_free, ptr @snd_pcm_dev_register, ptr @snd_pcm_dev_disconnect }, [20 x i8] zeroinitializer }, align 32
@_snd_pcm_new.internal_ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_pcm_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@_snd_pcm_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pcm->open_mutex\00", [47 x i8] zeroinitializer }, align 32
@_snd_pcm_new.__key.136 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pcm->open_wait\00", [16 x i8] zeroinitializer }, align 32
@snd_pcm_f_ops = external dso_local constant [2 x %struct.file_operations], align 4
@pcm_dev_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pcm_dev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pcm_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pcm_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcm_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_pcm_class, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_pcm_class = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcm_class_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcm_class\00", [22 x i8] zeroinitializer }, align 32
@pcm_class_show.strs = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143], [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"generic\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"multi\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"modem\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"digitizer\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_mutex\00", [17 x i8] zeroinitializer }, align 32
@snd_pcm_proc_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%02i-%02i: %s : %s\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" : playback %i\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" : capture %i\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1074025778, i64 2147767600, i64 3240121649]
@__sancov_gen_cov_switch_values.152 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 223, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"snd_pcm_format_names\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 166, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 643, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"pcm_dev_type\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 618, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 654, i32 27 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 660, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 673, i32 28 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 683, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 968, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 969, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"register_mutex\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [16 x i8] c"snd_pcm_devices\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 27, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"snd_pcm_notify_list\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 30, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 167, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 168, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 169, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 170, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 171, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 172, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 173, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 174, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 175, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 176, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 177, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 178, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 179, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 180, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 181, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 182, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 183, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 184, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 185, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 186, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 187, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 188, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 189, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 190, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 191, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 192, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 193, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 194, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 195, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 196, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 197, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 198, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 199, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 200, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 201, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 202, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 203, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 204, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 205, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 206, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 207, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 208, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 209, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 210, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 211, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 212, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 213, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 619, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"pcm_dev_pm_ops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 613, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 509, i32 16 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 517, i32 48 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 521, i32 48 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 345, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 349, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 350, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 351, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 352, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 353, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 354, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 355, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 356, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 357, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 358, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 359, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [21 x i8] c"snd_pcm_stream_names\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 240, i32 27 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 241, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 242, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 490, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 562, i32 16 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 572, i32 41 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 574, i32 41 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 576, i32 41 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 580, i32 49 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 385, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 389, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 392, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 393, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 394, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 395, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 396, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 397, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 398, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 401, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 402, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 403, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 404, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 405, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 406, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant [21 x i8] c"snd_pcm_access_names\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 256, i32 27 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 257, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 258, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 259, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 260, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 261, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 265, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 325, i32 10 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 429, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 430, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 431, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 432, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 433, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 434, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 435, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 436, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [26 x i8] c"snd_pcm_tstamp_mode_names\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 268, i32 27 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 269, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 270, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 461, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 462, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 463, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 465, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 467, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 468, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 469, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 470, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 471, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 472, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [20 x i8] c"snd_pcm_state_names\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 245, i32 27 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 246, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 247, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 248, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 249, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 250, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 251, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 252, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 253, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 709, i32 37 }
@___asan_gen_.599 = private unnamed_addr constant [13 x i8] c"internal_ops\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 714, i32 37 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 728, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 729, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [20 x i8] c"pcm_dev_attr_groups\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1041, i32 38 }
@___asan_gen_.617 = private unnamed_addr constant [19 x i8] c"pcm_dev_attr_group\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1037, i32 37 }
@___asan_gen_.620 = private unnamed_addr constant [14 x i8] c"pcm_dev_attrs\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1032, i32 26 }
@___asan_gen_.623 = private unnamed_addr constant [19 x i8] c"dev_attr_pcm_class\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1031, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant [5 x i8] c"strs\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1017, i32 21 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1018, i32 31 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1019, i32 29 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1020, i32 29 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1021, i32 33 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1025, i32 9 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1028, i32 22 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 28, i32 8 }
@___asan_gen_.656 = private unnamed_addr constant [19 x i8] c"snd_pcm_proc_entry\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1189, i32 31 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1176, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1179, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1182, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.669 = private constant [20 x i8] c"../sound/core/pcm.c\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.669, i32 1184, i32 3 }
@llvm.compiler.used = appending global [186 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_alsa_pcm_exit, ptr @__initcall__kmod_snd_pcm__244_1236_alsa_pcm_init6, ptr @__ksymtab_snd_pcm_format_name, ptr @__ksymtab_snd_pcm_new, ptr @__ksymtab_snd_pcm_new_internal, ptr @__ksymtab_snd_pcm_new_stream, ptr @__ksymtab_snd_pcm_notify, ptr @alsa_pcm_exit, ptr @snd_pcm_new_stream._entry, ptr @snd_pcm_new_stream._entry.9, ptr @snd_pcm_new_stream._entry_ptr, ptr @snd_pcm_new_stream._entry_ptr.10, ptr @.str, ptr @snd_pcm_format_names, ptr @snd_pcm_new_stream.__key, ptr @.str.1, ptr @pcm_dev_type, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_pcm_attach_substream.__key, ptr @.str.11, ptr @snd_pcm_attach_substream.__key.12, ptr @.str.13, ptr @register_mutex, ptr @snd_pcm_devices, ptr @snd_pcm_notify_list, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pcm_dev_pm_ops, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @snd_pcm_stream_names, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @snd_pcm_access_names, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @snd_pcm_tstamp_mode_names, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @snd_pcm_state_names, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @_snd_pcm_new.ops, ptr @_snd_pcm_new.internal_ops, ptr @_snd_pcm_new.__key, ptr @.str.135, ptr @_snd_pcm_new.__key.136, ptr @.str.137, ptr @pcm_dev_attr_groups, ptr @pcm_dev_attr_group, ptr @pcm_dev_attrs, ptr @dev_attr_pcm_class, ptr @.str.139, ptr @pcm_class_show.strs, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @snd_pcm_proc_entry, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_format_names to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_new_stream.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_dev_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_new_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_new_stream._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_attach_substream.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_attach_substream.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_notify_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_stream_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_access_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_tstamp_mode_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_state_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_snd_pcm_new.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_snd_pcm_new.internal_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_snd_pcm_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_snd_pcm_new.__key.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_dev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcm_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_class_show.strs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pcm_proc_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @snd_pcm_format_name(i32 noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %format)
  %cmp = icmp ugt i32 %format, 52
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [53 x ptr], ptr @snd_pcm_format_names, i32 0, i32 %format
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_new_stream(ptr noundef %pcm, i32 noundef %stream, i32 noundef %substream_count) #1 align 64 {
entry:
  %name.i110 = alloca [16 x i8], align 1
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream
  %setup_mutex = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 5, i32 1
  tail call void @__mutex_init(ptr noundef %setup_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_pcm_new_stream.__key) #13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %stream, ptr %arrayidx, align 8
  %pcm2 = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 1
  %1 = ptrtoint ptr %pcm2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pcm, ptr %pcm2, align 4
  %substream_count3 = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 2
  %2 = ptrtoint ptr %substream_count3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %substream_count, ptr %substream_count3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %substream_count)
  %tobool.not = icmp eq i32 %substream_count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 9
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm, align 8
  tail call void @snd_device_initialize(ptr noundef %dev, ptr noundef %4) #13
  %groups = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 9, i32 34
  %5 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pcm_dev_attr_groups, ptr %groups, align 8
  %type = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 9, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pcm_dev_type, ptr %type, align 4
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %device = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 2
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp = icmp eq i32 %stream, 0
  %cond = select i1 %cmp, i32 112, i32 99
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %10, i32 noundef %12, i32 noundef %cond) #13
  %internal = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 13
  %13 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %internal, align 8, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then9:                                         ; preds = %if.end
  %15 = ptrtoint ptr %pcm2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #13
  %device.i = getelementptr inbounds %struct.snd_pcm, ptr %16, i32 0, i32 2
  %17 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device.i, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  %cond.i = select i1 %cmp.i, i32 112, i32 99
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.62, i32 noundef %19, i32 noundef %cond.i) #13
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %16, align 8
  %proc_root.i = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %proc_root.i, align 8
  %call5.i = call ptr @snd_info_create_card_entry(ptr noundef %23, ptr noundef nonnull %name.i, ptr noundef %25) #13
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %do.end15, label %if.end.i

if.end.i:                                         ; preds = %if.then9
  %mode.i = getelementptr inbounds %struct.snd_info_entry, ptr %call5.i, i32 0, i32 1
  %26 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 16749, ptr %mode.i, align 4
  %proc_root6.i = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 6
  %27 = ptrtoint ptr %proc_root6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i, ptr %proc_root6.i, align 8
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %16, align 8
  %call9.i = call ptr @snd_info_create_card_entry(ptr noundef %29, ptr noundef nonnull @.str.63, ptr noundef nonnull %call5.i) #13
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then11.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %private_data2.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call9.i, i32 0, i32 7
  %30 = ptrtoint ptr %private_data2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call9.i, i32 0, i32 4
  %31 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @snd_pcm_stream_proc_info_read, ptr %c.i.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end.i.if.end12.i_crit_edge
  %32 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %16, align 8
  %34 = ptrtoint ptr %proc_root6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %proc_root6.i, align 8
  %call15.i = call ptr @snd_info_create_card_entry(ptr noundef %33, ptr noundef nonnull @.str.64, ptr noundef %35) #13
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end12.i.snd_pcm_stream_proc_init.exit.thread_crit_edge, label %if.then17.i

if.end12.i.snd_pcm_stream_proc_init.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_stream_proc_init.exit.thread

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %private_data2.i41.i = getelementptr inbounds %struct.snd_info_entry, ptr %call15.i, i32 0, i32 7
  %36 = ptrtoint ptr %private_data2.i41.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx, ptr %private_data2.i41.i, align 4
  %c.i42.i = getelementptr inbounds %struct.snd_info_entry, ptr %call15.i, i32 0, i32 4
  %37 = ptrtoint ptr %c.i42.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @snd_pcm_xrun_debug_read, ptr %c.i42.i, align 4
  %write.i = getelementptr inbounds %struct.snd_info_entry, ptr %call15.i, i32 0, i32 4, i32 0, i32 1
  %38 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @snd_pcm_xrun_debug_write, ptr %write.i, align 4
  %mode18.i = getelementptr inbounds %struct.snd_info_entry, ptr %call15.i, i32 0, i32 1
  %39 = ptrtoint ptr %mode18.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mode18.i, align 4
  %41 = or i16 %40, 128
  store i16 %41, ptr %mode18.i, align 4
  br label %snd_pcm_stream_proc_init.exit.thread

snd_pcm_stream_proc_init.exit.thread:             ; preds = %if.then17.i, %if.end12.i.snd_pcm_stream_proc_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #13
  br label %if.end19

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #13
  %42 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcm, align 8
  %dev17 = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.3) #16
  br label %cleanup

if.end19:                                         ; preds = %snd_pcm_stream_proc_init.exit.thread, %if.end.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %substream_count)
  %cmp20125 = icmp sgt i32 %substream_count, 0
  br i1 %cmp20125, label %for.body.lr.ph, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end19
  %substream32 = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 4
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %prev.0127 = phi ptr [ null, %for.body.lr.ph ], [ %call7.i.i, %list_add_tail.exit.for.body_crit_edge ]
  %idx.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 352) #17
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %for.body.cleanup_crit_edge, label %if.end24

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pcm, ptr %call7.i.i, align 8
  %pstr26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %pstr26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx, ptr %pstr26, align 4
  %number27 = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %number27 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %idx.0126, ptr %number27, align 4
  %stream28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %stream28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %stream, ptr %stream28, align 8
  %name = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 4
  %call29 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.8, i32 noundef %idx.0126)
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %buffer_bytes_max, align 4
  %cmp30 = icmp eq ptr %prev.0127, null
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %prev.0127, i32 0, i32 15
  %next.sink = select i1 %cmp30, ptr %substream32, ptr %next
  %52 = ptrtoint ptr %next.sink to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %next.sink, align 8
  %53 = ptrtoint ptr %internal to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %internal, align 8, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool35.not = icmp eq i8 %54, 0
  br i1 %tobool35.not, label %if.then36, label %if.end24.if.end52_crit_edge

if.end24.if.end52_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then36:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i110) #13
  %55 = call ptr @memset(ptr %name.i110, i32 255, i32 16)
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %60 = ptrtoint ptr %number27 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %number27, align 4
  %call.i111 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i110, ptr noundef nonnull @.str.80, i32 noundef %61) #13
  %62 = ptrtoint ptr %pstr26 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pstr26, align 4
  %proc_root.i112 = getelementptr inbounds %struct.snd_pcm_str, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %proc_root.i112 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %proc_root.i112, align 8
  %call4.i = call ptr @snd_info_create_card_entry(ptr noundef %59, ptr noundef nonnull %name.i110, ptr noundef %65) #13
  %tobool.not.i113 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i113, label %do.end42, label %if.end.i116

if.end.i116:                                      ; preds = %if.then36
  %mode.i114 = getelementptr inbounds %struct.snd_info_entry, ptr %call4.i, i32 0, i32 1
  %66 = ptrtoint ptr %mode.i114 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 16749, ptr %mode.i114, align 4
  %proc_root5.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 25
  %67 = ptrtoint ptr %proc_root5.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call4.i, ptr %proc_root5.i, align 8
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %call.i.i115 = call ptr @snd_info_create_card_entry(ptr noundef %71, ptr noundef nonnull @.str.63, ptr noundef nonnull %call4.i) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i115, null
  br i1 %tobool.not.i.i, label %if.end.i116.create_substream_info_entry.exit.i_crit_edge, label %if.then.i.i

if.end.i116.create_substream_info_entry.exit.i_crit_edge: ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_substream_info_entry.exit.i

if.then.i.i:                                      ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #15
  %private_data2.i.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i115, i32 0, i32 7
  %72 = ptrtoint ptr %private_data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %private_data2.i.i.i, align 4
  %c.i.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i115, i32 0, i32 4
  %73 = ptrtoint ptr %c.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @snd_pcm_substream_proc_info_read, ptr %c.i.i.i, align 4
  br label %create_substream_info_entry.exit.i

create_substream_info_entry.exit.i:               ; preds = %if.then.i.i, %if.end.i116.create_substream_info_entry.exit.i_crit_edge
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %78 = ptrtoint ptr %proc_root5.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %proc_root5.i, align 8
  %call.i31.i = call ptr @snd_info_create_card_entry(ptr noundef %77, ptr noundef nonnull @.str.81, ptr noundef %79) #13
  %tobool.not.i32.i = icmp eq ptr %call.i31.i, null
  br i1 %tobool.not.i32.i, label %create_substream_info_entry.exit.i.create_substream_info_entry.exit36.i_crit_edge, label %if.then.i35.i

create_substream_info_entry.exit.i.create_substream_info_entry.exit36.i_crit_edge: ; preds = %create_substream_info_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_substream_info_entry.exit36.i

if.then.i35.i:                                    ; preds = %create_substream_info_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %private_data2.i.i33.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i31.i, i32 0, i32 7
  %80 = ptrtoint ptr %private_data2.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i, ptr %private_data2.i.i33.i, align 4
  %c.i.i34.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i31.i, i32 0, i32 4
  %81 = ptrtoint ptr %c.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @snd_pcm_substream_proc_hw_params_read, ptr %c.i.i34.i, align 4
  br label %create_substream_info_entry.exit36.i

create_substream_info_entry.exit36.i:             ; preds = %if.then.i35.i, %create_substream_info_entry.exit.i.create_substream_info_entry.exit36.i_crit_edge
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call7.i.i, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %86 = ptrtoint ptr %proc_root5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %proc_root5.i, align 8
  %call.i38.i = call ptr @snd_info_create_card_entry(ptr noundef %85, ptr noundef nonnull @.str.82, ptr noundef %87) #13
  %tobool.not.i39.i = icmp eq ptr %call.i38.i, null
  br i1 %tobool.not.i39.i, label %create_substream_info_entry.exit36.i.create_substream_info_entry.exit43.i_crit_edge, label %if.then.i42.i

create_substream_info_entry.exit36.i.create_substream_info_entry.exit43.i_crit_edge: ; preds = %create_substream_info_entry.exit36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_substream_info_entry.exit43.i

if.then.i42.i:                                    ; preds = %create_substream_info_entry.exit36.i
  call void @__sanitizer_cov_trace_pc() #15
  %private_data2.i.i40.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i38.i, i32 0, i32 7
  %88 = ptrtoint ptr %private_data2.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i, ptr %private_data2.i.i40.i, align 4
  %c.i.i41.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i38.i, i32 0, i32 4
  %89 = ptrtoint ptr %c.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @snd_pcm_substream_proc_sw_params_read, ptr %c.i.i41.i, align 4
  br label %create_substream_info_entry.exit43.i

create_substream_info_entry.exit43.i:             ; preds = %if.then.i42.i, %create_substream_info_entry.exit36.i.create_substream_info_entry.exit43.i_crit_edge
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call7.i.i, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 8
  %94 = ptrtoint ptr %proc_root5.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %proc_root5.i, align 8
  %call.i45.i = call ptr @snd_info_create_card_entry(ptr noundef %93, ptr noundef nonnull @.str.83, ptr noundef %95) #13
  %tobool.not.i46.i = icmp eq ptr %call.i45.i, null
  br i1 %tobool.not.i46.i, label %create_substream_info_entry.exit43.i.create_substream_info_entry.exit50.i_crit_edge, label %if.then.i49.i

create_substream_info_entry.exit43.i.create_substream_info_entry.exit50.i_crit_edge: ; preds = %create_substream_info_entry.exit43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_substream_info_entry.exit50.i

if.then.i49.i:                                    ; preds = %create_substream_info_entry.exit43.i
  call void @__sanitizer_cov_trace_pc() #15
  %private_data2.i.i47.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i45.i, i32 0, i32 7
  %96 = ptrtoint ptr %private_data2.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i, ptr %private_data2.i.i47.i, align 4
  %c.i.i48.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i45.i, i32 0, i32 4
  %97 = ptrtoint ptr %c.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @snd_pcm_substream_proc_status_read, ptr %c.i.i48.i, align 4
  br label %create_substream_info_entry.exit50.i

create_substream_info_entry.exit50.i:             ; preds = %if.then.i49.i, %create_substream_info_entry.exit43.i.create_substream_info_entry.exit50.i_crit_edge
  %98 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call7.i.i, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %102 = ptrtoint ptr %proc_root5.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %proc_root5.i, align 8
  %call.i52.i = call ptr @snd_info_create_card_entry(ptr noundef %101, ptr noundef nonnull @.str.84, ptr noundef %103) #13
  %tobool.not.i53.i = icmp eq ptr %call.i52.i, null
  br i1 %tobool.not.i53.i, label %create_substream_info_entry.exit50.i.snd_pcm_substream_proc_init.exit.thread_crit_edge, label %if.then12.i

create_substream_info_entry.exit50.i.snd_pcm_substream_proc_init.exit.thread_crit_edge: ; preds = %create_substream_info_entry.exit50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_substream_proc_init.exit.thread

if.then12.i:                                      ; preds = %create_substream_info_entry.exit50.i
  call void @__sanitizer_cov_trace_pc() #15
  %private_data2.i.i54.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i52.i, i32 0, i32 7
  %104 = ptrtoint ptr %private_data2.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i, ptr %private_data2.i.i54.i, align 4
  %c.i.i55.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i52.i, i32 0, i32 4
  %105 = ptrtoint ptr %c.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %c.i.i55.i, align 4
  %write.i117 = getelementptr inbounds %struct.snd_info_entry, ptr %call.i52.i, i32 0, i32 4, i32 0, i32 1
  %106 = ptrtoint ptr %write.i117 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @snd_pcm_xrun_injection_write, ptr %write.i117, align 4
  %mode13.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i52.i, i32 0, i32 1
  %107 = ptrtoint ptr %mode13.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -32640, ptr %mode13.i, align 4
  br label %snd_pcm_substream_proc_init.exit.thread

snd_pcm_substream_proc_init.exit.thread:          ; preds = %if.then12.i, %create_substream_info_entry.exit50.i.snd_pcm_substream_proc_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i110) #13
  br label %if.end52

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i110) #13
  %108 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pcm, align 8
  %dev44 = getelementptr inbounds %struct.snd_card, ptr %109, i32 0, i32 27
  %110 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev44, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.3) #16
  %next49 = getelementptr inbounds %struct.snd_pcm_substream, ptr %prev.0127, i32 0, i32 15
  %next49.sink = select i1 %cmp30, ptr %substream32, ptr %next49
  %112 = ptrtoint ptr %next49.sink to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %next49.sink, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end52:                                         ; preds = %snd_pcm_substream_proc_init.exit.thread, %if.end24.if.end52_crit_edge
  %self_group = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 17
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 18
  %113 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %self_group, ptr %group, align 8
  call void @snd_pcm_group_init(ptr noundef %self_group) #13
  %link_list = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 16
  %substreams = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 17, i32 2
  %prev.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 17, i32 2, i32 1
  %114 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i, align 8
  %call.i.i119 = call zeroext i1 @__list_add_valid(ptr noundef %link_list, ptr noundef %115, ptr noundef %substreams) #13
  br i1 %call.i.i119, label %if.end.i.i, label %if.end52.list_add_tail.exit_crit_edge

if.end52.list_add_tail.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %link_list, ptr %prev.i, align 8
  %117 = ptrtoint ptr %link_list to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %substreams, ptr %link_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 16, i32 1
  %118 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev3.i.i, align 8
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %link_list, ptr %115, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end52.list_add_tail.exit_crit_edge
  %mmap_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %call7.i.i, i32 0, i32 20
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mmap_count, i32 noundef 4) #13
  %120 = ptrtoint ptr %mmap_count to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 0, ptr %mmap_count, align 8
  %inc = add nuw nsw i32 %idx.0126, 1
  %exitcond.not = icmp eq i32 %inc, %substream_count
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %do.end42, %for.body.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end42 ], [ -12, %do.end15 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_initialize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_group_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_new(ptr noundef %card, ptr noundef %id, i32 noundef %device, i32 noundef %playback_count, i32 noundef %capture_count, ptr noundef %rpcm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_snd_pcm_new(ptr noundef %card, ptr noundef %id, i32 noundef %device, i32 noundef %playback_count, i32 noundef %capture_count, i1 noundef zeroext false, ptr noundef %rpcm)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_snd_pcm_new(ptr noundef %card, ptr noundef %id, i32 noundef %device, i32 noundef %playback_count, i32 noundef %capture_count, i1 noundef zeroext %internal, ptr noundef writeonly %rpcm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %internal to i8
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !367

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 718, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %tobool24.not = icmp eq ptr %rpcm, null
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %rpcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rpcm, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 2464) #17
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %call7.i.i, align 8
  %device31 = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %device31 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %device, ptr %device31, align 4
  %internal33 = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %internal33 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %internal33, align 8
  %open_mutex = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %open_mutex, ptr noundef nonnull @.str.135, ptr noundef nonnull @_snd_pcm_new.__key) #13
  %open_wait = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %open_wait, ptr noundef nonnull @.str.137, ptr noundef nonnull @_snd_pcm_new.__key.136) #13
  %list = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 8
  %tobool41.not = icmp eq ptr %id, null
  br i1 %tobool41.not, label %if.end29.if.end45_crit_edge, label %if.then42

if.end29.if.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %id43 = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 6
  %call44 = tail call i32 @strscpy(ptr noundef %id43, ptr noundef nonnull %id, i32 noundef 64) #13
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end29.if.end45_crit_edge
  %call46 = tail call i32 @snd_pcm_new_stream(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef %playback_count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %if.end45.if.end.i_crit_edge, label %if.end48

if.end45.if.end.i_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end48:                                         ; preds = %if.end45
  %call49 = tail call i32 @snd_pcm_new_stream(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef %capture_count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.if.end.i_crit_edge, label %if.end52

if.end48.if.end.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end52:                                         ; preds = %if.end48
  %cond = select i1 %internal, ptr @_snd_pcm_new.internal_ops, ptr @_snd_pcm_new.ops
  %call54 = tail call i32 @snd_device_new(ptr noundef nonnull %card, i32 noundef 4, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end52.if.end.i_crit_edge, label %if.end57

if.end52.if.end.i_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end57:                                         ; preds = %if.end52
  br i1 %tobool24.not, label %if.end57.cleanup_crit_edge, label %if.then59

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %rpcm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %rpcm, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end52.if.end.i_crit_edge, %if.end48.if.end.i_crit_edge, %if.end45.if.end.i_crit_edge
  %err.0 = phi i32 [ %call46, %if.end45.if.end.i_crit_edge ], [ %call49, %if.end48.if.end.i_crit_edge ], [ %call54, %if.end52.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %internal33 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %internal33, align 8, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %for.cond.preheader.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %.pn1.i = load ptr, ptr @snd_pcm_notify_list, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, @snd_pcm_notify_list
  br i1 %cmp.not2.i, label %for.cond.preheader.i.if.end7.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end7.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn1.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %n_unregister.i = getelementptr i8, ptr %.pn3.i, i32 -4
  %10 = ptrtoint ptr %n_unregister.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %n_unregister.i, align 4
  %call.i = tail call i32 %11(ptr noundef nonnull %call7.i.i) #13
  %12 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @snd_pcm_notify_list
  br i1 %cmp.not.i, label %for.body.i.if.end7.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.end7.i:                                        ; preds = %for.body.i.if.end7.i_crit_edge, %for.cond.preheader.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %private_free.i = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_free.i, align 4
  %tobool8.not.i = icmp eq ptr %14, null
  br i1 %tobool8.not.i, label %if.end7.i.snd_pcm_free.exit_crit_edge, label %if.then9.i

if.end7.i.snd_pcm_free.exit_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_free.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %14(ptr noundef nonnull %call7.i.i) #13
  br label %snd_pcm_free.exit

snd_pcm_free.exit:                                ; preds = %if.then9.i, %if.end7.i.snd_pcm_free.exit_crit_edge
  tail call void @snd_pcm_lib_preallocate_free_for_all(ptr noundef nonnull %call7.i.i) #13
  %streams.i = getelementptr inbounds %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 8
  tail call fastcc void @snd_pcm_free_stream(ptr noundef %streams.i) #13
  %arrayidx13.i = getelementptr %struct.snd_pcm, ptr %call7.i.i, i32 0, i32 8, i32 1
  tail call fastcc void @snd_pcm_free_stream(ptr noundef %arrayidx13.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %snd_pcm_free.exit, %if.then59, %if.end57.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %err.0, %snd_pcm_free.exit ], [ -12, %if.end26.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_new_internal(ptr noundef %card, ptr noundef %id, i32 noundef %device, i32 noundef %playback_count, i32 noundef %capture_count, ptr noundef %rpcm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_snd_pcm_new(ptr noundef %card, ptr noundef %id, i32 noundef %device, i32 noundef %playback_count, i32 noundef %capture_count, i1 noundef zeroext true, ptr noundef %rpcm)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_attach_substream(ptr noundef %pcm, i32 noundef %stream, ptr nocapture noundef readonly %file, ptr noundef writeonly %rsubstream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pcm, null
  %tobool1.not = icmp eq ptr %rsubstream, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !367

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 894, i32 noundef 9, ptr noundef null) #13
  br label %cleanup159

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp.not = icmp eq i32 %stream, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stream)
  %cmp26 = icmp ne i32 %stream, 1
  %spec.select224 = xor i1 %cmp.not, %cmp26
  br i1 %spec.select224, label %do.end42, label %if.end58, !prof !367

do.end42:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 897, i32 noundef 9, ptr noundef null) #13
  br label %cleanup159

if.end58:                                         ; preds = %if.end24
  %0 = ptrtoint ptr %rsubstream to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rsubstream, align 4
  %substream59 = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 4
  %1 = ptrtoint ptr %substream59 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %substream59, align 8
  %cmp60 = icmp eq ptr %2, null
  br i1 %cmp60, label %if.end58.cleanup159_crit_edge, label %lor.lhs.false

if.end58.cleanup159_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

lor.lhs.false:                                    ; preds = %if.end58
  %substream_count = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 2
  %3 = ptrtoint ptr %substream_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %substream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp61 = icmp eq i32 %4, 0
  br i1 %cmp61, label %lor.lhs.false.cleanup159_crit_edge, label %if.end63

lor.lhs.false.cleanup159_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end63:                                         ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 8
  %call = tail call i32 @snd_ctl_get_preferred_subdevice(ptr noundef %6, i32 noundef 0) #13
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 3
  %7 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %info_flags, align 8
  %and = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %if.end63.if.end77_crit_edge, label %if.then66

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then66:                                        ; preds = %if.end63
  %lnot.ext69 = zext i1 %cmp.not to i32
  %substream72 = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %lnot.ext69, i32 4
  %9 = ptrtoint ptr %substream72 to i32
  call void @__asan_load4_noabort(i32 %9)
  %substream.0235 = load ptr, ptr %substream72, align 4
  %tobool73.not236 = icmp eq ptr %substream.0235, null
  br i1 %tobool73.not236, label %if.then66.if.end77_crit_edge, label %if.then66.for.body_crit_edge

if.then66.for.body_crit_edge:                     ; preds = %if.then66
  br label %for.body

if.then66.if.end77_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0237, i32 0, i32 15
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %substream.0 = load ptr, ptr %next, align 4
  %tobool73.not = icmp eq ptr %substream.0, null
  br i1 %tobool73.not, label %for.cond.if.end77_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.if.end77_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then66.for.body_crit_edge
  %substream.0237 = phi ptr [ %substream.0, %for.cond.for.body_crit_edge ], [ %substream.0235, %if.then66.for.body_crit_edge ]
  %ref_count = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0237, i32 0, i32 19
  %11 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp74 = icmp sgt i32 %12, 0
  br i1 %cmp74, label %for.body.cleanup159_crit_edge, label %for.cond

for.body.cleanup159_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end77:                                         ; preds = %for.cond.if.end77_crit_edge, %if.then66.if.end77_crit_edge, %if.end63.if.end77_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %13 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags, align 4
  %and78 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %for.cond109.preheader, label %if.then80

for.cond109.preheader:                            ; preds = %if.end77
  %15 = ptrtoint ptr %substream59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %substream.3241 = load ptr, ptr %substream59, align 4
  %cond242 = icmp eq ptr %substream.3241, null
  br i1 %cond242, label %for.cond109.preheader.cleanup159_crit_edge, label %for.body111.lr.ph

for.cond109.preheader.cleanup159_crit_edge:       ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

for.body111.lr.ph:                                ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp114 = icmp eq i32 %call, -1
  br label %for.body111

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp81 = icmp slt i32 %call, 0
  br i1 %cmp81, label %if.then82, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %if.then80
  %16 = ptrtoint ptr %substream59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %substream.1238 = load ptr, ptr %substream59, align 4
  %tobool90.not239 = icmp eq ptr %substream.1238, null
  br i1 %tobool90.not239, label %for.cond89.preheader.cleanup159_crit_edge, label %for.cond89.preheader.for.body91_crit_edge

for.cond89.preheader.for.body91_crit_edge:        ; preds = %for.cond89.preheader
  br label %for.body91

for.cond89.preheader.cleanup159_crit_edge:        ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.then82:                                        ; preds = %if.then80
  %17 = ptrtoint ptr %substream_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %substream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp84 = icmp ugt i32 %18, 1
  br i1 %cmp84, label %if.then82.cleanup159_crit_edge, label %if.end98

if.then82.cleanup159_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

for.body91:                                       ; preds = %for.inc95.for.body91_crit_edge, %for.cond89.preheader.for.body91_crit_edge
  %substream.1240 = phi ptr [ %substream.1, %for.inc95.for.body91_crit_edge ], [ %substream.1238, %for.cond89.preheader.for.body91_crit_edge ]
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.1240, i32 0, i32 3
  %19 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %call)
  %cmp92 = icmp eq i32 %20, %call
  br i1 %cmp92, label %for.body91.if.end101_crit_edge, label %for.inc95

for.body91.if.end101_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

for.inc95:                                        ; preds = %for.body91
  %next96 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.1240, i32 0, i32 15
  %21 = ptrtoint ptr %next96 to i32
  call void @__asan_load4_noabort(i32 %21)
  %substream.1 = load ptr, ptr %next96, align 4
  %tobool90.not = icmp eq ptr %substream.1, null
  br i1 %tobool90.not, label %for.inc95.cleanup159_crit_edge, label %for.inc95.for.body91_crit_edge

for.inc95.for.body91_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91

for.inc95.cleanup159_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end98:                                         ; preds = %if.then82
  %22 = ptrtoint ptr %substream59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream59, align 8
  %tobool99.not = icmp eq ptr %23, null
  br i1 %tobool99.not, label %if.end98.cleanup159_crit_edge, label %if.end98.if.end101_crit_edge

if.end98.if.end101_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.end98.cleanup159_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end101:                                        ; preds = %if.end98.if.end101_crit_edge, %for.body91.if.end101_crit_edge
  %substream.2230 = phi ptr [ %23, %if.end98.if.end101_crit_edge ], [ %substream.1240, %for.body91.if.end101_crit_edge ]
  %ref_count102 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.2230, i32 0, i32 19
  %24 = ptrtoint ptr %ref_count102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ref_count102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp103 = icmp sgt i32 %25, 0
  br i1 %cmp103, label %if.end105, label %if.end101.cleanup159_crit_edge

if.end101.cleanup159_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end105:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nuw i32 %25, 1
  %26 = ptrtoint ptr %ref_count102 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc, ptr %ref_count102, align 4
  %27 = ptrtoint ptr %rsubstream to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %substream.2230, ptr %rsubstream, align 4
  br label %cleanup159

for.body111:                                      ; preds = %for.inc120.for.body111_crit_edge, %for.body111.lr.ph
  %substream.3243 = phi ptr [ %substream.3241, %for.body111.lr.ph ], [ %substream.3, %for.inc120.for.body111_crit_edge ]
  %ref_count112 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.3243, i32 0, i32 19
  %28 = ptrtoint ptr %ref_count112 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ref_count112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp113 = icmp sgt i32 %29, 0
  br i1 %cmp113, label %for.body111.for.inc120_crit_edge, label %land.lhs.true

for.body111.for.inc120_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc120

land.lhs.true:                                    ; preds = %for.body111
  br i1 %cmp114, label %land.lhs.true.if.end125_crit_edge, label %lor.lhs.false115

land.lhs.true.if.end125_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

lor.lhs.false115:                                 ; preds = %land.lhs.true
  %number116 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.3243, i32 0, i32 3
  %30 = ptrtoint ptr %number116 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %number116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %call)
  %cmp117 = icmp eq i32 %31, %call
  br i1 %cmp117, label %lor.lhs.false115.if.end125_crit_edge, label %lor.lhs.false115.for.inc120_crit_edge

lor.lhs.false115.for.inc120_crit_edge:            ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc120

lor.lhs.false115.if.end125_crit_edge:             ; preds = %lor.lhs.false115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

for.inc120:                                       ; preds = %lor.lhs.false115.for.inc120_crit_edge, %for.body111.for.inc120_crit_edge
  %next121 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.3243, i32 0, i32 15
  %32 = ptrtoint ptr %next121 to i32
  call void @__asan_load4_noabort(i32 %32)
  %substream.3 = load ptr, ptr %next121, align 4
  %cond = icmp eq ptr %substream.3, null
  br i1 %cond, label %for.inc120.cleanup159_crit_edge, label %for.inc120.for.body111_crit_edge

for.inc120.for.body111_crit_edge:                 ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body111

for.inc120.cleanup159_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end125:                                        ; preds = %lor.lhs.false115.if.end125_crit_edge, %land.lhs.true.if.end125_crit_edge
  %ref_count112.le = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.3243, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 864) #17
  %cmp127 = icmp eq ptr %call7.i.i, null
  br i1 %cmp127, label %if.end125.cleanup159_crit_edge, label %if.end129

if.end125.cleanup159_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end129:                                        ; preds = %if.end125
  %call130 = tail call noalias ptr @alloc_pages_exact(i32 noundef 4096, i32 noundef 3264) #18
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %call7.i.i, i32 0, i32 37
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call130, ptr %status, align 4
  %cmp132 = icmp eq ptr %call130, null
  br i1 %cmp132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup159

if.end134:                                        ; preds = %if.end129
  %35 = call ptr @memset(ptr %call130, i32 0, i32 4096)
  %call136 = tail call noalias ptr @alloc_pages_exact(i32 noundef 4096, i32 noundef 3264) #18
  %control = getelementptr inbounds %struct.snd_pcm_runtime, ptr %call7.i.i, i32 0, i32 38
  %36 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call136, ptr %control, align 8
  %cmp138 = icmp eq ptr %call136, null
  br i1 %cmp138, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %status, align 4
  tail call void @free_pages_exact(ptr noundef %38, i32 noundef 4096) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup159

if.end141:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  %39 = call ptr @memset(ptr %call136, i32 0, i32 4096)
  %sleep = getelementptr inbounds %struct.snd_pcm_runtime, ptr %call7.i.i, i32 0, i32 40
  tail call void @__init_waitqueue_head(ptr noundef %sleep, ptr noundef nonnull @.str.11, ptr noundef nonnull @snd_pcm_attach_substream.__key) #13
  %tsleep = getelementptr inbounds %struct.snd_pcm_runtime, ptr %call7.i.i, i32 0, i32 41
  tail call void @__init_waitqueue_head(ptr noundef %tsleep, ptr noundef nonnull @.str.13, ptr noundef nonnull @snd_pcm_attach_substream.__key.12) #13
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %status, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %41, align 8
  %runtime150 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.3243, i32 0, i32 11
  %43 = ptrtoint ptr %runtime150 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %runtime150, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %44 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private_data, align 8
  %private_data151 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.3243, i32 0, i32 2
  %46 = ptrtoint ptr %private_data151 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %private_data151, align 4
  %47 = ptrtoint ptr %ref_count112.le to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %ref_count112.le, align 4
  %48 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %f_flags, align 4
  %f_flags154 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.3243, i32 0, i32 21
  %50 = ptrtoint ptr %f_flags154 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %f_flags154, align 4
  %51 = tail call i32 @llvm.read_register.i32(metadata !356) #13
  %and.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 78
  %55 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %thread_pid.i, align 16
  %call157 = tail call fastcc ptr @get_pid(ptr noundef %56)
  %pid = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.3243, i32 0, i32 23
  %57 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %pid, align 4
  %substream_opened = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 3
  %58 = ptrtoint ptr %substream_opened to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %substream_opened, align 4
  %inc158 = add i32 %59, 1
  store i32 %inc158, ptr %substream_opened, align 4
  %60 = ptrtoint ptr %rsubstream to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %substream.3243, ptr %rsubstream, align 4
  br label %cleanup159

cleanup159:                                       ; preds = %if.end141, %if.then139, %if.then133, %if.end125.cleanup159_crit_edge, %for.inc120.cleanup159_crit_edge, %if.end105, %if.end101.cleanup159_crit_edge, %if.end98.cleanup159_crit_edge, %for.inc95.cleanup159_crit_edge, %if.then82.cleanup159_crit_edge, %for.cond89.preheader.cleanup159_crit_edge, %for.cond109.preheader.cleanup159_crit_edge, %for.body.cleanup159_crit_edge, %lor.lhs.false.cleanup159_crit_edge, %if.end58.cleanup159_crit_edge, %do.end42, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ -22, %do.end42 ], [ 0, %if.end105 ], [ -12, %if.then133 ], [ -12, %if.then139 ], [ 0, %if.end141 ], [ -19, %lor.lhs.false.cleanup159_crit_edge ], [ -19, %if.end58.cleanup159_crit_edge ], [ -22, %if.then82.cleanup159_crit_edge ], [ -19, %if.end98.cleanup159_crit_edge ], [ -77, %if.end101.cleanup159_crit_edge ], [ -12, %if.end125.cleanup159_crit_edge ], [ -11, %for.cond109.preheader.cleanup159_crit_edge ], [ -19, %for.cond89.preheader.cleanup159_crit_edge ], [ -11, %for.inc120.cleanup159_crit_edge ], [ -19, %for.inc95.cleanup159_crit_edge ], [ -11, %for.body.cleanup159_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_get_preferred_subdevice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %pid) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #13, !srcloc !368
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !367

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !369

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i) #13
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %pid
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_pcm_detach_substream(ptr noundef %substream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %substream, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.rhs.do.end_crit_edge, label %if.end25, !prof !367

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 987, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_free, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef nonnull %1) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status, align 4
  tail call void @free_pages_exact(ptr noundef %5, i32 noundef 4096) #13
  %control = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control, align 8
  tail call void @free_pages_exact(ptr noundef %7, i32 noundef 4096) #13
  %rules = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 47, i32 4
  %8 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rules, align 8
  tail call void @kfree(ptr noundef %9) #13
  %timer = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 12
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %tobool30.not = icmp eq ptr %11, null
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.snd_timer, ptr %11, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %12 = ptrtoint ptr %runtime1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %runtime1, align 4
  %13 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %timer, align 4
  %lock35 = getelementptr inbounds %struct.snd_timer, ptr %14, i32 0, i32 13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock35) #13
  br label %if.end37

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %runtime1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %runtime1, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31
  tail call void @kfree(ptr noundef nonnull %1) #13
  %pid = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 23
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pid, align 4
  tail call void @put_pid(ptr noundef %17) #13
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pid, align 4
  %pstr = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 1
  %19 = ptrtoint ptr %pstr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pstr, align 4
  %substream_opened = getelementptr inbounds %struct.snd_pcm_str, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %substream_opened to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %substream_opened, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %substream_opened, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_notify(ptr noundef %notify, i32 noundef %nfree) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %notify, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %n_unregister = getelementptr inbounds %struct.snd_pcm_notify, ptr %notify, i32 0, i32 2
  %2 = ptrtoint ptr %n_unregister to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %n_unregister, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %lor.rhs

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false2
  %n_disconnect = getelementptr inbounds %struct.snd_pcm_notify, ptr %notify, i32 0, i32 1
  %4 = ptrtoint ptr %n_disconnect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n_disconnect, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.rhs.do.end_crit_edge, label %if.end27, !prof !367

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1146, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end27:                                         ; preds = %lor.rhs
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfree)
  %tobool28.not = icmp eq i32 %nfree, 0
  %list39 = getelementptr inbounds %struct.snd_pcm_notify, ptr %notify, i32 0, i32 3
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list39) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.snd_pcm_notify, ptr %notify, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %12 = ptrtoint ptr %list39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list39, align 4
  %prev.i = getelementptr inbounds %struct.snd_pcm_notify, ptr %notify, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %.pn7278 = load ptr, ptr @snd_pcm_devices, align 4
  %cmp.not79 = icmp eq ptr %.pn7278, @snd_pcm_devices
  br i1 %cmp.not79, label %list_del.exit.if.end58_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.if.end58_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %.pn7280 = phi ptr [ %.pn72, %for.body.for.body_crit_edge ], [ %.pn7278, %list_del.exit.for.body_crit_edge ]
  %pcm.0 = getelementptr i8, ptr %.pn7280, i32 -4
  %14 = ptrtoint ptr %n_unregister to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %n_unregister, align 4
  %call = tail call i32 %15(ptr noundef %pcm.0) #13
  %16 = ptrtoint ptr %.pn7280 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn72 = load ptr, ptr %.pn7280, align 4
  %cmp.not = icmp eq ptr %.pn72, @snd_pcm_devices
  br i1 %cmp.not, label %for.body.if.end58_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.else:                                          ; preds = %if.end27
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_pcm_notify_list, i32 0, i32 1), align 4
  %call.i.i75 = tail call zeroext i1 @__list_add_valid(ptr noundef %list39, ptr noundef %17, ptr noundef nonnull @snd_pcm_notify_list) #13
  br i1 %call.i.i75, label %if.end.i.i76, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i76:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %list39, ptr getelementptr inbounds (%struct.list_head, ptr @snd_pcm_notify_list, i32 0, i32 1), align 4
  %18 = ptrtoint ptr %list39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_pcm_notify_list, ptr %list39, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_pcm_notify, ptr %notify, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list39, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i76, %if.else.list_add_tail.exit_crit_edge
  %.pn81 = load ptr, ptr @snd_pcm_devices, align 4
  %cmp45.not82 = icmp eq ptr %.pn81, @snd_pcm_devices
  br i1 %cmp45.not82, label %list_add_tail.exit.if.end58_crit_edge, label %list_add_tail.exit.for.body48_crit_edge

list_add_tail.exit.for.body48_crit_edge:          ; preds = %list_add_tail.exit
  br label %for.body48

list_add_tail.exit.if.end58_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %list_add_tail.exit.for.body48_crit_edge
  %.pn83 = phi ptr [ %.pn, %for.body48.for.body48_crit_edge ], [ %.pn81, %list_add_tail.exit.for.body48_crit_edge ]
  %pcm.1 = getelementptr i8, ptr %.pn83, i32 -4
  %21 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %notify, align 4
  %call50 = tail call i32 %22(ptr noundef %pcm.1) #13
  %23 = ptrtoint ptr %.pn83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn83, align 4
  %cmp45.not = icmp eq ptr %.pn, @snd_pcm_devices
  br i1 %cmp45.not, label %for.body48.if.end58_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body48

for.body48.if.end58_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.end58:                                         ; preds = %for.body48.if.end58_crit_edge, %list_add_tail.exit.if.end58_crit_edge, %for.body.if.end58_crit_edge, %list_del.exit.if.end58_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_pcm_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @snd_ctl_unregister_ioctl(ptr noundef nonnull @snd_pcm_control_ioctl) #13
  %0 = load ptr, ptr @snd_pcm_proc_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_unregister_ioctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_control_ioctl(ptr noundef readonly %card, ptr nocapture noundef writeonly %control, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 -2147199696, label %sw.bb
    i32 -1054845647, label %sw.bb16
    i32 1074025778, label %sw.bb106
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 92) #13
  %1 = inttoptr i32 %arg to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !356) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !370
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #13, !srcloc !373
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %sw.bb
  %asmresult1 = extractvalue { i32, i32 } %5, 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.else.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @snd_pcm_devices, %if.end ], [ %.pn.i, %if.else.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @snd_pcm_devices
  br i1 %cmp.not.i, label %for.cond.i.snd_pcm_next.exit_crit_edge, label %for.body.i

for.cond.i.snd_pcm_next.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_next.exit

for.body.i:                                       ; preds = %for.cond.i
  %pcm.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %7 = ptrtoint ptr %pcm.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm.0.i, align 8
  %cmp2.i = icmp eq ptr %8, %card
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %device3.i = getelementptr i8, ptr %.pn.i, i32 8
  %9 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %asmresult1)
  %cmp4.i = icmp sgt i32 %10, %asmresult1
  br i1 %cmp4.i, label %land.lhs.true.i.snd_pcm_next.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i.snd_pcm_next.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_next.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %card, align 8
  %cmp8.i = icmp sgt i32 %12, %14
  br i1 %cmp8.i, label %if.else.i.snd_pcm_next.exit_crit_edge, label %if.else.i.for.cond.i_crit_edge

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.else.i.snd_pcm_next.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_next.exit

snd_pcm_next.exit:                                ; preds = %if.else.i.snd_pcm_next.exit_crit_edge, %land.lhs.true.i.snd_pcm_next.exit_crit_edge, %for.cond.i.snd_pcm_next.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %land.lhs.true.i.snd_pcm_next.exit_crit_edge ], [ -1, %if.else.i.snd_pcm_next.exit_crit_edge ], [ -1, %for.cond.i.snd_pcm_next.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 97) #13
  %15 = tail call i32 @llvm.read_register.i32(metadata !356) #13
  %and.i.i.i146 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i146 to ptr
  %cpu_domain.i.i147 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i147) #11, !srcloc !370
  %and.i148 = and i32 %17, -13
  %or.i149 = or i32 %and.i148, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i149) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %retval.0.i, i32 -1226833921) #13, !srcloc !374
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  %. = select i1 %tobool13.not, i32 0, i32 -14
  br label %return

sw.bb16:                                          ; preds = %entry
  %19 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 112) #13
  %20 = tail call i32 @llvm.read_register.i32(metadata !356) #13
  %and.i.i.i150 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i150 to ptr
  %cpu_domain.i.i151 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i151) #11, !srcloc !370
  %and.i152 = and i32 %22, -13
  %or.i153 = or i32 %and.i152, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i153) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %19, i32 -1226833921) #13, !srcloc !375
  %asmresult28 = extractvalue { i32, i32 } %23, 0
  %asmresult29 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult28)
  %tobool31.not = icmp eq i32 %asmresult28, 0
  br i1 %tobool31.not, label %if.end33, label %sw.bb16.return_crit_edge

sw.bb16.return_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end33:                                         ; preds = %sw.bb16
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 114) #13
  %stream37 = getelementptr inbounds %struct.snd_pcm_info, ptr %19, i32 0, i32 2
  %24 = tail call i32 @llvm.read_register.i32(metadata !356) #13
  %and.i.i.i154 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i154 to ptr
  %cpu_domain.i.i155 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i155) #11, !srcloc !370
  %and.i156 = and i32 %26, -13
  %or.i157 = or i32 %and.i156, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i157) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  %27 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %stream37, i32 -1226833921) #13, !srcloc !376
  %asmresult44 = extractvalue { i32, i32 } %27, 0
  %asmresult45 = extractvalue { i32, i32 } %27, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult44)
  %tobool47.not = icmp eq i32 %asmresult44, 0
  br i1 %tobool47.not, label %if.end49, label %if.end33.return_crit_edge

if.end33.return_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end49:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult45)
  %28 = icmp ugt i32 %asmresult45, 1
  br i1 %28, label %if.end49.return_crit_edge, label %if.end52

if.end49.return_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end52:                                         ; preds = %if.end49
  %29 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %asmresult45, i32 2) #13, !srcloc !377
  %and = and i32 %29, %asmresult45
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 119) #13
  %subdevice64 = getelementptr inbounds %struct.snd_pcm_info, ptr %19, i32 0, i32 1
  %30 = tail call i32 @llvm.read_register.i32(metadata !356) #13
  %and.i.i.i158 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i158 to ptr
  %cpu_domain.i.i159 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i159) #11, !srcloc !370
  %and.i160 = and i32 %32, -13
  %or.i161 = or i32 %and.i160, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i161) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %subdevice64, i32 -1226833921) #13, !srcloc !378
  %asmresult71 = extractvalue { i32, i32 } %33, 0
  %asmresult72 = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult71)
  %tobool74.not = icmp eq i32 %asmresult71, 0
  br i1 %tobool74.not, label %if.end76, label %if.end52.return_crit_edge

if.end52.return_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end76:                                         ; preds = %if.end52
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #13
  %.pn13.i = load ptr, ptr @snd_pcm_devices, align 4
  %cmp.not15.i = icmp eq ptr %.pn13.i, @snd_pcm_devices
  br i1 %cmp.not15.i, label %if.end76._error_crit_edge, label %if.end76.for.body.i167_crit_edge

if.end76.for.body.i167_crit_edge:                 ; preds = %if.end76
  br label %for.body.i167

if.end76._error_crit_edge:                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %_error

for.body.i167:                                    ; preds = %for.inc.i.for.body.i167_crit_edge, %if.end76.for.body.i167_crit_edge
  %.pn16.i = phi ptr [ %.pn.i171, %for.inc.i.for.body.i167_crit_edge ], [ %.pn13.i, %if.end76.for.body.i167_crit_edge ]
  %pcm.017.i = getelementptr i8, ptr %.pn16.i, i32 -4
  %34 = ptrtoint ptr %pcm.017.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcm.017.i, align 8
  %cmp2.i166 = icmp eq ptr %35, %card
  br i1 %cmp2.i166, label %land.lhs.true.i170, label %for.body.i167.for.inc.i_crit_edge

for.body.i167.for.inc.i_crit_edge:                ; preds = %for.body.i167
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i170:                               ; preds = %for.body.i167
  %device3.i168 = getelementptr i8, ptr %.pn16.i, i32 8
  %36 = ptrtoint ptr %device3.i168 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %device3.i168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %asmresult29)
  %cmp4.i169 = icmp eq i32 %37, %asmresult29
  br i1 %cmp4.i169, label %snd_pcm_get.exit, label %land.lhs.true.i170.for.inc.i_crit_edge

land.lhs.true.i170.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i170.for.inc.i_crit_edge, %for.body.i167.for.inc.i_crit_edge
  %38 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i171 = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i172 = icmp eq ptr %.pn.i171, @snd_pcm_devices
  br i1 %cmp.not.i172, label %for.inc.i._error_crit_edge, label %for.inc.i.for.body.i167_crit_edge

for.inc.i.for.body.i167_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i167

for.inc.i._error_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_error

snd_pcm_get.exit:                                 ; preds = %land.lhs.true.i170
  %pcm.017.i.le = getelementptr i8, ptr %.pn16.i, i32 -4
  %cmp78 = icmp eq ptr %pcm.017.i.le, null
  br i1 %cmp78, label %snd_pcm_get.exit._error_crit_edge, label %if.end80

snd_pcm_get.exit._error_crit_edge:                ; preds = %snd_pcm_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_error

if.end80:                                         ; preds = %snd_pcm_get.exit
  %substream_count = getelementptr %struct.snd_pcm, ptr %pcm.017.i.le, i32 0, i32 8, i32 %and, i32 2
  %39 = ptrtoint ptr %substream_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %substream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp81 = icmp eq i32 %40, 0
  br i1 %cmp81, label %if.end80._error_crit_edge, label %if.end83

if.end80._error_crit_edge:                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %_error

if.end83:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult72, i32 %40)
  %cmp85.not = icmp ult i32 %asmresult72, %40
  br i1 %cmp85.not, label %if.end87, label %if.end83._error_crit_edge

if.end83._error_crit_edge:                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %_error

if.end87:                                         ; preds = %if.end83
  %substream88 = getelementptr %struct.snd_pcm, ptr %pcm.017.i.le, i32 0, i32 8, i32 %and, i32 4
  %41 = ptrtoint ptr %substream88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %substream.0181 = load ptr, ptr %substream88, align 4
  %cond182 = icmp eq ptr %substream.0181, null
  br i1 %cond182, label %if.end87._error_crit_edge, label %if.end87.for.body_crit_edge

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  br label %for.body

if.end87._error_crit_edge:                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %_error

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end87.for.body_crit_edge
  %substream.0183 = phi ptr [ %substream.0, %for.inc.for.body_crit_edge ], [ %substream.0181, %if.end87.for.body_crit_edge ]
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0183, i32 0, i32 3
  %42 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %asmresult72)
  %cmp90 = icmp eq i32 %43, %asmresult72
  br i1 %cmp90, label %if.end95, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0183, i32 0, i32 15
  %44 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %44)
  %substream.0 = load ptr, ptr %next, align 4
  %cond = icmp eq ptr %substream.0, null
  br i1 %cond, label %for.inc._error_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc._error_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %_error

if.end95:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %open_mutex = getelementptr i8, ptr %.pn16.i, i32 2292
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #13
  %call96 = tail call i32 @snd_pcm_info_user(ptr noundef nonnull %substream.0183, ptr noundef %19) #13
  tail call void @mutex_unlock(ptr noundef %open_mutex) #13
  br label %_error

_error:                                           ; preds = %if.end95, %for.inc._error_crit_edge, %if.end87._error_crit_edge, %if.end83._error_crit_edge, %if.end80._error_crit_edge, %snd_pcm_get.exit._error_crit_edge, %for.inc.i._error_crit_edge, %if.end76._error_crit_edge
  %err.0 = phi i32 [ %call96, %if.end95 ], [ -6, %snd_pcm_get.exit._error_crit_edge ], [ -2, %if.end80._error_crit_edge ], [ -6, %if.end83._error_crit_edge ], [ -6, %if.end76._error_crit_edge ], [ -6, %if.end87._error_crit_edge ], [ -6, %for.inc._error_crit_edge ], [ -6, %for.inc.i._error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %return

sw.bb106:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 155) #13
  %45 = inttoptr i32 %arg to ptr
  %46 = tail call i32 @llvm.read_register.i32(metadata !356) #13
  %and.i.i.i162 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i162 to ptr
  %cpu_domain.i.i163 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i163) #11, !srcloc !370
  %and.i164 = and i32 %48, -13
  %or.i165 = or i32 %and.i164, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i165) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  %49 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %45, i32 -1226833921) #13, !srcloc !379
  %asmresult116 = extractvalue { i32, i32 } %49, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #13, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult116)
  %tobool119.not = icmp eq i32 %asmresult116, 0
  br i1 %tobool119.not, label %if.end121, label %sw.bb106.return_crit_edge

sw.bb106.return_crit_edge:                        ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end121:                                        ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #15
  %asmresult117 = extractvalue { i32, i32 } %49, 1
  %preferred_subdevice = getelementptr inbounds %struct.snd_ctl_file, ptr %control, i32 0, i32 3
  %50 = ptrtoint ptr %preferred_subdevice to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %asmresult117, ptr %preferred_subdevice, align 4
  br label %return

return:                                           ; preds = %if.end121, %sw.bb106.return_crit_edge, %_error, %if.end52.return_crit_edge, %if.end49.return_crit_edge, %if.end33.return_crit_edge, %sw.bb16.return_crit_edge, %snd_pcm_next.exit, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.3 = phi i32 [ -14, %sw.bb.return_crit_edge ], [ %., %snd_pcm_next.exit ], [ %err.0, %_error ], [ -14, %sw.bb16.return_crit_edge ], [ -14, %if.end33.return_crit_edge ], [ -22, %if.end49.return_crit_edge ], [ -14, %if.end52.return_crit_edge ], [ 0, %if.end121 ], [ -14, %sw.bb106.return_crit_edge ], [ -515, %entry.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_pcm_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_register_ioctl(ptr noundef nonnull @snd_pcm_control_ioctl) #13
  %call.i = tail call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef null) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.snd_pcm_proc_init.exit_crit_edge, label %if.then.i

entry.snd_pcm_proc_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_proc_init.exit

if.then.i:                                        ; preds = %entry
  %private_data2.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %private_data2.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @snd_pcm_proc_read, ptr %c.i.i, align 4
  %call2.i = tail call i32 @snd_info_register(ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.snd_pcm_proc_init.exit_crit_edge

if.then.i.snd_pcm_proc_init.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_proc_init.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @snd_info_free_entry(ptr noundef nonnull %call.i) #13
  br label %snd_pcm_proc_init.exit

snd_pcm_proc_init.exit:                           ; preds = %if.then3.i, %if.then.i.snd_pcm_proc_init.exit_crit_edge, %entry.snd_pcm_proc_init.exit_crit_edge
  %entry1.0.i = phi ptr [ null, %if.then3.i ], [ %call.i, %if.then.i.snd_pcm_proc_init.exit_crit_edge ], [ null, %entry.snd_pcm_proc_init.exit_crit_edge ]
  store ptr %entry1.0.i, ptr @snd_pcm_proc_entry, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_pcm_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr i8, ptr %dev, i32 -132
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %no_device_suspend = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %no_device_suspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_device_suspend, align 2, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @snd_pcm_suspend_all(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_suspend_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_stream_proc_info_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream = getelementptr inbounds %struct.snd_pcm_str, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 8
  tail call fastcc void @snd_pcm_proc_info_read(ptr noundef %3, ptr noundef %buffer)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_xrun_debug_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %xrun_debug = getelementptr inbounds %struct.snd_pcm_str, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xrun_debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xrun_debug, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.79, i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_xrun_debug_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #1 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #13
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 @simple_strtoul(ptr noundef nonnull %line, ptr noundef null, i32 noundef 10) #13
  %xrun_debug = getelementptr inbounds %struct.snd_pcm_str, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %xrun_debug to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call3, ptr %xrun_debug, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_proc_info_read(ptr noundef %substream, ptr nocapture noundef readonly %buffer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %substream, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 288) #17
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @snd_pcm_info(ptr noundef nonnull %substream, ptr noundef nonnull %call7.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef %call4) #13
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %card = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 3
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %card, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef nonnull @.str.66, i32 noundef %4) #13
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.67, i32 noundef %8) #13
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %subdevice = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %subdevice, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.68, i32 noundef %12) #13
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream, align 8
  %arrayidx.i = getelementptr [2 x ptr], ptr @snd_pcm_stream_names, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.69, ptr noundef %18) #13
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %id = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.70, ptr noundef %id) #13
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %name = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.71, ptr noundef %name) #13
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %subname = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.72, ptr noundef %subname) #13
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  %dev_class = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 7
  %27 = ptrtoint ptr %dev_class to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_class, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.73, i32 noundef %28) #13
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  %dev_subclass = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 8
  %31 = ptrtoint ptr %dev_subclass to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dev_subclass, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull @.str.74, i32 noundef %32) #13
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %subdevices_count = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 9
  %35 = ptrtoint ptr %subdevices_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %subdevices_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.75, i32 noundef %36) #13
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  %subdevices_avail = getelementptr inbounds %struct.snd_pcm_info, ptr %call7.i, i32 0, i32 10
  %39 = ptrtoint ptr %subdevices_avail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %subdevices_avail, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.76, i32 noundef %40) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %if.then5
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_substream_proc_info_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @snd_pcm_proc_info_read(ptr noundef %1, ptr noundef %buffer)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_substream_proc_hw_params_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %open_mutex = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #13
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.85) #13
  br label %unlock

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %status, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.86) #13
  br label %unlock

if.end6:                                          ; preds = %if.end
  %access = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %access, align 8
  %arrayidx.i = getelementptr [5 x ptr], ptr @snd_pcm_access_names, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.87, ptr noundef %17) #13
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 12
  %20 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %21)
  %cmp.i = icmp ugt i32 %21, 52
  br i1 %cmp.i, label %if.end6.snd_pcm_format_name.exit_crit_edge, label %if.end.i

if.end6.snd_pcm_format_name.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_format_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i70 = getelementptr [53 x ptr], ptr @snd_pcm_format_names, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i70, align 4
  br label %snd_pcm_format_name.exit

snd_pcm_format_name.exit:                         ; preds = %if.end.i, %if.end6.snd_pcm_format_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ @.str, %if.end6.snd_pcm_format_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.88, ptr noundef %retval.0.i) #13
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.105) #13
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 15
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.90, i32 noundef %29) #13
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %32 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate, align 4
  %rate_num = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 24
  %34 = ptrtoint ptr %rate_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rate_num, align 4
  %rate_den = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 25
  %36 = ptrtoint ptr %rate_den to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate_den, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.91, i32 noundef %33, i32 noundef %35, i32 noundef %37) #13
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 16
  %40 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %period_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.92, i32 noundef %41) #13
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %44 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.93, i32 noundef %45) #13
  %oss = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 24
  %46 = ptrtoint ptr %oss to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %oss, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool16.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool16.not, label %snd_pcm_format_name.exit.unlock_crit_edge, label %if.then17

snd_pcm_format_name.exit.unlock_crit_edge:        ; preds = %snd_pcm_format_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.then17:                                        ; preds = %snd_pcm_format_name.exit
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %format20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 2
  %49 = ptrtoint ptr %format20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %format20, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %50, label %sw.default.i [
    i32 1, label %if.then17.snd_pcm_oss_format_name.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 8, label %sw.bb3.i
    i32 16, label %sw.bb4.i
    i32 32, label %sw.bb5.i
    i32 64, label %sw.bb6.i
    i32 128, label %sw.bb7.i
    i32 256, label %sw.bb8.i
    i32 512, label %sw.bb9.i
  ]

if.then17.snd_pcm_oss_format_name.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb1.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb2.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb3.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb4.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb5.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb6.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb7.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb8.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.bb9.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

sw.default.i:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_oss_format_name.exit

snd_pcm_oss_format_name.exit:                     ; preds = %sw.default.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then17.snd_pcm_oss_format_name.exit_crit_edge
  %retval.0.i71 = phi ptr [ @.str.106, %sw.default.i ], [ @.str.37, %sw.bb9.i ], [ @.str.19, %sw.bb8.i ], [ @.str.18, %sw.bb7.i ], [ @.str.14, %sw.bb6.i ], [ @.str.17, %sw.bb5.i ], [ @.str.16, %sw.bb4.i ], [ @.str.15, %sw.bb3.i ], [ @.str.36, %sw.bb2.i ], [ @.str.35, %sw.bb1.i ], [ @.str.34, %if.then17.snd_pcm_oss_format_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.94, ptr noundef nonnull %retval.0.i71) #13
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %channels24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 3
  %54 = ptrtoint ptr %channels24 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channels24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.95, i32 noundef %55) #13
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  %rate27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 1
  %58 = ptrtoint ptr %rate27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rate27, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.96, i32 noundef %59) #13
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  %period_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 7
  %62 = ptrtoint ptr %period_bytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %period_bytes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.97, i32 noundef %63) #13
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 10
  %66 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %periods, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.98, i32 noundef %67) #13
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  %period_frames = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 59, i32 8
  %70 = ptrtoint ptr %period_frames to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %period_frames, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.99, i32 noundef %71) #13
  br label %unlock

unlock:                                           ; preds = %snd_pcm_oss_format_name.exit, %snd_pcm_format_name.exit.unlock_crit_edge, %if.then4, %if.then
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %open_mutex36 = getelementptr inbounds %struct.snd_pcm, ptr %73, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %open_mutex36) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_substream_proc_sw_params_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %open_mutex = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #13
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.85) #13
  br label %unlock

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %status, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.86) #13
  br label %unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %tstamp_mode = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 27
  %14 = ptrtoint ptr %tstamp_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tstamp_mode, align 8
  %arrayidx.i = getelementptr [2 x ptr], ptr @snd_pcm_tstamp_mode_names, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.107, ptr noundef %17) #13
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %period_step = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 28
  %20 = ptrtoint ptr %period_step to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period_step, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.108, i32 noundef %21) #13
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %control = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 38
  %24 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %control, align 8
  %avail_min = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %avail_min to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %avail_min, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.109, i32 noundef %27) #13
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %start_threshold = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 29
  %30 = ptrtoint ptr %start_threshold to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %start_threshold, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.110, i32 noundef %31) #13
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %stop_threshold = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 30
  %34 = ptrtoint ptr %stop_threshold to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stop_threshold, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.111, i32 noundef %35) #13
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %silence_threshold = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 31
  %38 = ptrtoint ptr %silence_threshold to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %silence_threshold, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.112, i32 noundef %39) #13
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %silence_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 32
  %42 = ptrtoint ptr %silence_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %silence_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.113, i32 noundef %43) #13
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %boundary = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 33
  %46 = ptrtoint ptr %boundary to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %boundary, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.114, i32 noundef %47) #13
  br label %unlock

unlock:                                           ; preds = %if.end6, %if.then4, %if.then
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %open_mutex16 = getelementptr inbounds %struct.snd_pcm, ptr %49, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %open_mutex16) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_substream_proc_status_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  %status = alloca %struct.snd_pcm_status64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %status) #13
  %2 = call ptr @memset(ptr %status, i32 255, i32 128)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %open_mutex = getelementptr inbounds %struct.snd_pcm, ptr %4, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #13
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime2, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.85) #13
  br label %unlock

if.end:                                           ; preds = %entry
  %9 = call ptr @memset(ptr %status, i32 0, i32 128)
  %call = call i32 @snd_pcm_status64(ptr noundef %1, ptr noundef nonnull %status) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.65, i32 noundef %call) #13
  br label %unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  %arrayidx.i = getelementptr [8 x ptr], ptr @snd_pcm_state_names, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.117, ptr noundef %15) #13
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %pid = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pid, align 4
  %call10 = call i32 @pid_vnr(ptr noundef %19) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.118, i32 noundef %call10) #13
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %trigger_tstamp_sec = getelementptr inbounds %struct.snd_pcm_status64, ptr %status, i32 0, i32 2
  %22 = ptrtoint ptr %trigger_tstamp_sec to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %trigger_tstamp_sec, align 8
  %trigger_tstamp_nsec = getelementptr inbounds %struct.snd_pcm_status64, ptr %status, i32 0, i32 3
  %24 = ptrtoint ptr %trigger_tstamp_nsec to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %trigger_tstamp_nsec, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.119, i64 noundef %23, i64 noundef %25) #13
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %tstamp_sec = getelementptr inbounds %struct.snd_pcm_status64, ptr %status, i32 0, i32 4
  %28 = ptrtoint ptr %tstamp_sec to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tstamp_sec, align 8
  %tstamp_nsec = getelementptr inbounds %struct.snd_pcm_status64, ptr %status, i32 0, i32 5
  %30 = ptrtoint ptr %tstamp_nsec to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tstamp_nsec, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.120, i64 noundef %29, i64 noundef %31) #13
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %delay = getelementptr inbounds %struct.snd_pcm_status64, ptr %status, i32 0, i32 8
  %34 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %delay, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.121, i32 noundef %35) #13
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %avail = getelementptr inbounds %struct.snd_pcm_status64, ptr %status, i32 0, i32 9
  %38 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %avail, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.122, i32 noundef %39) #13
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %avail_max = getelementptr inbounds %struct.snd_pcm_status64, ptr %status, i32 0, i32 10
  %42 = ptrtoint ptr %avail_max to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %avail_max, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.123, i32 noundef %43) #13
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.124) #13
  %46 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer, align 4
  %status18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 37
  %48 = ptrtoint ptr %status18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %status18, align 4
  %hw_ptr = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_ptr, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.125, i32 noundef %51) #13
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %control = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 38
  %54 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %control, align 8
  %appl_ptr = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %appl_ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %appl_ptr, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.126, i32 noundef %57) #13
  br label %unlock

unlock:                                           ; preds = %if.end6, %if.then4, %if.then
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %open_mutex21 = getelementptr inbounds %struct.snd_pcm, ptr %59, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %open_mutex21) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %status) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_xrun_injection_write(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readnone %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_pcm_stop_xrun(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_status64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_dev_free(ptr nocapture noundef readonly %device) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.snd_pcm_free.exit_crit_edge, label %if.end.i

entry.snd_pcm_free.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_free.exit

if.end.i:                                         ; preds = %entry
  %internal.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %internal.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %internal.i, align 8, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %for.cond.preheader.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %.pn1.i = load ptr, ptr @snd_pcm_notify_list, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, @snd_pcm_notify_list
  br i1 %cmp.not2.i, label %for.cond.preheader.i.if.end7.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end7.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn1.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %n_unregister.i = getelementptr i8, ptr %.pn3.i, i32 -4
  %4 = ptrtoint ptr %n_unregister.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n_unregister.i, align 4
  %call.i = tail call i32 %5(ptr noundef nonnull %1) #13
  %6 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @snd_pcm_notify_list
  br i1 %cmp.not.i, label %for.body.i.if.end7.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.end7.i:                                        ; preds = %for.body.i.if.end7.i_crit_edge, %for.cond.preheader.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %private_free.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_free.i, align 4
  %tobool8.not.i = icmp eq ptr %8, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then9.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %8(ptr noundef nonnull %1) #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  tail call void @snd_pcm_lib_preallocate_free_for_all(ptr noundef nonnull %1) #13
  %streams.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 8
  tail call fastcc void @snd_pcm_free_stream(ptr noundef %streams.i) #13
  %arrayidx13.i = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1
  tail call fastcc void @snd_pcm_free_stream(ptr noundef %arrayidx13.i) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %snd_pcm_free.exit

snd_pcm_free.exit:                                ; preds = %if.end11.i, %entry.snd_pcm_free.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_dev_register(ptr noundef readonly %device) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %device, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !367

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1052, i32 noundef 9, ptr noundef null) #13
  br label %cleanup68

if.end24:                                         ; preds = %lor.rhs
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #13
  %internal.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %internal.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %internal.i, align 8, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end24.snd_pcm_add.exit_crit_edge

if.end24.snd_pcm_add.exit_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_add.exit

for.cond.preheader.i:                             ; preds = %if.end24
  %.pn47.i = load ptr, ptr @snd_pcm_devices, align 4
  %cmp.not48.i = icmp eq ptr %.pn47.i, @snd_pcm_devices
  br i1 %cmp.not48.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %device3.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn49.i = phi ptr [ %.pn47.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %pcm.0.i = getelementptr i8, ptr %.pn49.i, i32 -4
  %6 = ptrtoint ptr %pcm.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm.0.i, align 8
  %cmp2.i = icmp eq ptr %7, %5
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end6.thread.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %device.i = getelementptr i8, ptr %.pn49.i, i32 8
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device.i, align 4
  %10 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.i = icmp eq i32 %9, %11
  br i1 %cmp4.i, label %land.lhs.true.i.unlock_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.unlock_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end6.thread.i:                                 ; preds = %for.body.i
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp1044.i = icmp sgt i32 %13, %15
  br i1 %cmp1044.i, label %if.end6.thread.i.if.then18.i_crit_edge, label %if.end6.thread.i.for.inc.i_crit_edge

if.end6.thread.i.for.inc.i_crit_edge:             ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end6.thread.i.if.then18.i_crit_edge:           ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp17.i = icmp sgt i32 %9, %11
  br i1 %cmp17.i, label %land.lhs.true14.i.if.then18.i_crit_edge, label %land.lhs.true14.i.for.inc.i_crit_edge

land.lhs.true14.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true14.i.if.then18.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18.i

if.then18.i:                                      ; preds = %land.lhs.true14.i.if.then18.i_crit_edge, %if.end6.thread.i.if.then18.i_crit_edge
  %list19.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn49.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list19.i, ptr noundef %17, ptr noundef %19) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then18.i.snd_pcm_add.exit_crit_edge

if.then18.i.snd_pcm_add.exit_crit_edge:           ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_add.exit

if.end.i.i.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list19.i, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %list19.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %list19.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list19.i, ptr %17, align 4
  br label %snd_pcm_add.exit

for.inc.i:                                        ; preds = %land.lhs.true14.i.for.inc.i_crit_edge, %if.end6.thread.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %.pn49.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn49.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @snd_pcm_devices
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %list26.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_pcm_devices, i32 0, i32 1), align 4
  %call.i.i41.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list26.i, ptr noundef %25, ptr noundef nonnull @snd_pcm_devices) #13
  br i1 %call.i.i41.i, label %if.end.i.i43.i, label %for.end.i.snd_pcm_add.exit_crit_edge

for.end.i.snd_pcm_add.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_pcm_add.exit

if.end.i.i43.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %list26.i, ptr getelementptr inbounds (%struct.list_head, ptr @snd_pcm_devices, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %list26.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @snd_pcm_devices, ptr %list26.i, align 4
  %prev3.i.i42.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev3.i.i42.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list26.i, ptr %25, align 4
  br label %snd_pcm_add.exit

snd_pcm_add.exit:                                 ; preds = %if.end.i.i43.i, %for.end.i.snd_pcm_add.exit_crit_edge, %if.end.i.i.i, %if.then18.i.snd_pcm_add.exit_crit_edge, %if.end24.snd_pcm_add.exit_crit_edge
  %device34 = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 2
  %substream29 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 4
  %29 = ptrtoint ptr %substream29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %substream29, align 8
  %cmp30 = icmp eq ptr %30, null
  br i1 %cmp30, label %snd_pcm_add.exit.for.inc48_crit_edge, label %if.end32

snd_pcm_add.exit.for.inc48_crit_edge:             ; preds = %snd_pcm_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48

if.end32:                                         ; preds = %snd_pcm_add.exit
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %33 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device34, align 4
  %dev = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 9
  %call38 = tail call i32 @snd_register_device(i32 noundef 5, ptr noundef %32, i32 noundef %34, ptr noundef nonnull @snd_pcm_f_ops, ptr noundef nonnull %1, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end32.if.then40_crit_edge, label %for.cond45.preheader

if.end32.if.then40_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40

for.cond45.preheader:                             ; preds = %if.end32
  %35 = ptrtoint ptr %substream29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %substream.0107 = load ptr, ptr %substream29, align 4
  %tobool46.not108 = icmp eq ptr %substream.0107, null
  br i1 %tobool46.not108, label %for.cond45.preheader.for.inc48_crit_edge, label %for.cond45.preheader.for.body47_crit_edge

for.cond45.preheader.for.body47_crit_edge:        ; preds = %for.cond45.preheader
  br label %for.body47

for.cond45.preheader.for.inc48_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48

if.then40:                                        ; preds = %if.end32.1.if.then40_crit_edge, %if.end32.if.then40_crit_edge
  %call38.lcssa = phi i32 [ %call38, %if.end32.if.then40_crit_edge ], [ %call38.1, %if.end32.1.if.then40_crit_edge ]
  %list = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list, align 4
  %prev1.i.i.i97 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i97, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %cleanup

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond45.preheader.for.body47_crit_edge
  %substream.0109 = phi ptr [ %substream.0, %for.body47.for.body47_crit_edge ], [ %substream.0107, %for.cond45.preheader.for.body47_crit_edge ]
  tail call void @snd_pcm_timer_init(ptr noundef nonnull %substream.0109) #13
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0109, i32 0, i32 15
  %42 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %42)
  %substream.0 = load ptr, ptr %next, align 4
  %tobool46.not = icmp eq ptr %substream.0, null
  br i1 %tobool46.not, label %for.body47.for.inc48_crit_edge, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body47

for.body47.for.inc48_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48

cleanup:                                          ; preds = %if.end.i.i, %if.then40.cleanup_crit_edge
  %43 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %unlock

for.inc48:                                        ; preds = %for.body47.for.inc48_crit_edge, %for.cond45.preheader.for.inc48_crit_edge, %snd_pcm_add.exit.for.inc48_crit_edge
  %err.1.ph = phi i32 [ 0, %snd_pcm_add.exit.for.inc48_crit_edge ], [ %call38, %for.cond45.preheader.for.inc48_crit_edge ], [ %call38, %for.body47.for.inc48_crit_edge ]
  %substream29.1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %45 = ptrtoint ptr %substream29.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %substream29.1, align 8
  %cmp30.1 = icmp eq ptr %46, null
  br i1 %cmp30.1, label %for.inc48.for.inc48.1_crit_edge, label %if.end32.1

for.inc48.for.inc48.1_crit_edge:                  ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.1

if.end32.1:                                       ; preds = %for.inc48
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %49 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %device34, align 4
  %dev.1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 9
  %call38.1 = tail call i32 @snd_register_device(i32 noundef 6, ptr noundef %48, i32 noundef %50, ptr noundef getelementptr inbounds ([2 x %struct.file_operations], ptr @snd_pcm_f_ops, i32 0, i32 1), ptr noundef nonnull %1, ptr noundef %dev.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.1)
  %cmp39.1 = icmp slt i32 %call38.1, 0
  br i1 %cmp39.1, label %if.end32.1.if.then40_crit_edge, label %for.cond45.preheader.1

if.end32.1.if.then40_crit_edge:                   ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then40

for.cond45.preheader.1:                           ; preds = %if.end32.1
  %51 = ptrtoint ptr %substream29.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %substream.0107.1 = load ptr, ptr %substream29.1, align 4
  %tobool46.not108.1 = icmp eq ptr %substream.0107.1, null
  br i1 %tobool46.not108.1, label %for.cond45.preheader.1.for.inc48.1_crit_edge, label %for.cond45.preheader.1.for.body47.1_crit_edge

for.cond45.preheader.1.for.body47.1_crit_edge:    ; preds = %for.cond45.preheader.1
  br label %for.body47.1

for.cond45.preheader.1.for.inc48.1_crit_edge:     ; preds = %for.cond45.preheader.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.1

for.body47.1:                                     ; preds = %for.body47.1.for.body47.1_crit_edge, %for.cond45.preheader.1.for.body47.1_crit_edge
  %substream.0109.1 = phi ptr [ %substream.0.1, %for.body47.1.for.body47.1_crit_edge ], [ %substream.0107.1, %for.cond45.preheader.1.for.body47.1_crit_edge ]
  tail call void @snd_pcm_timer_init(ptr noundef nonnull %substream.0109.1) #13
  %next.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0109.1, i32 0, i32 15
  %52 = ptrtoint ptr %next.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %substream.0.1 = load ptr, ptr %next.1, align 4
  %tobool46.not.1 = icmp eq ptr %substream.0.1, null
  br i1 %tobool46.not.1, label %for.body47.1.for.inc48.1_crit_edge, label %for.body47.1.for.body47.1_crit_edge

for.body47.1.for.body47.1_crit_edge:              ; preds = %for.body47.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body47.1

for.body47.1.for.inc48.1_crit_edge:               ; preds = %for.body47.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.1

for.inc48.1:                                      ; preds = %for.body47.1.for.inc48.1_crit_edge, %for.cond45.preheader.1.for.inc48.1_crit_edge, %for.inc48.for.inc48.1_crit_edge
  %err.1.ph.1 = phi i32 [ %err.1.ph, %for.inc48.for.inc48.1_crit_edge ], [ %call38.1, %for.cond45.preheader.1.for.inc48.1_crit_edge ], [ %call38.1, %for.body47.1.for.inc48.1_crit_edge ]
  %.pn113 = load ptr, ptr @snd_pcm_notify_list, align 4
  %cmp54.not114 = icmp eq ptr %.pn113, @snd_pcm_notify_list
  br i1 %cmp54.not114, label %for.inc48.1.unlock_crit_edge, label %for.inc48.1.for.body57_crit_edge

for.inc48.1.for.body57_crit_edge:                 ; preds = %for.inc48.1
  br label %for.body57

for.inc48.1.unlock_crit_edge:                     ; preds = %for.inc48.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.inc48.1.for.body57_crit_edge
  %.pn115 = phi ptr [ %.pn, %for.body57.for.body57_crit_edge ], [ %.pn113, %for.inc48.1.for.body57_crit_edge ]
  %_notify.0 = getelementptr i8, ptr %.pn115, i32 -12
  %53 = ptrtoint ptr %_notify.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_notify.0, align 4
  %call58 = tail call i32 %54(ptr noundef nonnull %1) #13
  %55 = ptrtoint ptr %.pn115 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load ptr, ptr %.pn115, align 4
  %cmp54.not = icmp eq ptr %.pn, @snd_pcm_notify_list
  br i1 %cmp54.not, label %for.body57.unlock_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body57

for.body57.unlock_crit_edge:                      ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

unlock:                                           ; preds = %for.body57.unlock_crit_edge, %for.inc48.1.unlock_crit_edge, %cleanup, %land.lhs.true.i.unlock_crit_edge
  %err.2 = phi i32 [ %call38.lcssa, %cleanup ], [ %err.1.ph.1, %for.inc48.1.unlock_crit_edge ], [ %err.1.ph.1, %for.body57.unlock_crit_edge ], [ -16, %land.lhs.true.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %cleanup68

cleanup68:                                        ; preds = %unlock, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %err.2, %unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_pcm_dev_disconnect(ptr nocapture noundef readonly %device) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #13
  %open_mutex = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #13
  %open_wait = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %list = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i3.i, align 4
  %substream1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 4
  %10 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %substream.087 = load ptr, ptr %substream1, align 4
  %tobool.not88 = icmp eq ptr %substream.087, null
  br i1 %tobool.not88, label %list_del_init.exit.for.inc12_crit_edge, label %list_del_init.exit.for.body3_crit_edge

list_del_init.exit.for.body3_crit_edge:           ; preds = %list_del_init.exit
  br label %for.body3

list_del_init.exit.for.inc12_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12

for.body3:                                        ; preds = %if.end11.for.body3_crit_edge, %list_del_init.exit.for.body3_crit_edge
  %substream.089 = phi ptr [ %substream.0, %if.end11.for.body3_crit_edge ], [ %substream.087, %list_del_init.exit.for.body3_crit_edge ]
  tail call void @snd_pcm_stream_lock_irq(ptr noundef nonnull %substream.089) #13
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.089, i32 0, i32 11
  %11 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %for.body3.if.end11_crit_edge, label %if.then

for.body3.if.end11_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then:                                          ; preds = %for.body3
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 37
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %status.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %16, label %if.then.if.end_crit_edge [
    i32 3, label %if.then.if.then6_crit_edge
    i32 5, label %snd_pcm_running.exit
  ]

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

snd_pcm_running.exit:                             ; preds = %if.then
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.089, i32 0, i32 5
  %18 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5.i.not = icmp eq i32 %19, 0
  br i1 %cmp5.i.not, label %snd_pcm_running.exit.if.then6_crit_edge, label %snd_pcm_running.exit.if.end_crit_edge

snd_pcm_running.exit.if.end_crit_edge:            ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

snd_pcm_running.exit.if.then6_crit_edge:          ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %snd_pcm_running.exit.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %call7 = tail call i32 @snd_pcm_stop(ptr noundef nonnull %substream.089, i32 noundef 8) #13
  br label %if.end

if.end:                                           ; preds = %if.then6, %snd_pcm_running.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime, align 4
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 37
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %status, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %23, align 8
  %25 = load ptr, ptr %runtime, align 4
  %sleep = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %26 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime, align 4
  %tsleep = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %tsleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end11

if.end11:                                         ; preds = %if.end, %for.body3.if.end11_crit_edge
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %substream.089) #13
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.089, i32 0, i32 15
  %28 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %28)
  %substream.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %substream.0, null
  br i1 %tobool.not, label %if.end11.for.inc12_crit_edge, label %if.end11.for.body3_crit_edge

if.end11.for.body3_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

if.end11.for.inc12_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12

for.inc12:                                        ; preds = %if.end11.for.inc12_crit_edge, %list_del_init.exit.for.inc12_crit_edge
  %substream1.1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %29 = ptrtoint ptr %substream1.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %substream.087.1 = load ptr, ptr %substream1.1, align 4
  %tobool.not88.1 = icmp eq ptr %substream.087.1, null
  br i1 %tobool.not88.1, label %for.inc12.for.inc12.1_crit_edge, label %for.inc12.for.body3.1_crit_edge

for.inc12.for.body3.1_crit_edge:                  ; preds = %for.inc12
  br label %for.body3.1

for.inc12.for.inc12.1_crit_edge:                  ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.1

for.body3.1:                                      ; preds = %if.end11.1.for.body3.1_crit_edge, %for.inc12.for.body3.1_crit_edge
  %substream.089.1 = phi ptr [ %substream.0.1, %if.end11.1.for.body3.1_crit_edge ], [ %substream.087.1, %for.inc12.for.body3.1_crit_edge ]
  tail call void @snd_pcm_stream_lock_irq(ptr noundef nonnull %substream.089.1) #13
  %runtime.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.089.1, i32 0, i32 11
  %30 = ptrtoint ptr %runtime.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime.1, align 4
  %tobool4.not.1 = icmp eq ptr %31, null
  br i1 %tobool4.not.1, label %for.body3.1.if.end11.1_crit_edge, label %if.then.1

for.body3.1.if.end11.1_crit_edge:                 ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.1

if.then.1:                                        ; preds = %for.body3.1
  %status.i.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 37
  %32 = ptrtoint ptr %status.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %status.i.1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %35, label %if.then.1.if.end.1_crit_edge [
    i32 3, label %if.then.1.if.then6.1_crit_edge
    i32 5, label %snd_pcm_running.exit.1
  ]

if.then.1.if.then6.1_crit_edge:                   ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.1

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

snd_pcm_running.exit.1:                           ; preds = %if.then.1
  %stream.i.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.089.1, i32 0, i32 5
  %37 = ptrtoint ptr %stream.i.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stream.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp5.i.not.1 = icmp eq i32 %38, 0
  br i1 %cmp5.i.not.1, label %snd_pcm_running.exit.1.if.then6.1_crit_edge, label %snd_pcm_running.exit.1.if.end.1_crit_edge

snd_pcm_running.exit.1.if.end.1_crit_edge:        ; preds = %snd_pcm_running.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.1

snd_pcm_running.exit.1.if.then6.1_crit_edge:      ; preds = %snd_pcm_running.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.1

if.then6.1:                                       ; preds = %snd_pcm_running.exit.1.if.then6.1_crit_edge, %if.then.1.if.then6.1_crit_edge
  %call7.1 = tail call i32 @snd_pcm_stop(ptr noundef nonnull %substream.089.1, i32 noundef 8) #13
  br label %if.end.1

if.end.1:                                         ; preds = %if.then6.1, %snd_pcm_running.exit.1.if.end.1_crit_edge, %if.then.1.if.end.1_crit_edge
  %39 = ptrtoint ptr %runtime.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %runtime.1, align 4
  %status.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %40, i32 0, i32 37
  %41 = ptrtoint ptr %status.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %status.1, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %42, align 8
  %44 = load ptr, ptr %runtime.1, align 4
  %sleep.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %44, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %sleep.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %45 = ptrtoint ptr %runtime.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %runtime.1, align 4
  %tsleep.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %46, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %tsleep.1, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.end.1, %for.body3.1.if.end11.1_crit_edge
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %substream.089.1) #13
  %next.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.089.1, i32 0, i32 15
  %47 = ptrtoint ptr %next.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %substream.0.1 = load ptr, ptr %next.1, align 4
  %tobool.not.1 = icmp eq ptr %substream.0.1, null
  br i1 %tobool.not.1, label %if.end11.1.for.inc12.1_crit_edge, label %if.end11.1.for.body3.1_crit_edge

if.end11.1.for.body3.1_crit_edge:                 ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.1

if.end11.1.for.inc12.1_crit_edge:                 ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.1

for.inc12.1:                                      ; preds = %if.end11.1.for.inc12.1_crit_edge, %for.inc12.for.inc12.1_crit_edge
  %48 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %substream.194 = load ptr, ptr %substream1, align 4
  %tobool21.not95 = icmp eq ptr %substream.194, null
  br i1 %tobool21.not95, label %for.inc12.1.for.inc26_crit_edge, label %for.inc12.1.for.body22_crit_edge

for.inc12.1.for.body22_crit_edge:                 ; preds = %for.inc12.1
  br label %for.body22

for.inc12.1.for.inc26_crit_edge:                  ; preds = %for.inc12.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.inc12.1.for.body22_crit_edge
  %substream.196 = phi ptr [ %substream.1, %for.body22.for.body22_crit_edge ], [ %substream.194, %for.inc12.1.for.body22_crit_edge ]
  tail call void @snd_pcm_sync_stop(ptr noundef nonnull %substream.196, i1 noundef zeroext false) #13
  %next24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.196, i32 0, i32 15
  %49 = ptrtoint ptr %next24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %substream.1 = load ptr, ptr %next24, align 4
  %tobool21.not = icmp eq ptr %substream.1, null
  br i1 %tobool21.not, label %for.body22.for.inc26_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22

for.body22.for.inc26_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26

for.inc26:                                        ; preds = %for.body22.for.inc26_crit_edge, %for.inc12.1.for.inc26_crit_edge
  %50 = ptrtoint ptr %substream1.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %substream.194.1 = load ptr, ptr %substream1.1, align 4
  %tobool21.not95.1 = icmp eq ptr %substream.194.1, null
  br i1 %tobool21.not95.1, label %for.inc26.for.inc26.1_crit_edge, label %for.inc26.for.body22.1_crit_edge

for.inc26.for.body22.1_crit_edge:                 ; preds = %for.inc26
  br label %for.body22.1

for.inc26.for.inc26.1_crit_edge:                  ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26.1

for.body22.1:                                     ; preds = %for.body22.1.for.body22.1_crit_edge, %for.inc26.for.body22.1_crit_edge
  %substream.196.1 = phi ptr [ %substream.1.1, %for.body22.1.for.body22.1_crit_edge ], [ %substream.194.1, %for.inc26.for.body22.1_crit_edge ]
  tail call void @snd_pcm_sync_stop(ptr noundef nonnull %substream.196.1, i1 noundef zeroext false) #13
  %next24.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.196.1, i32 0, i32 15
  %51 = ptrtoint ptr %next24.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %substream.1.1 = load ptr, ptr %next24.1, align 4
  %tobool21.not.1 = icmp eq ptr %substream.1.1, null
  br i1 %tobool21.not.1, label %for.body22.1.for.inc26.1_crit_edge, label %for.body22.1.for.body22.1_crit_edge

for.body22.1.for.body22.1_crit_edge:              ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body22.1

for.body22.1.for.inc26.1_crit_edge:               ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc26.1

for.inc26.1:                                      ; preds = %for.body22.1.for.inc26.1_crit_edge, %for.inc26.for.inc26.1_crit_edge
  %.pn98 = load ptr, ptr @snd_pcm_notify_list, align 4
  %cmp31.not99 = icmp eq ptr %.pn98, @snd_pcm_notify_list
  br i1 %cmp31.not99, label %for.inc26.1.for.cond41.preheader_crit_edge, label %for.inc26.1.for.body32_crit_edge

for.inc26.1.for.body32_crit_edge:                 ; preds = %for.inc26.1
  br label %for.body32

for.inc26.1.for.cond41.preheader_crit_edge:       ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.body32.for.cond41.preheader_crit_edge, %for.inc26.1.for.cond41.preheader_crit_edge
  %dev = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 9
  %call46 = tail call i32 @snd_unregister_device(ptr noundef %dev) #13
  %chmap_kctl.i = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 8
  %52 = ptrtoint ptr %chmap_kctl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chmap_kctl.i, align 8
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %for.cond41.preheader.free_chmap.exit_crit_edge, label %if.then.i

for.cond41.preheader.free_chmap.exit_crit_edge:   ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_chmap.exit

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.inc26.1.for.body32_crit_edge
  %.pn100 = phi ptr [ %.pn, %for.body32.for.body32_crit_edge ], [ %.pn98, %for.inc26.1.for.body32_crit_edge ]
  %n_disconnect = getelementptr i8, ptr %.pn100, i32 -8
  %54 = ptrtoint ptr %n_disconnect to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %n_disconnect, align 4
  %call33 = tail call i32 %55(ptr noundef %1) #13
  %56 = ptrtoint ptr %.pn100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn = load ptr, ptr %.pn100, align 4
  %cmp31.not = icmp eq ptr %.pn, @snd_pcm_notify_list
  br i1 %cmp31.not, label %for.body32.for.cond41.preheader_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body32

for.body32.for.cond41.preheader_crit_edge:        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond41.preheader

if.then.i:                                        ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %pcm.i = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 1
  %57 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcm.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %controls_rwsem.i = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 14
  tail call void @down_write(ptr noundef %controls_rwsem.i) #13
  %61 = ptrtoint ptr %chmap_kctl.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chmap_kctl.i, align 8
  %call.i = tail call i32 @snd_ctl_remove(ptr noundef %60, ptr noundef %62) #13
  tail call void @up_write(ptr noundef %controls_rwsem.i) #13
  %63 = ptrtoint ptr %chmap_kctl.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %chmap_kctl.i, align 8
  br label %free_chmap.exit

free_chmap.exit:                                  ; preds = %if.then.i, %for.cond41.preheader.free_chmap.exit_crit_edge
  %dev.1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 9
  %call46.1 = tail call i32 @snd_unregister_device(ptr noundef %dev.1) #13
  %chmap_kctl.i.1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 8
  %64 = ptrtoint ptr %chmap_kctl.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chmap_kctl.i.1, align 8
  %tobool.not.i.1 = icmp eq ptr %65, null
  br i1 %tobool.not.i.1, label %free_chmap.exit.free_chmap.exit.1_crit_edge, label %if.then.i.1

free_chmap.exit.free_chmap.exit.1_crit_edge:      ; preds = %free_chmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_chmap.exit.1

if.then.i.1:                                      ; preds = %free_chmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pcm.i.1 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 1
  %66 = ptrtoint ptr %pcm.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcm.i.1, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %controls_rwsem.i.1 = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 14
  tail call void @down_write(ptr noundef %controls_rwsem.i.1) #13
  %70 = ptrtoint ptr %chmap_kctl.i.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chmap_kctl.i.1, align 8
  %call.i.1 = tail call i32 @snd_ctl_remove(ptr noundef %69, ptr noundef %71) #13
  tail call void @up_write(ptr noundef %controls_rwsem.i.1) #13
  %72 = ptrtoint ptr %chmap_kctl.i.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %chmap_kctl.i.1, align 8
  br label %free_chmap.exit.1

free_chmap.exit.1:                                ; preds = %if.then.i.1, %free_chmap.exit.free_chmap.exit.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #13
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_timer_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_sync_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_lib_preallocate_free_for_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_free_stream(ptr noundef %pstr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_root.i = getelementptr inbounds %struct.snd_pcm_str, ptr %pstr, i32 0, i32 6
  %0 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_root.i, align 8
  tail call void @snd_info_free_entry(ptr noundef %1) #13
  %2 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %proc_root.i, align 8
  %substream1 = getelementptr inbounds %struct.snd_pcm_str, ptr %pstr, i32 0, i32 4
  %3 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %substream1, align 8
  %tobool.not16 = icmp eq ptr %4, null
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %substream.017 = phi ptr [ %6, %while.body.while.body_crit_edge ], [ %4, %entry.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.017, i32 0, i32 15
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next, align 4
  tail call void @snd_pcm_timer_done(ptr noundef nonnull %substream.017) #13
  tail call void @kfree(ptr noundef nonnull %substream.017) #13
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %oss = getelementptr inbounds %struct.snd_pcm_str, ptr %pstr, i32 0, i32 5
  %7 = ptrtoint ptr %oss to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %oss, align 4
  %tobool2.not18 = icmp eq ptr %8, null
  br i1 %tobool2.not18, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end.for.body_crit_edge
  %setup.019 = phi ptr [ %10, %for.body.for.body_crit_edge ], [ %8, %while.end.for.body_crit_edge ]
  %next3 = getelementptr inbounds %struct.snd_pcm_oss_setup, ptr %setup.019, i32 0, i32 4
  %9 = ptrtoint ptr %next3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next3, align 4
  %11 = ptrtoint ptr %setup.019 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setup.019, align 4
  tail call void @kfree(ptr noundef %12) #13
  tail call void @kfree(ptr noundef nonnull %setup.019) #13
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.end.for.end_crit_edge
  %chmap_kctl.i = getelementptr inbounds %struct.snd_pcm_str, ptr %pstr, i32 0, i32 8
  %13 = ptrtoint ptr %chmap_kctl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chmap_kctl.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.end.free_chmap.exit_crit_edge, label %if.then.i

for.end.free_chmap.exit_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_chmap.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %pcm.i = getelementptr inbounds %struct.snd_pcm_str, ptr %pstr, i32 0, i32 1
  %15 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %controls_rwsem.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 14
  tail call void @down_write(ptr noundef %controls_rwsem.i) #13
  %19 = ptrtoint ptr %chmap_kctl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chmap_kctl.i, align 8
  %call.i = tail call i32 @snd_ctl_remove(ptr noundef %18, ptr noundef %20) #13
  tail call void @up_write(ptr noundef %controls_rwsem.i) #13
  %21 = ptrtoint ptr %chmap_kctl.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %chmap_kctl.i, align 8
  br label %free_chmap.exit

free_chmap.exit:                                  ; preds = %if.then.i, %for.end.free_chmap.exit_crit_edge
  %substream_count = getelementptr inbounds %struct.snd_pcm_str, ptr %pstr, i32 0, i32 2
  %22 = ptrtoint ptr %substream_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %substream_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not = icmp eq i32 %23, 0
  br i1 %tobool4.not, label %free_chmap.exit.if.end_crit_edge, label %if.then

free_chmap.exit.if.end_crit_edge:                 ; preds = %free_chmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %free_chmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.snd_pcm_str, ptr %pstr, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %free_chmap.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_timer_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_class_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm1 = getelementptr i8, ptr %dev, i32 -132
  %0 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm1, align 4
  %dev_class = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_class to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_class, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp ugt i16 %3, 3
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %3 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @pcm_class_show.strs, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %str.0 = phi ptr [ %5, %if.else ], [ @.str.144, %entry.if.end_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.145, ptr noundef %str.0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_info_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_register_ioctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pcm_proc_read(ptr nocapture noundef readnone %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #13
  %.pn34 = load ptr, ptr @snd_pcm_devices, align 4
  %cmp.not35 = icmp eq ptr %.pn34, @snd_pcm_devices
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %if.end16.for.body_crit_edge ], [ %.pn34, %entry.for.body_crit_edge ]
  %pcm.0 = getelementptr i8, ptr %.pn36, i32 -4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %2 = ptrtoint ptr %pcm.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm.0, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %device = getelementptr i8, ptr %.pn36, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %id = getelementptr i8, ptr %.pn36, i32 20
  %name = getelementptr i8, ptr %.pn36, i32 84
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.148, i32 noundef %5, i32 noundef %7, ptr noundef %id, ptr noundef %name) #13
  %substream = getelementptr i8, ptr %.pn36, i32 180
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %substream_count = getelementptr i8, ptr %.pn36, i32 172
  %12 = ptrtoint ptr %substream_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %substream_count, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.149, i32 noundef %13) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %substream9 = getelementptr i8, ptr %.pn36, i32 1244
  %14 = ptrtoint ptr %substream9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream9, align 8
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %if.then11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %substream_count15 = getelementptr i8, ptr %.pn36, i32 1236
  %18 = ptrtoint ptr %substream_count15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %substream_count15, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.150, i32 noundef %19) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.151) #13
  %22 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, @snd_pcm_devices
  br i1 %cmp.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !314, !315, !317, !319, !321, !323, !324, !326, !328, !330, !332, !334, !336, !338, !340, !341, !342, !344, !346, !348, !350, !352, !354}
!llvm.named.register.sp = !{!356}
!llvm.module.flags = !{!357, !358, !359, !360, !361, !362, !363, !364}
!llvm.ident = !{!365}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/core/pcm.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/core/pcm.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/core/pcm.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/core/pcm.c", i32 223, i32 10}
!9 = !{ptr @__ksymtab_snd_pcm_format_name, !10, !"__ksymtab_snd_pcm_format_name", i1 false, i1 false}
!10 = !{!"../sound/core/pcm.c", i32 226, i32 1}
!11 = !{ptr @snd_pcm_new_stream.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../sound/core/pcm.c", i32 643, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/core/pcm.c", i32 654, i32 27}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/core/pcm.c", i32 660, i32 4}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @snd_pcm_new_stream._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @snd_pcm_new_stream._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/core/pcm.c", i32 673, i32 28}
!26 = !{ptr @snd_pcm_new_stream._entry.9, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../sound/core/pcm.c", i32 683, i32 5}
!28 = !{ptr @snd_pcm_new_stream._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_snd_pcm_new_stream, !30, !"__ksymtab_snd_pcm_new_stream", i1 false, i1 false}
!30 = !{!"../sound/core/pcm.c", i32 701, i32 1}
!31 = !{ptr @__ksymtab_snd_pcm_new, !32, !"__ksymtab_snd_pcm_new", i1 false, i1 false}
!32 = !{!"../sound/core/pcm.c", i32 779, i32 1}
!33 = !{ptr @__ksymtab_snd_pcm_new_internal, !34, !"__ksymtab_snd_pcm_new_internal", i1 false, i1 false}
!34 = !{!"../sound/core/pcm.c", i32 808, i32 1}
!35 = !{ptr @snd_pcm_attach_substream.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../sound/core/pcm.c", i32 968, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @snd_pcm_attach_substream.__key.12, !39, !"__key", i1 false, i1 false}
!39 = !{!"../sound/core/pcm.c", i32 969, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__ksymtab_snd_pcm_notify, !42, !"__ksymtab_snd_pcm_notify", i1 false, i1 false}
!42 = !{!"../sound/core/pcm.c", i32 1161, i32 1}
!43 = !{ptr @__initcall__kmod_snd_pcm__244_1236_alsa_pcm_init6, !44, !"__initcall__kmod_snd_pcm__244_1236_alsa_pcm_init6", i1 false, i1 false}
!44 = !{!"../sound/core/pcm.c", i32 1236, i32 1}
!45 = !{ptr @__exitcall_alsa_pcm_exit, !46, !"__exitcall_alsa_pcm_exit", i1 false, i1 false}
!46 = !{!"../sound/core/pcm.c", i32 1237, i32 1}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/core/pcm.c", i32 167, i32 2}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/core/pcm.c", i32 168, i32 2}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/core/pcm.c", i32 169, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/core/pcm.c", i32 170, i32 2}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/core/pcm.c", i32 171, i32 2}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/core/pcm.c", i32 172, i32 2}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/core/pcm.c", i32 173, i32 2}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/core/pcm.c", i32 174, i32 2}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/core/pcm.c", i32 175, i32 2}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/core/pcm.c", i32 176, i32 2}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/core/pcm.c", i32 177, i32 2}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/core/pcm.c", i32 178, i32 2}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/core/pcm.c", i32 179, i32 2}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/core/pcm.c", i32 180, i32 2}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/core/pcm.c", i32 181, i32 2}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/core/pcm.c", i32 182, i32 2}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/core/pcm.c", i32 183, i32 2}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/core/pcm.c", i32 184, i32 2}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/core/pcm.c", i32 185, i32 2}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/core/pcm.c", i32 186, i32 2}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/core/pcm.c", i32 187, i32 2}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/core/pcm.c", i32 188, i32 2}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/core/pcm.c", i32 189, i32 2}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/core/pcm.c", i32 190, i32 2}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/core/pcm.c", i32 191, i32 2}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/core/pcm.c", i32 192, i32 2}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/core/pcm.c", i32 193, i32 2}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/core/pcm.c", i32 194, i32 2}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/core/pcm.c", i32 195, i32 2}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/core/pcm.c", i32 196, i32 2}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/core/pcm.c", i32 197, i32 2}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/core/pcm.c", i32 198, i32 2}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/core/pcm.c", i32 199, i32 2}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/core/pcm.c", i32 200, i32 2}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/core/pcm.c", i32 201, i32 2}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/core/pcm.c", i32 202, i32 2}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/core/pcm.c", i32 203, i32 2}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/core/pcm.c", i32 204, i32 2}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/core/pcm.c", i32 205, i32 2}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/core/pcm.c", i32 206, i32 2}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/core/pcm.c", i32 207, i32 2}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/core/pcm.c", i32 208, i32 2}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/core/pcm.c", i32 209, i32 2}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/core/pcm.c", i32 210, i32 2}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/core/pcm.c", i32 211, i32 2}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/core/pcm.c", i32 212, i32 2}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/core/pcm.c", i32 213, i32 2}
!141 = !{ptr @snd_pcm_format_names, !142, !"snd_pcm_format_names", i1 false, i1 false}
!142 = !{!"../sound/core/pcm.c", i32 166, i32 27}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/core/pcm.c", i32 619, i32 10}
!145 = !{ptr @pcm_dev_type, !146, !"pcm_dev_type", i1 false, i1 false}
!146 = !{!"../sound/core/pcm.c", i32 618, i32 33}
!147 = !{ptr @pcm_dev_pm_ops, !148, !"pcm_dev_pm_ops", i1 false, i1 false}
!148 = !{!"../sound/core/pcm.c", i32 613, i32 32}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/core/pcm.c", i32 509, i32 16}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/core/pcm.c", i32 517, i32 48}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/core/pcm.c", i32 521, i32 48}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/core/pcm.c", i32 345, i32 3}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/core/pcm.c", i32 349, i32 2}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/core/pcm.c", i32 350, i32 2}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/core/pcm.c", i32 351, i32 2}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/core/pcm.c", i32 352, i32 2}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/core/pcm.c", i32 353, i32 2}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/core/pcm.c", i32 354, i32 2}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/core/pcm.c", i32 355, i32 2}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/core/pcm.c", i32 356, i32 2}
!173 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/core/pcm.c", i32 357, i32 2}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/core/pcm.c", i32 358, i32 2}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/core/pcm.c", i32 359, i32 2}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/core/pcm.c", i32 241, i32 2}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/core/pcm.c", i32 242, i32 2}
!183 = !{ptr @snd_pcm_stream_names, !184, !"snd_pcm_stream_names", i1 false, i1 false}
!184 = !{!"../sound/core/pcm.c", i32 240, i32 27}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/core/pcm.c", i32 490, i32 2}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/core/pcm.c", i32 562, i32 16}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/core/pcm.c", i32 572, i32 41}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/core/pcm.c", i32 574, i32 41}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/core/pcm.c", i32 576, i32 41}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/core/pcm.c", i32 580, i32 49}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/core/pcm.c", i32 385, i32 3}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/core/pcm.c", i32 389, i32 3}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/core/pcm.c", i32 392, i32 2}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/core/pcm.c", i32 393, i32 2}
!205 = !{ptr @.str.89, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/core/pcm.c", i32 394, i32 2}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/core/pcm.c", i32 395, i32 2}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/core/pcm.c", i32 396, i32 2}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/core/pcm.c", i32 397, i32 2}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/core/pcm.c", i32 398, i32 2}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/core/pcm.c", i32 401, i32 3}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/core/pcm.c", i32 402, i32 3}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/core/pcm.c", i32 403, i32 3}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/core/pcm.c", i32 404, i32 3}
!223 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/core/pcm.c", i32 405, i32 3}
!225 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/core/pcm.c", i32 406, i32 3}
!227 = !{ptr @.str.100, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/core/pcm.c", i32 257, i32 2}
!229 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/core/pcm.c", i32 258, i32 2}
!231 = !{ptr @.str.102, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/core/pcm.c", i32 259, i32 2}
!233 = !{ptr @.str.103, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/core/pcm.c", i32 260, i32 2}
!235 = !{ptr @.str.104, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/core/pcm.c", i32 261, i32 2}
!237 = !{ptr @snd_pcm_access_names, !238, !"snd_pcm_access_names", i1 false, i1 false}
!238 = !{!"../sound/core/pcm.c", i32 256, i32 27}
!239 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/core/pcm.c", i32 265, i32 2}
!241 = distinct !{null, !242, !"snd_pcm_subformat_names", i1 false, i1 false}
!242 = !{!"../sound/core/pcm.c", i32 264, i32 27}
!243 = !{ptr @.str.106, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/core/pcm.c", i32 325, i32 10}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/core/pcm.c", i32 429, i32 2}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/core/pcm.c", i32 430, i32 2}
!249 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/core/pcm.c", i32 431, i32 2}
!251 = !{ptr @.str.110, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/core/pcm.c", i32 432, i32 2}
!253 = !{ptr @.str.111, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/core/pcm.c", i32 433, i32 2}
!255 = !{ptr @.str.112, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/core/pcm.c", i32 434, i32 2}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/core/pcm.c", i32 435, i32 2}
!259 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/core/pcm.c", i32 436, i32 2}
!261 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/core/pcm.c", i32 269, i32 2}
!263 = !{ptr @.str.116, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/core/pcm.c", i32 270, i32 2}
!265 = !{ptr @snd_pcm_tstamp_mode_names, !266, !"snd_pcm_tstamp_mode_names", i1 false, i1 false}
!266 = !{!"../sound/core/pcm.c", i32 268, i32 27}
!267 = !{ptr @.str.117, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/core/pcm.c", i32 461, i32 2}
!269 = !{ptr @.str.118, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/core/pcm.c", i32 462, i32 2}
!271 = !{ptr @.str.119, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/core/pcm.c", i32 463, i32 2}
!273 = !{ptr @.str.120, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/core/pcm.c", i32 465, i32 2}
!275 = !{ptr @.str.121, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/core/pcm.c", i32 467, i32 2}
!277 = !{ptr @.str.122, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/core/pcm.c", i32 468, i32 2}
!279 = !{ptr @.str.123, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/core/pcm.c", i32 469, i32 2}
!281 = !{ptr @.str.124, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/core/pcm.c", i32 470, i32 2}
!283 = !{ptr @.str.125, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/core/pcm.c", i32 471, i32 2}
!285 = !{ptr @.str.126, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/core/pcm.c", i32 472, i32 2}
!287 = !{ptr @.str.127, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/core/pcm.c", i32 246, i32 2}
!289 = !{ptr @.str.128, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/core/pcm.c", i32 247, i32 2}
!291 = !{ptr @.str.129, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/core/pcm.c", i32 248, i32 2}
!293 = !{ptr @.str.130, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/core/pcm.c", i32 249, i32 2}
!295 = !{ptr @.str.131, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/core/pcm.c", i32 250, i32 2}
!297 = !{ptr @.str.132, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/core/pcm.c", i32 251, i32 2}
!299 = !{ptr @.str.133, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/core/pcm.c", i32 252, i32 2}
!301 = !{ptr @.str.134, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/core/pcm.c", i32 253, i32 2}
!303 = !{ptr @snd_pcm_state_names, !304, !"snd_pcm_state_names", i1 false, i1 false}
!304 = !{!"../sound/core/pcm.c", i32 245, i32 27}
!305 = !{ptr @_snd_pcm_new.ops, !306, !"ops", i1 false, i1 false}
!306 = !{!"../sound/core/pcm.c", i32 709, i32 37}
!307 = !{ptr @_snd_pcm_new.internal_ops, !308, !"internal_ops", i1 false, i1 false}
!308 = !{!"../sound/core/pcm.c", i32 714, i32 37}
!309 = !{ptr @_snd_pcm_new.__key, !310, !"__key", i1 false, i1 false}
!310 = !{!"../sound/core/pcm.c", i32 728, i32 2}
!311 = !{ptr @.str.135, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @_snd_pcm_new.__key.136, !313, !"__key", i1 false, i1 false}
!313 = !{!"../sound/core/pcm.c", i32 729, i32 2}
!314 = !{ptr @.str.137, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @pcm_dev_attr_groups, !316, !"pcm_dev_attr_groups", i1 false, i1 false}
!316 = !{!"../sound/core/pcm.c", i32 1041, i32 38}
!317 = !{ptr @pcm_dev_attr_group, !318, !"pcm_dev_attr_group", i1 false, i1 false}
!318 = !{!"../sound/core/pcm.c", i32 1037, i32 37}
!319 = !{ptr @pcm_dev_attrs, !320, !"pcm_dev_attrs", i1 false, i1 false}
!320 = !{!"../sound/core/pcm.c", i32 1032, i32 26}
!321 = !{ptr @.str.139, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/core/pcm.c", i32 1031, i32 8}
!323 = !{ptr @dev_attr_pcm_class, !322, !"dev_attr_pcm_class", i1 false, i1 false}
!324 = !{ptr @.str.140, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/core/pcm.c", i32 1018, i32 31}
!326 = !{ptr @.str.141, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/core/pcm.c", i32 1019, i32 29}
!328 = !{ptr @.str.142, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/core/pcm.c", i32 1020, i32 29}
!330 = !{ptr @.str.143, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/core/pcm.c", i32 1021, i32 33}
!332 = !{ptr @pcm_class_show.strs, !333, !"strs", i1 false, i1 false}
!333 = !{!"../sound/core/pcm.c", i32 1017, i32 21}
!334 = !{ptr @.str.144, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/core/pcm.c", i32 1025, i32 9}
!336 = !{ptr @.str.145, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/core/pcm.c", i32 1028, i32 22}
!338 = !{ptr @.str.146, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/core/pcm.c", i32 28, i32 8}
!340 = !{ptr @.str.147, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @register_mutex, !339, !"register_mutex", i1 false, i1 false}
!342 = !{ptr @snd_pcm_devices, !343, !"snd_pcm_devices", i1 false, i1 false}
!343 = !{!"../sound/core/pcm.c", i32 27, i32 8}
!344 = !{ptr @snd_pcm_notify_list, !345, !"snd_pcm_notify_list", i1 false, i1 false}
!345 = !{!"../sound/core/pcm.c", i32 30, i32 8}
!346 = !{ptr @snd_pcm_proc_entry, !347, !"snd_pcm_proc_entry", i1 false, i1 false}
!347 = !{!"../sound/core/pcm.c", i32 1189, i32 31}
!348 = !{ptr @.str.148, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/core/pcm.c", i32 1176, i32 3}
!350 = !{ptr @.str.149, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/core/pcm.c", i32 1179, i32 4}
!352 = !{ptr @.str.150, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/core/pcm.c", i32 1182, i32 4}
!354 = !{ptr @.str.151, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/core/pcm.c", i32 1184, i32 3}
!356 = !{!"sp"}
!357 = !{i32 1, !"wchar_size", i32 2}
!358 = !{i32 1, !"min_enum_size", i32 4}
!359 = !{i32 8, !"branch-target-enforcement", i32 0}
!360 = !{i32 8, !"sign-return-address", i32 0}
!361 = !{i32 8, !"sign-return-address-all", i32 0}
!362 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!363 = !{i32 7, !"uwtable", i32 1}
!364 = !{i32 7, !"frame-pointer", i32 2}
!365 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!366 = !{i8 0, i8 2}
!367 = !{!"branch_weights", i32 1, i32 2000}
!368 = !{i64 2148613740, i64 2148613772, i64 2148613801, i64 2148613835, i64 2148613866, i64 2148613889}
!369 = !{!"branch_weights", i32 2000, i32 1}
!370 = !{i64 5718005}
!371 = !{i64 5718202}
!372 = !{i64 2153203435}
!373 = !{i64 2154320569, i64 2154320849, i64 2154321183, i64 2154321517}
!374 = !{i64 2154330137, i64 2154330417, i64 2154330751, i64 2154331085}
!375 = !{i64 2154346610, i64 2154346890, i64 2154347224, i64 2154347558}
!376 = !{i64 2154358824, i64 2154359104, i64 2154359438, i64 2154359772}
!377 = !{i64 876530, i64 876547}
!378 = !{i64 2154373828, i64 2154374108, i64 2154374442, i64 2154374776}
!379 = !{i64 2154386855, i64 2154387135, i64 2154387469, i64 2154387803}
